<?php 
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
$assets = array(
  BUNDLE_PAGE_CAREERS => array(
    'css' => array(
//       'colorbox.css', 
//       'colorbox-video.css', 
      'page-career-share.css', 
      'page-career-us-eu.css'
    ),
    'js' => array(
//       'libs/jquery-ui-1.10.2.min.js',
//       'libs/jquery.jwcustomcontrol.js',
//       'jquery.colorbox.js',
//       'libs/youtube.js',
//       'video.js',
      'jquery.simpletabs.js',
      'page-career.js'
    ),
//     'callback' => function() {
//       drupal_add_js(
//         array(
//           'swfObjectLink' => base_path().drupal_get_path('theme', 'at_box').'/scripts/libs/swfobject.js'
//         ), 
//         'setting'
//       );
//     }
  ),
  BUNDLE_PAGE_CAREERS_CATEGORY => array(
    'css' => array('page-career-share.css', 'page-career-category.css'),
  ),
  BUNDLE_CONTENT_TEMPLATE => array(
    'css' => array(/* 'jquery.bxslider.css',  */'page-content-template.css'),
    'js' => array('customer_slider.js', 'page-content-template.js'),
  ),
  BUNDLE_BOX_FOR_DEVICE => array(
    'css' => array('demo.css'),
  ),
  BUNDLE_BUSINESS_BENEFITS => array(
    'css' => array('demo.css'),
  ),
  BUNDLE_PAGE_CONTACT => array(
    'css' => array(
//       'media-queries.css',
      'page-contact.css'
    ),
    'js' => array(
      'jquery.placeholder.js',
      'jquery.combobox.js',
      'page-contact.js'
    ),
  ),
  BUNDLE_PAGE_VIDEOS => array(
    'css' => array(
//       'colorbox.css', 
//       'colorbox-video.css', 
//       'video.css',
      'page-videos.css'
    ),
    'js' => array(
//       'libs/waypoints.min.js',
//       'libs/waypoints-sticky.min.js',
//       'jquery.scrollTo.min.js',
//       'sub-nav.js',
//       'libs/jquery-ui-1.10.2.min.js',
//       'libs/jquery.jwcustomcontrol.js',
//       'jquery.colorbox.js',
//       'libs/youtube.js',
//       'video.js',
      'page-videos.js'
    ),
//     'callback' => function() {
//       drupal_add_js(
//         array(
//           'swfObjectLink' => base_path().drupal_get_path('theme', 'at_box').'/scripts/libs/swfobject.js'
//         ), 
//         'setting'
//       );
//     }
  ),
  BUNDLE_PAGE_FEATURE => array(
    'css' => array(
//       'colorbox.css', 
//       'colorbox-video.css', 
      'page-feature.css'
    ),
    'js' => array(
//       'libs/jquery-ui-1.10.2.min.js',
//       'libs/jquery.jwcustomcontrol.js',
//       'jquery.colorbox.js',
//       'libs/youtube.js',
//       'video.js',
      'page-feature.js'
    ),
//     'callback' => function() {
//       drupal_add_js(
//         array(
//           'swfObjectLink' => base_path().drupal_get_path('theme', 'at_box').'/scripts/libs/swfobject.js'
//         ), 
//         'setting'
//       );
//     }
  ),
  BUNDLE_PAGE_INDUSTRY_LANDING => array(
    'css' => array('page-industry-landing.css'),
    'js' => array('page-industry-landing.js'),
  ),
  BUNDLE_PAGE_INDUSTRY => array(
    'css' => array(
//       'colorbox.css', 
//       'colorbox-video.css', 
      'page-industry.css'
    ),
    'js' => array(
//       'libs/jquery-ui-1.10.2.min.js',
//       'libs/jquery.jwcustomcontrol.js',
//       'jquery.colorbox.js',
//       'libs/youtube.js',
//       'video.js',
      'page-industry.js'
    ),
//     'callback' => function() {
//       drupal_add_js(
//         array(
//           'swfObjectLink' => base_path().drupal_get_path('theme', 'at_box').'/scripts/libs/swfobject.js'
//         ), 
//         'setting'
//       );
//     }
  ),
  BUNDLE_PAGE_PLANS => array(
    'css' => array(
      'page-plans.css',
//       'colorbox.css'
    ),
    'js' => array(
//       'jquery.colorbox.js',
      'page-plans.js',
//       'page-contact-form-overlay.js'
    ),
  ),
  BUNDLE_PAGE_CUSTOMERS_LANDING => array(
    'css' => array('page-customer-landing.css'),
    'js' => array('page-customer-landing.js'),
  ),
  BUNDLE_PAGE_CUSTOMER_STORY => array(
    'css' => array(
//       'colorbox.css',
//       'colorbox-video.css', 
      'page-customer-story.css'
    ),
    'js' => array(
//       'libs/jquery-ui-1.10.2.min.js',
//       'libs/jquery.jwcustomcontrol.js',
//       'libs/acrobatdetect.js',
//       'jquery.colorbox.js',
//       'libs/youtube.js',
//       'video.js',
      'jquery.simpletabs.js',
      'page-customer-story.js'
    ),
//     'callback' => function() {
//       drupal_add_js(
//         array(
//           'swfObjectLink' => base_path().drupal_get_path('theme', 'at_box').'/scripts/libs/swfobject.js'
//         ), 
//         'setting'
//       );
//     }
  ),
  BUNDLE_PAGE_RESOURCE => array(
    'css' => array(
//       'jquery.bxslider.css', 
      'modules-ads.css', 
      'page-resource.css'
    ),
    'js' => array('page-resource.js'),
  ),
  BUNDLE_PAGE_PARTNERS => array(
    'css' => array('page-partners.css'),
//     'js' => array(
//       'libs/waypoints.min.js',
//       'libs/waypoints-sticky.min.js',
//       'jquery.scrollTo.min.js',
//       'sub-nav.js',
//     )
  ),
  BUNDLE_PAGE_HOME => array(
    'css' => array('modules-ads.css', 'page-content-template.css', 'page-home.css'),
    'js' => array('page-home.js', 'customer_slider.js'),
  ),
  BUNDLE_PAGE_PLATFORM => array(
    'css' => array('page-platform.css'),
    'js' => array(
//       'libs/waypoints.min.js',
//       'libs/waypoints-sticky.min.js',
//       'sub-nav.js',
//       'jquery.scrollTo.min.js',
      /* 'jquery.bxslider.min.js', */ 
      'page-platform.js'),
  ),
  BUNDLE_PAGE_SITEMAP => array(
    'css' => array('page-sitemap.css'),
  ),
  BUNDLE_PAGE_LEADERSHIP => array(
    'css' => array('page-leadership.css'),
    'js' => array('jquery.simpletabs.js', 'page-leadership.js'),
  ),
  BUNDLE_PAGE_SOLUTION_MOBILE => array(
    'css' => array('page-solution-mobile.css'),
    'js' => array(
//       'libs/waypoints.min.js',
//       'libs/waypoints-sticky.min.js',
//       'jquery.scrollTo.min.js',
//       'sub-nav.js',
      'page-solution-mobile.js'
    ),
  ),
  BUNDLE_PAGE_CONTACT_YOU => array(
    'css' => array('page-contact-you.css'),
  ),
  BUNDLE_PAGE_PERSONAL => array(
    'css' => array('page-personal.css'),
    'js' => array('page-personal.js'),
  ),
  BUNDLE_PAGE_RESOURCES => array(
    'css' => array(
//       'video.css', 
      'page-resources.css'
    ),
    'js' => array(
      'jquery.placeholder.js', 
      'page-resources.js'
    ),
  ),
  BUNDLE_PAGE_TCO_CALCULATOR => array(
    'css' => array('modules-ads.css', 'page-tco-calculator.css'),
  ),
  BUNDLE_PAGE_ABOUT_US => array(
    'css' => array(
      'modules-ads.css', 
//       'colorbox.css', 
//       'colorbox-video.css', 
      'page-about-us.css'
    ),
    'js' => array(
      'customer_slider.js',
//       'libs/jquery-ui-1.10.2.min.js',
//       'libs/jquery.jwcustomcontrol.js',
//       'jquery.colorbox.js',
//       'libs/youtube.js',
//       'video.js',
      'page-about-us.js'
    ),
//     'callback' => function() {
//       drupal_add_js(
//         array(
//           'swfObjectLink' => base_path().drupal_get_path('theme', 'at_box').'/scripts/libs/swfobject.js'
//         ), 
//         'setting'
//       );
//     }
  ),
  BUNDLE_PAGE_EVENTS => array(
    'css' => array(
//       'media-queries.css', 
      'modules-ads.css', 
//       'colorbox.css', 
//       'colorbox-video.css', 
      'page-events.css'
    ),
    'js' => array(
//       'libs/jquery-ui-1.10.2.min.js',
//       'libs/jquery.jwcustomcontrol.js',
//       'jquery.colorbox.js',
//       'jquery.scrollTo.min.js',
//       'libs/waypoints.min.js',
//       'libs/waypoints-sticky.min.js',
//       'sub-nav.js',
//       'libs/youtube.js',
//       'video.js',
      'page-events.js'
    )
  ),
  BUNDLE_PAGE_CALENDAR => array(
    'css' => array(
//       'media-queries.css',
//       'colorbox.css',
//       'colorbox-video.css',
      'page-calendar.css'
    ),
    'js' => array(
//       'jquery.scrollTo.min.js',
//       'libs/waypoints.min.js',
//       'libs/waypoints-sticky.min.js',
//       'sub-nav.js',
      'page-calendar.js'
    )
  ),
  BUNDLE_PAGE_SECURITY_CONTROL => array(
    'css' => array('modules-ads.css', 'page-security.css'),
  ),
  BUNDLE_PAGE_BLANK => array(
    'css' => array('page-blank.css', 'popup-form-overlay.css'),
    'js' => array('popup-resize-controller.js', 'jquery.combobox.js', 'jquery.placeholder.js')
  ),
);

$page_apps_assets = array_fill_keys(
  array(BUNDLE_PAGE_APPS_DESKTOP, BUNDLE_PAGE_APPS_TABLET, BUNDLE_PAGE_APPS_MOBILE), 
  array(
    'css' => array('page-box-apps.css'),
    'js' => array('page-box-apps.js'),
  )
);

return $assets + $page_apps_assets;
