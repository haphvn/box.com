/*var resizeController = function() {
    this.init = function() {
    	//safe range for ie8 (consequence of fix colorbox border when resizing)
    	var safeRange = jQuery("html").hasClass("ie8")?10:0;
        var popup = jQuery('#popup');
       // console.log(popup);
        var popupHeight = popup.outerHeight()+safeRange;
        var popupWidth = popup.outerWidth();
        //parent.jQuery.colorbox.resize({height: popupHeight});
    }
    this.init();
};
jQuery(window).load(function() {
    var popupResizeController = new resizeController();
});*/


jQuery(document).ready(function($) {
  $('#company-size').combobox();
  var bindEvent = function() {
    //var device = $('html').hasClass('touch');
    $('input, textarea').placeholder();
    $("form").bind('submit', function(e) {
      e.preventDefault();
      var data = $(this).serialize();
      url = $(this).attr('action');
      $.ajax({
        url: url,
        data: data,
        cache: false,
        contentType: false,
        processData: false,
        type: 'POST',
        fail: function(error) {

        },
        success: function(data) {

        }
      });
    });
  }
  bindEvent();
});