<?php
$wrapper = entity_metadata_wrapper('node', $node);
$body = $wrapper->body->value();
echo $body['value'];
?>
