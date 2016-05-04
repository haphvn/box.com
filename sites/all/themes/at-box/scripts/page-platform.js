var platformMapping = [
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Platform",
        action: "Build Custom App",
        label: "",
        selector: "#banner .banner-des a.button-blue"
    }
];
jQuery(document).ready(function($){
  var blockMenuSelects = ["Content API", "Secure", "Build With Us", "Showcase", "CTA Goes Here"];
  var blockActionNames = ["Build", "Integrate", "Innovate"];
  jQuery("#subNavi .sub-top-nav li").each(function(i){
    platformMapping.push({
          event: "click",
          trackingType:"_trackEvent",
          category: "Platform",
          action: blockMenuSelects[i],
          label: "Menu Select",
          selector: "#subNavi .sub-top-nav li:eq("+i+") a"
      });
  });
  jQuery("#main-content .feature-platform-block .read-detail a").each(function(i){
    platformMapping.push({
          event: "click",
          trackingType:"_trackEvent",
          category: "Platform",
          action: blockActionNames[i],
          label: "Learn More",
          selector: "#main-content .feature-platform-block .read-detail a:eq("+i+")"
      });
    });
  jQuery("#main-content .logo-partner-platform-block li:gt(0)").each(function(i){
    platformMapping.push({
            event: "click",
            trackingType:"_trackEvent",
            category: "Platform",
            action: "Partner",
            label: jQuery(this).find("a").attr("title"),
            selector: "#main-content .logo-partner-platform-block li:eq("+(i+1)+") a"
        });
  });
  GA_Tracking.initTracking(platformMapping);
});