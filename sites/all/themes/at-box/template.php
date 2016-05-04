<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
/**
 * @file
 * Process theme data.
 *
 * Use this file to run your theme specific implimentations of theme functions,
 * such preprocess, process, alters, and theme function overrides.
 *
 * Preprocess and process functions are used to modify or create variables for
 * templates and theme functions. They are a common theming tool in Drupal, often
 * used as an alternative to directly editing or adding code to templates. Its
 * worth spending some time to learn more about these functions - they are a
 * powerful way to easily modify the output of any template variable.
 *
 * Preprocess and Process Functions SEE: http://drupal.org/node/254940#variables-processor
 * 1. Rename each function and instance of "at_box" to match
 *
 *    name will be "footheme_preprocess_hook". Tip - you can search/replace
 *    on "at_box".
 * 2. Uncomment the required function to use.
 */

/**
 * Preprocess variables for the html template.
 */
function at_box_preprocess_html(&$vars) 
{
}

/**
 * Process variables for the html template.
 */
/* -- Delete this line if you want to use this function
function at_box_process_html(&$vars) {
}
// */

/**
 * Override or insert variables for the page templates.
 */
function at_box_preprocess_page(&$vars) 
{
  global $language_url;
  $language_list = language_list();
  
  if (!empty($vars['node'])) {
    if ($vars['node']->type == BUNDLE_PAGE_BLANK) {
      $vars['theme_hook_suggestions'][]='page__' . $vars['node']->type;
      _at_box_preprocess_assets('node', $vars['node']->type, FALSE);
    } else {
      _at_box_preprocess_assets('node', $vars['node']->type);
    }
  }
  
  if (arg(0) == 'taxonomy' && arg(1) == 'term' && is_numeric(arg(2))){
    $vocabulary_resources = taxonomy_vocabulary_machine_name_load('resources');
    $term = taxonomy_term_load(arg(2));
    if (!empty($vocabulary_resources->vid) && $vocabulary_resources->vid == $term->vid){
      $vars['theme_hook_suggestions'][] = 'page__resources';
      $vars['term'] = $term;
      
      _at_box_preprocess_assets('taxonomy', 'resources');
    }
    
    /*
     * Add urls of translation of a taxonomy term
     */
    $translation_urls = array();
    foreach ($language_list as $language_key => $language) {
      $translation = i18n_taxonomy_term_get_translation($term, $language_key);
      if (!$translation) {
        continue;
      }
      $path = drupal_is_front_page() ? '<front>' : 'taxonomy/term/'.$translation->tid;
      $translation_urls[$language_key] = url($path,
          array('absolute' => true,  'language' => $language));
    }
    drupal_add_js(array('translation_urls' => $translation_urls), 'setting');
  }
  
  $home_urls = array();
  $language_mapping = array();
  foreach ($language_list as $language_key => $language) {
    $home_urls[$language_key] = url('<front>', array('absolute' => true,  'language' => $language));
    $language_mapping[$language_key] = $language->prefix;
  }

  drupal_add_js(array('home_urls' => $home_urls), 'setting');
  drupal_add_js(array('curr_language' => $language_url->language), 'setting');
  drupal_add_js(array('language_mapping' => $language_mapping), 'setting');
}


/**
 * Override or insert variables into the node templates.
 */

function at_box_preprocess_node(&$vars) 
{
  $node = $vars['elements']['#node'];
  $wrapper = entity_metadata_wrapper('node', $node);
  
  if ($node->type == BUNDLE_PAGE_SOLUTION_MOBILE) {
    module_load_include('php', 'be', 'libraries/mobile_detect');
  }
  
  $language_list = language_list();
  $translation_urls = array();
  $translation_set = translation_node_get_translations($node->tnid);
  
  if (!empty($translation_set)) {
    foreach ($translation_set as $language_key => $translation) {
      if (in_array($node->type, 
          array(BUNDLE_PAGE_APPS_DESKTOP, BUNDLE_PAGE_APPS_MOBILE, BUNDLE_PAGE_APPS_TABLET))) {
        $path = drupal_is_front_page() ? '<front>' : 'box-for-devices';
      } else {
        $path = drupal_is_front_page() ? '<front>' : 'node/'.$translation->nid;
      }
      $translation_urls[$language_key] = url($path,
          array('absolute' => true,  'language' => $language_list[$language_key]));
    }
    drupal_add_js(array('translation_urls' => $translation_urls), 'setting');
  }
}

