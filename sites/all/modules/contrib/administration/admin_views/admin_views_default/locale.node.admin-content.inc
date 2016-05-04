<?php

/**
 * @file
 * Default view for node content administration.
 */

if (!isset($views['admin_views_node'])) {
  return;
}
$view = $views['admin_views_node'];

/* Display: Defaults */
$handler = $view->display['default']->handler;

/* Field: Content: Language */
$handler->display->display_options['fields']['language']['id'] = 'language';
$handler->display->display_options['fields']['language']['table'] = 'node';
$handler->display->display_options['fields']['language']['field'] = 'language';
/* Filter criterion: Content: Language */
$handler->display->display_options['filters']['language']['id'] = 'language';
$handler->display->display_options['filters']['language']['table'] = 'node';
$handler->display->display_options['filters']['language']['field'] = 'language';
$handler->display->display_options['filters']['language']['exposed'] = TRUE;
$handler->display->display_options['filters']['language']['expose']['operator_id'] = 'language_op';
$handler->display->display_options['filters']['language']['expose']['label'] = 'Language';
$handler->display->display_options['filters']['language']['expose']['operator'] = 'language_op';
$handler->display->display_options['filters']['language']['expose']['identifier'] = 'language';
$handler->display->display_options['filters']['language']['expose']['remember'] = TRUE;

/* Display: System */
$translatables['admin_views_node'] = array(
  t('Language'),
);