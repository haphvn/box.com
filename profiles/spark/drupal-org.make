; This is a standard make file for packaging the distribution along with any
; contributed modules/themes or external libraries. Some examples are below.
; See http://drupal.org/node/159730 for more details.

api = 2
core = 7.x

; Contributed modules; standard.

projects[responsive_bartik][type] = theme
projects[responsive_bartik][download][type] = git
projects[responsive_bartik][download][revision] = 7c2db58a201fd572153545b24bfcc2703c2fac80
projects[responsive_bartik][download][branch] = 7.x-1.x
projects[responsive_bartik][subdir] = contrib

projects[ctools][type] = module
projects[ctools][version] = 1.3
projects[ctools][subdir] = contrib

projects[entity][type] = module
projects[entity][version] = 1.0
projects[entity][subdir] = contrib

projects[jquery_update][type] = module
projects[jquery_update][version] = 2.x-dev
projects[jquery_update][subdir] = contrib

projects[json2][type] = module
projects[json2][version] = 1.1
projects[json2][subdir] = contrib

projects[libraries][type] = module
projects[libraries][version] = 2.x-dev
projects[libraries][subdir] = contrib

projects[panels][type] = module
projects[panels][version] = 3.3
projects[panels][subdir] = contrib
; Apply layout settings form submit callback fix needed for layout module.
projects[panels][patch][] = "http://drupal.org/files/layout-settings-submit.patch"
; Fix for strict warning on home page.
projects[panels][patch][1632898] = "http://drupal.org/files/1632898-10.patch"

projects[resp_img][type] = module
projects[resp_img][version] = 1.3
projects[resp_img][subdir] = contrib

projects[views][type] = module
projects[views][version] = 3.6
projects[views][subdir] = contrib

; Contributed projects; Sparkish.
; @todo: Change this to peg to a stable release once 7.x-1.13 comes out.
projects[ckeditor][type] = module
;projects[ckeditor][version] = 1.x-dev
projects[ckeditor][download][type] = git
; Wed, 23 Jan 2013 09:32:00 +0000 (10:32 +0100)
projects[ckeditor][download][revision] = a5eaedb5f673fe447f82a00e36f178ce5e4d6516
projects[ckeditor][download][branch] = 7.x-1.x
projects[ckeditor][subdir] = contrib

projects[admin_icons][type] = module
projects[admin_icons][version] = 1.x-dev
;projects[admin_icons][download][type] = git
;projects[admin_icons][download][branch] = 7.x-1.x
projects[admin_icons][subdir] = contrib

projects[breakpoints][type] = module
projects[breakpoints][version] = 1.0
projects[breakpoints][subdir] = contrib

projects[navbar][type] = module
projects[navbar][version] = 1.0-alpha7
;projects[navbar][download][type] = git
;projects[navbar][download][branch] = 7.x-1.x
projects[navbar][subdir] = contrib

projects[edit][type] = module
projects[edit][version] = 1.0-alpha8
;projects[edit][download][type] = git
;projects[edit][download][branch] = 7.x-1.x
projects[edit][subdir] = contrib

projects[ember][type] = theme
projects[ember][version] = 1.0-alpha5
;projects[ember][download][type] = git
;projects[ember][download][branch] = 7.x-1.x
projects[ember][subdir] = contrib

projects[gridbuilder][type] = module
projects[gridbuilder][version] = 1.0-alpha2
;projects[gridbuilder][download][type] = git
;projects[gridbuilder][download][branch] = 7.x-1.x
projects[gridbuilder][subdir] = contrib

projects[layout][type] = module
projects[layout][version] = 1.0-alpha6
;projects[layout][download][type] = git
;projects[layout][download][branch] = 7.x-1.x
projects[layout][subdir] = contrib

projects[every_field][type] = module
projects[every_field][version] = 1.x-dev
projects[every_field][subdir] = contrib

projects[responsive_preview][type] = module
projects[responsive_preview][version] = 1.0-beta1
;projects[responsive_preview][download][type] = git
;projects[responsive_preview][download][branch] = 7.x-1.x
projects[responsive_preview][subdir] = contrib

; Contributed modules; UX++
projects[module_filter][type] = module
projects[module_filter][version] = 1.7
projects[module_filter][subdir] = contrib

projects[simplified_menu_admin][type] = module
projects[simplified_menu_admin][version] = 1.0-beta2
projects[simplified_menu_admin][subdir] = contrib

; Libraries.
; NOTE: These need to be listed in http://drupal.org/packaging-whitelist.
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.0.1/ckeditor_4.0.1_standard.zip

libraries[json2][download][type] = get
libraries[json2][download][url] = https://raw.github.com/douglascrockford/JSON-js/master/json2.js
libraries[json2][revision] = fc535e9cc8fa78bbf45a85835c830e7f799a5084
