var contentMapping =  [
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Content",
        action: "Security",
        label: "",
        selector: "#main-content .apps_3 .img-browser-feature a:eq(0)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Content",
        action: "iUnchain IT",
        label: "",
        selector: "#main-content .apps_3 .img-browser-feature a:eq(1)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Features",
        action: "Save 25k",
        label: "",
        selector: "#main-content .apps_3 .img-browser-feature a:eq(2)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Features",
        action: "Document Management",
        label: "Learn More",
        selector: "#main-content .doc-management .col-content .read-detail a"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Document Management",
        action: "Interaction",
        label: "",
        selector: "#main-content .doc-management .list-infor .two-col a"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Features",
        action: "Case Study",
        label: "",
        selector: "#slide-block .region-inner a"
    }
];
jQuery(document).ready(function($){
  GA_Tracking.initTracking(contentMapping);
});