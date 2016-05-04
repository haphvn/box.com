/*jQuery(document).ready(function($){

// init banner slider
onetouch = !$('html').hasClass('android');
  $('.banner-carousel').bxSlider({
    controls  : false,
    oneToOneTouch: onetouch
  });

});*/
var homeMapping =  [
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "home",
        action: "Cloud",
        label: "Learn More",
        selector: ".main-banner-content .banner-des a.button-blue"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "home",
        action: "Personal",
        label: "Learn More",
        selector: "#main-content .box-personal .col-content a.button-blue"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "home",
        action: "CaseStudy",
        label: "",
        selector: "#slide-block .slider-container a"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "home",
        action: "Sign Up",
        label: "",
        selector: "#slide-block .list-ads li:eq(0) a"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "home",
        action: "Register",
        label: "",
        selector: "#slide-block .list-ads li:eq(1) a"
    },
    {
        event: "click",
        trackingType:"_trackEvent",
        category: "home",
        action: "Promo",
        label: "",
        selector: "#slide-block .list-ads .box-blue a"
    }
];

jQuery(document).ready(function(){
    GA_Tracking.initTracking(homeMapping);
});