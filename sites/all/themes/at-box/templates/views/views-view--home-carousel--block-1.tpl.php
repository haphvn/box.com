<?php if ($rows): ?>
	<?php print $rows; ?>
<a class="viewmore" href="#">View all case studies &#8250;</a>
<?php elseif ($empty): ?>
	<div class="view-empty">
		<?php print $empty; ?>
	</div>
<?php endif; ?>