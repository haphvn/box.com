/**
 * Build video object from Youtube Player
 */
(function ($) {
  $.fn.jwVideo = function(options){
    var defaults = {
      width : 854,
      height : 479
    };

    var windowWidth = $(window).width();
    var windowHeight = $(window).height();
    //Drupal support URL
    var $html,
        $jwvideo ,
        $container,
        video;
    var $this = this;

    var init = function () {

        $this.settings = $.extend({}, defaults, options);


        $html = $('<div></div>').html('<div id="boxplayer" class="boxplayer"></div>');        
    }


    $this.outputHtml = function(){
      return $html.html();
    }

//    $.getScript('../js/libs/youtube.js', function() {
      $this.loadVideo = function(callback) {
        var isReady = false;
        $this.video = youtube($('#boxplayer')).setup({
          youtubeURL      : $this.attr('href'),
          facebook        : $this.attr('data-fb'),
          twitter         : $this.attr('data-tw'),
          autostart       : true,
          swfObjectLink   : Drupal.settings.swfObjectLink,
          onReady         : function() {
            $('#boxplayer').height($('#boxplayer').width() * $this.settings.height / $this.settings.width);        
            isReady =true;
            if($.isFunction(callback)){
              callback();
            }
          }
        });

        if(!isReady){
          setTimeout(function(){
              $('#boxplayer').height($('#boxplayer').width() * $this.settings.height / $this.settings.width);

              if($.isFunction(callback)){
                callback();
              }
          },500);
        }
      }

      $this.closeVideo = function(callback) {
        this.video.destroy();
        $html.remove();
        if($.isFunction(callback)){
          callback();
        }
      }
//    });


    /**
     * Window resize event callback
     */
    var resizeWindow = function(e){
        
        if ($('#boxplayer').length) {
          $('#boxplayer').height($('#boxplayer').width() * $this.settings.height / $this.settings.width);          
        }
      
    }


    var winWidth = $(window).width(),
        winHeight = $(window).height();
    var resizeTimeout;      
    $(window).bind('resize', function (e) {

        var onResize = function() {
          resizeWindow ();
        }

        //New height and width
        var winNewWidth = $(window).width(),
        winNewHeight = $(window).height();

        // compare the new height and width with old one
        if(winWidth!=winNewWidth || winHeight!=winNewHeight)
        {
            window.clearTimeout(resizeTimeout);
            resizeTimeout = window.setTimeout(onResize, 10);
        }
        //Update the width and height
        winWidth = winNewWidth;
        winHeight = winNewHeight;
    });




    init();
    return this;
  };
})(jQuery);