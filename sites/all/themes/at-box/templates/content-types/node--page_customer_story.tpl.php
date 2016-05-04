<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
/**
 * @file
 * Adaptivetheme implementation to display a node.
 *
 * Adaptivetheme variables:
 * AT Core sets special time and date variables for use in templates:
 * - $submitted: Submission information created from $name and $date during
 *   adaptivetheme_preprocess_node(), uses the $publication_date variable.
 * - $datetime: datetime stamp formatted correctly to ISO8601.
 * - $publication_date: publication date, formatted with time element and
 *   pubdate attribute.
 * - $datetime_updated: datetime stamp formatted correctly to ISO8601.
 * - $last_update: last updated date/time, formatted with time element and
 *   pubdate attribute.
 * - $custom_date_and_time: date time string used in $last_update.
 * - $header_attributes: attributes such as classes to apply to the header element.
 * - $footer_attributes: attributes such as classes to apply to the footer element.
 * - $links_attributes: attributes such as classes to apply to the nav element.
 * - $is_mobile: Bool, requires the Browscap module to return TRUE for mobile
 *   devices. Use to test for a mobile context.
 *
 * Available variables:
 * - $title: the (sanitized) title of the node.
 * - $content: An array of node items. Use render($content) to print them all,
 *   or print a subset such as render($content['field_example']). Use
 *   hide($content['field_example']) to temporarily suppress the printing of a
 *   given element.
 * - $user_picture: The node author's picture from user-picture.tpl.php.
 * - $date: Formatted creation date. Preprocess functions can reformat it by
 *   calling format_date() with the desired parameters on the $created variable.
 * - $name: Themed username of node author output from theme_username().
 * - $node_url: Direct url of the current node.
 * - $display_submitted: Whether submission information should be displayed.
 * - $classes: String of classes that can be used to style contextually through
 *   CSS. It can be manipulated through the variable $classes_array from
 *   preprocess functions. The default values can be one or more of the
 *   following:
 *   - node: The current template type, i.e., "theming hook".
 *   - node-[type]: The current node type. For example, if the node is a
 *     "Blog entry" it would result in "node-blog". Note that the machine
 *     name will often be in a short form of the human readable label.
 *   - node-teaser: Nodes in teaser form.
 *   - node-preview: Nodes in preview mode.
 *   The following are controlled through the node publishing options.
 *   - node-promoted: Nodes promoted to the front page.
 *   - node-sticky: Nodes ordered above other non-sticky nodes in teaser
 *     listings.
 *   - node-unpublished: Unpublished nodes visible only to administrators.
 * - $title_prefix (array): An array containing additional output populated by
 *   modules, intended to be displayed in front of the main title tag that
 *   appears in the template.
 * - $title_suffix (array): An array containing additional output populated by
 *   modules, intended to be displayed after the main title tag that appears in
 *   the template.
 *
 * Other variables:
 * - $node: Full node object. Contains data that may not be safe.
 * - $type: Node type, i.e. story, page, blog, etc.
 * - $comment_count: Number of comments attached to the node.
 * - $uid: User ID of the node author.
 * - $created: Time the node was published formatted in Unix timestamp.
 * - $classes_array: Array of html class attribute values. It is flattened
 *   into a string within the variable $classes.
 * - $zebra: Outputs either "even" or "odd". Useful for zebra striping in
 *   teaser listings.
 * - $id: Position of the node. Increments each time it's output.
 *
 * Node status variables:
 * - $view_mode: View mode, e.g. 'full', 'teaser'...
 * - $teaser: Flag for the teaser state (shortcut for $view_mode == 'teaser').
 * - $page: Flag for the full page state.
 * - $promote: Flag for front page promotion state.
 * - $sticky: Flags for sticky post setting.
 * - $status: Flag for published status.
 * - $comment: State of comment settings for the node.
 * - $readmore: Flags true if the teaser content of the node cannot hold the
 *   main body content.
 * - $is_front: Flags true when presented in the front page.
 * - $logged_in: Flags true when the current user is a logged-in member.
 * - $is_admin: Flags true when the current user is an administrator.
 *
 * Field variables: for each field instance attached to the node a corresponding
 * variable is defined, e.g. $node->body becomes $body. When needing to access
 * a field's raw values, developers/themers are strongly encouraged to use these
 * variables. Otherwise they will have to explicitly specify the desired field
 * language, e.g. $node->body['en'], thus overriding any language negotiation
 * rule that was previously applied.
 *
 * @see template_preprocess()
 * @see template_preprocess_node()
 * @see template_process()
 * @see adaptivetheme_preprocess_node()
 * @see adaptivetheme_process_node()
 */

