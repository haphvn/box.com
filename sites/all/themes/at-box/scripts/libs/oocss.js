;(function($, undefined) {
	
	$.fn.oocss = function( options ) {
		
		if (this.length == 0) return;
		
		if (this.length > 1){
			this.each(function(){$(this).oocss(options)});
			return this;
		}
		
		var opts = _extendOptions(options);
		
		var wrapHTML;
		
		this.addClass('oocss');
		
		// BUILD TOP HTML
		var buildTopHtml = function () {
			if ( opts.topLeft || opts.topRight ) {
				var topHTML = $('<b class="oocss-b oocss-top"></b>');
				
				if ( opts.topLeft ) {
					var topLeft = $('<b class="oocss-b oocss-tl"></b>');
					topLeft.appendTo(topHTML);
				}
				
				if ( opts.topRight ) {
					var topRight = $('<b class="oocss-b oocss-tr"></b>');
					topRight.appendTo(topHTML);
				}
				
				topHTML.appendTo(wrapHTML);
			}
		};
		
		// BUILD BOTTOM HTML
		var buildBottomHtml = function () {
			if ( opts.bottomLeft || opts.bottomRight ) {
				var bottomHTML = $('<b class="oocss-b oocss-bottom"></b>');
				
				if ( opts.bottomLeft ) {
					var bottomLeft = $('<b class="oocss-b oocss-bl"></b>');
					bottomLeft.appendTo(bottomHTML);
				}
				
				if ( opts.bottomRight ) {
					var bottomRight = $('<b class="oocss-b oocss-br"></b>');
					bottomRight.appendTo(bottomHTML);
				}
				
				bottomHTML.appendTo(wrapHTML);
			}
		};
		
		// BUILD BLOCK HTML
		var buildBlockHtml = function (obj) {
			
			var sourceHTML = obj.html();
			obj.empty();
			
			wrapHTML = $('<div class="oocss-wrap"></div>');
			
			buildTopHtml();
			
			// BUILD INNER HTML
			var innerHTML = $('<div class="oocss-inner"><div class="oocss-inner-content">'+sourceHTML+'</div></div>');
			innerHTML.appendTo(wrapHTML);
			wrapHTML.appendTo(obj);
			
			if ( opts.className ) {
				wrapHTML.addClass(opts.className);
			}
			
			buildBottomHtml();
			
		};
		
		if ( this.prop("tagName") == "INPUT" ) {
			
			// INPUT
			var inputWrapHTML = $('<div class="oocss-input-wrap"></div>');
			
			inputWrapHTML.insertAfter(this);
			
			var textValue = this.val();
			var inputMarkup = $('<div class="oocss-input-markup">'+textValue+'</div>');
			
			inputMarkup.appendTo(inputWrapHTML);
			this.appendTo(inputWrapHTML);
			
			buildBlockHtml(inputWrapHTML);
			
			if ( opts.className ) {
				inputWrapHTML.addClass(opts.className);
			}
			
		} else {
			
			// BLOCK
			buildBlockHtml(this);
			
		}
		
	};
	
	var _extendOptions = function ( options ) {
		
		var opts = $.extend({}, $.fn.oocss.defaults, options || {});
		
		if ( typeof opts.className != 'string' )
			opts.className = '';
		if ( typeof opts.topLeft != 'boolean' )
			opts.topLeft = true;
		if ( typeof opts.topRight != 'boolean' )
			opts.breakWord = true;
		if ( typeof opts.bottomLeft != 'boolean' )
			opts.breakWord = true;
		if ( typeof opts.bottomRight != 'boolean' )
			opts.breakWord = true;
			
		return opts;
		
	};
	
	$.fn.oocss.defaults = {
		className:	'',
		topLeft: true,
		topRight: true,
		bottomLeft: true,
		bottomRight: true
	};
	
})(jQuery);