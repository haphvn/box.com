/**
 * jquery plugins simple dropdown menu
 */
(function ($) {
	var dropdownMenu = {
		init: function () {
			return this.each(function (e) {
				var menuWrapper = $(this);
				var menuTitle = menuWrapper.children('.menu-dropdown-title');
				var menuContent = menuWrapper.children('.menu-dropdown-content');
				var clickActive = function(e){
					e.stopPropagation(); 
					menuWrapper.toggleClass('active');
					menuContent.slideToggle('fast');					
				}
				//Click outside
				var clickOutside = function(e){
					menuWrapper.removeClass('active');
					menuContent.slideUp('fast');
				}
				menuTitle.unbind('click',clickActive).bind('click', clickActive);				
				$('html').unbind('click',clickOutside).bind('click', clickOutside);
      });
		}
	};
	
	$.fn.dropdownMenu = function(param) {
        if (typeof param == 'string') {
            return dropdownMenu[param].apply(this, Array.prototype.slice.call( arguments, 1 ));
        } else if (typeof param === 'object' || !param) {
            return dropdownMenu.init.apply(this, arguments);
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.dropdownMenu' );
        }
        
    }
})(jQuery);