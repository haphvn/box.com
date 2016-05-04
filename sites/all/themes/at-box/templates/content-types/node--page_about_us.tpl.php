<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
$wrapper = entity_metadata_wrapper('node', $node);
$body = field_get_items('node', $node, 'body');
$themeImage = drupal_get_path('theme', 'at_box');
$as_title = field_get_items('node', $node, 'field_video_title_');
$as_desc = field_get_items('node', $node, 'field_video_description');
$as_links = field_get_items('node', $node, 'field_video_link');
$as_link = $as_links[0]['value'];
$bg_image = field_get_items('node', $node, 'field_image_content');
$kudo_title = field_get_items('node', $node, 'field_kudo_received_title');
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner, 'custom_class' => 'main-banner banner_u17'))?>
</div>

<div id="main-content" class="clearfix">
  <div class="clearfix page_u17 line-no-shadow">
    <div class="mobile-content page-description">
      <p class="quote">
        <?php
          $desc_mobile = field_get_items('node', $node, 'field_description_mobile');
          echo $desc_mobile[0]['value'];
        ?>
      </p>
    </div>

    <div class="content bg-gray no-shadow-top hero_content">
      <div class="no-shadow-top clearfix">
        <h2><?php echo $node->title; ?></h2>
        <div class="cls_content">
          <?php echo $body[0]['value']; ?>
        </div>
        <?php
          $about_image = field_get_items('node', $node, 'field_about_image');
          $about_image_mobile = field_get_items('node', $node, 'field_about_image_mobile');
        ?>
        <img class="hero_image img-tablet" src="<?php echo file_create_url($about_image_mobile[0]['uri']) ?>" alt="" />
        <img class="hero_image img-desktop" src="<?php echo file_create_url($about_image[0]['uri']) ?>" alt="" />
      </div>
    </div>

    <div class="content bg-gray nav_cards clearfix">
      <div class="shadow-top">
        <ul class="clearfix">
          <?php
            foreach ($wrapper->field_navigation_cards as $field_navigation_cards) :
              $nc_title_link = $field_navigation_cards->field_title_link->value();
              $nc_desc = $field_navigation_cards->field_description->value();
              $nc_image = $field_navigation_cards->field_image->value();
          ?>
          <li>
            <a href="javascript:void(0);" title=""><img src="<?php echo file_create_url($nc_image['uri']); ?>" alt=""></a>
            <h3><a href="<?php echo $nc_title_link['url'] ?>"><?php echo $nc_title_link['title']; ?></a></h3>
            <div class="cls_content">
              <p><?php echo $nc_desc; ?></p>
            </div>
          </li>
          <?php endforeach ?>
        </ul>
      </div>
      <img src="<?php echo file_create_url($bg_image[0]['uri']) ?>" alt="" class="bg_nav_card">
    </div>

    <div class="content bg-gray banner_video clearfix">
      <div class="shadow-top">
        <h2><?php echo $as_title[0]['value']; ?></h2>
        <div class="youtube_player">
          <img src="<?php echo '/'.$themeImage; ?>/img/video-img-demo.png" alt="" class="youtube_avatar">
          <?php
            $viYoutube = $wrapper->field_video_link->value();
            $viYoutubeURL = $viYoutube['url'];
          ?>
          <?php echo l(t('Play'), $viYoutubeURL, array('attributes' => array('target' => '_blank', 'class' => 'video_lightbox', 'data-fb' => 'https://www.facebook.com/box', 'data-tw' => 'https://twitter.com/BoxHQ'))); ?>
        </div>
        <div class="cls_content">
          <?php echo $as_desc[0]['value']; ?>
        </div>
      </div>
    </div>

    <div class="content bg-gray selected_compliments clearfix">
      <div class="shadow-top">
        <h2><?php echo $kudo_title[0]['value'] ?></h2>
        <ul>
          <?php
            foreach ($wrapper->field_kudo_received as $idx => $field_kudo_received) :
              $kr_image = $field_kudo_received->field_image->value();
              $kr_desc = $field_kudo_received->field_description->value();
          ?><li>
              <img src="<?php echo file_create_url($kr_image['uri']); ?>" alt="Compliment <?php echo $idx+1; ?>">
              <p><?php echo $kr_desc; ?></p>
            </li><?php endforeach ?>
        </ul>
        <div class="mobile-content">
          <a id="viewallCompliment" href="#" class="view-all" title="View All"><?php echo $wrapper->field_link_viewall_->value() ?> &#8250;</a>
        </div>
      </div>
    </div>

  </div>

</div>