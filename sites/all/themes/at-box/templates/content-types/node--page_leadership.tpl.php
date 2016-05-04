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

$mobile_description = $wrapper->field_mobile_description->value();
$team = $wrapper->field_leadership_team;

$team_list = array();
foreach ($team as $one_team) {
  $members = array();
  $w_members = $one_team->field_leadership_dept;
  foreach ($w_members as $member) {
    $member_image = $member->field_leadership_image->value();
    $member_description = $member->field_description->value();
    $member_info = array(
      'itemid' => $member->getIdentifier(),
      'avatar' => !empty($member_image['uri']) ? file_create_url($member_image['uri']) : '',
      'title' => $member->field_leader_name->value(),
      'subtitle' => $member->field_position->value(),
      'content' => !empty($member_description['value']) ? $member_description['value'] : '',
    );
    
    $member_info['connects'] = array();
    foreach ($member->field_leadership_social_links as $social_link) {
      $link = $social_link->value();
      if (!empty($link['url'])) {
        $member_info['connects'][strtolower($link['title'])] = $link['url'];
      }
    }
    $members[] = $member_info;
  }
  $team_list[$one_team->getIdentifier()] = array('members' => $members);
}
drupal_add_js(array('team' => $team_list), 'setting');
?>
<div id="banner" class="clearfix">
  <?php echo theme('hero_banner', array('hero_banner' => $wrapper->field_hero_banner))?>
</div>

<div id="main-content" class="clearfix">

  <div class="clearfix line-no-shadow">
    <div class="mobile-content page-description">
      <?php !empty($mobile_description['value']) && print($mobile_description['value'])?>
    </div>
    <?php if ($team->count() > 0):?>
      <div class="tab-container">
        <div class="tab-controls-wrapper">
          <div class="tab-controls">
            <?php $i = 1;?>
            <?php foreach ($team as $one_team):?>
              <?php 
                $team_title = check_plain($one_team->field_title->value());
                $class = array();
                $i == 1 && $class[] = 'active';
                $i == $team->count() && $class[] = 'last-child';
              ?>
              <a <?php count($class) && print 'class="'.implode(' ', $class).'"'?> href="javascript:void(0);" tab-id="<?php echo $one_team->getIdentifier(); ?>" title="<?php echo $team_title?>"><?php echo $team_title?></a>
              <?php $i++?>
            <?php endforeach?>
          </div>
        </div>
        <div class="tab-contents-wrapper">

          <?php foreach ($team as $one_team):?>
            <div class="tab-content <?php echo $one_team->field_leadership_html_class->value()?>" tab-id="<?php echo $one_team->getIdentifier(); ?>"></div>
          <?php endforeach?>

        </div>
      </div>
    <?php endif?>
  </div>

  <!-- Template -->
  <div id="template" >
    <div class="content info bg-gray tabs-list-items">
      <div class="shadow-top padding-bottom-60">
        <h2 class="title"></h2>
        <h3 class="sub-title"></h3>
        <div class="profile-left">
          <a href="javascript:void(0);" class="linkedin mobile-content hidden"></a>
          <a href="javascript:void(0);" class="twitter mobile-content hidden"></a>
          <span class="avatar"><img src="<?php echo base_path() . path_to_theme()?>/img/thumb-64x64.png" alt="" /></span>
          <a href="javascript:void(0);" class="linkedin non-mobile-content hidden"></a>
          <a href="javascript:void(0);" class="twitter non-mobile-content hidden"></a>
        </div>
        <div class="profile-right">
          <div class="description"></div>
        </div>
      </div>
    </div>
  </div>

</div>
