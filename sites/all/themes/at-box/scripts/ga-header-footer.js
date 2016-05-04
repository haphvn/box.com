/**
*Tracking for TopNav
**/
var topNavMapping = [
	{
		event: "click",
		selector: "#menu-link li:eq(0) > .hover-wrapper li > a:eq(0)",
		trackingType:"_trackEvent",
		category: "top nav",
		action: "Why Box",
		label: "Mobile"
	},
	{
		event: "click",
		selector: "#menu-link li:eq(0) > .hover-wrapper li > a:eq(1)",
		trackingType:"_trackEvent",
		category: "top nav",
		action: "Why Box",
		label: "Sync"
	}
]

jQuery(document).ready(function(){
	GA_Tracking.initTracking(topNavMapping);
})