/**
 * Override or insert variables into the comment templates.
 */
/* -- Delete this line if you want to use these functions
function at_box_preprocess_comment(&$vars) {
}
function at_box_process_comment(&$vars) {
}
// */

/**
 * Override or insert variables into the block templates.
 */
/* -- Delete this line if you want to use these functions
function at_box_preprocess_block(&$vars) {
}
function at_box_process_block(&$vars) {
}
// */

/**
 * Implements hook_css_alter().
 * @TODO: Once http://drupal.org/node/901062 is resolved, determine whether
 * this can be implemented in the .info file instead.
 *
 * Omitted:
 * - color.css
 * - contextual.css
 * - dashboard.css
 * - field_ui.css
 * - image.css
 * - locale.css
 * - shortcut.css
 * - simpletest.css
 * - toolbar.css
 */
function at_box_css_alter(&$css) {
  $exclude = array('misc/vertical-tabs.css' => FALSE,
    'modules/aggregator/aggregator.css' => FALSE,
    'modules/block/block.css' => FALSE,
    'modules/book/book.css' => FALSE,
    'modules/comment/comment.css' => FALSE,
    'modules/dblog/dblog.css' => FALSE,
    'modules/file/file.css' => FALSE,
    'modules/filter/filter.css' => FALSE,
    'modules/forum/forum.css' => FALSE,
    'modules/help/help.css' => FALSE, 'modules/menu/menu.css' => FALSE,
    'modules/node/node.css' => FALSE,
    'modules/openid/openid.css' => FALSE,
    'modules/poll/poll.css' => FALSE,
    'modules/profile/profile.css' => FALSE,
    'modules/search/search.css' => FALSE,
    'modules/statistics/statistics.css' => FALSE,
    'modules/syslog/syslog.css' => FALSE,
    'modules/system/admin.css' => FALSE,
    'modules/system/maintenance.css' => FALSE,
    'modules/system/system.css' => FALSE,
    'modules/system/system.admin.css' => FALSE,
    'modules/system/system.base.css' => FALSE,
    'modules/system/system.maintenance.css' => FALSE,
    'modules/system/system.menus.css' => FALSE,
    'modules/system/system.messages.css' => FALSE,
    'modules/system/system.theme.css' => FALSE,
    'modules/taxonomy/taxonomy.css' => FALSE,
    'modules/tracker/tracker.css' => FALSE,
    'modules/update/update.css' => FALSE,
    'modules/user/user.css' => FALSE,
    'sites/all/modules/contrib/others/om_maximenu/css/om_maximenu.css' => FALSE,
    'sites/all/modules/contrib/others/om_maximenu/skin/bubble/bubble.css' => FALSE,
    /*'profiles/spark/modules/contrib/responsive_preview/css/responsive-preview.base.css' => FALSE,
    'profiles/spark/modules/contrib/responsive_preview/css/responsive-preview.theme.css' => FALSE,
    'profiles/spark/modules/contrib/responsive_preview/css/responsive-preview.icons.css' => FALSE,
    'profiles/spark/modules/contrib/navbar/css/navbar.menu.css' => FALSE,
    'profiles/spark/modules/contrib/navbar/css/navbar-overlay.css' => FALSE,
    'profiles/spark/modules/contrib/navbar/css/navbar.base.css' => FALSE,
    'profiles/spark/modules/contrib/navbar/css/navbar.theme.css' => FALSE,
    'profiles/spark/modules/contrib/navbar/css/navbar.icons.css' => FALSE,*/
    //'' => FALSE,
  );
  $css = array_diff_key($css, $exclude);
  //   $css['sites/all/themes/at-box/css/box-devices.css']['group'] = 100;
}

// CUSTOM CODE
// Customize menu ul
function at_box_menu_tree__menu_footer_menu($vars) 
{
  return '<ul class="footer-nav-ul">' . $vars['tree'] . '</ul>';
}

