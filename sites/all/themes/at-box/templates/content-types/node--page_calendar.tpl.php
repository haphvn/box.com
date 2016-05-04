<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
$wrapper = entity_metadata_wrapper('node', $node);

$groups = _be_calendar_by_month();
module_load_include('inc', 'be', 'includes/utility');
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner))?>
</div>

<div id="subNavi" class="fpo-sub-nav">
  <?php 
    $total_month = count($groups);
  ?>
  <ul class="sub-top-nav clearfix">
  <?php $i = 1?>
  <?php foreach ($groups as $month_text => $group):?>
    <?php 
      $month_id = _be_format_id($month_text);
    ?>
    <li <?php $i == $total_month && print 'class="last-child"'?>>
      <a href="<?php echo '#'.$month_id?>" title="<?php echo check_plain($month_text)?>" class="title"><?php echo check_plain($month_text)?></a>
    </li>
    <?php $i++?>
  <?php endforeach;?>
  </ul>
</div>



<div id="main-content" class="clearfix">
  <div class="clearfix">
  
  <?php $i = 1;?>
  <?php foreach($groups as $month_text => $group):?>
    <?php 
      $month_id = _be_format_id($month_text);
    ?>
    <div class="content info <?php echo $i == 1 ? 'bg-white' : 'bg-gray'?>">
    <?php if (count($group) == 1):?>
      <?php 
        $event = current($group);
        $w_event = entity_metadata_wrapper('node', $event);
        $short_desc = $w_event->field_event_detail_desc->value();
      ?>
      <div class="shadow-top padding-bottom-60 <?php $i == 1 && print 'no-shadow-top'?> node-<?php echo $event->nid?>"> 
        <div class="title-header">
          <h2 id="<?php echo $month_id?>"><?php echo $month_text?></h2>
        </div>
        
        <?php !empty($short_desc['value']) && print $short_desc['value']?>
        
      </div>
      
    <?php else:?>
      <div class="shadow-top <?php $i == 1 && print 'no-shadow-top'?>"> 
        <div class="title-header">
          <h2 id="<?php echo $month_id?>"><?php echo $month_text?></h2>
        </div>

        <div class="slide-event">
          <ul class="slider-ul clearfix">
          <?php foreach($group as $event):?>
            <?php 
              $w_event = entity_metadata_wrapper('node', $event);
              $widget_desc = $w_event->field_event_widget_desc->value();
            ?>
            <li class="node-<?php echo $event->nid?>">
              <div class="event-wrapper">
                <?php !empty($widget_desc['value']) && print $widget_desc['value']?>
              </div>
            </li>
          <?php endforeach?>
          </ul>
        </div>
      </div>
    <?php endif?>
    </div>
    <?php $i++?>
  <?php endforeach?>
  
  </div>
</div>