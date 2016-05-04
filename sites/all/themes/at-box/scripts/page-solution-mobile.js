 jQuery(document).ready(function($) {
     //Default Action
     $(".des-for-device-item").hide(); //Hide all content
 	if(typeof Drupal.settings.blockMobile != 'undefined'){
 		$("ul.tabs li").find('a.' + Drupal.settings.blockMobile.active).parent().addClass("active").show(); //Activate first tab
 		$("#" + Drupal.settings.blockMobile.active + "-device").show(); //Show first tab content
 	}else{
 		$("ul.tabs li:first").addClass("active").show();
 		$(".des-for-device-item:first").show(); //Show first tab content
 	}
     //On Click Event
     jQuery("ul.tabs li").click(function() {
         jQuery("ul.tabs li").removeClass("active"); //Remove any "active" class
         jQuery(this).addClass("active"); //Add "active" class to selected tab
         jQuery(".des-for-device-item").hide(); //Hide all tab content
         var activeTab = jQuery(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
         jQuery(activeTab).fadeIn(); //Fade in the active content
         return false;
     });
 });
