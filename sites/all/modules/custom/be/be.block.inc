<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-02
 */
/**
 * Implement hook_block_info()
 *
 */
function be_block_info(){
  $blocks = array();
  $blocks['resources'] = array(
    'info' => t('Resources'),
    'cache' => DRUPAL_NO_CACHE,
  );
  return $blocks;
}

/**
 * Implement hook_block_view()
 * @param string $delta
 * @return array
 */
function be_block_view($delta = '')
{
  $block = array();
  switch ($delta) {
    case 'resources':
      $output = array();
      $vocabulary_resources = taxonomy_vocabulary_machine_name_load('resources');
      if (!empty($vocabulary_resources->vid)) {
        $resource_l1 = taxonomy_get_tree($vocabulary_resources->vid, 0, 1, FALSE);
        foreach ($resource_l1 as $term) {
          $output[] = views_embed_view('resources', 'block_resources', $term->tid);
        }
      }
      $block['content'] = implode("", $output);
      break;
    default:
      break;
  }
  return $block;
}