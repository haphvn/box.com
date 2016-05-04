/**
 * Build video object from youtube API
 */
(function ($) {

  var pycoVideo = {};


var jwVideo = {
    init: function (options) {
      var defaults = {
        width : 854,
        height: 479
      };
      
      var options = $.extend(defaults, options);
      var windowWidth = $(window).width();
      var windowHeight = $(window).height();
      //Drupal support URL
      var flash_link = (typeof Drupal != 'undefined') ?  Drupal.settings.atBox.jwplayerPath : '../js/libs/jwplayer.flash.swf';
 

      return this.each(function (e) {

        

        var $html,
            $jwvideo ,
            $container,
            video;
        var $this = $(this);     

        $this.settings = $.extend({}, defaults, options);

        var videoHTML = '<div class="video_outer" class="clearfix"><div id="jwplayer" class="jwvideo" ';
        if($this.attr('data-fb') !== undefined){
          videoHTML += 'data-fb="' + $this.attr('data-fb') + '" ';
        }
        if($this.attr('data-tw') !== undefined){
          videoHTML += 'data-tw="' + $this.attr('data-tw') + '" ';
        }        
        videoHTML += '></div></div>';
        $html = $('<div></div>').html(videoHTML);
        $html.hide().appendTo('body');


        pycoVideo = {
          outputHtml : function(){
            return $html.html();
          },


          loadVideo : function(callback) {
            $jwvideo = $('.jwvideo');
            $container = $jwvideo.parent();
            id = $jwvideo.attr('id');
            video = jwplayer(id).setup({
                  flashplayer : flash_link,
                  file        : $this.attr('href'),
                  width       : '100%',
                  height      : '100%',
                  autostart   : true
            });
            $jwvideo.customControl($container);

            var isReady = false;
            jwplayer(id).onReady(function() {
              $('#jwplayer').height($('#jwplayer').width() * $this.settings.height / $this.settings.width);        
              isReady =true;
              if($.isFunction(callback)){
                callback();
              }
            })

            if(!isReady){
              setTimeout(function(){
                  $('#jwplayer').height($('#jwplayer').width() * $this.settings.height / $this.settings.width);
                  if($.isFunction(callback)){
                    callback();
                  }
              },500);
            }
          },

          closeVideo : function(callback) {
              if(video.length)video.remove();
              $html.remove();
              if($.isFunction(callback)){
                callback();
              }
          }
        }



        /**
         * Window resize event callback
         */
        var resizeWindow = function(e){
          var windowWidthNew = $(window).width();
          var windowHeightNew = $(window).height();
          if(windowWidth != windowWidthNew || windowHeight != windowHeightNew){
            windowWidth = windowWidthNew;
            windowHeight = windowHeightNew;
            
            if ($('#jwplayer').length) {
              $('#jwplayer').height($('#jwplayer').width() * $this.settings.height / $this.settings.width);
            }

          }
        }

        $(window).bind('resize', function (e) {
            resizeWindow();
        });



      });

    },

    result : function (){
      return pycoVideo;
    }
  };

  
  $.fn.jwVideo = function(param) {
        if (typeof param == 'string') {
            return jwVideo[param].apply(this, Array.prototype.slice.call( arguments, 1 ));
        } else if (typeof param === 'object' || !param) {
            return jwVideo.init.apply(this, arguments);
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.jwVideo' );
        }
        
    }
    
  

})(jQuery);