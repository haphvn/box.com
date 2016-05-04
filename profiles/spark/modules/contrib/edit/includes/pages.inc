<?php
/**
 * @file
 * AJAX endpoint to retrieve & save subforms for fields and re-render fields.
 */

/**
 * Returns the metadata for a set of fields.
 *
 * Given a list of field edit IDs as POST parameters, run access checks on the
 * entity and field level to determine whether the current user may edit them.
 * Also retrieves other metadata.
 *
 * @return
 *   The JSON response.
 *
 * @see Drupal 8's Edit's EditController::metadata()
 */
function edit_metadata() {
  $fields = $_POST['fields'];
  $metadata = array();
  $editors = array();
  if (!isset($fields)) {
    return MENU_NOT_FOUND;
  }

  foreach ($fields as $field) {
    if (_edit_validate_field($field)) {
      $metadata[$field] = edit_metadata_generator($field);
      $editors[] = $metadata[$field]['editor'];
    }
    else {
      $metadata[$field] = array('access' => FALSE);
    }
  }

  $commands = array();
  $commands[] = array(
    'command' => 'editMetadata',
    'results' => $metadata,
  );

  // Include the attachments and settings for editors that are used.
  $elements['#attached'] = edit_get_all_editor_attachments($editors, $metadata);
  drupal_process_attached($elements);

  return array('#type' => 'ajax', '#commands' => $commands);
}

/**
 * Checks if a field is inline editable or not.
 *
 * @param $field
 *   the data-edit-id value of this field.
 *
 * @return bool
 */
function _edit_validate_field($field) {
  list($entity_type, $entity_id, $field_name, $langcode, $view_mode) = explode('/', $field);

  // Load the entity.
  if (!$entity_type || !entity_get_info($entity_type)) {
    return FALSE;
  }
  $entity = entity_load_single($entity_type, $entity_id);
  if (!$entity) {
    return FALSE;
  }
  list($id, $vid, $bundle) = entity_extract_ids($entity_type, $entity);

  // Validate the field name and language.
  if (!_edit_is_special_field($entity_type, $field_name)) {
    if (!$field_name || !($instance = field_info_instance($entity_type, $field_name, $bundle))) {
      return FALSE;
    }
  }
  if (!$langcode || (field_valid_language($langcode) !== $langcode)) {
    return FALSE;
  }

  return TRUE;
}


/**
 * Generates in-place editing metadata for an entity field.
 *
 * @param $field
 *   The edit ID of the field being edited.
 * @return array
 *   An array containing metadata with the following keys:
 *   - label: the user-visible label for the field.
 *   - access: whether the current user may edit the field or not.
 *   - editor: which editor should be used for the field.
 *   - aria: the ARIA label.
 *   - custom: (optional) any additional metadata that the editor provides.
 *
 * @see Drupal 8's Edit's MetadataGenerator::generate()
 */
