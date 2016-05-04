<?php
/**
 * @file
 * Adaptivetheme implementation to display a single Drupal page.
 *
 * Available variables:
 *
 * Adaptivetheme supplied variables:
 * - $site_logo: Themed logo - linked to front with alt attribute.
 * - $site_name: Site name linked to the homepage.
 * - $site_name_unlinked: Site name without any link.
 * - $hide_site_name: Toggles the visibility of the site name.
 * - $visibility: Holds the class .element-invisible or is empty.
 * - $primary_navigation: Themed Main menu.
 * - $secondary_navigation: Themed Secondary/user menu.
 * - $primary_local_tasks: Split local tasks - primary.
 * - $secondary_local_tasks: Split local tasks - secondary.
 * - $tag: Prints the wrapper element for the main content.
 * - $is_mobile: Bool, requires the Browscap module to return TRUE for mobile
 *   devices. Use to test for a mobile context.
 * - *_attributes: attributes for various site elements, usually holds id, class
 *   or role attributes.
 *
 * General utility variables:
 * - $base_path: The base URL path of the Drupal installation. At the very
 *   least, this will always default to /.
 * - $directory: The directory the template is located in, e.g. modules/system
 *   or themes/bartik.
 * - $is_front: TRUE if the current page is the front page.
 * - $logged_in: TRUE if the user is registered and signed in.
 * - $is_admin: TRUE if the user has permission to access administration pages.
 *
 * Site identity:
 * - $front_page: The URL of the front page. Use this instead of $base_path,
 *   when linking to the front page. This includes the language domain or
 *   prefix.
 * - $logo: The path to the logo image, as defined in theme configuration.
 * - $site_slogan: The slogan of the site, empty when display has been disabled
 *   in theme settings.
 *
 * Navigation:
 * - $main_menu (array): An array containing the Main menu links for the
 *   site, if they have been configured.
 * - $secondary_menu (array): An array containing the Secondary menu links for
 *   the site, if they have been configured.
 * - $breadcrumb: The breadcrumb trail for the current page.
 *
 * Page content (in order of occurrence in the default page.tpl.php):
 * - $title_prefix (array): An array containing additional output populated by
 *   modules, intended to be displayed in front of the main title tag that
 *   appears in the template.
 * - $title: The page title, for use in the actual HTML content.
 * - $title_suffix (array): An array containing additional output populated by
 *   modules, intended to be displayed after the main title tag that appears in
 *   the template.
 * - $messages: HTML for status and error messages. Should be displayed
 *   prominently.
 * - $tabs (array): Tabs linking to any sub-pages beneath the current page
 *   (e.g., the view and edit tabs when displaying a node).
 * - $action_links (array): Actions local to the page, such as 'Add menu' on the
 *   menu administration interface.
 * - $feed_icons: A string of all feed icons for the current page.
 * - $node: The node object, if there is an automatically-loaded node
 *   associated with the page, and the node ID is the second argument
 *   in the page's path (e.g. node/12345 and node/12345/revisions, but not
 *   comment/reply/12345).
 *
 * Core Regions:
 * - $page['help']: Dynamic help text, mostly for admin pages.
 * - $page['highlighted']: Items for the highlighted content region.
 * - $page['content']: The main content of the current page.
 * - $page['sidebar_first']: Items for the first sidebar.
 * - $page['sidebar_second']: Items for the second sidebar.
 * - $page['header']: Items for the header region.
 * - $page['footer']: Items for the footer region.
 *
 * Adaptivetheme Regions:
 * - $page['leaderboard']: full width at the very top of the page
 * - $page['menu_bar']: menu blocks placed here will be styled horizontal
 * - $page['secondary_content']: full width just above the main columns
 * - $page['content_aside']: like a main content bottom region
 * - $page['tertiary_content']: full width just above the footer
 *
 * @see template_preprocess()
 * @see template_preprocess_page()
 * @see template_process()
 * @see adaptivetheme_preprocess_page()
 * @see adaptivetheme_process_page()
 */
$desc_mobile = field_get_items('taxonomy_term', $term, 'field_description_mobile');
?>
<?php // HEADER REGION ?>
<div id="main-dropdown">
	<?php echo $mobile_lang; ?>
	<?php print render($page['main_dropdown']); ?>
</div>
<div id="header" class="<?php print $secondary_menu ? 'with-secondary-menu': 'without-secondary-menu'; ?>">
	<div id="top-menu">
		<?php if ($logo): ?>
			<div id="logo-block">
				<h1><a href="<?php print $front_page; ?>" title="<?php print t('Home'); ?>" rel="home" id="logo">
					<img src="<?php print $logo; ?>" alt="Box.com" />
				</a></h1>
			</div>
		<?php endif; ?>
		<?php print render($page['header']); ?>
	</div>
</div>
<?php // /END HEADER REGION ?>

<div id="main-content">
  <div class="third-party-page clearfix">
    <div class="page-header">
      <h1 class="title"><?php print $term->name; ?></h1>
      <div class="v720"><?php !empty($term->description) && print $term->description; ?></div>
      <div class="v320"><?php !empty($desc_mobile[0]['value']) && print $desc_mobile[0]['value']; ?></div>
  </div>
</div>

<?php if ($page['tertiary_content']): ?>
<div id="slide-block">
  <div class="clearfix bg-gray">
    <div class="content info line-no-shadow">
      <!-- region: Tertiary Content -->
      <?php print render($page['tertiary_content']); ?>
    </div>
  </div>    
</div>  
<?php endif; ?>

<?php // FOOTER REGION ?>
<?php if ($page['footer'] || $page['footer_content_left'] || $page['footer_content_right'] || $page['footer_nav']): ?>
<div id="footer">
	<div class="footer-wrapper footer_v1">
		<?php if ($page['footer']): ?>
      <div class="footer-mobile">
        <div class="footer-mb-item">
			    <?php print render($page['footer']); ?>
        </div>
      </div>
		<?php endif; ?>
		
		<?php if ($page['footer_content_left'] || $page['footer_content_left']): ?>
			<div id="footer-content" class="footer-content clearfix">
				<?php if ($page['footer_content_left']): ?>
					<div id="footer-content-left" class="footer-unit footer-left">
						<?php print render($page['footer_content_left']); ?>
					</div>
				<?php endif; ?>
				<?php if ($page['footer_content_right']): ?>
					<div id="footer-content-right" class="footer-unit footer-signup">
						<?php print render($page['footer_content_right']); ?>
					</div>
				<?php endif; ?>
			</div>
		<?php endif; ?>
		<?php if ($page['footer_nav']): ?>
			<div id="footer-nav" class="footer-nav clearfix">
				<?php print render($page['footer_nav']); ?>
			</div>
		<?php endif; ?>
	</div>
</div>
<?php endif; ?>
<?php // /END FOOTER REGION ?>