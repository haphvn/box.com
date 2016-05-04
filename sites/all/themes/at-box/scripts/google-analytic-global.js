var GA_Tracking = (function() {
	function _initTracking(mapping) {
		for (var i = 0; i < mapping.length; i++) {
			var selector = mapping[i].selector;
			var eventName = mapping[i].event;
			// var trackingData = mapping[i];

			function eventHandler(data) {
				// debugger;
				var trackingData = data;
				return function() {					
					_gaq.push([trackingData.trackingType,trackingData.category, trackingData.action, trackingData.label]);
				}
			}
			var callback = eventHandler(mapping[i]);
			jQuery(selector).off(eventName, callback).on(eventName, callback);
		};
	}
	
	return {
		initTracking: _initTracking
	}
})();