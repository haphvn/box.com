/**
 * Truong Hoang Phuc - June 15th 2013 
 */
(function ($) {
  var subnav = {
    init: function (options) {

      //Settings list and the default values
      var defaults = {
        startTab : 0,
        onActive : function(currentEl,currentTab){

        }
      };
      
      var options = $.extend(defaults, options);

      return this.each(function (e) {
        var ulWrapper = $(this); // should be 'ul'
        var liItems = ulWrapper.children(); // find 'li'

        var currentTab = options.startTab;
        var currentEl;
        var disableWaypoint = false;

        ulWrapper.addClass('sub-'+liItems.length);
        //set active tab
        liItems.removeClass('active');
        liItems.each(function(index){
          if(index==options.startTab){ 
            $(this).addClass('active');
            currentTab = index;
            currentEl = $(this);
            options.onActive(currentEl,currentTab);
            return false;
          }          
        });

        //Fix style IE8
        if ($.browser.msie  && parseInt($.browser.version, 10) === 8) {
          ulWrapper.append('<span class="shadow"></span>')
        }

        var clickActive = function(e){
          var linkObj = $(this).find('a');
          var id = linkObj.attr('link');
          var target = linkObj.attr('target');

          e.stopPropagation();

          if (target == '_blank' || $(id).length<=0) {
            return true;
          }
          e.preventDefault();
          if($(this).hasClass('active')){
            return false;
          }
          liItems.removeClass('active');
          $(this).addClass('active');
          currentTab = $(this).index();
          currentEl = $(this);
          options.onActive( currentEl,currentTab);

          //$.scrollTo($(id), 600, {offset:-54})
          var targetTop = Math.round(parseFloat($(id).offset().top));
          var timimgScroll = 600;
          
          $('html,body').animate({scrollTop: targetTop-54},timimgScroll);

          //Temporarily disable waypoint
          disableWaypoint = true;
          //enable back after a short time.
          setTimeout(function() {
            //Temporarily disable waypoint
            disableWaypoint = false;
          }, timimgScroll+200);

        }

        var initWaypoint = function() {
          liItems.each(function(el) {
            var linkObj = $(this).find('a');
            var id = linkObj.attr('href');
            var target = linkObj.attr('target');
            var pos = id.indexOf('#');

            if (pos >= 0 && (target == null || target == '_self')) {
              id = id.substring(pos);              
              $(id).waypoint(function(direction) {

                if (disableWaypoint === true) return;                
                liItems.removeClass('active');                
                ulWrapper.find(' > li a[link=' + id + ']').closest('li').addClass('active');
              });
              linkObj.attr('href', '#');
              linkObj.attr('link', id);
            }
            
          });
        }
        liItems.unbind('click',clickActive).bind('click', clickActive); 
        initWaypoint();
      });
    },
    setActive: function(index) {
      var ulWrapper = $(this); // should be 'ul'
      var liItems = ulWrapper.find('> li'); // find 'li'
      var el = ulWrapper.find(' > li').eq(index);
      liItems.removeClass('active');      
      el.addClass('active');
    }
  };
  
  $.fn.subnav = function(param) {
        if (typeof param == 'string') {
            return subnav[param].apply(this, Array.prototype.slice.call( arguments, 1 ));
        } else if (typeof param === 'object' || !param) {
            return subnav.init.apply(this, arguments);
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.subnav' );
        }
        
    }
})(jQuery);