/**
 * Truong Hoang Phuc - July 1st 2013 
 * jquery plugins combobox
 */
(function ($) {
  var combobox = {
    init: function (options) {
      var defaults = {      
        onSelected : function(value){}
      };
      
      var options = $.extend(defaults, options);

      return this.each(function (e) {
        var $this = $(this);
        var items = $this.children();

        //For selecte element: if no options selected, the first option will default value
        var defaultItem = items.filter(':selected');
        var defaultText = $(defaultItem[0]).text();
        var defaultValue = $this.val();
        

        var comboWrapper = $('<div class="combobox"></div>');
        var comboItems;
        var titleItem;

        function renderHTML(){
          $this.hide();          
          var html='<a href="javacript:void(0);" class="active">'+ defaultText +'</a>';
          items.each(function(index){
            html += '<a href="javacript:void(0);" data-value='+ this.value +'>'+ $(this).text() +'</a>';
          });
          comboWrapper.addClass($this.attr('class')).html(html);
          $this.before(comboWrapper);
          comboItems = comboWrapper.children(); 
          titleItem =  comboWrapper.find('.active');      
        }

        function getInitValue(){
          comboItems.removeClass('selected');
          comboItems.each(function(){
            if($(this).attr('data-value')==defaultValue){ 
              $(this).addClass('selected');
              //user callback after selected
              options.onSelected($(this).attr('data-value'));
              return false;
            }          
          });
        }

        renderHTML();
        getInitValue();


        var clickActive = function(e){
          e.stopPropagation(); 
          e.preventDefault();
          if($('html').hasClass('touch')){
            if($(this).hasClass('active')){
              toggleHover();
              return false;
            }

            if($(this).hasClass('selected')){
              toggleHover();
            }else{
              comboItems.removeClass('selected');
              $(this).addClass('selected');

              items.removeAttr('selected');
              $this.val($(this).attr('data-value'));
              $(items[$(this).index()]).attr('selected','selected');
              titleItem.text($(this).text());
              //user callback after selected
              options.onSelected($(this).attr('data-value'));
              comboWrapper.removeClass('hovered');
              //Fire Change event of select element
              $this.change();
            }
          }else{

            if($(this).hasClass('selected')){
              return false;
            }
            comboItems.removeClass('selected');
            $(this).addClass('selected');

            items.removeAttr('selected');
            $this.val($(this).attr('data-value'));
            $(items[$(this).index()]).attr('selected','selected');
            titleItem.text($(this).text());
            //user callback after selected
            options.onSelected($(this).attr('data-value'));

            //Close combobox
            comboWrapper.attr('style','height:0px; display:none');
            var closetimer;
            clearTimeout(closetimer);
            closetimer = setTimeout(function(){
              comboWrapper.attr('style','');            
            },50);
            

            //Fire Change event of select element
            $this.change();
          }

        }


        comboItems.unbind('click',clickActive).bind('click', clickActive); 
        
        $('html').unbind('click',toggleOutside).bind('click', toggleOutside);       


        /* Touch on device */
        function toggleHover(){          

          if($('html').hasClass('touch')){
            $this=comboWrapper;            
            $this.toggleClass('hovered');            
          }
        }


        /* Touch outside */         
        function toggleOutside(){
          if($('html').hasClass('touch')){
            $this=comboWrapper;
            if($this.hasClass('hovered')){$this.removeClass('hovered')};
          }
        }

      });
    }
  };
  
  $.fn.combobox = function(param) {
        if (typeof param == 'string') {
            return combobox[param].apply(this, Array.prototype.slice.call( arguments, 1 ));
        } else if (typeof param === 'object' || !param) {
            return combobox.init.apply(this, arguments);
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.combobox' );
        }
        
    }
})(jQuery);