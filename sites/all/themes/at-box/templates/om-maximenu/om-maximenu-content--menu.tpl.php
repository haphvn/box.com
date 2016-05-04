<?php
/**
 * @file om_maximenu_content.tpl.php
 * Default theme implementation of om maximenu contents
 *
 * Available variables:
 * - $module: module name
 * - $delta: module delta
 * - $om_classes: from om tools if installed
 * - $title: block title
 * - $block_title: modified block title
 *
 * @see template_preprocess_om_maximenu_content()
 * 
 */
?>
<?php
	$extraClasses = array('float-left');
	if ($delta == 'menu-main-industry-submenu-02') {
		$extraClasses[] = 'column-two';
	}
?>

<div class="block block-<?php print $module; ?> block-<?php print $module . '-id-' . $delta . $om_classes; ?> <?php echo implode(' ', $extraClasses); ?>">
  <?php $content = isset($block['content']) ? is_array($block['content']) ? drupal_render($block['content']): $block['content']: '' . ''; ?>
  <?php print $content; ?>
</div>