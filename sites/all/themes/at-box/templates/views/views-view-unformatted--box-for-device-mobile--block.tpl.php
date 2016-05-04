<?php

/**
 * @file
 * Default simple view template to display a list of rows.
 *
 * @ingroup views_templates
 */
?>
<?php if (!empty($title)): ?>
  <h3><?php print $title; ?></h3>
<?php endif; ?>
<div class="row-devives no-top-line">
<?php foreach ($rows as $id => $row): ?>
  <?php if ($id > 0 && ($id % 2 == 0)) : ?>
  </div><div class="row-devives">
  <?php endif; ?>
  <div<?php if ($classes_array[$id]) { print ' class="' . $classes_array[$id] .'"';  } ?>>
    <?php print $row; ?>
  </div>
<?php endforeach; ?>
</div>