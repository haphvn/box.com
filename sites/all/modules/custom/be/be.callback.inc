<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-09
 */
/**
 * download file
 * @param int $fid
 */
function be_files_downloading($fid = 0)
{
  $file = file_load($fid);
  header("Pragma: public");
  header("Expires: 0"); // set expiration time
  header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
  header("Content-Type: application/force-download");
  header("Content-Type: " . $file->filemime);
  header("Content-Disposition: attachment; filename=" . $file->filename);
  header("Content-Transfer-Encoding: binary");
  header("Content-Length: " . $file->filesize);
  readfile(drupal_realpath($file->uri));
  exit;
}

/**
 * be_customer_object
 * @param int $customer_id
 * @return array
 */
function be_customer_object($nid, $customer_id)
{
  $node = node_load($nid);
  $wrapper = entity_metadata_wrapper('node', $node);
  $customers = $wrapper->field_customers_landing->value();
  
  $json = array();
  foreach ($customers as $customer) {
    if ($customer_id == $customer->item_id) {
      $title = $customer->field_title;
      $desc = $customer->field_descriptions;
      $link = $customer->field_link;
      $content = (!empty($desc[LANGUAGE_NONE][0]['value'])) ? $desc[LANGUAGE_NONE][0]['value'] : '';
      $json['title'] = $title[LANGUAGE_NONE][0]['value'];
      $json['content'] = $content;
      if (!empty($link[LANGUAGE_NONE])) {
        $json['link']['title'] = $link[LANGUAGE_NONE][0]['title'];
        $json['link']['url'] = $link[LANGUAGE_NONE][0]['url'];
      }
      break;
    }
  }
  return $json;
}

/**
 * Get events grouped by month
 */
function _be_calendar_by_month($start_date = null, $last = 5)
{
  global $language;
  if (!$start_date) {
    $start_date = time();
  }
  
  $events = array();
  $query = new EntityFieldQuery();
  $query->entityCondition('entity_type', 'node')
    ->propertyCondition('type', 'event')
    ->propertyCondition('status', 1)
    ->propertyCondition('language', $language->language)
    ->fieldOrderBy('field_date', 'value', 'ASC');
  
  $entities = $query->execute();
  
  $events = array();
  if (isset($entities['node'])) {
    $events = node_load_multiple(array_keys($entities['node']));
  }

  $group = array();
  foreach ($events as $event) {
    $month_of_event = field_get_items('node', $event, 'field_date');
    dpm($month_of_event);
    $month = new DateTime(date('Y-m', $month_of_event[0]['value']));
    $month_text = $month->format("F");
    
    if (isset($group[$month_text])) {
      $group[$month_text][] = $event;
    } else {
      $group[$month_text] = array($event);
    }
  }
  
  return $group;
}

/**
 * Callback for menu box-for-devices
 */
function be_box_for_devices() 
{
  global $language;
  $matched_devices = _be_detect_device();
  if (count($matched_devices) != 0) {
    $matched_device = current($matched_devices);
  } else {
    $matched_device = "windows_computers";
  }
  
  $device_id = _be_load_device_by_key($matched_device);
  if (!$device_id) {
    drupal_not_found();
  }
  
  $device = taxonomy_term_load($device_id);
  if (!$device) {
    drupal_not_found();
  }
  
  $device_group = field_get_items('taxonomy_term', $device, 'field_device_group');
  $apps_tmpl_id = _be_load_apps_template($device_id, $device_group[0]['value'], $language->language);
  
  if (!$apps_tmpl_id) {
    drupal_not_found();
  }
  
  menu_set_active_item('node/' . $apps_tmpl_id);
  return menu_execute_active_handler(NULL, FALSE);
}