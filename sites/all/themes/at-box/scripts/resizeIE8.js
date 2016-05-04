jQuery(document).ready(function($){
  
    var viewport;
    var oldWidth;
    var winWidth = $(window).width(),
        winHeight = $(window).height();
    var resizeTimeout;


    $(window).bind('resize', function (e) {

        var onResize = function() {
          fireResize ();
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


    var fireResize = function(){
      var windowWidth = window.innerWidth || document.documentElement.clientWidth;
      var currentView = viewport;
      if(windowWidth < 720){
        viewport = 0;
      }else if(windowWidth < 978){
        viewport = 1;
      }else{
        viewport = 2;
      }
      if(currentView != viewport ){
        var resizeSlider = setTimeout(viewStateChange,1000);  
      }
      

    }


    function pageInitialize(){

      var windowWidth = window.innerWidth || document.documentElement.clientWidth;
      oldWidth = windowWidth;
      if( windowWidth < 720 ) {
        viewport = 0;      
      }else if(windowWidth < 978 ){
        viewport = 1;
      }else {
        viewport = 2;
      }

      
    }

    pageInitialize();

    //fire when viewport change
    function viewStateChange(){
      
      if(window.bannerSlider!=null){
        window.bannerSlider.reloadSlider();
        /*window.bannerSlider.destroySlider();
        if ($('html').hasClass('android')) {
          window.bannerSlider = $('.banner-carousel').bxSlider({
            controls  : false,
            oneToOneTouch: true,
            speed : 500
          });
        }
        else {
          window.bannerSlider = $('.banner-carousel').bxSlider({
            controls  : false
          });
        }*/
      }
      if(window.footerSlider!=null){
        window.footerSlider.reloadSlider();
      }


    }


});