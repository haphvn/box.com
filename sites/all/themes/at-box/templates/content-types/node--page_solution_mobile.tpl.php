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
$block_1         = $wrapper->field_sol_mobile_block_1->value();
$block_2_desc    = $wrapper->field_sol_mobile_block_2_desc->value();
$image_desktop   = $wrapper->field_block_2_img->value();
$image_tablet    = $wrapper->field_block_2_image_tablet->value();
$image_mobile    = $wrapper->field_block_2_image_mobile->value();
$block_3         = $wrapper->field_sol_mobile_block_3->value();
$box_for_mobiles = $wrapper->field_box_for_mobile;
$more_blocks     = $wrapper->field_sol_mobile_more_block;
$arr_mobile = array();
$detect = new Mobile_Detect();
foreach ($box_for_mobiles as $box_for_mobile){
  $box_for_mobile_desc = $box_for_mobile->field_box_for_mobile_desc->value();
  $box_for_mobile_platform = $box_for_mobile->field_platforms->value();
  $platform = field_get_items('taxonomy_term', $box_for_mobile_platform, 'field_key');
  $mobile = array();
  $mobile['title']    = $box_for_mobile->field_box_for_mobile_title->value();
  $mobile['desc']     = $box_for_mobile_desc['value'];
  $mobile['platform'] = $platform[0]['value'];
  if ($detect->isIphone() && $platform[0]['value'] == 'ios') {
    drupal_add_js(array('blockMobile' => array('active' => $platform[0]['value'])), 'setting');
  }
  elseif ($detect->isAndroidOS() && $platform[0]['value'] == 'android') {
    drupal_add_js(array('blockMobile' => array('active' => $platform[0]['value'])), 'setting');
  }
  elseif ($detect->isBlackBerry() && $platform[0]['value'] == 'blackberry') {
    drupal_add_js(array('blockMobile' => array('active' => $platform[0]['value'])), 'setting');
  }
  $arr_mobile[] = $mobile;
}
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner)); ?>
</div>

<?php if (isset($wrapper->field_sub_navigation) && $wrapper->field_sub_navigation->count()):?>
<div id="subNavi" class="fpo-sub-nav">
  <?php echo theme('sub_navigation', array('items' => $wrapper->field_sub_navigation))?>
</div>
<?php endif?>

<div id="main-content" class="clearfix">
  <div class="clearfix">
  
    <div class="content info bg-world"><?php !(empty($block_1['value'])) && print $block_1['value']; ?></div>
    <div class="content info bg-gray">
      <div class="shadow-top box-for-mobile-penel">
        <div class="col-content">
          <?php !(empty($block_2_desc['value'])) && print $block_2_desc['value']; ?>
          <div class="select-devices">
            <ul class="tabs">
            <?php foreach ($arr_mobile as $mobile): ?>
              <li><a href="#<?php print $mobile['platform']; ?>-device" class="<?php print $mobile['platform']; ?>" title="<?php print $mobile['title']; ?>"></a></li>
            <?php endforeach; ?>
            </ul>
            <div class="des-for-device-block">
            <?php foreach ($arr_mobile as $mobile): ?>
                <div class="des-for-device-item" id="<?php print $mobile['platform']; ?>-device">
                  <h3 class="<?php print $mobile['platform']; ?>"><?php print $mobile['title']; ?></h3>
                  <div class="des-for-device-content"><?php print $mobile['desc']; ?></div>
                </div><!-- end .des-for-device-item -->
            <?php endforeach; ?>
            </div><!-- end .des-for-device-block -->
          </div><!-- end .select-devices -->
        </div><!-- end .col-content -->
        <div class="col-img">
          <img src="<?php print file_create_url($image_mobile['uri']); ?>" class="img-mobile" alt="<?php print $image_mobile['alt']; ?>"/>
          <img src="<?php print file_create_url($image_tablet['uri']); ?>" class="img-tablet" alt="<?php print $image_tablet['alt']; ?>"/>
          <img src="<?php print file_create_url($image_desktop['uri']); ?>" class="img-desktop" alt="<?php print $image_desktop['alt']; ?>"/>
        </div><!-- end .col-img -->
      </div><!-- end .box-for-mobile-penel -->
    </div><!-- end .content info bg-gray -->
    <div class="content info bg-gray">
      <div class="shadow-top"><?php !(empty($block_3['value'])) && print $block_3['value']; ?></div>
    </div><!-- end .content info bg-gray -->
    <?php if ($more_blocks->count() > 0): ?>
      <?php foreach ($more_blocks as $block): ?>
        <?php
          $enable = $block->field_sol_mobile_block_enable->value();
          if (empty($enable)) {
            continue;
          } 
          $block_desc = $block->field_sol_mobile_block_desc->value(); 
        ?>
        <div class="content info bg-gray"><div class="shadow-top">
          <?php print $block_desc['value']; ?>
        </div></div>
      <?php endforeach; ?>
    <?php endif; ?>
  </div><!-- end .clearfix -->
</div><!-- end #main-content -->