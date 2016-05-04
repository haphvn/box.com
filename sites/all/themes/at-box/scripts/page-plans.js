jQuery(document).ready(function($) {
  // Google Analytics
  var pricingMapping = [];
  var blockActionAndLabel = [
     ["Elite", "Contact Us"],
     ["Enterprise", "Start Free Trial"],
     ["Essential", "Sign Up"],
     ["Starter", "Sign Up"]
   ];
  jQuery("#main-content .plans_container tr:eq(0) td.plan").each(function(i){
    pricingMapping.push({
      event: "click",
      trackingType:"_trackEvent",
      category: "Pricing",
      action: blockActionAndLabel[i][0],
      label: blockActionAndLabel[i][1],
      selector: "#main-content .plans_container tr:eq(0) td.plan:eq("+i+") a.btnBlue"
    });
  });
  GA_Tracking.initTracking(pricingMapping);
/*
  COMMENTED OUT FOR FLAT DRUPAL PAGE
*/


  function initLinks() {
    $('.group, .group_link.all').click(function(e) {
      e.preventDefault();
      if ($(this).parents('.plans').hasClass('v978')) {
        var target = $(this).next();
        if ($(this).hasClass('all')) {
          target = $('tr.list');
          if ($(this).hasClass('expanded')) {
            $('tr.group').removeClass('expanded');
          } else {
            $('tr.group').addClass('expanded');
          }
        }
        if ($(this).hasClass('expanded')) {
          $(this).removeClass('expanded');
          $(target).hide();
        } else {
          $(this).addClass('expanded');
          $(target).show();
        }
      }
      if ($(this).parents('.plans').hasClass('v320')) {
        if ($(this).hasClass('expanded')) {
          $(this).removeClass('expanded');
          $('ul', this).hide();
        } else {
          $(this).addClass('expanded');
          $('ul', this).show();
        }
      }
    });
    $('td.plan').hover(function(){
      $('td.plan').css('background-color','transparent');
      var col = $(this).index() + 1;
      $('.plans_container td:nth-child('+col+')').css('background-color','#f2fbfe');
    }, function(){
      var col = $(this).index() + 1;
      $('.plans_container td:nth-child('+col+')').css('background-color','transparent');
    });
    leadgenPageController($);
    var rec = $('td.recommended').index() + 1;
    $('.plans_container td:nth-child('+rec+')').css('background-color','#f2fbfe');
    $('.plans_container').mouseleave(function(){
      $('.plans_container td:nth-child('+rec+')').css('background-color','#f2fbfe');
    });
    $('.plans_container, .basic_plan').fadeIn();
  }


/*
  // build groups
  $.getJSON('/sites/all/themes/at-box/data/mapping.json', function(data) {
    var url = window.location.pathname.split("/");
    var lang = 'en_US',
        groups = '',
        count = 1,
        stripe = '';
    // get language from url
    if ( url[1].indexOf("_") !== -1 ) {
      lang = url[1]
    }
    // loop through groups and build table structure
    $.each(data.feature_groups[lang], function(i, obj) {
      if (count%2 == 0) {
        stripe = 'stripe ';
      } else {
        stripe = '';
      }
      // build desktop and tablet
      var html = '';
      html += '<tr class="'+stripe+'group '+i+'"><td>';
      html += '<a class="group_link" href="javascript:void(0);" title="'+obj.name+'">'+obj.name+'</a>';
      html += '</td></tr>';
      html += '<tr class="'+stripe+'list '+i+'"><td><ul>';
      html += '</ul></td></tr>';
      $('.v978 .plans_container tbody').append(html);
      
      // build groups for mobile
      groups += '<div class="group '+i+'">';
      groups += '<a class="group_link" href="javascript:void(0);" title="'+obj.name+'">'+obj.name+'</a>';
      groups += '<ul>';
      
      // get features within groups and add to list
      $.each(obj, function(key, value) {
        if (key !== 'name') {
          $('.v978 .plans_container tbody tr.list.'+i+' ul').append('<li>'+value+'</li>');
          groups += '<li class="'+key+'">'+value+'</li>';
        }
      });
      
      groups += '</ul></div>';
      count++;
    });
    buildPlans(data,lang,groups);
  });
*/
  
/*
  function populateDescriptions(data,lang){
    var tooltip = '<a href="javascript:void(0);" title="" class="tooltip"><span></span></a>';
    $.each(data[lang], function(i, obj) {
      var id = 'plan-'+obj.id;
      $.each(obj, function(key, feature) {
        if (key === 'description') {
          $('.'+id+' .description').append(feature);
        }
        if (key === 'info_storage') {
          $('.'+id+' .storage').append(tooltip);
          if (feature.title) $('.'+id+' .storage .tooltip span').append('<p class="title">'+feature.title+'</p>');
          $('.'+id+' .storage .tooltip span').append('<p class="info">'+feature.info+'</p>');
        }
        if (key === 'info_filesize') {
          $('.'+id+' .file_size').append(tooltip);
          if (feature.title) $('.'+id+' .file_size .tooltip span').append('<p class="title">'+feature.title+'</p>');
          $('.'+id+' .file_size .tooltip span').append('<p class="info">'+feature.info+'</p>');
        }
        $('.'+id+' li.'+key+' span').append(feature);
        //$('.v320'+id+' li.'+key+' span').append(feature);
      });
    });
  }
*/
  
/*
  function checkGroups(id) {
    // loop through each plan cell
    $('tr.list td.'+id+', .v320 .group').each(function(){
      var target;
      if ($(this).parents('.plans').hasClass('v978')) {
        target = $(this).parent().prev();
        target = $('td.'+id, target);
      } else {
        target = $(this);
      }
      var empty = true,
          partial = false;
      // loop though all list items to determine whether group is full, partial or empty
      $('li', this).each(function(){
        if ($(this).hasClass('checked')) {
          empty = false;
        } else {
          partial = true;
        }
      });
      if (empty === false && partial === false) {
        $(target).addClass('checked_full');
      } else if (empty === false && partial === true) {
        $(target).addClass('checked_part');
      }
    });
  }
*/
  
/*
  function populateFeatures(id,features) {
    $.each(features, function(i, obj) {          
      $('td.'+id+' li.'+obj).addClass('checked');
      $('.v320 .plans_container .'+id+' li.'+obj).addClass('checked');
    });
    // hardwire features for elite plan
    if (id === 'plan-100') {
      $('.'+id+' li.ad_sso_integrations, .'+id+' li.box_api').addClass('checked');
      $('.training_support .'+id+' li').addClass('checked');
    }
    checkGroups(id);
  }
*/
  
/*
  function buildPlans(map,lang,groups) {
    $.getJSON('/sites/all/themes/at-box/data/plans_cibo.json', function(data) {
      var version = 0,
          currency = "$",
          plans = data;
        
      $('.plans_container').addClass(lang)
          
      // build plan columns
      $.each(plans, function(i, obj) {
        $.each(obj, function(key, plan) {
          plan = plan[lang];
          var html = '';
          
          // update currency symbol based on plan value
          if (plan.currency === "USD") {
            currency = "$"
          }
          if (plan.currency === "GBP") {
            currency = "&pound;"
          }
          if (plan.currency === "EUR") {
            currency = "&euro;"
          }
          
          // convert MB to GB if necessary
          var file_size;
          if (plan.file_size_limit >= 1024) {
            file_size = (plan.file_size_limit/1024)+' GB';
          } else {
            file_size = plan.file_size_limit+' MB';
          }
          
          var id = 'plan-'+plan.id;
          
          html = '';
          html += '<li><a href="#'+id+'" title="'+id+'">'+plan.name+'</a></li>';
          $('.v320_menu').append(html);
          
          
          // populate free plan data then build other plans
          if (plan.monthly_price === 0) {
            $('.basic_plan').attr('id',id);
            $('.basic_plan .user strong').html(plan.maximum_number_of_users);
            $('.basic_plan .storage strong').html(plan.maximum_storage_amount+' GB');
            $('.basic_plan .file_size strong').html(file_size);
          } else {            
            // build desktop version / plan titles
            html = '';
            $('.v978 .plans_container thead tr').append('<td class="plan '+id+'"></td>');
            html += '<div>';
            html += '<div class="plan-icon '+plan.type+'"></div>';
            html += '<h2>'+plan.name+'</h2>';
            var btn_text = 'Sign Up';
            var btn_popup = '';
            if (plan.monthly_price < 0) {
              btn_text = 'Contact Us';
              btn_popup = ' form-popup';
            }
            if (plan.trial_days > 0) {
              btn_text = 'Start Free Trial';
              html += '<div class="trial">Free 14-Day Trial</div>';
            } else {
              html += '<div class="trial">&nbsp;</div>';
            }
            html += '<a href="javascript:void(0);" title="'+btn_text+'" class="btnBlue'+btn_popup+'">'+btn_text+'</a>';
            html += '<p class="description"></p>';
            html += '</div>';
            $('.v978 .plans_container thead td.'+id).append(html);
            
            // build mobile containers
            var mobile = '';
            mobile += '<div class="clearfix bg-gray '+id+'" id="'+id+'">';
            mobile += '<div class="shadow-top">';
            mobile += '<div class="plan_info">';
            mobile += '<div class="plan-icon '+plan.type+'"></div>';
            mobile += '<div class="plan_name">';
            mobile += '<h2>'+plan.name+'</h2>';
            if (plan.trial_days > 0) {
              btn_text = 'Start Free Trial';
              mobile += '<div class="trial">Free 14-Day Trial</div>';
            }
            mobile += '<a href="javascript:void(0);" title="'+btn_text+'" class="btnBlue">'+btn_text+'</a>';
            if (plan.monthly_price < 0) {
              mobile += '<p class="call">or call<br><span>1.877.729.4289</span></p>';
            }
            mobile += '<p class="description"></p>';
            mobile += '</div>';
            mobile += '<div class="plan_details"></div>';
            mobile += '</div>';
            mobile += groups;
            mobile += '<a href="#main-content" title="Back to top" class="link_top">Back to top</a>';
            mobile += '</div></div>';
            $('.v320 .plans_container').append(mobile);
            
            if (plan.name === 'Essential') {
              $('.v978 .plans_container thead td.'+id).addClass('recommended');
              $('.v320 #'+id).addClass('recommended');
            }
            
            // build plan info
            $('.v978 .plans_container tbody tr.plan_info').append('<td class="plan '+id+'"></td>');
            html = '';
            // pricing
            if (plan.monthly_price > 0) {
              html += '<p class="price nowrap"><strong>'+currency+plan.monthly_price+'</strong> / user / month</p>';
            } else {
              html += '<p class="price nowrap">Call for pricing</p>';
            }
            // users
            if (plan.maximum_number_of_users > 0) {
              if (plan.maximum_number_of_users === 1) {
                html += '<p><strong>'+plan.maximum_number_of_users+'</strong> user</p>';
              } else {
                html += '<p><strong>'+plan.minimum_number_of_users+' - '+plan.maximum_number_of_users+'</strong> users</p>';
              }
            } else {
              html += '<p><strong>Unlimited</strong> users</p>';
            }
            // storage
            if (plan.maximum_storage_amount > 0) {
              html += '<p class="storage nowrap"><strong>'+plan.maximum_storage_amount+' GB</strong> storage</p>';
            } else {
              html += '<p class="storage nowrap"><strong>Unlimited</strong> storage</p>';
            }
            // file size limit
            html += '<p class="file_size nowrap"><strong>';
            if (plan.file_size_limit > 0) {
              html += file_size;
            } else {
              html += 'Unlimited';
            }
            html += '</strong> file size limit</p>';
            
            $('.v978 .plans_container tr.plan_info td.'+id).append(html);
            $('.v320 .plans_container .'+id+' .plan_details').append(html);
            
            // build desktop table cells and list tags for features list
            $.each(map.feature_groups[lang], function(key, value) {
              $('.v978 .plans_container tbody tr.group.'+key).append('<td class="plan '+id+'"></td>');
              $('.v978 .plans_container tbody tr.list.'+key).append('<td class="plan '+id+'"><ul class="groups"></ul></td>');
              $.each(value, function(f, feature) {
                if (f !== 'name'){
                  $('tr.'+key+' td.'+id+' ul').append('<li class="'+f+'"><span></span></li>'); 
                }
              });
            });
            populateFeatures(id,plan.features);
          }
        });
      });
      populateDescriptions(map.feature_descriptions,lang);
      initLinks();
    });
  }
*/

  // fire initlinks function for non-json version
  initLinks();
  
});