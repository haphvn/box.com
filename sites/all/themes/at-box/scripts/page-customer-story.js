jQuery(document).ready(function($) {

  var deviceWidth = $(window).width();
  var deviceAgent = navigator.userAgent.toLowerCase();
  var isIPad = deviceAgent.match(/(ipad)/);  
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
  
  $('.jwvideo').on('click','a',function(e){
    if ($('html').hasClass('no-touch') || isIPad || deviceWidth > 719) {
      activeVideo(this);
    }
  });

  $('.jwvideo').on('click','img',function(e){
      var link = $(this).next();
      link.click();
  });  

   $('#pdf_iframe_link').customtabs({
      startTab : jQuery('#pdf_iframe_link a.active').attr('tab-id'),
      onActive: function(currentTab) {
          jQuery('.customer_pdf').find('h3').hide();
          jQuery('.customer_pdf').find('h3[tab-id=' + currentTab + ']').show();
      }
   });

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