function edit_metadata_generator($field) {
  list($entity_type, $entity_id, $field_name, $language, $view_mode) = explode('/', $field);
  $is_special_field = _edit_is_special_field($entity_type, $field_name);

  $entity = entity_load_single($entity_type, $entity_id);
  list($id, $vid, $bundle) = entity_extract_ids($entity_type, $entity);

  // Early-return if user does not have access.
  $entity_access = entity_access('update', $entity_type, $entity);
  $field_access = $is_special_field ? TRUE : field_access('edit', $field_name, $entity_type, $entity);
  if (!$entity_access || !$field_access) {
    return array('access' => FALSE);
  }

  $instance_info = $items = array();

  // Early-return if no editor is available.
  if (!$is_special_field) {
    $instance_info = field_info_instance($entity_type, $field_name, $bundle);
    $display = $instance_info['display']['default'];
    if (array_key_exists($view_mode, $instance_info['display'])) {
      $display = $instance_info['display'][$view_mode];
    }
    $formatter_type = field_info_formatter_types($display['type']);
    $items = field_get_items($entity_type, $entity, $field_name, $language);
    // For fields who don't have values, end here.
    if (!$items) {
      return array('access' => FALSE);
    }
    $editor_id = edit_select_editor($formatter_type, $instance_info, $items, $entity_type, $field_name, $view_mode);
  }
  // Node title/author/date are not fields, so we have to hard code their editor
  // mapping instead of selecting the editor dynamically.
  else {
    $editor_id = edit_select_editor(array(), array(), array(), $entity_type, $field_name, $view_mode);
  }
  if (!isset($editor_id)) {
    return array('access' => FALSE);
  }

  // Gather metadata, allow the editor to add additional metadata of its own.
  if (!$is_special_field) {
    $label = $instance_info['label'];
  }
  else {
    if ($field_name === 'title') {
      $label = t('Title');
    }
    else if ($field_name === 'author') {
      $label = t('Author');
    }
    else if ($field_name === 'created') {
      $label = t('Date');
    }
  }
  $metadata = array(
    'label' => check_plain($label),
    'access' => TRUE,
    'editor' => $editor_id,
    'aria' => t('Entity @type @id, field @field', array('@type' => $entity_type, '@id' => $id, '@field' => $label)),
  );
  // Add editor metadata if needed.
  if (!$is_special_field) {
    $editor = edit_editor_get($editor_id);
    if (!empty($editor['metadata callback'])) {
      if ($editor['file']) {
        $file_path = !empty($editor['file path']) ? $editor['file path'] : drupal_get_path('module', 'edit');
        require_once $file_path . '/' . $editor['file'];
      }
      if (function_exists($editor['metadata callback'])) {
        $editor_metadata = $editor['metadata callback']($instance_info, $items);
        if (!empty($editor_metadata)) {
          $metadata['custom'] = $editor_metadata;
        }
      }
    }
  }

  $context = array(
    'field' => $field,
    'entity' => $entity,
    'instance_info' => $instance_info,
    'items' => $items,
  );
  drupal_alter('edit_editor_metadata', $metadata, $editor_id, $context);

  return $metadata;
}

/**
 * Returns the in-place editor to use for a given field instance.
 *
 * @param array $formatter_type
 *   The field's formatter type, as returned by field_info_formatter_types().
 * @param array $instance
 *   The field's instance info, as returned by field_info_instance().
 * @param array $items
 *   The field's item values.
 * @param string $entity_type
 *   The entity type. Only necessary for node title/author/date.
 * @param string $field_name
 *   The field's name. Only necessary for node title/author/date.
 *
 * @return string|NULL
 *   The editor to use, or NULL to not enable in-place editing.
 *
 * @see Drupal 8's Edit's EditorSelector::getEditor()
 */
function edit_select_editor(array $formatter_type, array $instance, array $items, $entity_type, $field_name, $view_mode) {
  $alternatives = &drupal_static(__FUNCTION__, NULL);
  $editors = edit_editor_list();

  // Node title/author/date are not fields, so we have to hard code their editor
  // mapping instead of selecting the editor dynamically.
  if (_edit_is_special_field($entity_type, $field_name)) {
    $is_full_title = $field_name === 'title' && $view_mode === 'full';
    return $is_full_title ? 'direct' : 'form';
  }

  // Build a static cache of the editors that have registered themselves as
  // alternatives to a certain editor.
  if (!$alternatives) {
    foreach ($editors as $alternative_editor_id => $editor) {
      if (isset($editor['alternativeTo'])) {
        foreach ($editor['alternativeTo'] as $original_editor_id) {
          $alternatives[$original_editor_id][] = $alternative_editor_id;
        }
      }
    }
  }

  // Check if the formatter defines an appropriate in-place editor. For
  // example, text formatters displaying untrimmed text can choose to use the
  // 'direct' editor. If the formatter doesn't specify, fall back to the
  // 'form' editor, since that can work for any field. Formatter definitions
  // can use 'disabled' to explicitly opt out of in-place editing.
  $formatter_settings = $formatter_type['settings'];
  $editor_id = isset($formatter_settings['edit']['editor']) ? $formatter_settings['edit']['editor'] : 'form';
  if ($editor_id === 'disabled') {
    return;
  }
  elseif ($editor_id === 'form') {
    return 'form';
  }

  // No early return, so create a list of all choices.
  $editor_choices = array($editor_id);
  if (isset($alternatives[$editor_id])) {
    $editor_choices = array_merge($editor_choices, $alternatives[$editor_id]);
  }

  // Make a choice.
  foreach ($editor_choices as $editor_id) {
    $editor = edit_editor_get($editor_id);
    if (!empty($editor['compatibility check callback'])) {
      if ($editor['file']) {
        $file_path = !empty($editor['file path']) ? $editor['file path'] : drupal_get_path('module', 'edit');
        require_once $file_path . '/' . $editor['file'];
      }
      if ($editor['compatibility check callback']($instance, $items)) {
        return $editor_id;
      }
    }
  }

  // We still don't have a choice, so fall back to the default 'form' editor.
  return 'form';
}

