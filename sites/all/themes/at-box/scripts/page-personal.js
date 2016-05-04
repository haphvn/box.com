var personalMapping =  [
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Cloud",
        label: "Access",
        selector: "#main-content .personal-page .session-1 .col-content a.col-left:eq(0)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Cloud",
        label: "Safe",
        selector: "#main-content .personal-page .session-1 .col-content a.col-left:eq(1)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Cloud",
        label: "Convenience",
        selector: "#main-content .personal-page .session-1 .col-content a.col-left:eq(2)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Send",
        label: "Send",
        selector: "#main-content .personal-page .session-2 .col-content a.col-left:eq(0)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Send",
        label: "Share",
        selector: "#main-content .personal-page .session-2 .col-content a.col-left:eq(1)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Send",
        label: "Read Time",
        selector: "#main-content .personal-page .session-2 .col-content a.col-left:eq(2)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Mobilized",
        label: "View",
        selector: "#main-content .personal-page .session-3 .col-content a.col-left:eq(0)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Mobilized",
        label: "Share",
        selector: "#main-content .personal-page .session-3 .col-content a.col-left:eq(1)"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "Personal",
        action: "Mobilized",
        label: "Upload",
        selector: "#main-content .personal-page .session-3 .col-content a.col-left:eq(2)"
    }
];

jQuery(document).ready(function(){
    GA_Tracking.initTracking(personalMapping);
});