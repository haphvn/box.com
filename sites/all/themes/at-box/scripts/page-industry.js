jQuery(document).ready(function($){
  var slideLi;
  var listContent = $('.block-customer-story .list-parent').children();
  var slideContent = $('.block-customer-story .slider-content');
  var slideContentWrapper = $('.block-customer-story .content-wrapper');

  var nextClick = true;
  var slider = $('.slider-ul').bxSlider({
                  useCSS: false,
                  minSlides: 1,
                  maxSlides: 3,
                  moveSlides: 1,
                  slideWidth: 116,
                  slideMargin: 0,
                  pager: false,
                  onSliderLoad : function(startIndex){
                    slideLi = $('.slider-ul li');
                    var startItem = $(slider.children()[slider.getSlideCount()])
                    var centerItem = startItem.nextAll()[0];
                    firstIndex = $(centerItem).index();                    
                    activeItem(centerItem);

                    var w=0;
                    $('.slider-ul li').each(function(index){
                      if(!$(this).hasClass('bx-clone')){
                        w+=$(this).outerWidth();
                      }                      
                    });

                    $('.bx-wrapper').attr('style','max-width:'+w+'px');
                  },
                  onSliderBefore: function() {


                  },
                  onSlideAfter : function(currentObject, oldSlide, currentSlide){

                    var nextItem ;
                    var nextIndex ;

                    if(nextClick){
                      nextItem = $('.slider-ul .active').next();
                    }else{
                      nextItem = $('.slider-ul .active').prev();
                    }

                    nextIndex = nextItem.index();
                    if(nextIndex==(slideLi.length-1)) nextIndex = 0;
                    if(nextIndex==0) nextIndex = slideLi.length-1;
                    activeItem(slideLi[nextIndex]);
                    
                  }    
              });

  function activeItem(item){
    
    $(slideLi).removeClass('active').removeClass('clone-active');
    if(!$(item).hasClass('bx-clone')){
      $(item).addClass('active');
      var clone = $('.slider-ul .bx-clone[data-content=' + $(item).attr('data-content') + ']')
      $(clone).addClass('clone-active');
      
    }else{
      $(item).addClass('clone-active');
      var clone = $('.slider-ul li[data-content=' + $(item).attr('data-content') + ']');
      clone.each(function(){
        if(!$(this).hasClass('bx-clone')){
          $(this).addClass('active');
          return false;
        }
      });
    }
    loadContent(item); 
    slideContentWrapper.css('height','auto');

    //return bxClone;
  }

  function loadContent(item){
    //showLoading();
    var html;
    for(var i = 0; i < listContent.length; i++){
      if($(listContent[i]).attr('data-content')==$(item).attr('data-content')){
        html = $(listContent[i]).find('.list-content').html();
        slideContent.html(html);
        return true;
      }
    }
    return false;
    //hideloading();
  }

  $('body').on('click','.bx-next',function(e){
      nextClick = true;
  });
  $('body').on('click','.bx-prev',function(e){
      nextClick = false;      
  });

  $('body').on('click','.slider-ul li',function(e){
      firstIndex = $(this).index();      
      activeItem(this);
    
  });



  var deviceAgent = navigator.userAgent.toLowerCase();
  var isIPad = deviceAgent.match(/(ipad)/);
  var deviceWidth = $(window).width();

  var forgotTimeout;
  
  function resizePopup(){
      deviceWidth = $(window).width();
      var pW = 914;
      var pH = 484;
      if($(window).width()<977) {pW = 700; pH = 365;};
      
      $('.youtube_player a').colorbox.resize({ 
          width: pW,
          innerHeight: pH
      })
  }
   

  $(window).bind('orientationchange', function (e) {
      if (!$('#colorbox').hasClass('color_contact')) {
        clearTimeout(forgotTimeout);
        forgotTimeout = setTimeout(resizePopup, 20);
      }
  });




  var winWidth = $(window).width(),
      winHeight = $(window).height();
  var resizeTimeout;      
  $(window).bind('resize', function (e) {

      var onResize = function() {
        resizePopup ();
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

  $('body').on('click','.video_lightbox',function(e){
    if ($('html').hasClass('no-touch') || isIPad || deviceWidth > 719) {
      activeVideo(this);
    }    
  })


  $('body').on('click','.player img',function(e){    
      var link = $(this).next();
      link.click();
  })

  function activeVideo(el){
    var content = '';
    var pW = 914;
    if($(window).width()<977) pW = 700;
    var left = ($(window).width() - (pW+60))/2;
    //call video plugin
    var video = $(el).jwVideo();
    content = video.outputHtml();
    this.body_top = 0;
    $(el).colorbox({ 
        html : content,
        scrolling: false,
        fixed: false,
        onOpen: function() {
          this.body_top = $(document).scrollTop();
        },
        onComplete: function(){
          $('body').addClass('noscroll').find('.wrapper').css('top', -this.body_top);
          video.loadVideo(resizePopup);
        },
        onClosed: function(){
          video.closeVideo();
          $('body').removeClass('noscroll');
          $(document).scrollTop(this.body_top);
        },
        width: pW,
        innerHeight: 484,
        viewportMaxWidth: true
    });
  }
});