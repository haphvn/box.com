<?php
global $language;
$vocabulary_customers_logo = taxonomy_vocabulary_machine_name_load('customers_logo');
$vid = $vocabulary_customers_logo->vid;
if (!empty($vid)) {
  $items = taxonomy_get_tree($vid, 0, null, true);
}
?>
<div class="slide-wrapper">
  <div class="slider-wrapper">
    <div class="slider-container">
      <div class="slider-caption">
        <?php if ($block->subject): ?>
          <?php print $block->subject ?>
        <?php endif;?>
        <?php print $content ?>
      </div>
      <ul class="slider-ul">
        <?php foreach ($items as $item) : ?>
          <?php
            $tid = $item->tid;
            $term = taxonomy_term_load($tid);
            if ($image_items = field_get_items('taxonomy_term', $term, 'field_client_logo')) {
              $uri = $image_items[0]['uri'];
              $image_item = file_create_url($uri);
            }
            if ($item->language == $language->language) :
          ?>
          <li><a href="#"><img src="<?php echo $image_item ?>" ></a></li>
            <?php endif ?>
        <?php endforeach ?>
      </ul>
    </div>
  </div>
</div>

<!-- List logo clients for smaller 720px res (mobile ver) -->
<div class="mobile-content content info bg-white">
  <div class="shadow-top">
    <div class="list-clients">
      <?php if ($block->subject): ?>
        <h2><?php print $block->subject ?></h2>
      <?php endif;?>
      <ul class="list-clients-ul clearfix">
        <?php
        foreach ($items as $id => $item) :
          $tid = $item->tid;
          $term = taxonomy_term_load($tid);
          if ($image_items = field_get_items('taxonomy_term', $term, 'field_client_logo')) {
            $uri = $image_items[0]['uri'];
            $image_item = file_create_url($uri);
          }
          //@todo have to review code
          if ($item->language == $language->language && $id < 36) :
            ?>
            <li class="<?php echo ($id % 2 == 0) ? 'odd' : 'even' ?>">
              <a href="#" title=""><img src="<?php echo $image_item ?>" alt=""/></a>
            </li>
          <?php endif ?>
        <?php endforeach ?>
      </ul>
      <?php echo $content ?>
    </div>
  </div>
</div>
<!-- End List logo clients-->