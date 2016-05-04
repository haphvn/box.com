<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-09
 */
/**
 * get nid of merchant base on user_id
 * @param $user_id
 */
function _be_get_careers_by_region($term_key = '', $lang_code) 
{
  $query = db_select('node', 'n');
  $query->join('field_data_field_region', 'r', 'r.entity_id = n.nid');
  $query->condition('n.type', BUNDLE_PAGE_CAREERS);
  $query->condition('n.language', $lang_code);
  $query->condition('r.field_region_value', $term_key);
  $query->orderBy('n.changed', 'DESC');
  $result = $query->fields('n')->execute()->fetchAll();
  if(!empty($result)){
    return current($result);
  }
  return FALSE;
}

/**
 * get box apps by platform
 * @param $box_apps
 * @param $plaform
 * @return array
 */
function _be_get_box_apps_by_platform($box_apps, $plaform)
{
  $arr_apps = array();
  foreach ($box_apps as $box_app) {
    $apps = array();
    $field_platform = $box_app['platform']->field_key[LANGUAGE_NONE][0]['value'];
    if ($field_platform == $plaform) {
      $apps['platform']    = $box_app['platform'];
      $apps['title']       = $box_app['title'];
      $apps['description'] = $box_app['description'];
      $apps['download']    = $box_app['download'];
      $apps['images']      = $box_app['images'];
      $arr_apps[] = $apps;
    }
  }
  return $arr_apps;
}

/**
 * 
 * @param string $device_key
 * @param string $language
 * @return mixed|boolean
 */
function _be_load_device_by_key($device_key)
{
  $query = new EntityFieldQuery();
  $query->entityCondition('entity_type', 'taxonomy_term')
    ->entityCondition('bundle', 'devices')
    ->fieldCondition('field_key', 'value', $device_key)
    ->range(0, 1);
  
  $device_term = $query->execute();
  
  if (isset($device_term['taxonomy_term']) && count($device_term['taxonomy_term'])) {
    return key($device_term['taxonomy_term']);
  }
  
  return false;
}

/**
 * Load apps template id
 * @param int $device_id
 * @param string $device_group
 * @param string $language
 */
function _be_load_apps_template($device_id, $device_group, $language = LANGUAGE_NONE)
{
  $query = new EntityFieldQuery();
  $query->entityCondition('entity_type', 'node')
    ->entityCondition('bundle', 'page_apps_'.$device_group)
    ->propertyCondition('language', $language)
    ->fieldCondition('field_apps_on_devices', 'tid', $device_id)
    ->range(0, 1);
  
  $apps_tmpl = $query->execute();
  if (isset($apps_tmpl['node']) && count($apps_tmpl['node'])) {
    return key($apps_tmpl['node']);
  }
  
  return false;
}

/**
 * Load apps template ids
 * @param array $device_ids
 * @param string $device_group
 * @param string $language
 */
function _be_load_apps_template_multiple($device_ids, $language = LANGUAGE_NONE)
{
  $query = new EntityFieldQuery();
  $query->entityCondition('entity_type', 'node')
    ->entityCondition(
      'bundle', 
      array(BUNDLE_PAGE_APPS_DESKTOP, BUNDLE_PAGE_APPS_TABLET, BUNDLE_PAGE_APPS_MOBILE), 
      'IN'
    )
    ->propertyCondition('language', $language)
    ->fieldCondition('field_apps_on_devices', 'tid', $device_ids, 'IN')
  ;

  $apps_tmpls = $query->execute();
  if (isset($apps_tmpls['node']) && count($apps_tmpls['node'])) {
    return array_keys($apps_tmpls['node']);
  }

  return false;
}

/**
 * 
 * @param unknown $curr_device
 * @return mixed|boolean
 */
function _be_load_devices_by_group($curr_groups, $operator = '=')
{
  if (!is_array($curr_groups)) {
    $curr_groups = array($curr_groups);
  }
  
  $operator_map = array('<>' => 'NOT IN', '=' => 'IN');
  $operator = isset($operator_map[$operator]) ? $operator_map[$operator] : 'IN';
  
  $query = new EntityFieldQuery();
  $query->entityCondition('entity_type', 'taxonomy_term')
    ->entityCondition('bundle', 'devices')
    ->fieldCondition('field_device_group', 'value', $curr_groups, $operator);
  
  $other_devices = $query->execute();
  if (isset($other_devices['taxonomy_term']) && count($other_devices['taxonomy_term'])) {
    return array_keys($other_devices['taxonomy_term']);
  }
  
  return false;
}

/**
 * Load apps ids by devices
 * @param array $device_ids
 * @param string $language
 */
function _be_load_apps_by_device($device_ids, $language = LANGUAGE_NONE)
{
  $query = new EntityFieldQuery();
  $query->entityCondition('entity_type', 'node')
  ->entityCondition('bundle', 'apps')
  ->propertyCondition('language', $language)
  ->fieldCondition('field_apps_on_devices', 'tid', $device_ids, 'IN')
  ;

  $apps = $query->execute();
  if (isset($apps['node']) && count($apps['node'])) {
    return array_keys($apps['node']);
  }

  return false;
}

/**
 * Load apps ids by devices
 * @param array $device_ids
 * @param string $language
 */
function _be_get_resource_page($tid, $language = LANGUAGE_NONE)
{
  $query = new EntityFieldQuery();
  $query->entityCondition('entity_type', 'node')
  ->entityCondition('bundle', 'page_resource')
  ->propertyCondition('language', $language)
  ->fieldCondition('field_resource_category', 'tid', $tid)
  ;

  $resource = $query->execute();
  if (isset($resource['node']) && count($resource['node'])) {
    return key($resource['node']);
  }

  return false;
}