/**
 * Page callback: Provides editing of entity fields.
 */
function edit_field_edit($entity_type, $entity_id, $field_name, $langcode = NULL, $view_mode = NULL) {
  // Ensure the entity type is valid.
  if (empty($entity_type)) {
    return MENU_NOT_FOUND;
  }

  $entity_info = entity_get_info($entity_type);
  if (!$entity_info) {
    return MENU_NOT_FOUND;
  }

  $entities = entity_load($entity_type, array($entity_id));
  if (!$entities) {
    return MENU_NOT_FOUND;
  }

  $entity = reset($entities);
  if (!$entity) {
    return MENU_NOT_FOUND;
  }

  if (!isset($langcode) && isset($entity->language)) {
    $langcode = !empty($entity->language) ? $entity->language : LANGUAGE_NONE;
  }

  // Ensure access to update this particular field is granted.
  if (!field_access('edit', $field_name, $entity_type, $entity)) {
    return MENU_ACCESS_DENIED;
  }

  list($id, $vid, $bundle) = entity_extract_ids($entity_type, $entity);
  $is_special_field = _edit_is_special_field($entity_type, $field_name);
  $display = array();

  // This allows us to have limited support for non-field API fields. Currently,
  // we only have support for node:title, node:author and node:created.
  $subform_id = 'edit_field_edit_form';
  if ($is_special_field) {
    $field_instance = TRUE;
    $subform_id = 'edit_field_node_' . $field_name . '_edit_form';
    if (!node_access('update', $entity)) {
      return MENU_ACCESS_DENIED;
    }
  }
  else {
    $field_instance = field_info_instance($entity_type, $field_name, $bundle);
    $display = $field_instance['display']['default'];
    if (array_key_exists($view_mode, $field_instance['display'])) {
      $display = $field_instance['display'][$view_mode];
    }
  }

  if (empty($field_instance)) {
    return MENU_NOT_FOUND;
  }

  $form_state = array(
    'entity_type' => $entity_type,
    'entity' => $entity,
    'field_name' => $field_name,
    'langcode' => $langcode,
    'view_mode' => $view_mode,
    'no_redirect' => TRUE,
    'field_instance' => $field_instance,
    'bundle' => $bundle,
    'subform_id' => $subform_id,
  );

  $form = drupal_build_form('edit_field_form', $form_state);

  $commands = array();

  if (!empty($form_state['executed'])) {
    $entity = $form_state['entity'];

    if ($is_special_field) {
      $inline = FALSE;
      switch ($field_name) {
        case 'title':
          $value = $entity->title;
          break;

        case 'author':
          $inline = TRUE;
          $value = theme('username', array('account' => $entity, 'name' => $entity->name));
          break;

        case 'created':
          $inline = TRUE;
          $value = format_date($entity->created);
          break;
      }
      $data = edit_wrap_pseudofield($value, "node/$id/$field_name/$langcode/$view_mode", $inline);
      // @todo will need special things for panel nodes most likely.
      $commands[] = array(
        'command' => 'editFieldFormSaved',
        'data' => $data,
      );
    }
    // All other fields.
    else {
      $field = field_view_field($entity_type, $entity, $field_name, $view_mode, $langcode);
      $commands[] = array(
        'command' => 'editFieldFormSaved',
        'data' => drupal_render($field),
      );
    }
  }
  else {
    $commands[] = array(
      'command' => 'editFieldForm',
      'data' => drupal_render($form),
    );

    $errors = form_get_errors();
    if (count($errors)) {
      $commands[] = array(
        'command' => 'editFieldFormValidationErrors',
        'data' => theme('status_messages'),
      );
    }
  }

  // When working with a hidden form, we don't want any CSS or JS to be loaded.
  if (isset($_POST['nocssjs']) && $_POST['nocssjs'] === 'true') {
    drupal_static_reset('drupal_add_css');
    drupal_static_reset('drupal_add_js');
  }

  return array('#type' => 'ajax', '#commands' => $commands);
}

/**
 * Page callback: renders a text field without transformation filters.
 */