// Customize menu li
function at_box_menu_link__menu_footer_menu($vars) 
{
  $element = $vars['element'];
  $sub_menu = '';

  if ($element['#below']) {
    $sub_menu = drupal_render($element['#below']);
  }
  $output = l($element['#title'], $element['#href'],
    $element['#localized_options']);
  return '<li>' . $output . $sub_menu . "</li>\n";
}

// PERSONAL MENU
// Customize menu ul
function at_box_menu_tree__menu_personal_menu($vars) 
{
  return '<ul>' . $vars['tree'] . '</ul>';
}

// Customize menu li
function at_box_menu_link__menu_personal_menu($vars) 
{
  $element = $vars['element'];
  $sub_menu = '';

  if ($element['#below']) {
    $sub_menu = drupal_render($element['#below']);
  }

  if (count($element['#attributes']['class']) > 0) {
    if (in_array('first', $element['#attributes']['class'])) {
      $element['#localized_options']['attributes']['class'][] = 'first-caption';
    }
  }

  $output = l($element['#title'], $element['#href'],
    $element['#localized_options']);
  return '<li>' . $output . $sub_menu . "</li>\n";
}

// BUSINESS MENU
// Customize menu ul
function at_box_menu_tree__menu_business_menu($vars) 
{
  return '<ul>' . $vars['tree'] . '</ul>';
}

// Customize menu li
function at_box_menu_link__menu_business_menu($vars) 
{
  $element = $vars['element'];
  $sub_menu = '';

  if ($element['#below']) {
    $sub_menu = drupal_render($element['#below']);
  }

  if (count($element['#attributes']['class']) > 0) {
    if (in_array('first', $element['#attributes']['class'])) {
      $element['#localized_options']['attributes']['class'][] = 'first-caption';
    }
  }

  $output = l($element['#title'], $element['#href'],
    $element['#localized_options']);
  return '<li>' . $output . $sub_menu . "</li>\n";
}

// ENTERPRISE MENU
// Customize menu ul
function at_box_menu_tree__menu_enterprise_menu($vars) 
{
  return '<ul>' . $vars['tree'] . '</ul>';
}

// Customize menu li
function at_box_menu_link__menu_enterprise_menu($vars) 
{
  $element = $vars['element'];
  $sub_menu = '';

  if ($element['#below']) {
    $sub_menu = drupal_render($element['#below']);
  }

  if (count($element['#attributes']['class']) > 0) {
    if (in_array('first', $element['#attributes']['class'])) {
      $element['#localized_options']['attributes']['class'][] = 'first-caption';
    }
  }

  $output = l($element['#title'], $element['#href'],
    $element['#localized_options']);
  return '<li>' . $output . $sub_menu . "</li>\n";
}

// CUSTOMER MENU
// Customize menu ul
function at_box_menu_tree__menu_customer_menu($vars) 
{
  return '<ul>' . $vars['tree'] . '</ul>';
}

// Customize menu li
function at_box_menu_link__menu_customer_menu($vars) 
{
  $element = $vars['element'];
  $sub_menu = '';

  if ($element['#below']) {
    $sub_menu = drupal_render($element['#below']);
  }

  if (count($element['#attributes']['class']) > 0) {
    if (in_array('first', $element['#attributes']['class'])) {
      $element['#localized_options']['attributes']['class'][] = 'first-caption';
    }
  }

  $output = l($element['#title'], $element['#href'],
    $element['#localized_options']);
  return '<li>' . $output . $sub_menu . "</li>\n";
}

// PLATFORM MENU
// Customize menu ul
function at_box_menu_tree__menu_platform_menu($vars) 
{
  return '<ul>' . $vars['tree'] . '</ul>';
}

