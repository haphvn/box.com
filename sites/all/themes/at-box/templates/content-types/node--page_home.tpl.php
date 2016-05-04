<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
hide($content['comments']);
hide($content['links']);
  //echo "<pre>"; print_r($node);die;
  $descs = field_get_items('node', $node, 'field_home_description');
  $wrapper = entity_metadata_wrapper('node', $node);
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner))?>
</div>
<div id="main-content" class="clearfix">
  <div class="clearfix line-no-shadow">
    <div class="fpo-sub-nav"> </div>
      <?php
        foreach ($descs as $idx => $desc) {
          print_r($desc['value']);
        }
        //die;
      ?>
  </div>
</div>