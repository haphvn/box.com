var resourcesMapping =  [
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "resources",
        action: "TCO Start",
        label: "",
        selector: "#main-content .tco-calculator a.btnBlue"
    }
];
jQuery(document).ready(function($){
  var blockActionNames = ["Research","White Papers"];
  jQuery(".view-resources .analyst-research").each(function(i){
	  jQuery(this).find(".list-parent a.list-ico").each(function(j){
		  resourcesMapping.push({
		        event: "click",
		        trackingType:"_trackEvent",
		        category: "resources",
		        action: blockActionNames[i],
		        label: jQuery(this).data("name"),
		        selector: "#main-content .view-resources .analyst-research:eq("+i+") .list-parent a.list-ico:eq("+j+")"
		    });
	  });
  });
  GA_Tracking.initTracking(resourcesMapping);
  $('input, textarea').placeholder();
});