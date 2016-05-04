(function($){  
  $(window).load(function(){
    var viewport;
    var downsize = true;
    var oldWidth;
    var slideLi = [];
    var notePoint = [];
    var pageLoad = true;
    var ltIE9 = $('html').hasClass('lt-ie9');


    pageInitialize();

    var winWidth = $(window).width(),
        winHeight = $(window).height();
    var resizeTimeout;


    $(window).bind('orientationchange', function (e) {

        
      //Check viewport style (Mobile / Tablet or Desktop)
      var windowWidth = window.innerWidth || document.documentElement.clientWidth;
      oldWidth = windowWidth;
      if( windowWidth < 720 ) {
        viewport = 0;      
      }else if(windowWidth < 978 ){
        viewport = 1;
      }else {
        viewport = 2;
      }

      viewStateChange();

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
      if (oldWidth>windowWidth) {downsize=true}else{downsize=false};
      oldWidth=windowWidth;
      if(ltIE9){
        setTimeout(viewStateChange,1100);
      }else{
        viewStateChange();
      }
    }


    function pageInitialize(){


      $('.slide-event').each(function(index){
        //get 2nd li element of each ul in a section then push to a group.
        var slide = $(this).children('ul');
        var group = [];
        slide.each(function(){          
          var li = $(this).children()[1];          
          group.push($(li));
        });
        slideLi.push(group);        
      });

      //Check viewport style (Mobile / Tablet or Desktop)
      var windowWidth = window.innerWidth || document.documentElement.clientWidth;
      oldWidth = windowWidth;
      if( windowWidth < 720 ) {
        viewport = 0;      
      }else if(windowWidth < 978 ){
        viewport = 1;
      }else {
        viewport = 2;
      }

      if(ltIE9){
        setTimeout(viewStateChange,1100);
      }else{
        viewStateChange();
      }

    }


    //fire when viewport change
    function viewStateChange(){

      if(viewport==0){return true;}
      if(viewport==1){
        if(downsize){
          for(var i = 0;i<slideLi.length;i++){
            setUpHeight(slideLi[i],i);
          }
        }else{
          for(var i = 0;i<slideLi.length;i++){
            setDownHeight(slideLi[i],i);
          }
        }
      }
      else{
          for(var i = 0;i<slideLi.length;i++){
            setUpHeight(slideLi[i],i);
          }
      }
      if(pageLoad){pageLoad=false;}
    }


    function setUpHeight(arr,notearr){
      var maxHeight; 
      if(pageLoad){
        maxHeight = 300; //300px is min height for an li element (base on PSD define)
        for(var i = 0;i<arr.length;i++){
          if(maxHeight<=$(arr[i]).height()){
            maxHeight = arr[i].height();
            notePoint[notearr] = i;
          }
        }
      }else{
        for(var i = 0;i<arr.length;i++){
          $(arr[i]).height('auto');
        }
        maxHeight = $(arr[notePoint[notearr]]).height();
        for(var i = 0;i<arr.length;i++){
          if(maxHeight<=$(arr[i]).height()){
            maxHeight = $(arr[i]).height();
          }
        }
      }

      if(ltIE9){
        maxHeight-=2;
        //trick for IE8
        if(pageLoad) fireResize();
      }
      for(var i = 0;i<arr.length;i++){
        if(i!=notePoint[notearr]){
          $(arr[i]).height(maxHeight);
        }
      }
    }

    function setDownHeight(arr,notearr){
      $(arr[notePoint[notearr]]).height('auto');
      var minHeight = $(arr[notePoint[notearr]]).height(); 
      for(var i = 0;i<arr.length;i++){
        if(minHeight>=$(arr[i]).height()){
          minHeight = $(arr[i]).height();
        }
      }
      if(ltIE9){minHeight-=2;}
      for(var i = 0;i<arr.length;i++){
        if(i!=notePoint[notearr]){
          $(arr[i]).height(minHeight);
        }
      }
    }
    // $('#subNavi .sub-top-nav').subnav();
    // var subnav = $('#subNavi .sub-top-nav')
    // $('#webinars').waypoint(function(direction) {
    //   //debugger;
    //   subnav.subnav('setActive',1);
    // });
    // $('#upcoming-events').waypoint(function(direction) {
    //   debugger;
    //   subnav.subnav('setActive',0);
    // });

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
