jQuery(document).ready(function($) {
  //Google analytic
  var blockActionNames = ["Features Focus", "Testimonials", "A to Z"];
  var videosMapping = [];
  jQuery(".video_list").each(function(i){
	  jQuery(this).find("li").each(function(j){
		  videosMapping.push({
		        event: "click",
		        trackingType:"_trackEvent",
		        category: "videos",
		        action: blockActionNames[i],
		        label: jQuery(this).find("h3 strong").text(),
		        selector: "#main-content .video_list:eq("+i+") li:eq("+j+") a"
		    });
	  });
  });
  GA_Tracking.initTracking(videosMapping);
	  
  $('.video_list .expander > h3').each(function() {
    var videoslist = $(this).closest('.video_list');
    videoslist.find('h2.sub_nav_320').html($(this).html());

    //fix for php id manager
    videoslist.attr('id',$(this).attr('id'));
    $(this).removeAttr('id');
  });


  $('ul .player').each(function() {
    $(this).append('<span class="mask"></span>');
  });

  
  var deviceAgent = navigator.userAgent.toLowerCase();
  var isIPad = deviceAgent.match(/(ipad)/);
  var deviceWidth = $(window).width();
  var ieHeight = 0;
  var forgotTimeout;
  
  function resizePopup(){
      deviceWidth = $(window).width();
      var pW = 914;
      ieHeight = $('#lightbox_content').height() + 523;
      
      var pH = ieHeight;
      if($(window).width()<977) {pW = 700; pH = $('#lightbox_content').height() + 380;};
      
      //var left = ($(window).width() - (pW+60))/2;
      
      $('.video_lightbox').colorbox.resize({ 
          width: pW,
          innerHeight: pH
      },function(){
        
      });
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
  $('body').on('click','.player span',function(e){    
      var link = $(this).prev();
      link.click();
  })

  function activeVideo(el){
    var content = '';
    var pW = 914;
    if($(window).width()<977) pW = 700;
    var left = ($(window).width() - (pW+60))/2;
    //call video plugin
    var video = $(el).jwVideo();

    //content = appendVideoInfo(el) + $(el).jwVideo('outputHtml');
    var info = $('<div></div>').html(appendVideoInfo(el)).appendTo($('body')).hide();
    ieHeight = $('#lightbox_content').height() + 523;
    content = appendVideoInfo(el) + video.outputHtml();
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
          info.remove();
        },
        width: pW,
        innerHeight : ieHeight,
        viewportMaxWidth: true
    });

  }


  function appendVideoInfo(src){

    $current = $(src);
    $video_item = $current.parents('.video_item');

    var html = '<div id="lightbox_content"><h2>' + $video_item.find('h3 strong').html() + '</h2><a id="lightbox_readmore" href="javascript:void();" title="Learn More" class="btnBlue">Learn More</a><p>' + $video_item.find('p').html() + '</p></div>';

    return html;

  }



  //Action for list videos
  /* Video List Controlling */
  $('.video_list h2').click(function() {
    if ($('body').width() < 720) {
    $(this).parents('.video_list').toggleClass('expanded');
    $(this).siblings('.expander').slideToggle(300);
    }
  });

  $('.video_list .expander > a').click(function(e) {
    e.preventDefault();
      
    var top = Math.round(parseFloat($(this).closest('.video_list').offset().top));
    $('html,body').animate({
      scrollTop: top
    }, 500);

  });

  $(window).resize(function() {
    if ($('body').width() > 720) {
    $('.expander').removeAttr('style');
    }
    else {
    $('.expanded .expander').slideDown();
    }
  }); 

});