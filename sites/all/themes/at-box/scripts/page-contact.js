jQuery(document).ready(function($) {


  $('#edit-help').combobox();
  var bindEvent = function() {
    var device = $('html').hasClass('ios') || $('html').hasClass('android');

    if(!device){
      $('.contact-list-ul .blue-link[href^="tel:"]').click(function(e){      
        e.preventDefault();
      });
    }

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

  if (!$('html').hasClass('android') && !$('html').hasClass('ios')) {
    $('a[href^="tel:"]').each(function() {
      var a_class = $(this).attr('class'),
          a_html = $(this).html();
          $(this).replaceWith('<span class="' + a_class + '">' + a_html + '</span>');
    });
  }  

});