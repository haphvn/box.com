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
hide($content['comments']);
hide($content['links']);

$wrapper = entity_metadata_wrapper('node', $node);
$sections = $wrapper->field_videos_sections;

?>
  <div id="banner" class="clearfix">
    <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner, 'custom_class' => 'main-banner banner_video'))?>
  </div>
  
  <?php if (isset($wrapper->field_sub_navigation) && $wrapper->field_sub_navigation->count()):?>
  <div id="subNavi" class="fpo-sub-nav">
    <?php echo theme('sub_navigation', array('items' => $wrapper->field_sub_navigation))?>
  </div>
  <?php endif?>

  <div id="main-content">
<?php if ($sections->count()):?>

  <?php $i = 1?>
  <?php foreach ($sections as $section):?>
    <?php 
      $section_desc = $section->field_videos_section_description->value();
      $videos = $section->field_videos_section_videos;
    ?>
    
    <div class="clearfix video_list <?php echo $i == 1 ? 'first' : 'bg-gray'?>">
    <?php if ($i != 1):?>
      <div class="shadow-top">
    <?php endif?>
      
        <h2 class="sub_nav_320"></h2>
        <div class="expander">
          <?php !empty($section_desc['value']) && print $section_desc['value']?>
          <?php if ($videos->count()):?>
          
            <ul class="clearfix">
            <?php $j = 1?>
            <?php foreach ($videos as $video):?>
              <?php 
                $video_link = $video->field_videos_section_video_link->value();
                if (empty($video_link['url'])) {
                  continue;
                }
                
                $video_desc = $video->field_videos_section_video_desc->value();
                //$video_thumb = _be_youtube_screenshot($video_link['url']);
                $video_thumbs = $video->field_video_thumb->value();
                $video_cta = $video->field_cta->value();
                $video_thumb = file_create_url($video_thumbs['uri']);
                $video_lightbox_att = array('attributes' => array('target' => '_blank', 'class' => 'video_lightbox', 'data-fb' => 'https://www.facebook.com/box', 'data-tw' => 'https://twitter.com/BoxHQ'));
              ?>
              <li <?php $j % 2 == 0 && print 'class="even-block"'?>>
                <div class="video_item">
                  <div class="player">
                    <?php 
                      echo theme('imagecache_external', array('path' => $video_thumb, 'style_name'=> 'videos_thumb'));
                      echo l(t('Play'), $video_link['url'], $video_lightbox_att);
                    ?>
                  </div>
                  <?php !empty($video_desc['value']) && print $video_desc['value']?>
                  
                  <p class="learn-more"><a href="<?php echo $video_link['url'] ?>" class="video_lightbox"><?php echo $video_cta; ?></a></p>
                </div>
              </li>
              <?php $j++?>
            <?php endforeach?>
            </ul>
            <a href="javscript:void(0);" title="<?php echo t('Back to top')?>"><?php echo t('Back to top')?></a>
            
          <?php endif?>
        </div>
        
    <?php if ($i != 1):?>
      </div>
    <?php endif?>
    
    </div>
    <?php $i++?>
  <?php endforeach?>
  
<?php endif?>
  </div>   





