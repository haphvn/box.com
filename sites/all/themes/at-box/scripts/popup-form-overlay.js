leadgenPageController = function($) {
    var forgotTimeout;
    
     function resizePopup(){       
        var pW = 885;
        if($(window).width()<885) {
            pW = 703;
        }
            
        var left = ($(window).width() - pW)/2;
        $('.form-popup').colorbox.resize({ 
            width: pW,
            height: 720,
            left: left
        });
        $('.cboxIframe').attr('frameBorder','0');
    }
     
    this.init = function() {
        var pW = 885;
        if($(window).width()<885)
            pW = 703;
            
        $('.form-popup').bind("click",function(e){
            e.preventDefault();
            if($('body').width() > 719) {
                $('#colorbox').addClass('color_contact');
                $('.form-popup').colorbox({ 
                    iframe: true,
                    width: pW,
                    height: 720,
                    initialHeight: 720,
                    onComplete: function() {
                        $('body').addClass('noscroll');
                    },
                    onClosed: function() {
                        $('#colorbox').removeClass('color_contact');
                        $('body').removeClass('noscroll');
                    }
                });
            }
        });
                              
        $(window).bind('orientationchange resize', function (e) {
            if ($('#colorbox').hasClass('color_contact')) {
              clearTimeout(forgotTimeout);
              forgotTimeout = setTimeout(resizePopup, 200);
            }
        });
    }
    this.init();
};
jQuery(document).ready(function($) {
    leadgenPageController($);
});