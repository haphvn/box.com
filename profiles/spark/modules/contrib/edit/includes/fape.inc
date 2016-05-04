<?php

/**
 * @file
 * This is now effectively a light-weight duplicate of FAPE.module, providing
 * just the parts Edit needs.
 */

/**
 * Form constructor; in-place editing form for a (single) Field API field.
 *
 * This isn't a true form. As such it modifies the $form by reference.
 *
 * This leverages http://drupal.org/node/1825844.
 *
 * @see edit_field_edit_form_validate()
 * @see edit_field_edit_form_submit()
 * @ingroup forms
 */
function edit_field_edit_form(&$form, &$form_state) {
  $entity_type = $form_state['entity_type'];
  $entity = $form_state['entity'];
  $field_name = $form_state['field_name'];
  $langcode = $form_state['langcode'];
  $bundle = $form_state['bundle'];

  // Adds the form elements for only the specified field to the form.
  $options = array(
    'field_name' => $field_name,
    'language' => field_valid_language($langcode),
    'default' => TRUE,
  );
  field_attach_form($entity_type, $entity, $form, $form_state, $langcode, $options);

  // @todo make this not node-specific
  if ($entity_type === 'node') {
    $entity->revision = in_array('revision', variable_get('node_options_' . $bundle, array()));
    $entity->log = NULL;
  }

  $form['#validate'][] = 'edit_field_edit_form_validate';
  $form['#submit'][] = 'edit_field_edit_form_submit';
}

/**
 * Form validation handler for edit_field_edit_form().
 *
 * @see edit_field_edit_form()
 * @see edit_field_edit_form_submit()
 * @see \Drupal\edit\Form\EditFieldForm::validate() in Drupal 8.
 */
function edit_field_edit_form_validate($form, &$form_state) {
  $entity = _edit_build_entity($form, $form_state);
  field_attach_form_validate($form_state['entity_type'], $entity, $form, $form_state, array('field_name' =>  $form_state['field_name']));
}

/**
 * Form submission handler for edit_field_edit_form().
 *
 * @see edit_field_edit_form()
 * @see edit_field_edit_form_validate()
 * @see edit_field_edit()
 * @see \Drupal\edit\Form\EditFieldForm::submit() in Drupal 8.
 */
function edit_field_edit_form_submit(&$form, &$form_state) {
  $entity = _edit_build_entity($form, $form_state);
  entity_save($form_state['entity_type'], $entity);

  // Update the entity in the form state, so that edit_field_edit() can use it
  // to render the updated field.
  $form_state['entity'] = $entity;
}

/**
 * Returns a cloned entity containing updated field values.
 *
 * Calling code may then validate the returned entity, and if valid, transfer
 * it back to the form state and save it.
 *
 * @see \Drupal\edit\Form\EditFieldForm::buildEntity() in Drupal 8.
 */
function _edit_build_entity($form, &$form_state) {
  $entity = clone $form_state['entity'];

  // Extract form values. (Renamed to field_attach_extract_form_values() in D8.)
  field_attach_submit($form_state['entity_type'], $entity, $form, $form_state, array('field_name' =>  $form_state['field_name']));

  $instance = field_info_instance($form_state['entity_type'], $form_state['field_name'], $form_state['bundle']);
  _edit_entity_set_log($entity, $instance['label']);

  return $entity;
}

/**
 * Sets a revision log message for entities configured to create a new revision.
 */
function _edit_entity_set_log(&$entity, $field_name) {
  if ($entity->revision) {
    $entity->log = t('Updated the %field-name field through in-place editing.', array('%field-name' => $field_name));
  }
}

/**
 * Form constructor; in-place editing form for node's 'author' "extra field".
 *
 * This isn't a true form. As such it modifies the $form by reference.
 *
 * @see edit_field_node_author_edit_form_validate()
 * @see edit_field_node_author_edit_form_submit()
 * @ingroup forms
 */
function edit_field_node_author_edit_form(&$form, &$form_state) {
  _edit_node_object_prepare($form_state['entity']);

  $node = $form_state['entity'];
  $form['name'] = array(
    '#type' => 'textfield',
    '#title' => t('Authored by'),
    '#maxlength' => 60,
    '#autocomplete_path' => 'user/autocomplete',
    '#default_value' => !empty($node->name) ? $node->name : '',
    '#weight' => -1,
    '#description' => t('Leave blank for %anonymous.', array('%anonymous' => variable_get('anonymous', t('Anonymous')))),
  );

  $form['#validate'][] = 'edit_field_node_author_edit_form_validate';
  $form['#submit'][] = 'edit_field_node_author_edit_form_submit';
}

/**
 * Form validation handler for edit_field_node_author_edit_form().
 *
 * @see node_validate()
 * @see edit_field_node_author_edit_form()
 * @see edit_field_node_author_edit_form_submit()
 */
function edit_field_node_author_edit_form_validate($form, &$form_state) {
  $name = $form_state['values']['name'];
  if (!empty($name) && !($account = user_load_by_name($name))) {
    // The use of empty() is mandatory in the context of usernames
    // as the empty string denotes the anonymous user. In case we
    // are dealing with an anonymous user we set the user ID to 0.
    form_set_error('name', t('The username %name does not exist.', array('%name' => $name)));
  }
}

