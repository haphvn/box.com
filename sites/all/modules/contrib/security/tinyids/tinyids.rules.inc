<?php

/**
 * @file
 * Event of Tiny-IDS Rules integration.
 *
 * @addtogroup rules
 * @{
 */

/**
 * Implements hook_rules_data_info().
 *
 * Declares meta-data about data types for Tiny-IDS Rules.
 */
function tinyids_rules_data_info() {
  return array(
    // Data type representing each intrusion.
    'tinyids_report_intrusion' => array(
      'label' => t('Intrusion by source'),
      'group' => t('Tiny-IDS'),
      'wrap' => TRUE,
      'token type' => 'tinyids_report_intrusion',
      'property info' => _tinyids_rules_report_intrusion_info(),
    ),
    // Data type representing each finding.
    'tinyids_report_intrusion_finding' => array(
      'label' => t('Intrusion finding'),
      'group' => t('Tiny-IDS'),
      'wrap' => TRUE,
      'token type' => 'tinyids_report_intrusion_finding',
      'property info' => _tinyids_rules_report_intrusion_finding_info(),
    ),
  );
}

/**
 * Defines property info for each intrusion.
 */
function _tinyids_rules_report_intrusion_info() {
  return array(
    'source' => array(
      'type' => 'text',
      'label' => t('Source variable of intrusion.'),
    ),
    'value' => array(
      'type' => 'text',
      'label' => t('The original suspicious value.'),
    ),
    'save_value' => array(
      'type' => 'text',
      'label' => t('The plain suspicious value.'),
    ),
    'impact' => array(
      'type' => 'integer',
      'label' => t('Overall impact of intrusion.'),
    ),
    'findings' => array(
      'type' => 'list<tinyids_report_intrusion_finding>',
      'label' => t('List of all detected findings.'),
    ),
  );
}

/**
 * Defines property info for each finding.
 */
function _tinyids_rules_report_intrusion_finding_info() {
  return array(
    'type' => array(
      'type' => 'text',
      'label' => t('Type of finding.'),
    ),
    'description' => array(
      'type' => 'text',
      'label' => t('Description of finding.'),
    ),
    'impact' => array(
      'type' => 'integer',
      'label' => t('Impact of finding.'),
    ),
  );
}

/**
 * Implements hook_rules_event_info().
 *
 * Declares meta-data about events for TinyIDS Rules.
 */
function tinyids_rules_event_info() {
  $events = array();

  // Event that triggers before an API request is send.
  $events['tinyids_event_intrusion'] = array(
    'label' => t('After an intrusion was detected'),
    'group' => t('Tiny-IDS'),
    'variables' => array(
      'report' => array(
        'type' => 'list<tinyids_report_intrusion>',
        'label' => t('Tiny-IDS Report'),
      ),
    ),
  );

  return $events;
}

/**
 * @}
 */