// Customize menu li
function at_box_menu_link__menu_platform_menu($vars) 
{
  $element = $vars['element'];
  $sub_menu = '';

  if ($element['#below']) {
    $sub_menu = drupal_render($element['#below']);
  }

  if (count($element['#attributes']['class']) > 0) {
    if (in_array('first', $element['#attributes']['class'])) {
      $element['#localized_options']['attributes']['class'][] = 'first-caption';
    }
  }

  $output = l($element['#title'], $element['#href'],
    $element['#localized_options']);
  return '<li>' . $output . $sub_menu . "</li>\n";
}
// MOBILE MAIN MENU
// Customize menu ul
/*
function at_box_menu_tree__menu_mobile_main_menu($vars) {
  return '<ul id="main-dropdown-nav">' . $vars['tree'] . '<li class="tablet-menu-item"><a href="#" id="tablet-topmenu-language"><span class="ico-language">Language</span></a></li>' . '</ul>';
}
// Customize menu li
function at_box_menu_link__menu_mobile_main_menu($vars) {
  $element = $vars['element'];
  $weights = $element['#original_link']['weight'];
  $sub_menu = '';

  if ($element['#below']) {
    $sub_menu = drupal_render($element['#below']);
  }

  if (count($element['#attributes']['class']) > 0) {
    //$element['#localized_options']['attributes']['class'][] = 'mobile-menu-item';
    if (in_array('first', $element['#attributes']['class'])) {
      $element['#localized_options']['attributes']['class'][] = 'first-caption';
    }
  }

  $output = l($element['#title'], $element['#href'],
    $element['#localized_options']);

  if ($weights == -50 | $weights == -49 | $weights == -48 | $weights == -47) {
    return '<li class="mobile-menu-item">'. $output . $sub_menu . "</li>\n";
  }
  elseif ($weights == -46) {
    return '<li class="first-child">'. $output . $sub_menu . "</li>\n";
  }
  elseif ($weights == -45) {
    return '<li class="">'. $output . $sub_menu . "</li>\n";
  }
  elseif ($weights == -44 | $weights == -43) {
    return '<li class="last-row">'. $output . $sub_menu . "</li>\n";
  }
}
*/
/**
 * Process variables for om_maximenu_submenu_links.tpl.php
 *
 */
