jQuery(document).ready(function($) {
    //https://cibostudios.atlassian.net/browse/BOX-338
    var path = window.location.pathname == '/' ? 'home' : window.location.pathname.substr(1);
    jQuery.get('https://app.box.com/gen204', 
        {
            category: 'marketing', 
            event_type: 'VISIT_PAGE_' + path.replace(/\//g, "_").toUpperCase(), 
            keys_and_values: {
                page: window.location.pathname.substr(1),
                box_visitor_id: uniqid('', true),
                http_referrer: document.referrer
            }
        },
        function() {}
    );
    
    //https://cibostudios.atlassian.net/browse/BOX-339
    var cookievalue = read_cookie('box_user_active_subdomain');
    if (cookievalue) {
        window.location = 'https://' + cookievalue + '.box.com/login';
    }
    
    jQuery('.language-url').each(function(index, link) {
        var _this = jQuery(this);
        var languageCode = _this.data('languagecode');
        if (languageCode && Drupal.settings.translation_urls[languageCode]) {
            _this.attr('href', Drupal.settings.translation_urls[languageCode]);
        }
    }).click(function() {
        jQuery.cookie(
            'box_locale', 
            Drupal.settings.language_mapping[jQuery(this).data('languagecode')],
            {
                expires: 31536000,
                path: '',
                domain: '',
                secure: false
            }
        );
        return true;
    });
    
    
    var language_prefix = jQuery.cookie('box_locale');
    var language_key = null;
    for (var language_code in Drupal.settings.language_mapping) {
        if (Drupal.settings.language_mapping[language_code] == language_prefix) {
            language_key = language_code;
            break;
        }
    }
    
    if (language_key == null) {
        console.log(11);
        jQuery.cookie(
            'box_locale', 
            Drupal.settings.language_mapping[Drupal.settings.curr_language],
            {
                expires: 31536000,
                path: '',
                domain: '',
                secure: false
            }
        );
    } else if (language_key != Drupal.settings.curr_language) {
        if (typeof Drupal.settings.translation_urls[language_key] != 'undefined') {
            window.location.href = Drupal.settings.translation_urls[language_key];
        } else if (typeof Drupal.settings.home_urls[language_key] != 'undefined') {
            window.location.href = Drupal.settings.home_urls[language_key];
        }
    }
});
