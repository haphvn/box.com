<?php print $list_type_prefix; ?>
	<?php foreach ($rows as $id => $row): ?>
		<li class="<?php print $classes_array[$id]; ?>"><?php //print $row; ?></li>
	<?php endforeach; ?>
<?php print $list_type_suffix; ?>