function at_box_preprocess_om_maximenu_submenu_links(&$vars) 
{
  $disabled = $vars['disabled'];
  $content = $vars['content'];

  // user roles and permissions
  $vars['permission'] = om_maximenu_link_visible($vars['content']['roles']);

  // php on title
  if (isset($content['php_option']) && ($content['php_option'] == 1)) {
    ob_start();
    $content['link_title'] = $content['link_title']();
    //$output = ob_get_contents();
    ob_end_clean();
    //echo function_exists($content['link_title']());
  }

  // span id
  $span_id = (!empty($content['id'])) ? ' id="'
    . om_string_name($content['id']) . '"' : '';

  // span title
  $span_title = (!empty($content['description'])
    && ($content['description_option'] == 'hover')) ? 'title="'
    . check_plain($content['description']) . '"' : '';

  // link content
  $link_option = om_maximenu_link_option($content);

  // a link attributes
  $attributes = om_maximenu_link_attrib($content);

  $mainMenuArray = array('main-menu');
  if (in_array($vars['maximenu_name'], $mainMenuArray)) {
    $attributes['class'] .= ' hover-dropdown';
  }

  // link is disabled when it's on its page
  $uri = trim(request_uri());
  $qpath = $_GET['q'];
  $path_relative = base_path() . $content['path'];

  // Drupal doesn't accept # as valid path on field input
  $options = array();
  $options['query'] = isset($content['path_query']) ? om_path_query($content['path_query']) : '';
  $options['fragment'] = isset($content['path_fragment']) ? $content['path_fragment']  : '';

  // disables link when active
  $disable_active_link = ($disabled) ? (($path_relative != $uri)
    && ($content['path'] != $qpath)) ? 1 : 0 : 1;

  if (!empty($content['path']) && $disable_active_link) {
    $path = ($content['path'] == '<front>') ? '' : $content['path'];
    // there are too many things inside this $link_options which a regular l() can't handle
    //$out .= l($content['link_title'], $content['path'], array('attributes' => $attributes));

    // #BOX48 - 201304261630 - Get translation
    $extraLiClass = '';
    $translated_path = drupal_get_path_alias($path);
    if ($translated_path == $path) {
      if (strpos($path, 'node/') != 0 || strpos($path, 'node/') === false) {
        $languageList = language_list('language');
        $languageCodes = array_keys($languageList);
        $normal_path = '';
        foreach ($languageCodes as $lc) {
          $normal_path = drupal_get_normal_path($translated_path, $lc);
          if (strpos($normal_path, 'node/') === 0) {
            $translated_path = $normal_path;
            break;
          }
        }
      }
      $tmp = explode('/', $translated_path);
      // If the url is node/[nid]
      if (count($tmp) > 1 && $tmp[0] == 'node' && is_numeric($tmp[1]) && empty($tmp[2])) {
        $node_obj = node_load($tmp[1]);
        if ($node_obj) {
          global $language;
          $langCode = $language->language;
          $originalNID = $node_obj->nid;
          $translatedNID = $originalNID;
          $translations = translation_node_get_translations($originalNID);
          if (isset($translations[$langCode])) {
            $translatedNID = $translations[$langCode]->nid;
          }
          $translated_path = drupal_get_path_alias('node/' . $translatedNID);
        }
      }
    }
    $path = $translated_path;

    if (drupal_get_path_alias($_GET['q']) == $path) {
      $attributes['class'] .= ' active';
      $extraLiClass = 'active';
    }
    $vars['extraLiClass'] = $extraLiClass;
    // /#BOX48 - 201304261630

    $vars['om_link'] = '<a ' . drupal_attributes($attributes) . ' href="'
      . url($path, $options) . '">' . $link_option . '</a>';
  } elseif (!empty($options['query']) || !empty($options['fragment'])) {
    // base path is not necessary when path is empty but anchor is not or query,
    $vars['om_link'] = '<a ' . drupal_attributes($attributes) . ' href="'
      . url('', $options) . '">' . $link_option . '</a>';
  } else {
    // title with javascript should have div tag
    $script_link = om_string_name($content['link_title'], FALSE);

    // title contains some block elements
    $link_tag = ((isset($content['php_option'])
      && ($content['php_option'] == 1))
      || ($script_link == 'Script Link')) ? 'div' : 'span';

    // useful when you just want a button for getting the content to show and not actually linking to anything
    $vars['om_link'] = '<' . $link_tag . $span_id . ' class="'
      . $attributes['class'] . '" ' . $span_title . '>'
      . $link_option . '</' . $link_tag . '>';
  }
  $maximenu_name = preg_replace('/-/', '_', $vars['maximenu_name']);
  $vars['theme_hook_suggestions'][] = 'om_maximenu_submenu_links__' . $maximenu_name;
  $vars['theme_hook_suggestions'][] = 'om_maximenu_submenu_links__' . $maximenu_name . '_' . $vars['key'];
  $vars['theme_hook_suggestions'][] = 'om_maximenu_submenu_links__' . om_string_name($content['link_title']);
}


/**
 * Preprocess other devices block on box-for-devices page
 * @param unknown $vars
 */
function at_box_preprocess_apps_other_devices(&$vars)
{
  $other_devices = _be_load_devices_by_group($vars['curr_group'], '<>');
  
  $other_apps_tmpls = _be_load_apps_template_multiple($other_devices, $vars['node_language']);
  $other_apps_tmpls = node_load_multiple($other_apps_tmpls);
  
  $links = array();
  foreach ($other_apps_tmpls as $apps_tmpl) {
    $device = field_get_items('node', $apps_tmpl, 'field_apps_on_devices');
    if (empty($device[0]['tid'])) {
      continue;
    }
    
    $device = taxonomy_term_load($device[0]['tid']);
    $links[] = '<li>'.l($device->name, 'node/'.$apps_tmpl->nid).'</li>';
  }
  $vars['devices_links'] = $links;
}


/**
 * Preprocess more_apps_devices block on box-for-devices page
 * @param $vars
 */
function at_box_preprocess_more_apps_devices(&$vars)
{
  foreach ($vars['apps'] as $app){
    $more_app =  array();
  
    $more_app['thumb']   = $app->field_apps_thumb->value();
    $more_app['title'] = $app->title->value();
    $more_app['short_desc'] = $app->field_apps_short_desc->value();
    
    $vars['more_apps'][] = $more_app;
  }
}

