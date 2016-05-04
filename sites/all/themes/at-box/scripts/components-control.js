jQuery(document).ready(function($){
  var ua = navigator.userAgent.toLowerCase();
  if(ua.match(/iphone/i) || ua.match(/ipad/i)){
      $('html').addClass('ios');
  }
  if((/android/).test(ua)){
      $('html').addClass('android');
  }
  if(ua.match(/os 6/i)){
      $('html').addClass('ios6');
  }
  if (ua.indexOf("msie 8") != -1) {
      $("html").addClass("ie8");
  }
  if (ua.indexOf("msie") != -1) {
      $("html").addClass("ie");
  } else {
      if((/chrome/).test(ua)){
          $('html').addClass('chrome');
      } else {
          if((/firefox/).test(ua)){
              $('html').addClass('firefox');
          } else {
              if((/safari/).test(ua)){
                  $('html').addClass('safari');
              }
          }
      }    
  }

  //Check if devide has orientation property
  if(window.orientation !== undefined){
    $('html').addClass('orientation');
  }

  //Check and init banner carousel
  if($('.banner-carousel').length){
    // init banner slider
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
      }
  }else{
    window.bannerSlider = null;
  }

  //Check and init footer carousel
  var footerSlider = $('#slide-block').find('.slider-ul');
  if(footerSlider.length){
    window.footerSlider = footerSlider.bxSlider({
      controls  : true,
      useCSS: false,
      minSlides: 6,
      maxSlides: 6,
      slideWidth: 117,
      slideMargin: 0,
      pager: false      
    });
  }else{
    window.footerSlider = null;
  }  

  //For sub-navigation init & action
  if($('#subNavi').children('.sub-top-nav').length>0){
    $('.sub-top-nav').subnav({
      startTab : null,
      onActive: function(currentEl,currentTab){}
    });

    //Fix Sub-Navigation on top when scroll to.
    $('#subNavi').waypoint('sticky', {
      wrapper: '<div class="sticky-wrapper" />',
      stuckClass: 'stuck'
    });
  }    

  //prevent touch move when open colorbox popup
  $('body').on('touchmove','#cboxOverlay',function(e){    
    e.preventDefault();
  })

  //Define global action and Fix UI
  $('.menu-dropdown').dropdownMenu();
  //hot fix menu language
  if($('#tablet-close-language').length<=0){
    var html = '<li class="last-row close-item"><a href="#" id="tablet-close-language"><span class="ico-close"></span></a></li>';
    $('#main-dropdown-language').append(html);
  }
  $('#btn-topmenu').click(function(){
    $(this).toggleClass('active');
    $('#btn-topmenu-language').removeClass('active');
    $('#main-dropdown').removeClass('show-language').toggleClass('show-menu');
  });
  $('#btn-topmenu-language').click(function(){
    $('#btn-topmenu').removeClass('active');
    $(this).toggleClass('active');        
    $('#main-dropdown').removeClass('show-menu').toggleClass('show-language');        
  });
  $('#tablet-topmenu-language').click(function(){
    $('#btn-topmenu').removeClass('active');
    $('#btn-topmenu-language').addClass('active');
    $('#main-dropdown').removeClass('show-menu').toggleClass('show-language');
  });
  $('#tablet-close-language').click(function(){
    $('#main-dropdown').removeClass('show-language'); 
  });

  //Fix UI for IE8
  if ( $('.lt-ie9').length > 0 || $('.ie9').length > 0 ) {
    $('#login-block .login li').mousedown(function(){
    $(this).addClass('active');
  });
  $('#login-block .login li').mouseup(function(){
    $(this).removeClass('active');
  });        
  }
  if ( $('.lt-ie9').length > 0 ) {
    $('.btn-box').each( function () {
      $(this).oocss({
        topLeft: false,
        bottomRight: false
      })
    });
  }
});