/**
 * Hiding Content and Printing it Separately
 * Use the hide() function to hide fields and other content, you can render it
 * later using the render() function. Install the Devel module and use
 * <?php print dsm($content); ?> to find variable names to hide() or render().
 */
  $wrapper = entity_metadata_wrapper('node', $node);
  $field_descriptions = $wrapper->field_descriptions->value();
  $field_description_mobile = $wrapper->field_customer_story_desc_mobile->value();
  $image = $wrapper->field_image->value();
  $field_youtube = $wrapper->field_youtube->value();
  $title = $wrapper->title->value();
  $case_studies = array();
  $customer_ref = $wrapper->field_customer_ref->value();
  foreach ($wrapper->field_case_study as $i => $case_study) {
    $pdf_file = $case_study->field_case_study_pdf->value();
    $pdf_file_size = round($pdf_file['filesize'] / 1024, 1).'Kb';
    $flash_link = $case_study->field_case_study_file->value();
    
    $case_studies[$i] = array(
      'flash_url' => !empty($flash_link['url']) ? $flash_link['url'] : '',
      'url' => url('download-case-study/' . $pdf_file['fid']),
      'link_title' => $case_study->field_case_study_download->value(),/* t('Download Case Study #!number (!file_size)', 
          array('!number' => $i+1, '!file_size' => $pdf_file_size)) */
      'pdf_title' => $case_study->field_case_study_pdf_title->value()
    );
  }
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner, 'custom_class' => 'main-banner banner_t5'))?>
</div>
<div id="main-content" class="clearfix">
  <div class="clearfix page_t5 line-no-shadow">
    <div class="content bg-white no-shadow-top video_t5">
    
      <h2 id="watchVideo"><?php echo $title ?></h2>
      <div class="video_outer clearfix">
        <div class="video_item <?php empty($field_youtube['url']) && print 'no-video'?>">
          <div class="non-tablet-content <?php empty($field_youtube['url']) && print 'full-screen'?>">
            <?php !empty($field_descriptions['value']) && print $field_descriptions['value'];?>
          </div><!-- end .non-tablet-content -->
          
          <div class="v320">
            <?php !empty($field_description_mobile['value']) && print $field_description_mobile['value']?>
          </div>
          
          <?php if (!empty($field_youtube['url'])):?>
          <div id="t5_video_outer">
            <div id="t5_video" class="jwvideo">
              <img src="<?php echo file_create_url($image['uri']); ?>" alt="<?php echo $title ?>" />
              <?php 
                echo l(t('Play'), $field_youtube['url'], array('attributes' => array(
                  'target' => '_blank', 
                  'class' => 'video_lightbox',
                  'data-fb' => 'https://www.facebook.com/box', 
                  'data-tw' => 'https://twitter.com/BoxHQ'
                ))) 
              ?>
            </div><!-- end #t5_video -->
          </div><!-- end #t5_video_outer -->
          <?php endif?>
          
          <div class="tablet-content">
            <?php !empty($field_descriptions['value']) && print $field_descriptions['value'];?>
          </div><!-- end .tablet-content -->
          
        </div><!-- end .video_item -->
      </div><!-- end .video_outer -->
    </div><!-- end .content bg-white no-shadow-top video_t5 -->
    
  <?php if (count($case_studies) > 0):?>
    <div class="content bg-white no-shadow-top v320 pdf_file">
    <?php foreach ($case_studies as $case_study):?>
      <a href="<?php echo $case_study['url'] ?>" title="<?php echo $case_study['link_title'] ?> &#8250;">
        <?php echo $case_study['link_title']?>
      </a>
    <?php endforeach; ?>
    </div><!-- end .v320 pdf_file -->
    
    <div class="content v720 tablet-content">
      <div class="pdf_file">
      <?php foreach ($case_studies as $case_study):?>
        <a href="<?php echo $case_study['url'] ?>" title="<?php echo $case_study['link_title'] ?> &#8250;">
          <?php echo $case_study['link_title']?>
        </a>
      <?php endforeach; ?>
      </div><!-- end .pdf_file -->
    </div><!-- end .content v720 tablet-content -->
  <?php endif?>
  
  <?php if (count($case_studies) > 0):?>
    <div class="content bg-gray customer_pdf clearfix v720 non-tablet-content"  id="readCaseStudy">
      <div class="shadow-top">
      <?php foreach ($case_studies as $key => $case_study):?>
        <h3 tab-id="<?php echo $key?>" style="display:none"><?php echo $case_study['pdf_title']; ?></h3>
      <?php endforeach?>
        <div  id="pdf_iframe_link">
          <div class="tab-controls-wrapper">
            <div class="tab-controls">
            <?php foreach ($case_studies as $key => $case_study):?>
              <?php 
                $tab_title = t('Case Study !number', array('!number' => $key + 1));
              ?>
              <a href="javascript:void(0);" tab-id="<?php echo $key?>"  title="<?php echo $tab_title?>" <?php $key + 1 == count($case_studies) && print 'class="last-child"'?>><?php echo $tab_title?></a>
            <?php endforeach?>
            </div>
          </div>
          
          <div class="tab-contents-wrapper">
          <?php foreach ($case_studies as $key => $case_study):?>
            <div class="tab-content" tab-id="<?php echo $key?>">
              <embed id="pdf_embed_<?php echo $key?>" src="<?php echo $case_study['flash_url']?>" height="591" width="869" type="application/x-shockwave-flash" wmode="opaque" allowFullScreen="true">
            </div>
          <?php endforeach?>
          </div>
        </div>
            
      </div><!-- end .shadow-top -->
      
      <div class="pdf_file">
      <?php foreach ($case_studies as $case_study):?>
        <a href="<?php echo $case_study['url'] ?>" title="<?php echo $case_study['link_title'] ?>"><?php echo $case_study['link_title'] ?> &#8250;</a>
      <?php endforeach?>
      </div>
      
    </div><!-- end .customer_pdf -->
  <?php endif?>
    <div class="content bg-gray customer_stories clearfix v720 non-tablet-content">
      <?php print views_embed_view('related_customer', 'block_related_customer', $node->nid, $customer_ref->tid, $node->language); ?>
    </div><!-- end .customer_stories -->
  </div><!-- end .page_t5 -->
</div><!-- end #main-content -->