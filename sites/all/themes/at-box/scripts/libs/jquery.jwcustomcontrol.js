(function ($) {
    $.fn.customControl = function ($container) {
      var id = this.attr('id');
      jwplayer(id).setControls(false);

      var $customControl = $('<div class="custom_control"><div class="btnPlay">Play</div><div class="btnMute">Mute</div><div class="playerTiming"><span class="timingProgress">0:00</span> / <span class="timingTotal">0:00</span></div><div class="progressBar"></div><div class="playerSocial"><a target="_blank" href="http://www.facebook.com" title="Facebook" class="fb">Facebook</a><a target="_blank" href="http://www.twitter.com" title="Twitter" class="tw">Twitter</a></div></div>').appendTo($container),
        $btnPlay = $customControl.find('.btnPlay'),
        $btnMute = $customControl.find('.btnMute'),
        $playerTiming = $customControl.find('.playerTiming'),
        $playerSocial = $customControl.find('.playerSocial'),
        $progressBar = $customControl.find('.progressBar');

        //Set custom link to Social buttons
        if (this.attr('data-fb'))
          $playerSocial.find('a.fb').attr('href', this.attr('data-fb'));
        if (this.attr('data-tw'))
          $playerSocial.find('a.tw').attr('href', this.attr('data-tw'));


      //Playing button
      jwplayer(id).onPlay(function() {
        $btnPlay.addClass('playing');
      }).onPause(function() {
        $btnPlay.removeClass('playing');
      });
      $btnPlay.click(function(event) {
        event.stopPropagation();
        state = jwplayer(id).getState();
        if (state != 'PLAYING')
          jwplayer(id).play(true);
        else
          jwplayer(id).play(false);
      });

      //Initial

      //Muting button
      jwplayer(id).onMute(function(mute) {
        if (mute.mute)
          $btnMute.addClass('muting');
        else
          $btnMute.removeClass('muting');
      });
      $btnMute.click(function() {
        mute = jwplayer(id).getMute();
        if (mute)
          jwplayer(id).setMute(false);
        else
          jwplayer(id).setMute(true);
      });

      //Initial
      jwplayer(id).onReady(function() {
        jwplayer(id).setVolume(60);
        //$playerTiming.find('.timingTotal').html();
      });

      //Progressing Bar
      var slider = $progressBar.slider({
        range   : "min",
        value   : 0,
        min     : 0,
        create  : function(event, ui) {
          var $buffer   = $('<div class="buffer"></div>').appendTo($progressBar),
              $progress = $('<div class="progress"></div>').appendTo($progressBar);
          jwplayer(id).onBufferChange(function(buffer) {
            $buffer.width(buffer.bufferPercent + '%');
          });
        },
        stop    : function(event, ui) {
          var newPosition = Math.floor(ui.value * jwplayer(id).getDuration() / 100);
          jwplayer(id).seek(newPosition);
        }
      });

      //timing Process
      jwplayer(id).onTime(function(update) {
        //Update Timing
        $playerTiming.find('.timingTotal').html(format_time(update.duration));
        $playerTiming.find('.timingProgress').html(format_time(update.position));

        //Update progress bar
        var percentTiming = (update.position * 100 / update.duration);
        $progressBar.find('.progress').width(percentTiming + '%');
      });

      function format_time(second) {
        var time = parseInt(second,10);
        time = time < 0 ? 0 : time;
        var minutes = Math.floor(time / 60);
        var seconds = time % 60;
        seconds = seconds < 10 ? "0"+seconds : seconds;
        return minutes + ":" + seconds;
      }
    };
})(jQuery);