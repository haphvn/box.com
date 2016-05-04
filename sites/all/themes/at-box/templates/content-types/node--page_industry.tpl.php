<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
hide($content['comments']);
hide($content['links']);
$wrapper = entity_metadata_wrapper('node', $node);

module_load_include('inc', 'be', 'includes/utility');
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner))?>
</div>

<div id="main-content" class="clearfix">
  <div class="clearfix">

    <!-- Section 1 -->
    <div class="content info bg-white line-no-shadow">
      <div class="shadow-top no-shadow-top padding-bottom-60">
        <div class="block-list-wrapper no-image">
          <?php 
            $short_desc = $wrapper->field_industry_use_cases_desc->value();
            !empty($short_desc['value']) && print $short_desc['value'];
          ?>
          <?php if ($wrapper->field_industry_use_cases->count()):?>
          <ul class="list-parent">
            <?php foreach ($wrapper->field_industry_use_cases as $idx => $use_case):?>
              <?php 
                $use_case_image = $use_case->field_industry_use_case_image->value();
                $use_case_description = $use_case->field_industry_use_case_desc->value();
              ?>
              <li class="<?php echo ($idx%2 == 0) ? 'even' : 'odd' ?>" >
                <div class="clearfix">
                <?php if (!empty($use_case_image['uri'])):?>
                  <div class="list-ico">
                    <?php
                      $image = array(
                        'path' => $use_case_image['uri'],
                        'alt' => $use_case_image['alt'],
                        'title' => $use_case_image['title'],
                        'style_name' => 'industry_thumb',
                      );
                      print theme('image_style', $image);
                    ?>
                  </div>
                <?php endif?>
                
                  <div class="list-content">
                    <?php !empty($use_case_description['value']) && print $use_case_description['value']?>
                  </div>
                </div>
              </li>
            <?php endforeach ?>
          </ul>
          <?php endif?>
        </div>
    
      </div>
    </div>
    
    <!-- Section 2: Slider & dynamic content -->
    <div class="content info bg-gray">
      <div class="shadow-top padding-bottom-60 block-customer-story">
        <!-- Content for mobile/res smaller 720px -->
        <div class="block-mobile-content">
          <h2 class="title"><?php echo t('Case Studies')?></h2>
          
        <?php if ($wrapper->field_industry_slider->count()):?>  
          <ul class="list-parent">
          <?php foreach ($wrapper->field_industry_slider as $case_study):?>
            <?php 
              $case_study_logo = $case_study->field_industry_slider_logo->value();

              if (empty($case_study_logo['uri'])) {
                continue;
              }
              $case_study_title = $case_study->field_industry_slider_title->value();
              $case_study_description = $case_study->field_industry_slider_desc->value();
              $case_study_id = _be_format_id($case_study_title);
              $case_study_link = $case_study->field_industry_slider_link->value();
            ?>
            <li data-content="<?php echo '#'.$case_study_id?>">
              <div class="list-ico"><img src="<?php echo file_create_url($case_study_logo['uri'])?>" alt="<?php echo check_plain($case_study_title)?>"></div>
              <div class="list-content">
                <?php !empty($case_study_description['value']) && print $case_study_description['value']?>
                
              <?php if (!empty($case_study_link['url'])):?> 
                <a href="<?php echo url($case_study_link['url'])?>" <?php echo drupal_attributes(array_merge($case_study_link['attributes'], array('class' => 'view-story')))?>><?php echo t('View <span>!use_case_title</span> Customer Story', array('!use_case_title' => $case_study_title))?> &#8250;</a>
              <?php endif?>              
              </div>
            </li>
          <?php endforeach?>
          </ul>
        <?php endif?>
        </div>

        <!-- Cotnent for tablet/desktop/res from 720px -->
        <div class="block-notmobile-content">
        <?php if ($wrapper->field_industry_slider->count()):?>  
          <div class="slide-wrapper">
            <div class="slider-wrapper">
              <ul class="slider-ul">
              <?php foreach ($wrapper->field_industry_slider as $case_study):?>
                <?php 
                  $case_study_logo = $case_study->field_industry_slider_logo->value();
                  if (empty($case_study_logo['uri'])) {
                    continue;
                  }
                  $case_study_title = $case_study->field_industry_slider_title->value();
                  $case_study_id = _be_format_id($case_study_title);
                ?>
                <li data-content="<?php echo '#'.$case_study_id?>"><a href="javascript:void(0);"><img src="<?php echo file_create_url($case_study_logo['uri'])?>" alt="<?php echo check_plain($case_study_title)?>"></a></li>
              <?php endforeach?>
              </ul>
            </div>
          </div>

          <div class="content-wrapper">
            <div class="slider-content">
              <!-- Load content here -->
              
            </div>          
          </div>
        <?php endif?>
        </div>
      </div>
    </div>
    
  <?php if ($wrapper->field_industry_more_blocks->count()):?>
    <?php foreach ($wrapper->field_industry_more_blocks as $block):?>
    <?php $block_description = $block->value()?>
    <div class="content info bg-gray">
      <div class="shadow-top"> 
        <?php !empty($block_description['value']) && print $block_description['value']?>
      </div>
    </div>
    <?php endforeach?>
  <?php endif?>
  </div>
</div>