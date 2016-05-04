<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-09
 */
?>
<?php $i = 1; ?>
<div class="content bg-gray v<?php print $device; ?> <?php print (!$mobile_apps_in_desk)?'no-shadow-top':''; ?> box-apps">
    <?php if($mobile_apps_in_desk) : ?><div class="shadow-top"><?php endif; ?>
    <?php print $title; ?>
    <?php if($device == '978') : ?><div class="clearfix <?php print ($mobile_apps_in_desk && $i==1)? 'no_shadow_device' : '';?>"><?php endif; ?>
    
    <?php foreach ($node_apps as $node_app): ?>
    <div class="u6_block clearfix <?php print ($device == '720' && $i!=1) ? 'shadow_device' : '';?>">
      <?php
        if (!empty($node_app['platform_logo'])) {
          $image = array(
            'path'       => $node_app['platform_logo']['uri'],
            'alt'        => $node_app['platform_logo']['alt'],
            'title'      => $node_app['platform_logo']['title'],
            'style_name' => 'box_for_device_platform_thumb',
          );
          print theme('image_style', $image);
        }
      ?>
      <div class="cls_content">
        <?php !empty($node_app['apps_desc']['value']) && print $node_app['apps_desc']['value']; ?>
      </div>
      <div class="carousel_wrapper">
        <div class="screenshot_carousel" slide-width="<?php echo !empty($node_app['min_width']) ? $node_app['min_width'] : 0 ?>">
          <?php
            foreach ($node_app['apps_images'] as $image) { 
              $image_info = $image->value();
              $img = array(
                'path'       => $image_info['uri'],
                'alt'        => $image_info['alt'],
                'title'      => $image_info['title'],
                'style_name' => 'box_for_device_thumb',
              );
              print theme('image_style', $img);
            }
          ?>
        </div><!-- end .screenshot_carousel -->
      </div><!-- .carousel_wrapper -->
    </div><!-- end .u6_block -->
    <?php if($device == '978' && $i % 2 == 0 && $i < count($node_apps)): ?>
    </div><!-- end .clearfix -->
    <div class="clearfix <?php print ($mobile_apps_in_desk && $i % 2 == 0)? 'shadow_device' : '';?>">
    <?php
      endif;
      $i++;
    endforeach; ?>
    <?php if($device == '978') : ?></div><!-- end .clearfix --><?php endif; ?>
    <?php if($mobile_apps_in_desk) : ?></div><!-- end .shadow-top --><?php endif; ?>
</div>
