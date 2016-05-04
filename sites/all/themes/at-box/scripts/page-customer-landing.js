var customerMapping =  [
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "customers",
        action: "featured",
        label: "",
        selector: "#main-content .tab-controls a:eq(0)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "customers",
        action: "industry",
        label: "",
        selector: "#main-content .tab-controls a:eq(1)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "customers",
        action: "Usercase",
        label: "",
        selector: "#main-content .tab-controls a:eq(2)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "customers",
        action: "Size",
        label: "",
        selector: "#main-content .tab-controls a:eq(3)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "customers",
        action: "View all",
        label: "",
        selector: "#main-content .customer_list .tab-controls a.last-child"
    }
];

jQuery(document).ready(function($) {

  GA_Tracking.initTracking(customerMapping);
  /**
   * Dialog Box for customers
   */
  $('html.touch').click(function() {
    $('.touch .tab-controls').removeClass('hovered');
  });
  $('.touch .tab-controls').click(function(e) {
    e.stopPropagation();
    if ($('body').width() < 720) {
      $(this).toggleClass('hovered');
    }
  });

  $('html').click(function() {    
       if ($('#customer_info').length && $('.customers li').hasClass('viewing')) {
          $('#customer_info').slideUp(300, function() {
            $(this).remove();
            $('.customers li').removeClass('viewing');
            $('body').height('auto');
          });    
        }        
  });

  $('.customers').on('click', 'li', function(e) {
    e.preventDefault();
    e.stopPropagation();
    var $customer = $(this);
    if ($('#customer_info').length && $customer.hasClass('viewing')) {
      $('#customer_info').slideUp(300, function() {
        $(this).remove();
        $customer.removeClass('viewing');
        $('body').height('auto');
      });    

    }
    else if ($('#customer_info').length) {
      $show_box = $('#customer_info');
      $customer.parents('.customers').find('li').removeClass('viewing');
      content_applying();
      $customer.addClass('viewing');
      set_show_box_position();
    }
    else {
      $show_box = $('<div id="customer_info"><h3></h3><div class="customer_intro"></div><div class="customer_brief"><h4>At a glance:</h4><p class="industry">Industry:<br /><span></span></p><p class="size">Size:<br /><span></span></p><p class="usecase">Use cases:<br /><span></span></p></div></div>').appendTo($customer.parents('.shadow-top'));
      content_applying();
      $customer.addClass('viewing');
      set_show_box_position();
      $show_box.slideDown(300, function() {
        var new_height = $show_box.offset().top + $show_box.outerHeight();
        if ($('body').height() < new_height) {
          $('body').height(new_height);
        }
   
      });
    }

    $('#customer_info').unbind('click').bind('click',function(e){
      e.stopPropagation();
    });

    /* Applying content */
    function content_applying() {
      if ($('#customer_info').length) {
        var data_industry = $customer.attr('data-industry'),
            data_featured = $customer.attr('data-featured'),
            data_usecase = $customer.attr('data-usecase'),
            data_size     = $customer.attr('data-size'),
            data_url      = $customer.attr('data-url');

        //Information from client side
        $show_box.find('p.industry span').html(data_industry);
        $show_box.find('p.usecase span').html(data_usecase);
        $show_box.find('p.size span').html(data_size);

        //Information from server side (AJAX) or saved data
        if ($customer.data('custom_info') && $customer.data('custom_info').title.length) {
          var data = $customer.data('custom_info');
          $show_box.find('h3').html(data.title);
          $show_box.find('.customer_intro').html(data.content);
          if (data.link) {
            $show_box.find('.customer_intro').append('<a href="' + data.link.url + '" title="' + data.link.title + '">' + data.link.title + '</a>');
          }
        }
        else {
          $.getJSON(data_url).done(function(data) {
            $show_box.find('h3').html(data.title);
            $show_box.find('.customer_intro').html(data.content);
            if (data.link) {
              $show_box.find('.customer_intro').append('<a href="' + data.link.url + '" title="' + data.link.title + '">' + data.link.title + '</a>');
            }
            $customer.data('custom_info', data);
          });
        }
      }
    }

    $(window).resize(function() {
      if ($show_box) {
        set_show_box_position();
      }
    });

    function set_show_box_position() {
      if ($('body').hasClass('.lt-ie9')) {
        setTimeout(function() {
          var margin = parseInt($customer.css('marginTop'));
          $show_box.css({top: ($customer.position().top + $customer.outerHeight() + margin*3 )});
        },600);
      }
      else {
        var margin = parseInt($customer.css('marginTop'));
        $show_box.css({top: ($customer.position().top + $customer.outerHeight() + margin*3 )});
      }
    }
  });   
   

  /**
   * Dialog Box for customers
   */

  var customer_list = new Object({
        0   : []
      }),
      featured_list = new Object({
        'Featured'   : []
      }),
      industry_list = new Object(),
      usecase_list = new Object(),
      size_list     = new Object();

  /** Data preparing **/
  $('.customers li').each(function() {
    var customer = {
      data_featured    : $(this).attr('data-featured'),
      data_industry    : $(this).attr('data-industry'),
      data_usecase    : $(this).attr('data-usecase'),
      data_size        : $(this).attr('data-size'),
      data_url        : $(this).attr('data-url'),
      content          : $(this).html()
    };

    //To "View All" List
    customer_list[0].push(customer);

    //To Features List
    if (customer.data_featured == 'featured') {
      featured_list['Featured'].push(customer);
    }

    //To Industry List
    if (!(customer.data_industry in industry_list)) {
      industry_list[customer.data_industry] = new Array();
    }
    industry_list[customer.data_industry].push(customer);

    //To Use Case List
    if (!(customer.data_usecase in usecase_list)) {
      usecase_list[customer.data_usecase] = new Array();
    }
    usecase_list[customer.data_usecase].push(customer);

    //To Size List
    if (!(customer.data_size in size_list)) {
      size_list[customer.data_size] = new Array();
    }
    size_list[customer.data_size].push(customer);
  });
  $('.customers').data('customers', {
    customer_list : customer_list,
    featured_list : featured_list,
    industry_list : industry_list,
    usecase_list : usecase_list,
    size_list     : size_list
  });
  /** End Data Preparing **/

  //Hovering
  $('.tab-controls').hover(function() {
    $(this).removeAttr('style');
  });
  //Clicking
  $('.tab-controls').on('click', 'a', function(e) {
    e.preventDefault();
    //Turn off dropdown list on 320
    if($('body').width() < 720) {
      if (($('html').hasClass('touch') && $(this).closest('.tab-controls').hasClass('hovered')) || $('html').hasClass('no-touch')) {
        $(this).closest('.tab-controls').css({
          overflow : 'hidden',
          height   : 0
        });   
      }
    }

    //Turn off showing box if isOpenning
    if ($('#customer_info').length) {
      $('#customer_info').hide(300, function() {
        $(this).remove();
      });
      $('.customers li.viewing').removeClass('viewing');
    }

    //Change style of Filter Handle
    $('.tab-controls a').removeClass('active');
    $(this).addClass('active');//.siblings(':not(this)').removeClass('active');

    //$('.tab-controls a').removeClass('active');

    var customers = $('.customers').data('customers'),
        current_list = customers[$(this).attr('data-filter') + '_list'];

    //Data Generate
    var new_data = '';
    for ( var key in current_list) {
      if (isNaN(key)) {
        new_data += '<h3>' + key + '</h3>';
      }
      new_data += '<ul>';
      $.each(current_list[key], function(index, customer) {
        new_data += '<li data-industry="' + customer.data_industry + '" data-featured="' + customer.data_featured + '" data-usecase="' + customer.data_usecase + '" data-size="' + customer.data_size + '" data-url="' + customer.data_url + '">' + customer.content + '</li>';
      });
      new_data += '</ul>';
    }
    $('.customers').html(new_data);
  });
});