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
$logo_platform = node_load($fields['field_platforms']->raw);
if ($logo_platform) {
  $term = taxonomy_term_load($logo_platform->field_platforms['und'][0]['tid']);
  $item = $term->field_logo['und'][0];
  $image = array(
    'path' => $item['uri'],
    'alt' => $item['alt'],
    'title' => $item['title'],
  	'style_name' => 'box_for_device_platform_thumb',
  );
}
?>
<div class="box-device">
<div class="logo-of-device">
<?php if ($image): ?>
<?php print theme('image', $image); ?>
<!--<img src="<?php print base_path() . path_to_theme() ?>/img/apple-icon" alt="application for window"/>-->
<?php endif; ?>
</div>
<div class="info-of-device">
<?php foreach ($fields as $id => $field): ?>
	<?php if ($id == 'field_images' || $id == 'field_platforms') continue; ?>
  <?php if (!empty($field->separator)): ?>
    <?php print $field->separator; ?>
  <?php endif; ?>

  <?php print $field->wrapper_prefix; ?>
    <?php print $field->label_html; ?>
    <?php print $field->content; ?>
  <?php print $field->wrapper_suffix; ?>
<?php endforeach; ?>
</div>

<?php if (!empty($fields['field_images']->separator)): ?>
  <?php print $fields['field_images']->separator; ?>
<?php endif; ?>

<?php print $fields['field_images']->wrapper_prefix; ?>
  <?php print $fields['field_images']->label_html; ?>
  <?php print $fields['field_images']->content; ?>
<?php print $fields['field_images']->wrapper_suffix; ?>
</div>
