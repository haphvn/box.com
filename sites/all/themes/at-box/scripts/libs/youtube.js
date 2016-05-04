/*
Methods:
renderPlayer(jQuery Object):
_ render a player to replace a jQuery object

remove()
_ Remove Player
*****/

(function ($) {
  $.fn.youtube = function (parameters) {

    var $this = this;

    //Setup
    $this.setup = function(options) {
      //Default Parameters
      var defaultOptions = {
        html5         : false,
        swfObjectLink : '../js/libs/swfobject.js',
        width         : '100%',
        height        : 479,
        playerItem    : this,
        facebook      : 'https://www.facebook.com',
        twitter       : 'https://www.twitter.com',
        youtubeURL    : null,
        controls      : false,
        autoplay      : 1,
        onReady       : function() {}
      };

      //Join parameters
      options = $.extend(defaultOptions, options);

      //Get Embeding Element ID
      var item_id = options.playerItem.attr('id') ? options.playerItem.attr('id') : 'boxplayer';

      //Get Data from link
      $this.youtubeId  = leo_get_youtube_id(options.youtubeURL);

      //Check if mobile
      if($('html').hasClass('no-touch') && !options.html5 ) {
        //Default attributes
        $this.current_interval = 0,
        $this.current_time = 0,
        $this.duration = 0,
        $this.buffer = 0;

        //Attach SWFObject
        $.getScript(options.swfObjectLink, function() {
          //Only open player if the object exists
          if (!$('#' + item_id).length) {
            //console.log('Error: No Element attached');
          }
          else if (!$this.youtubeId) {
            //console.log('Error: Youtube link wrong!');
          }
          else {
            //Create a container for custom controller
            var $new_el = $('#' + item_id).clone();

            //Return 
            var getPlayer = function() {
              return $('<div id="youtube_container"></div>').append($new_el);
            };

            //Attach
            $('#' + item_id).replaceWith(getPlayer());
            
            //Add Youtube Player
            swfobject.embedSWF( "http://www.youtube.com/v/" + $this.youtubeId + "&enablejsapi=1&playerapiid=" + item_id + "&amp;autoplay=1&amp;controls=1&amp;autohide=1", item_id, options.width, options.height, "8", null, null, {
                allowScriptAccess : "always",
                wmode             : "transparent"
              });

            /*
            Youtube Initialize
            ***********************/
            function onYouTubePlayerReady(playerId) {
              window[item_id].addEventListener('onStateChange', 'stateChange');
              if (window[item_id].isMuted()) {
                $btnMute.addClass('muting');
              }
              else {
                $btnMute.removeClass('muting');
              }
              $this.duration = window[item_id].getDuration();
              $playerTiming.find('.timingTotal').html(format_time($this.duration));

              //Generate progressbar and bufferbar
              var $buffer   = $('<div class="buffer"></div>').appendTo($progressBar),
                  $progress = $('<div class="progress"></div>').appendTo($progressBar);

              //onReady Callback
              options.onReady();
            }


            /*
              Custom control
              ************************************/
              var $customControl = $('<div class="custom_control"><div class="btnPlay">Play</div><div class="btnMute">Mute</div><div class="playerTiming"><span class="timingProgress">0:00</span> / <span class="timingTotal">0:00</span></div><div class="progressBar"></div><div class="playerSocial"><a target="_blank" href="http://www.facebook.com" title="Facebook" class="fb">Facebook</a><a target="_blank" href="http://www.twitter.com" title="Twitter" class="tw">Twitter</a></div></div>'),
                $btnPlay = $customControl.find('.btnPlay'),
                $btnMute = $customControl.find('.btnMute'),
                $playerTiming = $customControl.find('.playerTiming'),
                $playerSocial = $customControl.find('.playerSocial'),
                $progressBar = $customControl.find('.progressBar');

                if(options.controls){$customControl.appendTo($('#youtube_container'));}

              //Set custom link to Social buttons
              $playerSocial.find('a.fb').attr('href', options.facebook);
              $playerSocial.find('a.tw').attr('href', options.twitter);
              
              //Change state
              function update_progress() {
                //Update Timing
                $playerTiming.find('.timingProgress').html(format_time($this.current_time));

                //Update progress bar
                var percentTiming = ($this.current_time * 100 / $this.duration);
                $progressBar.find('.progress').width(percentTiming + '%');

                //Check Buffer
               // buffer = window[item_id].getVideoLoadedFraction()*100;
               // $progressBar.find('.buffer').width(buffer + '%');
              }

            function stateChange (newState) {
              switch (newState) {
                case 0:
                  $this.current_time = $this.duration;
                  update_progress();
                break;
                case 1:
                  $btnPlay.addClass('playing');
                  $this.current_time = window[item_id].getCurrentTime();
                  update_progress();
                  clearInterval($this.current_interval);
                  $this.current_interval = setInterval(function() {
                    //Current Time
                    $this.current_time++;
                    update_progress();
                  }, 1000);
                break;
                default:
                  clearInterval($this.current_interval);
                  $btnPlay.removeClass('playing');
              }
            }


            window.onYouTubePlayerReady = onYouTubePlayerReady;
            window.stateChange = stateChange;


            //Playing button            
            $btnPlay.click(function(event) {
              event.stopPropagation();
              state = window[item_id].getPlayerState();
              if (state != 1)
                window[item_id].playVideo();
              else
                window[item_id].pauseVideo();
            });

            //Muting button
            $btnMute.click(function() {
              if (window[item_id].isMuted()) {
                window[item_id].unMute();
                $btnMute.removeClass('muting');
              }
              else {
                window[item_id].mute();
                $btnMute.addClass('muting');
              }
            });

            //Progressing Bar
            var slider = $progressBar.slider({
              range   : "min",
              value   : 0,
              min     : 0,
              stop    : function(event, ui) {
                var newPosition = Math.floor(ui.value * $this.duration / 100);
                window[item_id].seekTo(newPosition);
                update_progress();
              }
            });
          }
        });
      }
      else if ($('html').hasClass('touch') || options.html5) {
        $.getScript('https://www.youtube.com/iframe_api', function() {
          var player;
          var $new_el = $('#' + item_id).clone();

          //Return 
          var getPlayer = function() {
            return $('<div id="youtube_container"></div>').append($new_el);
          };

          //Attach
          $('#' + item_id).replaceWith(getPlayer());
          if($.isFunction(window.onYouTubeIframeAPIReady)) {
            player = new YT.Player(item_id, {
              height: options.height,
              width: options.width,
              videoId: $this.youtubeId,
              playerVars: { 'autoplay': options.autoplay,'html5':1},
              events: {
                'onReady': onPlayerReady,
                'onStateChange': onPlayerStateChange
              }
            });
          }
          else {
            window.onYouTubeIframeAPIReady = function() {
              player = new YT.Player(item_id, {
                height: options.height,
                width: options.width,
                videoId: $this.youtubeId,
                playerVars: { 'autoplay': options.autoplay,'html5':1},
                events: {
                  'onReady': onPlayerReady,
                  'onStateChange': onPlayerStateChange
                }
              });
            }
          }
          window.onPlayerReady = function(event) {
            //event.target.playVideo();
          }

          var done = false;
          window.onPlayerStateChange = function(event) {
          }
          $this.stopVideo = function() {
            player.stopVideo();
          }
          $this.iframeDestroy = function() {
            if ((player != null) && (player !== undefined)) {
              player.destroy();
            }
          }
        });
      }
      return $this;
    }

    $this.destroy = function() {
      clearInterval($this.current_interval);
      if ($.isFunction($this.iframeDestroy)) {
        $this.iframeDestroy();
      }
      $this.remove();
    }

    //Youtube get ID
    function leo_get_youtube_id(url){
        var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
        var match = url.match(regExp);
        if (match&&match[7].length==11){
          return match[7];
        }else{
          return null;
        }
    }

    //Time Formatting
    function format_time(second) {
      var time = parseInt(second,10);
      time = time < 0 ? 0 : time;
      var minutes = Math.floor(time / 60);
      var seconds = time % 60;
      seconds = seconds < 10 ? "0"+seconds : seconds;
      return minutes + ":" + seconds;
    }
    
    //Remove Player
    $this.remove = function() {
      $('#youtube_container').remove();
    }
    return $this;
  }
})(jQuery);

var youtube = function($el) {
  var player = $el.youtube();
  return player;
}