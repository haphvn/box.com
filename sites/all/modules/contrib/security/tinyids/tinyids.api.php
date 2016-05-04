<?php
/**
 * @file
 * Tiny-IDS | A tiny intrusion detection system.
 *
 * This file contains no working PHP code; it exists to provide additional
 * documentation for doxygen as well as to document hooks in the standard
 * Drupal manner.
 */

/**
 * @addtogroup hooks
 * @{
 * Hooks that can be implemented by other modules in order to extend Tiny-IDS.
 */

/**
 * Rules are collected and are going to be applied for scanning.
 *
 * Modules may alter default rules or add new ones.
 * On a positive result the rule data will be added to the report array.
 *
 * @param array $rules
 *   Array containing default regular expressions and rules information.
 *   See return value for details.
 *
 * @return array
 *   An associative array containing regular expressions and rules information.
 *   The keys of the array are the regular expression, and each corresponding
 *   value is an associative array with the following key-value pairs:
 *   - type: An array containing the rule cassification (eg. xss, csrf, sqli).
 *   - description: A string containing a full description of the finding.
 *   - impact: How high the impact of a detection is (compare with sensibility).
 */
function hook_tinyids_rules_alter(&$rules) {
  // Add a custom rule.
  $rules['(?:[\w.-]+@[\w.-]+%(?:[01][\db-ce-f])+\w+:)'] = array(
    'type' => array('id', 'spam'),
    'description' => t('Common mail header injections.'),
    'impact' => 3,
  );
}

/**
 * An intrusion alert was triggered.
 *
 * Modules may react on intrusion alerts detected by Tiny-IDS and make
 * changes on their report data.
 *
 * @param array $report
 *   An associative array containing report information about the detections.
 *   The keys represent the source paths to the suspicous values in the tested
 *   global array, eg. $_POST['name'].
 *   Each one contains an array with the following key/value pairs.
 *   - value: The original suspicious value (use with care!).
 *   - filtered_value: The filtered value where all rules were applied on.
 *   - save_value: The save value you can use as output.
 *   - impact: The overall impact of all findings on this value.
 *   - context: The source path to the suspicious value as array.
 *   - findings: An array of detections found on the value.
 *     - type: An array containing the cassification (eg. xss, csrf, sqli).
 *     - description: A string containing a full description of the finding.
 *     - impact: The impact of the detection rule (compare with sensibility).
 */
function hook_tinyids_report_alter(&$report) {
  // Example structure of a report:
  $report['$_POST["name"]'] = array(
    'value' => '"><script><!--sdasd-->alert("woo")</script>',
    'filtered_value' => '"><script>;alert("woo")</script>',
    'save_value' => check_plain('"><script><!--sdasd-->alert("woo")</script>'),
    'impact' => 5,
    'context' => array(
      '$_POST',
      'name',
    ),
    'findings' => array(
      array(
        'type' => array(
          'xss',
          'csrf',
        ),
        'description' => t('HTML breaking injections including whitespace attacks.'),
        'impact' => 2,
      ),
      array(
        'type' => array(
          'xss',
          'csrf',
          'rfe',
        ),
        'description' => t('Possible include or typical script method.'),
        'impact' => 3,
      ),
    ),
  );
}

/**
 * @} End of "addtogroup hooks".
 */