function edit_ckeditor_get_untransformed_text($entity_type, $entity_id, $field_name, $langcode = NULL, $view_mode = NULL) {
  // Ensure the entity type is valid.
  if (empty($entity_type)) {
    return MENU_NOT_FOUND;
  }

  $entity_info = entity_get_info($entity_type);
  if (!$entity_info) {
    return MENU_NOT_FOUND;
  }

  $entities = entity_load($entity_type, array($entity_id));
  if (!$entities) {
    return MENU_NOT_FOUND;
  }

  $entity = reset($entities);
  if (!$entity) {
    return MENU_NOT_FOUND;
  }

  if (!isset($langcode) && isset($entity->language)) {
    $langcode = !empty($entity->language) ? $entity->language : LANGUAGE_NONE;
  }

  // Ensure access to update this particular field is granted.
  if (!field_access('edit', $field_name, $entity_type, $entity)) {
    return MENU_ACCESS_DENIED;
  }

  list($id, $vid, $bundle) = entity_extract_ids($entity_type, $entity);

  $field_instance = field_info_instance($entity_type, $field_name, $bundle);
  if (empty($field_instance)) {
    return MENU_NOT_FOUND;
  }

  $commands = array();

  // Render the field in our custom display mode; retrieve the re-rendered
  // markup, this is what we're after.
  $field_output = field_view_field($entity_type, $entity, $field_name, 'edit-render-without-transformation-filters', $langcode);
  $output = $field_output[0]['#markup'];

  $commands[] = array(
    'command' => 'editCKEditorGetUntransformedText',
    'id' => "$entity_type/$id/$field_name/$langcode/$view_mode",
    'data' => $output,
  );

  return array('#type' => 'ajax', '#commands' => $commands);
}

function edit_field_form($form, &$form_state) {
  $form['#parents'] = array();

  form_load_include($form_state, 'inc', 'edit', 'includes/fape');

  if ($form_state['subform_id'] && function_exists($form_state['subform_id'])) {
    $form_state['subform_id']($form, $form_state);
  }

  // Add a submit button. Give it a class for easy JavaScript targeting.
  $form['actions'] = array('#type' => 'actions');
  $form['actions']['submit'] = array(
    '#type' => 'submit',
    '#value' => t('Save'),
    '#attributes' => array('class' => array('edit-form-submit')),
  );

  // Remove http://drupal.org/project/metatag form elements.
  // @see http://drupal.org/node/1895142
  unset($form['#metatags']);

  // Tell http://drupal.org/project/redirect to not add form elements.
  // @see http://drupal.org/node/1935676
  $form['redirect'] = array();

  // Simplify it for optimal in-place use.
  edit_field_form_simplify($form, $form_state);
  return $form;
}

/**
 * Removes unneeded elements from the field from.
 *
 * @param $form
 * @param $form_state
 */
function edit_field_form_simplify(&$form, &$form_state) {
  $field_name = $form_state['field_name'];
  $langcode = $form_state['langcode'];

  if (_edit_is_special_field($form_state['entity_type'], $field_name)) {
    // This is needed to hide the title properly.
    $field_mapping = array(
      'title' => 'title',
      'author' => 'name',
      'created' => 'date',
    );
    $widget_element = &$form[$field_mapping[$field_name]];
  }
  else {
    $widget_element = &$form[$field_name][$langcode];
  }

  // Hide the field label from displaying within the form, because JavaScript
  // displays the equivalent label that was provided within an HTML data
  // attribute of the field's display element outside of the form. Do this for
  // widgets without child elements (like Option widgets) as well as for ones
  // with per-delta elements. Skip single checkboxes, because their title is
  // key to their UI. Also skip widgets with multiple subelements, because in
  // that case, per-element labeling is informative.
  $num_children = count(element_children($widget_element));
  if ($num_children == 0 && $widget_element['#type'] != 'checkbox') {
    $widget_element['#title_display'] = 'invisible';
  }
  if ($num_children == 1 && isset($widget_element[0]['value'])) {
    // @todo While most widgets name their primary element 'value', not all
    //   do, so generalize this.
    $widget_element[0]['value']['#title_display'] = 'invisible';
  }

  // Adjust textarea elements to fit their content.
  if (isset($widget_element[0]['value']['#type']) && $widget_element[0]['value']['#type'] == 'textarea') {
    $lines = count(explode("\n", $widget_element[0]['value']['#default_value']));
    $widget_element[0]['value']['#rows'] = $lines + 1;
  }
}
