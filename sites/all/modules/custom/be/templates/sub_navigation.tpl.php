<?php 
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
?>
<ul class="sub-top-nav clearfix">
<?php $i = 1?>
<?php foreach ($items as $item):?>
  <?php 
    $link = $item->value();
    $attributes = array_merge($link['attributes'], array('class' => 'title'));
  ?>
  <li <?php $i == $items->count() && print 'class="last-child"'?>>
    <?php echo l($link['title'], $link['url'], array('attributes' => $attributes))?>
  </li>
  <?php $i++?>
<?php endforeach;?>
</ul>