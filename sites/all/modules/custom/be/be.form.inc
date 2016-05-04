<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-09
 */
/**
 * Implements hook_form_alter().
 */
function be_form_alter(&$form, &$form_state, $form_id)
{
  if ($form_id == 'i18n_string_translate_page_form') {
    // Loop all strings.
    $keys = array_keys($form['strings']['all']);
    foreach ($keys as $name) {
      // The field for [ block title / vocabulary name / vocabulary description / term name ] are textfields in ori language,
      // but textareas when translating: change these to textfields.
      if (preg_match('/blocks:block:[0-9]+:title/i', $name)
        || preg_match('/taxonomy:(vocabulary|term):[0-9]+:name/i', $name)
        || preg_match('/taxonomy:vocabulary:[0-9]+:description/i', $name)) {
        $form['strings']['all'][$name]['#type'] = 'textfield';
      }
      // Change textarea to text_format and overwrite description which is already auto included in text_format fields.
      elseif (preg_match('/blocks:block:[0-9]+:body/i', $name)
        || preg_match('/taxonomy:term:[0-9]+:description/i', $name)) {
        $form['strings']['all'][$name]['#type'] = 'text_format';
        $form['strings']['all'][$name]['#description'] = '<br />';
      }
    }
    
    // Add submit function.
    $form['#submit'] = array_merge(array(
      'custom_string_translate_form_submit'
    ), $form['#submit']);
  }
}

/**
 *
 * @param unknown $form
 * @param unknown $form_state
 */
function custom_string_translate_form_submit($form, &$form_state) {
  // Remove wysiwyg format because i18n cant handle it.
  $keys = array_keys($form_state['values']['strings']);
  foreach ($keys as $name) {
    if (
        preg_match('/blocks:block:[0-9]+:body/i' , $name) ||
        preg_match('/taxonomy:term:[0-9]+:description/i' , $name)
    ){
      unset($form_state['values']['strings'][$name]['format']);
    }
  }
}
/**
 * Form constructor for the contact form.
 *
 * @see contact_us_form_validate()
 * @see contact_us_form_submit()
 *
 * @ingroup forms
 */
function contact_us_form($form, &$form_state)
{
  $form['first_name'] = array(
    '#type' => 'textfield',
    '#title' => t('First Name'),
    '#attributes' => array(
      'class' => array('inputpstyle'), 
      'placeholder' => array(t('Enter first name'))
    ),
    '#size' => 20,
    '#maxlength' => 20,
  );
  $form['last_name'] = array(
    '#type' => 'textfield',
    '#title' => t('Last Name'),
    '#attributes' => array(
      'class' => array('inputpstyle'), 
      'placeholder' => array(t('Enter last name'))
    ),
    '#size' => 20,
    '#maxlength' => 20,
  );
  $form['email_address'] = array(
    '#type' => 'textfield',
    '#title' => t('Email Address'),
    '#attributes' => array(
      'class' => array('inputpstyle'), 
      'placeholder' => array(t('Enter email address'))
    ),
    '#size' => 20,
  );
  $form['help'] = array(
    '#title' => t('How Can We Help You?'),
    '#type' => 'select',
    '#options' => array(
      '_none' => t('Please select an option'),
      1 => t('Sample 1'), 
      2 => t('Sample 2'), 
      3 => t('Sample 3'), 
      4 => t('Sample 4')
    ),
    '#default_value' => t('Please select an option'),
  );
  $form['message'] = array(
    '#type' => 'textarea',
    '#title' => t('Message:'),
    '#size' => 20,
    '#maxlength' => 20,
    '#attributes' => array(
      'class' => array('txtareastyle'),
      'placeholder' => array(t('I’d like to share my folder with you, Karishma.'))
    ),
  );
  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => t('Send'),
    '#prefix' => '<span class="button-blue">',
    '#suffix' => '</span>',
  );
  return $form;
}

/**
 * Form validation handler for contact_us_form().
 *
 */
function contact_us_form_validate($form, &$form_state)
{
}

/**
 * Form submission handler for contact_us_form().
 *
 */
function contact_us_form_submit($form, &$form_state)
{
}
