<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
/**
 * @file
 * Bartik's theme implementation to display a node.
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
 * - $node_url: Direct URL of the current node.
 * - $display_submitted: Whether submission information should be displayed.
 * - $submitted: Submission information created from $name and $date during
 *   template_preprocess_node().
 * - $classes: String of classes that can be used to style contextually through
 *   CSS. It can be manipulated through the variable $classes_array from
 *   preprocess functions. The default values can be one or more of the
 *   following:
 *   - node: The current template type; for example, "theming hook".
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
 * - $type: Node type; for example, story, page, blog, etc.
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
 * - $view_mode: View mode; for example, "full", "teaser".
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
 * variable is defined; for example, $node->body becomes $body. When needing to
 * access a field's raw values, developers/themers are strongly encouraged to
 * use these variables. Otherwise they will have to explicitly specify the
 * desired field language; for example, $node->body['en'], thus overriding any
 * language negotiation rule that was previously applied.
 *
 * @see template_preprocess()
 * @see template_preprocess_node()
 * @see template_process()
 */
hide($content['comments']);
hide($content['links']);
global $language;
$wrapper = entity_metadata_wrapper('node', $node);
$themeImage = drupal_get_path('theme', 'at_box');
$body = $wrapper->body->value();

$field_region = $wrapper->field_region->value();
$regions = list_allowed_values(field_info_field('field_region'));
$custom_class = ($field_region == 'us') ? 'career-us': (($field_region == 'eu') ? 'career-eu' : '');
?>
<div id="banner" class="clearfix <?php print $custom_class; ?>">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner, 'custom_class' => 'main-banner career'))?>
</div>

<div id="main-content">
    <div class="clearfix">
        <div class="content_main bottom_image line-no-shadow">
            <?php !empty($body['value']) && print($body['value'])?>
        </div>
        <div class="clearfix bg-gray content-main-gird">
          <div class="shadow-top">
            <div class="block_sub_nav">
              <div class="tab-container">
                <div class="tab-controls-wrapper">
                  <div class="tab-controls">
                  <?php $i = 0; ?>
                  <?php foreach($regions as $key => $region): ?>
                  <?php $career = _be_get_careers_by_region($key, $node->language); ?>
                    <a href="<?php print ($field_region==$key) ? "javascript:void(0);" : url('node/' . $career->nid, array('absolute' => true)); ?>" tab-id="<?php print $i; ?>" title="<?php print $region; ?>" 
                       class="<?php ($i==count($regions)-1) && print 'last-child'; ?> <?php ($field_region==$key) && print 'active'; ?>">
                      <?php print $region; ?>
                    </a>
                    <?php $i++; ?>
                  <?php endforeach; ?>
                  </div>
                </div>
              </div><!-- end .tab-container -->
            </div><!-- end .block_sub_nav -->
            
            <!-- <h3 class="sub-title"> -->
              <?php
                /* $intro = field_get_items('node', $node, 'field_introduction');
                if (!empty($intro[0]['value'])) {
                  echo $intro[0]['value'];
                } */
              ?>
            <!-- </h3> -->

            <div class="content_grid clearfix <?php print $custom_class; ?>">
              <ul>
              <?php 
              foreach ($wrapper->field_our_positions as $field_our_positions) :
              $positionTitle = $field_our_positions->field_position_title->value();
              //echo "<pre>"; print_r($positionTitle);
              //$tid = $positionTitle->tid;
              $imageC = $field_our_positions->field_position_image->value();
              
              ?> 
                <li>
                  <a href="<?php echo url($positionTitle['url']); ?>">
                  <?php
                  $image = array(
                    'path' => $imageC['uri'],
                    'alt' => $imageC['alt'],
                    'title' => $imageC['title'],
                    'style_name' => 'career',
                  );
                  print theme('image_style', $image);
                  ?>
                  </a>
                  <div class="text">
                    <a class="strong" href="<?php echo url($positionTitle['url']); ?>"><?php print $positionTitle['title']; ?></a>
                    <span><?php print $field_our_positions->field_position_description->value(); ?></span>
                  </div>
                </li>
              <?php endforeach ?>
              </ul>
            </div>
          </div>
        </div>      
        <!-- End Section 2 -->
        <!-- Section 3 -->
        <div class="bg-gray clearfix">
           <div class="buttons_3 group-link-bottom shadow-top">
            <ul class="list-button"> 
              <li>
                <?php $field_link1 = $wrapper->field_view_all_open_positions->value(); ?>
                <a target="_blank" href="<?php echo url($field_link1['url']); ?>" class="btnGray" title="<?php echo check_plain($field_link1['title']); ?>"><?php echo $field_link1['title']; ?></a>
              </li>
              <li class="btn-box">
                <?php $field_link2 = $wrapper->field_why_work_at_box->value(); ?>
                <a target="_blank" href="<?php echo url($field_link2['url']); ?>" class="iconImg ico-fpo-box video_lightbox" title="<?php echo check_plain($field_link2['title']); ?>" data-fb="https://www.facebook.com/box" data-tw="https://twitter.com/BoxHQ"><?php echo $field_link2['title']; ?></a>
              </li>
              <li class="btn-box">
                <?php $field_link3 = $wrapper->field_watch_come_work_at->value(); ?>
                <a target="_blank" href="<?php echo url($field_link3['url']); ?>" class="iconImg ico-fpo-play video_lightbox" title="<?php echo check_plain($field_link3['title']); ?>" data-fb="https://www.facebook.com/box" data-tw="https://twitter.com/BoxHQ"><?php echo $field_link3['title']; ?></a>
              </li>
            </ul>
          </div>
        </div>      
        <!-- End Section 3 -->
    </div>
</div>