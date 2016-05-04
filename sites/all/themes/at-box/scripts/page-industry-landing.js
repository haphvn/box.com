(function($){  
  $(window).load(function(){
    var viewport;
    //var downsize = true;
    var oldWidth;
    var slideLi = [];
    var slideLi978 = [];
    var slideLi720 = [];

    //var notePoint = 0;
    //var pageLoad = true;
    var ltIE9 = $('html').hasClass('lt-ie9');


    pageInitialize();


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
            resizeTimeout = window.setTimeout(onResize, 50);
        }
        //Update the width and height
        winWidth = winNewWidth;
        winHeight = winNewHeight;


    });


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
        setTimeout(viewStateChange,1000);
      }else{
        viewStateChange();
      }
    }



    function pageInitialize(){

      slideLi = $('.ul-list-item');

      var group1 = [];
      var group2 = [];
      for(var i=0;i<slideLi.length;i++){          
        group1.push(slideLi[i]);
        group2.push(slideLi[i]);
        if((i%3)==2 ){
          slideLi978.push(group1);
          group1 = [];
        }
        if((i%2)==1 ){          
          slideLi720.push(group2);
          group2 = [];
        }
      }
      if(group1.length>0) slideLi978.push(group1);
      if(group2.length>0) slideLi720.push(group2);

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
        setTimeout(viewStateChange,1000);
      }else{
        viewStateChange();
      }

    }

    function viewStateChange(){
      if(viewport==0){
        return true;
      }
      if(viewport==1){
        setUpHeight720();
      }
      else{
        setUpHeight978();
      }            
      //if(pageLoad){pageLoad=false;}
    }

    function setUpHeight978(){
      slideLi.height('auto');
      for(var i=0;i<slideLi978.length;i++){
        var maxHeight = 101;
        var arr = slideLi978[i];
        for(var x=0;x<arr.length;x++){
          if(maxHeight<=$(arr[x]).height()){ 
            maxHeight = $(arr[x]).height();
          }
        }
        for(var x=0;x<arr.length;x++){
          $(arr[x]).height(maxHeight);
        }
      }
    }


    function setUpHeight720(){
      slideLi.height('auto');
      for(var i=0;i<slideLi720.length;i++){
        var maxHeight = 101;
        var arr = slideLi720[i];
        for(var x=0;x<arr.length;x++){
          if(maxHeight<=$(arr[x]).height()){ 
            maxHeight = $(arr[x]).height();
          }
        }
        for(var x=0;x<arr.length;x++){
          $(arr[x]).height(maxHeight);
        }
      }
    }


  });

})(jQuery);
