<?php

/**
 * @file
 * Default simple view template to display a list of rows.
 *
 * - $title : The title of this group of rows.  May be empty.
 * - $options['type'] will either be ul or ol.
 * @ingroup views_templates
 */
?>
<div class="shadow-top">
  <h3><?php print t('Related (Industry) Customer Stories'); ?></h3>
  <?php print $list_type_prefix; ?>
  <?php foreach ($rows as $id => $row): ?>
    <li><?php print $row; ?></li>
  <?php endforeach; ?>
  <?php print $list_type_suffix; ?>
</div>