<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
$wrapper = entity_metadata_wrapper('node', $node);
$events_desc = $wrapper->field_events_upcoming_desc->value();
$events_image = $wrapper->field_events_upcoming_img->value();

$webinars_desc = $wrapper->field_events_webinars_desc->value();
$webinars_image = $wrapper->field_events_webinars_img->value();

$events_list = $wrapper->field_events_list;
$webinars_list = $wrapper->field_events_webinars_list;
/* @var $webinars_list EntityListWrapper */
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner))?>
</div>

<?php if (isset($wrapper->field_sub_navigation) && $wrapper->field_sub_navigation->count()):?>
<div id="subNavi" class="fpo-sub-nav">
  <?php echo theme('sub_navigation', array('items' => $wrapper->field_sub_navigation))?>
</div>
<?php endif?>

<div id="main-content" class="clearfix">
  <div class="clearfix">
  
    <div class="content info bg-white">
      <div class="shadow-top no-shadow-top"> 
        <div class="title-header">
          <?php !empty($events_desc['value']) && print $events_desc['value']?>
        </div>
        
        <div class="slide-event clearfix">
          <ul class="slider-ul">
          <?php $number_of_block = 0?>
          <?php if (!empty($events_image['uri'])):?>
            <?php $number_of_block++?>
            <li class="event-image">
              <div class="event-wrapper">
                <?php echo theme('image_style', array('style_name' => 'events_landing', 'path' => $events_image['uri']))?>
              </div>
            </li>
          <?php endif?>
          
          <?php if ($events_list->count()):?>
            <?php $limit = floor(($events_list->count() - $number_of_block) / 2)?>
            <?php foreach ($events_list as $index => $event):?>
              <?php 
                if ($index >= $limit) {
                  continue;
                }
                $event_desc = $event->field_event_block_desc->value();
                $events_list->offsetUnset($index);
              ?>
            <li>
              <div class="event-wrapper">
                <?php !empty($event_desc['value']) && print $event_desc['value']?>
              </div>
            </li>
            <?php endforeach?>
          <?php endif?>
          </ul>
          
          <?php if ($events_list->count()):?>
          <ul class="slider-ul">
            <?php foreach ($events_list as $index => $event):?>
              <?php 
                $event_desc = $event->field_event_block_desc->value();
              ?>
            <li>
              <div class="event-wrapper">
                <?php !empty($event_desc['value']) && print $event_desc['value']?>
              </div>
            </li>
            <?php endforeach?>
          </ul>
          <?php endif?>
          
          <a href="<?php echo url('events/calendar')?>" class="more-view"><?php echo t('See more events')?> &#8250;</a>
        </div>
        
      </div>
    </div>
      
      
    <div class="content info bg-gray">
      <div class="shadow-top"> 
        <div class="title-header">
          <?php !empty($webinars_desc['value']) && print $webinars_desc['value']?>
        </div>
  
        <div class="slide-event clearfix">
          <ul class="slider-ul">
          <?php $number_of_block = 0?>
          <?php if (!empty($webinars_image['uri'])):?>
            <?php $number_of_block++?>
            <li class="event-image">
              <div class="event-wrapper">
                <?php echo theme('image_style', array('style_name' => 'events_landing', 'path' => $webinars_image['uri']))?>
              </div>
            </li>
          <?php endif?>
          
          
          <?php if ($webinars_list->count()):?>
            <?php $limit = floor(($webinars_list->count() - $number_of_block) / 2)?>
            <?php foreach ($webinars_list as $index => $webinar):?>
              <?php 
                if ($index >= $limit) {
                  continue;
                }
                $webinar_desc = $webinar->field_webinar_block_desc->value();
                $webinars_list->offsetUnset($index);
              ?>
            <li>
              <div class="event-wrapper">
                <?php !empty($webinar_desc['value']) && print $webinar_desc['value']?>
              </div>
            </li>
            <?php endforeach?>
          <?php endif?>
          </ul>
          
          <?php if ($webinars_list->count()):?>
          <ul class="slider-ul">
            <?php foreach ($webinars_list as $index => $webinar):?>
              <?php 
                $webinar_desc = $webinar->field_webinar_block_desc->value();
              ?>
            <li>
              <div class="event-wrapper">
                <?php !empty($webinar_desc['value']) && print $webinar_desc['value']?>
              </div>
            </li>
            <?php endforeach?>
          </ul>
          <?php endif?>
          <a href="javascript:void(0);" class="more-view"><?php echo t('See more webinars')?> &#8250;</a>
        </div>
  
      </div>
    </div>
  </div>
</div>