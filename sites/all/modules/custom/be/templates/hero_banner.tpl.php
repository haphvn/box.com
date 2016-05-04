<?php 
  /* @var $hero_banner EntityListWrapper */

$custom_class = !empty($custom_class) ? $custom_class : 'main-banner-content';
?>
<?php if ($hero_banner->count() > 1):?>
  <ul class="banner-carousel">
  <?php foreach ($hero_banner as $banner):?>
    <?php 
      $image_desktop = $banner->field_image_banner->value();
      $image_mobile = $banner->field_image_banner_mobile->value();
      $image_tablet = $banner->field_image_banner_tablet->value();
      
      $description = $banner->field_description_banner->value();
    ?>
    <li>
      <div class="<?php echo $custom_class?>">
          <span class="banner-shadow"></span>
          <div class="banner-img">
            <?php 
            
              !empty($image_mobile['uri']) && print theme('image_style', array(
                'style_name' => 'hero_banner', 
                'path' => $image_mobile['uri'], 
                'title' => $image_mobile['title'], 
                'alt' => $image_mobile['alt'], 
                'attributes' => array('class'=>'mobile')
              ));
            
              !empty($image_tablet['uri']) && print theme('image_style', array(
                'style_name' => 'hero_banner', 
                'path' => $image_tablet['uri'], 
                'title' => $image_tablet['title'], 
                'alt' => $image_tablet['alt'], 
                'attributes' => array('class'=>'tablet')
              ));
              
              !empty($image_desktop['uri']) && print theme('image_style', array(
                'style_name' => 'hero_banner', 
                'path' => $image_desktop['uri'], 
                'title' => $image_desktop['title'], 
                'alt' => $image_desktop['alt'], 
                'attributes' => array('class'=>'desktop')
              ));
            ?>
          </div>
          <div class="banner-des">
              <?php !empty($description['value']) && print($description['value'])?>
          </div>
      </div>
    </li>
  <?php endforeach?>
  </ul>
<?php elseif ($hero_banner->count() == 1):?>
  <?php 
    $banner = $hero_banner->get(0);
    $image_mobile = $banner->field_image_banner_mobile->value();
    $image_tablet = $banner->field_image_banner_tablet->value();
    $image_desktop = $banner->field_image_banner->value();
    $description = $banner->field_description_banner->value();
  ?>
  <div class="<?php echo $custom_class?>">
    <span class="banner-shadow"></span>
    <div class="banner-img">
      <?php echo theme('image_style', array('style_name' => 'hero_banner', 'path' => $image_mobile['uri'], 'title' => $image_mobile['title'], 'alt'=> $image_mobile['alt'], 'attributes'=>array('class'=>'mobile')))?>
      <?php 
        if (!empty($image_tablet['uri'])) {
          echo theme('image_style', array('style_name' => 'hero_banner', 'path' => $image_tablet['uri'], 'title' => $image_tablet['title'], 'alt'=> $image_tablet['alt'], 'attributes'=>array('class'=>'tablet')));
        }
      ?>
      <?php echo theme('image_style', array('style_name' => 'hero_banner', 'path' => $image_desktop['uri'], 'title' => $image_desktop['title'], 'alt'=>$image_desktop['alt'], 'attributes'=>array('class'=>'desktop')))?>
    </div>
    <div class="banner-des">
      <?php !empty($description['value']) && print($description['value'])?>
    </div>
  </div>

<?php endif?>