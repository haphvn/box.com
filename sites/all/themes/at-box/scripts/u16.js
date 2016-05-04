jQuery(document).ready(function($) {
  $('.plans tbody td:first-child a').click(function(e) {
    e.preventDefault();
    var $row = $(this).parents('tr');
    if ($row.hasClass('plan_info')) {
      console.log('test');
      if (!$row.hasClass('expanded')) {
        $row.addClass('expanded');
        $row.siblings('tr').not($row).each(function() {
          $(this).addClass('expanded').find('ul').slideDown();
        });
      }
      else {
        $row.removeClass('expanded');
        $row.siblings('tr').not($row).each(function() {
          $(this).removeClass('expanded').find('ul').slideUp();
        });
      }
    }
    else if (!$row.hasClass('expanded')) {
      $row.addClass('expanded').find('ul').slideDown();
    }
    else {
      $row.removeClass('expanded').find('ul').slideUp();
    }
  });
});