/**
 * Form submission handler for edit_field_node_author_edit_form().
 *
 * @see node_submit()
 * @see edit_field_node_author_edit_form()
 * @see edit_field_node_author_edit_form_validate()
 */
function edit_field_node_author_edit_form_submit($form, &$form_state) {
  $entity = $form_state['entity'];
  if ($account = user_load_by_name($form_state['values']['name'])) {
    $entity->uid = $account->uid;
    $entity->name = $account->name;
  }
  else {
    $entity->uid = 0;
  }
  _edit_entity_set_log($entity, t('Author'));
  entity_save($form_state['entity_type'], $entity);

  // Update the entity in the form state, so that edit_field_edit() can use it
  // to render the updated field.
  $form_state['entity'] = $entity;
}

/**
 * Form constructor; in-place editing form for node's 'created' "extra field".
 *
 * This isn't a true form. As such it modifies the $form by reference.
 *
 * @see edit_field_node_created_edit_form_validate()
 * @see edit_field_node_created_edit_form_submit()
 * @ingroup forms
 */
function edit_field_node_created_edit_form(&$form, &$form_state) {
  _edit_node_object_prepare($form_state['entity']);

  $node = $form_state['entity'];
  $form['date'] = array(
    '#type' => 'textfield',
    '#title' => t('Authored on'),
    '#maxlength' => 25,
    '#description' => t('Format: %time. The date format is YYYY-MM-DD and %timezone is the time zone offset from UTC. Leave blank to use the time of form submission.', array('%time' => !empty($node->date) ? date_format(date_create($node->date), 'Y-m-d H:i:s O') : format_date($node->created, 'custom', 'Y-m-d H:i:s O'), '%timezone' => !empty($node->date) ? date_format(date_create($node->date), 'O') : format_date($node->created, 'custom', 'O'))),
    '#default_value' => !empty($node->date) ? $node->date : '',
  );

  $form['#validate'][] = 'edit_field_node_created_edit_form_validate';
  $form['#submit'][]   = 'edit_field_node_created_edit_form_submit';
}

/**
 * Form validation handler for edit_field_node_created_edit_form().
 *
 * @see node_validate()
 * @see edit_field_node_created_edit_form()
 * @see edit_field_node_created_edit_form_submit()
 */
function edit_field_node_created_edit_form_validate($form, &$form_state) {
  $date = $form_state['values']['date'];
  if (!empty($date) && strtotime($date) === FALSE) {
    form_set_error('date', t('You have to specify a valid date.'));
  }
}

/**
 * Form submission handler for edit_field_node_created_edit_form().
 *
 * @see node_submit()
 * @see edit_field_node_created_edit_form()
 * @see edit_field_node_created_edit_form_validate()
 */
function edit_field_node_created_edit_form_submit($form, &$form_state) {
  $entity = $form_state['entity'];
  $date = $form_state['values']['date'];
  $entity->created = !empty($date) ? strtotime($date) : REQUEST_TIME;
  _edit_entity_set_log($entity, t('Date'));
  entity_save($form_state['entity_type'], $entity);

  // Update the entity in the form state, so that edit_field_edit() can use it
  // to render the updated field.
  $form_state['entity'] = $entity;
}

/**
 * Form constructor; in-place editing form for node's 'title' "extra field".
 *
 * This isn't a true form. As such it modifies the $form by reference.
 *
 * @see edit_field_node_title_edit_form_submit()
 * @ingroup forms
 */
function edit_field_node_title_edit_form(&$form, &$form_state) {
  _edit_node_object_prepare($form_state['entity']);

  $node = $form_state['entity'];
  $type = node_type_get_type($node);
  $form['title'] = array(
    '#type' => 'textfield',
    '#title' => check_plain($type->title_label),
    '#default_value' => !empty($node->title) ? $node->title : '',
    '#required' => TRUE,
    '#weight' => -5,
  );

  $form['#submit'][] = 'edit_field_node_title_edit_form_submit';
}

/**
 * Form submission handler for edit_field_node_title_edit_form().
 *
 * @see node_submit()
 * @see edit_field_node_title_edit_form()
 */
function edit_field_node_title_edit_form_submit($form, &$form_state) {
  $entity = $form_state['entity'];
  $entity->title = $form_state['values']['title'];
  _edit_entity_set_log($entity, t('Title'));
  entity_save($form_state['entity_type'], $entity);

  // Update the entity in the form state, so that edit_field_edit() can use it
  // to render the updated field.
  $form_state['entity'] = $entity;
}


/**
 * Prepares a node object for editing.
 *
 * Drupal 7 modules that do things upon hook_node_prepare() inappropriately
 * assume that they're only ever going to be used on forms, which requires some
 * additional fiddling to keep everything working correctly.
 *
 * @see node_object_prepare()
 */
function _edit_node_object_prepare(&$node) {
  node_object_prepare($node);

  // menu_node_save() specifically checks the presence of the "enabled" flag,
  // but menu_node_prepare() doesn't add it; it's only present in the form.
  // Hence we add it manually to ensure that when the form item is not present
  // (as is the case for single field in-place editing forms), the menu link is
  // retained instead of removed.
  if (!empty($node->menu['mlid'])) {
    $node->menu['enabled'] = TRUE;
  }
}
