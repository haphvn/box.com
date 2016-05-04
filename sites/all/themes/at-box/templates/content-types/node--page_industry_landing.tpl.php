<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
  hide($content['comments']);
  hide($content['links']);
  $wrapper = entity_metadata_wrapper('node', $node);
  global $language;
  $nodes = $wrapper->field_industries_select->value();
  $themeImage = drupal_get_path('theme', 'at_box');
?>
  <div id="banner" class="clearfix">
    <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner))?>
  </div>

  <div id="main-content" class="clearfix">
    <div class="clearfix">

      <!-- Section 1 -->
      <div class="content info bg-white line-no-shadow">
        <div class="shadow-top no-shadow-top padding-bottom-60">
          <div class="col-content">
            <p><?php echo $wrapper->field_description->value(); ?></p>
          </div>
          <div class="category-list">
            <ul class="ul-list clearfix">
              <!-- item -->
              <?php
                  foreach ($nodes as $idx => $node) :
                    $image = field_get_items('node', $node, 'field_industry_thumbnail');
                    $desc = field_get_items('node', $node, 'field_industry_short_description');
              ?>
              <li class="ul-list-item <?php echo ($idx%2 == 0) ? 'even' : 'odd' ?>">
                <div class="item-box clearfix">
                  <a href="<?php echo url('node/'.$node->nid); ?>" class="ico-category">
                    <img src="<?php echo file_create_url($image[0]['uri']); ?>">
                  </a>
                  <div class="item-content">
                      <a href="<?php echo url('node/'.$node->nid); ?>" class="title"><?php echo $node->title; ?></a>
                      <?php echo $desc[0]['value']; ?>
                  </div>
                </div>
              </li>
              <?php endforeach ?>
            </ul>
          </div>
        </div>
      </div>

    </div>
  </div>