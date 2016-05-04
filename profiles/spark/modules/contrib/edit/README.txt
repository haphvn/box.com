Description
-----------
This module makes it possible to edit fields in-place.


Installation
------------
1. Install like any other Drupal module.
2. Grant the 'Access in-place editing' permission to relevant roles.
3. A new "In-place edit operations" block displaying the "Quick edit" link is
   now available and placed in the first sidebar by default.


In-place WYSIWYG editing using CKEditor
---------------------------------------
1. Download and install the latest stable release of the CKEditor module from
   http://drupal.org/project/ckeditor.
   Note that *only* the CKEditor module is supported, not any other module, like
   the "Wysiwyg" module (http://drupal.org/project/wysiwyg).
2. Go to http://ckeditor.com/download and download the Standard or Full package.
3. Extract the dowwnloaded package to sites/all/libraries/ckeditor. For maximum
   security, it is recommended to delete the included "samples" directory at
   sites/all/libraries/ckeditor/samples.
4. Go to admin/config/content/ckeditor/, enable one of the CKEditor profiles for
   each text format where you want to use CKEditor. Or create a new CKEditor
   profile.
   e.g. Enable the default "Advanced" profile for Drupal's "Filtered HTML" text
   format.
5. Find a node that uses e.g. the "Filtered HTML" text format for its body,
   click the "Quick edit" link, then click the node's body, and you should see
   CKEditor's in-place editing!

FAQ
---
Q: I want to make the "Quick edit" link look different.
A: No problem! Disable the block, and output edit_trigger_link()'s render array
   somewhere else on the page.
Q: Edit breaks my node titles!
A: This probably means you're using a theme that inappropriately uses the node
   title as a "title" attribute as well, without stripping any HTML used in the
   title. Within an attribute, HTML is pointless and potentially harmful.
   So if your theme's node.tpl.php does something like this:
     title="<?php print $title ?>"
   then please replace it with this:
     title="<?php print filter_xss($title, array()) ?>"
   This ensures that any HTML tags are stripped from the title.
   See http://drupal.org/node/1913964#comment-7231462 for details.
