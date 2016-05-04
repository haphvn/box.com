<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-09
 */
?>
<div class="shadow-top clearfix more-apps-section">
  <?php print $title; ?>
  <ul class="clearfix">
    <?php foreach ($more_apps as $id => $more_app): ?>
    <?php ($device == 'desktop' && $id%3==0 && $id!=0) && print '</ul><ul class="clearfix">'; ?>
      <li>
        <a href="javascript:void(0);" title="<?php print $more_app['title']; ?>">
          <?php print theme('image_style', array('style_name' => 'app_thumb', 'path' => $more_app['thumb']['uri'], 'title' => $more_app['title'], 'alt'=> $more_app['title']))?>
        </a>
        <?php if($device == 'desktop'): ?>
          <h4><?php print $more_app['title']; ?></h4>
          <?php !empty($more_app['short_desc']['value']) && print $more_app['short_desc']['value']; ?>
        <?php endif; ?>
      </li>
      <?php if(($device == 'desktop' && $id == 5)
            || ($device == 'tablet' && $id == 4)
            || ($device == 'mobile' && $id == 2))
              break;
      ?>
    <?php endforeach; ?>
  </ul> 
</div>