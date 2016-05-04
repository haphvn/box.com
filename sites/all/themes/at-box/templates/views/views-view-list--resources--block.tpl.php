<?php

/**
 * @file
 * Default simple view template to display a list of rows.
 *
 * - $title : The title of this group of rows.  May be empty.
 * - $options['type'] will either be ul or ol.
 * @ingroup views_templates
 */
$tid = $view->args[0];
$term = taxonomy_term_load($tid);
$nid = _be_get_resource_page($tid, $term->language);
?>
<div class="content info bg-gray">
  <div class="shadow-top line-no-shadow"> 
    <div class="block-list-wrapper no-image analyst-research">
      <div class="line-header">
       <h3 class="title-header"><?php print $term->name; ?></h3>
       <a href="<?php print url('node/' . $nid); ?>" title="<?php print t('View All'); ?>" class="view-all">
         <?php print t('View All'); ?> &#8250; 
       </a>
      </div>
      <ul class="list-parent">
        <?php foreach ($rows as $id => $row): ?>
          <li class="<?php print ($id % 2 == 0 ?'even':'odd'); ?> <?php ($id > 1) && print 'mobile-hide'; ?>">
            <?php print $row; ?>
          </li>
          <?php if($id > 2) break;?>
        <?php endforeach; ?>
      </ul>
    </div>
  </div>
</div>