/**
 * Preprocess box_apps_devices block on box-for-devices page
 * @param $vars
 */
function at_box_preprocess_box_apps_devices(&$vars)
{
  foreach ($vars['apps'] as $app){
    $node_app =  array();
    
    $node_app['apps_desc']   = $app->field_apps_desc->value();
    $node_app['apps_images'] = $app->field_apps_images;
    $platform                = $app->field_apps_on_platform;
    
    if (!empty($platform->field_logo)) {
      $node_app['platform_logo'] = $platform->field_logo->value();
    }

    if ($node_app['apps_images']->count()) {
      $slide = array();
      
      foreach ($node_app['apps_images'] as $image) {
        $image_info = $image->value();
        if (isset($image_info['width'])) {
          $slide[] = $image_info['width'];
        }
      }
      
      $node_app['min_width'] = min($slide);
    }
    
    $vars['node_apps'][] = $node_app;
  }
}

/**
 * Utitly function to manage asset of all pages
 * @param string $type
 * @param array $vars
 */
function _at_box_preprocess_assets($type, $identifier, $add_common_assets = true)
{
  if (!file_exists(drupal_get_path('theme', 'at_box').'/assets/'.$type.'.php')) {
    return false;
  }
  $all_assets = require_once drupal_get_path('theme', 'at_box').'/assets/'.$type.'.php';

  if (empty($all_assets[$identifier])) {
    return false;
  }
  $assets = $all_assets[$identifier];

  _at_box_add_assets($assets, $add_common_assets);
}

/**
 * Add assets
 * @param array $assets
 */
function _at_box_add_assets($assets, $add_common_assets = true)
{
  $theme_path = drupal_get_path('theme', 'at_box');
  $js_path = $theme_path.'/scripts';
  $css_path = $theme_path.'/css';
  
  if ($add_common_assets) {
    /*
     * Common css and js
    */
    $common_assets = array(
      'css' => array(
        'colorbox.css', 
        'colorbox-video.css',
        'popup-form-overlay.css'
      ),
      'js' => array(
        'libs/jquery-ui-1.10.2.min.js',
        'libs/waypoints.min.js',
        'libs/waypoints-sticky.min.js',
        'jquery.scrollTo.min.js',
        'sub-nav.js',
        'jquery.colorbox.js',
        'libs/youtube.js',
        'video.js',
        'libs/acrobatdetect.js',
        'popup-form-overlay.js',
        'libs/jquery.cookie.js'
      ),
      'callback' => function() {
        drupal_add_js(
          array(
            'swfObjectLink' => 
                base_path().drupal_get_path('theme', 'at_box').'/scripts/libs/swfobject.js'
          ),
          'setting'
        );
      }
    );
    
    $weight = 10;
    foreach ($common_assets['css'] as $css) {
      drupal_add_css($css_path.'/'.$css, array('weight' => $weight, 'group' => CSS_THEME));
      $weight++;
    }
    
    $weight = 10;
    foreach ($common_assets['js'] as $js) {
      drupal_add_js($js_path.'/'.$js, array('weight' => $weight, 'group' => JS_THEME));
      $weight++;
    }
    
    $common_assets['callback']();
  }
  /*
   * Add assets for each page
   */
  if (isset($assets['css'])) {
    $weight = 100;
    foreach ($assets['css'] as $css) {
      drupal_add_css($css_path.'/'.$css, array('weight' => $weight, 'group' => CSS_THEME));
      $weight++;
    }
  }

  if (isset($assets['js'])) {
    $weight = 100;
    foreach ($assets['js'] as $js) {
      drupal_add_js($js_path.'/'.$js, array('weight' => $weight, 'group' => JS_THEME));
      $weight++;
    }
  }

  if (isset($assets['callback']) && is_callable($assets['callback'])) {
    $assets['callback']();
  }

  drupal_add_css($css_path.'/custom.css', array('weight' => 10000, 'group' => CSS_THEME));
  drupal_add_js($js_path.'/libs/utility.js', array('weight' => 10000, 'group' => JS_THEME));
  drupal_add_js($js_path.'/custom.js', array('weight' => 10000, 'group' => JS_THEME));
}