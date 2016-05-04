(function($){  
  $(window).load(function(){
      
    var viewport;
    var slidersUl = $('.slider-ul');
    var sliders = slidersUl;
    var ltIE9 = $('html').hasClass('lt-ie9');
    var bannerSlider;

    pageInitialize();
    
    var winWidth = $(window).width(),
        winHeight = $(window).height();
    var resizeTimeout;

    $(window).bind('orientationchange', function (e) {

      var windowWidth = window.innerWidth || document.documentElement.clientWidth;
      if( windowWidth < 720 ) {
        viewport = 0;      
      }else if(windowWidth < 978 ){
        viewport = 1;
      }else {
        viewport = 2;
      }
      if(ltIE9){
        setTimeout(viewStateChange,1000);
      }else{
        viewStateChange();
      }

    });


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
      if(currentView != viewport){
        viewStateChange();
      }
    }


    $('.event-wrapper').on('click','.desc-view',function(e){
      var $desc = $(this).parent();
      var li = $desc.parents('li');
      var sliderViewport = li.parents('.bx-viewport');
      $desc.toggleClass('expand');
      if($desc.hasClass('expand')){      
        if(viewport!=0){
          li.attr('data-height',li.css('height'));
          li.css('height','auto');
        }
        if(sliderViewport.length>0){
          sliderViewport.height('auto');
        }
        $(this).text('Less');
      }else{
        $(this).text('More');
        li.css('height',li.attr('data-height'));
      }
    });


    function pageInitialize(){
      var windowWidth = window.innerWidth || document.documentElement.clientWidth;
      if( windowWidth < 720 ) {
        viewport = 0;      
      }else if(windowWidth < 978 ){
        viewport = 1;
      }else {
        viewport = 2;
      }
      if(ltIE9){
        setTimeout(viewStateChange,1000);
      }else{
        viewStateChange();
      }


    }

    function viewStateChange(){
      var windowWidth = window.innerWidth || document.documentElement.clientWidth;      
      if(windowWidth < 720){
        sliders.each(function(index){
          var $slider = sliders[index];
          if($slider.isSlider){
            sliders[index].destroySlider();
          }
        });
      }else if(windowWidth < 978){
        setupSlider(1);
      }else{
        setupSlider(2);
      }
      
      $('.slider-ul').each(function(index){
        setHeight($(this));
      });

    }




    function setupSlider(type){
      sliders.each(function(index){
        var $slider = sliders[index];
        if(!$slider.isSlider){
          if(type==1){
            if($(this).children().length > 2) {
              var slider = $(this).bxSlider({
                          useCSS: false,
                          minSlides: 2,
                          maxSlides: 2,
                          moveSlides: 1,
                          slideWidth: 341,
                          slideMargin: 30,
                          pager: false,
                          controls: true
                      });
              sliders[index] = slider;
              sliders[index].isSlider = true;
            }
          }else{
            if($(this).children().length > 3) {
              var slider = $(this).bxSlider({
                          useCSS: false,
                          minSlides: 3,
                          maxSlides: 3,
                          moveSlides: 1,
                          slideWidth: 282,
                          slideMargin: 11,
                          pager: false,
                          controls: true   
                      });
              sliders[index] = slider;
              sliders[index].isSlider = true;
            }
          }
        }else{
          if(type==1){
            sliders[index].reloadSlider({
                        useCSS: false,
                        minSlides: 2,
                        maxSlides: 2,
                        moveSlides: 1,
                        slideWidth: 341,
                        slideMargin: 30,
                        pager: false
            });          
          }else{
            if(sliders[index].getSlideCount()>3){
              sliders[index].reloadSlider({
                          useCSS: false,
                          minSlides: 3,
                          maxSlides: 3,
                          moveSlides: 1,
                          slideWidth: 282,
                          slideMargin: 11,
                          pager: false
              });
            }else{
              sliders[index].destroySlider();
              sliders[index].isSlider = false;
            }
          }
        }
      });

    }

    function setHeight(el){    
      var li = $(el).children();
      var maxHeight = 0;
      if(viewport==0){
        $(li).height('auto');
      }else{
        for(var i=0; i<li.length; i++){
            if(maxHeight < $(li[i]).height()) {
              maxHeight = $(li[i]).height();
            }
        }
        li.each(function(){
          $(this).height(maxHeight);
        });
      }
    }

  });


  $(document).ready(function($) {
    
    $('.content .title-header > h2').each(function() {    
      //fix for php id manager
      var div = $(this).closest('.content');
      div.attr('id',$(this).attr('id'));
      $(this).removeAttr('id');
    });
  });

})(jQuery);
