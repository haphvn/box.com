/**
 * Truong Hoang Phuc - June 15th 2013 
 * jquery plugins simple tab controls
 */
(function ($) {
  var customtabs = {
    init: function (options) {
      var defaults = {
        startTab : 0,
        hasTab : true,
        switchToComboBox : true,
        onActive : function(currentTab){}
      };
      
      var options = $.extend(defaults, options);

      return this.each(function (e) {
        var tabWrapper = $(this);
        var tabControls = tabWrapper.find('.tab-controls a');
        var tabContents = tabWrapper.find('.tab-contents-wrapper .tab-content');
        var dropContainer = tabWrapper.find('.tab-controls');
        var windowWidth = window.innerWidth || document.documentElement.clientWidth;
        this.currentTab = options.startTab;

        if(options.switchToComboBox){
          dropContainer.addClass('drop320');
        }
        //Fix style IE8
        if ($.browser.msie  && parseInt($.browser.version, 10) === 8) {
          tabControls.each(function(){
            $(this).html('<span></span>'+$(this).text());
          });
        }

        //set active tab
        tabControls.removeClass('active');
        tabControls.each(function(){
          if($(this).attr('tab-id')==options.startTab){ 
            $(this).addClass('active');
            if(options.hasTab){
              showTab($(this).attr('tab-id'));
            }else{
              options.onActive(options.startTab);
            }
            return false;
          }          
        });

        var clickActive = function(e){
          e.stopPropagation(); 
          windowWidth = window.innerWidth || document.documentElement.clientWidth;          
          if($('html').hasClass('touch') && windowWidth < 720 && options.switchToComboBox){
            if($(this).hasClass('active')){
              toggleHover();
            }else{
              tabControls.removeClass('active');
              $(this).addClass('active');
              if(options.hasTab){
                showTab($(this).attr('tab-id'));
              }else{
                options.onActive($(this).attr('tab-id'));
              }
              dropContainer.removeClass('hovered');
            }
          }else{
            if($(this).hasClass('active')){
              return false;
            }
            tabControls.removeClass('active');
            $(this).addClass('active');
            if(options.hasTab){
              showTab($(this).attr('tab-id'));
            }else{
              options.onActive($(this).attr('tab-id'));
            }
            //Tab view
            if(windowWidth < 720 && options.switchToComboBox){
              dropContainer.addClass('hide');
              dropContainer.animate({height:'0'},50,function(){
                dropContainer.attr('style','');
                dropContainer.removeClass('hide');
              });            
            }          
          }

        }


        tabControls.unbind('click',clickActive).bind('click', clickActive); 
        
        $('html').unbind('click',toggleOutside).bind('click', toggleOutside);       

        function showTab(tabid){
          tabContents.hide();         
          tabContents.each(function(){
            if($(this).attr('tab-id')==tabid){
              this.currentTab = tabid;
              $(this).show();              
              options.onActive(tabid);
              return false;
            }
          });
        }

        /* Touch on device */
        function toggleHover(){          

          if($('html').hasClass('touch')){
            $this=dropContainer;            
            $this.toggleClass('hovered');            
          }
        }


        /* Touch outside */         
        function toggleOutside(){
          if($('html').hasClass('touch')){
            $this=dropContainer;
            if($this.hasClass('hovered')){$this.removeClass('hovered')};
          }
        }



      });
    }
  };
  
  $.fn.customtabs = function(param) {
        if (typeof param == 'string') {
            return customtabs[param].apply(this, Array.prototype.slice.call( arguments, 1 ));
        } else if (typeof param === 'object' || !param) {
            return customtabs.init.apply(this, arguments);
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.customtabs' );
        }
        
    }
})(jQuery);