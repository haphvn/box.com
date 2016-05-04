<?php
/**
 * @file
 * Administrative forms for Tiny-IDS configuration.
 */

/**
 * Form callback for administrative configuration.
 */
function tinyids_settings_form($form, &$form_state) {

  // Sensibility threshold.
  $form['tinyids_sensibility'] = array(
    '#type' => 'select',
    '#title' => t('Detection'),
    '#description' => t('Sensibility of intrusion detection system.') . '<br />' . t('The default settings are recommended but you can <strong>lower the sensibility</strong> on sites with high traffic <strong>to reduce the count of false positives</strong> or <strong>give trusted users the <em>!link</em> permission</strong>.', array('!link' => l(t('Bypass Tiny-IDS'), 'admin/people/permissions', array('fragment' => 'module-tinyids')))),
    '#options' => array(
      0 => t('Paranoid sensibility'),
      5 => t('Very sensitive'),
      10 => t('Regular sensibility'),
      15 => t('Quite tolerant'),
      20 => t('Very tolerant'),
    ),
    '#default_value' => variable_get('tinyids_sensibility', 10),
  );
  // Detection vertical tabs.
  $form['detection'] = array(
    '#type' => 'vertical_tabs',
  );

  // XSS detection settings.
  $form['detection']['xss'] = array(
    '#type' => 'fieldset',
    '#title' => t('XSS'),
  );
  $form['detection']['xss']['description'] = array(
    '#type' => 'item',
    '#title' => t('XSS (Cross Site Scripting)'),
    '#description' => t('Makes it possible to embed foreign content and scripts, grab your session/login information and phish private data.') . '<br /><em>' . t('Potential damage: minor, Exploitation: Easy') . '</em>',
  );
  $form['detection']['xss']['tinyids_xss'] = array(
    '#type' => 'checkbox',
    '#title' => t('Detection'),
    '#description' => t('Whether XSS detection should be applied.'),
    '#default_value' => variable_get('tinyids_xss', TRUE),
  );

  // SQLi detection settings.
  $form['detection']['sqli'] = array(
    '#type' => 'fieldset',
    '#title' => t('SQLi'),
  );
  $form['detection']['sqli']['description'] = array(
    '#type' => 'item',
    '#title' => t('SQL injection'),
    '#description' => t('Makes it possible to execute malicious database requests, dump code on your server and gain access to private information.') . '<br /><em>' . t('Potential damage: High, Exploitation: Medium - Hard') . '</em>',
  );
  $form['detection']['sqli']['tinyids_sqli'] = array(
    '#type' => 'checkbox',
    '#title' => t('Detection'),
    '#description' => t('Whether SQLi detection should be applied.'),
    '#default_value' => variable_get('tinyids_sqli', TRUE),
  );

  // Code execution detection settings.
  $form['detection']['rce'] = array(
    '#type' => 'fieldset',
    '#title' => t('Code execution'),
  );
  $form['detection']['rce']['description'] = array(
    '#type' => 'item',
    '#title' => t('Code execution'),
    '#description' => t('Makes it possible to execute foreign code on your server in order to take over control (eg. remote evaluation, local inclusion).') . '<br /><em>' . t('Potential damage: High, Exploitation: Medium') . '</em>',
  );
  $form['detection']['rce']['tinyids_rce'] = array(
    '#type' => 'checkbox',
    '#title' => t('Detection'),
    '#description' => t('Whether code execution detection should be applied.'),
    '#default_value' => variable_get('tinyids_rce', TRUE),
  );

  // Advanced detection settings.
  $form['detection']['settings'] = array(
    '#type' => 'fieldset',
    '#title' => t('Advanced settings'),
  );
  $form['detection']['settings']['description'] = array(
    '#type' => 'item',
    '#title' => t('Advanced settings'),
    '#description' => t('Avoid changes here, the default settings are most secure.'),
  );
  $form['detection']['settings']['tinyids_global_get'] = array(
    '#type' => 'checkbox',
    '#title' => t('Check GET global'),
    '#description' => t('Whether this global variable should be checked against XSS, SQLi and code execution.'),
    '#default_value' => variable_get('tinyids_global_get', TRUE),
  );
  $form['detection']['settings']['tinyids_global_post'] = array(
    '#type' => 'checkbox',
    '#title' => t('Check POST global'),
    '#description' => t('Whether this global variable should be checked against XSS, SQLi and code execution.'),
    '#default_value' => variable_get('tinyids_global_post', TRUE),
  );
  $form['detection']['settings']['tinyids_global_cookie'] = array(
    '#type' => 'checkbox',
    '#title' => t('Check COOKIE global'),
    '#description' => t('Whether this global variable should be checked against XSS, SQLi and code execution.'),
    '#default_value' => variable_get('tinyids_global_cookie', TRUE),
  );
  $form['detection']['settings']['tinyids_global_server'] = array(
    '#type' => 'checkbox',
    '#title' => t('Check SERVER global'),
    '#description' => t('Whether this global variable should be checked against XSS, SQLi and code execution.'),
    '#default_value' => variable_get('tinyids_global_server', TRUE),
  );
  $form['detection']['settings']['tinyids_global_nesting'] = array(
    '#type' => 'select',
    '#title' => t('Nesting level'),
    '#options' => array(
      1 => 1,
      2 => 2,
      3 => 3,
      4 => 4,
      5 => 5,
      6 => 6,
    ),
    '#description' => t('How deep to scan in global variables. High values can have performance impacts.'),
    '#default_value' => variable_get('tinyids_global_nesting', 3),
  );

  // Reaction vertival tabs.
  $form['reaction_title'] = array(
    '#type' => 'item',
    '#title' => t('Reaction'),
    '#description' => t('<strong>All detected intrusion attempts will be logged at !link</strong>.', array('!link' => l(t('Reports » Recent log messages'), 'admin/reports/dblog'))),
  );
  $form['reaction'] = array(
    '#type' => 'vertical_tabs',
  );

  // Warning reaction settings.
  $form['reaction']['warning'] = array(
    '#type' => 'fieldset',
    '#title' => t('Warning'),
  );
  $form['reaction']['warning']['description'] = array(
    '#type' => 'item',
    '#title' => t('Warn attackers'),
    '#description' => t('Warn user about being detected.'),
  );
  $form['reaction']['warning']['tinyids_warning'] = array(
    '#type' => 'checkbox',
    '#title' => t('Warn on intrusion attempts'),
    '#description' => t('Whether the attacker should be warned about being detected.'),
    '#default_value' => variable_get('tinyids_warning', TRUE),
  );
  $form['reaction']['warning']['tinyids_warning_message'] = array(
    '#type' => 'textfield',
    '#title' => t('Warning message for XSS, SQLi and code execution detections'),
    '#description' => t('Warning message to show to the suspected user. Leave empty for no message.'),
    '#default_value' => variable_get('tinyids_warning_message', t('Note that an administrator was notified about your intrusion attempt.')),
  );

  // Mailing reaction settings.
  $form['reaction']['mailing'] = array(
    '#type' => 'fieldset',
    '#title' => t('Mailing'),
  );
  $form['reaction']['mailing']['description'] = array(
    '#type' => 'item',
    '#title' => t('Send mails to site administrators'),
    '#description' => t('Warn site administrators about a detected intrusion attempt by mail.'),
  );
  $form['reaction']['mailing']['tinyids_mailing'] = array(
    '#type' => 'checkbox',
    '#title' => t('Mail on intrusion attempts'),
    '#description' => t('Whether to send a mail on detected intrusion attempts.'),
    '#default_value' => variable_get('tinyids_mailing', TRUE),
  );
  $form['reaction']['mailing']['tinyids_mailing_address'] = array(
    '#type' => 'textarea',
    '#title' => t('E-mail addresses to notify on intrusion detections'),
    '#description' => t('Put each address on a separate line. Site administrator is warned per default.'),
    '#rows' => 3,
    '#default_value' => implode(PHP_EOL, variable_get('tinyids_mailing_address', array(variable_get('site_mail')))),
  );
  $htmlmail_enabled = module_exists('htmlmail');
  $form['reaction']['mailing']['tinyids_mailing_htmlmail'] = array(
    '#type' => 'checkbox',
    '#title' => t('Send alert as HTML report'),
    '#description' => t('When !htmlmail_link is installed, HTML reports can be send via email.', array(
      '!htmlmail_link' => l(t('HTML Mail'), 'http://drupal.org/project/htmlmail'),
    )),
    '#default_value' => $htmlmail_enabled ? variable_get('tinyids_mailing_htmlmail', FALSE) : FALSE,
    '#disabled' => !$htmlmail_enabled,
  );

  // Rules reaction info.
  $form['reaction']['rules'] = array(
    '#type' => 'fieldset',
    '#title' => t('Rules'),
  );
  $form['reaction']['rules']['description'] = array(
    '#type' => 'item',
    '#title' => t('Rules integration'),
    '#description' => t('Tiny-IDS has a !rules_link integration providing an intrusion attempt event. Using conditions and actions you can easily implement more advanced reactions like sending mails to user groups, blocking users, redirecting to a predefined site, printing more detailed warning messages and anything else you probably can imagine.', array('!rules_link' => l(t('Rules 2.x'), 'http://drupal.org/project/rules'))),
  );

  // Debug mode setting.
  $form['reaction']['debug'] = array(
    '#type' => 'fieldset',
    '#title' => t('Debugging'),
  );
  $form['reaction']['debug']['description'] = array(
    '#type' => 'item',
    '#title' => t('Debug settings'),
    '#description' => t('These settings are designed for development and testing purposes. Do NOT activate debugging settings on productive environments.'),
  );
  $form['reaction']['debug']['tinyids_debug'] = array(
    '#type' => 'checkbox',
    '#title' => t('Debug mode'),
    '#description' => t('Whether debug information about all findings should be shown to ANY user.'),
    '#default_value' => variable_get('tinyids_debug', FALSE),
  );

  $form = system_settings_form($form);

  // Custom validation callback for the email notification setting.
  $form['#validate'][] = 'tinyids_settings_form_validate';
  // We need to call our own submit callback first, not the one from
  // system_settings_form(), so that we can process and save the emails.
  unset($form['#submit']);

  return $form;
}

