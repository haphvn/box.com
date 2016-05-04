<!-- List logo clients for smaller 720px res (mobile ver) -->
<div class="mobile-content content info bg-white">
  <div class="shadow-top">
    <div class="list-clients">
        <?php if ($block->subject): ?>
    		<h2><?php print $block->subject ?></h2>
    	<?php endif;?>
    	<?php print $content ?>
    </div>
  </div>
</div>
<!-- End List logog clients-->