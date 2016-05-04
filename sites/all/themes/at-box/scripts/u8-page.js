jQuery(document).ready(function($) {
	
	$('.control-wrap input[type="text"]').focus(function() {
		var tooltip = $(this).parents('.control-wrap').find('.tooltip');
		tooltip.show();
	}).focusout(function() {
		var tooltip = $(this).parents('.control-wrap').find('.tooltip');
		tooltip.hide();
	});

});