/**
 * Custom validation handler to check the notification emails.
 */
function tinyids_settings_form_validate($form, &$form_state) {
  if (!empty($form_state['values']['tinyids_mailing_address'])) {
    $valid = array();
    $invalid = array();
    // Get all entered emails.
    foreach (explode(PHP_EOL, trim($form_state['values']['tinyids_mailing_address'])) as $email) {
      $email = trim($email);
      // Check if all emails are well formatted.
      if (!empty($email)) {
        if (valid_email_address($email)) {
          $valid[] = $email;
        }
        else {
          $invalid[] = $email;
        }
      }
    }
    if (empty($invalid)) {
      $form_state['tinyids_mailing_address'] = $valid;
    }
    // Throw an error about invalid email addresses.
    elseif (count($invalid) == 1) {
      form_set_error('tinyids_mailing_address', t('%email is not a valid e-mail address.', array('%email' => reset($invalid))));
    }
    else {
      form_set_error('tinyids_mailing_address', t('%emails are not valid e-mail addresses.', array('%emails' => implode(', ', $invalid))));
    }
  }
}

/**
 * Custom submit handler to process and save the notification emails.
 */
function tinyids_settings_form_submit($form, $form_state) {
  // Save email addresses. @see tinyids_settings_form_validate().
  if (empty($form_state['tinyids_mailing_address'])) {
    variable_del('tinyids_mailing_address');
  }
  else {
    variable_set('tinyids_mailing_address', $form_state['tinyids_mailing_address']);
  }
  unset($form_state['tinyids_mailing_address']);
  unset($form_state['values']['tinyids_mailing_address']);

  // If using HTML report alert mails were chosen we should make sure
  // that the mailsystem module uses the HTMLMailSystem class.
  if ($form_state['values']['tinyids_mailing_htmlmail'] && !variable_get('tinyids_mailing_htmlmail', FALSE)) {
    mailsystem_set(array('tinyids' => 'HTMLMailSystem'));
  }

  // Save the rest like using system_settings_form() normaly.
  system_settings_form_submit($form, $form_state);
}
