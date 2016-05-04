var boxAppsMapping = [
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Devices",
        action: "View All",
        label: "",
        selector: "#main-content .more-apps-section a.view-all"
    }
];
jQuery(document).ready(function($) {
  jQuery("#main-content .u6_block a.btnBlue").each(function(i){
    boxAppsMapping.push({
      event: "click",
      trackingType:"_trackEvent",
      category: "Devices",
      action: "Download",
      label: $(this).data('gatrack'),
      selector: "#main-content .u6_block a.btnBlue:eq("+i+")"
    });
  });
  jQuery("#main-content .more-apps-section li a").each(function(i){
    boxAppsMapping.push({
        event: "click",
        trackingType:"_trackEvent",
        category: "Devices",
        action: "Apps",
        label: $(this).attr('title'),
        selector: "#main-content .more-apps-section li a:eq("+i+")"
      });
  });
  GA_Tracking.initTracking(boxAppsMapping);
  $('.screenshot_carousel').each(function(index){
    $(this).bxSlider({
      slideWidth: $(this).attr('slide-width'),
      controls: false,
      infiniteLoop: false
    });
  });
});