<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
  hide($content['comments']);
  hide($content['links']);

  $wrapper = entity_metadata_wrapper('node', $node);
?>

<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner))?>
</div>

<div id="main-content" class="clearfix">
  <div class="clearfix">

    <!-- Section 1 -->
    <?php
      $video = $wrapper->field_video;
      $viTitle = $video->field_title->value();
      $viDesc = $video->field_description->value();
      $viLink = $video->field_link->value();
      $viYoutube = $video->field_youtube->value();
      $viYoutubeURL = $viYoutube['url'];
      $viYoutubeThumb = _be_youtube_screenshot($viYoutubeURL);
    ?>
    <?php if (count($video) > 0): ?>
    <div class="content info bg-white sec-one-cloud line-no-shadow">
      <div class="shadow-top no-shadow-top padding-bottom-60">
        <div class="col-two col-left">
          <div class="title-header">
            <h2><?php echo $viTitle; ?></h2>
          </div>
          <div class="col-content">
            <p><?php echo $viDesc; ?></p>
            <a class="btnblue" href="<?php echo $viLink['url'];?>" ><?php echo $viLink['title']; ?></a>
          </div>
        </div>
        <div class="col-two col-right">
          <div class="video_item">
            <div class="player">
              <?php if ($viYoutubeThumb): ?>
                <?php echo theme('imagecache_external', array('path' => $viYoutubeThumb, 'style_name'=> 'videos_thumb', 'alt' => '')); ?>
              <?php endif; ?>
              <?php echo l(t('Play'), $viYoutubeURL, array('attributes' => array('target' => '_blank', 'class' => 'video_lightbox'))); ?>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php endif ?>

    <!-- Section 2 -->
    <?php foreach ($wrapper->field_3rd_party_app_description as $idx => $field_3rd_party_app_description) : ?>
    <?php
      $bgTitleClass = array('sec-work', 'sec-feedback', 'sec-ideas', 'sec-goodbye');
      $colClass1 = array('col-right', 'col-left', 'col-right', 'col-left');
      $colClass2 = array('col-left baloon_caption', 'col-right', 'col-left-full', 'col-right-full');
      $fTitle = $field_3rd_party_app_description->field_title->value();
      $fDesc = $field_3rd_party_app_description->field_description->value();
      $fLink = $field_3rd_party_app_description->field_link->value();
      $iDesktop = $field_3rd_party_app_description->field_image->value();
      $iMobile = $field_3rd_party_app_description->field_image_for_mobile->value();
    ?>
    <div class="content info bg-gray <?php echo $bgTitleClass[$idx]; ?>">
      <div class="shadow-top">
        <div class="col-two <?php echo $colClass1[$idx]; ?>">
          <div class="title-header">
            <h2><?php echo $fTitle; ?></h2>
          </div>
          <div class="col-content">
            <p><?php echo $fDesc; ?></p>
            <a href="<?php echo $fLink['url']; ?>" class="viewmore"><?php echo $fLink['title']; ?></a>
          </div>
        </div>
        <div class="col-two <?php echo $colClass2[$idx]; ?>">
          <?php if ($idx == 0) : ?>
            <div class="baloon-wrapper">
          <?php endif ?>
            <img src="<?php echo file_create_url($iDesktop['uri']); ?>" class="img-desktop" alt=""/>
            <img src="<?php echo file_create_url($iMobile['uri']); ?>" class="img-tablet" alt=""/>
            <?php
              if ($idx == 0) {
                echo '<span class="caption-sec-1">Tablet</span>
                      <span class="caption-sec-2">Mobile</span>
                      <span class="caption-sec-3">Desktop</span>';
              }
            ?>
          <?php if ($idx == 0) : ?>
            </div>
          <?php endif ?>
        </div>
      </div>
    </div>
    <?php endforeach ?>

    <!-- Section 6 -->
    <?php
      $fdtDesc = $wrapper->field_feartures_detail_template->value();
      echo $fdtDesc['value'];
    ?>

  </div>
</div>