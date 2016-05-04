<?php

/**
 * @file
 * Default simple view template to all the fields as a row.
 *
 * - $view: The view in use.
 * - $fields: an array of $field objects. Each one contains:
 *   - $field->content: The output of the field.
 *   - $field->raw: The raw data for the field, if it exists. This is NOT output safe.
 *   - $field->class: The safe class id to use.
 *   - $field->handler: The Views field handler object controlling this field. Do not use
 *     var_export to dump this object, as it can't handle the recursion.
 *   - $field->inline: Whether or not the field should be inline.
 *   - $field->inline_html: either div or span based on the above flag.
 *   - $field->wrapper_prefix: A complete wrapper containing the inline_html to use.
 *   - $field->wrapper_suffix: The closing tag for the wrapper.
 *   - $field->separator: an optional separator that may appear before a field.
 *   - $field->label: The wrap label text to use.
 *   - $field->label_html: The full HTML of the label to use including
 *     configured element type.
 * - $row: The raw result object from the query, with all data it fetched.
 *
 * @ingroup views_templates
 */
$node = node_load($row->nid);
$links = array();
?>
<img src="<?php print file_create_url($row->field_field_image[0]['raw']['uri']); ?>" alt="<?php print $row->node_title; ?>" />
<div>
  <h4><?php !empty($row->taxonomy_term_data_node_name) && print $row->taxonomy_term_data_node_name; ?></h4>
  <a href="<?php print url('node/' . $row->nid); ?>" class="strong"><?php print $row->node_title; ?></a>
  <?php print $row->field_field_descriptions[0]['raw']['value']; ?>
  <?php 
  $case_study = field_get_items('node', $node, 'field_case_study');
  (!empty($case_study)) && ($links[] = '<a href="' . url('node/' . $row->nid, array('fragment' => 'readCaseStudy')) . '" class="one-row">' . t('Read Case Study') . ' &#8250;</a>');
  ?>
  <?php 
  $youtube_link = field_get_items('node', $node, 'field_youtube');
  !empty($youtube_link[0]['url']) && ($links[] = '<a href="' . url('node/' . $row->nid, array('fragment' => 'watchVideo')) . '" class="one-row">' . t('Watch Video') . ' &#8250;</a>');
  ?>
  <?php echo implode("", $links); ?>
</div>