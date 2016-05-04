<div class="content infor bg-gray">
  <div class="shadow-top">
  <div class="main-title">
  	<?php if ($block->title): ?>
    <h2<?php print $title_attributes; ?>><?php print $block->title; ?></h2>
    <?php endif; ?>
  </div>
  <?php print $content ?>
  </div>
</div>