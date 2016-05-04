<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
$wrapper = entity_metadata_wrapper('node', $node);
$body = field_get_items('node', $node, 'body');
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner, 'custom_class' => 'main-banner-content'))?>
</div>
<div id="main-content" class="clearfix">
  <div class="clearfix line-no-shadow" id="u8-main-content">
    <?php echo $body[0]['value']; ?>
  </div>
</div>