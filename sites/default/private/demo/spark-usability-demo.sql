-- Demo module database dump
-- Version 1.1
-- http://drupal.org/project/demo
--
-- Database: spark-7.x-1.0-alpha8
-- Date: Mon, 04/08/2013 - 17:10
-- Server version: 5.5.30-1~dotdeb.0
-- PHP version: 5.3.23-1~dotdeb.0
-- Drupal version: 7.22

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET FOREIGN_KEY_CHECKS = 0;

SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8;

--
-- Table structure for table 'actions'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores action information.';

--
-- Dumping data for table 'actions'
--

/*!40000 ALTER TABLE actions DISABLE KEYS */;
INSERT INTO `actions` VALUES
('comment_publish_action', 'comment', 'comment_publish_action', '', 'Publish comment'),
('comment_save_action', 'comment', 'comment_save_action', '', 'Save comment'),
('comment_unpublish_action', 'comment', 'comment_unpublish_action', '', 'Unpublish comment'),
('node_make_sticky_action', 'node', 'node_make_sticky_action', '', 'Make content sticky'),
('node_make_unsticky_action', 'node', 'node_make_unsticky_action', '', 'Make content unsticky'),
('node_promote_action', 'node', 'node_promote_action', '', 'Promote content to front page'),
('node_publish_action', 'node', 'node_publish_action', '', 'Publish content'),
('node_save_action', 'node', 'node_save_action', '', 'Save content'),
('node_unpromote_action', 'node', 'node_unpromote_action', '', 'Remove content from front page'),
('node_unpublish_action', 'node', 'node_unpublish_action', '', 'Unpublish content'),
('system_block_ip_action', 'user', 'system_block_ip_action', '', 'Ban IP address of current user'),
('user_block_user_action', 'user', 'user_block_user_action', '', 'Block current user'),
('views_bulk_operations_archive_action', 'file', 'views_bulk_operations_archive_action', '', 'Create an archive of selected files'),
('views_bulk_operations_argument_selector_action', 'entity', 'views_bulk_operations_argument_selector_action', '', 'Pass ids as arguments to a page'),
('views_bulk_operations_delete_item', 'entity', 'views_bulk_operations_delete_item', '', 'Delete item'),
('views_bulk_operations_modify_action', 'entity', 'views_bulk_operations_modify_action', '', 'Modify entity values');
/*!40000 ALTER TABLE actions ENABLE KEYS */;

--
-- Table structure for table 'authmap'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores distributed authentication mapping.';

--
-- Dumping data for table 'authmap'
--

/*!40000 ALTER TABLE authmap DISABLE KEYS */;
/*!40000 ALTER TABLE authmap ENABLE KEYS */;

--
-- Table structure for table 'batch'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores details about batches (processes that run in...';

--
-- Dumping data for table 'batch'
--

/*!40000 ALTER TABLE batch DISABLE KEYS */;
INSERT INTO `batch` VALUES
('2', '5YF6HKLXdn3uihD-xsKTuFYh6zInfkgUztJHlTIbLC4', '1365412657', 'a:13:{s:4:"sets";a:1:{i:0;a:15:{s:7:"sandbox";a:0:{}s:7:"results";a:1:{s:8:"projects";a:3:{s:8:"ckeditor";s:61:"http://ftp.drupal.org/files/projects/ckeditor-7.x-1.12.tar.gz";s:4:"edit";s:63:"http://ftp.drupal.org/files/projects/edit-7.x-1.0-alpha9.tar.gz";s:13:"jquery_update";s:65:"http://ftp.drupal.org/files/projects/jquery_update-7.x-2.3.tar.gz";}}s:7:"success";b:1;s:5:"start";d:1365412664.644129;s:7:"elapsed";d:8752.6700000000001;s:5:"title";s:19:"Downloading updates";s:12:"init_message";s:49:"Preparing to download selected updates<br/>&nbsp;";s:8:"finished";s:38:"update_manager_download_batch_finished";s:4:"file";s:33:"modules/update/update.manager.inc";s:16:"progress_message";s:29:"Completed @current of @total.";s:13:"error_message";s:22:"An error has occurred.";s:3:"css";a:0:{}s:5:"total";i:3;s:5:"count";i:0;s:5:"queue";a:2:{s:4:"name";s:16:"drupal_batch:2:0";s:5:"class";s:10:"BatchQueue";}}}s:16:"has_form_submits";b:0;s:10:"form_state";a:3:{s:10:"programmed";b:0;s:7:"rebuild";b:0;s:8:"redirect";N;}s:11:"progressive";b:1;s:11:"current_set";i:0;s:3:"url";s:5:"batch";s:11:"url_options";a:0:{}s:10:"source_url";s:20:"admin/modules/update";s:8:"redirect";N;s:5:"theme";s:5:"ember";s:17:"redirect_callback";s:11:"drupal_goto";s:2:"id";s:1:"2";s:13:"error_message";s:82:"Please continue to <a href="/?q=batch&amp;id=2&amp;op=finished">the error page</a>";}');
/*!40000 ALTER TABLE batch ENABLE KEYS */;

--
-- Table structure for table 'block'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores block settings, such as region and visibility...';

--
-- Dumping data for table 'block'
--

/*!40000 ALTER TABLE block DISABLE KEYS */;
INSERT INTO `block` VALUES
('1', 'system', 'main', 'responsive_bartik', '1', '0', 'content', '0', '0', '', '', '-1'),
('2', 'search', 'form', 'responsive_bartik', '1', '-1', 'sidebar_first', '0', '0', '', '', '-1'),
('3', 'user', 'login', 'responsive_bartik', '1', '0', 'sidebar_first', '0', '0', '', '', '-1'),
('4', 'system', 'navigation', 'responsive_bartik', '1', '0', 'sidebar_first', '0', '0', '', '', '-1'),
('5', 'system', 'powered-by', 'responsive_bartik', '1', '10', 'footer', '0', '0', '', '', '-1'),
('6', 'system', 'help', 'responsive_bartik', '1', '0', 'help', '0', '0', '', '', '-1'),
('7', 'system', 'main', 'ember', '1', '0', 'content', '0', '0', '', '', '-1'),
('8', 'system', 'help', 'ember', '1', '0', 'help', '0', '0', '', '', '-1'),
('9', 'user', 'login', 'ember', '1', '10', 'content', '0', '0', '', '', '-1'),
('10', 'comment', 'recent', 'bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('11', 'edit', 'edit', 'bartik', '1', '0', 'sidebar_first', '0', '0', '', '', '1'),
('12', 'node', 'syndicate', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('13', 'node', 'recent', 'bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('14', 'responsive_preview', 'controls', 'bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('15', 'search', 'form', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('16', 'shortcut', 'shortcuts', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('17', 'system', 'main', 'bartik', '1', '0', 'content', '0', '0', '', '', '-1'),
('18', 'system', 'powered-by', 'bartik', '0', '10', '-1', '0', '0', '', '', '-1'),
('19', 'system', 'help', 'bartik', '1', '5', 'help', '0', '0', '', '', '-1'),
('20', 'system', 'navigation', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('21', 'system', 'management', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('22', 'system', 'user-menu', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('23', 'system', 'main-menu', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('24', 'user', 'login', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('25', 'user', 'new', 'bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('26', 'user', 'online', 'bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('27', 'comment', 'recent', 'ember', '0', '0', '-1', '0', '0', '', '', '1'),
('28', 'edit', 'edit', 'ember', '1', '0', 'sidebar_first', '0', '0', '', '', '1'),
('29', 'node', 'syndicate', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('30', 'node', 'recent', 'ember', '0', '0', '-1', '0', '0', '', '', '1'),
('31', 'responsive_preview', 'controls', 'ember', '0', '0', '-1', '0', '0', '', '', '1'),
('32', 'search', 'form', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('33', 'shortcut', 'shortcuts', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('34', 'system', 'powered-by', 'ember', '0', '10', '-1', '0', '0', '', '', '-1'),
('35', 'system', 'navigation', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('36', 'system', 'management', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('37', 'system', 'user-menu', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('38', 'system', 'main-menu', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('39', 'user', 'new', 'ember', '0', '0', '-1', '0', '0', '', '', '1'),
('40', 'user', 'online', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('41', 'comment', 'recent', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('42', 'edit', 'edit', 'responsive_bartik', '1', '0', 'sidebar_first', '0', '0', '', '', '1'),
('43', 'node', 'syndicate', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('44', 'node', 'recent', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('45', 'responsive_preview', 'controls', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('46', 'shortcut', 'shortcuts', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('47', 'system', 'management', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('48', 'system', 'user-menu', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('49', 'system', 'main-menu', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('50', 'user', 'new', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '1'),
('51', 'user', 'online', 'responsive_bartik', '0', '0', '-1', '0', '0', '', '', '-1'),
('52', 'demo_reset', 'reset', 'bartik', '1', '0', 'sidebar_second', '0', '0', '', '', '-1'),
('53', 'demo_reset', 'reset', 'ember', '0', '0', '-1', '0', '0', '', '', '-1'),
('54', 'demo_reset', 'reset', 'responsive_bartik', '1', '0', 'sidebar_second', '0', '0', '', '', '-1');
/*!40000 ALTER TABLE block ENABLE KEYS */;

--
-- Table structure for table 'block_custom'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores contents of custom-made blocks.';

--
-- Dumping data for table 'block_custom'
--

/*!40000 ALTER TABLE block_custom DISABLE KEYS */;
/*!40000 ALTER TABLE block_custom ENABLE KEYS */;

--
-- Table structure for table 'block_node_type'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Sets up display criteria for blocks based on content types';

--
-- Dumping data for table 'block_node_type'
--

/*!40000 ALTER TABLE block_node_type DISABLE KEYS */;
/*!40000 ALTER TABLE block_node_type ENABLE KEYS */;

--
-- Table structure for table 'block_role'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Sets up access permissions for blocks based on user roles';

--
-- Dumping data for table 'block_role'
--

/*!40000 ALTER TABLE block_role DISABLE KEYS */;
/*!40000 ALTER TABLE block_role ENABLE KEYS */;

--
-- Table structure for table 'blocked_ips'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores blocked IP addresses.';

--
-- Dumping data for table 'blocked_ips'
--

/*!40000 ALTER TABLE blocked_ips DISABLE KEYS */;
/*!40000 ALTER TABLE blocked_ips ENABLE KEYS */;

--
-- Table structure for table 'breakpoint_group'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Breakpoint group';

--
-- Dumping data for table 'breakpoint_group'
--

/*!40000 ALTER TABLE breakpoint_group DISABLE KEYS */;
/*!40000 ALTER TABLE breakpoint_group ENABLE KEYS */;

--
-- Table structure for table 'breakpoints'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Breakpoints';

--
-- Dumping data for table 'breakpoints'
--

/*!40000 ALTER TABLE breakpoints DISABLE KEYS */;
INSERT INTO `breakpoints` VALUES
('1', 'breakpoints.module.navbar.wide', 'wide', 'only screen and (min-width: 50em)', 'navbar', 'module', '1', '0', 'a:1:{s:2:"1x";s:2:"1x";}');
/*!40000 ALTER TABLE breakpoints ENABLE KEYS */;

--
-- Table structure for table 'cache'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Generic cache table for caching things not separated out...';

--
-- Table structure for table 'cache_block'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for the Block module to store already built...';

--
-- Table structure for table 'cache_bootstrap'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for data required to bootstrap Drupal, may be...';

--
-- Table structure for table 'cache_field'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Generic cache table for caching things not separated out...';

--
-- Table structure for table 'cache_filter'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for the Filter module to store already...';

--
-- Table structure for table 'cache_form'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for the form system to store recently built...';

--
-- Table structure for table 'cache_image'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table used to store information about image...';

--
-- Dumping data for table 'cache_image'
--

/*!40000 ALTER TABLE cache_image DISABLE KEYS */;
/*!40000 ALTER TABLE cache_image ENABLE KEYS */;

--
-- Table structure for table 'cache_libraries'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table to store library information.';

--
-- Dumping data for table 'cache_libraries'
--

/*!40000 ALTER TABLE cache_libraries DISABLE KEYS */;
/*!40000 ALTER TABLE cache_libraries ENABLE KEYS */;

--
-- Table structure for table 'cache_menu'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for the menu system to store router...';

--
-- Table structure for table 'cache_page'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table used to store compressed pages for anonymous...';

--
-- Table structure for table 'cache_path'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for path alias lookup.';

--
-- Table structure for table 'cache_update'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for the Update module to store information...';

--
-- Table structure for table 'cache_views'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Generic cache table for caching things not separated out...';

--
-- Table structure for table 'cache_views_data'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Cache table for views to store pre-rendered queries,...';

--
-- Table structure for table 'ckeditor_input_format'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores CKEditor input format assignments';

--
-- Dumping data for table 'ckeditor_input_format'
--

/*!40000 ALTER TABLE ckeditor_input_format DISABLE KEYS */;
INSERT INTO `ckeditor_input_format` VALUES
('Advanced', 'filtered_html'),
('Full', 'full_html');
/*!40000 ALTER TABLE ckeditor_input_format ENABLE KEYS */;

--
-- Table structure for table 'ckeditor_settings'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores CKEditor profile settings';

--
-- Dumping data for table 'ckeditor_settings'
--

/*!40000 ALTER TABLE ckeditor_settings DISABLE KEYS */;
INSERT INTO `ckeditor_settings` VALUES
('Advanced', 'a:31:{s:2:"ss";s:1:"2";s:7:"default";s:1:"t";s:11:"show_toggle";s:1:"t";s:7:"uicolor";s:7:"default";s:12:"uicolor_user";s:7:"default";s:7:"toolbar";s:605:"[\r\n    [''Source''],\r\n    [''Cut'',''Copy'',''Paste'',''PasteText'',''PasteFromWord'',''-'',''SpellChecker'', ''Scayt''],\r\n    [''Undo'',''Redo'',''Find'',''Replace'',''-'',''SelectAll'',''RemoveFormat''],\r\n    [''Image'',''Media'',''Flash'',''Table'',''HorizontalRule'',''Smiley'',''SpecialChar''],\r\n    [''Maximize'', ''ShowBlocks''],\r\n    ''/'',\r\n    [''Format''],\r\n    [''Bold'',''Italic'',''Underline'',''Strike'',''-'',''Subscript'',''Superscript''],\r\n    [''NumberedList'',''BulletedList'',''-'',''Outdent'',''Indent'',''Blockquote''],\r\n    [''JustifyLeft'',''JustifyCenter'',''JustifyRight'',''JustifyBlock'',''-'',''BidiLtr'',''BidiRtl''],\r\n    [''Link'',''Unlink'',''Anchor'', ''Linkit'']\r\n]\r\n    ";s:6:"expand";s:1:"t";s:5:"width";s:4:"100%";s:4:"lang";s:2:"en";s:9:"auto_lang";s:1:"t";s:18:"language_direction";s:7:"default";s:10:"enter_mode";s:1:"p";s:16:"shift_enter_mode";s:2:"br";s:11:"font_format";s:35:"p;div;pre;address;h1;h2;h3;h4;h5;h6";s:17:"custom_formatting";s:1:"f";s:10:"formatting";a:1:{s:25:"custom_formatting_options";a:6:{s:6:"indent";s:6:"indent";s:15:"breakBeforeOpen";s:15:"breakBeforeOpen";s:14:"breakAfterOpen";s:14:"breakAfterOpen";s:15:"breakAfterClose";s:15:"breakAfterClose";s:16:"breakBeforeClose";i:0;s:10:"pre_indent";i:0;}}s:8:"css_mode";s:4:"none";s:8:"css_path";s:0:"";s:9:"css_style";s:5:"theme";s:11:"styles_path";s:0:"";s:11:"filebrowser";s:8:"ckfinder";s:17:"filebrowser_image";s:8:"ckfinder";s:17:"filebrowser_flash";s:8:"ckfinder";s:13:"UserFilesPath";s:5:"%b%f/";s:21:"UserFilesAbsolutePath";s:7:"%d%b%f/";s:21:"forcePasteAsPlainText";s:1:"f";s:13:"html_entities";s:1:"f";s:17:"scayt_autoStartup";s:1:"f";s:15:"theme_config_js";s:1:"f";s:7:"js_conf";s:0:"";s:11:"loadPlugins";a:1:{s:12:"drupalbreaks";a:5:{s:4:"name";s:12:"drupalbreaks";s:4:"desc";s:51:"Plugin for inserting Drupal teaser and page breaks.";s:4:"path";s:25:"%plugin_dir%drupalbreaks/";s:7:"buttons";a:1:{s:11:"DrupalBreak";a:2:{s:5:"label";s:11:"DrupalBreak";s:4:"icon";s:22:"images/drupalbreak.png";}}s:7:"default";s:1:"t";}}}'),
('CKEditor Global Profile', 'a:10:{s:4:"skin";s:5:"moono";s:13:"ckeditor_path";s:11:"%l/ckeditor";s:19:"ckeditor_local_path";s:0:"";s:21:"ckeditor_plugins_path";s:10:"%m/plugins";s:27:"ckeditor_plugins_local_path";s:0:"";s:13:"ckfinder_path";s:11:"%m/ckfinder";s:19:"ckfinder_local_path";s:0:"";s:18:"ckeditor_aggregate";s:1:"f";s:14:"toolbar_wizard";s:1:"t";s:11:"loadPlugins";a:0:{}}'),
('Full', 'a:31:{s:2:"ss";s:1:"2";s:7:"default";s:1:"t";s:11:"show_toggle";s:1:"t";s:7:"uicolor";s:7:"default";s:12:"uicolor_user";s:7:"default";s:7:"toolbar";s:706:"[\r\n    [''Source''],\r\n    [''Cut'',''Copy'',''Paste'',''PasteText'',''PasteFromWord'',''-'',''SpellChecker'', ''Scayt''],\r\n    [''Undo'',''Redo'',''Find'',''Replace'',''-'',''SelectAll'',''RemoveFormat''],\r\n    [''Image'',''Media'',''Flash'',''Table'',''HorizontalRule'',''Smiley'',''SpecialChar'',''Iframe''],\r\n    ''/'',\r\n    [''Bold'',''Italic'',''Underline'',''Strike'',''-'',''Subscript'',''Superscript''],\r\n    [''NumberedList'',''BulletedList'',''-'',''Outdent'',''Indent'',''Blockquote'',''CreateDiv''],\r\n    [''JustifyLeft'',''JustifyCenter'',''JustifyRight'',''JustifyBlock'',''-'',''BidiLtr'',''BidiRtl''],\r\n    [''Link'',''Unlink'',''Anchor'', ''Linkit''],\r\n    [''DrupalBreak''],\r\n    ''/'',\r\n    [''Format'',''Font'',''FontSize''],\r\n    [''TextColor'',''BGColor''],\r\n    [''Maximize'', ''ShowBlocks'']\r\n]\r\n    ";s:6:"expand";s:1:"t";s:5:"width";s:4:"100%";s:4:"lang";s:2:"en";s:9:"auto_lang";s:1:"t";s:18:"language_direction";s:7:"default";s:10:"enter_mode";s:1:"p";s:16:"shift_enter_mode";s:2:"br";s:11:"font_format";s:35:"p;div;pre;address;h1;h2;h3;h4;h5;h6";s:17:"custom_formatting";s:1:"f";s:10:"formatting";a:1:{s:25:"custom_formatting_options";a:6:{s:6:"indent";s:6:"indent";s:15:"breakBeforeOpen";s:15:"breakBeforeOpen";s:14:"breakAfterOpen";s:14:"breakAfterOpen";s:15:"breakAfterClose";s:15:"breakAfterClose";s:16:"breakBeforeClose";i:0;s:10:"pre_indent";i:0;}}s:8:"css_mode";s:4:"none";s:8:"css_path";s:0:"";s:9:"css_style";s:5:"theme";s:11:"styles_path";s:0:"";s:11:"filebrowser";s:8:"ckfinder";s:17:"filebrowser_image";s:8:"ckfinder";s:17:"filebrowser_flash";s:8:"ckfinder";s:13:"UserFilesPath";s:5:"%b%f/";s:21:"UserFilesAbsolutePath";s:7:"%d%b%f/";s:21:"forcePasteAsPlainText";s:1:"f";s:13:"html_entities";s:1:"f";s:17:"scayt_autoStartup";s:1:"f";s:15:"theme_config_js";s:1:"f";s:7:"js_conf";s:0:"";s:11:"loadPlugins";a:1:{s:12:"drupalbreaks";a:5:{s:4:"name";s:12:"drupalbreaks";s:4:"desc";s:51:"Plugin for inserting Drupal teaser and page breaks.";s:4:"path";s:25:"%plugin_dir%drupalbreaks/";s:7:"buttons";a:1:{s:11:"DrupalBreak";a:2:{s:5:"label";s:11:"DrupalBreak";s:4:"icon";s:22:"images/drupalbreak.png";}}s:7:"default";s:1:"t";}}}');
/*!40000 ALTER TABLE ckeditor_settings ENABLE KEYS */;

--
-- Table structure for table 'comment'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores comments and associated data.';

--
-- Dumping data for table 'comment'
--

/*!40000 ALTER TABLE comment DISABLE KEYS */;
/*!40000 ALTER TABLE comment ENABLE KEYS */;

--
-- Table structure for table 'ctools_css_cache'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='A special cache used to store CSS that must be non-volatile.';

--
-- Dumping data for table 'ctools_css_cache'
--

/*!40000 ALTER TABLE ctools_css_cache DISABLE KEYS */;
/*!40000 ALTER TABLE ctools_css_cache ENABLE KEYS */;

--
-- Table structure for table 'ctools_object_cache'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='A special cache used to store objects that are being...';

--
-- Table structure for table 'date_format_locale'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores configured date formats for each locale.';

--
-- Dumping data for table 'date_format_locale'
--

/*!40000 ALTER TABLE date_format_locale DISABLE KEYS */;
/*!40000 ALTER TABLE date_format_locale ENABLE KEYS */;

--
-- Table structure for table 'date_format_type'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores configured date format types.';

--
-- Dumping data for table 'date_format_type'
--

/*!40000 ALTER TABLE date_format_type DISABLE KEYS */;
INSERT INTO `date_format_type` VALUES
('long', 'Long', '1'),
('medium', 'Medium', '1'),
('short', 'Short', '1');
/*!40000 ALTER TABLE date_format_type ENABLE KEYS */;

--
-- Table structure for table 'date_formats'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores configured date formats.';

--
-- Dumping data for table 'date_formats'
--

/*!40000 ALTER TABLE date_formats DISABLE KEYS */;
INSERT INTO `date_formats` VALUES
('1', 'Y-m-d H:i', 'short', '1'),
('2', 'm/d/Y - H:i', 'short', '1'),
('3', 'd/m/Y - H:i', 'short', '1'),
('4', 'Y/m/d - H:i', 'short', '1'),
('5', 'd.m.Y - H:i', 'short', '1'),
('6', 'm/d/Y - g:ia', 'short', '1'),
('7', 'd/m/Y - g:ia', 'short', '1'),
('8', 'Y/m/d - g:ia', 'short', '1'),
('9', 'M j Y - H:i', 'short', '1'),
('10', 'j M Y - H:i', 'short', '1'),
('11', 'Y M j - H:i', 'short', '1'),
('12', 'M j Y - g:ia', 'short', '1'),
('13', 'j M Y - g:ia', 'short', '1'),
('14', 'Y M j - g:ia', 'short', '1'),
('15', 'D, Y-m-d H:i', 'medium', '1'),
('16', 'D, m/d/Y - H:i', 'medium', '1'),
('17', 'D, d/m/Y - H:i', 'medium', '1'),
('18', 'D, Y/m/d - H:i', 'medium', '1'),
('19', 'F j, Y - H:i', 'medium', '1'),
('20', 'j F, Y - H:i', 'medium', '1'),
('21', 'Y, F j - H:i', 'medium', '1'),
('22', 'D, m/d/Y - g:ia', 'medium', '1'),
('23', 'D, d/m/Y - g:ia', 'medium', '1'),
('24', 'D, Y/m/d - g:ia', 'medium', '1'),
('25', 'F j, Y - g:ia', 'medium', '1'),
('26', 'j F Y - g:ia', 'medium', '1'),
('27', 'Y, F j - g:ia', 'medium', '1'),
('28', 'j. F Y - G:i', 'medium', '1'),
('29', 'l, F j, Y - H:i', 'long', '1'),
('30', 'l, j F, Y - H:i', 'long', '1'),
('31', 'l, Y,  F j - H:i', 'long', '1'),
('32', 'l, F j, Y - g:ia', 'long', '1'),
('33', 'l, j F Y - g:ia', 'long', '1'),
('34', 'l, Y,  F j - g:ia', 'long', '1'),
('35', 'l, j. F Y - G:i', 'long', '1');
/*!40000 ALTER TABLE date_formats ENABLE KEYS */;

--
-- Table structure for table 'field_config'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table 'field_config'
--

/*!40000 ALTER TABLE field_config DISABLE KEYS */;
INSERT INTO `field_config` VALUES
('1', 'body', 'text_with_summary', 'text', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:1:{i:0;s:4:"node";}s:12:"translatable";b:0;s:8:"settings";a:0:{}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:6:"format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:6:"format";s:6:"format";}}}s:7:"indexes";a:1:{s:6:"format";a:1:{i:0;s:6:"format";}}}', '1', '0', '0'),
('2', 'comment_body', 'text_long', 'text', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:1:{i:0;s:7:"comment";}s:12:"translatable";b:0;s:8:"settings";a:0:{}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:6:"format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:6:"format";s:6:"format";}}}s:7:"indexes";a:1:{s:6:"format";a:1:{i:0;s:6:"format";}}}', '1', '0', '0'),
('3', 'every_field_file', 'file', 'file', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:3:{s:13:"display_field";i:0;s:15:"display_default";i:0;s:10:"uri_scheme";s:6:"public";}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:3:"fid";a:2:{s:5:"table";s:12:"file_managed";s:7:"columns";a:1:{s:3:"fid";s:3:"fid";}}}s:7:"indexes";a:1:{s:3:"fid";a:1:{i:0;s:3:"fid";}}}', '1', '0', '0'),
('4', 'every_field_image', 'image', 'image', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:2:{s:10:"uri_scheme";s:6:"public";s:13:"default_image";i:0;}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:3:"fid";a:2:{s:5:"table";s:12:"file_managed";s:7:"columns";a:1:{s:3:"fid";s:3:"fid";}}}s:7:"indexes";a:1:{s:3:"fid";a:1:{i:0;s:3:"fid";}}}', '1', '0', '0'),
('5', 'every_field_list_boolean', 'list_boolean', 'list', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:8:"settings";a:2:{s:14:"allowed_values";a:2:{i:0;s:2:"No";i:1;s:3:"Yes";}s:23:"allowed_values_function";s:0:"";}s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:0:{}s:7:"indexes";a:1:{s:5:"value";a:1:{i:0;s:5:"value";}}}', '1', '0', '0'),
('6', 'every_field_list_integer', 'list_integer', 'list', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:8:"settings";a:2:{s:14:"allowed_values";a:3:{i:1;s:3:"One";i:2;s:3:"Two";i:3;s:5:"Three";}s:23:"allowed_values_function";s:0:"";}s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:0:{}s:7:"indexes";a:1:{s:5:"value";a:1:{i:0;s:5:"value";}}}', '1', '0', '0'),
('7', 'every_field_list_float', 'list_float', 'list', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:8:"settings";a:2:{s:14:"allowed_values";a:3:{i:1;s:12:"One Point Oh";i:2;s:12:"Two Point Oh";i:3;s:14:"Three Point Oh";}s:23:"allowed_values_function";s:0:"";}s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:0:{}s:7:"indexes";a:1:{s:5:"value";a:1:{i:0;s:5:"value";}}}', '1', '0', '0'),
('8', 'every_field_list_text', 'list_text', 'list', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:8:"settings";a:2:{s:14:"allowed_values";a:3:{s:1:"S";s:5:"Small";s:1:"M";s:6:"Medium";s:1:"L";s:5:"Large";}s:23:"allowed_values_function";s:0:"";}s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:0:{}s:7:"indexes";a:1:{s:5:"value";a:1:{i:0;s:5:"value";}}}', '1', '0', '0'),
('9', 'every_field_integer', 'number_integer', 'number', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:0:{}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:0:{}s:7:"indexes";a:0:{}}', '1', '0', '0'),
('10', 'every_field_decimal', 'number_decimal', 'number', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:3:{s:9:"precision";i:10;s:5:"scale";i:2;s:17:"decimal_separator";s:1:".";}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:0:{}s:7:"indexes";a:0:{}}', '1', '0', '0'),
('11', 'every_field_float', 'number_float', 'number', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:1:{s:17:"decimal_separator";s:1:".";}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:0:{}s:7:"indexes";a:0:{}}', '1', '0', '0'),
('12', 'every_field_term_reference', 'taxonomy_term_reference', 'taxonomy', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:8:"settings";a:1:{s:14:"allowed_values";a:1:{i:0;a:2:{s:10:"vocabulary";s:4:"tags";s:6:"parent";i:0;}}}s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:3:"tid";a:2:{s:5:"table";s:18:"taxonomy_term_data";s:7:"columns";a:1:{s:3:"tid";s:3:"tid";}}}s:7:"indexes";a:1:{s:3:"tid";a:1:{i:0;s:3:"tid";}}}', '-1', '0', '0'),
('13', 'every_field_text', 'text', 'text', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:1:{s:10:"max_length";i:255;}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:6:"format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:6:"format";s:6:"format";}}}s:7:"indexes";a:1:{s:6:"format";a:1:{i:0;s:6:"format";}}}', '1', '0', '0'),
('14', 'every_field_text_long', 'text_long', 'text', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:0:{}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:6:"format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:6:"format";s:6:"format";}}}s:7:"indexes";a:1:{s:6:"format";a:1:{i:0;s:6:"format";}}}', '1', '0', '0'),
('15', 'every_field_text_with_summary', 'text_with_summary', 'text', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:0:{}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:6:"format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:6:"format";s:6:"format";}}}s:7:"indexes";a:1:{s:6:"format";a:1:{i:0;s:6:"format";}}}', '1', '0', '0'),
('16', 'every_field_tricky', 'text', 'text', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:8:"settings";a:1:{s:10:"max_length";i:255;}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:6:"format";a:2:{s:5:"table";s:13:"filter_format";s:7:"columns";a:1:{s:6:"format";s:6:"format";}}}s:7:"indexes";a:1:{s:6:"format";a:1:{i:0;s:6:"format";}}}', '9', '0', '0'),
('17', 'field_tags', 'taxonomy_term_reference', 'taxonomy', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:8:"settings";a:1:{s:14:"allowed_values";a:1:{i:0;a:2:{s:10:"vocabulary";s:4:"tags";s:6:"parent";i:0;}}}s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"foreign keys";a:1:{s:3:"tid";a:2:{s:5:"table";s:18:"taxonomy_term_data";s:7:"columns";a:1:{s:3:"tid";s:3:"tid";}}}s:7:"indexes";a:1:{s:3:"tid";a:1:{i:0;s:3:"tid";}}}', '-1', '0', '0'),
('18', 'field_image', 'image', 'image', '1', 'field_sql_storage', 'field_sql_storage', '1', '0', 'a:6:{s:7:"indexes";a:1:{s:3:"fid";a:1:{i:0;s:3:"fid";}}s:8:"settings";a:2:{s:10:"uri_scheme";s:6:"public";s:13:"default_image";b:0;}s:7:"storage";a:4:{s:4:"type";s:17:"field_sql_storage";s:8:"settings";a:0:{}s:6:"module";s:17:"field_sql_storage";s:6:"active";i:1;}s:12:"entity_types";a:0:{}s:12:"translatable";b:0;s:12:"foreign keys";a:1:{s:3:"fid";a:2:{s:5:"table";s:12:"file_managed";s:7:"columns";a:1:{s:3:"fid";s:3:"fid";}}}}', '1', '0', '0');
/*!40000 ALTER TABLE field_config ENABLE KEYS */;

--
-- Table structure for table 'field_config_instance'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table 'field_config_instance'
--

/*!40000 ALTER TABLE field_config_instance DISABLE KEYS */;
INSERT INTO `field_config_instance` VALUES
('1', '1', 'body', 'node', 'every_field', 'a:6:{s:5:"label";s:10:"Body field";s:6:"widget";a:4:{s:4:"type";s:26:"text_textarea_with_summary";s:8:"settings";a:2:{s:4:"rows";i:20;s:12:"summary_rows";i:5;}s:6:"weight";i:0;s:6:"module";s:4:"text";}s:8:"settings";a:3:{s:15:"display_summary";b:1;s:15:"text_processing";i:1;s:18:"user_register_form";b:0;}s:7:"display";a:2:{s:7:"default";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:12:"text_default";s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";s:6:"weight";i:0;}s:6:"teaser";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:23:"text_summary_or_trimmed";s:8:"settings";a:1:{s:11:"trim_length";i:600;}s:6:"module";s:4:"text";s:6:"weight";i:0;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('2', '2', 'comment_body', 'comment', 'comment_node_every_field', 'a:6:{s:5:"label";s:7:"Comment";s:8:"settings";a:2:{s:15:"text_processing";i:1;s:18:"user_register_form";b:0;}s:8:"required";b:1;s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:12:"text_default";s:6:"weight";i:0;s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";}}s:6:"widget";a:4:{s:4:"type";s:13:"text_textarea";s:8:"settings";a:1:{s:4:"rows";i:5;}s:6:"weight";i:0;s:6:"module";s:4:"text";}s:11:"description";s:0:"";}', '0'),
('3', '3', 'every_field_file', 'node', 'every_field', 'a:6:{s:5:"label";s:13:"Upload a file";s:6:"widget";a:4:{s:4:"type";s:9:"file_file";s:8:"settings";a:0:{}s:6:"weight";i:1;s:6:"module";N;}s:8:"settings";a:5:{s:15:"file_extensions";s:3:"txt";s:14:"file_directory";s:0:"";s:12:"max_filesize";s:0:"";s:17:"description_field";i:0;s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:12:"file_default";s:8:"settings";a:0:{}s:6:"module";s:4:"file";s:6:"weight";i:1;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('4', '4', 'every_field_image', 'node', 'every_field', 'a:6:{s:5:"label";s:15:"Upload an image";s:8:"required";b:0;s:6:"widget";a:4:{s:4:"type";s:11:"image_image";s:8:"settings";a:2:{s:18:"progress_indicator";s:8:"throbber";s:19:"preview_image_style";s:9:"thumbnail";}s:6:"weight";i:2;s:6:"module";s:5:"image";}s:8:"settings";a:9:{s:15:"file_extensions";s:16:"png gif jpg jpeg";s:14:"file_directory";s:0:"";s:12:"max_filesize";s:0:"";s:9:"alt_field";i:0;s:11:"title_field";i:0;s:14:"max_resolution";s:0:"";s:14:"min_resolution";s:0:"";s:13:"default_image";i:0;s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:5:"image";s:8:"settings";a:2:{s:11:"image_style";s:0:"";s:10:"image_link";s:0:"";}s:6:"module";s:5:"image";s:6:"weight";i:2;}}s:11:"description";s:0:"";}', '0'),
('5', '5', 'every_field_list_boolean', 'node', 'every_field', 'a:7:{s:5:"label";s:7:"Boolean";s:4:"type";s:12:"list_boolean";s:6:"widget";a:4:{s:4:"type";s:13:"options_onoff";s:8:"settings";a:1:{s:13:"display_label";i:0;}s:6:"weight";i:3;s:6:"module";s:7:"options";}s:8:"settings";a:1:{s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:12:"list_default";s:8:"settings";a:0:{}s:6:"module";s:4:"list";s:6:"weight";i:3;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('6', '6', 'every_field_list_integer', 'node', 'every_field', 'a:7:{s:5:"label";s:14:"List (integer)";s:4:"type";s:12:"list_integer";s:6:"widget";a:4:{s:4:"type";s:14:"options_select";s:8:"settings";a:0:{}s:6:"weight";i:4;s:6:"module";s:7:"options";}s:8:"settings";a:1:{s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:12:"list_default";s:8:"settings";a:0:{}s:6:"module";s:4:"list";s:6:"weight";i:4;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('7', '7', 'every_field_list_float', 'node', 'every_field', 'a:7:{s:5:"label";s:12:"List (float)";s:4:"type";s:10:"list_float";s:6:"widget";a:4:{s:4:"type";s:15:"options_buttons";s:8:"settings";a:0:{}s:6:"weight";i:5;s:6:"module";s:7:"options";}s:8:"settings";a:1:{s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:12:"list_default";s:8:"settings";a:0:{}s:6:"module";s:4:"list";s:6:"weight";i:5;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('8', '8', 'every_field_list_text', 'node', 'every_field', 'a:7:{s:5:"label";s:11:"List (text)";s:4:"type";s:9:"list_text";s:6:"widget";a:4:{s:4:"type";s:14:"options_select";s:8:"settings";a:0:{}s:6:"weight";i:6;s:6:"module";s:7:"options";}s:8:"settings";a:1:{s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:12:"list_default";s:8:"settings";a:0:{}s:6:"module";s:4:"list";s:6:"weight";i:6;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('9', '9', 'every_field_integer', 'node', 'every_field', 'a:7:{s:5:"label";s:7:"Integer";s:4:"type";s:14:"number_integer";s:6:"widget";a:4:{s:4:"type";s:6:"number";s:8:"settings";a:0:{}s:6:"weight";i:7;s:6:"module";s:6:"number";}s:8:"settings";a:5:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:14:"number_integer";s:8:"settings";a:4:{s:18:"thousand_separator";s:1:" ";s:17:"decimal_separator";s:1:".";s:5:"scale";i:0;s:13:"prefix_suffix";b:1;}s:6:"module";s:6:"number";s:6:"weight";i:7;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('10', '10', 'every_field_decimal', 'node', 'every_field', 'a:7:{s:5:"label";s:7:"Decimal";s:4:"type";s:14:"number_decimal";s:6:"widget";a:4:{s:4:"type";s:6:"number";s:8:"settings";a:0:{}s:6:"weight";i:8;s:6:"module";s:6:"number";}s:8:"settings";a:5:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:14:"number_decimal";s:8:"settings";a:4:{s:18:"thousand_separator";s:1:" ";s:17:"decimal_separator";s:1:".";s:5:"scale";i:2;s:13:"prefix_suffix";b:1;}s:6:"module";s:6:"number";s:6:"weight";i:8;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('11', '11', 'every_field_float', 'node', 'every_field', 'a:7:{s:5:"label";s:5:"Float";s:4:"type";s:12:"number_float";s:6:"widget";a:4:{s:4:"type";s:6:"number";s:8:"settings";a:0:{}s:6:"weight";i:9;s:6:"module";s:6:"number";}s:8:"settings";a:5:{s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:14:"number_decimal";s:8:"settings";a:4:{s:18:"thousand_separator";s:1:" ";s:17:"decimal_separator";s:1:".";s:5:"scale";i:2;s:13:"prefix_suffix";b:1;}s:6:"module";s:6:"number";s:6:"weight";i:9;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('12', '12', 'every_field_term_reference', 'node', 'every_field', 'a:7:{s:5:"label";s:4:"Tags";s:4:"type";s:23:"taxonomy_term_reference";s:6:"widget";a:4:{s:4:"type";s:21:"taxonomy_autocomplete";s:8:"settings";a:2:{s:4:"size";i:60;s:17:"autocomplete_path";s:21:"taxonomy/autocomplete";}s:6:"weight";i:10;s:6:"module";s:8:"taxonomy";}s:8:"settings";a:1:{s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:28:"taxonomy_term_reference_link";s:8:"settings";a:0:{}s:6:"module";s:8:"taxonomy";s:6:"weight";i:10;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('13', '13', 'every_field_text', 'node', 'every_field', 'a:7:{s:5:"label";s:4:"Text";s:4:"type";s:4:"text";s:6:"widget";a:4:{s:4:"type";s:14:"text_textfield";s:8:"settings";a:1:{s:4:"size";i:60;}s:6:"weight";i:11;s:6:"module";s:4:"text";}s:8:"settings";a:2:{s:15:"text_processing";i:0;s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:12:"text_default";s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";s:6:"weight";i:11;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('14', '14', 'every_field_text_long', 'node', 'every_field', 'a:7:{s:5:"label";s:10:"Text, long";s:4:"type";s:4:"text";s:6:"widget";a:4:{s:4:"type";s:13:"text_textarea";s:8:"settings";a:1:{s:4:"rows";i:5;}s:6:"weight";i:12;s:6:"module";s:4:"text";}s:8:"settings";a:2:{s:15:"text_processing";i:0;s:18:"user_register_form";b:0;}s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:5:"above";s:4:"type";s:12:"text_default";s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";s:6:"weight";i:12;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('15', '2', 'comment_body', 'comment', 'comment_node_page', 'a:6:{s:5:"label";s:7:"Comment";s:8:"settings";a:2:{s:15:"text_processing";i:1;s:18:"user_register_form";b:0;}s:8:"required";b:1;s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:12:"text_default";s:6:"weight";i:0;s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";}}s:6:"widget";a:4:{s:4:"type";s:13:"text_textarea";s:8:"settings";a:1:{s:4:"rows";i:5;}s:6:"weight";i:0;s:6:"module";s:4:"text";}s:11:"description";s:0:"";}', '0'),
('16', '1', 'body', 'node', 'page', 'a:6:{s:5:"label";s:4:"Body";s:6:"widget";a:4:{s:4:"type";s:26:"text_textarea_with_summary";s:8:"settings";a:2:{s:4:"rows";i:20;s:12:"summary_rows";i:5;}s:6:"weight";i:-4;s:6:"module";s:4:"text";}s:8:"settings";a:3:{s:15:"display_summary";b:1;s:15:"text_processing";i:1;s:18:"user_register_form";b:0;}s:7:"display";a:2:{s:7:"default";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:12:"text_default";s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";s:6:"weight";i:0;}s:6:"teaser";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:23:"text_summary_or_trimmed";s:8:"settings";a:1:{s:11:"trim_length";i:600;}s:6:"module";s:4:"text";s:6:"weight";i:0;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('17', '2', 'comment_body', 'comment', 'comment_node_article', 'a:6:{s:5:"label";s:7:"Comment";s:8:"settings";a:2:{s:15:"text_processing";i:1;s:18:"user_register_form";b:0;}s:8:"required";b:1;s:7:"display";a:1:{s:7:"default";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:12:"text_default";s:6:"weight";i:0;s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";}}s:6:"widget";a:4:{s:4:"type";s:13:"text_textarea";s:8:"settings";a:1:{s:4:"rows";i:5;}s:6:"weight";i:0;s:6:"module";s:4:"text";}s:11:"description";s:0:"";}', '0'),
('18', '1', 'body', 'node', 'article', 'a:6:{s:5:"label";s:4:"Body";s:6:"widget";a:4:{s:4:"type";s:26:"text_textarea_with_summary";s:8:"settings";a:2:{s:4:"rows";i:20;s:12:"summary_rows";i:5;}s:6:"weight";i:-4;s:6:"module";s:4:"text";}s:8:"settings";a:3:{s:15:"display_summary";b:1;s:15:"text_processing";i:1;s:18:"user_register_form";b:0;}s:7:"display";a:2:{s:7:"default";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:12:"text_default";s:8:"settings";a:1:{s:4:"edit";a:1:{s:6:"editor";s:6:"direct";}}s:6:"module";s:4:"text";s:6:"weight";i:0;}s:6:"teaser";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:23:"text_summary_or_trimmed";s:8:"settings";a:1:{s:11:"trim_length";i:600;}s:6:"module";s:4:"text";s:6:"weight";i:0;}}s:8:"required";b:0;s:11:"description";s:0:"";}', '0'),
('19', '17', 'field_tags', 'node', 'article', 'a:6:{s:5:"label";s:4:"Tags";s:11:"description";s:63:"Enter a comma-separated list of words to describe your content.";s:6:"widget";a:4:{s:4:"type";s:21:"taxonomy_autocomplete";s:6:"weight";i:-4;s:8:"settings";a:2:{s:4:"size";i:60;s:17:"autocomplete_path";s:21:"taxonomy/autocomplete";}s:6:"module";s:8:"taxonomy";}s:7:"display";a:2:{s:7:"default";a:5:{s:4:"type";s:28:"taxonomy_term_reference_link";s:6:"weight";i:10;s:5:"label";s:5:"above";s:8:"settings";a:0:{}s:6:"module";s:8:"taxonomy";}s:6:"teaser";a:5:{s:4:"type";s:28:"taxonomy_term_reference_link";s:6:"weight";i:10;s:5:"label";s:5:"above";s:8:"settings";a:0:{}s:6:"module";s:8:"taxonomy";}}s:8:"settings";a:1:{s:18:"user_register_form";b:0;}s:8:"required";b:0;}', '0'),
('20', '18', 'field_image', 'node', 'article', 'a:6:{s:5:"label";s:5:"Image";s:11:"description";s:40:"Upload an image to go with this article.";s:8:"required";b:0;s:8:"settings";a:9:{s:14:"file_directory";s:11:"field/image";s:15:"file_extensions";s:16:"png gif jpg jpeg";s:12:"max_filesize";s:0:"";s:14:"max_resolution";s:0:"";s:14:"min_resolution";s:0:"";s:9:"alt_field";b:1;s:11:"title_field";s:0:"";s:13:"default_image";i:0;s:18:"user_register_form";b:0;}s:6:"widget";a:4:{s:4:"type";s:11:"image_image";s:8:"settings";a:2:{s:18:"progress_indicator";s:8:"throbber";s:19:"preview_image_style";s:9:"thumbnail";}s:6:"weight";i:-1;s:6:"module";s:5:"image";}s:7:"display";a:2:{s:7:"default";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:5:"image";s:8:"settings";a:2:{s:11:"image_style";s:5:"large";s:10:"image_link";s:0:"";}s:6:"weight";i:-1;s:6:"module";s:5:"image";}s:6:"teaser";a:5:{s:5:"label";s:6:"hidden";s:4:"type";s:5:"image";s:8:"settings";a:2:{s:11:"image_style";s:6:"medium";s:10:"image_link";s:7:"content";}s:6:"weight";i:-1;s:6:"module";s:5:"image";}}}', '0');
/*!40000 ALTER TABLE field_config_instance ENABLE KEYS */;

--
-- Table structure for table 'field_data_body'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 1 (body)';

--
-- Dumping data for table 'field_data_body'
--

/*!40000 ALTER TABLE field_data_body DISABLE KEYS */;
INSERT INTO `field_data_body` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '<p><img alt="" src="/sites/default/files/images/sub-images/Smoking-with-friend.jpg" style="width: 460px; height: 276px;" /></p>\r\n\r\n<p>Welcome to a pre-release version of the <a href="http://drupal.org/project/spark">Spark distribution</a>! Our goal is to greatly improve the authoring experience of Drupal, through a Drupal 7 distribution that can be used today, but can also be proposed as Drupal 8 core improvements for tomorrow. You can read more about it at <a href="http://buytaert.net/announcing-spark-authoring-improvements-for-drupal-7-and-drupal-8">the official announcement</a> or at <a href="http://www.sparkdrupal.com/">www.sparkdrupal.com</a>. Read on for more info! <img align="right" alt="Spark Logo" data-caption="The Spark logo, complete with a lovely image caption. Go into Edit mode and edit this text! We dare you!" height="100" src="http://drupal.org/files/imagecache/grid-3/project-images/spark_logo.png" width="193" /> Please take a look around! Within, you will find such nifty features as:</p>\r\n\r\n<ul>\r\n	<li><strong>Inline Editing</strong>, courtesy of <a href="http://drupal.org/project/edit">Edit module</a>. Simply click into this node, log in as an admin, then click the "Quick Edit" link in the sidebar. From there you can click directly into any field to edit its contents. Including this one! For fancier fields like boolean and multivalue, you get just edit the form field directly. Try it out!</li>\r\n	<li><strong>"True" WYSIWYG</strong>, courtesy of <a href="http://ckeditor.com/">CKEditor v4</a>. Edit your rich text with your theme''s direct styling through the inline editor. Support for images, tables, paste from Word, and more. :)</li>\r\n	<li><strong>Responsive Layout Builder</strong>, courtesy of the <a href="http://drupal.org/project/layout">Layout</a> and <a href="http://drupal.org/project/gridbuilder">Gridbuilder</a> modules. It layers on top of Panels (though is architected so it could work on other layout solutions as well). If you want to try it, as an admin go to <a href="/www/spark-7.x-1.0-alpha8/?q=admin/structure/panels/layouts/list/default/edit">Structure &gt; Panels &gt; Custom Layout</a>. You can configure layouts for separate breakpoints (e.g. Mobile, Tablet, Desktop) and even define your own grids. These layouts and grids are all CTools exportable, and become layouts you can use in your Panels pages!</li>\r\n	<li><strong>New admin theme</strong>, brought to you by <a href="http://drupal.org/project/ember">Ember</a>. This brings some nice light styling on Drupal core''s Seven admin theme as well as a mobile-friendly toolbar courtesy of the Admin module. This functionality is still a bit rough, but we''re actively working on it right now!</li>\r\n</ul>\r\n\r\n<p>We hope you enjoy playing with Spark! We greatly welcome collaboration; join us in the <a href="http://drupal.org/project/issues/spark">issue queue</a>!</p>\r\n', '', 'filtered_html'),
('node', 'page', '0', '2', '2', 'und', '0', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.\n\nEfficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.\n\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service.', NULL, 'filtered_html');
/*!40000 ALTER TABLE field_data_body ENABLE KEYS */;

--
-- Table structure for table 'field_data_comment_body'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 2 (comment_body)';

--
-- Dumping data for table 'field_data_comment_body'
--

/*!40000 ALTER TABLE field_data_comment_body DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_comment_body ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_decimal'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 10 (every_field_decimal)';

--
-- Dumping data for table 'field_data_every_field_decimal'
--

/*!40000 ALTER TABLE field_data_every_field_decimal DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_every_field_decimal ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_file'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 3 (every_field_file)';

--
-- Dumping data for table 'field_data_every_field_file'
--

/*!40000 ALTER TABLE field_data_every_field_file DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_every_field_file ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_float'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 11 (every_field_float)';

--
-- Dumping data for table 'field_data_every_field_float'
--

/*!40000 ALTER TABLE field_data_every_field_float DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_every_field_float ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_image'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 4 (every_field_image)';

--
-- Dumping data for table 'field_data_every_field_image'
--

/*!40000 ALTER TABLE field_data_every_field_image DISABLE KEYS */;
INSERT INTO `field_data_every_field_image` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '1', '', '', '1600', '1208');
/*!40000 ALTER TABLE field_data_every_field_image ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_integer'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 9 (every_field_integer)';

--
-- Dumping data for table 'field_data_every_field_integer'
--

/*!40000 ALTER TABLE field_data_every_field_integer DISABLE KEYS */;
INSERT INTO `field_data_every_field_integer` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '7');
/*!40000 ALTER TABLE field_data_every_field_integer ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_list_boolean'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 5 (every_field_list_boolean)';

--
-- Dumping data for table 'field_data_every_field_list_boolean'
--

/*!40000 ALTER TABLE field_data_every_field_list_boolean DISABLE KEYS */;
INSERT INTO `field_data_every_field_list_boolean` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '1');
/*!40000 ALTER TABLE field_data_every_field_list_boolean ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_list_float'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 7 (every_field_list_float)';

--
-- Dumping data for table 'field_data_every_field_list_float'
--

/*!40000 ALTER TABLE field_data_every_field_list_float DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_every_field_list_float ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_list_integer'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 6 (every_field_list_integer)';

--
-- Dumping data for table 'field_data_every_field_list_integer'
--

/*!40000 ALTER TABLE field_data_every_field_list_integer DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_every_field_list_integer ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_list_text'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 8 (every_field_list_text)';

--
-- Dumping data for table 'field_data_every_field_list_text'
--

/*!40000 ALTER TABLE field_data_every_field_list_text DISABLE KEYS */;
INSERT INTO `field_data_every_field_list_text` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', 'L');
/*!40000 ALTER TABLE field_data_every_field_list_text ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_term_reference'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 12 (every_field_term_reference)';

--
-- Dumping data for table 'field_data_every_field_term_reference'
--

/*!40000 ALTER TABLE field_data_every_field_term_reference DISABLE KEYS */;
INSERT INTO `field_data_every_field_term_reference` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '1'),
('node', 'every_field', '0', '1', '1', 'und', '1', '2'),
('node', 'every_field', '0', '1', '1', 'und', '2', '3');
/*!40000 ALTER TABLE field_data_every_field_term_reference ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_text'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 13 (every_field_text)';

--
-- Dumping data for table 'field_data_every_field_text'
--

/*!40000 ALTER TABLE field_data_every_field_text DISABLE KEYS */;
INSERT INTO `field_data_every_field_text` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', 'A text field.', NULL);
/*!40000 ALTER TABLE field_data_every_field_text ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_text_long'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 14 (every_field_text_long)';

--
-- Dumping data for table 'field_data_every_field_text_long'
--

/*!40000 ALTER TABLE field_data_every_field_text_long DISABLE KEYS */;
INSERT INTO `field_data_every_field_text_long` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.\r\n\r\nEfficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service.', NULL);
/*!40000 ALTER TABLE field_data_every_field_text_long ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_text_with_summary'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 15 (every_field_text_with_summary)';

--
-- Dumping data for table 'field_data_every_field_text_with_summary'
--

/*!40000 ALTER TABLE field_data_every_field_text_with_summary DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_every_field_text_with_summary ENABLE KEYS */;

--
-- Table structure for table 'field_data_every_field_tricky'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 16 (every_field_tricky)';

--
-- Dumping data for table 'field_data_every_field_tricky'
--

/*!40000 ALTER TABLE field_data_every_field_tricky DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_every_field_tricky ENABLE KEYS */;

--
-- Table structure for table 'field_data_field_image'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 18 (field_image)';

--
-- Dumping data for table 'field_data_field_image'
--

/*!40000 ALTER TABLE field_data_field_image DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_field_image ENABLE KEYS */;

--
-- Table structure for table 'field_data_field_tags'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Data storage for field 17 (field_tags)';

--
-- Dumping data for table 'field_data_field_tags'
--

/*!40000 ALTER TABLE field_data_field_tags DISABLE KEYS */;
/*!40000 ALTER TABLE field_data_field_tags ENABLE KEYS */;

--
-- Table structure for table 'field_revision_body'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 1 (body)';

--
-- Dumping data for table 'field_revision_body'
--

/*!40000 ALTER TABLE field_revision_body DISABLE KEYS */;
INSERT INTO `field_revision_body` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '<p><img alt="" src="/sites/default/files/images/sub-images/Smoking-with-friend.jpg" style="width: 460px; height: 276px;" /></p>\r\n\r\n<p>Welcome to a pre-release version of the <a href="http://drupal.org/project/spark">Spark distribution</a>! Our goal is to greatly improve the authoring experience of Drupal, through a Drupal 7 distribution that can be used today, but can also be proposed as Drupal 8 core improvements for tomorrow. You can read more about it at <a href="http://buytaert.net/announcing-spark-authoring-improvements-for-drupal-7-and-drupal-8">the official announcement</a> or at <a href="http://www.sparkdrupal.com/">www.sparkdrupal.com</a>. Read on for more info! <img align="right" alt="Spark Logo" data-caption="The Spark logo, complete with a lovely image caption. Go into Edit mode and edit this text! We dare you!" height="100" src="http://drupal.org/files/imagecache/grid-3/project-images/spark_logo.png" width="193" /> Please take a look around! Within, you will find such nifty features as:</p>\r\n\r\n<ul>\r\n	<li><strong>Inline Editing</strong>, courtesy of <a href="http://drupal.org/project/edit">Edit module</a>. Simply click into this node, log in as an admin, then click the "Quick Edit" link in the sidebar. From there you can click directly into any field to edit its contents. Including this one! For fancier fields like boolean and multivalue, you get just edit the form field directly. Try it out!</li>\r\n	<li><strong>"True" WYSIWYG</strong>, courtesy of <a href="http://ckeditor.com/">CKEditor v4</a>. Edit your rich text with your theme''s direct styling through the inline editor. Support for images, tables, paste from Word, and more. :)</li>\r\n	<li><strong>Responsive Layout Builder</strong>, courtesy of the <a href="http://drupal.org/project/layout">Layout</a> and <a href="http://drupal.org/project/gridbuilder">Gridbuilder</a> modules. It layers on top of Panels (though is architected so it could work on other layout solutions as well). If you want to try it, as an admin go to <a href="/www/spark-7.x-1.0-alpha8/?q=admin/structure/panels/layouts/list/default/edit">Structure &gt; Panels &gt; Custom Layout</a>. You can configure layouts for separate breakpoints (e.g. Mobile, Tablet, Desktop) and even define your own grids. These layouts and grids are all CTools exportable, and become layouts you can use in your Panels pages!</li>\r\n	<li><strong>New admin theme</strong>, brought to you by <a href="http://drupal.org/project/ember">Ember</a>. This brings some nice light styling on Drupal core''s Seven admin theme as well as a mobile-friendly toolbar courtesy of the Admin module. This functionality is still a bit rough, but we''re actively working on it right now!</li>\r\n</ul>\r\n\r\n<p>We hope you enjoy playing with Spark! We greatly welcome collaboration; join us in the <a href="http://drupal.org/project/issues/spark">issue queue</a>!</p>\r\n', '', 'filtered_html'),
('node', 'page', '0', '2', '2', 'und', '0', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.\n\nEfficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.\n\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service.', NULL, 'filtered_html');
/*!40000 ALTER TABLE field_revision_body ENABLE KEYS */;

--
-- Table structure for table 'field_revision_comment_body'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 2 (comment_body)';

--
-- Dumping data for table 'field_revision_comment_body'
--

/*!40000 ALTER TABLE field_revision_comment_body DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_comment_body ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_decimal'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 10 (every_field_decimal)';

--
-- Dumping data for table 'field_revision_every_field_decimal'
--

/*!40000 ALTER TABLE field_revision_every_field_decimal DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_every_field_decimal ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_file'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 3 (every_field_file)';

--
-- Dumping data for table 'field_revision_every_field_file'
--

/*!40000 ALTER TABLE field_revision_every_field_file DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_every_field_file ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_float'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 11 (every_field_float)';

--
-- Dumping data for table 'field_revision_every_field_float'
--

/*!40000 ALTER TABLE field_revision_every_field_float DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_every_field_float ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_image'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 4 (every_field_image)';

--
-- Dumping data for table 'field_revision_every_field_image'
--

/*!40000 ALTER TABLE field_revision_every_field_image DISABLE KEYS */;
INSERT INTO `field_revision_every_field_image` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '1', '', '', '1600', '1208');
/*!40000 ALTER TABLE field_revision_every_field_image ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_integer'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 9 (every_field_integer)';

--
-- Dumping data for table 'field_revision_every_field_integer'
--

/*!40000 ALTER TABLE field_revision_every_field_integer DISABLE KEYS */;
INSERT INTO `field_revision_every_field_integer` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '7');
/*!40000 ALTER TABLE field_revision_every_field_integer ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_list_boolean'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 5 (every_field_list...';

--
-- Dumping data for table 'field_revision_every_field_list_boolean'
--

/*!40000 ALTER TABLE field_revision_every_field_list_boolean DISABLE KEYS */;
INSERT INTO `field_revision_every_field_list_boolean` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '1');
/*!40000 ALTER TABLE field_revision_every_field_list_boolean ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_list_float'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 7 (every_field_list...';

--
-- Dumping data for table 'field_revision_every_field_list_float'
--

/*!40000 ALTER TABLE field_revision_every_field_list_float DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_every_field_list_float ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_list_integer'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 6 (every_field_list...';

--
-- Dumping data for table 'field_revision_every_field_list_integer'
--

/*!40000 ALTER TABLE field_revision_every_field_list_integer DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_every_field_list_integer ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_list_text'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 8 (every_field_list_text)';

--
-- Dumping data for table 'field_revision_every_field_list_text'
--

/*!40000 ALTER TABLE field_revision_every_field_list_text DISABLE KEYS */;
INSERT INTO `field_revision_every_field_list_text` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', 'L');
/*!40000 ALTER TABLE field_revision_every_field_list_text ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_term_reference'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 12 (every_field_term...';

--
-- Dumping data for table 'field_revision_every_field_term_reference'
--

/*!40000 ALTER TABLE field_revision_every_field_term_reference DISABLE KEYS */;
INSERT INTO `field_revision_every_field_term_reference` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', '1'),
('node', 'every_field', '0', '1', '1', 'und', '1', '2'),
('node', 'every_field', '0', '1', '1', 'und', '2', '3');
/*!40000 ALTER TABLE field_revision_every_field_term_reference ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_text'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 13 (every_field_text)';

--
-- Dumping data for table 'field_revision_every_field_text'
--

/*!40000 ALTER TABLE field_revision_every_field_text DISABLE KEYS */;
INSERT INTO `field_revision_every_field_text` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', 'A text field.', NULL);
/*!40000 ALTER TABLE field_revision_every_field_text ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_text_long'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 14 (every_field_text...';

--
-- Dumping data for table 'field_revision_every_field_text_long'
--

/*!40000 ALTER TABLE field_revision_every_field_text_long DISABLE KEYS */;
INSERT INTO `field_revision_every_field_text_long` VALUES
('node', 'every_field', '0', '1', '1', 'und', '0', 'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.\r\n\r\nEfficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.\r\n\r\nCompletely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service.', NULL);
/*!40000 ALTER TABLE field_revision_every_field_text_long ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_text_with_summary'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 15 (every_field_text...';

--
-- Dumping data for table 'field_revision_every_field_text_with_summary'
--

/*!40000 ALTER TABLE field_revision_every_field_text_with_summary DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_every_field_text_with_summary ENABLE KEYS */;

--
-- Table structure for table 'field_revision_every_field_tricky'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 16 (every_field_tricky)';

--
-- Dumping data for table 'field_revision_every_field_tricky'
--

/*!40000 ALTER TABLE field_revision_every_field_tricky DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_every_field_tricky ENABLE KEYS */;

--
-- Table structure for table 'field_revision_field_image'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 18 (field_image)';

--
-- Dumping data for table 'field_revision_field_image'
--

/*!40000 ALTER TABLE field_revision_field_image DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_field_image ENABLE KEYS */;

--
-- Table structure for table 'field_revision_field_tags'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Revision archive storage for field 17 (field_tags)';

--
-- Dumping data for table 'field_revision_field_tags'
--

/*!40000 ALTER TABLE field_revision_field_tags DISABLE KEYS */;
/*!40000 ALTER TABLE field_revision_field_tags ENABLE KEYS */;

--
-- Table structure for table 'file_managed'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores information for uploaded files.';

--
-- Dumping data for table 'file_managed'
--

/*!40000 ALTER TABLE file_managed DISABLE KEYS */;
INSERT INTO `file_managed` VALUES
('1', '1', 'Happy-Birthday-3.jpg', 'public://Happy-Birthday-3.jpg', 'image/jpeg', '173345', '1', '1365409790');
/*!40000 ALTER TABLE file_managed ENABLE KEYS */;

--
-- Table structure for table 'file_usage'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Track where a file is used.';

--
-- Dumping data for table 'file_usage'
--

/*!40000 ALTER TABLE file_usage DISABLE KEYS */;
INSERT INTO `file_usage` VALUES
('1', 'file', 'node', '1', '1');
/*!40000 ALTER TABLE file_usage ENABLE KEYS */;

--
-- Table structure for table 'filter'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Table that maps filters (HTML corrector) to text formats ...';

--
-- Dumping data for table 'filter'
--

/*!40000 ALTER TABLE filter DISABLE KEYS */;
INSERT INTO `filter` VALUES
('filtered_html', 'filter', 'filter_autop', '0', '0', 'a:0:{}'),
('filtered_html', 'filter', 'filter_html', '1', '1', 'a:3:{s:12:"allowed_html";s:95:"<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd> <br> <p> <img> <pre>";s:16:"filter_html_help";i:1;s:20:"filter_html_nofollow";i:0;}'),
('filtered_html', 'filter', 'filter_htmlcorrector', '10', '1', 'a:0:{}'),
('filtered_html', 'filter', 'filter_html_escape', '-10', '0', 'a:0:{}'),
('filtered_html', 'filter', 'filter_url', '0', '0', 'a:1:{s:17:"filter_url_length";i:72;}'),
('full_html', 'filter', 'filter_autop', '0', '0', 'a:0:{}'),
('full_html', 'filter', 'filter_html', '-10', '0', 'a:3:{s:12:"allowed_html";s:74:"<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd>";s:16:"filter_html_help";i:1;s:20:"filter_html_nofollow";i:0;}'),
('full_html', 'filter', 'filter_htmlcorrector', '10', '1', 'a:0:{}'),
('full_html', 'filter', 'filter_html_escape', '-10', '0', 'a:0:{}'),
('full_html', 'filter', 'filter_url', '0', '0', 'a:1:{s:17:"filter_url_length";i:72;}'),
('plain_text', 'filter', 'filter_autop', '2', '1', 'a:0:{}'),
('plain_text', 'filter', 'filter_html', '-10', '0', 'a:3:{s:12:"allowed_html";s:74:"<a> <em> <strong> <cite> <blockquote> <code> <ul> <ol> <li> <dl> <dt> <dd>";s:16:"filter_html_help";i:1;s:20:"filter_html_nofollow";i:0;}'),
('plain_text', 'filter', 'filter_htmlcorrector', '10', '0', 'a:0:{}'),
('plain_text', 'filter', 'filter_html_escape', '0', '1', 'a:0:{}'),
('plain_text', 'filter', 'filter_url', '1', '1', 'a:1:{s:17:"filter_url_length";i:72;}');
/*!40000 ALTER TABLE filter ENABLE KEYS */;

--
-- Table structure for table 'filter_format'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores text formats: custom groupings of filters, such as...';

--
-- Dumping data for table 'filter_format'
--

/*!40000 ALTER TABLE filter_format DISABLE KEYS */;
INSERT INTO `filter_format` VALUES
('filtered_html', 'Filtered HTML', '1', '1', '0'),
('full_html', 'Full HTML', '1', '1', '1'),
('plain_text', 'Plain text', '1', '1', '10');
/*!40000 ALTER TABLE filter_format ENABLE KEYS */;

--
-- Table structure for table 'flood'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Flood controls the threshold of events, such as the...';

--
-- Dumping data for table 'flood'
--

/*!40000 ALTER TABLE flood DISABLE KEYS */;
/*!40000 ALTER TABLE flood ENABLE KEYS */;

--
-- Table structure for table 'gridbuilder'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information about gridbuilder grids';

--
-- Dumping data for table 'gridbuilder'
--

/*!40000 ALTER TABLE gridbuilder DISABLE KEYS */;
/*!40000 ALTER TABLE gridbuilder ENABLE KEYS */;

--
-- Table structure for table 'history'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='A record of which users have read which nodes.';

--
-- Dumping data for table 'history'
--

/*!40000 ALTER TABLE history DISABLE KEYS */;
INSERT INTO `history` VALUES
('1', '1', '1365409813'),
('1', '2', '1365408801');
/*!40000 ALTER TABLE history ENABLE KEYS */;

--
-- Table structure for table 'image_effects'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores configuration options for image effects.';

--
-- Dumping data for table 'image_effects'
--

/*!40000 ALTER TABLE image_effects DISABLE KEYS */;
/*!40000 ALTER TABLE image_effects ENABLE KEYS */;

--
-- Table structure for table 'image_styles'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores configuration options for image styles.';

--
-- Dumping data for table 'image_styles'
--

/*!40000 ALTER TABLE image_styles DISABLE KEYS */;
/*!40000 ALTER TABLE image_styles ENABLE KEYS */;

--
-- Table structure for table 'layout_breakpoint'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information about common breakpoints for responsive layouts.';

--
-- Dumping data for table 'layout_breakpoint'
--

/*!40000 ALTER TABLE layout_breakpoint DISABLE KEYS */;
/*!40000 ALTER TABLE layout_breakpoint ENABLE KEYS */;

--
-- Table structure for table 'layout_region'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Information about common regions for responsive layouts.';

--
-- Dumping data for table 'layout_region'
--

/*!40000 ALTER TABLE layout_region DISABLE KEYS */;
/*!40000 ALTER TABLE layout_region ENABLE KEYS */;

--
-- Table structure for table 'menu_custom'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Holds definitions for top-level custom menus (for example...';

--
-- Dumping data for table 'menu_custom'
--

/*!40000 ALTER TABLE menu_custom DISABLE KEYS */;
INSERT INTO `menu_custom` VALUES
('main-menu', 'Main menu', 'The <em>Main</em> menu is used on many sites to show the major sections of the site, often in a top navigation bar.'),
('management', 'Management', 'The <em>Management</em> menu contains links for administrative tasks.'),
('navigation', 'Navigation', 'The <em>Navigation</em> menu contains links intended for site visitors. Links are added to the <em>Navigation</em> menu automatically by some modules.'),
('user-menu', 'User menu', 'The <em>User</em> menu contains links related to the user''s account, as well as the ''Log out'' link.');
/*!40000 ALTER TABLE menu_custom ENABLE KEYS */;

--
-- Table structure for table 'menu_links'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Contains the individual links within a menu.';

--
-- Dumping data for table 'menu_links'
--

/*!40000 ALTER TABLE menu_links DISABLE KEYS */;
INSERT INTO `menu_links` VALUES
('management', '1', '0', 'admin', 'admin', 'Administration', 'a:0:{}', 'system', 0, 0, 1, 0, '9', 1, 0, '1', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('user-menu', '2', '0', 'user', 'user', 'User account', 'a:1:{s:5:"alter";b:1;}', 'system', 0, 0, 0, 0, '-10', 1, 0, '2', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '3', '0', 'filter/tips', 'filter/tips', 'Compose tips', 'a:0:{}', 'system', 1, 0, 0, 0, '0', 1, 0, '3', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '4', '0', 'node/%', 'node/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 1, 0, '4', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '5', '0', 'node/add', 'node/add', 'Add content', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 1, 0, '5', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '6', '1', 'admin/appearance', 'admin/appearance', 'Appearance', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"Select and configure your themes.";}}', 'system', 0, 0, 0, 0, '-6', 2, 0, '1', '6', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '7', '1', 'admin/config', 'admin/config', 'Configuration', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:20:"Administer settings.";}}', 'system', 0, 0, 1, 0, '0', 2, 0, '1', '7', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '8', '1', 'admin/content', 'admin/content', 'Content', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:32:"Administer content and comments.";}}', 'system', 0, 0, 1, 0, '-10', 2, 0, '1', '8', '0', '0', '0', '0', '0', '0', '0', 0),
('user-menu', '9', '2', 'user/register', 'user/register', 'Create new account', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '2', '9', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '10', '1', 'admin/index', 'admin/index', 'Index', 'a:0:{}', 'system', -1, 0, 0, 0, '-18', 2, 0, '1', '10', '0', '0', '0', '0', '0', '0', '0', 0),
('user-menu', '11', '2', 'user/login', 'user/login', 'Log in', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '2', '11', '0', '0', '0', '0', '0', '0', '0', 0),
('user-menu', '12', '0', 'user/logout', 'user/logout', 'Log out', 'a:0:{}', 'system', 0, 0, 0, 0, '10', 1, 0, '12', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '13', '1', 'admin/modules', 'admin/modules', 'Modules', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Extend site functionality.";}}', 'system', 0, 0, 0, 0, '-2', 2, 0, '1', '13', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '14', '0', 'user/%', 'user/%', 'My account', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 1, 0, '14', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '15', '1', 'admin/people', 'admin/people', 'People', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Manage user accounts, roles, and permissions.";}}', 'system', 0, 0, 0, 0, '-4', 2, 0, '1', '15', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '16', '1', 'admin/reports', 'admin/reports', 'Reports', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:34:"View reports, updates, and errors.";}}', 'system', 0, 0, 1, 0, '5', 2, 0, '1', '16', '0', '0', '0', '0', '0', '0', '0', 0),
('user-menu', '17', '2', 'user/password', 'user/password', 'Request new password', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '2', '17', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '18', '1', 'admin/structure', 'admin/structure', 'Structure', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Administer blocks, content types, menus, etc.";}}', 'system', 0, 0, 1, 0, '-8', 2, 0, '1', '18', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '19', '1', 'admin/tasks', 'admin/tasks', 'Tasks', 'a:0:{}', 'system', -1, 0, 0, 0, '-20', 2, 0, '1', '19', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '20', '15', 'admin/people/create', 'admin/people/create', 'Add user', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '15', '20', '0', '0', '0', '0', '0', '0', 0),
('management', '21', '18', 'admin/structure/block', 'admin/structure/block', 'Blocks', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:79:"Configure what block content appears in your site''s sidebars and other regions.";}}', 'system', 0, 0, 1, 0, '0', 3, 0, '1', '18', '21', '0', '0', '0', '0', '0', '0', 0),
('navigation', '22', '14', 'user/%/cancel', 'user/%/cancel', 'Cancel account', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 2, 0, '14', '22', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '23', '8', 'admin/content/node', 'admin/content/node', 'Content', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 3, 0, '1', '8', '23', '0', '0', '0', '0', '0', '0', 0),
('management', '24', '7', 'admin/config/content', 'admin/config/content', 'Content authoring', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:53:"Settings related to formatting and authoring content.";}}', 'system', 0, 0, 1, 0, '-15', 3, 0, '1', '7', '24', '0', '0', '0', '0', '0', '0', 0),
('management', '25', '18', 'admin/structure/types', 'admin/structure/types', 'Content types', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:92:"Manage content types, including default status, front page promotion, comment settings, etc.";}}', 'system', 0, 0, 1, 0, '0', 3, 0, '1', '18', '25', '0', '0', '0', '0', '0', '0', 0),
('navigation', '26', '4', 'node/%/delete', 'node/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, '1', 2, 0, '4', '26', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '27', '7', 'admin/config/development', 'admin/config/development', 'Development', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Development tools.";}}', 'system', 0, 0, 1, 0, '-10', 3, 0, '1', '7', '27', '0', '0', '0', '0', '0', '0', 0),
('navigation', '28', '14', 'user/%/edit', 'user/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '14', '28', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '29', '4', 'node/%/edit', 'node/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '4', '29', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '30', '13', 'admin/modules/list', 'admin/modules/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '13', '30', '0', '0', '0', '0', '0', '0', 0),
('management', '31', '15', 'admin/people/people', 'admin/people/people', 'List', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:50:"Find and manage people interacting with your site.";}}', 'system', -1, 0, 0, 0, '-10', 3, 0, '1', '15', '31', '0', '0', '0', '0', '0', '0', 0),
('management', '32', '6', 'admin/appearance/list', 'admin/appearance/list', 'List', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:31:"Select and configure your theme";}}', 'system', -1, 0, 0, 0, '-1', 3, 0, '1', '6', '32', '0', '0', '0', '0', '0', '0', 0),
('management', '33', '7', 'admin/config/media', 'admin/config/media', 'Media', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:12:"Media tools.";}}', 'system', 0, 0, 1, 0, '-10', 3, 0, '1', '7', '33', '0', '0', '0', '0', '0', '0', 0),
('management', '34', '7', 'admin/config/people', 'admin/config/people', 'People', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:24:"Configure user accounts.";}}', 'system', 0, 0, 1, 0, '-20', 3, 0, '1', '7', '34', '0', '0', '0', '0', '0', '0', 0),
('management', '35', '15', 'admin/people/permissions', 'admin/people/permissions', 'Permissions', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:64:"Determine access to features by selecting permissions for roles.";}}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '15', '35', '0', '0', '0', '0', '0', '0', 0),
('management', '36', '7', 'admin/config/regional', 'admin/config/regional', 'Regional and language', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:48:"Regional settings, localization and translation.";}}', 'system', 0, 0, 1, 0, '-5', 3, 0, '1', '7', '36', '0', '0', '0', '0', '0', '0', 0),
('navigation', '37', '4', 'node/%/revisions', 'node/%/revisions', 'Revisions', 'a:0:{}', 'system', -1, 0, 1, 0, '2', 2, 0, '4', '37', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '38', '7', 'admin/config/search', 'admin/config/search', 'Search and metadata', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"Local site search, metadata and SEO.";}}', 'system', 0, 0, 1, 0, '-10', 3, 0, '1', '7', '38', '0', '0', '0', '0', '0', '0', 0),
('management', '39', '6', 'admin/appearance/settings', 'admin/appearance/settings', 'Settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"Configure default and theme specific settings.";}}', 'system', -1, 0, 0, 0, '20', 3, 0, '1', '6', '39', '0', '0', '0', '0', '0', '0', 0),
('management', '40', '16', 'admin/reports/status', 'admin/reports/status', 'Status report', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Get a status report about your site''s operation and any detected problems.";}}', 'system', 0, 0, 0, 0, '-60', 3, 0, '1', '16', '40', '0', '0', '0', '0', '0', '0', 0),
('management', '41', '7', 'admin/config/system', 'admin/config/system', 'System', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:37:"General system related configuration.";}}', 'system', 0, 0, 1, 0, '-20', 3, 0, '1', '7', '41', '0', '0', '0', '0', '0', '0', 0),
('management', '42', '13', 'admin/modules/uninstall', 'admin/modules/uninstall', 'Uninstall', 'a:0:{}', 'system', -1, 0, 0, 0, '20', 3, 0, '1', '13', '42', '0', '0', '0', '0', '0', '0', 0),
('management', '43', '7', 'admin/config/user-interface', 'admin/config/user-interface', 'User interface', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Tools that enhance the user interface.";}}', 'system', 0, 0, 1, 0, '-15', 3, 0, '1', '7', '43', '0', '0', '0', '0', '0', '0', 0),
('navigation', '44', '4', 'node/%/view', 'node/%/view', 'View', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 2, 0, '4', '44', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '45', '14', 'user/%/view', 'user/%/view', 'View', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 2, 0, '14', '45', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '46', '7', 'admin/config/services', 'admin/config/services', 'Web services', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"Tools related to web services.";}}', 'system', 0, 0, 1, 0, '0', 3, 0, '1', '7', '46', '0', '0', '0', '0', '0', '0', 0),
('management', '47', '7', 'admin/config/workflow', 'admin/config/workflow', 'Workflow', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Content workflow, editorial workflow tools.";}}', 'system', 0, 0, 0, 0, '5', 3, 0, '1', '7', '47', '0', '0', '0', '0', '0', '0', 0),
('management', '48', '34', 'admin/config/people/accounts', 'admin/config/people/accounts', 'Account settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:109:"Configure default behavior of users, including registration requirements, e-mails, fields, and user pictures.";}}', 'system', 0, 0, 0, 0, '-10', 4, 0, '1', '7', '34', '48', '0', '0', '0', '0', '0', 0),
('management', '49', '41', 'admin/config/system/actions', 'admin/config/system/actions', 'Actions', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:41:"Manage the actions defined for your site.";}}', 'system', 0, 0, 1, 0, '0', 4, 0, '1', '7', '41', '49', '0', '0', '0', '0', '0', 0),
('management', '50', '21', 'admin/structure/block/add', 'admin/structure/block/add', 'Add block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '21', '50', '0', '0', '0', '0', '0', 0),
('management', '51', '25', 'admin/structure/types/add', 'admin/structure/types/add', 'Add content type', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '25', '51', '0', '0', '0', '0', '0', 0),
('management', '52', '39', 'admin/appearance/settings/bartik', 'admin/appearance/settings/bartik', 'Bartik', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '6', '39', '52', '0', '0', '0', '0', '0', 0),
('management', '53', '33', 'admin/config/media/breakpoints', 'admin/config/media/breakpoints', 'Breakpoints', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Manage breakpoints";}}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '7', '33', '53', '0', '0', '0', '0', '0', 0),
('management', '54', '38', 'admin/config/search/clean-urls', 'admin/config/search/clean-urls', 'Clean URLs', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Enable or disable clean URLs for your site.";}}', 'system', 0, 0, 0, 0, '5', 4, 0, '1', '7', '38', '54', '0', '0', '0', '0', '0', 0),
('management', '55', '41', 'admin/config/system/cron', 'admin/config/system/cron', 'Cron', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:40:"Manage automatic site maintenance tasks.";}}', 'system', 0, 0, 0, 0, '20', 4, 0, '1', '7', '41', '55', '0', '0', '0', '0', '0', 0),
('management', '56', '36', 'admin/config/regional/date-time', 'admin/config/regional/date-time', 'Date and time', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:44:"Configure display formats for date and time.";}}', 'system', 0, 0, 0, 0, '-15', 4, 0, '1', '7', '36', '56', '0', '0', '0', '0', '0', 0),
('management', '57', '39', 'admin/appearance/settings/ember', 'admin/appearance/settings/ember', 'Ember', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '6', '39', '57', '0', '0', '0', '0', '0', 0),
('management', '58', '33', 'admin/config/media/file-system', 'admin/config/media/file-system', 'File system', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:68:"Tell Drupal where to store uploaded files and how they are accessed.";}}', 'system', 0, 0, 0, 0, '-10', 4, 0, '1', '7', '33', '58', '0', '0', '0', '0', '0', 0),
('management', '59', '39', 'admin/appearance/settings/garland', 'admin/appearance/settings/garland', 'Garland', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '6', '39', '59', '0', '0', '0', '0', '0', 0),
('management', '60', '39', 'admin/appearance/settings/global', 'admin/appearance/settings/global', 'Global settings', 'a:0:{}', 'system', -1, 0, 0, 0, '-1', 4, 0, '1', '6', '39', '60', '0', '0', '0', '0', '0', 0),
('management', '61', '34', 'admin/config/people/ip-blocking', 'admin/config/people/ip-blocking', 'IP address blocking', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:28:"Manage blocked IP addresses.";}}', 'system', 0, 0, 1, 0, '10', 4, 0, '1', '7', '34', '61', '0', '0', '0', '0', '0', 0),
('management', '62', '33', 'admin/config/media/image-toolkit', 'admin/config/media/image-toolkit', 'Image toolkit', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:74:"Choose which image toolkit to use if you have installed optional toolkits.";}}', 'system', 0, 0, 0, 0, '20', 4, 0, '1', '7', '33', '62', '0', '0', '0', '0', '0', 0),
('management', '63', '25', 'admin/structure/types/list', 'admin/structure/types/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '25', '63', '0', '0', '0', '0', '0', 0),
('management', '64', '30', 'admin/modules/list/confirm', 'admin/modules/list/confirm', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '13', '30', '64', '0', '0', '0', '0', '0', 0),
('management', '65', '27', 'admin/config/development/logging', 'admin/config/development/logging', 'Logging and errors', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:154:"Settings for logging and alerts modules. Various modules can route Drupal''s system events to different destinations, such as syslog, database, email, etc.";}}', 'system', 0, 0, 0, 0, '-15', 4, 0, '1', '7', '27', '65', '0', '0', '0', '0', '0', 0),
('management', '66', '27', 'admin/config/development/maintenance', 'admin/config/development/maintenance', 'Maintenance mode', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:62:"Take the site offline for maintenance or bring it back online.";}}', 'system', 0, 0, 0, 0, '-10', 4, 0, '1', '7', '27', '66', '0', '0', '0', '0', '0', 0),
('management', '67', '27', 'admin/config/development/performance', 'admin/config/development/performance', 'Performance', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:101:"Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.";}}', 'system', 0, 0, 0, 0, '-20', 4, 0, '1', '7', '27', '67', '0', '0', '0', '0', '0', 0),
('management', '68', '35', 'admin/people/permissions/list', 'admin/people/permissions/list', 'Permissions', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:64:"Determine access to features by selecting permissions for roles.";}}', 'system', -1, 0, 0, 0, '-8', 4, 0, '1', '15', '35', '68', '0', '0', '0', '0', '0', 0),
('management', '69', '46', 'admin/config/services/rss-publishing', 'admin/config/services/rss-publishing', 'RSS publishing', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:114:"Configure the site description, the number of items per feed and whether feeds should be titles/teasers/full-text.";}}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '7', '46', '69', '0', '0', '0', '0', '0', 0),
('management', '70', '36', 'admin/config/regional/settings', 'admin/config/regional/settings', 'Regional settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:54:"Settings for the site''s default time zone and country.";}}', 'system', 0, 0, 0, 0, '-20', 4, 0, '1', '7', '36', '70', '0', '0', '0', '0', '0', 0),
('management', '71', '39', 'admin/appearance/settings/responsive_bartik', 'admin/appearance/settings/responsive_bartik', 'Responsive Bartik', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '6', '39', '71', '0', '0', '0', '0', '0', 0),
('management', '72', '35', 'admin/people/permissions/roles', 'admin/people/permissions/roles', 'Roles', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:30:"List, edit, or add user roles.";}}', 'system', -1, 0, 1, 0, '-5', 4, 0, '1', '15', '35', '72', '0', '0', '0', '0', '0', 0),
('management', '73', '39', 'admin/appearance/settings/seven', 'admin/appearance/settings/seven', 'Seven', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '6', '39', '73', '0', '0', '0', '0', '0', 0),
('management', '74', '41', 'admin/config/system/site-information', 'admin/config/system/site-information', 'Site information', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:104:"Change site name, e-mail address, slogan, default front page, and number of posts per page, error pages.";}}', 'system', 0, 0, 0, 0, '-20', 4, 0, '1', '7', '41', '74', '0', '0', '0', '0', '0', 0),
('management', '75', '39', 'admin/appearance/settings/stark', 'admin/appearance/settings/stark', 'Stark', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '6', '39', '75', '0', '0', '0', '0', '0', 0),
('management', '76', '24', 'admin/config/content/formats', 'admin/config/content/formats', 'Text formats', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:127:"Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.";}}', 'system', 0, 0, 1, 0, '0', 4, 0, '1', '7', '24', '76', '0', '0', '0', '0', '0', 0),
('management', '77', '42', 'admin/modules/uninstall/confirm', 'admin/modules/uninstall/confirm', 'Uninstall', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '13', '42', '77', '0', '0', '0', '0', '0', 0),
('navigation', '78', '28', 'user/%/edit/account', 'user/%/edit/account', 'Account', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '14', '28', '78', '0', '0', '0', '0', '0', '0', 0),
('management', '79', '76', 'admin/config/content/formats/%', 'admin/config/content/formats/%', '', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 5, 0, '1', '7', '24', '76', '79', '0', '0', '0', '0', 0),
('management', '80', '53', 'admin/config/media/breakpoints/create_style', 'admin/config/media/breakpoints/create_style', 'Add responsive style', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:28:"Add a responsive image style";}}', 'system', -1, 0, 0, 0, '30', 5, 0, '1', '7', '33', '53', '80', '0', '0', '0', '0', 0),
('management', '81', '76', 'admin/config/content/formats/add', 'admin/config/content/formats/add', 'Add text format', 'a:0:{}', 'system', -1, 0, 0, 0, '1', 5, 0, '1', '7', '24', '76', '81', '0', '0', '0', '0', 0),
('management', '82', '21', 'admin/structure/block/list/bartik', 'admin/structure/block/list/bartik', 'Bartik', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '21', '82', '0', '0', '0', '0', '0', 0),
('management', '83', '49', 'admin/config/system/actions/configure', 'admin/config/system/actions/configure', 'Configure an advanced action', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '7', '41', '49', '83', '0', '0', '0', '0', 0),
('management', '84', '25', 'admin/structure/types/manage/%', 'admin/structure/types/manage/%', 'Edit content type', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 4, 0, '1', '18', '25', '84', '0', '0', '0', '0', '0', 0),
('management', '85', '21', 'admin/structure/block/list/ember', 'admin/structure/block/list/ember', 'Ember', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '21', '85', '0', '0', '0', '0', '0', 0),
('management', '86', '56', 'admin/config/regional/date-time/formats', 'admin/config/regional/date-time/formats', 'Formats', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:51:"Configure display format strings for date and time.";}}', 'system', -1, 0, 1, 0, '-9', 5, 0, '1', '7', '36', '56', '86', '0', '0', '0', '0', 0),
('management', '87', '21', 'admin/structure/block/list/garland', 'admin/structure/block/list/garland', 'Garland', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '21', '87', '0', '0', '0', '0', '0', 0),
('management', '88', '53', 'admin/config/media/breakpoints/groups', 'admin/config/media/breakpoints/groups', 'Groups', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 5, 0, '1', '7', '33', '53', '88', '0', '0', '0', '0', 0),
('management', '89', '76', 'admin/config/content/formats/list', 'admin/config/content/formats/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '7', '24', '76', '89', '0', '0', '0', '0', 0),
('management', '90', '49', 'admin/config/system/actions/manage', 'admin/config/system/actions/manage', 'Manage actions', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:41:"Manage the actions defined for your site.";}}', 'system', -1, 0, 0, 0, '-2', 5, 0, '1', '7', '41', '49', '90', '0', '0', '0', '0', 0),
('management', '91', '53', 'admin/config/media/breakpoints/multipliers', 'admin/config/media/breakpoints/multipliers', 'Multipliers', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Manage multipliers";}}', 'system', -1, 0, 0, 0, '20', 5, 0, '1', '7', '33', '53', '91', '0', '0', '0', '0', 0),
('management', '92', '21', 'admin/structure/block/list/responsive_bartik', 'admin/structure/block/list/responsive_bartik', 'Responsive Bartik', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '21', '92', '0', '0', '0', '0', '0', 0),
('management', '93', '48', 'admin/config/people/accounts/settings', 'admin/config/people/accounts/settings', 'Settings', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '7', '34', '48', '93', '0', '0', '0', '0', 0),
('management', '94', '21', 'admin/structure/block/list/seven', 'admin/structure/block/list/seven', 'Seven', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '21', '94', '0', '0', '0', '0', '0', 0),
('management', '95', '21', 'admin/structure/block/list/stark', 'admin/structure/block/list/stark', 'Stark', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '21', '95', '0', '0', '0', '0', '0', 0),
('management', '96', '56', 'admin/config/regional/date-time/types', 'admin/config/regional/date-time/types', 'Types', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:44:"Configure display formats for date and time.";}}', 'system', -1, 0, 1, 0, '-10', 5, 0, '1', '7', '36', '56', '96', '0', '0', '0', '0', 0),
('management', '97', '53', 'admin/config/media/breakpoints/settings', 'admin/config/media/breakpoints/settings', 'settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:26:"Manage breakpoint settings";}}', 'system', -1, 0, 0, 0, '30', 5, 0, '1', '7', '33', '53', '97', '0', '0', '0', '0', 0),
('navigation', '98', '37', 'node/%/revisions/%/delete', 'node/%/revisions/%/delete', 'Delete earlier revision', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 3, 0, '4', '37', '98', '0', '0', '0', '0', '0', '0', 0),
('navigation', '99', '37', 'node/%/revisions/%/revert', 'node/%/revisions/%/revert', 'Revert to earlier revision', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 3, 0, '4', '37', '99', '0', '0', '0', '0', '0', '0', 0),
('navigation', '100', '37', 'node/%/revisions/%/view', 'node/%/revisions/%/view', 'Revisions', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 3, 0, '4', '37', '100', '0', '0', '0', '0', '0', '0', 0),
('management', '101', '88', 'admin/config/media/breakpoints/groups/add', 'admin/config/media/breakpoints/groups/add', 'Add a new group', 'a:0:{}', 'system', -1, 0, 0, 0, '99', 6, 0, '1', '7', '33', '53', '88', '101', '0', '0', '0', 0),
('management', '102', '85', 'admin/structure/block/list/ember/add', 'admin/structure/block/list/ember/add', 'Add block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '21', '85', '102', '0', '0', '0', '0', 0),
('management', '103', '87', 'admin/structure/block/list/garland/add', 'admin/structure/block/list/garland/add', 'Add block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '21', '87', '103', '0', '0', '0', '0', 0),
('management', '105', '94', 'admin/structure/block/list/seven/add', 'admin/structure/block/list/seven/add', 'Add block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '21', '94', '105', '0', '0', '0', '0', 0),
('management', '106', '95', 'admin/structure/block/list/stark/add', 'admin/structure/block/list/stark/add', 'Add block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '21', '95', '106', '0', '0', '0', '0', 0),
('management', '107', '96', 'admin/config/regional/date-time/types/add', 'admin/config/regional/date-time/types/add', 'Add date type', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:18:"Add new date type.";}}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '7', '36', '56', '96', '107', '0', '0', '0', 0),
('management', '108', '86', 'admin/config/regional/date-time/formats/add', 'admin/config/regional/date-time/formats/add', 'Add format', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Allow users to add additional date formats.";}}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '7', '36', '56', '86', '108', '0', '0', '0', 0),
('management', '109', '88', 'admin/config/media/breakpoints/groups/global', 'admin/config/media/breakpoints/groups/global', 'All breakpoints', 'a:0:{}', 'system', -1, 0, 0, 0, '-1', 6, 0, '1', '7', '33', '53', '88', '109', '0', '0', '0', 0),
('management', '110', '21', 'admin/structure/block/manage/%/%', 'admin/structure/block/manage/%/%', 'Configure block', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '21', '110', '0', '0', '0', '0', '0', 0),
('navigation', '111', '22', 'user/%/cancel/confirm/%/%', 'user/%/cancel/confirm/%/%', 'Confirm account cancellation', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 3, 0, '14', '22', '111', '0', '0', '0', '0', '0', '0', 0),
('management', '112', '84', 'admin/structure/types/manage/%/delete', 'admin/structure/types/manage/%/delete', 'Delete', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '18', '25', '84', '112', '0', '0', '0', '0', 0),
('management', '113', '61', 'admin/config/people/ip-blocking/delete/%', 'admin/config/people/ip-blocking/delete/%', 'Delete IP address', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '7', '34', '61', '113', '0', '0', '0', '0', 0),
('management', '114', '49', 'admin/config/system/actions/delete/%', 'admin/config/system/actions/delete/%', 'Delete action', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:17:"Delete an action.";}}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '7', '41', '49', '114', '0', '0', '0', '0', 0),
('management', '115', '72', 'admin/people/permissions/roles/delete/%', 'admin/people/permissions/roles/delete/%', 'Delete role', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '15', '35', '72', '115', '0', '0', '0', '0', 0),
('management', '116', '79', 'admin/config/content/formats/%/disable', 'admin/config/content/formats/%/disable', 'Disable text format', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '24', '76', '79', '116', '0', '0', '0', 0),
('management', '117', '84', 'admin/structure/types/manage/%/edit', 'admin/structure/types/manage/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '25', '84', '117', '0', '0', '0', '0', 0),
('management', '118', '72', 'admin/people/permissions/roles/edit/%', 'admin/people/permissions/roles/edit/%', 'Edit role', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '15', '35', '72', '118', '0', '0', '0', '0', 0),
('management', '119', '88', 'admin/config/media/breakpoints/groups/import-breakpoint', 'admin/config/media/breakpoints/groups/import-breakpoint', 'Import a new breakpoint', 'a:0:{}', 'system', -1, 0, 0, 0, '99', 6, 0, '1', '7', '33', '53', '88', '119', '0', '0', '0', 0),
('management', '120', '88', 'admin/config/media/breakpoints/groups/import', 'admin/config/media/breakpoints/groups/import', 'Import a new group', 'a:0:{}', 'system', -1, 0, 0, 0, '99', 6, 0, '1', '7', '33', '53', '88', '120', '0', '0', '0', 0),
('management', '121', '110', 'admin/structure/block/manage/%/%/configure', 'admin/structure/block/manage/%/%/configure', 'Configure block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '21', '110', '121', '0', '0', '0', '0', 0),
('management', '122', '110', 'admin/structure/block/manage/%/%/delete', 'admin/structure/block/manage/%/%/delete', 'Delete block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '21', '110', '122', '0', '0', '0', '0', 0),
('management', '123', '86', 'admin/config/regional/date-time/formats/%/delete', 'admin/config/regional/date-time/formats/%/delete', 'Delete date format', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:47:"Allow users to delete a configured date format.";}}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '36', '56', '86', '123', '0', '0', '0', 0),
('management', '124', '96', 'admin/config/regional/date-time/types/%/delete', 'admin/config/regional/date-time/types/%/delete', 'Delete date type', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Allow users to delete a configured date type.";}}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '36', '56', '96', '124', '0', '0', '0', 0),
('management', '125', '86', 'admin/config/regional/date-time/formats/%/edit', 'admin/config/regional/date-time/formats/%/edit', 'Edit date format', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:45:"Allow users to edit a configured date format.";}}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '36', '56', '86', '125', '0', '0', '0', 0),
('navigation', '126', '0', 'comment/%', 'comment/%', 'Comment permalink', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 1, 0, '126', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '127', '1', 'admin/help', 'admin/help', 'Help', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:48:"Reference for usage, configuration, and modules.";}}', 'system', 0, 0, 0, 0, '9', 2, 0, '1', '127', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '128', '0', 'comment/reply/%', 'comment/reply/%', 'Add new comment', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 1, 0, '128', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '129', '126', 'comment/%/approve', 'comment/%/approve', 'Approve', 'a:0:{}', 'system', 0, 0, 0, 0, '1', 2, 0, '126', '129', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '130', '126', 'comment/%/delete', 'comment/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, '2', 2, 0, '126', '130', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '131', '126', 'comment/%/edit', 'comment/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '126', '131', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '132', '0', 'taxonomy/term/%', 'taxonomy/term/%', 'Taxonomy term', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 1, 0, '132', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '133', '126', 'comment/%/view', 'comment/%/view', 'View comment', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 2, 0, '126', '133', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '134', '8', 'admin/content/comment', 'admin/content/comment', 'Comments', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:59:"List and edit site comments and the comment approval queue.";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '8', '134', '0', '0', '0', '0', '0', '0', 0),
('navigation', '135', '5', 'node/add/every-field', 'node/add/every-field', 'Every Field', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:39:"A content type with one of every field.";}}', 'system', 0, 0, 0, 0, '0', 2, 0, '5', '135', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '136', '16', 'admin/reports/fields', 'admin/reports/fields', 'Field list', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:39:"Overview of fields on all entity types.";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '16', '136', '0', '0', '0', '0', '0', '0', 0),
('management', '137', '18', 'admin/structure/menu', 'admin/structure/menu', 'Menus', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:86:"Add new menus to your site, edit existing menus, and rename and reorganize menu links.";}}', 'system', 0, 0, 1, 0, '0', 3, 0, '1', '18', '137', '0', '0', '0', '0', '0', '0', 0),
('management', '138', '18', 'admin/structure/pages', 'admin/structure/pages', 'Pages', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:84:"Add, edit and remove overridden system pages and user defined pages from the system.";}}', 'system', 0, 0, 1, 0, '0', 3, 0, '1', '18', '138', '0', '0', '0', '0', '0', '0', 0),
('management', '139', '18', 'admin/structure/panels', 'admin/structure/panels', 'Panels', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:49:"Get a bird''s eye view of items related to Panels.";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '18', '139', '0', '0', '0', '0', '0', '0', 0),
('management', '140', '16', 'admin/reports/dblog', 'admin/reports/dblog', 'Recent log messages', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"View events that have recently been logged.";}}', 'system', 0, 0, 0, 0, '-1', 3, 0, '1', '16', '140', '0', '0', '0', '0', '0', '0', 0),
('management', '141', '18', 'admin/structure/taxonomy', 'admin/structure/taxonomy', 'Taxonomy', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:67:"Manage tagging, categorization, and classification of your content.";}}', 'system', 0, 0, 1, 0, '0', 3, 0, '1', '18', '141', '0', '0', '0', '0', '0', '0', 0),
('management', '142', '16', 'admin/reports/access-denied', 'admin/reports/access-denied', 'Top ''access denied'' errors', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:35:"View ''access denied'' errors (403s).";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '16', '142', '0', '0', '0', '0', '0', '0', 0),
('management', '143', '16', 'admin/reports/page-not-found', 'admin/reports/page-not-found', 'Top ''page not found'' errors', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"View ''page not found'' errors (404s).";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '16', '143', '0', '0', '0', '0', '0', '0', 0),
('management', '144', '127', 'admin/help/block', 'admin/help/block', 'block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '144', '0', '0', '0', '0', '0', '0', 0),
('management', '145', '127', 'admin/help/ckeditor', 'admin/help/ckeditor', 'ckeditor', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '145', '0', '0', '0', '0', '0', '0', 0),
('management', '146', '127', 'admin/help/color', 'admin/help/color', 'color', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '146', '0', '0', '0', '0', '0', '0', 0),
('management', '147', '127', 'admin/help/comment', 'admin/help/comment', 'comment', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '147', '0', '0', '0', '0', '0', '0', 0),
('management', '148', '127', 'admin/help/contextual', 'admin/help/contextual', 'contextual', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '148', '0', '0', '0', '0', '0', '0', 0),
('management', '149', '127', 'admin/help/dblog', 'admin/help/dblog', 'dblog', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '149', '0', '0', '0', '0', '0', '0', 0),
('management', '150', '127', 'admin/help/field', 'admin/help/field', 'field', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '150', '0', '0', '0', '0', '0', '0', 0),
('management', '151', '127', 'admin/help/field_sql_storage', 'admin/help/field_sql_storage', 'field_sql_storage', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '151', '0', '0', '0', '0', '0', '0', 0),
('management', '152', '127', 'admin/help/field_ui', 'admin/help/field_ui', 'field_ui', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '152', '0', '0', '0', '0', '0', '0', 0),
('management', '153', '127', 'admin/help/file', 'admin/help/file', 'file', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '153', '0', '0', '0', '0', '0', '0', 0),
('management', '154', '127', 'admin/help/filter', 'admin/help/filter', 'filter', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '154', '0', '0', '0', '0', '0', '0', 0),
('management', '155', '127', 'admin/help/help', 'admin/help/help', 'help', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '155', '0', '0', '0', '0', '0', '0', 0),
('management', '156', '127', 'admin/help/image', 'admin/help/image', 'image', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '156', '0', '0', '0', '0', '0', '0', 0),
('management', '157', '127', 'admin/help/jquery_update', 'admin/help/jquery_update', 'jquery_update', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '157', '0', '0', '0', '0', '0', '0', 0),
('management', '158', '127', 'admin/help/list', 'admin/help/list', 'list', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '158', '0', '0', '0', '0', '0', '0', 0),
('management', '159', '127', 'admin/help/menu', 'admin/help/menu', 'menu', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '159', '0', '0', '0', '0', '0', '0', 0),
('management', '160', '127', 'admin/help/node', 'admin/help/node', 'node', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '160', '0', '0', '0', '0', '0', '0', 0),
('management', '161', '127', 'admin/help/number', 'admin/help/number', 'number', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '161', '0', '0', '0', '0', '0', '0', 0),
('management', '162', '127', 'admin/help/options', 'admin/help/options', 'options', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '162', '0', '0', '0', '0', '0', '0', 0),
('management', '163', '127', 'admin/help/system', 'admin/help/system', 'system', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '163', '0', '0', '0', '0', '0', '0', 0),
('management', '164', '127', 'admin/help/taxonomy', 'admin/help/taxonomy', 'taxonomy', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '164', '0', '0', '0', '0', '0', '0', 0),
('management', '165', '127', 'admin/help/text', 'admin/help/text', 'text', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '165', '0', '0', '0', '0', '0', '0', 0),
('management', '166', '127', 'admin/help/user', 'admin/help/user', 'user', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '166', '0', '0', '0', '0', '0', '0', 0),
('navigation', '167', '132', 'taxonomy/term/%/edit', 'taxonomy/term/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 2, 0, '132', '167', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '168', '132', 'taxonomy/term/%/view', 'taxonomy/term/%/view', 'View', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '132', '168', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '169', '141', 'admin/structure/taxonomy/%', 'admin/structure/taxonomy/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '141', '169', '0', '0', '0', '0', '0', 0),
('management', '170', '138', 'admin/structure/pages/add', 'admin/structure/pages/add', 'Add custom page', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '138', '170', '0', '0', '0', '0', '0', 0),
('management', '171', '137', 'admin/structure/menu/add', 'admin/structure/menu/add', 'Add menu', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '137', '171', '0', '0', '0', '0', '0', 0),
('management', '172', '141', 'admin/structure/taxonomy/add', 'admin/structure/taxonomy/add', 'Add vocabulary', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '141', '172', '0', '0', '0', '0', '0', 0),
('management', '173', '24', 'admin/config/content/ckeditor', 'admin/config/content/ckeditor', 'CKEditor', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:31:"Configure the rich text editor.";}}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '7', '24', '173', '0', '0', '0', '0', '0', 0),
('management', '174', '139', 'admin/structure/panels/dashboard', 'admin/structure/panels/dashboard', 'Dashboard', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '139', '174', '0', '0', '0', '0', '0', 0),
('management', '175', '16', 'admin/reports/event/%', 'admin/reports/event/%', 'Details', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '16', '175', '0', '0', '0', '0', '0', '0', 0),
('management', '176', '33', 'admin/config/media/image-styles', 'admin/config/media/image-styles', 'Image styles', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:78:"Configure styles that can be used for resizing or adjusting images on display.";}}', 'system', 0, 0, 1, 0, '0', 4, 0, '1', '7', '33', '176', '0', '0', '0', '0', '0', 0),
('management', '177', '138', 'admin/structure/pages/import', 'admin/structure/pages/import', 'Import page', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '138', '177', '0', '0', '0', '0', '0', 0),
('management', '179', '138', 'admin/structure/pages/list', 'admin/structure/pages/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '138', '179', '0', '0', '0', '0', '0', 0),
('management', '180', '141', 'admin/structure/taxonomy/list', 'admin/structure/taxonomy/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '141', '180', '0', '0', '0', '0', '0', 0),
('management', '181', '137', 'admin/structure/menu/list', 'admin/structure/menu/list', 'List menus', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '137', '181', '0', '0', '0', '0', '0', 0),
('management', '182', '134', 'admin/content/comment/new', 'admin/content/comment/new', 'Published comments', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '8', '134', '182', '0', '0', '0', '0', '0', 0),
('management', '183', '137', 'admin/structure/menu/settings', 'admin/structure/menu/settings', 'Settings', 'a:0:{}', 'system', -1, 0, 0, 0, '5', 4, 0, '1', '18', '137', '183', '0', '0', '0', '0', '0', 0),
('management', '184', '139', 'admin/structure/panels/settings', 'admin/structure/panels/settings', 'Settings', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '139', '184', '0', '0', '0', '0', '0', 0),
('management', '185', '134', 'admin/content/comment/approval', 'admin/content/comment/approval', 'Unapproved comments', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '8', '134', '185', '0', '0', '0', '0', '0', 0),
('management', '186', '138', 'admin/structure/pages/wizard', 'admin/structure/pages/wizard', 'Wizards', 'a:0:{}', 'system', -1, 0, 0, 0, '-5', 4, 0, '1', '18', '138', '186', '0', '0', '0', '0', '0', 0),
('management', '187', '27', 'admin/config/development/jquery_update', 'admin/config/development/jquery_update', 'jQuery update', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:83:"Configure settings related to the jQuery upgrade, the library path and compression.";}}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '7', '27', '187', '0', '0', '0', '0', '0', 0),
('management', '189', '176', 'admin/config/media/image-styles/add', 'admin/config/media/image-styles/add', 'Add style', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:22:"Add a new image style.";}}', 'system', -1, 0, 0, 0, '2', 5, 0, '1', '7', '33', '176', '189', '0', '0', '0', '0', 0),
('management', '190', '169', 'admin/structure/taxonomy/%/add', 'admin/structure/taxonomy/%/add', 'Add term', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '141', '169', '190', '0', '0', '0', '0', 0),
('management', '191', '139', 'admin/structure/panels/layouts/breakpoints', 'admin/structure/panels/layouts/breakpoints', 'Breakpoints', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '139', '191', '0', '0', '0', '0', '0', 0),
('management', '192', '137', 'admin/structure/menu/manage/%', 'admin/structure/menu/manage/%', 'Customize menu', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 4, 0, '1', '18', '137', '192', '0', '0', '0', '0', '0', 0),
('management', '193', '169', 'admin/structure/taxonomy/%/edit', 'admin/structure/taxonomy/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '141', '169', '193', '0', '0', '0', '0', 0),
('management', '194', '138', 'admin/structure/pages/edit/%', 'admin/structure/pages/edit/%', 'Edit', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '138', '194', '0', '0', '0', '0', '0', 0),
('management', '195', '184', 'admin/structure/panels/settings/general', 'admin/structure/panels/settings/general', 'General', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '139', '184', '195', '0', '0', '0', '0', 0),
('management', '196', '139', 'admin/structure/panels/layouts/grids', 'admin/structure/panels/layouts/grids', 'Grids', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '139', '196', '0', '0', '0', '0', '0', 0),
('management', '199', '169', 'admin/structure/taxonomy/%/list', 'admin/structure/taxonomy/%/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-20', 5, 0, '1', '18', '141', '169', '199', '0', '0', '0', '0', 0),
('management', '200', '176', 'admin/config/media/image-styles/list', 'admin/config/media/image-styles/list', 'List', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:42:"List the current image styles on the site.";}}', 'system', -1, 0, 0, 0, '1', 5, 0, '1', '7', '33', '176', '200', '0', '0', '0', '0', 0),
('management', '201', '184', 'admin/structure/panels/settings/panel-page', 'admin/structure/panels/settings/panel-page', 'Panel pages', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '139', '184', '201', '0', '0', '0', '0', 0),
('management', '202', '139', 'admin/structure/panels/layouts/regions', 'admin/structure/panels/layouts/regions', 'Regions', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '139', '202', '0', '0', '0', '0', '0', 0),
('management', '203', '196', 'admin/structure/panels/layouts/grids/add', 'admin/structure/panels/layouts/grids/add', 'Add', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '196', '203', '0', '0', '0', '0', 0),
('management', '204', '191', 'admin/structure/panels/layouts/breakpoints/add', 'admin/structure/panels/layouts/breakpoints/add', 'Add', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '191', '204', '0', '0', '0', '0', 0),
('management', '205', '202', 'admin/structure/panels/layouts/regions/add', 'admin/structure/panels/layouts/regions/add', 'Add', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '202', '205', '0', '0', '0', '0', 0),
('management', '206', '192', 'admin/structure/menu/manage/%/add', 'admin/structure/menu/manage/%/add', 'Add link', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '137', '192', '206', '0', '0', '0', '0', 0),
('management', '207', '192', 'admin/structure/menu/manage/%/delete', 'admin/structure/menu/manage/%/delete', 'Delete menu', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '18', '137', '192', '207', '0', '0', '0', '0', 0),
('management', '208', '137', 'admin/structure/menu/item/%/delete', 'admin/structure/menu/item/%/delete', 'Delete menu link', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '137', '208', '0', '0', '0', '0', '0', 0),
('management', '209', '192', 'admin/structure/menu/manage/%/edit', 'admin/structure/menu/manage/%/edit', 'Edit menu', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '137', '192', '209', '0', '0', '0', '0', 0),
('management', '210', '137', 'admin/structure/menu/item/%/edit', 'admin/structure/menu/item/%/edit', 'Edit menu link', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '137', '210', '0', '0', '0', '0', '0', 0),
('management', '211', '176', 'admin/config/media/image-styles/edit/%', 'admin/config/media/image-styles/edit/%', 'Edit style', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:25:"Configure an image style.";}}', 'system', 0, 0, 1, 0, '0', 5, 0, '1', '7', '33', '176', '211', '0', '0', '0', '0', 0),
('management', '212', '196', 'admin/structure/panels/layouts/grids/import', 'admin/structure/panels/layouts/grids/import', 'Import', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '196', '212', '0', '0', '0', '0', 0),
('management', '213', '138', 'admin/structure/pages/%/operation/%', 'admin/structure/pages/%/operation/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '138', '213', '0', '0', '0', '0', '0', 0),
('management', '214', '191', 'admin/structure/panels/layouts/breakpoints/import', 'admin/structure/panels/layouts/breakpoints/import', 'Import', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '191', '214', '0', '0', '0', '0', 0),
('management', '215', '202', 'admin/structure/panels/layouts/regions/import', 'admin/structure/panels/layouts/regions/import', 'Import', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '202', '215', '0', '0', '0', '0', 0),
('management', '216', '196', 'admin/structure/panels/layouts/grids/list', 'admin/structure/panels/layouts/grids/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '139', '196', '216', '0', '0', '0', '0', 0),
('management', '217', '191', 'admin/structure/panels/layouts/breakpoints/list', 'admin/structure/panels/layouts/breakpoints/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '139', '191', '217', '0', '0', '0', '0', 0),
('management', '218', '202', 'admin/structure/panels/layouts/regions/list', 'admin/structure/panels/layouts/regions/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '139', '202', '218', '0', '0', '0', '0', 0),
('management', '220', '137', 'admin/structure/menu/item/%/reset', 'admin/structure/menu/item/%/reset', 'Reset menu link', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '137', '220', '0', '0', '0', '0', '0', 0),
('management', '221', '176', 'admin/config/media/image-styles/delete/%', 'admin/config/media/image-styles/delete/%', 'Delete style', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:22:"Delete an image style.";}}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '7', '33', '176', '221', '0', '0', '0', '0', 0),
('management', '222', '176', 'admin/config/media/image-styles/revert/%', 'admin/config/media/image-styles/revert/%', 'Revert style', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:22:"Revert an image style.";}}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '7', '33', '176', '222', '0', '0', '0', '0', 0),
('management', '223', '84', 'admin/structure/types/manage/%/comment/display', 'admin/structure/types/manage/%/comment/display', 'Comment display', 'a:0:{}', 'system', -1, 0, 0, 0, '4', 5, 0, '1', '18', '25', '84', '223', '0', '0', '0', '0', 0);
INSERT INTO `menu_links` VALUES
('management', '224', '84', 'admin/structure/types/manage/%/comment/fields', 'admin/structure/types/manage/%/comment/fields', 'Comment fields', 'a:0:{}', 'system', -1, 0, 1, 0, '3', 5, 0, '1', '18', '25', '84', '224', '0', '0', '0', '0', 0),
('management', '227', '211', 'admin/config/media/image-styles/edit/%/add/%', 'admin/config/media/image-styles/edit/%/add/%', 'Add image effect', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:28:"Add a new effect to a style.";}}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '33', '176', '211', '227', '0', '0', '0', 0),
('management', '228', '216', 'admin/structure/panels/layouts/grids/list/%/edit', 'admin/structure/panels/layouts/grids/list/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '18', '139', '196', '216', '228', '0', '0', '0', 0),
('management', '229', '217', 'admin/structure/panels/layouts/breakpoints/list/%/edit', 'admin/structure/panels/layouts/breakpoints/list/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '18', '139', '191', '217', '229', '0', '0', '0', 0),
('management', '230', '218', 'admin/structure/panels/layouts/regions/list/%/edit', 'admin/structure/panels/layouts/regions/list/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '18', '139', '202', '218', '230', '0', '0', '0', 0),
('management', '231', '211', 'admin/config/media/image-styles/edit/%/effects/%', 'admin/config/media/image-styles/edit/%/effects/%', 'Edit image effect', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:39:"Edit an existing effect within a style.";}}', 'system', 0, 0, 1, 0, '0', 6, 0, '1', '7', '33', '176', '211', '231', '0', '0', '0', 0),
('management', '232', '216', 'admin/structure/panels/layouts/grids/list/%/export', 'admin/structure/panels/layouts/grids/list/%/export', 'Export', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '18', '139', '196', '216', '232', '0', '0', '0', 0),
('management', '233', '217', 'admin/structure/panels/layouts/breakpoints/list/%/export', 'admin/structure/panels/layouts/breakpoints/list/%/export', 'Export', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '18', '139', '191', '217', '233', '0', '0', '0', 0),
('management', '234', '218', 'admin/structure/panels/layouts/regions/list/%/export', 'admin/structure/panels/layouts/regions/list/%/export', 'Export', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '18', '139', '202', '218', '234', '0', '0', '0', 0),
('management', '235', '231', 'admin/config/media/image-styles/edit/%/effects/%/delete', 'admin/config/media/image-styles/edit/%/effects/%/delete', 'Delete image effect', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:39:"Delete an existing effect from a style.";}}', 'system', 0, 0, 0, 0, '0', 7, 0, '1', '7', '33', '176', '211', '231', '235', '0', '0', 0),
('management', '236', '137', 'admin/structure/menu/manage/main-menu', 'admin/structure/menu/manage/%', 'Main menu', 'a:0:{}', 'menu', 0, 0, 0, 0, '0', 4, 0, '1', '18', '137', '236', '0', '0', '0', '0', '0', 0),
('management', '237', '137', 'admin/structure/menu/manage/management', 'admin/structure/menu/manage/%', 'Management', 'a:0:{}', 'menu', 0, 0, 0, 0, '0', 4, 0, '1', '18', '137', '237', '0', '0', '0', '0', '0', 0),
('management', '238', '137', 'admin/structure/menu/manage/navigation', 'admin/structure/menu/manage/%', 'Navigation', 'a:0:{}', 'menu', 0, 0, 0, 0, '0', 4, 0, '1', '18', '137', '238', '0', '0', '0', '0', '0', 0),
('management', '239', '137', 'admin/structure/menu/manage/user-menu', 'admin/structure/menu/manage/%', 'User menu', 'a:0:{}', 'menu', 0, 0, 0, 0, '0', 4, 0, '1', '18', '137', '239', '0', '0', '0', '0', '0', 0),
('navigation', '240', '0', 'search', 'search', 'Search', 'a:0:{}', 'system', 1, 0, 0, 0, '0', 1, 0, '240', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '241', '240', 'search/node', 'search/node', 'Content', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 2, 0, '240', '241', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '242', '240', 'search/user', 'search/user', 'Users', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '240', '242', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '243', '241', 'search/node/%', 'search/node/%', 'Content', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '240', '241', '243', '0', '0', '0', '0', '0', '0', 0),
('navigation', '244', '14', 'user/%/shortcuts', 'user/%/shortcuts', 'Shortcuts', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 2, 0, '14', '244', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '245', '16', 'admin/reports/search', 'admin/reports/search', 'Top search phrases', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:33:"View most popular search phrases.";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '16', '245', '0', '0', '0', '0', '0', '0', 0),
('navigation', '246', '242', 'search/user/%', 'search/user/%', 'Users', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '240', '242', '246', '0', '0', '0', '0', '0', '0', 0),
('management', '247', '127', 'admin/help/navbar', 'admin/help/navbar', 'navbar', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '247', '0', '0', '0', '0', '0', '0', 0),
('management', '248', '127', 'admin/help/path', 'admin/help/path', 'path', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '248', '0', '0', '0', '0', '0', '0', 0),
('management', '249', '127', 'admin/help/rdf', 'admin/help/rdf', 'rdf', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '249', '0', '0', '0', '0', '0', '0', 0),
('management', '250', '127', 'admin/help/responsive_preview', 'admin/help/responsive_preview', 'responsive_preview', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '250', '0', '0', '0', '0', '0', '0', 0),
('management', '251', '127', 'admin/help/search', 'admin/help/search', 'search', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '251', '0', '0', '0', '0', '0', '0', 0),
('management', '252', '127', 'admin/help/shortcut', 'admin/help/shortcut', 'shortcut', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '252', '0', '0', '0', '0', '0', '0', 0),
('management', '253', '43', 'admin/config/user-interface/modulefilter', 'admin/config/user-interface/modulefilter', 'Module filter', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:37:"Configure settings for Module Filter.";}}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '7', '43', '253', '0', '0', '0', '0', '0', 0),
('management', '254', '38', 'admin/config/search/settings', 'admin/config/search/settings', 'Search settings', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:67:"Configure relevance settings for search and other indexing options.";}}', 'system', 0, 0, 0, 0, '-10', 4, 0, '1', '7', '38', '254', '0', '0', '0', '0', '0', 0),
('management', '255', '43', 'admin/config/user-interface/shortcut', 'admin/config/user-interface/shortcut', 'Shortcuts', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:29:"Add and modify shortcut sets.";}}', 'system', 0, 0, 1, 0, '0', 4, 0, '1', '7', '43', '255', '0', '0', '0', '0', '0', 0),
('management', '256', '38', 'admin/config/search/path', 'admin/config/search/path', 'URL aliases', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:46:"Change your site''s URL paths by aliasing them.";}}', 'system', 0, 0, 1, 0, '-5', 4, 0, '1', '7', '38', '256', '0', '0', '0', '0', '0', 0),
('management', '257', '256', 'admin/config/search/path/add', 'admin/config/search/path/add', 'Add alias', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '7', '38', '256', '257', '0', '0', '0', '0', 0),
('management', '258', '255', 'admin/config/user-interface/shortcut/add-set', 'admin/config/user-interface/shortcut/add-set', 'Add shortcut set', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '7', '43', '255', '258', '0', '0', '0', '0', 0),
('management', '259', '254', 'admin/config/search/settings/reindex', 'admin/config/search/settings/reindex', 'Clear index', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '7', '38', '254', '259', '0', '0', '0', '0', 0),
('management', '260', '255', 'admin/config/user-interface/shortcut/%', 'admin/config/user-interface/shortcut/%', 'Edit shortcuts', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 5, 0, '1', '7', '43', '255', '260', '0', '0', '0', '0', 0),
('management', '261', '256', 'admin/config/search/path/list', 'admin/config/search/path/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '7', '38', '256', '261', '0', '0', '0', '0', 0),
('management', '262', '260', 'admin/config/user-interface/shortcut/%/add-link', 'admin/config/user-interface/shortcut/%/add-link', 'Add shortcut', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '7', '43', '255', '260', '262', '0', '0', '0', 0),
('management', '263', '256', 'admin/config/search/path/delete/%', 'admin/config/search/path/delete/%', 'Delete alias', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '7', '38', '256', '263', '0', '0', '0', '0', 0),
('management', '264', '260', 'admin/config/user-interface/shortcut/%/delete', 'admin/config/user-interface/shortcut/%/delete', 'Delete shortcut set', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '43', '255', '260', '264', '0', '0', '0', 0),
('management', '265', '256', 'admin/config/search/path/edit/%', 'admin/config/search/path/edit/%', 'Edit alias', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 5, 0, '1', '7', '38', '256', '265', '0', '0', '0', '0', 0),
('management', '266', '260', 'admin/config/user-interface/shortcut/%/edit', 'admin/config/user-interface/shortcut/%/edit', 'Edit shortcut set', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '7', '43', '255', '260', '266', '0', '0', '0', 0),
('management', '267', '255', 'admin/config/user-interface/shortcut/link/%', 'admin/config/user-interface/shortcut/link/%', 'Edit shortcut', 'a:0:{}', 'system', 0, 0, 1, 0, '0', 5, 0, '1', '7', '43', '255', '267', '0', '0', '0', '0', 0),
('management', '269', '267', 'admin/config/user-interface/shortcut/link/%/delete', 'admin/config/user-interface/shortcut/link/%/delete', 'Delete shortcut', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '43', '255', '267', '269', '0', '0', '0', 0),
('shortcut-set-1', '270', '0', 'node/add', 'node/add', 'Add content', 'a:0:{}', 'menu', 0, 0, 0, 0, '-20', 1, 0, '270', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('shortcut-set-1', '271', '0', 'admin/content', 'admin/content', 'Find content', 'a:0:{}', 'menu', 0, 0, 0, 0, '-19', 1, 0, '271', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '272', '18', 'admin/structure/views', 'admin/structure/views', 'Views', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:35:"Manage customized lists of content.";}}', 'system', 0, 0, 1, 0, '0', 3, 0, '1', '18', '272', '0', '0', '0', '0', '0', '0', 0),
('management', '273', '16', 'admin/reports/views-plugins', 'admin/reports/views-plugins', 'Views plugins', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:38:"Overview of plugins used in all views.";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '16', '273', '0', '0', '0', '0', '0', '0', 0),
('management', '274', '272', 'admin/structure/views/add', 'admin/structure/views/add', 'Add new view', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '272', '274', '0', '0', '0', '0', '0', 0),
('management', '275', '272', 'admin/structure/views/add-template', 'admin/structure/views/add-template', 'Add view from template', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '272', '275', '0', '0', '0', '0', '0', 0),
('management', '276', '272', 'admin/structure/views/import', 'admin/structure/views/import', 'Import', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '272', '276', '0', '0', '0', '0', '0', 0),
('management', '277', '272', 'admin/structure/views/list', 'admin/structure/views/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '272', '277', '0', '0', '0', '0', '0', 0),
('management', '278', '136', 'admin/reports/fields/list', 'admin/reports/fields/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '16', '136', '278', '0', '0', '0', '0', '0', 0),
('management', '279', '272', 'admin/structure/views/settings', 'admin/structure/views/settings', 'Settings', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '272', '279', '0', '0', '0', '0', '0', 0),
('management', '280', '136', 'admin/reports/fields/views-fields', 'admin/reports/fields/views-fields', 'Used in views', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:37:"Overview of fields used in all views.";}}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '16', '136', '280', '0', '0', '0', '0', '0', 0),
('management', '281', '279', 'admin/structure/views/settings/advanced', 'admin/structure/views/settings/advanced', 'Advanced', 'a:0:{}', 'system', -1, 0, 0, 0, '1', 5, 0, '1', '18', '272', '279', '281', '0', '0', '0', '0', 0),
('management', '282', '279', 'admin/structure/views/settings/basic', 'admin/structure/views/settings/basic', 'Basic', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '272', '279', '282', '0', '0', '0', '0', 0),
('management', '283', '272', 'admin/structure/views/view/%', 'admin/structure/views/view/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '272', '283', '0', '0', '0', '0', '0', 0),
('management', '284', '283', 'admin/structure/views/view/%/break-lock', 'admin/structure/views/view/%/break-lock', 'Break lock', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '272', '283', '284', '0', '0', '0', '0', 0),
('management', '285', '283', 'admin/structure/views/view/%/edit', 'admin/structure/views/view/%/edit', 'Edit view', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '272', '283', '285', '0', '0', '0', '0', 0),
('management', '286', '283', 'admin/structure/views/view/%/clone', 'admin/structure/views/view/%/clone', 'Clone', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '272', '283', '286', '0', '0', '0', '0', 0),
('management', '287', '283', 'admin/structure/views/view/%/delete', 'admin/structure/views/view/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '272', '283', '287', '0', '0', '0', '0', 0),
('management', '288', '283', 'admin/structure/views/view/%/export', 'admin/structure/views/view/%/export', 'Export', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '272', '283', '288', '0', '0', '0', '0', 0),
('management', '289', '283', 'admin/structure/views/view/%/revert', 'admin/structure/views/view/%/revert', 'Revert', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '272', '283', '289', '0', '0', '0', '0', 0),
('management', '290', '272', 'admin/structure/views/nojs/preview/%/%', 'admin/structure/views/nojs/preview/%/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '272', '290', '0', '0', '0', '0', '0', 0),
('management', '291', '283', 'admin/structure/views/view/%/preview/%', 'admin/structure/views/view/%/preview/%', '', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '272', '283', '291', '0', '0', '0', '0', 0),
('management', '292', '272', 'admin/structure/views/ajax/preview/%/%', 'admin/structure/views/ajax/preview/%/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 4, 0, '1', '18', '272', '292', '0', '0', '0', '0', '0', 0),
('main-menu', '293', '0', '<front>', '', 'Home', 'a:0:{}', 'menu', 0, 1, 0, 0, '0', 1, 0, '293', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '294', '5', 'node/add/article', 'node/add/article', 'Article', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:89:"Use <em>articles</em> for time-sensitive content like news, press releases or blog posts.";}}', 'system', 0, 0, 0, 0, '0', 2, 0, '5', '294', '0', '0', '0', '0', '0', '0', '0', 0),
('navigation', '295', '5', 'node/add/page', 'node/add/page', 'Basic page', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:77:"Use <em>basic pages</em> for your static content, such as an ''About us'' page.";}}', 'system', 0, 0, 0, 0, '0', 2, 0, '5', '295', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '296', '82', 'admin/structure/block/list/bartik/add', 'admin/structure/block/list/bartik/add', 'Add block', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '21', '82', '296', '0', '0', '0', '0', 0),
('main-menu', '297', '0', 'node/2', 'node/%', 'About Us', 'a:0:{}', 'menu', 0, 0, 0, 0, '1', 1, 0, '297', '0', '0', '0', '0', '0', '0', '0', '0', 0),
('management', '342', '13', 'admin/modules/install', 'admin/modules/install', 'Install new module', 'a:0:{}', 'system', -1, 0, 0, 0, '25', 3, 0, '1', '13', '342', '0', '0', '0', '0', '0', '0', 0),
('management', '343', '6', 'admin/appearance/install', 'admin/appearance/install', 'Install new theme', 'a:0:{}', 'system', -1, 0, 0, 0, '25', 3, 0, '1', '6', '343', '0', '0', '0', '0', '0', '0', 0),
('management', '344', '13', 'admin/modules/update', 'admin/modules/update', 'Update', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 3, 0, '1', '13', '344', '0', '0', '0', '0', '0', '0', 0),
('management', '345', '6', 'admin/appearance/update', 'admin/appearance/update', 'Update', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 3, 0, '1', '6', '345', '0', '0', '0', '0', '0', '0', 0),
('management', '346', '16', 'admin/reports/updates', 'admin/reports/updates', 'Available updates', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:82:"Get a status report about available updates for your installed modules and themes.";}}', 'system', 0, 0, 0, 0, '-50', 3, 0, '1', '16', '346', '0', '0', '0', '0', '0', '0', 0),
('management', '347', '127', 'admin/help/update', 'admin/help/update', 'update', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 3, 0, '1', '127', '347', '0', '0', '0', '0', '0', '0', 0),
('management', '348', '346', 'admin/reports/updates/install', 'admin/reports/updates/install', 'Install new module or theme', 'a:0:{}', 'system', -1, 0, 0, 0, '25', 4, 0, '1', '16', '346', '348', '0', '0', '0', '0', '0', 0),
('management', '349', '346', 'admin/reports/updates/list', 'admin/reports/updates/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '16', '346', '349', '0', '0', '0', '0', '0', 0),
('management', '350', '346', 'admin/reports/updates/settings', 'admin/reports/updates/settings', 'Settings', 'a:0:{}', 'system', -1, 0, 0, 0, '50', 4, 0, '1', '16', '346', '350', '0', '0', '0', '0', '0', 0),
('management', '351', '346', 'admin/reports/updates/update', 'admin/reports/updates/update', 'Update', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 4, 0, '1', '16', '346', '351', '0', '0', '0', '0', '0', 0),
('management', '352', '139', 'admin/structure/panels/layouts', 'admin/structure/panels/layouts', 'Layouts', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:43:"Add, edit or delete custom content layouts.";}}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '139', '352', '0', '0', '0', '0', '0', 0),
('management', '353', '352', 'admin/structure/panels/layouts/add-responsive', 'admin/structure/panels/layouts/add-responsive', 'Add layout', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '352', '353', '0', '0', '0', '0', 0),
('management', '354', '352', 'admin/structure/panels/layouts/import', 'admin/structure/panels/layouts/import', 'Import', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 5, 0, '1', '18', '139', '352', '354', '0', '0', '0', '0', 0),
('management', '355', '352', 'admin/structure/panels/layouts/list', 'admin/structure/panels/layouts/list', 'Layouts', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 5, 0, '1', '18', '139', '352', '355', '0', '0', '0', '0', 0),
('management', '375', '355', 'admin/structure/panels/layouts/list/%/edit', 'admin/structure/panels/layouts/list/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '18', '139', '352', '355', '375', '0', '0', '0', 0),
('management', '378', '355', 'admin/structure/panels/layouts/list/%/export', 'admin/structure/panels/layouts/list/%/export', 'Export', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '18', '139', '352', '355', '378', '0', '0', '0', 0),
('management', '396', '169', 'admin/structure/taxonomy/%/display', 'admin/structure/taxonomy/%/display', 'Manage display', 'a:0:{}', 'system', -1, 0, 0, 0, '2', 5, 0, '1', '18', '141', '169', '396', '0', '0', '0', '0', 0),
('management', '397', '48', 'admin/config/people/accounts/display', 'admin/config/people/accounts/display', 'Manage display', 'a:0:{}', 'system', -1, 0, 0, 0, '2', 5, 0, '1', '7', '34', '48', '397', '0', '0', '0', '0', 0),
('management', '398', '169', 'admin/structure/taxonomy/%/fields', 'admin/structure/taxonomy/%/fields', 'Manage fields', 'a:0:{}', 'system', -1, 0, 1, 0, '1', 5, 0, '1', '18', '141', '169', '398', '0', '0', '0', '0', 0),
('management', '399', '48', 'admin/config/people/accounts/fields', 'admin/config/people/accounts/fields', 'Manage fields', 'a:0:{}', 'system', -1, 0, 1, 0, '1', 5, 0, '1', '7', '34', '48', '399', '0', '0', '0', '0', 0),
('management', '400', '396', 'admin/structure/taxonomy/%/display/default', 'admin/structure/taxonomy/%/display/default', 'Default', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '18', '141', '169', '396', '400', '0', '0', '0', 0),
('management', '401', '397', 'admin/config/people/accounts/display/default', 'admin/config/people/accounts/display/default', 'Default', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '7', '34', '48', '397', '401', '0', '0', '0', 0),
('management', '402', '84', 'admin/structure/types/manage/%/display', 'admin/structure/types/manage/%/display', 'Manage display', 'a:0:{}', 'system', -1, 0, 0, 0, '2', 5, 0, '1', '18', '25', '84', '402', '0', '0', '0', '0', 0),
('management', '403', '84', 'admin/structure/types/manage/%/fields', 'admin/structure/types/manage/%/fields', 'Manage fields', 'a:0:{}', 'system', -1, 0, 1, 0, '1', 5, 0, '1', '18', '25', '84', '403', '0', '0', '0', '0', 0),
('management', '404', '396', 'admin/structure/taxonomy/%/display/full', 'admin/structure/taxonomy/%/display/full', 'Taxonomy term page', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '18', '141', '169', '396', '404', '0', '0', '0', 0),
('management', '405', '397', 'admin/config/people/accounts/display/full', 'admin/config/people/accounts/display/full', 'User account', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '7', '34', '48', '397', '405', '0', '0', '0', 0),
('management', '406', '399', 'admin/config/people/accounts/fields/%', 'admin/config/people/accounts/fields/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '7', '34', '48', '399', '406', '0', '0', '0', 0),
('management', '407', '398', 'admin/structure/taxonomy/%/fields/%', 'admin/structure/taxonomy/%/fields/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '18', '141', '169', '398', '407', '0', '0', '0', 0),
('management', '408', '402', 'admin/structure/types/manage/%/display/default', 'admin/structure/types/manage/%/display/default', 'Default', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '18', '25', '84', '402', '408', '0', '0', '0', 0),
('management', '409', '402', 'admin/structure/types/manage/%/display/full', 'admin/structure/types/manage/%/display/full', 'Full content', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '18', '25', '84', '402', '409', '0', '0', '0', 0),
('management', '410', '402', 'admin/structure/types/manage/%/display/rss', 'admin/structure/types/manage/%/display/rss', 'RSS', 'a:0:{}', 'system', -1, 0, 0, 0, '2', 6, 0, '1', '18', '25', '84', '402', '410', '0', '0', '0', 0),
('management', '411', '402', 'admin/structure/types/manage/%/display/search_index', 'admin/structure/types/manage/%/display/search_index', 'Search index', 'a:0:{}', 'system', -1, 0, 0, 0, '3', 6, 0, '1', '18', '25', '84', '402', '411', '0', '0', '0', 0),
('management', '412', '402', 'admin/structure/types/manage/%/display/search_result', 'admin/structure/types/manage/%/display/search_result', 'Search result', 'a:0:{}', 'system', -1, 0, 0, 0, '4', 6, 0, '1', '18', '25', '84', '402', '412', '0', '0', '0', 0),
('management', '413', '402', 'admin/structure/types/manage/%/display/teaser', 'admin/structure/types/manage/%/display/teaser', 'Teaser', 'a:0:{}', 'system', -1, 0, 0, 0, '1', 6, 0, '1', '18', '25', '84', '402', '413', '0', '0', '0', 0),
('management', '414', '403', 'admin/structure/types/manage/%/fields/%', 'admin/structure/types/manage/%/fields/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '18', '25', '84', '403', '414', '0', '0', '0', 0),
('management', '415', '407', 'admin/structure/taxonomy/%/fields/%/delete', 'admin/structure/taxonomy/%/fields/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 7, 0, '1', '18', '141', '169', '398', '407', '415', '0', '0', 0),
('management', '416', '407', 'admin/structure/taxonomy/%/fields/%/edit', 'admin/structure/taxonomy/%/fields/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '141', '169', '398', '407', '416', '0', '0', 0),
('management', '417', '407', 'admin/structure/taxonomy/%/fields/%/field-settings', 'admin/structure/taxonomy/%/fields/%/field-settings', 'Field settings', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '141', '169', '398', '407', '417', '0', '0', 0),
('management', '418', '407', 'admin/structure/taxonomy/%/fields/%/widget-type', 'admin/structure/taxonomy/%/fields/%/widget-type', 'Widget type', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '141', '169', '398', '407', '418', '0', '0', 0),
('management', '419', '406', 'admin/config/people/accounts/fields/%/delete', 'admin/config/people/accounts/fields/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 7, 0, '1', '7', '34', '48', '399', '406', '419', '0', '0', 0),
('management', '420', '406', 'admin/config/people/accounts/fields/%/edit', 'admin/config/people/accounts/fields/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '7', '34', '48', '399', '406', '420', '0', '0', 0),
('management', '421', '406', 'admin/config/people/accounts/fields/%/field-settings', 'admin/config/people/accounts/fields/%/field-settings', 'Field settings', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '7', '34', '48', '399', '406', '421', '0', '0', 0),
('management', '422', '406', 'admin/config/people/accounts/fields/%/widget-type', 'admin/config/people/accounts/fields/%/widget-type', 'Widget type', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '7', '34', '48', '399', '406', '422', '0', '0', 0),
('management', '423', '223', 'admin/structure/types/manage/%/comment/display/default', 'admin/structure/types/manage/%/comment/display/default', 'Default', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 6, 0, '1', '18', '25', '84', '223', '423', '0', '0', '0', 0),
('management', '424', '223', 'admin/structure/types/manage/%/comment/display/full', 'admin/structure/types/manage/%/comment/display/full', 'Full comment', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 6, 0, '1', '18', '25', '84', '223', '424', '0', '0', '0', 0),
('management', '425', '414', 'admin/structure/types/manage/%/fields/%/delete', 'admin/structure/types/manage/%/fields/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 7, 0, '1', '18', '25', '84', '403', '414', '425', '0', '0', 0),
('management', '426', '414', 'admin/structure/types/manage/%/fields/%/edit', 'admin/structure/types/manage/%/fields/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '25', '84', '403', '414', '426', '0', '0', 0),
('management', '427', '224', 'admin/structure/types/manage/%/comment/fields/%', 'admin/structure/types/manage/%/comment/fields/%', '', 'a:0:{}', 'system', 0, 0, 0, 0, '0', 6, 0, '1', '18', '25', '84', '224', '427', '0', '0', '0', 0),
('management', '428', '414', 'admin/structure/types/manage/%/fields/%/field-settings', 'admin/structure/types/manage/%/fields/%/field-settings', 'Field settings', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '25', '84', '403', '414', '428', '0', '0', 0),
('management', '429', '414', 'admin/structure/types/manage/%/fields/%/widget-type', 'admin/structure/types/manage/%/fields/%/widget-type', 'Widget type', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '25', '84', '403', '414', '429', '0', '0', 0),
('management', '430', '427', 'admin/structure/types/manage/%/comment/fields/%/delete', 'admin/structure/types/manage/%/comment/fields/%/delete', 'Delete', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 7, 0, '1', '18', '25', '84', '224', '427', '430', '0', '0', 0),
('management', '431', '427', 'admin/structure/types/manage/%/comment/fields/%/edit', 'admin/structure/types/manage/%/comment/fields/%/edit', 'Edit', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '25', '84', '224', '427', '431', '0', '0', 0),
('management', '432', '427', 'admin/structure/types/manage/%/comment/fields/%/field-settings', 'admin/structure/types/manage/%/comment/fields/%/field-settings', 'Field settings', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '25', '84', '224', '427', '432', '0', '0', 0),
('management', '433', '427', 'admin/structure/types/manage/%/comment/fields/%/widget-type', 'admin/structure/types/manage/%/comment/fields/%/widget-type', 'Widget type', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 7, 0, '1', '18', '25', '84', '224', '427', '433', '0', '0', 0),
('management', '434', '18', 'admin/structure/demo', 'admin/structure/demo', 'Snapshots', 'a:1:{s:10:"attributes";a:1:{s:5:"title";s:36:"Create snapshots and reset the site.";}}', 'system', 0, 0, 0, 0, '0', 3, 0, '1', '18', '434', '0', '0', '0', '0', '0', '0', 0),
('management', '435', '434', 'admin/structure/demo/dump', 'admin/structure/demo/dump', 'Create snapshot', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '434', '435', '0', '0', '0', '0', '0', 0),
('management', '436', '434', 'admin/structure/demo/list', 'admin/structure/demo/list', 'List', 'a:0:{}', 'system', -1, 0, 0, 0, '-10', 4, 0, '1', '18', '434', '436', '0', '0', '0', '0', '0', 0),
('management', '437', '434', 'admin/structure/demo/reset', 'admin/structure/demo/reset', 'Reset', 'a:0:{}', 'system', -1, 0, 0, 0, '3', 4, 0, '1', '18', '434', '437', '0', '0', '0', '0', '0', 0),
('management', '438', '434', 'admin/structure/demo/settings', 'admin/structure/demo/settings', 'Settings', 'a:0:{}', 'system', -1, 0, 0, 0, '10', 4, 0, '1', '18', '434', '438', '0', '0', '0', '0', '0', 0),
('management', '439', '434', 'admin/structure/demo/delete/%', 'admin/structure/demo/delete/%', 'Delete snapshot', 'a:0:{}', 'system', -1, 0, 0, 0, '0', 4, 0, '1', '18', '434', '439', '0', '0', '0', '0', '0', 0);
/*!40000 ALTER TABLE menu_links ENABLE KEYS */;

--
-- Table structure for table 'menu_router'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Maps paths to various callbacks (access, page and title)';

--
-- Dumping data for table 'menu_router'
--

/*!40000 ALTER TABLE menu_router DISABLE KEYS */;
INSERT INTO `menu_router` VALUES
('admin', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '1', 1, '0', '', 'admin', 'Administration', 't', '', '', 'a:0:{}', '6', '', '', '9', 'modules/system/system.admin.inc'),
('admin/appearance', '', '', 'user_access', 'a:1:{i:0;s:17:"administer themes";}', 'system_themes_page', 'a:0:{}', '', '3', 2, '0', '', 'admin/appearance', 'Appearance', 't', '', '', 'a:0:{}', '6', 'Select and configure your themes.', 'left', '-6', 'modules/system/system.admin.inc'),
('admin/appearance/default', '', '', 'user_access', 'a:1:{i:0;s:17:"administer themes";}', 'system_theme_default', 'a:0:{}', '', '7', 3, '0', '', 'admin/appearance/default', 'Set default theme', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/disable', '', '', 'user_access', 'a:1:{i:0;s:17:"administer themes";}', 'system_theme_disable', 'a:0:{}', '', '7', 3, '0', '', 'admin/appearance/disable', 'Disable theme', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/enable', '', '', 'user_access', 'a:1:{i:0;s:17:"administer themes";}', 'system_theme_enable', 'a:0:{}', '', '7', 3, '0', '', 'admin/appearance/enable', 'Enable theme', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/install', '', '', 'update_manager_access', 'a:0:{}', 'drupal_get_form', 'a:2:{i:0;s:27:"update_manager_install_form";i:1;s:5:"theme";}', '', '7', 3, '1', 'admin/appearance', 'admin/appearance', 'Install new theme', 't', '', '', 'a:0:{}', '388', '', '', '25', 'modules/update/update.manager.inc'),
('admin/appearance/list', '', '', 'user_access', 'a:1:{i:0;s:17:"administer themes";}', 'system_themes_page', 'a:0:{}', '', '7', 3, '1', 'admin/appearance', 'admin/appearance', 'List', 't', '', '', 'a:0:{}', '140', 'Select and configure your theme', '', '-1', 'modules/system/system.admin.inc'),
('admin/appearance/settings', '', '', 'user_access', 'a:1:{i:0;s:17:"administer themes";}', 'drupal_get_form', 'a:1:{i:0;s:21:"system_theme_settings";}', '', '7', 3, '1', 'admin/appearance', 'admin/appearance', 'Settings', 't', '', '', 'a:0:{}', '132', 'Configure default and theme specific settings.', '', '20', 'modules/system/system.admin.inc'),
('admin/appearance/settings/bartik', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:6:"bartik";}', '', '15', 4, '1', 'admin/appearance/settings', 'admin/appearance', 'Bartik', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/settings/ember', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:46:"profiles/spark/themes/contrib/ember/ember.info";s:4:"name";s:5:"ember";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Ember";s:11:"description";s:34:"A responsive administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:14:"7.x-1.0-alpha5";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:17:"css/normalize.css";s:53:"profiles/spark/themes/contrib/ember/css/normalize.css";s:13:"css/style.css";s:49:"profiles/spark/themes/contrib/ember/css/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:6:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"messages";s:8:"Messages";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:5:"ember";s:9:"datestamp";s:10:"1359095802";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:50:"profiles/spark/themes/contrib/ember/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:17:"css/normalize.css";s:53:"profiles/spark/themes/contrib/ember/css/normalize.css";s:13:"css/style.css";s:49:"profiles/spark/themes/contrib/ember/css/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:5:"ember";}', '', '15', 4, '1', 'admin/appearance/settings', 'admin/appearance', 'Ember', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/settings/garland', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:7:"garland";}', '', '15', 4, '1', 'admin/appearance/settings', 'admin/appearance', 'Garland', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/settings/global', '', '', 'user_access', 'a:1:{i:0;s:17:"administer themes";}', 'drupal_get_form', 'a:1:{i:0;s:21:"system_theme_settings";}', '', '15', 4, '1', 'admin/appearance/settings', 'admin/appearance', 'Global settings', 't', '', '', 'a:0:{}', '140', '', '', '-1', 'modules/system/system.admin.inc'),
('admin/appearance/settings/responsive_bartik', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":13:{s:8:"filename";s:70:"profiles/spark/themes/contrib/responsive_bartik/responsive_bartik.info";s:4:"name";s:17:"responsive_bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:16:{s:4:"name";s:17:"Responsive Bartik";s:11:"description";s:86:"A flexible, recolorable theme with many regions and a responsive, mobile-first layout.";s:7:"version";s:19:"7.x-1.0-beta1+2-dev";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/layout.css";s:13:"css/style.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/style.css";s:14:"css/colors.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/print.css";}}s:7:"scripts";a:1:{s:22:"js/collapsible-menu.js";s:70:"profiles/spark/themes/contrib/responsive_bartik/js/collapsible-menu.js";}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:17:"responsive_bartik";s:9:"datestamp";s:10:"1365080424";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:62:"profiles/spark/themes/contrib/responsive_bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/layout.css";s:13:"css/style.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/style.css";s:14:"css/colors.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/print.css";}}s:7:"scripts";a:1:{s:22:"js/collapsible-menu.js";s:70:"profiles/spark/themes/contrib/responsive_bartik/js/collapsible-menu.js";}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:17:"responsive_bartik";}', '', '15', 4, '1', 'admin/appearance/settings', 'admin/appearance', 'Responsive Bartik', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/settings/seven', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:5:"seven";}', '', '15', 4, '1', 'admin/appearance/settings', 'admin/appearance', 'Seven', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/settings/stark', '', '', '_system_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:16:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal''s default HTML markup and CSS styles. To learn how to build your own theme and override Drupal''s default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}', 'drupal_get_form', 'a:2:{i:0;s:21:"system_theme_settings";i:1;s:5:"stark";}', '', '15', 4, '1', 'admin/appearance/settings', 'admin/appearance', 'Stark', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/system/system.admin.inc'),
('admin/appearance/update', '', '', 'update_manager_access', 'a:0:{}', 'drupal_get_form', 'a:2:{i:0;s:26:"update_manager_update_form";i:1;s:5:"theme";}', '', '7', 3, '1', 'admin/appearance', 'admin/appearance', 'Update', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/update/update.manager.inc'),
('admin/compact', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_compact_page', 'a:0:{}', '', '3', 2, '0', '', 'admin/compact', 'Compact mode', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/config', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_config_page', 'a:0:{}', '', '3', 2, '0', '', 'admin/config', 'Configuration', 't', '', '', 'a:0:{}', '6', 'Administer settings.', '', '0', 'modules/system/system.admin.inc'),
('admin/config/content', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/content', 'Content authoring', 't', '', '', 'a:0:{}', '6', 'Settings related to formatting and authoring content.', 'left', '-15', 'modules/system/system.admin.inc'),
('admin/config/content/ckeditor', '', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'ckeditor_admin_main', 'a:0:{}', '', '15', 4, '0', '', 'admin/config/content/ckeditor', 'CKEditor', 't', '', '', 'a:0:{}', '6', 'Configure the rich text editor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/ckeditor/add', '', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'drupal_get_form', 'a:1:{i:0;s:27:"ckeditor_admin_profile_form";}', '', '31', 5, '0', '', 'admin/config/content/ckeditor/add', 'Add a new CKEditor profile', 't', '', '', 'a:0:{}', '0', 'Configure the rich text editor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/ckeditor/addg', '', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'drupal_get_form', 'a:2:{i:0;s:34:"ckeditor_admin_global_profile_form";i:1;s:3:"add";}', '', '31', 5, '0', '', 'admin/config/content/ckeditor/addg', 'Add the CKEditor Global profile', 't', '', '', 'a:0:{}', '0', 'Configure the rich text editor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/ckeditor/clone/%', 'a:1:{i:5;s:21:"ckeditor_profile_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'drupal_get_form', 'a:2:{i:0;s:33:"ckeditor_admin_profile_clone_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/content/ckeditor/clone/%', 'Clone the CKEditor profile', 't', '', '', 'a:0:{}', '0', 'Configure the rich text editor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/ckeditor/delete/%', 'a:1:{i:5;s:21:"ckeditor_profile_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'drupal_get_form', 'a:2:{i:0;s:34:"ckeditor_admin_profile_delete_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/content/ckeditor/delete/%', 'Delete the CKEditor profile', 't', '', '', 'a:0:{}', '0', 'Configure the rich text editor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/ckeditor/edit/%', 'a:1:{i:5;s:21:"ckeditor_profile_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'drupal_get_form', 'a:2:{i:0;s:27:"ckeditor_admin_profile_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/content/ckeditor/edit/%', 'Edit the CKEditor profile', 't', '', '', 'a:0:{}', '0', 'Configure the rich text editor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/ckeditor/editg', '', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'drupal_get_form', 'a:2:{i:0;s:34:"ckeditor_admin_global_profile_form";i:1;s:4:"edit";}', '', '31', 5, '0', '', 'admin/config/content/ckeditor/editg', 'Edit the CKEditor Global profile', 't', '', '', 'a:0:{}', '0', 'Configure the rich text editor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/ckeditor/skinframe', '', '', 'user_access', 'a:1:{i:0;s:19:"administer ckeditor";}', 'ckeditor_skinframe', 'a:0:{}', '', '31', 5, '0', '', 'admin/config/content/ckeditor/skinframe', 'Change skin of CKEditor', 't', '', '', 'a:0:{}', '0', 'Configure skin for CKEditor.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('admin/config/content/formats', '', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'drupal_get_form', 'a:1:{i:0;s:21:"filter_admin_overview";}', '', '15', 4, '0', '', 'admin/config/content/formats', 'Text formats', 't', '', '', 'a:0:{}', '6', 'Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.', '', '0', 'modules/filter/filter.admin.inc'),
('admin/config/content/formats/%', 'a:1:{i:4;s:18:"filter_format_load";}', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'filter_admin_format_page', 'a:1:{i:0;i:4;}', '', '30', 5, '0', '', 'admin/config/content/formats/%', '', 'filter_admin_format_title', 'a:1:{i:0;i:4;}', '', 'a:0:{}', '6', '', '', '0', 'modules/filter/filter.admin.inc'),
('admin/config/content/formats/%/disable', 'a:1:{i:4;s:18:"filter_format_load";}', '', '_filter_disable_format_access', 'a:1:{i:0;i:4;}', 'drupal_get_form', 'a:2:{i:0;s:20:"filter_admin_disable";i:1;i:4;}', '', '61', 6, '0', '', 'admin/config/content/formats/%/disable', 'Disable text format', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/filter/filter.admin.inc'),
('admin/config/content/formats/add', '', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'filter_admin_format_page', 'a:0:{}', '', '31', 5, '1', 'admin/config/content/formats', 'admin/config/content/formats', 'Add text format', 't', '', '', 'a:0:{}', '388', '', '', '1', 'modules/filter/filter.admin.inc'),
('admin/config/content/formats/list', '', '', 'user_access', 'a:1:{i:0;s:18:"administer filters";}', 'drupal_get_form', 'a:1:{i:0;s:21:"filter_admin_overview";}', '', '31', 5, '1', 'admin/config/content/formats', 'admin/config/content/formats', 'List', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/filter/filter.admin.inc'),
('admin/config/development', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/development', 'Development', 't', '', '', 'a:0:{}', '6', 'Development tools.', 'right', '-10', 'modules/system/system.admin.inc'),
('admin/config/development/jquery_update', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:27:"jquery_update_settings_form";}', '', '15', 4, '0', '', 'admin/config/development/jquery_update', 'jQuery update', 't', '', '', 'a:0:{}', '6', 'Configure settings related to the jQuery upgrade, the library path and compression.', '', '0', ''),
('admin/config/development/logging', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:23:"system_logging_settings";}', '', '15', 4, '0', '', 'admin/config/development/logging', 'Logging and errors', 't', '', '', 'a:0:{}', '6', 'Settings for logging and alerts modules. Various modules can route Drupal''s system events to different destinations, such as syslog, database, email, etc.', '', '-15', 'modules/system/system.admin.inc'),
('admin/config/development/maintenance', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:28:"system_site_maintenance_mode";}', '', '15', 4, '0', '', 'admin/config/development/maintenance', 'Maintenance mode', 't', '', '', 'a:0:{}', '6', 'Take the site offline for maintenance or bring it back online.', '', '-10', 'modules/system/system.admin.inc'),
('admin/config/development/performance', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:27:"system_performance_settings";}', '', '15', 4, '0', '', 'admin/config/development/performance', 'Performance', 't', '', '', 'a:0:{}', '6', 'Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.', '', '-20', 'modules/system/system.admin.inc'),
('admin/config/media', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/media', 'Media', 't', '', '', 'a:0:{}', '6', 'Media tools.', 'left', '-10', 'modules/system/system.admin.inc'),
('admin/config/media/breakpoints', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:29:"breakpoints_admin_breakpoints";}', '', '15', 4, '0', '', 'admin/config/media/breakpoints', 'Breakpoints', 't', '', '', 'a:0:{}', '6', 'Manage breakpoints', '', '0', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/%/%', 'a:2:{i:4;N;i:5;N;}', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'breakpoints_admin_breakpoint_actions_page', 'a:3:{i:0;s:0:"";i:1;i:4;i:2;i:5;}', '', '60', 6, '0', '', 'admin/config/media/breakpoints/%/%', '', 't', '', '', 'a:0:{}', '0', '', '', '15', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/create_style', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:26:"breakpoints_add_style_form";}', '', '31', 5, '1', 'admin/config/media/breakpoints', 'admin/config/media/breakpoints', 'Add responsive style', 't', '', '', 'a:0:{}', '132', 'Add a responsive image style', '', '30', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/groups', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:29:"breakpoints_admin_breakpoints";}', '', '31', 5, '1', 'admin/config/media/breakpoints', 'admin/config/media/breakpoints', 'Groups', 't', '', '', 'a:0:{}', '140', '', '', '10', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/groups/add', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:44:"breakpoints_admin_breakpoint_group_edit_form";}', '', '63', 6, '1', 'admin/config/media/breakpoints/groups', 'admin/config/media/breakpoints', 'Add a new group', 't', '', '', 'a:0:{}', '132', '', '', '99', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/groups/global', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:29:"breakpoints_admin_breakpoints";}', '', '63', 6, '1', 'admin/config/media/breakpoints/groups', 'admin/config/media/breakpoints', 'All breakpoints', 't', '', '', 'a:0:{}', '140', '', '', '-1', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/groups/import', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:46:"breakpoints_admin_breakpoint_group_import_form";}', '', '63', 6, '1', 'admin/config/media/breakpoints/groups', 'admin/config/media/breakpoints', 'Import a new group', 't', '', '', 'a:0:{}', '132', '', '', '99', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/groups/import-breakpoint', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:40:"breakpoints_admin_breakpoint_import_form";}', '', '63', 6, '1', 'admin/config/media/breakpoints/groups', 'admin/config/media/breakpoints', 'Import a new breakpoint', 't', '', '', 'a:0:{}', '132', '', '', '99', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/multipliers', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:28:"breakpoints_multipliers_form";}', '', '31', 5, '1', 'admin/config/media/breakpoints', 'admin/config/media/breakpoints', 'Multipliers', 't', '', '', 'a:0:{}', '132', 'Manage multipliers', '', '20', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/multipliers/%/delete', 'a:1:{i:5;N;}', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:2:{i:0;s:40:"breakpoints_admin_multiplier_delete_form";i:1;i:5;}', '', '125', 7, '0', '', 'admin/config/media/breakpoints/multipliers/%/delete', '', 't', '', '', 'a:0:{}', '0', '', '', '15', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/breakpoints/settings', '', '', 'user_access', 'a:1:{i:0;s:22:"administer breakpoints";}', 'drupal_get_form', 'a:1:{i:0;s:31:"breakpoints_admin_settings_form";}', '', '31', 5, '1', 'admin/config/media/breakpoints', 'admin/config/media/breakpoints', 'settings', 't', '', '', 'a:0:{}', '132', 'Manage breakpoint settings', '', '30', 'profiles/spark/modules/contrib/breakpoints/breakpoints.admin.inc'),
('admin/config/media/file-system', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:27:"system_file_system_settings";}', '', '15', 4, '0', '', 'admin/config/media/file-system', 'File system', 't', '', '', 'a:0:{}', '6', 'Tell Drupal where to store uploaded files and how they are accessed.', '', '-10', 'modules/system/system.admin.inc'),
('admin/config/media/image-styles', '', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'image_style_list', 'a:0:{}', '', '15', 4, '0', '', 'admin/config/media/image-styles', 'Image styles', 't', '', '', 'a:0:{}', '6', 'Configure styles that can be used for resizing or adjusting images on display.', '', '0', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/add', '', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'drupal_get_form', 'a:1:{i:0;s:20:"image_style_add_form";}', '', '31', 5, '1', 'admin/config/media/image-styles', 'admin/config/media/image-styles', 'Add style', 't', '', '', 'a:0:{}', '388', 'Add a new image style.', '', '2', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/delete/%', 'a:1:{i:5;a:1:{s:16:"image_style_load";a:2:{i:0;N;i:1;s:1:"1";}}}', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'drupal_get_form', 'a:2:{i:0;s:23:"image_style_delete_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/media/image-styles/delete/%', 'Delete style', 't', '', '', 'a:0:{}', '6', 'Delete an image style.', '', '0', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/edit/%', 'a:1:{i:5;s:16:"image_style_load";}', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'drupal_get_form', 'a:2:{i:0;s:16:"image_style_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/media/image-styles/edit/%', 'Edit style', 't', '', '', 'a:0:{}', '6', 'Configure an image style.', '', '0', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/edit/%/add/%', 'a:2:{i:5;a:1:{s:16:"image_style_load";a:1:{i:0;i:5;}}i:7;a:1:{s:28:"image_effect_definition_load";a:1:{i:0;i:5;}}}', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'drupal_get_form', 'a:3:{i:0;s:17:"image_effect_form";i:1;i:5;i:2;i:7;}', '', '250', 8, '0', '', 'admin/config/media/image-styles/edit/%/add/%', 'Add image effect', 't', '', '', 'a:0:{}', '6', 'Add a new effect to a style.', '', '0', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/edit/%/effects/%', 'a:2:{i:5;a:1:{s:16:"image_style_load";a:2:{i:0;i:5;i:1;s:1:"3";}}i:7;a:1:{s:17:"image_effect_load";a:2:{i:0;i:5;i:1;s:1:"3";}}}', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'drupal_get_form', 'a:3:{i:0;s:17:"image_effect_form";i:1;i:5;i:2;i:7;}', '', '250', 8, '0', '', 'admin/config/media/image-styles/edit/%/effects/%', 'Edit image effect', 't', '', '', 'a:0:{}', '6', 'Edit an existing effect within a style.', '', '0', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/edit/%/effects/%/delete', 'a:2:{i:5;a:1:{s:16:"image_style_load";a:2:{i:0;i:5;i:1;s:1:"3";}}i:7;a:1:{s:17:"image_effect_load";a:2:{i:0;i:5;i:1;s:1:"3";}}}', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'drupal_get_form', 'a:3:{i:0;s:24:"image_effect_delete_form";i:1;i:5;i:2;i:7;}', '', '501', 9, '0', '', 'admin/config/media/image-styles/edit/%/effects/%/delete', 'Delete image effect', 't', '', '', 'a:0:{}', '6', 'Delete an existing effect from a style.', '', '0', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/list', '', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'image_style_list', 'a:0:{}', '', '31', 5, '1', 'admin/config/media/image-styles', 'admin/config/media/image-styles', 'List', 't', '', '', 'a:0:{}', '140', 'List the current image styles on the site.', '', '1', 'modules/image/image.admin.inc'),
('admin/config/media/image-styles/revert/%', 'a:1:{i:5;a:1:{s:16:"image_style_load";a:2:{i:0;N;i:1;s:1:"2";}}}', '', 'user_access', 'a:1:{i:0;s:23:"administer image styles";}', 'drupal_get_form', 'a:2:{i:0;s:23:"image_style_revert_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/media/image-styles/revert/%', 'Revert style', 't', '', '', 'a:0:{}', '6', 'Revert an image style.', '', '0', 'modules/image/image.admin.inc'),
('admin/config/media/image-toolkit', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:29:"system_image_toolkit_settings";}', '', '15', 4, '0', '', 'admin/config/media/image-toolkit', 'Image toolkit', 't', '', '', 'a:0:{}', '6', 'Choose which image toolkit to use if you have installed optional toolkits.', '', '20', 'modules/system/system.admin.inc'),
('admin/config/people', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/people', 'People', 't', '', '', 'a:0:{}', '6', 'Configure user accounts.', 'left', '-20', 'modules/system/system.admin.inc'),
('admin/config/people/accounts', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:1:{i:0;s:19:"user_admin_settings";}', '', '15', 4, '0', '', 'admin/config/people/accounts', 'Account settings', 't', '', '', 'a:0:{}', '6', 'Configure default behavior of users, including registration requirements, e-mails, fields, and user pictures.', '', '-10', 'modules/user/user.admin.inc'),
('admin/config/people/accounts/display', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"user";i:2;s:4:"user";i:3;s:7:"default";}', '', '31', 5, '1', 'admin/config/people/accounts', 'admin/config/people/accounts', 'Manage display', 't', '', '', 'a:0:{}', '132', '', '', '2', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/display/default', '', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"user";i:1;s:4:"user";i:2;s:7:"default";i:3;s:11:"user_access";i:4;s:16:"administer users";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"user";i:2;s:4:"user";i:3;s:7:"default";}', '', '63', 6, '1', 'admin/config/people/accounts/display', 'admin/config/people/accounts', 'Default', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/display/full', '', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"user";i:1;s:4:"user";i:2;s:4:"full";i:3;s:11:"user_access";i:4;s:16:"administer users";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"user";i:2;s:4:"user";i:3;s:4:"full";}', '', '63', 6, '1', 'admin/config/people/accounts/display', 'admin/config/people/accounts', 'User account', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/fields', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:3:{i:0;s:28:"field_ui_field_overview_form";i:1;s:4:"user";i:2;s:4:"user";}', '', '31', 5, '1', 'admin/config/people/accounts', 'admin/config/people/accounts', 'Manage fields', 't', '', '', 'a:0:{}', '132', '', '', '1', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/fields/%', 'a:1:{i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"user";i:1;s:4:"user";i:2;s:1:"0";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/people/accounts/fields/%', '', 'field_ui_menu_title', 'a:1:{i:0;i:5;}', '', 'a:0:{}', '6', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/fields/%/delete', 'a:1:{i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"user";i:1;s:4:"user";i:2;s:1:"0";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:2:{i:0;s:26:"field_ui_field_delete_form";i:1;i:5;}', '', '125', 7, '1', 'admin/config/people/accounts/fields/%', 'admin/config/people/accounts/fields/%', 'Delete', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/fields/%/edit', 'a:1:{i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"user";i:1;s:4:"user";i:2;s:1:"0";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:5;}', '', '125', 7, '1', 'admin/config/people/accounts/fields/%', 'admin/config/people/accounts/fields/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/fields/%/field-settings', 'a:1:{i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"user";i:1;s:4:"user";i:2;s:1:"0";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:2:{i:0;s:28:"field_ui_field_settings_form";i:1;i:5;}', '', '125', 7, '1', 'admin/config/people/accounts/fields/%', 'admin/config/people/accounts/fields/%', 'Field settings', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/fields/%/widget-type', 'a:1:{i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"user";i:1;s:4:"user";i:2;s:1:"0";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:2:{i:0;s:25:"field_ui_widget_type_form";i:1;i:5;}', '', '125', 7, '1', 'admin/config/people/accounts/fields/%', 'admin/config/people/accounts/fields/%', 'Widget type', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/config/people/accounts/settings', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'drupal_get_form', 'a:1:{i:0;s:19:"user_admin_settings";}', '', '31', 5, '1', 'admin/config/people/accounts', 'admin/config/people/accounts', 'Settings', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/user/user.admin.inc'),
('admin/config/people/ip-blocking', '', '', 'user_access', 'a:1:{i:0;s:18:"block IP addresses";}', 'system_ip_blocking', 'a:0:{}', '', '15', 4, '0', '', 'admin/config/people/ip-blocking', 'IP address blocking', 't', '', '', 'a:0:{}', '6', 'Manage blocked IP addresses.', '', '10', 'modules/system/system.admin.inc'),
('admin/config/people/ip-blocking/delete/%', 'a:1:{i:5;s:15:"blocked_ip_load";}', '', 'user_access', 'a:1:{i:0;s:18:"block IP addresses";}', 'drupal_get_form', 'a:2:{i:0;s:25:"system_ip_blocking_delete";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/people/ip-blocking/delete/%', 'Delete IP address', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/system/system.admin.inc'),
('admin/config/regional', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/regional', 'Regional and language', 't', '', '', 'a:0:{}', '6', 'Regional settings, localization and translation.', 'left', '-5', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:25:"system_date_time_settings";}', '', '15', 4, '0', '', 'admin/config/regional/date-time', 'Date and time', 't', '', '', 'a:0:{}', '6', 'Configure display formats for date and time.', '', '-15', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/formats', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_date_time_formats', 'a:0:{}', '', '31', 5, '1', 'admin/config/regional/date-time', 'admin/config/regional/date-time', 'Formats', 't', '', '', 'a:0:{}', '132', 'Configure display format strings for date and time.', '', '-9', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/formats/%/delete', 'a:1:{i:5;N;}', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:2:{i:0;s:30:"system_date_delete_format_form";i:1;i:5;}', '', '125', 7, '0', '', 'admin/config/regional/date-time/formats/%/delete', 'Delete date format', 't', '', '', 'a:0:{}', '6', 'Allow users to delete a configured date format.', '', '0', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/formats/%/edit', 'a:1:{i:5;N;}', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:2:{i:0;s:34:"system_configure_date_formats_form";i:1;i:5;}', '', '125', 7, '0', '', 'admin/config/regional/date-time/formats/%/edit', 'Edit date format', 't', '', '', 'a:0:{}', '6', 'Allow users to edit a configured date format.', '', '0', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/formats/add', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:34:"system_configure_date_formats_form";}', '', '63', 6, '1', 'admin/config/regional/date-time/formats', 'admin/config/regional/date-time', 'Add format', 't', '', '', 'a:0:{}', '388', 'Allow users to add additional date formats.', '', '-10', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/formats/lookup', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_date_time_lookup', 'a:0:{}', '', '63', 6, '0', '', 'admin/config/regional/date-time/formats/lookup', 'Date and time lookup', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/types', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:25:"system_date_time_settings";}', '', '31', 5, '1', 'admin/config/regional/date-time', 'admin/config/regional/date-time', 'Types', 't', '', '', 'a:0:{}', '140', 'Configure display formats for date and time.', '', '-10', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/types/%/delete', 'a:1:{i:5;N;}', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:2:{i:0;s:35:"system_delete_date_format_type_form";i:1;i:5;}', '', '125', 7, '0', '', 'admin/config/regional/date-time/types/%/delete', 'Delete date type', 't', '', '', 'a:0:{}', '6', 'Allow users to delete a configured date type.', '', '0', 'modules/system/system.admin.inc'),
('admin/config/regional/date-time/types/add', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:32:"system_add_date_format_type_form";}', '', '63', 6, '1', 'admin/config/regional/date-time/types', 'admin/config/regional/date-time', 'Add date type', 't', '', '', 'a:0:{}', '388', 'Add new date type.', '', '-10', 'modules/system/system.admin.inc'),
('admin/config/regional/settings', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:24:"system_regional_settings";}', '', '15', 4, '0', '', 'admin/config/regional/settings', 'Regional settings', 't', '', '', 'a:0:{}', '6', 'Settings for the site''s default time zone and country.', '', '-20', 'modules/system/system.admin.inc'),
('admin/config/search', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/search', 'Search and metadata', 't', '', '', 'a:0:{}', '6', 'Local site search, metadata and SEO.', 'left', '-10', 'modules/system/system.admin.inc'),
('admin/config/search/clean-urls', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:25:"system_clean_url_settings";}', '', '15', 4, '0', '', 'admin/config/search/clean-urls', 'Clean URLs', 't', '', '', 'a:0:{}', '6', 'Enable or disable clean URLs for your site.', '', '5', 'modules/system/system.admin.inc'),
('admin/config/search/clean-urls/check', '', '', '1', 'a:0:{}', 'drupal_json_output', 'a:1:{i:0;a:1:{s:6:"status";b:1;}}', '', '31', 5, '0', '', 'admin/config/search/clean-urls/check', 'Clean URL check', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/config/search/path', '', '', 'user_access', 'a:1:{i:0;s:22:"administer url aliases";}', 'path_admin_overview', 'a:0:{}', '', '15', 4, '0', '', 'admin/config/search/path', 'URL aliases', 't', '', '', 'a:0:{}', '6', 'Change your site''s URL paths by aliasing them.', '', '-5', 'modules/path/path.admin.inc'),
('admin/config/search/path/add', '', '', 'user_access', 'a:1:{i:0;s:22:"administer url aliases";}', 'path_admin_edit', 'a:0:{}', '', '31', 5, '1', 'admin/config/search/path', 'admin/config/search/path', 'Add alias', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/path/path.admin.inc'),
('admin/config/search/path/delete/%', 'a:1:{i:5;s:9:"path_load";}', '', 'user_access', 'a:1:{i:0;s:22:"administer url aliases";}', 'drupal_get_form', 'a:2:{i:0;s:25:"path_admin_delete_confirm";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/search/path/delete/%', 'Delete alias', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/path/path.admin.inc'),
('admin/config/search/path/edit/%', 'a:1:{i:5;s:9:"path_load";}', '', 'user_access', 'a:1:{i:0;s:22:"administer url aliases";}', 'path_admin_edit', 'a:1:{i:0;i:5;}', '', '62', 6, '0', '', 'admin/config/search/path/edit/%', 'Edit alias', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/path/path.admin.inc'),
('admin/config/search/path/list', '', '', 'user_access', 'a:1:{i:0;s:22:"administer url aliases";}', 'path_admin_overview', 'a:0:{}', '', '31', 5, '1', 'admin/config/search/path', 'admin/config/search/path', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/path/path.admin.inc'),
('admin/config/search/settings', '', '', 'user_access', 'a:1:{i:0;s:17:"administer search";}', 'drupal_get_form', 'a:1:{i:0;s:21:"search_admin_settings";}', '', '15', 4, '0', '', 'admin/config/search/settings', 'Search settings', 't', '', '', 'a:0:{}', '6', 'Configure relevance settings for search and other indexing options.', '', '-10', 'modules/search/search.admin.inc'),
('admin/config/search/settings/reindex', '', '', 'user_access', 'a:1:{i:0;s:17:"administer search";}', 'drupal_get_form', 'a:1:{i:0;s:22:"search_reindex_confirm";}', '', '31', 5, '0', '', 'admin/config/search/settings/reindex', 'Clear index', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/search/search.admin.inc'),
('admin/config/services', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/services', 'Web services', 't', '', '', 'a:0:{}', '6', 'Tools related to web services.', 'right', '0', 'modules/system/system.admin.inc'),
('admin/config/services/rss-publishing', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:25:"system_rss_feeds_settings";}', '', '15', 4, '0', '', 'admin/config/services/rss-publishing', 'RSS publishing', 't', '', '', 'a:0:{}', '6', 'Configure the site description, the number of items per feed and whether feeds should be titles/teasers/full-text.', '', '0', 'modules/system/system.admin.inc'),
('admin/config/system', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/system', 'System', 't', '', '', 'a:0:{}', '6', 'General system related configuration.', 'right', '-20', 'modules/system/system.admin.inc'),
('admin/config/system/actions', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'system_actions_manage', 'a:0:{}', '', '15', 4, '0', '', 'admin/config/system/actions', 'Actions', 't', '', '', 'a:0:{}', '6', 'Manage the actions defined for your site.', '', '0', 'modules/system/system.admin.inc');
INSERT INTO `menu_router` VALUES
('admin/config/system/actions/configure', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'drupal_get_form', 'a:1:{i:0;s:24:"system_actions_configure";}', '', '31', 5, '0', '', 'admin/config/system/actions/configure', 'Configure an advanced action', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/system/system.admin.inc'),
('admin/config/system/actions/delete/%', 'a:1:{i:5;s:12:"actions_load";}', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'drupal_get_form', 'a:2:{i:0;s:26:"system_actions_delete_form";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/system/actions/delete/%', 'Delete action', 't', '', '', 'a:0:{}', '6', 'Delete an action.', '', '0', 'modules/system/system.admin.inc'),
('admin/config/system/actions/manage', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'system_actions_manage', 'a:0:{}', '', '31', 5, '1', 'admin/config/system/actions', 'admin/config/system/actions', 'Manage actions', 't', '', '', 'a:0:{}', '140', 'Manage the actions defined for your site.', '', '-2', 'modules/system/system.admin.inc'),
('admin/config/system/actions/orphan', '', '', 'user_access', 'a:1:{i:0;s:18:"administer actions";}', 'system_actions_remove_orphans', 'a:0:{}', '', '31', 5, '0', '', 'admin/config/system/actions/orphan', 'Remove orphans', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/config/system/cron', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:20:"system_cron_settings";}', '', '15', 4, '0', '', 'admin/config/system/cron', 'Cron', 't', '', '', 'a:0:{}', '6', 'Manage automatic site maintenance tasks.', '', '20', 'modules/system/system.admin.inc'),
('admin/config/system/site-information', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:32:"system_site_information_settings";}', '', '15', 4, '0', '', 'admin/config/system/site-information', 'Site information', 't', '', '', 'a:0:{}', '6', 'Change site name, e-mail address, slogan, default front page, and number of posts per page, error pages.', '', '-20', 'modules/system/system.admin.inc'),
('admin/config/user-interface', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/user-interface', 'User interface', 't', '', '', 'a:0:{}', '6', 'Tools that enhance the user interface.', 'right', '-15', 'modules/system/system.admin.inc'),
('admin/config/user-interface/modulefilter', '', '', 'user_access', 'a:1:{i:0;s:24:"administer module filter";}', 'drupal_get_form', 'a:1:{i:0;s:22:"module_filter_settings";}', '', '15', 4, '0', '', 'admin/config/user-interface/modulefilter', 'Module filter', 't', '', '', 'a:0:{}', '6', 'Configure settings for Module Filter.', '', '0', 'profiles/spark/modules/contrib/module_filter/module_filter.admin.inc'),
('admin/config/user-interface/shortcut', '', '', 'user_access', 'a:1:{i:0;s:20:"administer shortcuts";}', 'shortcut_set_admin', 'a:0:{}', '', '15', 4, '0', '', 'admin/config/user-interface/shortcut', 'Shortcuts', 't', '', '', 'a:0:{}', '6', 'Add and modify shortcut sets.', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/%', 'a:1:{i:4;s:17:"shortcut_set_load";}', '', 'shortcut_set_edit_access', 'a:1:{i:0;i:4;}', 'drupal_get_form', 'a:2:{i:0;s:22:"shortcut_set_customize";i:1;i:4;}', '', '30', 5, '0', '', 'admin/config/user-interface/shortcut/%', 'Edit shortcuts', 'shortcut_set_title_callback', 'a:1:{i:0;i:4;}', '', 'a:0:{}', '6', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/%/add-link', 'a:1:{i:4;s:17:"shortcut_set_load";}', '', 'shortcut_set_edit_access', 'a:1:{i:0;i:4;}', 'drupal_get_form', 'a:2:{i:0;s:17:"shortcut_link_add";i:1;i:4;}', '', '61', 6, '1', 'admin/config/user-interface/shortcut/%', 'admin/config/user-interface/shortcut/%', 'Add shortcut', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/%/add-link-inline', 'a:1:{i:4;s:17:"shortcut_set_load";}', '', 'shortcut_set_edit_access', 'a:1:{i:0;i:4;}', 'shortcut_link_add_inline', 'a:1:{i:0;i:4;}', '', '61', 6, '0', '', 'admin/config/user-interface/shortcut/%/add-link-inline', 'Add shortcut', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/%/delete', 'a:1:{i:4;s:17:"shortcut_set_load";}', '', 'shortcut_set_delete_access', 'a:1:{i:0;i:4;}', 'drupal_get_form', 'a:2:{i:0;s:24:"shortcut_set_delete_form";i:1;i:4;}', '', '61', 6, '0', '', 'admin/config/user-interface/shortcut/%/delete', 'Delete shortcut set', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/%/edit', 'a:1:{i:4;s:17:"shortcut_set_load";}', '', 'shortcut_set_edit_access', 'a:1:{i:0;i:4;}', 'drupal_get_form', 'a:2:{i:0;s:22:"shortcut_set_customize";i:1;i:4;}', '', '61', 6, '1', 'admin/config/user-interface/shortcut/%', 'admin/config/user-interface/shortcut/%', 'Edit shortcut set', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/add-set', '', '', 'user_access', 'a:1:{i:0;s:20:"administer shortcuts";}', 'drupal_get_form', 'a:1:{i:0;s:21:"shortcut_set_add_form";}', '', '31', 5, '1', 'admin/config/user-interface/shortcut', 'admin/config/user-interface/shortcut', 'Add shortcut set', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/link/%', 'a:1:{i:5;s:14:"menu_link_load";}', '', 'shortcut_link_access', 'a:1:{i:0;i:5;}', 'drupal_get_form', 'a:2:{i:0;s:18:"shortcut_link_edit";i:1;i:5;}', '', '62', 6, '0', '', 'admin/config/user-interface/shortcut/link/%', 'Edit shortcut', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/user-interface/shortcut/link/%/delete', 'a:1:{i:5;s:14:"menu_link_load";}', '', 'shortcut_link_access', 'a:1:{i:0;i:5;}', 'drupal_get_form', 'a:2:{i:0;s:20:"shortcut_link_delete";i:1;i:5;}', '', '125', 7, '0', '', 'admin/config/user-interface/shortcut/link/%/delete', 'Delete shortcut', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('admin/config/workflow', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/config/workflow', 'Workflow', 't', '', '', 'a:0:{}', '6', 'Content workflow, editorial workflow tools.', 'right', '5', 'modules/system/system.admin.inc'),
('admin/content', '', '', 'user_access', 'a:1:{i:0;s:23:"access content overview";}', 'views_page', 'a:2:{i:0;s:16:"admin_views_node";i:1;s:8:"system_1";}', '', '3', 2, '0', '', 'admin/content', 'Content', 't', '', '', 'a:0:{}', '6', 'Administer content and comments.', '', '-10', 'modules/node/node.admin.inc'),
('admin/content/comment', '', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'views_page', 'a:2:{i:0;s:19:"admin_views_comment";i:1;s:8:"system_1";}', '', '7', 3, '1', 'admin/content', 'admin/content', 'Comments', 't', '', '', 'a:0:{}', '134', 'List and edit site comments and the comment approval queue.', '', '0', 'modules/comment/comment.admin.inc'),
('admin/content/comment/approval', '', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'views_page', 'a:2:{i:0;s:19:"admin_views_comment";i:1;s:8:"system_2";}', '', '15', 4, '1', 'admin/content/comment', 'admin/content', 'Unapproved comments', 'comment_count_unpublished', '', '', 'a:0:{}', '132', '', '', '0', 'modules/comment/comment.admin.inc'),
('admin/content/comment/new', '', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'comment_admin', 'a:1:{i:0;s:18:"node_admin_content";}', '', '15', 4, '1', 'admin/content/comment', 'admin/content', 'Published comments', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/comment/comment.admin.inc'),
('admin/content/node', '', '', 'user_access', 'a:1:{i:0;s:23:"access content overview";}', 'drupal_get_form', 'a:1:{i:0;s:18:"node_admin_content";}', '', '7', 3, '1', 'admin/content', 'admin/content', 'Content', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/node/node.admin.inc'),
('admin/help', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_main', 'a:0:{}', '', '3', 2, '0', '', 'admin/help', 'Help', 't', '', '', 'a:0:{}', '6', 'Reference for usage, configuration, and modules.', '', '9', 'modules/help/help.admin.inc'),
('admin/help/block', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/block', 'block', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/ckeditor', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/ckeditor', 'ckeditor', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/color', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/color', 'color', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/comment', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/comment', 'comment', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/contextual', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/contextual', 'contextual', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/dblog', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/dblog', 'dblog', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/field', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/field', 'field', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/field_sql_storage', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/field_sql_storage', 'field_sql_storage', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/field_ui', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/field_ui', 'field_ui', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/file', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/file', 'file', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/filter', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/filter', 'filter', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/help', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/help', 'help', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/image', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/image', 'image', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/jquery_update', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/jquery_update', 'jquery_update', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/list', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/list', 'list', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/menu', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/menu', 'menu', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/navbar', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/navbar', 'navbar', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/node', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/node', 'node', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/number', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/number', 'number', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/options', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/options', 'options', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/path', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/path', 'path', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/rdf', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/rdf', 'rdf', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/responsive_preview', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/responsive_preview', 'responsive_preview', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/search', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/search', 'search', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/shortcut', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/shortcut', 'shortcut', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/system', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/system', 'system', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/taxonomy', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/taxonomy', 'taxonomy', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/text', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/text', 'text', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/update', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/update', 'update', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/help/user', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'help_page', 'a:1:{i:0;i:2;}', '', '7', 3, '0', '', 'admin/help/user', 'user', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/help/help.admin.inc'),
('admin/index', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_index', 'a:0:{}', '', '3', 2, '1', 'admin', 'admin', 'Index', 't', '', '', 'a:0:{}', '132', '', '', '-18', 'modules/system/system.admin.inc'),
('admin/modules', '', '', 'user_access', 'a:1:{i:0;s:18:"administer modules";}', 'drupal_get_form', 'a:1:{i:0;s:14:"system_modules";}', '', '3', 2, '0', '', 'admin/modules', 'Modules', 't', '', '', 'a:0:{}', '6', 'Extend site functionality.', '', '-2', 'modules/system/system.admin.inc'),
('admin/modules/install', '', '', 'update_manager_access', 'a:0:{}', 'drupal_get_form', 'a:2:{i:0;s:27:"update_manager_install_form";i:1;s:6:"module";}', '', '7', 3, '1', 'admin/modules', 'admin/modules', 'Install new module', 't', '', '', 'a:0:{}', '388', '', '', '25', 'modules/update/update.manager.inc'),
('admin/modules/list', '', '', 'user_access', 'a:1:{i:0;s:18:"administer modules";}', 'drupal_get_form', 'a:1:{i:0;s:14:"system_modules";}', '', '7', 3, '1', 'admin/modules', 'admin/modules', 'List', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/system/system.admin.inc'),
('admin/modules/list/confirm', '', '', 'user_access', 'a:1:{i:0;s:18:"administer modules";}', 'drupal_get_form', 'a:1:{i:0;s:14:"system_modules";}', '', '15', 4, '0', '', 'admin/modules/list/confirm', 'List', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/system/system.admin.inc'),
('admin/modules/uninstall', '', '', 'user_access', 'a:1:{i:0;s:18:"administer modules";}', 'drupal_get_form', 'a:1:{i:0;s:24:"system_modules_uninstall";}', '', '7', 3, '1', 'admin/modules', 'admin/modules', 'Uninstall', 't', '', '', 'a:0:{}', '132', '', '', '20', 'modules/system/system.admin.inc'),
('admin/modules/uninstall/confirm', '', '', 'user_access', 'a:1:{i:0;s:18:"administer modules";}', 'drupal_get_form', 'a:1:{i:0;s:24:"system_modules_uninstall";}', '', '15', 4, '0', '', 'admin/modules/uninstall/confirm', 'Uninstall', 't', '', '', 'a:0:{}', '4', '', '', '0', 'modules/system/system.admin.inc'),
('admin/modules/update', '', '', 'update_manager_access', 'a:0:{}', 'drupal_get_form', 'a:2:{i:0;s:26:"update_manager_update_form";i:1;s:6:"module";}', '', '7', 3, '1', 'admin/modules', 'admin/modules', 'Update', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/update/update.manager.inc'),
('admin/people', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'views_page', 'a:2:{i:0;s:16:"admin_views_user";i:1;s:8:"system_1";}', '', '3', 2, '0', '', 'admin/people', 'People', 't', '', '', 'a:0:{}', '6', 'Manage user accounts, roles, and permissions.', 'left', '-4', 'modules/user/user.admin.inc'),
('admin/people/create', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'user_admin', 'a:1:{i:0;s:6:"create";}', '', '7', 3, '1', 'admin/people', 'admin/people', 'Add user', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/user/user.admin.inc'),
('admin/people/people', '', '', 'user_access', 'a:1:{i:0;s:16:"administer users";}', 'user_admin', 'a:1:{i:0;s:4:"list";}', '', '7', 3, '1', 'admin/people', 'admin/people', 'List', 't', '', '', 'a:0:{}', '140', 'Find and manage people interacting with your site.', '', '-10', 'modules/user/user.admin.inc'),
('admin/people/permissions', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'drupal_get_form', 'a:1:{i:0;s:22:"user_admin_permissions";}', '', '7', 3, '1', 'admin/people', 'admin/people', 'Permissions', 't', '', '', 'a:0:{}', '132', 'Determine access to features by selecting permissions for roles.', '', '0', 'modules/user/user.admin.inc'),
('admin/people/permissions/list', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'drupal_get_form', 'a:1:{i:0;s:22:"user_admin_permissions";}', '', '15', 4, '1', 'admin/people/permissions', 'admin/people', 'Permissions', 't', '', '', 'a:0:{}', '140', 'Determine access to features by selecting permissions for roles.', '', '-8', 'modules/user/user.admin.inc'),
('admin/people/permissions/roles', '', '', 'user_access', 'a:1:{i:0;s:22:"administer permissions";}', 'drupal_get_form', 'a:1:{i:0;s:16:"user_admin_roles";}', '', '15', 4, '1', 'admin/people/permissions', 'admin/people', 'Roles', 't', '', '', 'a:0:{}', '132', 'List, edit, or add user roles.', '', '-5', 'modules/user/user.admin.inc'),
('admin/people/permissions/roles/delete/%', 'a:1:{i:5;s:14:"user_role_load";}', '', 'user_role_edit_access', 'a:1:{i:0;i:5;}', 'drupal_get_form', 'a:2:{i:0;s:30:"user_admin_role_delete_confirm";i:1;i:5;}', '', '62', 6, '0', '', 'admin/people/permissions/roles/delete/%', 'Delete role', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/user/user.admin.inc'),
('admin/people/permissions/roles/edit/%', 'a:1:{i:5;s:14:"user_role_load";}', '', 'user_role_edit_access', 'a:1:{i:0;i:5;}', 'drupal_get_form', 'a:2:{i:0;s:15:"user_admin_role";i:1;i:5;}', '', '62', 6, '0', '', 'admin/people/permissions/roles/edit/%', 'Edit role', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/user/user.admin.inc'),
('admin/reports', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'system_admin_menu_block_page', 'a:0:{}', '', '3', 2, '0', '', 'admin/reports', 'Reports', 't', '', '', 'a:0:{}', '6', 'View reports, updates, and errors.', 'left', '5', 'modules/system/system.admin.inc'),
('admin/reports/access-denied', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_top', 'a:1:{i:0;s:13:"access denied";}', '', '7', 3, '0', '', 'admin/reports/access-denied', 'Top ''access denied'' errors', 't', '', '', 'a:0:{}', '6', 'View ''access denied'' errors (403s).', '', '0', 'modules/dblog/dblog.admin.inc'),
('admin/reports/dblog', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_overview', 'a:0:{}', '', '7', 3, '0', '', 'admin/reports/dblog', 'Recent log messages', 't', '', '', 'a:0:{}', '6', 'View events that have recently been logged.', '', '-1', 'modules/dblog/dblog.admin.inc'),
('admin/reports/event/%', 'a:1:{i:3;N;}', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_event', 'a:1:{i:0;i:3;}', '', '14', 4, '0', '', 'admin/reports/event/%', 'Details', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/dblog/dblog.admin.inc'),
('admin/reports/fields', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'field_ui_fields_list', 'a:0:{}', '', '7', 3, '0', '', 'admin/reports/fields', 'Field list', 't', '', '', 'a:0:{}', '6', 'Overview of fields on all entity types.', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/reports/fields/list', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'field_ui_fields_list', 'a:0:{}', '', '15', 4, '1', 'admin/reports/fields', 'admin/reports/fields', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/field_ui/field_ui.admin.inc'),
('admin/reports/fields/views-fields', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_field_list', 'a:0:{}', '', '15', 4, '1', 'admin/reports/fields', 'admin/reports/fields', 'Used in views', 't', '', '', 'a:0:{}', '132', 'Overview of fields used in all views.', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/reports/page-not-found', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_top', 'a:1:{i:0;s:14:"page not found";}', '', '7', 3, '0', '', 'admin/reports/page-not-found', 'Top ''page not found'' errors', 't', '', '', 'a:0:{}', '6', 'View ''page not found'' errors (404s).', '', '0', 'modules/dblog/dblog.admin.inc'),
('admin/reports/search', '', '', 'user_access', 'a:1:{i:0;s:19:"access site reports";}', 'dblog_top', 'a:1:{i:0;s:6:"search";}', '', '7', 3, '0', '', 'admin/reports/search', 'Top search phrases', 't', '', '', 'a:0:{}', '6', 'View most popular search phrases.', '', '0', 'modules/dblog/dblog.admin.inc'),
('admin/reports/status', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_status', 'a:0:{}', '', '7', 3, '0', '', 'admin/reports/status', 'Status report', 't', '', '', 'a:0:{}', '6', 'Get a status report about your site''s operation and any detected problems.', '', '-60', 'modules/system/system.admin.inc'),
('admin/reports/status/php', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_php', 'a:0:{}', '', '15', 4, '0', '', 'admin/reports/status/php', 'PHP', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/reports/status/rebuild', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'drupal_get_form', 'a:1:{i:0;s:30:"node_configure_rebuild_confirm";}', '', '15', 4, '0', '', 'admin/reports/status/rebuild', 'Rebuild permissions', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/node/node.admin.inc'),
('admin/reports/status/run-cron', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'system_run_cron', 'a:0:{}', '', '15', 4, '0', '', 'admin/reports/status/run-cron', 'Run cron', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('admin/reports/updates', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'update_status', 'a:0:{}', '', '7', 3, '0', '', 'admin/reports/updates', 'Available updates', 't', '', '', 'a:0:{}', '6', 'Get a status report about available updates for your installed modules and themes.', '', '-50', 'modules/update/update.report.inc'),
('admin/reports/updates/check', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'update_manual_status', 'a:0:{}', '', '15', 4, '0', '', 'admin/reports/updates/check', 'Manual update check', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/update/update.fetch.inc'),
('admin/reports/updates/install', '', '', 'update_manager_access', 'a:0:{}', 'drupal_get_form', 'a:2:{i:0;s:27:"update_manager_install_form";i:1;s:6:"report";}', '', '15', 4, '1', 'admin/reports/updates', 'admin/reports/updates', 'Install new module or theme', 't', '', '', 'a:0:{}', '388', '', '', '25', 'modules/update/update.manager.inc'),
('admin/reports/updates/list', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'update_status', 'a:0:{}', '', '15', 4, '1', 'admin/reports/updates', 'admin/reports/updates', 'List', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/update/update.report.inc'),
('admin/reports/updates/settings', '', '', 'user_access', 'a:1:{i:0;s:29:"administer site configuration";}', 'drupal_get_form', 'a:1:{i:0;s:15:"update_settings";}', '', '15', 4, '1', 'admin/reports/updates', 'admin/reports/updates', 'Settings', 't', '', '', 'a:0:{}', '132', '', '', '50', 'modules/update/update.settings.inc'),
('admin/reports/updates/update', '', '', 'update_manager_access', 'a:0:{}', 'drupal_get_form', 'a:2:{i:0;s:26:"update_manager_update_form";i:1;s:6:"report";}', '', '15', 4, '1', 'admin/reports/updates', 'admin/reports/updates', 'Update', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/update/update.manager.inc'),
('admin/reports/views-plugins', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_plugin_list', 'a:0:{}', '', '7', 3, '0', '', 'admin/reports/views-plugins', 'Views plugins', 't', '', '', 'a:0:{}', '6', 'Overview of plugins used in all views.', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '3', 2, '0', '', 'admin/structure', 'Structure', 't', '', '', 'a:0:{}', '6', 'Administer blocks, content types, menus, etc.', 'right', '-8', 'modules/system/system.admin.inc'),
('admin/structure/block', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'block_admin_display', 'a:1:{i:0;s:17:"responsive_bartik";}', '', '7', 3, '0', '', 'admin/structure/block', 'Blocks', 't', '', '', 'a:0:{}', '6', 'Configure what block content appears in your site''s sidebars and other regions.', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/add', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:20:"block_add_block_form";}', '', '15', 4, '1', 'admin/structure/block', 'admin/structure/block', 'Add block', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/demo/bartik', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_demo', 'a:1:{i:0;s:6:"bartik";}', '', '31', 5, '0', '', 'admin/structure/block/demo/bartik', 'Bartik', 't', '', '_block_custom_theme', 'a:1:{i:0;s:6:"bartik";}', '0', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/demo/ember', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:46:"profiles/spark/themes/contrib/ember/ember.info";s:4:"name";s:5:"ember";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Ember";s:11:"description";s:34:"A responsive administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:14:"7.x-1.0-alpha5";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:17:"css/normalize.css";s:53:"profiles/spark/themes/contrib/ember/css/normalize.css";s:13:"css/style.css";s:49:"profiles/spark/themes/contrib/ember/css/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:6:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"messages";s:8:"Messages";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:5:"ember";s:9:"datestamp";s:10:"1359095802";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:50:"profiles/spark/themes/contrib/ember/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:17:"css/normalize.css";s:53:"profiles/spark/themes/contrib/ember/css/normalize.css";s:13:"css/style.css";s:49:"profiles/spark/themes/contrib/ember/css/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_demo', 'a:1:{i:0;s:5:"ember";}', '', '31', 5, '0', '', 'admin/structure/block/demo/ember', 'Ember', 't', '', '_block_custom_theme', 'a:1:{i:0;s:5:"ember";}', '0', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/demo/garland', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_demo', 'a:1:{i:0;s:7:"garland";}', '', '31', 5, '0', '', 'admin/structure/block/demo/garland', 'Garland', 't', '', '_block_custom_theme', 'a:1:{i:0;s:7:"garland";}', '0', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/demo/responsive_bartik', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":13:{s:8:"filename";s:70:"profiles/spark/themes/contrib/responsive_bartik/responsive_bartik.info";s:4:"name";s:17:"responsive_bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:16:{s:4:"name";s:17:"Responsive Bartik";s:11:"description";s:86:"A flexible, recolorable theme with many regions and a responsive, mobile-first layout.";s:7:"version";s:19:"7.x-1.0-beta1+2-dev";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/layout.css";s:13:"css/style.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/style.css";s:14:"css/colors.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/print.css";}}s:7:"scripts";a:1:{s:22:"js/collapsible-menu.js";s:70:"profiles/spark/themes/contrib/responsive_bartik/js/collapsible-menu.js";}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:17:"responsive_bartik";s:9:"datestamp";s:10:"1365080424";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:62:"profiles/spark/themes/contrib/responsive_bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/layout.css";s:13:"css/style.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/style.css";s:14:"css/colors.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/print.css";}}s:7:"scripts";a:1:{s:22:"js/collapsible-menu.js";s:70:"profiles/spark/themes/contrib/responsive_bartik/js/collapsible-menu.js";}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_demo', 'a:1:{i:0;s:17:"responsive_bartik";}', '', '31', 5, '0', '', 'admin/structure/block/demo/responsive_bartik', 'Responsive Bartik', 't', '', '_block_custom_theme', 'a:1:{i:0;s:17:"responsive_bartik";}', '0', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/demo/seven', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_demo', 'a:1:{i:0;s:5:"seven";}', '', '31', 5, '0', '', 'admin/structure/block/demo/seven', 'Seven', 't', '', '_block_custom_theme', 'a:1:{i:0;s:5:"seven";}', '0', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/demo/stark', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:16:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal''s default HTML markup and CSS styles. To learn how to build your own theme and override Drupal''s default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_demo', 'a:1:{i:0;s:5:"stark";}', '', '31', 5, '0', '', 'admin/structure/block/demo/stark', 'Stark', 't', '', '_block_custom_theme', 'a:1:{i:0;s:5:"stark";}', '0', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/bartik', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:25:"themes/bartik/bartik.info";s:4:"name";s:6:"bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:6:"bartik";}', '', '31', 5, '1', 'admin/structure/block', 'admin/structure/block', 'Bartik', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/bartik/add', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:20:"block_add_block_form";}', '', '63', 6, '1', 'admin/structure/block/list/bartik', 'admin/structure/block', 'Add block', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/ember', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:46:"profiles/spark/themes/contrib/ember/ember.info";s:4:"name";s:5:"ember";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Ember";s:11:"description";s:34:"A responsive administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:14:"7.x-1.0-alpha5";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:17:"css/normalize.css";s:53:"profiles/spark/themes/contrib/ember/css/normalize.css";s:13:"css/style.css";s:49:"profiles/spark/themes/contrib/ember/css/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:6:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"messages";s:8:"Messages";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:5:"ember";s:9:"datestamp";s:10:"1359095802";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:50:"profiles/spark/themes/contrib/ember/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:17:"css/normalize.css";s:53:"profiles/spark/themes/contrib/ember/css/normalize.css";s:13:"css/style.css";s:49:"profiles/spark/themes/contrib/ember/css/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:5:"ember";}', '', '31', 5, '1', 'admin/structure/block', 'admin/structure/block', 'Ember', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/ember/add', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:20:"block_add_block_form";}', '', '63', 6, '1', 'admin/structure/block/list/ember', 'admin/structure/block', 'Add block', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/block/block.admin.inc');
INSERT INTO `menu_router` VALUES
('admin/structure/block/list/garland', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:27:"themes/garland/garland.info";s:4:"name";s:7:"garland";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:7:"garland";}', '', '31', 5, '1', 'admin/structure/block', 'admin/structure/block', 'Garland', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/garland/add', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:20:"block_add_block_form";}', '', '63', 6, '1', 'admin/structure/block/list/garland', 'admin/structure/block', 'Add block', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/responsive_bartik', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":13:{s:8:"filename";s:70:"profiles/spark/themes/contrib/responsive_bartik/responsive_bartik.info";s:4:"name";s:17:"responsive_bartik";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"1";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:16:{s:4:"name";s:17:"Responsive Bartik";s:11:"description";s:86:"A flexible, recolorable theme with many regions and a responsive, mobile-first layout.";s:7:"version";s:19:"7.x-1.0-beta1+2-dev";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/layout.css";s:13:"css/style.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/style.css";s:14:"css/colors.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/print.css";}}s:7:"scripts";a:1:{s:22:"js/collapsible-menu.js";s:70:"profiles/spark/themes/contrib/responsive_bartik/js/collapsible-menu.js";}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:17:"responsive_bartik";s:9:"datestamp";s:10:"1365080424";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:62:"profiles/spark/themes/contrib/responsive_bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/layout.css";s:13:"css/style.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/style.css";s:14:"css/colors.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/print.css";}}s:7:"scripts";a:1:{s:22:"js/collapsible-menu.js";s:70:"profiles/spark/themes/contrib/responsive_bartik/js/collapsible-menu.js";}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:17:"responsive_bartik";}', '', '31', 5, '1', 'admin/structure/block', 'admin/structure/block', 'Responsive Bartik', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/block/block.admin.inc'),
('admin/structure/block/list/seven', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/seven/seven.info";s:4:"name";s:5:"seven";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:17:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:5:"seven";}', '', '31', 5, '1', 'admin/structure/block', 'admin/structure/block', 'Seven', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/seven/add', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:20:"block_add_block_form";}', '', '63', 6, '1', 'admin/structure/block/list/seven', 'admin/structure/block', 'Add block', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/stark', '', '', '_block_themes_access', 'a:1:{i:0;O:8:"stdClass":12:{s:8:"filename";s:23:"themes/stark/stark.info";s:4:"name";s:5:"stark";s:4:"type";s:5:"theme";s:5:"owner";s:45:"themes/engines/phptemplate/phptemplate.engine";s:6:"status";s:1:"0";s:9:"bootstrap";s:1:"0";s:14:"schema_version";s:2:"-1";s:6:"weight";s:1:"0";s:4:"info";a:16:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal''s default HTML markup and CSS styles. To learn how to build your own theme and override Drupal''s default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}s:6:"prefix";s:11:"phptemplate";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:6:"engine";s:11:"phptemplate";}}', 'block_admin_display', 'a:1:{i:0;s:5:"stark";}', '', '31', 5, '1', 'admin/structure/block', 'admin/structure/block', 'Stark', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/list/stark/add', '', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:1:{i:0;s:20:"block_add_block_form";}', '', '63', 6, '1', 'admin/structure/block/list/stark', 'admin/structure/block', 'Add block', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/manage/%/%', 'a:2:{i:4;N;i:5;N;}', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}', '', '60', 6, '0', '', 'admin/structure/block/manage/%/%', 'Configure block', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/manage/%/%/configure', 'a:2:{i:4;N;i:5;N;}', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:3:{i:0;s:21:"block_admin_configure";i:1;i:4;i:2;i:5;}', '', '121', 7, '2', 'admin/structure/block/manage/%/%', 'admin/structure/block/manage/%/%', 'Configure block', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/block/manage/%/%/delete', 'a:2:{i:4;N;i:5;N;}', '', 'user_access', 'a:1:{i:0;s:17:"administer blocks";}', 'drupal_get_form', 'a:3:{i:0;s:25:"block_custom_block_delete";i:1;i:4;i:2;i:5;}', '', '121', 7, '0', 'admin/structure/block/manage/%/%', 'admin/structure/block/manage/%/%', 'Delete block', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/block/block.admin.inc'),
('admin/structure/demo', '', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'drupal_get_form', 'a:1:{i:0;s:16:"demo_manage_form";}', '', '7', 3, '0', '', 'admin/structure/demo', 'Snapshots', 't', '', '', 'a:0:{}', '6', 'Create snapshots and reset the site.', '', '0', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('admin/structure/demo/delete/%', 'a:1:{i:4;N;}', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'drupal_get_form', 'a:2:{i:0;s:19:"demo_delete_confirm";i:1;i:4;}', '', '30', 5, '0', '', 'admin/structure/demo/delete/%', 'Delete snapshot', 't', '', '', 'a:0:{}', '4', '', '', '0', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('admin/structure/demo/dump', '', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'drupal_get_form', 'a:1:{i:0;s:14:"demo_dump_form";}', '', '15', 4, '1', 'admin/structure/demo', 'admin/structure/demo', 'Create snapshot', 't', '', '', 'a:0:{}', '388', '', '', '0', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('admin/structure/demo/list', '', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'drupal_get_form', 'a:1:{i:0;s:16:"demo_manage_form";}', '', '15', 4, '1', 'admin/structure/demo', 'admin/structure/demo', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('admin/structure/demo/reset', '', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'drupal_get_form', 'a:1:{i:0;s:18:"demo_reset_confirm";}', '', '15', 4, '1', 'admin/structure/demo', 'admin/structure/demo', 'Reset', 't', '', '', 'a:0:{}', '132', '', '', '3', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('admin/structure/demo/settings', '', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'drupal_get_form', 'a:1:{i:0;s:19:"demo_admin_settings";}', '', '15', 4, '1', 'admin/structure/demo', 'admin/structure/demo', 'Settings', 't', '', '', 'a:0:{}', '132', '', '', '10', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('admin/structure/menu', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_overview_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/structure/menu', 'Menus', 't', '', '', 'a:0:{}', '6', 'Add new menus to your site, edit existing menus, and rename and reorganize menu links.', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/add', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:14:"menu_edit_menu";i:1;s:3:"add";}', '', '15', 4, '1', 'admin/structure/menu', 'admin/structure/menu', 'Add menu', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/item/%/delete', 'a:1:{i:4;s:14:"menu_link_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_item_delete_page', 'a:1:{i:0;i:4;}', '', '61', 6, '0', '', 'admin/structure/menu/item/%/delete', 'Delete menu link', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/item/%/edit', 'a:1:{i:4;s:14:"menu_link_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:4:{i:0;s:14:"menu_edit_item";i:1;s:4:"edit";i:2;i:4;i:3;N;}', '', '61', 6, '0', '', 'admin/structure/menu/item/%/edit', 'Edit menu link', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/item/%/reset', 'a:1:{i:4;s:14:"menu_link_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:23:"menu_reset_item_confirm";i:1;i:4;}', '', '61', 6, '0', '', 'admin/structure/menu/item/%/reset', 'Reset menu link', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/list', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_overview_page', 'a:0:{}', '', '15', 4, '1', 'admin/structure/menu', 'admin/structure/menu', 'List menus', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/manage/%', 'a:1:{i:4;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:18:"menu_overview_form";i:1;i:4;}', '', '30', 5, '0', '', 'admin/structure/menu/manage/%', 'Customize menu', 'menu_overview_title', 'a:1:{i:0;i:4;}', '', 'a:0:{}', '6', '', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/manage/%/add', 'a:1:{i:4;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:4:{i:0;s:14:"menu_edit_item";i:1;s:3:"add";i:2;N;i:3;i:4;}', '', '61', 6, '1', 'admin/structure/menu/manage/%', 'admin/structure/menu/manage/%', 'Add link', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/manage/%/delete', 'a:1:{i:4;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'menu_delete_menu_page', 'a:1:{i:0;i:4;}', '', '61', 6, '0', '', 'admin/structure/menu/manage/%/delete', 'Delete menu', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/manage/%/edit', 'a:1:{i:4;s:9:"menu_load";}', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:2:{i:0;s:18:"menu_overview_form";i:1;i:4;}', '', '61', 6, '3', 'admin/structure/menu/manage/%', 'admin/structure/menu/manage/%', 'Edit menu', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/menu/menu.admin.inc'),
('admin/structure/menu/parents', '', '', 'user_access', 'a:1:{i:0;b:1;}', 'menu_parent_options_js', 'a:0:{}', '', '15', 4, '0', '', 'admin/structure/menu/parents', 'Parent menu items', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('admin/structure/menu/settings', '', '', 'user_access', 'a:1:{i:0;s:15:"administer menu";}', 'drupal_get_form', 'a:1:{i:0;s:14:"menu_configure";}', '', '15', 4, '1', 'admin/structure/menu', 'admin/structure/menu', 'Settings', 't', '', '', 'a:0:{}', '132', '', '', '5', 'modules/menu/menu.admin.inc'),
('admin/structure/pages', '', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_list_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/structure/pages', 'Pages', 't', '', 'ajax_base_page_theme', 'a:0:{}', '6', 'Add, edit and remove overridden system pages and user defined pages from the system.', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/page_manager.admin.inc'),
('admin/structure/pages/%/disable/%', 'a:2:{i:3;s:14:"ctools_js_load";i:5;s:23:"page_manager_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_enable_page', 'a:3:{i:0;b:1;i:1;i:3;i:2;i:5;}', '', '58', 6, '0', '', 'admin/structure/pages/%/disable/%', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/page_manager.admin.inc'),
('admin/structure/pages/%/enable/%', 'a:2:{i:3;s:14:"ctools_js_load";i:5;s:23:"page_manager_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_enable_page', 'a:3:{i:0;b:0;i:1;i:3;i:2;i:5;}', '', '58', 6, '0', '', 'admin/structure/pages/%/enable/%', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/page_manager.admin.inc'),
('admin/structure/pages/%/operation/%', 'a:2:{i:3;s:14:"ctools_js_load";i:5;s:23:"page_manager_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_edit_page_operation', 'a:2:{i:0;i:3;i:1;i:5;}', '', '58', 6, '0', '', 'admin/structure/pages/%/operation/%', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '6', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/page_manager.admin.inc'),
('admin/structure/pages/add', '', '', 'user_access', 'a:1:{i:0;s:23:"administer page manager";}', 'page_manager_page_add_subtask', 'a:0:{}', '', '15', 4, '1', 'admin/structure/pages', 'admin/structure/pages', 'Add custom page', 't', '', 'ajax_base_page_theme', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/plugins/tasks/page.admin.inc'),
('admin/structure/pages/argument', '', '', 'user_access', 'a:1:{i:0;s:23:"administer page manager";}', 'page_manager_page_subtask_argument_ajax', 'a:0:{}', '', '15', 4, '0', '', 'admin/structure/pages/argument', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/plugins/tasks/page.admin.inc'),
('admin/structure/pages/edit/%', 'a:1:{i:4;s:23:"page_manager_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_edit_page', 'a:1:{i:0;i:4;}', '', '30', 5, '0', '', 'admin/structure/pages/edit/%', 'Edit', 't', '', 'ajax_base_page_theme', 'a:0:{}', '6', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/page_manager.admin.inc'),
('admin/structure/pages/import', '', '', 'ctools_access_multiperm', 'a:2:{i:0;s:23:"administer page manager";i:1;s:20:"use PHP for settings";}', 'drupal_get_form', 'a:2:{i:0;s:32:"page_manager_page_import_subtask";i:1;s:4:"page";}', '', '15', 4, '1', 'admin/structure/pages', 'admin/structure/pages', 'Import page', 't', '', 'ajax_base_page_theme', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/plugins/tasks/page.admin.inc'),
('admin/structure/pages/list', '', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_list_page', 'a:0:{}', '', '15', 4, '1', 'admin/structure/pages', 'admin/structure/pages', 'List', 't', '', 'ajax_base_page_theme', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/page_manager/page_manager.admin.inc'),
('admin/structure/pages/wizard', '', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_page_wizard_list', 'a:1:{i:0;i:4;}', '', '15', 4, '1', 'admin/structure/pages', 'admin/structure/pages', 'Wizards', 't', '', 'ajax_base_page_theme', 'a:0:{}', '132', '', '', '-5', 'profiles/spark/modules/contrib/ctools/includes/page-wizard.inc'),
('admin/structure/pages/wizard/%', 'a:1:{i:4;N;}', '', 'user_access', 'a:1:{i:0;s:16:"use page manager";}', 'page_manager_page_wizard', 'a:1:{i:0;i:4;}', '', '30', 5, '0', '', 'admin/structure/pages/wizard/%', 'Wizard', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/page-wizard.inc'),
('admin/structure/panels', '', '', 'user_access', 'a:1:{i:0;s:20:"use panels dashboard";}', 'panels_admin_page', 'a:0:{}', '', '7', 3, '0', '', 'admin/structure/panels', 'Panels', 't', '', '', 'a:0:{}', '6', 'Get a bird''s eye view of items related to Panels.', '', '0', 'profiles/spark/modules/contrib/panels/includes/callbacks.inc'),
('admin/structure/panels/dashboard', '', '', 'user_access', 'a:1:{i:0;s:20:"use panels dashboard";}', 'panels_admin_page', 'a:0:{}', '', '15', 4, '1', 'admin/structure/panels', 'admin/structure/panels', 'Dashboard', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/panels/includes/callbacks.inc'),
('admin/structure/panels/layouts', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:4:"list";}', '', '15', 4, '1', 'admin/structure/panels', 'admin/structure/panels', 'Layouts', 't', '', '', 'a:0:{}', '132', 'Add, edit or delete custom content layouts.', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/add-flexible', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:3:"add";}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:3:"add";i:2;s:8:"flexible";}', '', '31', 5, '0', '', 'admin/structure/panels/layouts/add-flexible', 'Add flexible layout', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/add-responsive', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:3:"add";}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:3:"add";i:2;s:10:"responsive";}', '', '31', 5, '1', 'admin/structure/panels/layouts', 'admin/structure/panels', 'Add layout', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:4:"list";}', '', '31', 5, '1', 'admin/structure/panels/layouts', 'admin/structure/panels', 'Breakpoints', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/add', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:3:"add";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:3:"add";}', '', '63', 6, '1', 'admin/structure/panels/layouts/breakpoints', 'admin/structure/panels', 'Add', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/import', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:6:"import";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:6:"import";}', '', '63', 6, '1', 'admin/structure/panels/layouts/breakpoints', 'admin/structure/panels', 'Import', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:17:"layout_breakpoint";i:1;s:4:"list";}', '', '63', 6, '1', 'admin/structure/panels/layouts/breakpoints', 'admin/structure/panels', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:4:"edit";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:4:"edit";i:2;i:6;}', '', '126', 7, '0', '', 'admin/structure/panels/layouts/breakpoints/list/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%/clone', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:5:"clone";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:5:"clone";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/breakpoints/list/%/clone', 'Clone', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%/delete', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"delete";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"delete";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/breakpoints/list/%/delete', 'Delete', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%/disable', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:7:"disable";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:7:"disable";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/breakpoints/list/%/disable', 'Disable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%/edit', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:4:"edit";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:4:"edit";i:2;i:6;}', '', '253', 8, '1', 'admin/structure/panels/layouts/breakpoints/list/%', 'admin/structure/panels/layouts/breakpoints/list/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%/enable', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"enable";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"enable";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/breakpoints/list/%/enable', 'Enable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%/export', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"export";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"export";i:2;i:6;}', '', '253', 8, '1', 'admin/structure/panels/layouts/breakpoints/list/%', 'admin/structure/panels/layouts/breakpoints/list/%', 'Export', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/breakpoints/list/%/revert', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:17:"layout_breakpoint";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"revert";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:17:"layout_breakpoint";i:1;s:6:"delete";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/breakpoints/list/%/revert', 'Revert', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:4:"list";}', '', '31', 5, '1', 'admin/structure/panels/layouts', 'admin/structure/panels', 'Grids', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/add', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:3:"add";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:3:"add";}', '', '63', 6, '1', 'admin/structure/panels/layouts/grids', 'admin/structure/panels', 'Add', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/import', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:6:"import";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:6:"import";}', '', '63', 6, '1', 'admin/structure/panels/layouts/grids', 'admin/structure/panels', 'Import', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:11:"gridbuilder";i:1;s:4:"list";}', '', '63', 6, '1', 'admin/structure/panels/layouts/grids', 'admin/structure/panels', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:4:"edit";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:4:"edit";i:2;i:6;}', '', '126', 7, '0', '', 'admin/structure/panels/layouts/grids/list/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%/clone', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:5:"clone";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:5:"clone";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/grids/list/%/clone', 'Clone', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%/delete', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"delete";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"delete";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/grids/list/%/delete', 'Delete', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%/disable', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:7:"disable";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:7:"disable";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/grids/list/%/disable', 'Disable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%/edit', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:4:"edit";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:4:"edit";i:2;i:6;}', '', '253', 8, '1', 'admin/structure/panels/layouts/grids/list/%', 'admin/structure/panels/layouts/grids/list/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%/enable', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"enable";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"enable";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/grids/list/%/enable', 'Enable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%/export', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"export";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"export";i:2;i:6;}', '', '253', 8, '1', 'admin/structure/panels/layouts/grids/list/%', 'admin/structure/panels/layouts/grids/list/%', 'Export', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/grids/list/%/revert', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:11:"gridbuilder";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"revert";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:11:"gridbuilder";i:1;s:6:"delete";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/grids/list/%/revert', 'Revert', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/import', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:6:"import";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:6:"import";}', '', '31', 5, '1', 'admin/structure/panels/layouts', 'admin/structure/panels', 'Import', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:14:"panels_layouts";i:1;s:4:"list";}', '', '31', 5, '1', 'admin/structure/panels/layouts', 'admin/structure/panels', 'Layouts', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:4:"edit";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:4:"edit";i:2;i:5;}', '', '62', 6, '0', '', 'admin/structure/panels/layouts/list/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%/clone', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:5:"clone";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:5:"clone";i:2;i:5;}', '', '125', 7, '0', '', 'admin/structure/panels/layouts/list/%/clone', 'Clone', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%/delete', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"delete";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"delete";i:2;i:5;}', '', '125', 7, '0', '', 'admin/structure/panels/layouts/list/%/delete', 'Delete', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%/disable', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:7:"disable";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:7:"disable";i:2;i:5;}', '', '125', 7, '0', '', 'admin/structure/panels/layouts/list/%/disable', 'Disable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%/edit', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:4:"edit";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:4:"edit";i:2;i:5;}', '', '125', 7, '1', 'admin/structure/panels/layouts/list/%', 'admin/structure/panels/layouts/list/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%/enable', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"enable";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"enable";i:2;i:5;}', '', '125', 7, '0', '', 'admin/structure/panels/layouts/list/%/enable', 'Enable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%/export', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"export";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"export";i:2;i:5;}', '', '125', 7, '1', 'admin/structure/panels/layouts/list/%', 'admin/structure/panels/layouts/list/%', 'Export', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/list/%/revert', 'a:1:{i:5;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:14:"panels_layouts";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"revert";i:2;i:5;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:14:"panels_layouts";i:1;s:6:"delete";i:2;i:5;}', '', '125', 7, '0', '', 'admin/structure/panels/layouts/list/%/revert', 'Revert', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:13:"layout_region";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:13:"layout_region";i:1;s:4:"list";}', '', '31', 5, '1', 'admin/structure/panels/layouts', 'admin/structure/panels', 'Regions', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/add', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:13:"layout_region";i:1;s:3:"add";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:13:"layout_region";i:1;s:3:"add";}', '', '63', 6, '1', 'admin/structure/panels/layouts/regions', 'admin/structure/panels', 'Add', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/import', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:13:"layout_region";i:1;s:6:"import";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:13:"layout_region";i:1;s:6:"import";}', '', '63', 6, '1', 'admin/structure/panels/layouts/regions', 'admin/structure/panels', 'Import', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:13:"layout_region";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:13:"layout_region";i:1;s:4:"list";}', '', '63', 6, '1', 'admin/structure/panels/layouts/regions', 'admin/structure/panels', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:4:"edit";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:4:"edit";i:2;i:6;}', '', '126', 7, '0', '', 'admin/structure/panels/layouts/regions/list/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%/clone', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:5:"clone";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:5:"clone";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/regions/list/%/clone', 'Clone', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%/delete', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"delete";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"delete";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/regions/list/%/delete', 'Delete', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%/disable', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:7:"disable";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:7:"disable";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/regions/list/%/disable', 'Disable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%/edit', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:4:"edit";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:4:"edit";i:2;i:6;}', '', '253', 8, '1', 'admin/structure/panels/layouts/regions/list/%', 'admin/structure/panels/layouts/regions/list/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%/enable', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"enable";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"enable";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/regions/list/%/enable', 'Enable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%/export', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"export";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"export";i:2;i:6;}', '', '253', 8, '1', 'admin/structure/panels/layouts/regions/list/%', 'admin/structure/panels/layouts/regions/list/%', 'Export', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/layouts/regions/list/%/revert', 'a:1:{i:6;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:13:"layout_region";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"revert";i:2;i:6;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:13:"layout_region";i:1;s:6:"delete";i:2;i:6;}', '', '253', 8, '0', '', 'admin/structure/panels/layouts/regions/list/%/revert', 'Revert', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/panels/settings', '', '', 'user_access', 'a:1:{i:0;s:20:"use panels dashboard";}', 'drupal_get_form', 'a:1:{i:0;s:26:"panels_admin_settings_page";}', '', '15', 4, '1', 'admin/structure/panels', 'admin/structure/panels', 'Settings', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/panels/includes/callbacks.inc'),
('admin/structure/panels/settings/general', '', '', 'user_access', 'a:1:{i:0;s:23:"administer page manager";}', 'drupal_get_form', 'a:1:{i:0;s:26:"panels_admin_settings_page";}', '', '31', 5, '1', 'admin/structure/panels/settings', 'admin/structure/panels', 'General', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/panels/includes/callbacks.inc'),
('admin/structure/panels/settings/panel-page', '', '', 'user_access', 'a:1:{i:0;s:20:"use panels dashboard";}', 'panels_admin_panel_context_page', 'a:0:{}', '', '31', 5, '1', 'admin/structure/panels/settings', 'admin/structure/panels', 'Panel pages', 't', '', '', 'a:0:{}', '132', '', '', '-10', 'profiles/spark/modules/contrib/panels/includes/callbacks.inc'),
('admin/structure/taxonomy', '', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:1:{i:0;s:30:"taxonomy_overview_vocabularies";}', '', '7', 3, '0', '', 'admin/structure/taxonomy', 'Taxonomy', 't', '', '', 'a:0:{}', '6', 'Manage tagging, categorization, and classification of your content.', '', '0', 'modules/taxonomy/taxonomy.admin.inc'),
('admin/structure/taxonomy/%', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:23:"taxonomy_overview_terms";i:1;i:3;}', '', '14', 4, '0', '', 'admin/structure/taxonomy/%', '', 'entity_label', 'a:2:{i:0;s:19:"taxonomy_vocabulary";i:1;i:3;}', '', 'a:0:{}', '6', '', '', '0', 'modules/taxonomy/taxonomy.admin.inc'),
('admin/structure/taxonomy/%/add', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:3:{i:0;s:18:"taxonomy_form_term";i:1;a:0:{}i:2;i:3;}', '', '29', 5, '1', 'admin/structure/taxonomy/%', 'admin/structure/taxonomy/%', 'Add term', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/taxonomy/taxonomy.admin.inc'),
('admin/structure/taxonomy/%/display', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:13:"taxonomy_term";i:2;i:3;i:3;s:7:"default";}', '', '29', 5, '1', 'admin/structure/taxonomy/%', 'admin/structure/taxonomy/%', 'Manage display', 't', '', '', 'a:0:{}', '132', '', '', '2', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/display/default', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:7:"default";i:3;s:11:"user_access";i:4;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:13:"taxonomy_term";i:2;i:3;i:3;s:7:"default";}', '', '59', 6, '1', 'admin/structure/taxonomy/%/display', 'admin/structure/taxonomy/%', 'Default', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/field_ui/field_ui.admin.inc');
INSERT INTO `menu_router` VALUES
('admin/structure/taxonomy/%/display/full', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:4:"full";i:3;s:11:"user_access";i:4;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:13:"taxonomy_term";i:2;i:3;i:3;s:4:"full";}', '', '59', 6, '1', 'admin/structure/taxonomy/%/display', 'admin/structure/taxonomy/%', 'Taxonomy term page', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/edit', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:24:"taxonomy_form_vocabulary";i:1;i:3;}', '', '29', 5, '1', 'admin/structure/taxonomy/%', 'admin/structure/taxonomy/%', 'Edit', 't', '', '', 'a:0:{}', '132', '', '', '-10', 'modules/taxonomy/taxonomy.admin.inc'),
('admin/structure/taxonomy/%/fields', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:3:{i:0;s:28:"field_ui_field_overview_form";i:1;s:13:"taxonomy_term";i:2;i:3;}', '', '29', 5, '1', 'admin/structure/taxonomy/%', 'admin/structure/taxonomy/%', 'Manage fields', 't', '', '', 'a:0:{}', '132', '', '', '1', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/fields/%', 'a:2:{i:3;a:1:{s:37:"taxonomy_vocabulary_machine_name_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:5;}', '', '58', 6, '0', '', 'admin/structure/taxonomy/%/fields/%', '', 'field_ui_menu_title', 'a:1:{i:0;i:5;}', '', 'a:0:{}', '6', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/fields/%/delete', 'a:2:{i:3;a:1:{s:37:"taxonomy_vocabulary_machine_name_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:26:"field_ui_field_delete_form";i:1;i:5;}', '', '117', 7, '1', 'admin/structure/taxonomy/%/fields/%', 'admin/structure/taxonomy/%/fields/%', 'Delete', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/fields/%/edit', 'a:2:{i:3;a:1:{s:37:"taxonomy_vocabulary_machine_name_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:5;}', '', '117', 7, '1', 'admin/structure/taxonomy/%/fields/%', 'admin/structure/taxonomy/%/fields/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/fields/%/field-settings', 'a:2:{i:3;a:1:{s:37:"taxonomy_vocabulary_machine_name_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:28:"field_ui_field_settings_form";i:1;i:5;}', '', '117', 7, '1', 'admin/structure/taxonomy/%/fields/%', 'admin/structure/taxonomy/%/fields/%', 'Field settings', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/fields/%/widget-type', 'a:2:{i:3;a:1:{s:37:"taxonomy_vocabulary_machine_name_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}i:5;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:13:"taxonomy_term";i:1;i:3;i:2;s:1:"3";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:25:"field_ui_widget_type_form";i:1;i:5;}', '', '117', 7, '1', 'admin/structure/taxonomy/%/fields/%', 'admin/structure/taxonomy/%/fields/%', 'Widget type', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/taxonomy/%/list', 'a:1:{i:3;s:37:"taxonomy_vocabulary_machine_name_load";}', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:2:{i:0;s:23:"taxonomy_overview_terms";i:1;i:3;}', '', '29', 5, '1', 'admin/structure/taxonomy/%', 'admin/structure/taxonomy/%', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-20', 'modules/taxonomy/taxonomy.admin.inc'),
('admin/structure/taxonomy/add', '', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:1:{i:0;s:24:"taxonomy_form_vocabulary";}', '', '15', 4, '1', 'admin/structure/taxonomy', 'admin/structure/taxonomy', 'Add vocabulary', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/taxonomy/taxonomy.admin.inc'),
('admin/structure/taxonomy/list', '', '', 'user_access', 'a:1:{i:0;s:19:"administer taxonomy";}', 'drupal_get_form', 'a:1:{i:0;s:30:"taxonomy_overview_vocabularies";}', '', '15', 4, '1', 'admin/structure/taxonomy', 'admin/structure/taxonomy', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/taxonomy/taxonomy.admin.inc'),
('admin/structure/types', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'node_overview_types', 'a:0:{}', '', '7', 3, '0', '', 'admin/structure/types', 'Content types', 't', '', '', 'a:0:{}', '6', 'Manage content types, including default status, front page promotion, comment settings, etc.', '', '0', 'modules/node/content_types.inc'),
('admin/structure/types/add', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:1:{i:0;s:14:"node_type_form";}', '', '15', 4, '1', 'admin/structure/types', 'admin/structure/types', 'Add content type', 't', '', '', 'a:0:{}', '388', '', '', '0', 'modules/node/content_types.inc'),
('admin/structure/types/list', '', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'node_overview_types', 'a:0:{}', '', '15', 4, '1', 'admin/structure/types', 'admin/structure/types', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/node/content_types.inc'),
('admin/structure/types/manage/%', 'a:1:{i:4;s:14:"node_type_load";}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;i:4;}', '', '30', 5, '0', '', 'admin/structure/types/manage/%', 'Edit content type', 'node_type_page_title', 'a:1:{i:0;i:4;}', '', 'a:0:{}', '6', '', '', '0', 'modules/node/content_types.inc'),
('admin/structure/types/manage/%/comment/display', 'a:1:{i:4;s:22:"comment_node_type_load";}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:7:"comment";i:2;i:4;i:3;s:7:"default";}', '', '123', 7, '1', 'admin/structure/types/manage/%', 'admin/structure/types/manage/%', 'Comment display', 't', '', '', 'a:0:{}', '132', '', '', '4', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/display/default', 'a:1:{i:4;s:22:"comment_node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:7:"comment";i:1;i:4;i:2;s:7:"default";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:7:"comment";i:2;i:4;i:3;s:7:"default";}', '', '247', 8, '1', 'admin/structure/types/manage/%/comment/display', 'admin/structure/types/manage/%', 'Default', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/display/full', 'a:1:{i:4;s:22:"comment_node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:7:"comment";i:1;i:4;i:2;s:4:"full";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:7:"comment";i:2;i:4;i:3;s:4:"full";}', '', '247', 8, '1', 'admin/structure/types/manage/%/comment/display', 'admin/structure/types/manage/%', 'Full comment', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/fields', 'a:1:{i:4;s:22:"comment_node_type_load";}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:28:"field_ui_field_overview_form";i:1;s:7:"comment";i:2;i:4;}', '', '123', 7, '1', 'admin/structure/types/manage/%', 'admin/structure/types/manage/%', 'Comment fields', 't', '', '', 'a:0:{}', '132', '', '', '3', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/fields/%', 'a:2:{i:4;a:1:{s:22:"comment_node_type_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:7;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:7;}', '', '246', 8, '0', '', 'admin/structure/types/manage/%/comment/fields/%', '', 'field_ui_menu_title', 'a:1:{i:0;i:7;}', '', 'a:0:{}', '6', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/fields/%/delete', 'a:2:{i:4;a:1:{s:22:"comment_node_type_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:7;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:26:"field_ui_field_delete_form";i:1;i:7;}', '', '493', 9, '1', 'admin/structure/types/manage/%/comment/fields/%', 'admin/structure/types/manage/%/comment/fields/%', 'Delete', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/fields/%/edit', 'a:2:{i:4;a:1:{s:22:"comment_node_type_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:7;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:7;}', '', '493', 9, '1', 'admin/structure/types/manage/%/comment/fields/%', 'admin/structure/types/manage/%/comment/fields/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/fields/%/field-settings', 'a:2:{i:4;a:1:{s:22:"comment_node_type_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:7;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:28:"field_ui_field_settings_form";i:1;i:7;}', '', '493', 9, '1', 'admin/structure/types/manage/%/comment/fields/%', 'admin/structure/types/manage/%/comment/fields/%', 'Field settings', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/comment/fields/%/widget-type', 'a:2:{i:4;a:1:{s:22:"comment_node_type_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:7;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:7:"comment";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:25:"field_ui_widget_type_form";i:1;i:7;}', '', '493', 9, '1', 'admin/structure/types/manage/%/comment/fields/%', 'admin/structure/types/manage/%/comment/fields/%', 'Widget type', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/delete', 'a:1:{i:4;s:14:"node_type_load";}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"node_type_delete_confirm";i:1;i:4;}', '', '61', 6, '0', '', 'admin/structure/types/manage/%/delete', 'Delete', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/node/content_types.inc'),
('admin/structure/types/manage/%/display', 'a:1:{i:4;s:14:"node_type_load";}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"node";i:2;i:4;i:3;s:7:"default";}', '', '61', 6, '1', 'admin/structure/types/manage/%', 'admin/structure/types/manage/%', 'Manage display', 't', '', '', 'a:0:{}', '132', '', '', '2', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/display/default', 'a:1:{i:4;s:14:"node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"node";i:1;i:4;i:2;s:7:"default";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"node";i:2;i:4;i:3;s:7:"default";}', '', '123', 7, '1', 'admin/structure/types/manage/%/display', 'admin/structure/types/manage/%', 'Default', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/display/full', 'a:1:{i:4;s:14:"node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"node";i:1;i:4;i:2;s:4:"full";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"node";i:2;i:4;i:3;s:4:"full";}', '', '123', 7, '1', 'admin/structure/types/manage/%/display', 'admin/structure/types/manage/%', 'Full content', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/display/rss', 'a:1:{i:4;s:14:"node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"node";i:1;i:4;i:2;s:3:"rss";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"node";i:2;i:4;i:3;s:3:"rss";}', '', '123', 7, '1', 'admin/structure/types/manage/%/display', 'admin/structure/types/manage/%', 'RSS', 't', '', '', 'a:0:{}', '132', '', '', '2', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/display/search_index', 'a:1:{i:4;s:14:"node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"node";i:1;i:4;i:2;s:12:"search_index";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"node";i:2;i:4;i:3;s:12:"search_index";}', '', '123', 7, '1', 'admin/structure/types/manage/%/display', 'admin/structure/types/manage/%', 'Search index', 't', '', '', 'a:0:{}', '132', '', '', '3', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/display/search_result', 'a:1:{i:4;s:14:"node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"node";i:1;i:4;i:2;s:13:"search_result";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"node";i:2;i:4;i:3;s:13:"search_result";}', '', '123', 7, '1', 'admin/structure/types/manage/%/display', 'admin/structure/types/manage/%', 'Search result', 't', '', '', 'a:0:{}', '132', '', '', '4', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/display/teaser', 'a:1:{i:4;s:14:"node_type_load";}', '', '_field_ui_view_mode_menu_access', 'a:5:{i:0;s:4:"node";i:1;i:4;i:2;s:6:"teaser";i:3;s:11:"user_access";i:4;s:24:"administer content types";}', 'drupal_get_form', 'a:4:{i:0;s:30:"field_ui_display_overview_form";i:1;s:4:"node";i:2;i:4;i:3;s:6:"teaser";}', '', '123', 7, '1', 'admin/structure/types/manage/%/display', 'admin/structure/types/manage/%', 'Teaser', 't', '', '', 'a:0:{}', '132', '', '', '1', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/edit', 'a:1:{i:4;s:14:"node_type_load";}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:14:"node_type_form";i:1;i:4;}', '', '61', 6, '1', 'admin/structure/types/manage/%', 'admin/structure/types/manage/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/node/content_types.inc'),
('admin/structure/types/manage/%/fields', 'a:1:{i:4;s:14:"node_type_load";}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:3:{i:0;s:28:"field_ui_field_overview_form";i:1;s:4:"node";i:2;i:4;}', '', '61', 6, '1', 'admin/structure/types/manage/%', 'admin/structure/types/manage/%', 'Manage fields', 't', '', '', 'a:0:{}', '132', '', '', '1', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/fields/%', 'a:2:{i:4;a:1:{s:14:"node_type_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:6;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:6;}', '', '122', 7, '0', '', 'admin/structure/types/manage/%/fields/%', '', 'field_ui_menu_title', 'a:1:{i:0;i:6;}', '', 'a:0:{}', '6', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/fields/%/delete', 'a:2:{i:4;a:1:{s:14:"node_type_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:6;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:26:"field_ui_field_delete_form";i:1;i:6;}', '', '245', 8, '1', 'admin/structure/types/manage/%/fields/%', 'admin/structure/types/manage/%/fields/%', 'Delete', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/fields/%/edit', 'a:2:{i:4;a:1:{s:14:"node_type_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:6;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:24:"field_ui_field_edit_form";i:1;i:6;}', '', '245', 8, '1', 'admin/structure/types/manage/%/fields/%', 'admin/structure/types/manage/%/fields/%', 'Edit', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/fields/%/field-settings', 'a:2:{i:4;a:1:{s:14:"node_type_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:6;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:28:"field_ui_field_settings_form";i:1;i:6;}', '', '245', 8, '1', 'admin/structure/types/manage/%/fields/%', 'admin/structure/types/manage/%/fields/%', 'Field settings', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/types/manage/%/fields/%/widget-type', 'a:2:{i:4;a:1:{s:14:"node_type_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}i:6;a:1:{s:18:"field_ui_menu_load";a:4:{i:0;s:4:"node";i:1;i:4;i:2;s:1:"4";i:3;s:4:"%map";}}}', '', 'user_access', 'a:1:{i:0;s:24:"administer content types";}', 'drupal_get_form', 'a:2:{i:0;s:25:"field_ui_widget_type_form";i:1;i:6;}', '', '245', 8, '1', 'admin/structure/types/manage/%/fields/%', 'admin/structure/types/manage/%/fields/%', 'Widget type', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/field_ui/field_ui.admin.inc'),
('admin/structure/views', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:8:"views_ui";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:8:"views_ui";i:1;s:4:"list";}', '', '7', 3, '0', '', 'admin/structure/views', 'Views', 't', '', '', 'a:0:{}', '6', 'Manage customized lists of content.', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/add', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_add_page', 'a:0:{}', '', '15', 4, '1', 'admin/structure/views', 'admin/structure/views', 'Add new view', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/add-template', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_add_template_page', 'a:0:{}', '', '15', 4, '0', '', 'admin/structure/views/add-template', 'Add view from template', 't', '', '', 'a:0:{}', '4', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/ajax/%/%', 'a:2:{i:4;N;i:5;s:19:"views_ui_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_ajax_form', 'a:3:{i:0;b:1;i:1;i:4;i:2;i:5;}', 'ajax_deliver', '60', 6, '0', '', 'admin/structure/views/ajax/%/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/ajax/preview/%/%', 'a:2:{i:5;s:19:"views_ui_cache_load";i:6;N;}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_preview', 'a:2:{i:0;i:5;i:1;i:6;}', 'ajax_deliver', '124', 7, '0', '', 'admin/structure/views/ajax/preview/%/%', '', 't', '', '', 'a:0:{}', '6', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/import', '', '', 'views_import_access', 'a:1:{i:0;s:16:"administer views";}', 'drupal_get_form', 'a:1:{i:0;s:20:"views_ui_import_page";}', '', '15', 4, '1', 'admin/structure/views', 'admin/structure/views', 'Import', 't', '', '', 'a:0:{}', '388', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/list', '', '', 'ctools_export_ui_task_access', 'a:2:{i:0;s:8:"views_ui";i:1;s:4:"list";}', 'ctools_export_ui_switcher_page', 'a:2:{i:0;s:8:"views_ui";i:1;s:4:"list";}', '', '15', 4, '1', 'admin/structure/views', 'admin/structure/views', 'List', 't', '', '', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/nojs/%/%', 'a:2:{i:4;N;i:5;s:19:"views_ui_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_ajax_form', 'a:3:{i:0;b:0;i:1;i:4;i:2;i:5;}', '', '60', 6, '0', '', 'admin/structure/views/nojs/%/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/nojs/preview/%/%', 'a:2:{i:5;s:19:"views_ui_cache_load";i:6;N;}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_preview', 'a:2:{i:0;i:5;i:1;i:6;}', '', '124', 7, '0', '', 'admin/structure/views/nojs/preview/%/%', '', 't', '', '', 'a:0:{}', '6', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/settings', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'drupal_get_form', 'a:1:{i:0;s:29:"views_ui_admin_settings_basic";}', '', '15', 4, '1', 'admin/structure/views', 'admin/structure/views', 'Settings', 't', '', '', 'a:0:{}', '132', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/settings/advanced', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'drupal_get_form', 'a:1:{i:0;s:32:"views_ui_admin_settings_advanced";}', '', '31', 5, '1', 'admin/structure/views/settings', 'admin/structure/views', 'Advanced', 't', '', '', 'a:0:{}', '132', '', '', '1', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/settings/basic', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'drupal_get_form', 'a:1:{i:0;s:29:"views_ui_admin_settings_basic";}', '', '31', 5, '1', 'admin/structure/views/settings', 'admin/structure/views', 'Basic', 't', '', '', 'a:0:{}', '140', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/template/%/add', 'a:1:{i:4;N;}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:8:"views_ui";i:1;s:12:"add_template";i:2;i:4;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:8:"views_ui";i:1;s:12:"add_template";i:2;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/template/%/add', 'Add from template', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/view/%', 'a:1:{i:4;s:19:"views_ui_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_edit_page', 'a:1:{i:0;i:4;}', '', '30', 5, '0', '', 'admin/structure/views/view/%', '', 'views_ui_edit_page_title', 'a:1:{i:0;i:4;}', '', 'a:0:{}', '6', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/view/%/break-lock', 'a:1:{i:4;s:19:"views_ui_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'drupal_get_form', 'a:2:{i:0;s:27:"views_ui_break_lock_confirm";i:1;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/view/%/break-lock', 'Break lock', 't', '', '', 'a:0:{}', '4', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/view/%/clone', 'a:1:{i:4;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:8:"views_ui";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:8:"views_ui";i:1;s:5:"clone";i:2;i:4;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:8:"views_ui";i:1;s:5:"clone";i:2;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/view/%/clone', 'Clone', 't', '', '', 'a:0:{}', '4', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/view/%/delete', 'a:1:{i:4;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:8:"views_ui";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"delete";i:2;i:4;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"delete";i:2;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/view/%/delete', 'Delete', 't', '', '', 'a:0:{}', '4', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/view/%/disable', 'a:1:{i:4;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:8:"views_ui";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:8:"views_ui";i:1;s:7:"disable";i:2;i:4;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:8:"views_ui";i:1;s:7:"disable";i:2;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/view/%/disable', 'Disable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/view/%/edit', 'a:1:{i:4;s:19:"views_ui_cache_load";}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_edit_page', 'a:1:{i:0;i:4;}', '', '61', 6, '3', 'admin/structure/views/view/%', 'admin/structure/views/view/%', 'Edit view', 't', '', 'ajax_base_page_theme', 'a:0:{}', '140', '', '', '-10', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/view/%/edit/%/ajax', 'a:2:{i:4;s:19:"views_ui_cache_load";i:6;N;}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_ajax_get_form', 'a:3:{i:0;s:18:"views_ui_edit_form";i:1;i:4;i:2;i:6;}', 'ajax_deliver', '245', 8, '0', '', 'admin/structure/views/view/%/edit/%/ajax', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/view/%/enable', 'a:1:{i:4;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:8:"views_ui";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"enable";i:2;i:4;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"enable";i:2;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/view/%/enable', 'Enable', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/view/%/export', 'a:1:{i:4;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:8:"views_ui";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"export";i:2;i:4;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"export";i:2;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/view/%/export', 'Export', 't', '', '', 'a:0:{}', '4', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/structure/views/view/%/preview/%', 'a:2:{i:4;s:19:"views_ui_cache_load";i:6;N;}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_build_preview', 'a:2:{i:0;i:4;i:1;i:6;}', '', '122', 7, '3', '', 'admin/structure/views/view/%/preview/%', '', 't', '', '', 'a:0:{}', '4', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/view/%/preview/%/ajax', 'a:2:{i:4;s:19:"views_ui_cache_load";i:6;N;}', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_build_preview', 'a:2:{i:0;i:4;i:1;i:6;}', 'ajax_deliver', '245', 8, '0', '', 'admin/structure/views/view/%/preview/%/ajax', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/structure/views/view/%/revert', 'a:1:{i:4;a:1:{s:21:"ctools_export_ui_load";a:1:{i:0;s:8:"views_ui";}}}', '', 'ctools_export_ui_task_access', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"revert";i:2;i:4;}', 'ctools_export_ui_switcher_page', 'a:3:{i:0;s:8:"views_ui";i:1;s:6:"delete";i:2;i:4;}', '', '61', 6, '0', '', 'admin/structure/views/view/%/revert', 'Revert', 't', '', '', 'a:0:{}', '4', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/export-ui.inc'),
('admin/tasks', '', '', 'user_access', 'a:1:{i:0;s:27:"access administration pages";}', 'system_admin_menu_block_page', 'a:0:{}', '', '3', 2, '1', 'admin', 'admin', 'Tasks', 't', '', '', 'a:0:{}', '140', '', '', '-20', 'modules/system/system.admin.inc'),
('admin/update/ready', '', '', 'update_manager_access', 'a:0:{}', 'drupal_get_form', 'a:1:{i:0;s:32:"update_manager_update_ready_form";}', '', '7', 3, '0', '', 'admin/update/ready', 'Ready to update', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/update/update.manager.inc'),
('admin/views/ajax/autocomplete/tag', '', '', 'user_access', 'a:1:{i:0;s:16:"administer views";}', 'views_ui_autocomplete_tag', 'a:0:{}', '', '31', 5, '0', '', 'admin/views/ajax/autocomplete/tag', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/views/includes/admin.inc'),
('admin/views/ajax/autocomplete/taxonomy', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'views_ajax_autocomplete_taxonomy', 'a:0:{}', '', '31', 5, '0', '', 'admin/views/ajax/autocomplete/taxonomy', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/views/includes/ajax.inc'),
('admin/views/ajax/autocomplete/user', '', '', 'user_access', 'a:1:{i:0;s:20:"access user profiles";}', 'views_ajax_autocomplete_user', 'a:0:{}', '', '31', 5, '0', '', 'admin/views/ajax/autocomplete/user', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/views/includes/ajax.inc'),
('batch', '', '', '1', 'a:0:{}', 'system_batch_page', 'a:0:{}', '', '1', 1, '0', '', 'batch', '', 't', '', '_system_batch_theme', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('ckeditor/disable/wysiwyg/%', 'a:1:{i:3;N;}', '', '1', 'a:1:{i:0;s:19:"administer ckeditor";}', 'ckeditor_disable_wysiwyg', 'a:1:{i:0;i:3;}', '', '14', 4, '0', '', 'ckeditor/disable/wysiwyg/%', 'Disable the WYSIWYG module', 't', '', '', 'a:0:{}', '0', 'Disable WYSIWYG module.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.admin.inc'),
('ckeditor/xss', '', '', '1', 'a:0:{}', 'ckeditor_filter_xss', 'a:0:{}', '', '3', 2, '0', '', 'ckeditor/xss', 'XSS Filter', 't', '', '', 'a:0:{}', '0', 'XSS Filter.', '', '0', 'profiles/spark/modules/contrib/ckeditor/includes/ckeditor.page.inc'),
('comment/%', 'a:1:{i:1;N;}', '', 'user_access', 'a:1:{i:0;s:15:"access comments";}', 'comment_permalink', 'a:1:{i:0;i:1;}', '', '2', 2, '0', '', 'comment/%', 'Comment permalink', 't', '', '', 'a:0:{}', '6', '', '', '0', ''),
('comment/%/approve', 'a:1:{i:1;N;}', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'comment_approve', 'a:1:{i:0;i:1;}', '', '5', 3, '0', '', 'comment/%/approve', 'Approve', 't', '', '', 'a:0:{}', '6', '', '', '1', 'modules/comment/comment.pages.inc'),
('comment/%/delete', 'a:1:{i:1;N;}', '', 'user_access', 'a:1:{i:0;s:19:"administer comments";}', 'comment_confirm_delete_page', 'a:1:{i:0;i:1;}', '', '5', 3, '1', 'comment/%', 'comment/%', 'Delete', 't', '', '', 'a:0:{}', '132', '', '', '2', 'modules/comment/comment.admin.inc'),
('comment/%/edit', 'a:1:{i:1;s:12:"comment_load";}', '', 'comment_access', 'a:2:{i:0;s:4:"edit";i:1;i:1;}', 'comment_edit_page', 'a:1:{i:0;i:1;}', '', '5', 3, '1', 'comment/%', 'comment/%', 'Edit', 't', '', '', 'a:0:{}', '132', '', '', '0', ''),
('comment/%/view', 'a:1:{i:1;N;}', '', 'user_access', 'a:1:{i:0;s:15:"access comments";}', 'comment_permalink', 'a:1:{i:0;i:1;}', '', '5', 3, '1', 'comment/%', 'comment/%', 'View comment', 't', '', '', 'a:0:{}', '140', '', '', '-10', ''),
('comment/reply/%', 'a:1:{i:2;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:4:"view";i:1;i:2;}', 'comment_reply', 'a:1:{i:0;i:2;}', '', '6', 3, '0', '', 'comment/reply/%', 'Add new comment', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/comment/comment.pages.inc'),
('ctools/autocomplete/%', 'a:1:{i:2;N;}', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'ctools_content_autocomplete_entity', 'a:1:{i:0;i:2;}', '', '6', 3, '0', '', 'ctools/autocomplete/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/content.menu.inc'),
('ctools/context/ajax/access/add', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'ctools_access_ajax_add', 'a:0:{}', '', '31', 5, '0', '', 'ctools/context/ajax/access/add', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/context-access-admin.inc'),
('ctools/context/ajax/access/configure', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'ctools_access_ajax_edit', 'a:0:{}', '', '31', 5, '0', '', 'ctools/context/ajax/access/configure', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/context-access-admin.inc'),
('ctools/context/ajax/access/delete', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'ctools_access_ajax_delete', 'a:0:{}', '', '31', 5, '0', '', 'ctools/context/ajax/access/delete', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/context-access-admin.inc'),
('ctools/context/ajax/add', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'ctools_context_ajax_item_add', 'a:0:{}', '', '15', 4, '0', '', 'ctools/context/ajax/add', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/context-admin.inc'),
('ctools/context/ajax/configure', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'ctools_context_ajax_item_edit', 'a:0:{}', '', '15', 4, '0', '', 'ctools/context/ajax/configure', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/context-admin.inc'),
('ctools/context/ajax/delete', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'ctools_context_ajax_item_delete', 'a:0:{}', '', '15', 4, '0', '', 'ctools/context/ajax/delete', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/includes/context-admin.inc'),
('demo/autocomplete', '', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'demo_autocomplete', 'a:0:{}', '', '3', 2, '0', '', 'demo/autocomplete', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('demo/download', '', '', 'user_access', 'a:1:{i:0;s:24:"administer demo settings";}', 'demo_download', 'a:0:{}', '', '3', 2, '0', '', 'demo/download', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'sites/all/modules/contrib/development/demo/demo.admin.inc'),
('edit/ckeditor/%/%/%/%/%', 'a:5:{i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}', '', 'user_access', 'a:1:{i:0;s:23:"access in-place editing";}', 'edit_ckeditor_get_untransformed_text', 'a:5:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;}', 'ajax_deliver', '96', 7, '0', '', 'edit/ckeditor/%/%/%/%/%', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/edit/includes/pages.inc'),
('edit/form/%/%/%/%/%', 'a:5:{i:2;N;i:3;N;i:4;N;i:5;N;i:6;N;}', '', 'user_access', 'a:1:{i:0;s:23:"access in-place editing";}', 'edit_field_edit', 'a:5:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;}', 'ajax_deliver', '96', 7, '0', '', 'edit/form/%/%/%/%/%', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/edit/includes/pages.inc'),
('edit/metadata', '', '', 'user_access', 'a:1:{i:0;s:23:"access in-place editing";}', 'edit_metadata', 'a:0:{}', 'ajax_deliver', '3', 2, '0', '', 'edit/metadata', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/edit/includes/pages.inc'),
('file/ajax', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'file_ajax_upload', 'a:0:{}', 'ajax_deliver', '3', 2, '0', '', 'file/ajax', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', ''),
('file/progress', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'file_ajax_progress', 'a:0:{}', '', '3', 2, '0', '', 'file/progress', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', ''),
('filter/tips', '', '', '1', 'a:0:{}', 'filter_tips_long', 'a:0:{}', '', '3', 2, '0', '', 'filter/tips', 'Compose tips', 't', '', '', 'a:0:{}', '20', '', '', '0', 'modules/filter/filter.pages.inc'),
('navbar/subtrees/%', 'a:1:{i:2;N;}', '', '_navbar_subtrees_access', 'a:1:{i:0;i:2;}', 'navbar_subtrees_jsonp', 'a:1:{i:0;i:2;}', '', '6', 3, '0', '', 'navbar/subtrees/%', '', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('node', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'node_page_default', 'a:0:{}', '', '1', 1, '0', '', 'node', '', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('node/%', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:4:"view";i:1;i:1;}', 'node_page_view', 'a:1:{i:0;i:1;}', '', '2', 2, '0', '', 'node/%', '', 'node_page_title', 'a:1:{i:0;i:1;}', '', 'a:0:{}', '6', '', '', '0', ''),
('node/%/delete', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:6:"delete";i:1;i:1;}', 'drupal_get_form', 'a:2:{i:0;s:19:"node_delete_confirm";i:1;i:1;}', '', '5', 3, '2', 'node/%', 'node/%', 'Delete', 't', '', '', 'a:0:{}', '132', '', '', '1', 'modules/node/node.pages.inc'),
('node/%/edit', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:6:"update";i:1;i:1;}', 'node_page_edit', 'a:1:{i:0;i:1;}', '', '5', 3, '3', 'node/%', 'node/%', 'Edit', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/node/node.pages.inc'),
('node/%/revisions', 'a:1:{i:1;s:9:"node_load";}', '', '_node_revision_access', 'a:1:{i:0;i:1;}', 'node_revision_overview', 'a:1:{i:0;i:1;}', '', '5', 3, '1', 'node/%', 'node/%', 'Revisions', 't', '', '', 'a:0:{}', '132', '', '', '2', 'modules/node/node.pages.inc'),
('node/%/revisions/%/delete', 'a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}', '', '_node_revision_access', 'a:2:{i:0;i:1;i:1;s:6:"delete";}', 'drupal_get_form', 'a:2:{i:0;s:28:"node_revision_delete_confirm";i:1;i:1;}', '', '21', 5, '0', '', 'node/%/revisions/%/delete', 'Delete earlier revision', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/node/node.pages.inc'),
('node/%/revisions/%/revert', 'a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}', '', '_node_revision_access', 'a:2:{i:0;i:1;i:1;s:6:"update";}', 'drupal_get_form', 'a:2:{i:0;s:28:"node_revision_revert_confirm";i:1;i:1;}', '', '21', 5, '0', '', 'node/%/revisions/%/revert', 'Revert to earlier revision', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/node/node.pages.inc'),
('node/%/revisions/%/view', 'a:2:{i:1;a:1:{s:9:"node_load";a:1:{i:0;i:3;}}i:3;N;}', '', '_node_revision_access', 'a:1:{i:0;i:1;}', 'node_show', 'a:2:{i:0;i:1;i:1;b:1;}', '', '21', 5, '0', '', 'node/%/revisions/%/view', 'Revisions', 't', '', '', 'a:0:{}', '6', '', '', '0', ''),
('node/%/view', 'a:1:{i:1;s:9:"node_load";}', '', 'node_access', 'a:2:{i:0;s:4:"view";i:1;i:1;}', 'node_page_view', 'a:1:{i:0;i:1;}', '', '5', 3, '1', 'node/%', 'node/%', 'View', 't', '', '', 'a:0:{}', '140', '', '', '-10', ''),
('node/add', '', '', '_node_add_access', 'a:0:{}', 'node_add_page', 'a:0:{}', '', '3', 2, '0', '', 'node/add', 'Add content', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/node/node.pages.inc'),
('node/add/article', '', '', 'node_access', 'a:2:{i:0;s:6:"create";i:1;s:7:"article";}', 'node_add', 'a:1:{i:0;s:7:"article";}', '', '7', 3, '0', '', 'node/add/article', 'Article', 'check_plain', '', '', 'a:0:{}', '6', 'Use <em>articles</em> for time-sensitive content like news, press releases or blog posts.', '', '0', 'modules/node/node.pages.inc'),
('node/add/every-field', '', '', 'node_access', 'a:2:{i:0;s:6:"create";i:1;s:11:"every_field";}', 'node_add', 'a:1:{i:0;s:11:"every_field";}', '', '7', 3, '0', '', 'node/add/every-field', 'Every Field', 'check_plain', '', '', 'a:0:{}', '6', 'A content type with one of every field.', '', '0', 'modules/node/node.pages.inc'),
('node/add/page', '', '', 'node_access', 'a:2:{i:0;s:6:"create";i:1;s:4:"page";}', 'node_add', 'a:1:{i:0;s:4:"page";}', '', '7', 3, '0', '', 'node/add/page', 'Basic page', 'check_plain', '', '', 'a:0:{}', '6', 'Use <em>basic pages</em> for your static content, such as an ''About us'' page.', '', '0', 'modules/node/node.pages.inc'),
('panels/ajax', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'panels_ajax_router', 'a:0:{}', 'ajax_deliver', '3', 2, '0', '', 'panels/ajax', '', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', ''),
('rss.xml', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'node_feed', 'a:2:{i:0;b:0;i:1;a:0:{}}', '', '1', 1, '0', '', 'rss.xml', 'RSS feed', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('search', '', '', 'search_is_active', 'a:0:{}', 'search_view', 'a:0:{}', '', '1', 1, '0', '', 'search', 'Search', 't', '', '', 'a:0:{}', '20', '', '', '0', 'modules/search/search.pages.inc'),
('search/node', '', '', '_search_menu_access', 'a:1:{i:0;s:4:"node";}', 'search_view', 'a:2:{i:0;s:4:"node";i:1;s:0:"";}', '', '3', 2, '1', 'search', 'search', 'Content', 't', '', '', 'a:0:{}', '132', '', '', '-10', 'modules/search/search.pages.inc'),
('search/node/%', 'a:1:{i:2;a:1:{s:14:"menu_tail_load";a:2:{i:0;s:4:"%map";i:1;s:6:"%index";}}}', 'a:1:{i:2;s:16:"menu_tail_to_arg";}', '_search_menu_access', 'a:1:{i:0;s:4:"node";}', 'search_view', 'a:2:{i:0;s:4:"node";i:1;i:2;}', '', '6', 3, '1', 'search/node', 'search/node/%', 'Content', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/search/search.pages.inc'),
('search/user', '', '', '_search_menu_access', 'a:1:{i:0;s:4:"user";}', 'search_view', 'a:2:{i:0;s:4:"user";i:1;s:0:"";}', '', '3', 2, '1', 'search', 'search', 'Users', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/search/search.pages.inc'),
('search/user/%', 'a:1:{i:2;a:1:{s:14:"menu_tail_load";a:2:{i:0;s:4:"%map";i:1;s:6:"%index";}}}', 'a:1:{i:2;s:16:"menu_tail_to_arg";}', '_search_menu_access', 'a:1:{i:0;s:4:"user";}', 'search_view', 'a:2:{i:0;s:4:"user";i:1;i:2;}', '', '6', 3, '1', 'search/node', 'search/node/%', 'Users', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/search/search.pages.inc'),
('sites/default/files/styles/%', 'a:1:{i:4;s:16:"image_style_load";}', '', '1', 'a:0:{}', 'image_style_deliver', 'a:1:{i:0;i:4;}', '', '30', 5, '0', '', 'sites/default/files/styles/%', 'Generate image style', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('spark-demo-home', '', '', 'ctools_access_menu', 'a:1:{i:0;a:2:{s:4:"type";s:4:"none";s:8:"settings";N;}}', 'page_manager_page_execute', 'a:1:{i:0;s:15:"spark_demo_home";}', '', '1', 1, '0', '', 'spark-demo-home', '', 't', '', '', 'a:0:{}', '0', '', '', '0', 'profiles/spark/modules/contrib/ctools/page_manager/plugins/tasks/page.inc'),
('system/ajax', '', '', '1', 'a:0:{}', 'ajax_form_callback', 'a:0:{}', 'ajax_deliver', '3', 2, '0', '', 'system/ajax', 'AHAH callback', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', '', '', '0', 'includes/form.inc'),
('system/files', '', '', '1', 'a:0:{}', 'file_download', 'a:1:{i:0;s:7:"private";}', '', '3', 2, '0', '', 'system/files', 'File download', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('system/files/styles/%', 'a:1:{i:3;s:16:"image_style_load";}', '', '1', 'a:0:{}', 'image_style_deliver', 'a:1:{i:0;i:3;}', '', '14', 4, '0', '', 'system/files/styles/%', 'Generate image style', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('system/temporary', '', '', '1', 'a:0:{}', 'file_download', 'a:1:{i:0;s:9:"temporary";}', '', '3', 2, '0', '', 'system/temporary', 'Temporary files', 't', '', '', 'a:0:{}', '0', '', '', '0', ''),
('system/timezone', '', '', '1', 'a:0:{}', 'system_timezone', 'a:0:{}', '', '3', 2, '0', '', 'system/timezone', 'Time zone', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/system/system.admin.inc'),
('taxonomy/autocomplete', '', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'taxonomy_autocomplete', 'a:0:{}', '', '3', 2, '0', '', 'taxonomy/autocomplete', 'Autocomplete taxonomy', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/taxonomy/taxonomy.pages.inc'),
('taxonomy/term/%', 'a:1:{i:2;s:18:"taxonomy_term_load";}', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'taxonomy_term_page', 'a:1:{i:0;i:2;}', '', '6', 3, '0', '', 'taxonomy/term/%', 'Taxonomy term', 'taxonomy_term_title', 'a:1:{i:0;i:2;}', '', 'a:0:{}', '6', '', '', '0', 'modules/taxonomy/taxonomy.pages.inc'),
('taxonomy/term/%/edit', 'a:1:{i:2;s:18:"taxonomy_term_load";}', '', 'taxonomy_term_edit_access', 'a:1:{i:0;i:2;}', 'drupal_get_form', 'a:3:{i:0;s:18:"taxonomy_form_term";i:1;i:2;i:2;N;}', '', '13', 4, '1', 'taxonomy/term/%', 'taxonomy/term/%', 'Edit', 't', '', '', 'a:0:{}', '132', '', '', '10', 'modules/taxonomy/taxonomy.admin.inc'),
('taxonomy/term/%/feed', 'a:1:{i:2;s:18:"taxonomy_term_load";}', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'taxonomy_term_feed', 'a:1:{i:0;i:2;}', '', '13', 4, '0', '', 'taxonomy/term/%/feed', 'Taxonomy term', 'taxonomy_term_title', 'a:1:{i:0;i:2;}', '', 'a:0:{}', '0', '', '', '0', 'modules/taxonomy/taxonomy.pages.inc'),
('taxonomy/term/%/view', 'a:1:{i:2;s:18:"taxonomy_term_load";}', '', 'user_access', 'a:1:{i:0;s:14:"access content";}', 'taxonomy_term_page', 'a:1:{i:0;i:2;}', '', '13', 4, '1', 'taxonomy/term/%', 'taxonomy/term/%', 'View', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/taxonomy/taxonomy.pages.inc'),
('user', '', '', '1', 'a:0:{}', 'user_page', 'a:0:{}', '', '1', 1, '0', '', 'user', 'User account', 'user_menu_title', '', '', 'a:0:{}', '6', '', '', '-10', 'modules/user/user.pages.inc'),
('user/%', 'a:1:{i:1;s:9:"user_load";}', '', 'user_view_access', 'a:1:{i:0;i:1;}', 'user_view_page', 'a:1:{i:0;i:1;}', '', '2', 2, '0', '', 'user/%', 'My account', 'user_page_title', 'a:1:{i:0;i:1;}', '', 'a:0:{}', '6', '', '', '0', ''),
('user/%/cancel', 'a:1:{i:1;s:9:"user_load";}', '', 'user_cancel_access', 'a:1:{i:0;i:1;}', 'drupal_get_form', 'a:2:{i:0;s:24:"user_cancel_confirm_form";i:1;i:1;}', '', '5', 3, '0', '', 'user/%/cancel', 'Cancel account', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/user/user.pages.inc'),
('user/%/cancel/confirm/%/%', 'a:3:{i:1;s:9:"user_load";i:4;N;i:5;N;}', '', 'user_cancel_access', 'a:1:{i:0;i:1;}', 'user_cancel_confirm', 'a:3:{i:0;i:1;i:1;i:4;i:2;i:5;}', '', '44', 6, '0', '', 'user/%/cancel/confirm/%/%', 'Confirm account cancellation', 't', '', '', 'a:0:{}', '6', '', '', '0', 'modules/user/user.pages.inc'),
('user/%/edit', 'a:1:{i:1;s:9:"user_load";}', '', 'user_edit_access', 'a:1:{i:0;i:1;}', 'drupal_get_form', 'a:2:{i:0;s:17:"user_profile_form";i:1;i:1;}', '', '5', 3, '1', 'user/%', 'user/%', 'Edit', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/user/user.pages.inc'),
('user/%/edit/account', 'a:1:{i:1;a:1:{s:18:"user_category_load";a:2:{i:0;s:4:"%map";i:1;s:6:"%index";}}}', '', 'user_edit_access', 'a:1:{i:0;i:1;}', 'drupal_get_form', 'a:2:{i:0;s:17:"user_profile_form";i:1;i:1;}', '', '11', 4, '1', 'user/%/edit', 'user/%', 'Account', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/user/user.pages.inc'),
('user/%/shortcuts', 'a:1:{i:1;s:9:"user_load";}', '', 'shortcut_set_switch_access', 'a:1:{i:0;i:1;}', 'drupal_get_form', 'a:2:{i:0;s:19:"shortcut_set_switch";i:1;i:1;}', '', '5', 3, '1', 'user/%', 'user/%', 'Shortcuts', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/shortcut/shortcut.admin.inc'),
('user/%/view', 'a:1:{i:1;s:9:"user_load";}', '', 'user_view_access', 'a:1:{i:0;i:1;}', 'user_view_page', 'a:1:{i:0;i:1;}', '', '5', 3, '1', 'user/%', 'user/%', 'View', 't', '', '', 'a:0:{}', '140', '', '', '-10', ''),
('user/autocomplete', '', '', 'user_access', 'a:1:{i:0;s:20:"access user profiles";}', 'user_autocomplete', 'a:0:{}', '', '3', 2, '0', '', 'user/autocomplete', 'User autocomplete', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/user/user.pages.inc'),
('user/login', '', '', 'user_is_anonymous', 'a:0:{}', 'user_page', 'a:0:{}', '', '3', 2, '1', 'user', 'user', 'Log in', 't', '', '', 'a:0:{}', '140', '', '', '0', 'modules/user/user.pages.inc'),
('user/logout', '', '', 'user_is_logged_in', 'a:0:{}', 'user_logout', 'a:0:{}', '', '3', 2, '0', '', 'user/logout', 'Log out', 't', '', '', 'a:0:{}', '6', '', '', '10', 'modules/user/user.pages.inc'),
('user/password', '', '', '1', 'a:0:{}', 'drupal_get_form', 'a:1:{i:0;s:9:"user_pass";}', '', '3', 2, '1', 'user', 'user', 'Request new password', 't', '', '', 'a:0:{}', '132', '', '', '0', 'modules/user/user.pages.inc');
INSERT INTO `menu_router` VALUES
('user/register', '', '', 'user_register_access', 'a:0:{}', 'drupal_get_form', 'a:1:{i:0;s:18:"user_register_form";}', '', '3', 2, '1', 'user', 'user', 'Create new account', 't', '', '', 'a:0:{}', '132', '', '', '0', ''),
('user/reset/%/%/%', 'a:3:{i:2;N;i:3;N;i:4;N;}', '', '1', 'a:0:{}', 'drupal_get_form', 'a:4:{i:0;s:15:"user_pass_reset";i:1;i:2;i:2;i:3;i:3;i:4;}', '', '24', 5, '0', '', 'user/reset/%/%/%', 'Reset password', 't', '', '', 'a:0:{}', '0', '', '', '0', 'modules/user/user.pages.inc'),
('views/ajax', '', '', '1', 'a:0:{}', 'views_ajax', 'a:0:{}', 'ajax_deliver', '3', 2, '0', '', 'views/ajax', 'Views', 't', '', 'ajax_base_page_theme', 'a:0:{}', '0', 'Ajax callback for view loading.', '', '0', 'profiles/spark/modules/contrib/views/includes/ajax.inc');
/*!40000 ALTER TABLE menu_router ENABLE KEYS */;

--
-- Table structure for table 'node'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='The base table for nodes.';

--
-- Dumping data for table 'node'
--

/*!40000 ALTER TABLE node DISABLE KEYS */;
INSERT INTO `node` VALUES
('1', '1', 'every_field', 'und', 'Welcome to Spark!', '1', '1', '1365408324', '1365409790', '1', '1', '0', '0', '0'),
('2', '2', 'page', 'und', 'About Us', '1', '1', '1365408324', '1365408324', '0', '0', '0', '0', '0');
/*!40000 ALTER TABLE node ENABLE KEYS */;

--
-- Table structure for table 'node_access'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Identifies which realm/grant pairs a user must possess in...';

--
-- Dumping data for table 'node_access'
--

/*!40000 ALTER TABLE node_access DISABLE KEYS */;
INSERT INTO `node_access` VALUES
('0', '0', 'all', '1', '0', '0');
/*!40000 ALTER TABLE node_access ENABLE KEYS */;

--
-- Table structure for table 'node_comment_statistics'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Maintains statistics of node and comments posts to show ...';

--
-- Dumping data for table 'node_comment_statistics'
--

/*!40000 ALTER TABLE node_comment_statistics DISABLE KEYS */;
INSERT INTO `node_comment_statistics` VALUES
('1', '0', '1365408324', NULL, '1', '0'),
('2', '0', '1365408324', NULL, '1', '0');
/*!40000 ALTER TABLE node_comment_statistics ENABLE KEYS */;

--
-- Table structure for table 'node_revision'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores information about each saved version of a node.';

--
-- Dumping data for table 'node_revision'
--

/*!40000 ALTER TABLE node_revision DISABLE KEYS */;
INSERT INTO `node_revision` VALUES
('1', '1', '1', 'Welcome to Spark!', '', '1365409790', '1', '1', '1', '0'),
('2', '2', '0', 'About Us', '', '1365408324', '1', '0', '0', '0');
/*!40000 ALTER TABLE node_revision ENABLE KEYS */;

--
-- Table structure for table 'node_type'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores information about all defined node types.';

--
-- Dumping data for table 'node_type'
--

/*!40000 ALTER TABLE node_type DISABLE KEYS */;
INSERT INTO `node_type` VALUES
('article', 'Article', 'node_content', 'node', 'Use <em>articles</em> for time-sensitive content like news, press releases or blog posts.', '', '1', 'Title', '1', '1', '0', '0', 'article'),
('every_field', 'Every Field', 'node_content', 'node', 'A content type with one of every field.', '', '1', 'Title', '0', '0', '1', '0', 'every_field'),
('page', 'Basic page', 'node_content', 'node', 'Use <em>basic pages</em> for your static content, such as an ''About us'' page.', '', '1', 'Title', '1', '1', '0', '0', 'page');
/*!40000 ALTER TABLE node_type ENABLE KEYS */;

--
-- Table structure for table 'page_manager_handlers'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table 'page_manager_handlers'
--

/*!40000 ALTER TABLE page_manager_handlers DISABLE KEYS */;
INSERT INTO `page_manager_handlers` VALUES
('1', 'page_spark_demo_home_panel_context', 'page', 'spark_demo_home', 'panel_context', '0', 'a:10:{s:5:"title";s:5:"Panel";s:9:"no_blocks";i:1;s:8:"pipeline";s:3:"ipe";s:22:"body_classes_to_remove";s:0:"";s:19:"body_classes_to_add";s:0:"";s:6:"css_id";s:0:"";s:3:"css";s:0:"";s:8:"contexts";a:0:{}s:13:"relationships";a:0:{}s:3:"did";s:1:"1";}');
/*!40000 ALTER TABLE page_manager_handlers ENABLE KEYS */;

--
-- Table structure for table 'page_manager_pages'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Contains page subtasks for implementing pages with...';

--
-- Dumping data for table 'page_manager_pages'
--

/*!40000 ALTER TABLE page_manager_pages DISABLE KEYS */;
INSERT INTO `page_manager_pages` VALUES
('1', 'spark_demo_home', 'page', 'Spark demo home', '', 'spark-demo-home', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:1:{s:11:"admin_paths";b:0;}');
/*!40000 ALTER TABLE page_manager_pages ENABLE KEYS */;

--
-- Table structure for table 'page_manager_weights'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Contains override weights for page_manager handlers that...';

--
-- Dumping data for table 'page_manager_weights'
--

/*!40000 ALTER TABLE page_manager_weights DISABLE KEYS */;
/*!40000 ALTER TABLE page_manager_weights ENABLE KEYS */;

--
-- Table structure for table 'panels_display'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table 'panels_display'
--

/*!40000 ALTER TABLE panels_display DISABLE KEYS */;
INSERT INTO `panels_display` VALUES
('1', 'responsive:spark_demo_home', 'a:0:{}', 'a:1:{s:14:"style_settings";a:15:{s:7:"default";N;s:8:"header_a";N;s:8:"header_b";N;s:8:"header_c";N;s:11:"subheader_a";N;s:11:"subheader_b";N;s:11:"subheader_c";N;s:10:"navigation";N;s:5:"title";N;s:9:"sidebar_a";N;s:4:"body";N;s:9:"sidebar_b";N;s:8:"footer_a";N;s:8:"footer_b";N;s:8:"footer_c";N;}}', 'a:0:{}', '', '1', '6');
/*!40000 ALTER TABLE panels_display ENABLE KEYS */;

--
-- Table structure for table 'panels_layout'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Contains exportable customized layouts for this site.';

--
-- Dumping data for table 'panels_layout'
--

/*!40000 ALTER TABLE panels_layout DISABLE KEYS */;
/*!40000 ALTER TABLE panels_layout ENABLE KEYS */;

--
-- Table structure for table 'panels_pane'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table 'panels_pane'
--

/*!40000 ALTER TABLE panels_pane DISABLE KEYS */;
INSERT INTO `panels_pane` VALUES
('1', '1', 'body', 'node', 'node', '1', 'a:0:{}', 'a:8:{s:3:"nid";s:1:"1";s:5:"links";i:1;s:16:"leave_node_title";i:0;s:10:"identifier";s:0:"";s:10:"build_mode";s:6:"teaser";s:15:"link_node_title";i:1;s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:1:{s:8:"settings";N;}', 'a:0:{}', 'a:0:{}', 0, 'a:0:{}'),
('2', '1', 'footer_a', 'block', 'system-main-menu', '1', 'a:0:{}', 'a:2:{s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, 'a:0:{}'),
('3', '1', 'sidebar_a', 'block', 'search-form', '1', 'a:0:{}', 'a:2:{s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:1:{s:8:"settings";N;}', 'a:0:{}', 'a:0:{}', 0, 'a:0:{}'),
('4', '1', 'sidebar_a', 'block', 'edit-edit', '1', 'a:0:{}', 'a:2:{s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:1:{s:8:"settings";N;}', 'a:0:{}', 'a:0:{}', 1, 'a:0:{}'),
('5', '1', 'sidebar_a', 'block', 'system-navigation', '1', 'a:0:{}', 'a:2:{s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:1:{s:8:"settings";N;}', 'a:0:{}', 'a:0:{}', 2, 'a:0:{}'),
('6', '1', 'title', 'page_title', 'page_title', '1', 'a:0:{}', 'a:5:{s:6:"markup";s:2:"h1";s:5:"class";s:0:"";s:2:"id";s:0:"";s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:1:{s:8:"settings";N;}', 'a:0:{}', 'a:0:{}', 0, 'a:0:{}'),
('7', '1', 'footer_b', 'block', 'system-navigation', '1', 'a:0:{}', 'a:2:{s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, 'a:0:{}'),
('8', '1', 'footer_c', 'block', 'user-online', '1', 'a:0:{}', 'a:2:{s:14:"override_title";i:0;s:19:"override_title_text";s:0:"";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, 'a:0:{}');
/*!40000 ALTER TABLE panels_pane ENABLE KEYS */;

--
-- Table structure for table 'panels_renderer_pipeline'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Contains renderer pipelines for Panels. Each pipeline...';

--
-- Dumping data for table 'panels_renderer_pipeline'
--

/*!40000 ALTER TABLE panels_renderer_pipeline DISABLE KEYS */;
/*!40000 ALTER TABLE panels_renderer_pipeline ENABLE KEYS */;

--
-- Table structure for table 'queue'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores items in queues.';

--
-- Dumping data for table 'queue'
--

/*!40000 ALTER TABLE queue DISABLE KEYS */;
INSERT INTO `queue` VALUES
('68', 'update_fetch_tasks', 'a:8:{s:4:"name";s:5:"ember";s:4:"info";a:6:{s:4:"name";s:5:"Ember";s:7:"package";s:4:"Core";s:7:"version";s:14:"7.x-1.0-alpha5";s:7:"project";s:5:"ember";s:9:"datestamp";s:10:"1359095802";s:16:"_info_file_ctime";i:1365408142;}s:9:"datestamp";s:10:"1359095802";s:8:"includes";a:1:{s:5:"ember";s:5:"Ember";}s:12:"project_type";s:5:"theme";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365408463'),
('69', 'update_fetch_tasks', 'a:8:{s:4:"name";s:17:"responsive_bartik";s:4:"info";a:5:{s:4:"name";s:17:"Responsive Bartik";s:7:"version";s:19:"7.x-1.0-beta1+2-dev";s:7:"project";s:17:"responsive_bartik";s:9:"datestamp";s:10:"1365080424";s:16:"_info_file_ctime";i:1365408142;}s:9:"datestamp";s:10:"1365080424";s:8:"includes";a:1:{s:17:"responsive_bartik";s:17:"Responsive Bartik";}s:12:"project_type";s:5:"theme";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365408463'),
('70', 'update_fetch_tasks', 'a:8:{s:4:"name";s:11:"admin_icons";s:4:"info";a:6:{s:4:"name";s:10:"Icon fonts";s:7:"version";s:11:"7.x-1.x-dev";s:7:"project";s:11:"admin_icons";s:9:"datestamp";s:10:"1349049710";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1349049710";s:8:"includes";a:1:{s:11:"admin_icons";s:10:"Icon fonts";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365411618'),
('71', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"drupal";s:4:"info";a:6:{s:4:"name";s:5:"Block";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365027012";s:8:"includes";a:27:{s:5:"block";s:5:"Block";s:5:"color";s:5:"Color";s:7:"comment";s:7:"Comment";s:10:"contextual";s:16:"Contextual links";s:5:"dblog";s:16:"Database logging";s:5:"field";s:5:"Field";s:17:"field_sql_storage";s:17:"Field SQL storage";s:8:"field_ui";s:8:"Field UI";s:4:"file";s:4:"File";s:6:"filter";s:6:"Filter";s:4:"help";s:4:"Help";s:5:"image";s:5:"Image";s:4:"list";s:4:"List";s:4:"menu";s:4:"Menu";s:4:"node";s:4:"Node";s:6:"number";s:6:"Number";s:7:"options";s:7:"Options";s:4:"path";s:4:"Path";s:3:"rdf";s:3:"RDF";s:6:"search";s:6:"Search";s:8:"shortcut";s:8:"Shortcut";s:6:"system";s:6:"System";s:8:"taxonomy";s:8:"Taxonomy";s:4:"text";s:4:"Text";s:6:"update";s:14:"Update manager";s:4:"user";s:4:"User";s:6:"bartik";s:6:"Bartik";}s:12:"project_type";s:4:"core";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365411618'),
('72', 'update_fetch_tasks', 'a:8:{s:4:"name";s:11:"breakpoints";s:4:"info";a:6:{s:4:"name";s:11:"Breakpoints";s:7:"version";s:7:"7.x-1.0";s:7:"project";s:11:"breakpoints";s:9:"datestamp";s:10:"1353614756";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1353614756";s:8:"includes";a:1:{s:11:"breakpoints";s:11:"Breakpoints";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365411618'),
('73', 'update_fetch_tasks', 'a:8:{s:4:"name";s:8:"ckeditor";s:4:"info";a:6:{s:4:"name";s:8:"CKEditor";s:7:"package";s:14:"User interface";s:7:"version";s:14:"7.x-1.12+9-dev";s:7:"project";s:8:"ckeditor";s:9:"datestamp";s:10:"1365080467";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365080467";s:8:"includes";a:1:{s:8:"ckeditor";s:8:"CKEditor";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365411618'),
('74', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"ctools";s:4:"info";a:6:{s:4:"name";s:11:"Chaos tools";s:7:"package";s:16:"Chaos tool suite";s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365013512";s:8:"includes";a:2:{s:6:"ctools";s:11:"Chaos tools";s:12:"page_manager";s:12:"Page manager";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365411618'),
('81', 'update_fetch_tasks', 'a:8:{s:4:"name";s:11:"admin_icons";s:4:"info";a:6:{s:4:"name";s:10:"Icon fonts";s:7:"version";s:11:"7.x-1.x-dev";s:7:"project";s:11:"admin_icons";s:9:"datestamp";s:10:"1349049710";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1349049710";s:8:"includes";a:1:{s:11:"admin_icons";s:10:"Icon fonts";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('82', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"drupal";s:4:"info";a:6:{s:4:"name";s:5:"Block";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365027012";s:8:"includes";a:27:{s:5:"block";s:5:"Block";s:5:"color";s:5:"Color";s:7:"comment";s:7:"Comment";s:10:"contextual";s:16:"Contextual links";s:5:"dblog";s:16:"Database logging";s:5:"field";s:5:"Field";s:17:"field_sql_storage";s:17:"Field SQL storage";s:8:"field_ui";s:8:"Field UI";s:4:"file";s:4:"File";s:6:"filter";s:6:"Filter";s:4:"help";s:4:"Help";s:5:"image";s:5:"Image";s:4:"list";s:4:"List";s:4:"menu";s:4:"Menu";s:4:"node";s:4:"Node";s:6:"number";s:6:"Number";s:7:"options";s:7:"Options";s:4:"path";s:4:"Path";s:3:"rdf";s:3:"RDF";s:6:"search";s:6:"Search";s:8:"shortcut";s:8:"Shortcut";s:6:"system";s:6:"System";s:8:"taxonomy";s:8:"Taxonomy";s:4:"text";s:4:"Text";s:6:"update";s:14:"Update manager";s:4:"user";s:4:"User";s:6:"bartik";s:6:"Bartik";}s:12:"project_type";s:4:"core";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('83', 'update_fetch_tasks', 'a:8:{s:4:"name";s:11:"breakpoints";s:4:"info";a:6:{s:4:"name";s:11:"Breakpoints";s:7:"version";s:7:"7.x-1.0";s:7:"project";s:11:"breakpoints";s:9:"datestamp";s:10:"1353614756";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1353614756";s:8:"includes";a:1:{s:11:"breakpoints";s:11:"Breakpoints";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('84', 'update_fetch_tasks', 'a:8:{s:4:"name";s:8:"ckeditor";s:4:"info";a:6:{s:4:"name";s:8:"CKEditor";s:7:"package";s:14:"User interface";s:7:"version";s:8:"7.x-1.12";s:7:"project";s:8:"ckeditor";s:9:"datestamp";s:10:"1356180966";s:16:"_info_file_ctime";i:1365412677;}s:9:"datestamp";s:10:"1356180966";s:8:"includes";a:1:{s:8:"ckeditor";s:8:"CKEditor";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('85', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"ctools";s:4:"info";a:6:{s:4:"name";s:11:"Chaos tools";s:7:"package";s:16:"Chaos tool suite";s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365013512";s:8:"includes";a:2:{s:6:"ctools";s:11:"Chaos tools";s:12:"page_manager";s:12:"Page manager";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('86', 'update_fetch_tasks', 'a:8:{s:4:"name";s:4:"edit";s:4:"info";a:6:{s:4:"name";s:4:"Edit";s:7:"package";s:5:"Spark";s:7:"version";s:14:"7.x-1.0-alpha9";s:7:"project";s:4:"edit";s:9:"datestamp";s:10:"1365167113";s:16:"_info_file_ctime";i:1365412677;}s:9:"datestamp";s:10:"1365167113";s:8:"includes";a:1:{s:4:"edit";s:4:"Edit";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('87', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"entity";s:4:"info";a:6:{s:4:"name";s:10:"Entity API";s:7:"version";s:7:"7.x-1.0";s:7:"project";s:6:"entity";s:9:"datestamp";s:10:"1356471145";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1356471145";s:8:"includes";a:1:{s:6:"entity";s:10:"Entity API";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('88', 'update_fetch_tasks', 'a:8:{s:4:"name";s:11:"every_field";s:4:"info";a:6:{s:4:"name";s:11:"Every Field";s:7:"version";s:11:"7.x-1.x-dev";s:7:"project";s:11:"every_field";s:9:"datestamp";s:10:"1340280981";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1340280981";s:8:"includes";a:1:{s:11:"every_field";s:11:"Every Field";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('89', 'update_fetch_tasks', 'a:8:{s:4:"name";s:11:"gridbuilder";s:4:"info";a:6:{s:4:"name";s:12:"Grid builder";s:7:"version";s:14:"7.x-1.0-alpha2";s:7:"project";s:11:"gridbuilder";s:9:"datestamp";s:10:"1344614548";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1344614548";s:8:"includes";a:1:{s:11:"gridbuilder";s:12:"Grid builder";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('90', 'update_fetch_tasks', 'a:8:{s:4:"name";s:13:"jquery_update";s:4:"info";a:6:{s:4:"name";s:13:"jQuery Update";s:7:"package";s:14:"User interface";s:7:"version";s:7:"7.x-2.3";s:7:"project";s:13:"jquery_update";s:9:"datestamp";s:10:"1360375905";s:16:"_info_file_ctime";i:1365412677;}s:9:"datestamp";s:10:"1360375905";s:8:"includes";a:1:{s:13:"jquery_update";s:13:"jQuery Update";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('91', 'update_fetch_tasks', 'a:8:{s:4:"name";s:5:"json2";s:4:"info";a:6:{s:4:"name";s:24:"JSON2 javascript library";s:7:"version";s:7:"7.x-1.1";s:7:"project";s:5:"json2";s:9:"datestamp";s:10:"1345207030";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1345207030";s:8:"includes";a:1:{s:5:"json2";s:24:"JSON2 javascript library";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('92', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"layout";s:4:"info";a:6:{s:4:"name";s:25:"Panels responsive layouts";s:7:"version";s:14:"7.x-1.0-alpha6";s:7:"project";s:6:"layout";s:9:"datestamp";s:10:"1363878012";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1363878012";s:8:"includes";a:1:{s:6:"layout";s:25:"Panels responsive layouts";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('93', 'update_fetch_tasks', 'a:8:{s:4:"name";s:9:"libraries";s:4:"info";a:6:{s:4:"name";s:9:"Libraries";s:7:"version";s:13:"7.x-2.0+7-dev";s:7:"project";s:9:"libraries";s:9:"datestamp";s:10:"1364994754";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1364994754";s:8:"includes";a:1:{s:9:"libraries";s:9:"Libraries";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('94', 'update_fetch_tasks', 'a:8:{s:4:"name";s:13:"module_filter";s:4:"info";a:6:{s:4:"name";s:13:"Module filter";s:7:"version";s:7:"7.x-1.7";s:7:"project";s:13:"module_filter";s:9:"datestamp";s:10:"1341518501";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1341518501";s:8:"includes";a:1:{s:13:"module_filter";s:13:"Module filter";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('95', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"navbar";s:4:"info";a:6:{s:4:"name";s:34:"Mobile Friendly Navigation Toolbar";s:7:"version";s:14:"7.x-1.0-alpha7";s:7:"project";s:6:"navbar";s:9:"datestamp";s:10:"1365041571";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365041571";s:8:"includes";a:1:{s:6:"navbar";s:34:"Mobile Friendly Navigation Toolbar";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('96', 'update_fetch_tasks', 'a:8:{s:4:"name";s:6:"panels";s:4:"info";a:6:{s:4:"name";s:6:"Panels";s:7:"package";s:6:"Panels";s:7:"version";s:7:"7.x-3.3";s:7:"project";s:6:"panels";s:9:"datestamp";s:10:"1345319572";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1345319572";s:8:"includes";a:2:{s:6:"panels";s:6:"Panels";s:10:"panels_ipe";s:22:"Panels In-Place Editor";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('97', 'update_fetch_tasks', 'a:8:{s:4:"name";s:18:"responsive_preview";s:4:"info";a:6:{s:4:"name";s:18:"Responsive Preview";s:7:"package";s:14:"User interface";s:7:"version";s:13:"7.x-1.0-beta1";s:7:"project";s:18:"responsive_preview";s:9:"datestamp";s:10:"1364432717";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1364432717";s:8:"includes";a:1:{s:18:"responsive_preview";s:18:"Responsive Preview";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('98', 'update_fetch_tasks', 'a:8:{s:4:"name";s:21:"simplified_menu_admin";s:4:"info";a:6:{s:4:"name";s:30:"Simplified menu administration";s:7:"version";s:13:"7.x-1.0-beta2";s:7:"project";s:21:"simplified_menu_admin";s:9:"datestamp";s:10:"1308938520";s:7:"package";s:5:"Other";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1308938520";s:8:"includes";a:1:{s:21:"simplified_menu_admin";s:30:"Simplified menu administration";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('99', 'update_fetch_tasks', 'a:8:{s:4:"name";s:5:"spark";s:4:"info";a:6:{s:4:"name";s:10:"Spark Demo";s:7:"package";s:5:"Spark";s:7:"version";s:14:"7.x-1.0-alpha8";s:7:"project";s:5:"spark";s:9:"datestamp";s:10:"1365080420";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365080420";s:8:"includes";a:1:{s:10:"spark_demo";s:10:"Spark Demo";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('100', 'update_fetch_tasks', 'a:8:{s:4:"name";s:5:"views";s:4:"info";a:6:{s:4:"name";s:5:"Views";s:7:"package";s:5:"Views";s:7:"version";s:7:"7.x-3.6";s:7:"project";s:5:"views";s:9:"datestamp";s:10:"1363810217";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1363810217";s:8:"includes";a:2:{s:5:"views";s:5:"Views";s:8:"views_ui";s:8:"Views UI";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('101', 'update_fetch_tasks', 'a:8:{s:4:"name";s:5:"ember";s:4:"info";a:6:{s:4:"name";s:5:"Ember";s:7:"package";s:4:"Core";s:7:"version";s:14:"7.x-1.0-alpha5";s:7:"project";s:5:"ember";s:9:"datestamp";s:10:"1359095802";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1359095802";s:8:"includes";a:1:{s:5:"ember";s:5:"Ember";}s:12:"project_type";s:5:"theme";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('102', 'update_fetch_tasks', 'a:8:{s:4:"name";s:17:"responsive_bartik";s:4:"info";a:5:{s:4:"name";s:17:"Responsive Bartik";s:7:"version";s:19:"7.x-1.0-beta1+2-dev";s:7:"project";s:17:"responsive_bartik";s:9:"datestamp";s:10:"1365080424";s:16:"_info_file_ctime";i:1365409108;}s:9:"datestamp";s:10:"1365080424";s:8:"includes";a:1:{s:17:"responsive_bartik";s:17:"Responsive Bartik";}s:12:"project_type";s:5:"theme";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365412757'),
('103', 'update_fetch_tasks', 'a:8:{s:4:"name";s:11:"admin_views";s:4:"info";a:6:{s:4:"name";s:20:"Administration views";s:7:"package";s:14:"Administration";s:7:"version";s:13:"7.x-1.1+1-dev";s:7:"project";s:11:"admin_views";s:9:"datestamp";s:10:"1358555464";s:16:"_info_file_ctime";i:1365412965;}s:9:"datestamp";s:10:"1358555464";s:8:"includes";a:1:{s:11:"admin_views";s:20:"Administration views";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365413058'),
('104', 'update_fetch_tasks', 'a:8:{s:4:"name";s:21:"views_bulk_operations";s:4:"info";a:6:{s:4:"name";s:21:"Views Bulk Operations";s:7:"package";s:5:"Views";s:7:"version";s:7:"7.x-3.1";s:7:"project";s:21:"views_bulk_operations";s:9:"datestamp";s:10:"1354500015";s:16:"_info_file_ctime";i:1365413028;}s:9:"datestamp";s:10:"1354500015";s:8:"includes";a:1:{s:21:"views_bulk_operations";s:21:"Views Bulk Operations";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365413058'),
('105', 'update_fetch_tasks', 'a:8:{s:4:"name";s:4:"demo";s:4:"info";a:6:{s:4:"name";s:18:"Demonstration site";s:7:"package";s:11:"Development";s:7:"version";s:7:"7.x-1.0";s:7:"project";s:4:"demo";s:9:"datestamp";s:10:"1294543925";s:16:"_info_file_ctime";i:1365413602;}s:9:"datestamp";s:10:"1294543925";s:8:"includes";a:2:{s:4:"demo";s:18:"Demonstration site";s:10:"demo_reset";s:24:"Demonstration site reset";}s:12:"project_type";s:6:"module";s:14:"project_status";b:1;s:10:"sub_themes";a:0:{}s:11:"base_themes";a:0:{}}', '0', '1365415185');
/*!40000 ALTER TABLE queue ENABLE KEYS */;

--
-- Table structure for table 'rdf_mapping'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores custom RDF mappings for user defined content types...';

--
-- Dumping data for table 'rdf_mapping'
--

/*!40000 ALTER TABLE rdf_mapping DISABLE KEYS */;
INSERT INTO `rdf_mapping` VALUES
('node', 'article', 'a:11:{s:11:"field_image";a:2:{s:10:"predicates";a:2:{i:0;s:8:"og:image";i:1;s:12:"rdfs:seeAlso";}s:4:"type";s:3:"rel";}s:10:"field_tags";a:2:{s:10:"predicates";a:1:{i:0;s:10:"dc:subject";}s:4:"type";s:3:"rel";}s:7:"rdftype";a:2:{i:0;s:9:"sioc:Item";i:1;s:13:"foaf:Document";}s:5:"title";a:1:{s:10:"predicates";a:1:{i:0;s:8:"dc:title";}}s:7:"created";a:3:{s:10:"predicates";a:2:{i:0;s:7:"dc:date";i:1;s:10:"dc:created";}s:8:"datatype";s:12:"xsd:dateTime";s:8:"callback";s:12:"date_iso8601";}s:7:"changed";a:3:{s:10:"predicates";a:1:{i:0;s:11:"dc:modified";}s:8:"datatype";s:12:"xsd:dateTime";s:8:"callback";s:12:"date_iso8601";}s:4:"body";a:1:{s:10:"predicates";a:1:{i:0;s:15:"content:encoded";}}s:3:"uid";a:2:{s:10:"predicates";a:1:{i:0;s:16:"sioc:has_creator";}s:4:"type";s:3:"rel";}s:4:"name";a:1:{s:10:"predicates";a:1:{i:0;s:9:"foaf:name";}}s:13:"comment_count";a:2:{s:10:"predicates";a:1:{i:0;s:16:"sioc:num_replies";}s:8:"datatype";s:11:"xsd:integer";}s:13:"last_activity";a:3:{s:10:"predicates";a:1:{i:0;s:23:"sioc:last_activity_date";}s:8:"datatype";s:12:"xsd:dateTime";s:8:"callback";s:12:"date_iso8601";}}'),
('node', 'page', 'a:9:{s:7:"rdftype";a:1:{i:0;s:13:"foaf:Document";}s:5:"title";a:1:{s:10:"predicates";a:1:{i:0;s:8:"dc:title";}}s:7:"created";a:3:{s:10:"predicates";a:2:{i:0;s:7:"dc:date";i:1;s:10:"dc:created";}s:8:"datatype";s:12:"xsd:dateTime";s:8:"callback";s:12:"date_iso8601";}s:7:"changed";a:3:{s:10:"predicates";a:1:{i:0;s:11:"dc:modified";}s:8:"datatype";s:12:"xsd:dateTime";s:8:"callback";s:12:"date_iso8601";}s:4:"body";a:1:{s:10:"predicates";a:1:{i:0;s:15:"content:encoded";}}s:3:"uid";a:2:{s:10:"predicates";a:1:{i:0;s:16:"sioc:has_creator";}s:4:"type";s:3:"rel";}s:4:"name";a:1:{s:10:"predicates";a:1:{i:0;s:9:"foaf:name";}}s:13:"comment_count";a:2:{s:10:"predicates";a:1:{i:0;s:16:"sioc:num_replies";}s:8:"datatype";s:11:"xsd:integer";}s:13:"last_activity";a:3:{s:10:"predicates";a:1:{i:0;s:23:"sioc:last_activity_date";}s:8:"datatype";s:12:"xsd:dateTime";s:8:"callback";s:12:"date_iso8601";}}');
/*!40000 ALTER TABLE rdf_mapping ENABLE KEYS */;

--
-- Table structure for table 'registry'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Each record is a function, class, or interface name and...';

--
-- Dumping data for table 'registry'
--

/*!40000 ALTER TABLE registry DISABLE KEYS */;
INSERT INTO `registry` VALUES
('AccessDeniedTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('AdminMetaTagTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('AdminViewsDefaultViewsTestCase', 'class', 'sites/all/modules/contrib/usability/admin_views/tests/admin_views.test', 'admin_views', '12'),
('AdminViewsPageDisplayTestCase', 'class', 'sites/all/modules/contrib/usability/admin_views/tests/admin_views.test', 'admin_views', '12'),
('AdminViewsSystemDisplayTestCase', 'class', 'sites/all/modules/contrib/usability/admin_views/tests/admin_views.test', 'admin_views', '12'),
('AdminViewsWebTestCase', 'class', 'sites/all/modules/contrib/usability/admin_views/tests/admin_views.test', 'admin_views', '12'),
('ArchiverInterface', 'interface', 'includes/archiver.inc', '', '0'),
('ArchiverTar', 'class', 'modules/system/system.archiver.inc', 'system', '0'),
('ArchiverZip', 'class', 'modules/system/system.archiver.inc', 'system', '0'),
('Archive_Tar', 'class', 'modules/system/system.tar.inc', 'system', '0'),
('BatchMemoryQueue', 'class', 'includes/batch.queue.inc', '', '0'),
('BatchQueue', 'class', 'includes/batch.queue.inc', '', '0'),
('BlockAdminThemeTestCase', 'class', 'modules/block/block.test', 'block', '0'),
('BlockCacheTestCase', 'class', 'modules/block/block.test', 'block', '0'),
('BlockHiddenRegionTestCase', 'class', 'modules/block/block.test', 'block', '0'),
('BlockHTMLIdTestCase', 'class', 'modules/block/block.test', 'block', '0'),
('BlockInvalidRegionTestCase', 'class', 'modules/block/block.test', 'block', '0'),
('BlockTemplateSuggestionsUnitTest', 'class', 'modules/block/block.test', 'block', '0'),
('BlockTestCase', 'class', 'modules/block/block.test', 'block', '0'),
('BreakpointGroupAdminTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('BreakpointGroupCRUDTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('BreakpointGroupTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('BreakpointMultipliersTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('BreakpointsAdminTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('BreakpointsCRUDTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('BreakpointsTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('BreakpointsThemeTestCase', 'class', 'profiles/spark/modules/contrib/breakpoints/breakpoints.test', 'breakpoints', '0'),
('ColorTestCase', 'class', 'modules/color/color.test', 'color', '0'),
('CommentActionsTestCase', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentAnonymous', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentApprovalTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentBlockFunctionalTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentContentRebuild', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentController', 'class', 'modules/comment/comment.module', 'comment', '0'),
('CommentFieldsTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentHelperCase', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentInterfaceTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentNodeAccessTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentNodeChangesTestCase', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentPagerTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentPreviewTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentRSSUnitTest', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentThreadingTestCase', 'class', 'modules/comment/comment.test', 'comment', '0'),
('CommentTokenReplaceTestCase', 'class', 'modules/comment/comment.test', 'comment', '0'),
('ContextualDynamicContextTestCase', 'class', 'modules/contextual/contextual.test', 'contextual', '0'),
('CronRunTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('ctools_context', 'class', 'profiles/spark/modules/contrib/ctools/includes/context.inc', 'ctools', '0'),
('ctools_context_optional', 'class', 'profiles/spark/modules/contrib/ctools/includes/context.inc', 'ctools', '0'),
('ctools_context_required', 'class', 'profiles/spark/modules/contrib/ctools/includes/context.inc', 'ctools', '0'),
('ctools_export_ui', 'class', 'profiles/spark/modules/contrib/ctools/plugins/export_ui/ctools_export_ui.class.php', 'ctools', '0'),
('ctools_math_expr', 'class', 'profiles/spark/modules/contrib/ctools/includes/math-expr.inc', 'ctools', '0'),
('ctools_math_expr_stack', 'class', 'profiles/spark/modules/contrib/ctools/includes/math-expr.inc', 'ctools', '0'),
('ctools_stylizer_image_processor', 'class', 'profiles/spark/modules/contrib/ctools/includes/stylizer.inc', 'ctools', '0'),
('Database', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseCondition', 'class', 'includes/database/query.inc', '', '0'),
('DatabaseConnection', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseConnectionNotDefinedException', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseConnection_mysql', 'class', 'includes/database/mysql/database.inc', '', '0'),
('DatabaseConnection_pgsql', 'class', 'includes/database/pgsql/database.inc', '', '0'),
('DatabaseConnection_sqlite', 'class', 'includes/database/sqlite/database.inc', '', '0'),
('DatabaseDriverNotSpecifiedException', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseLog', 'class', 'includes/database/log.inc', '', '0'),
('DatabaseSchema', 'class', 'includes/database/schema.inc', '', '0'),
('DatabaseSchemaObjectDoesNotExistException', 'class', 'includes/database/schema.inc', '', '0'),
('DatabaseSchemaObjectExistsException', 'class', 'includes/database/schema.inc', '', '0'),
('DatabaseSchema_mysql', 'class', 'includes/database/mysql/schema.inc', '', '0'),
('DatabaseSchema_pgsql', 'class', 'includes/database/pgsql/schema.inc', '', '0'),
('DatabaseSchema_sqlite', 'class', 'includes/database/sqlite/schema.inc', '', '0'),
('DatabaseStatementBase', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseStatementEmpty', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseStatementInterface', 'interface', 'includes/database/database.inc', '', '0'),
('DatabaseStatementPrefetch', 'class', 'includes/database/prefetch.inc', '', '0'),
('DatabaseStatement_sqlite', 'class', 'includes/database/sqlite/database.inc', '', '0'),
('DatabaseTaskException', 'class', 'includes/install.inc', '', '0'),
('DatabaseTasks', 'class', 'includes/install.inc', '', '0'),
('DatabaseTasks_mysql', 'class', 'includes/database/mysql/install.inc', '', '0'),
('DatabaseTasks_pgsql', 'class', 'includes/database/pgsql/install.inc', '', '0'),
('DatabaseTasks_sqlite', 'class', 'includes/database/sqlite/install.inc', '', '0'),
('DatabaseTransaction', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseTransactionCommitFailedException', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseTransactionExplicitCommitNotAllowedException', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseTransactionNameNonUniqueException', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseTransactionNoActiveException', 'class', 'includes/database/database.inc', '', '0'),
('DatabaseTransactionOutOfOrderException', 'class', 'includes/database/database.inc', '', '0'),
('DateTimeFunctionalTest', 'class', 'modules/system/system.test', 'system', '0'),
('DBLogTestCase', 'class', 'modules/dblog/dblog.test', 'dblog', '0'),
('DefaultMailSystem', 'class', 'modules/system/system.mail.inc', 'system', '0'),
('DeleteQuery', 'class', 'includes/database/query.inc', '', '0'),
('DeleteQuery_sqlite', 'class', 'includes/database/sqlite/query.inc', '', '0'),
('DrupalCacheArray', 'class', 'includes/bootstrap.inc', '', '0'),
('DrupalCacheInterface', 'interface', 'includes/cache.inc', '', '0'),
('DrupalDatabaseCache', 'class', 'includes/cache.inc', '', '0'),
('DrupalDefaultEntityController', 'class', 'includes/entity.inc', '', '0'),
('DrupalEntityControllerInterface', 'interface', 'includes/entity.inc', '', '0'),
('DrupalFakeCache', 'class', 'includes/cache-install.inc', '', '0'),
('DrupalLocalStreamWrapper', 'class', 'includes/stream_wrappers.inc', '', '0'),
('DrupalPrivateStreamWrapper', 'class', 'includes/stream_wrappers.inc', '', '0'),
('DrupalPublicStreamWrapper', 'class', 'includes/stream_wrappers.inc', '', '0'),
('DrupalQueue', 'class', 'modules/system/system.queue.inc', 'system', '0'),
('DrupalQueueInterface', 'interface', 'modules/system/system.queue.inc', 'system', '0'),
('DrupalReliableQueueInterface', 'interface', 'modules/system/system.queue.inc', 'system', '0'),
('DrupalStreamWrapperInterface', 'interface', 'includes/stream_wrappers.inc', '', '0'),
('DrupalTemporaryStreamWrapper', 'class', 'includes/stream_wrappers.inc', '', '0'),
('DrupalUpdateException', 'class', 'includes/update.inc', '', '0'),
('DrupalUpdaterInterface', 'interface', 'includes/updater.inc', '', '0'),
('EnableDisableTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('Entity', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.inc', 'entity', '0'),
('EntityAPIController', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.controller.inc', 'entity', '0'),
('EntityAPIControllerExportable', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.controller.inc', 'entity', '0'),
('EntityAPIControllerInterface', 'interface', 'profiles/spark/modules/contrib/entity/includes/entity.controller.inc', 'entity', '0'),
('EntityAPIControllerRevisionableInterface', 'interface', 'profiles/spark/modules/contrib/entity/includes/entity.controller.inc', 'entity', '0'),
('EntityAPIi18nItegrationTestCase', 'class', 'profiles/spark/modules/contrib/entity/entity.test', 'entity', '0'),
('EntityAPIRulesIntegrationTestCase', 'class', 'profiles/spark/modules/contrib/entity/entity.test', 'entity', '0'),
('EntityAPITestCase', 'class', 'profiles/spark/modules/contrib/entity/entity.test', 'entity', '0'),
('EntityDB', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.inc', 'entity', '0'),
('EntityDBExtendable', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.inc', 'entity', '0'),
('EntityDefaultFeaturesController', 'class', 'profiles/spark/modules/contrib/entity/entity.features.inc', 'entity', '0'),
('EntityDefaultI18nStringController', 'class', 'profiles/spark/modules/contrib/entity/entity.i18n.inc', 'entity', '0'),
('EntityDefaultMetadataController', 'class', 'profiles/spark/modules/contrib/entity/entity.info.inc', 'entity', '0'),
('EntityDefaultRulesController', 'class', 'profiles/spark/modules/contrib/entity/entity.rules.inc', 'entity', '0'),
('EntityDefaultUIController', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.ui.inc', 'entity', '0'),
('EntityDefaultViewsController', 'class', 'profiles/spark/modules/contrib/entity/views/entity.views.inc', 'entity', '0'),
('EntityDrupalWrapper', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityExtendable', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.inc', 'entity', '0'),
('EntityFieldHandlerHelper', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_field_handler_helper.inc', 'entity', '0'),
('EntityFieldQuery', 'class', 'includes/entity.inc', '', '0'),
('EntityFieldQueryException', 'class', 'includes/entity.inc', '', '0'),
('EntityListWrapper', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityMalformedException', 'class', 'includes/entity.inc', '', '0'),
('EntityMetadataArrayObject', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityMetadataIntegrationTestCase', 'class', 'profiles/spark/modules/contrib/entity/entity.test', 'entity', '0'),
('EntityMetadataTestCase', 'class', 'profiles/spark/modules/contrib/entity/entity.test', 'entity', '0'),
('EntityMetadataWrapper', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityMetadataWrapperException', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityMetadataWrapperIterator', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityPropertiesTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('EntityStructureWrapper', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityTokenTestCase', 'class', 'profiles/spark/modules/contrib/entity/entity.test', 'entity', '0'),
('EntityValueWrapper', 'class', 'profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', 'entity', '0'),
('EntityWebTestCase', 'class', 'profiles/spark/modules/contrib/entity/entity.test', 'entity', '0'),
('entity_views_handler_area_entity', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_area_entity.inc', 'entity', '0'),
('entity_views_handler_field_boolean', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_boolean.inc', 'entity', '0'),
('entity_views_handler_field_date', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_date.inc', 'entity', '0'),
('entity_views_handler_field_duration', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_duration.inc', 'entity', '0'),
('entity_views_handler_field_entity', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_entity.inc', 'entity', '0'),
('entity_views_handler_field_field', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_field.inc', 'entity', '0'),
('entity_views_handler_field_numeric', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_numeric.inc', 'entity', '0'),
('entity_views_handler_field_options', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_options.inc', 'entity', '0'),
('entity_views_handler_field_text', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_text.inc', 'entity', '0'),
('entity_views_handler_field_uri', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_uri.inc', 'entity', '0'),
('entity_views_handler_relationship', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_relationship.inc', 'entity', '0'),
('entity_views_handler_relationship_by_bundle', 'class', 'profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_relationship_by_bundle.inc', 'entity', '0'),
('entity_views_plugin_row_entity_view', 'class', 'profiles/spark/modules/contrib/entity/views/plugins/entity_views_plugin_row_entity_view.inc', 'entity', '0'),
('FieldAttachOtherTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldAttachStorageTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldAttachTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldBulkDeleteTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldCrudTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldDisplayAPITestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldException', 'class', 'modules/field/field.module', 'field', '0'),
('FieldFormTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldInfo', 'class', 'modules/field/field.info.class.inc', 'field', '0'),
('FieldInfoTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldInstanceCrudTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldsOverlapException', 'class', 'includes/database/database.inc', '', '0'),
('FieldSqlStorageTestCase', 'class', 'modules/field/modules/field_sql_storage/field_sql_storage.test', 'field_sql_storage', '0'),
('FieldTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldTranslationsTestCase', 'class', 'modules/field/tests/field.test', 'field', '0'),
('FieldUIAlterTestCase', 'class', 'modules/field_ui/field_ui.test', 'field_ui', '0'),
('FieldUIManageDisplayTestCase', 'class', 'modules/field_ui/field_ui.test', 'field_ui', '0'),
('FieldUIManageFieldsTestCase', 'class', 'modules/field_ui/field_ui.test', 'field_ui', '0'),
('FieldUITestCase', 'class', 'modules/field_ui/field_ui.test', 'field_ui', '0'),
('FieldUpdateForbiddenException', 'class', 'modules/field/field.module', 'field', '0'),
('FieldValidationException', 'class', 'modules/field/field.attach.inc', 'field', '0'),
('FileFieldDisplayTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileFieldPathTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileFieldRevisionTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileFieldTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileFieldValidateTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileFieldWidgetTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileManagedFileElementTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FilePrivateTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileTokenReplaceTestCase', 'class', 'modules/file/tests/file.test', 'file', '0'),
('FileTransfer', 'class', 'includes/filetransfer/filetransfer.inc', '', '0'),
('FileTransferChmodInterface', 'interface', 'includes/filetransfer/filetransfer.inc', '', '0'),
('FileTransferException', 'class', 'includes/filetransfer/filetransfer.inc', '', '0'),
('FileTransferFTP', 'class', 'includes/filetransfer/ftp.inc', '', '0'),
('FileTransferFTPExtension', 'class', 'includes/filetransfer/ftp.inc', '', '0'),
('FileTransferLocal', 'class', 'includes/filetransfer/local.inc', '', '0'),
('FileTransferSSH', 'class', 'includes/filetransfer/ssh.inc', '', '0'),
('FilterAdminTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterCRUDTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterDefaultFormatTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterFormatAccessTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterHooksTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterNoFormatTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterSecurityTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterSettingsTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FilterUnitTestCase', 'class', 'modules/filter/filter.test', 'filter', '0'),
('FloodFunctionalTest', 'class', 'modules/system/system.test', 'system', '0'),
('FrontPageTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('HelpTestCase', 'class', 'modules/help/help.test', 'help', '0'),
('HookRequirementsTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('ImageAdminStylesUnitTest', 'class', 'modules/image/image.test', 'image', '0'),
('ImageDimensionsScaleTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('ImageDimensionsTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('ImageEffectsUnitTest', 'class', 'modules/image/image.test', 'image', '0'),
('ImageFieldDefaultImagesTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('ImageFieldDisplayTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('ImageFieldTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('ImageFieldValidateTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('ImageStylesPathAndUrlTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('ImageThemeFunctionWebTestCase', 'class', 'modules/image/image.test', 'image', '0'),
('InfoFileParserTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('InsertQuery', 'class', 'includes/database/query.inc', '', '0'),
('InsertQuery_mysql', 'class', 'includes/database/mysql/query.inc', '', '0'),
('InsertQuery_pgsql', 'class', 'includes/database/pgsql/query.inc', '', '0'),
('InsertQuery_sqlite', 'class', 'includes/database/sqlite/query.inc', '', '0'),
('InvalidMergeQueryException', 'class', 'includes/database/database.inc', '', '0'),
('IPAddressBlockingTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('LibrariesTestCase', 'class', 'profiles/spark/modules/contrib/libraries/tests/libraries.test', 'libraries', '0'),
('LibrariesUnitTestCase', 'class', 'profiles/spark/modules/contrib/libraries/tests/libraries.test', 'libraries', '0'),
('ListDynamicValuesTestCase', 'class', 'modules/field/modules/list/tests/list.test', 'list', '0'),
('ListDynamicValuesValidationTestCase', 'class', 'modules/field/modules/list/tests/list.test', 'list', '0'),
('ListFieldTestCase', 'class', 'modules/field/modules/list/tests/list.test', 'list', '0'),
('ListFieldUITestCase', 'class', 'modules/field/modules/list/tests/list.test', 'list', '0'),
('MailSystemInterface', 'interface', 'includes/mail.inc', '', '0'),
('MemoryQueue', 'class', 'modules/system/system.queue.inc', 'system', '0'),
('MenuNodeTestCase', 'class', 'modules/menu/menu.test', 'menu', '0'),
('MenuTestCase', 'class', 'modules/menu/menu.test', 'menu', '0'),
('MergeQuery', 'class', 'includes/database/query.inc', '', '0'),
('ModuleDependencyTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('ModuleRequiredTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('ModuleTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('ModuleUpdater', 'class', 'modules/system/system.updater.inc', 'system', '0'),
('ModuleVersionTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('MultiStepNodeFormBasicOptionsTest', 'class', 'modules/node/node.test', 'node', '0'),
('NewDefaultThemeBlocks', 'class', 'modules/block/block.test', 'block', '0'),
('NodeAccessBaseTableTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeAccessFieldTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeAccessPagerTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeAccessRebuildTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeAccessRecordsTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeAccessTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeAdminTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeBlockFunctionalTest', 'class', 'modules/node/node.test', 'node', '0'),
('NodeBlockTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeBuildContent', 'class', 'modules/node/node.test', 'node', '0'),
('NodeController', 'class', 'modules/node/node.module', 'node', '0'),
('NodeCreationTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeEntityFieldQueryAlter', 'class', 'modules/node/node.test', 'node', '0'),
('NodeEntityViewModeAlterTest', 'class', 'modules/node/node.test', 'node', '0'),
('NodeFeedTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeLoadHooksTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeLoadMultipleTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodePostSettingsTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeQueryAlter', 'class', 'modules/node/node.test', 'node', '0'),
('NodeRevisionPermissionsTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeRevisionsTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeRSSContentTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeSaveTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeTitleTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeTitleXSSTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeTokenReplaceTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeTypePersistenceTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeTypeTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NodeWebTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('NoFieldsException', 'class', 'includes/database/database.inc', '', '0'),
('NoHelpTestCase', 'class', 'modules/help/help.test', 'help', '0'),
('NonDefaultBlockAdmin', 'class', 'modules/block/block.test', 'block', '0'),
('NumberFieldTestCase', 'class', 'modules/field/modules/number/number.test', 'number', '0'),
('OptionsSelectDynamicValuesTestCase', 'class', 'modules/field/modules/options/options.test', 'options', '0'),
('OptionsWidgetsTestCase', 'class', 'modules/field/modules/options/options.test', 'options', '0'),
('PageEditTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('PageNotFoundTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('PagePreviewTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('PagerDefault', 'class', 'includes/pager.inc', '', '0'),
('PageTitleFiltering', 'class', 'modules/system/system.test', 'system', '0'),
('PageViewTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('PanelsLegacyState', 'class', 'profiles/spark/modules/contrib/panels/includes/legacy.inc', 'panels', '0'),
('panels_allowed_layouts', 'class', 'profiles/spark/modules/contrib/panels/includes/common.inc', 'panels', '0'),
('panels_cache_object', 'class', 'profiles/spark/modules/contrib/panels/includes/plugins.inc', 'panels', '0'),
('panels_display', 'class', 'profiles/spark/modules/contrib/panels/panels.module', 'panels', '0'),
('panels_layouts_ui', 'class', 'profiles/spark/modules/contrib/panels/plugins/export_ui/panels_layouts_ui.class.php', 'panels', '0'),
('panels_renderer_editor', 'class', 'profiles/spark/modules/contrib/panels/plugins/display_renderers/panels_renderer_editor.class.php', 'panels', '0'),
('panels_renderer_ipe', 'class', 'profiles/spark/modules/contrib/panels/panels_ipe/plugins/display_renderers/panels_renderer_ipe.class.php', 'panels_ipe', '0'),
('panels_renderer_simple', 'class', 'profiles/spark/modules/contrib/panels/plugins/display_renderers/panels_renderer_simple.class.php', 'panels', '0'),
('panels_renderer_standard', 'class', 'profiles/spark/modules/contrib/panels/plugins/display_renderers/panels_renderer_standard.class.php', 'panels', '0'),
('panels_views_plugin_row_fields', 'class', 'profiles/spark/modules/contrib/panels/plugins/views/panels_views_plugin_row_fields.inc', 'panels', '0'),
('PathLanguageTestCase', 'class', 'modules/path/path.test', 'path', '0'),
('PathLanguageUITestCase', 'class', 'modules/path/path.test', 'path', '0'),
('PathMonolingualTestCase', 'class', 'modules/path/path.test', 'path', '0'),
('PathTaxonomyTermTestCase', 'class', 'modules/path/path.test', 'path', '0'),
('PathTestCase', 'class', 'modules/path/path.test', 'path', '0'),
('Query', 'class', 'includes/database/query.inc', '', '0'),
('QueryAlterableInterface', 'interface', 'includes/database/query.inc', '', '0'),
('QueryConditionInterface', 'interface', 'includes/database/query.inc', '', '0'),
('QueryExtendableInterface', 'interface', 'includes/database/select.inc', '', '0'),
('QueryPlaceholderInterface', 'interface', 'includes/database/query.inc', '', '0'),
('QueueTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('RdfCommentAttributesTestCase', 'class', 'modules/rdf/rdf.test', 'rdf', '0'),
('RdfCrudTestCase', 'class', 'modules/rdf/rdf.test', 'rdf', '0'),
('RdfGetRdfNamespacesTestCase', 'class', 'modules/rdf/rdf.test', 'rdf', '0'),
('RdfMappingDefinitionTestCase', 'class', 'modules/rdf/rdf.test', 'rdf', '0'),
('RdfMappingHookTestCase', 'class', 'modules/rdf/rdf.test', 'rdf', '0'),
('RdfRdfaMarkupTestCase', 'class', 'modules/rdf/rdf.test', 'rdf', '0'),
('RdfTrackerAttributesTestCase', 'class', 'modules/rdf/rdf.test', 'rdf', '0'),
('RetrieveFileTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('SchemaCache', 'class', 'includes/bootstrap.inc', '', '0'),
('SearchAdvancedSearchForm', 'class', 'modules/search/search.test', 'search', '0'),
('SearchBlockTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchCommentCountToggleTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchCommentTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchConfigSettingsForm', 'class', 'modules/search/search.test', 'search', '0'),
('SearchEmbedForm', 'class', 'modules/search/search.test', 'search', '0'),
('SearchExactTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchExcerptTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchExpressionInsertExtractTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchKeywordsConditions', 'class', 'modules/search/search.test', 'search', '0'),
('SearchLanguageTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchMatchTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchNodeAccessTest', 'class', 'modules/search/search.test', 'search', '0'),
('SearchNumberMatchingTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchNumbersTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchPageOverride', 'class', 'modules/search/search.test', 'search', '0'),
('SearchPageText', 'class', 'modules/search/search.test', 'search', '0'),
('SearchQuery', 'class', 'modules/search/search.extender.inc', 'search', '0'),
('SearchRankingTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchSimplifyTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SearchTokenizerTestCase', 'class', 'modules/search/search.test', 'search', '0'),
('SelectQuery', 'class', 'includes/database/select.inc', '', '0'),
('SelectQueryExtender', 'class', 'includes/database/select.inc', '', '0'),
('SelectQueryInterface', 'interface', 'includes/database/select.inc', '', '0'),
('SelectQuery_pgsql', 'class', 'includes/database/pgsql/select.inc', '', '0'),
('SelectQuery_sqlite', 'class', 'includes/database/sqlite/select.inc', '', '0'),
('ShortcutLinksTestCase', 'class', 'modules/shortcut/shortcut.test', 'shortcut', '0'),
('ShortcutSetsTestCase', 'class', 'modules/shortcut/shortcut.test', 'shortcut', '0'),
('ShortcutTestCase', 'class', 'modules/shortcut/shortcut.test', 'shortcut', '0'),
('ShutdownFunctionsTest', 'class', 'modules/system/system.test', 'system', '0'),
('SiteMaintenanceTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('SkipDotsRecursiveDirectoryIterator', 'class', 'includes/filetransfer/filetransfer.inc', '', '0'),
('StreamWrapperInterface', 'interface', 'includes/stream_wrappers.inc', '', '0'),
('SummaryLengthTestCase', 'class', 'modules/node/node.test', 'node', '0'),
('SystemAdminTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('SystemAuthorizeCase', 'class', 'modules/system/system.test', 'system', '0'),
('SystemBlockTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('SystemIndexPhpTest', 'class', 'modules/system/system.test', 'system', '0'),
('SystemInfoAlterTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('SystemMainContentFallback', 'class', 'modules/system/system.test', 'system', '0'),
('SystemQueue', 'class', 'modules/system/system.queue.inc', 'system', '0'),
('SystemThemeFunctionalTest', 'class', 'modules/system/system.test', 'system', '0'),
('TableSort', 'class', 'includes/tablesort.inc', '', '0'),
('TaxonomyEFQTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyHooksTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyLegacyTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyLoadMultipleTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyRSSTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyTermController', 'class', 'modules/taxonomy/taxonomy.module', 'taxonomy', '0'),
('TaxonomyTermFieldMultipleVocabularyTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyTermFieldTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyTermFunctionTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyTermIndexTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyTermTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyThemeTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyTokenReplaceTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyVocabularyController', 'class', 'modules/taxonomy/taxonomy.module', 'taxonomy', '0'),
('TaxonomyVocabularyFunctionalTest', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyVocabularyTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TaxonomyWebTestCase', 'class', 'modules/taxonomy/taxonomy.test', 'taxonomy', '0'),
('TestingMailSystem', 'class', 'modules/system/system.mail.inc', 'system', '0'),
('TextFieldTestCase', 'class', 'modules/field/modules/text/text.test', 'text', '0'),
('TextSummaryTestCase', 'class', 'modules/field/modules/text/text.test', 'text', '0'),
('TextTranslationTestCase', 'class', 'modules/field/modules/text/text.test', 'text', '0'),
('ThemeRegistry', 'class', 'includes/theme.inc', '', '0'),
('ThemeUpdater', 'class', 'modules/system/system.updater.inc', 'system', '0'),
('TokenReplaceTestCase', 'class', 'modules/system/system.test', 'system', '0'),
('TokenScanTest', 'class', 'modules/system/system.test', 'system', '0'),
('TruncateQuery', 'class', 'includes/database/query.inc', '', '0'),
('TruncateQuery_mysql', 'class', 'includes/database/mysql/query.inc', '', '0'),
('TruncateQuery_sqlite', 'class', 'includes/database/sqlite/query.inc', '', '0'),
('UpdateCoreTestCase', 'class', 'modules/update/update.test', 'update', '0'),
('UpdateCoreUnitTestCase', 'class', 'modules/update/update.test', 'update', '0'),
('UpdateQuery', 'class', 'includes/database/query.inc', '', '0'),
('UpdateQuery_pgsql', 'class', 'includes/database/pgsql/query.inc', '', '0'),
('UpdateQuery_sqlite', 'class', 'includes/database/sqlite/query.inc', '', '0'),
('Updater', 'class', 'includes/updater.inc', '', '0'),
('UpdaterException', 'class', 'includes/updater.inc', '', '0'),
('UpdaterFileTransferException', 'class', 'includes/updater.inc', '', '0'),
('UpdateScriptFunctionalTest', 'class', 'modules/system/system.test', 'system', '0'),
('UpdateTestContribCase', 'class', 'modules/update/update.test', 'update', '0'),
('UpdateTestHelper', 'class', 'modules/update/update.test', 'update', '0'),
('UpdateTestUploadCase', 'class', 'modules/update/update.test', 'update', '0'),
('UserAccountLinksUnitTests', 'class', 'modules/user/user.test', 'user', '0'),
('UserAdminTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserAuthmapAssignmentTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserAutocompleteTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserBlocksUnitTests', 'class', 'modules/user/user.test', 'user', '0'),
('UserCancelTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserController', 'class', 'modules/user/user.module', 'user', '0'),
('UserCreateTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserEditedOwnAccountTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserEditTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserLoginTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserPasswordResetTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserPermissionsTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserPictureTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserRegistrationTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserRoleAdminTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserRolesAssignmentTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserSaveTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserSignatureTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserTimeZoneFunctionalTest', 'class', 'modules/user/user.test', 'user', '0'),
('UserTokenReplaceTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserUserSearchTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('UserValidateCurrentPassCustomForm', 'class', 'modules/user/user.test', 'user', '0'),
('UserValidationTestCase', 'class', 'modules/user/user.test', 'user', '0'),
('view', 'class', 'profiles/spark/modules/contrib/views/includes/view.inc', 'views', '0'),
('ViewsAccessTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_access.test', 'views', '0'),
('ViewsAnalyzeTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_analyze.test', 'views', '0'),
('ViewsArgumentDefaultTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_argument_default.test', 'views', '0'),
('ViewsArgumentValidatorTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_argument_validator.test', 'views', '0'),
('ViewsBasicTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_basic.test', 'views', '0'),
('ViewsBulkOperationsAction', 'class', 'sites/all/modules/contrib/usability/views_bulk_operations/plugins/operation_types/action.class.php', 'views_bulk_operations', '0'),
('ViewsBulkOperationsBaseOperation', 'class', 'sites/all/modules/contrib/usability/views_bulk_operations/plugins/operation_types/base.class.php', 'views_bulk_operations', '0'),
('ViewsBulkOperationsRulesComponent', 'class', 'sites/all/modules/contrib/usability/views_bulk_operations/plugins/operation_types/rules_component.class.php', 'views_bulk_operations', '0'),
('ViewsCacheTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_cache.test', 'views', '0'),
('ViewsExposedFormTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_exposed_form.test', 'views', '0'),
('viewsFieldApiDataTest', 'class', 'profiles/spark/modules/contrib/views/tests/field/views_fieldapi.test', 'views', '0'),
('ViewsFieldApiTestHelper', 'class', 'profiles/spark/modules/contrib/views/tests/field/views_fieldapi.test', 'views', '0'),
('ViewsGlossaryTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_glossary.test', 'views', '0'),
('ViewsHandlerAreaTextTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_area_text.test', 'views', '0'),
('viewsHandlerArgumentCommentUserUidTest', 'class', 'profiles/spark/modules/contrib/views/tests/comment/views_handler_argument_comment_user_uid.test', 'views', '0'),
('ViewsHandlerArgumentNullTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_argument_null.test', 'views', '0'),
('ViewsHandlerArgumentStringTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_argument_string.test', 'views', '0'),
('ViewsHandlerFieldBooleanTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_boolean.test', 'views', '0'),
('ViewsHandlerFieldCustomTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_custom.test', 'views', '0'),
('ViewsHandlerFieldDateTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_date.test', 'views', '0'),
('viewsHandlerFieldFieldTest', 'class', 'profiles/spark/modules/contrib/views/tests/field/views_fieldapi.test', 'views', '0'),
('ViewsHandlerFieldMath', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_math.test', 'views', '0'),
('ViewsHandlerFieldTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field.test', 'views', '0'),
('ViewsHandlerFieldUrlTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_url.test', 'views', '0'),
('viewsHandlerFieldUserNameTest', 'class', 'profiles/spark/modules/contrib/views/tests/user/views_handler_field_user_name.test', 'views', '0'),
('ViewsHandlerFilterCombineTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_combine.test', 'views', '0'),
('viewsHandlerFilterCommentUserUidTest', 'class', 'profiles/spark/modules/contrib/views/tests/comment/views_handler_filter_comment_user_uid.test', 'views', '0'),
('ViewsHandlerFilterCounterTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_counter.test', 'views', '0'),
('ViewsHandlerFilterDateTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_date.test', 'views', '0'),
('ViewsHandlerFilterEqualityTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_equality.test', 'views', '0'),
('ViewsHandlerFilterInOperator', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_in_operator.test', 'views', '0'),
('ViewsHandlerFilterNumericTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_numeric.test', 'views', '0'),
('ViewsHandlerFilterStringTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_string.test', 'views', '0'),
('ViewsHandlerRelationshipNodeTermDataTest', 'class', 'profiles/spark/modules/contrib/views/tests/taxonomy/views_handler_relationship_node_term_data.test', 'views', '0'),
('ViewsHandlerSortDateTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_sort_date.test', 'views', '0'),
('ViewsHandlerSortRandomTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_sort_random.test', 'views', '0'),
('ViewsHandlerSortTest', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_sort.test', 'views', '0'),
('ViewsHandlersTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_handlers.test', 'views', '0'),
('ViewsHandlerTestFileSize', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_file_size.test', 'views', '0'),
('ViewsHandlerTestXss', 'class', 'profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_xss.test', 'views', '0'),
('ViewsModuleTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_module.test', 'views', '0'),
('ViewsNodeRevisionRelationsTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/node/views_node_revision_relations.test', 'views', '0'),
('ViewsPagerTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_pager.test', 'views', '0'),
('ViewsPluginDisplayTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/plugins/views_plugin_display.test', 'views', '0'),
('viewsPluginStyleJumpMenuTest', 'class', 'profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_jump_menu.test', 'views', '0'),
('ViewsPluginStyleMappingTest', 'class', 'profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_mapping.test', 'views', '0'),
('ViewsPluginStyleTestBase', 'class', 'profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_base.test', 'views', '0'),
('ViewsPluginStyleTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/styles/views_plugin_style.test', 'views', '0'),
('ViewsPluginStyleUnformattedTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_unformatted.test', 'views', '0'),
('ViewsQueryGroupByTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_groupby.test', 'views', '0'),
('viewsSearchQuery', 'class', 'profiles/spark/modules/contrib/views/modules/search/views_handler_filter_search.inc', 'views', '0'),
('ViewsSqlTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_query.test', 'views', '0'),
('ViewsTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_query.test', 'views', '0'),
('ViewsTranslatableTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_translatable.test', 'views', '0'),
('ViewsUiBaseViewsWizard', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_base_views_wizard.class.php', 'views_ui', '0'),
('ViewsUiCommentViewsWizard', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_comment_views_wizard.class.php', 'views_ui', '0'),
('ViewsUiFileManagedViewsWizard', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_file_managed_views_wizard.class.php', 'views_ui', '0'),
('viewsUiGroupbyTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_groupby.test', 'views', '0'),
('ViewsUiNodeRevisionViewsWizard', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_node_revision_views_wizard.class.php', 'views_ui', '0'),
('ViewsUiNodeViewsWizard', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_node_views_wizard.class.php', 'views_ui', '0'),
('ViewsUiTaxonomyTermViewsWizard', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_taxonomy_term_views_wizard.class.php', 'views_ui', '0'),
('ViewsUiUsersViewsWizard', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_users_views_wizard.class.php', 'views_ui', '0'),
('ViewsUIWizardBasicTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardDefaultViewsTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardHelper', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardItemsPerPageTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardJumpMenuTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardMenuTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardOverrideDisplaysTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardSortingTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUIWizardTaggedWithTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_ui.test', 'views', '0'),
('ViewsUpgradeTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/views_upgrade.test', 'views', '0'),
('ViewsUserArgumentDefault', 'class', 'profiles/spark/modules/contrib/views/tests/user/views_user_argument_default.test', 'views', '0'),
('ViewsUserArgumentValidate', 'class', 'profiles/spark/modules/contrib/views/tests/user/views_user_argument_validate.test', 'views', '0'),
('ViewsUserTestCase', 'class', 'profiles/spark/modules/contrib/views/tests/user/views_user.test', 'views', '0'),
('ViewsViewTest', 'class', 'profiles/spark/modules/contrib/views/tests/views_view.test', 'views', '0'),
('ViewsWizardException', 'class', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_base_views_wizard.class.php', 'views_ui', '0'),
('ViewsWizardInterface', 'interface', 'profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_base_views_wizard.class.php', 'views_ui', '0'),
('views_bulk_operations_handler_field_operations', 'class', 'sites/all/modules/contrib/usability/views_bulk_operations/views/views_bulk_operations_handler_field_operations.inc', 'views_bulk_operations', '0'),
('views_db_object', 'class', 'profiles/spark/modules/contrib/views/includes/view.inc', 'views', '0'),
('views_display', 'class', 'profiles/spark/modules/contrib/views/includes/view.inc', 'views', '0'),
('views_handler', 'class', 'profiles/spark/modules/contrib/views/includes/handlers.inc', 'views', '0'),
('views_handler_area', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_area.inc', 'views', '0'),
('views_handler_area_broken', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_area.inc', 'views', '0'),
('views_handler_area_result', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_area_result.inc', 'views', '0'),
('views_handler_area_text', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_area_text.inc', 'views', '0'),
('views_handler_area_text_custom', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_area_text_custom.inc', 'views', '0'),
('views_handler_area_view', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_area_view.inc', 'views', '0'),
('views_handler_argument', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument.inc', 'views', '0'),
('views_handler_argument_aggregator_category_cid', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_handler_argument_aggregator_category_cid.inc', 'views', '0'),
('views_handler_argument_aggregator_fid', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_handler_argument_aggregator_fid.inc', 'views', '0'),
('views_handler_argument_aggregator_iid', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_handler_argument_aggregator_iid.inc', 'views', '0'),
('views_handler_argument_broken', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument.inc', 'views', '0'),
('views_handler_argument_comment_user_uid', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_argument_comment_user_uid.inc', 'views', '0'),
('views_handler_argument_date', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument_date.inc', 'views', '0'),
('views_handler_argument_field_list', 'class', 'profiles/spark/modules/contrib/views/modules/field/views_handler_argument_field_list.inc', 'views', '0'),
('views_handler_argument_field_list_string', 'class', 'profiles/spark/modules/contrib/views/modules/field/views_handler_argument_field_list_string.inc', 'views', '0'),
('views_handler_argument_file_fid', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_argument_file_fid.inc', 'views', '0'),
('views_handler_argument_formula', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument_formula.inc', 'views', '0'),
('views_handler_argument_group_by_numeric', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument_group_by_numeric.inc', 'views', '0'),
('views_handler_argument_locale_group', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_argument_locale_group.inc', 'views', '0');
INSERT INTO `registry` VALUES
('views_handler_argument_locale_language', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_argument_locale_language.inc', 'views', '0'),
('views_handler_argument_many_to_one', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument_many_to_one.inc', 'views', '0'),
('views_handler_argument_node_created_day', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_dates_various.inc', 'views', '0'),
('views_handler_argument_node_created_fulldate', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_dates_various.inc', 'views', '0'),
('views_handler_argument_node_created_month', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_dates_various.inc', 'views', '0'),
('views_handler_argument_node_created_week', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_dates_various.inc', 'views', '0'),
('views_handler_argument_node_created_year', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_dates_various.inc', 'views', '0'),
('views_handler_argument_node_created_year_month', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_dates_various.inc', 'views', '0'),
('views_handler_argument_node_language', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_language.inc', 'views', '0'),
('views_handler_argument_node_nid', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_nid.inc', 'views', '0'),
('views_handler_argument_node_tnid', 'class', 'profiles/spark/modules/contrib/views/modules/translation/views_handler_argument_node_tnid.inc', 'views', '0'),
('views_handler_argument_node_type', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_type.inc', 'views', '0'),
('views_handler_argument_node_uid_revision', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_uid_revision.inc', 'views', '0'),
('views_handler_argument_node_vid', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_vid.inc', 'views', '0'),
('views_handler_argument_null', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument_null.inc', 'views', '0'),
('views_handler_argument_numeric', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument_numeric.inc', 'views', '0'),
('views_handler_argument_search', 'class', 'profiles/spark/modules/contrib/views/modules/search/views_handler_argument_search.inc', 'views', '0'),
('views_handler_argument_string', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_argument_string.inc', 'views', '0'),
('views_handler_argument_taxonomy', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_taxonomy.inc', 'views', '0'),
('views_handler_argument_term_node_tid', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_term_node_tid.inc', 'views', '0'),
('views_handler_argument_term_node_tid_depth', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_term_node_tid_depth.inc', 'views', '0'),
('views_handler_argument_term_node_tid_depth_modifier', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_term_node_tid_depth_modifier.inc', 'views', '0'),
('views_handler_argument_tracker_comment_user_uid', 'class', 'profiles/spark/modules/contrib/views/modules/tracker/views_handler_argument_tracker_comment_user_uid.inc', 'views', '0'),
('views_handler_argument_users_roles_rid', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_argument_users_roles_rid.inc', 'views', '0'),
('views_handler_argument_user_uid', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_argument_user_uid.inc', 'views', '0'),
('views_handler_argument_vocabulary_machine_name', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_vocabulary_machine_name.inc', 'views', '0'),
('views_handler_argument_vocabulary_vid', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_vocabulary_vid.inc', 'views', '0'),
('views_handler_field', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field.inc', 'views', '0'),
('views_handler_field_accesslog_path', 'class', 'profiles/spark/modules/contrib/views/modules/statistics/views_handler_field_accesslog_path.inc', 'views', '0'),
('views_handler_field_aggregator_category', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_handler_field_aggregator_category.inc', 'views', '0'),
('views_handler_field_aggregator_title_link', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_handler_field_aggregator_title_link.inc', 'views', '0'),
('views_handler_field_aggregator_xss', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_handler_field_aggregator_xss.inc', 'views', '0'),
('views_handler_field_boolean', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_boolean.inc', 'views', '0'),
('views_handler_field_broken', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field.inc', 'views', '0'),
('views_handler_field_comment', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment.inc', 'views', '0'),
('views_handler_field_comment_depth', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_depth.inc', 'views', '0'),
('views_handler_field_comment_link', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link.inc', 'views', '0'),
('views_handler_field_comment_link_approve', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_approve.inc', 'views', '0'),
('views_handler_field_comment_link_delete', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_delete.inc', 'views', '0'),
('views_handler_field_comment_link_edit', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_edit.inc', 'views', '0'),
('views_handler_field_comment_link_reply', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_reply.inc', 'views', '0'),
('views_handler_field_comment_node_link', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_node_link.inc', 'views', '0'),
('views_handler_field_comment_username', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_username.inc', 'views', '0'),
('views_handler_field_contact_link', 'class', 'profiles/spark/modules/contrib/views/modules/contact/views_handler_field_contact_link.inc', 'views', '0'),
('views_handler_field_contextual_links', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_contextual_links.inc', 'views', '0'),
('views_handler_field_counter', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_counter.inc', 'views', '0'),
('views_handler_field_custom', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_custom.inc', 'views', '0'),
('views_handler_field_date', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_date.inc', 'views', '0'),
('views_handler_field_entity', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_entity.inc', 'views', '0'),
('views_handler_field_field', 'class', 'profiles/spark/modules/contrib/views/modules/field/views_handler_field_field.inc', 'views', '0'),
('views_handler_field_file', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_field_file.inc', 'views', '0'),
('views_handler_field_file_extension', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_extension.inc', 'views', '0'),
('views_handler_field_file_filemime', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_filemime.inc', 'views', '0'),
('views_handler_field_file_size', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field.inc', 'views', '0'),
('views_handler_field_file_status', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_status.inc', 'views', '0'),
('views_handler_field_file_uri', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_uri.inc', 'views', '0'),
('views_handler_field_filter_format_name', 'class', 'profiles/spark/modules/contrib/views/modules/filter/views_handler_field_filter_format_name.inc', 'views', '0'),
('views_handler_field_history_user_timestamp', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_history_user_timestamp.inc', 'views', '0'),
('views_handler_field_last_comment_timestamp', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_last_comment_timestamp.inc', 'views', '0'),
('views_handler_field_locale_group', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_field_locale_group.inc', 'views', '0'),
('views_handler_field_locale_language', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_field_locale_language.inc', 'views', '0'),
('views_handler_field_locale_link_edit', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_field_locale_link_edit.inc', 'views', '0'),
('views_handler_field_machine_name', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_machine_name.inc', 'views', '0'),
('views_handler_field_markup', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_markup.inc', 'views', '0'),
('views_handler_field_math', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_math.inc', 'views', '0'),
('views_handler_field_ncs_last_comment_name', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_ncs_last_comment_name.inc', 'views', '0'),
('views_handler_field_ncs_last_updated', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_ncs_last_updated.inc', 'views', '0'),
('views_handler_field_node', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node.inc', 'views', '0'),
('views_handler_field_node_comment', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_node_comment.inc', 'views', '0'),
('views_handler_field_node_language', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_field_node_language.inc', 'views', '0'),
('views_handler_field_node_link', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_link.inc', 'views', '0'),
('views_handler_field_node_link_delete', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_link_delete.inc', 'views', '0'),
('views_handler_field_node_link_edit', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_link_edit.inc', 'views', '0'),
('views_handler_field_node_link_translate', 'class', 'profiles/spark/modules/contrib/views/modules/translation/views_handler_field_node_link_translate.inc', 'views', '0'),
('views_handler_field_node_new_comments', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_field_node_new_comments.inc', 'views', '0'),
('views_handler_field_node_path', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_path.inc', 'views', '0'),
('views_handler_field_node_revision', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision.inc', 'views', '0'),
('views_handler_field_node_revision_link', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision_link.inc', 'views', '0'),
('views_handler_field_node_revision_link_delete', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision_link_delete.inc', 'views', '0'),
('views_handler_field_node_revision_link_revert', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision_link_revert.inc', 'views', '0'),
('views_handler_field_node_translation_link', 'class', 'profiles/spark/modules/contrib/views/modules/translation/views_handler_field_node_translation_link.inc', 'views', '0'),
('views_handler_field_node_type', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_type.inc', 'views', '0'),
('views_handler_field_numeric', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_numeric.inc', 'views', '0'),
('views_handler_field_prerender_list', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_prerender_list.inc', 'views', '0'),
('views_handler_field_profile_date', 'class', 'profiles/spark/modules/contrib/views/modules/profile/views_handler_field_profile_date.inc', 'views', '0'),
('views_handler_field_profile_list', 'class', 'profiles/spark/modules/contrib/views/modules/profile/views_handler_field_profile_list.inc', 'views', '0'),
('views_handler_field_search_score', 'class', 'profiles/spark/modules/contrib/views/modules/search/views_handler_field_search_score.inc', 'views', '0'),
('views_handler_field_serialized', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_serialized.inc', 'views', '0'),
('views_handler_field_taxonomy', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_field_taxonomy.inc', 'views', '0'),
('views_handler_field_term_link_edit', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_field_term_link_edit.inc', 'views', '0'),
('views_handler_field_term_node_tid', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_field_term_node_tid.inc', 'views', '0'),
('views_handler_field_time_interval', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_time_interval.inc', 'views', '0'),
('views_handler_field_url', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field_url.inc', 'views', '0'),
('views_handler_field_user', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user.inc', 'views', '0'),
('views_handler_field_user_language', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_language.inc', 'views', '0'),
('views_handler_field_user_link', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_link.inc', 'views', '0'),
('views_handler_field_user_link_cancel', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_link_cancel.inc', 'views', '0'),
('views_handler_field_user_link_edit', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_link_edit.inc', 'views', '0'),
('views_handler_field_user_mail', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_mail.inc', 'views', '0'),
('views_handler_field_user_name', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_name.inc', 'views', '0'),
('views_handler_field_user_permissions', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_permissions.inc', 'views', '0'),
('views_handler_field_user_picture', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_picture.inc', 'views', '0'),
('views_handler_field_user_roles', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_roles.inc', 'views', '0'),
('views_handler_field_xss', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_field.inc', 'views', '0'),
('views_handler_filter', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter.inc', 'views', '0'),
('views_handler_filter_aggregator_category_cid', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_handler_filter_aggregator_category_cid.inc', 'views', '0'),
('views_handler_filter_boolean_operator', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_boolean_operator.inc', 'views', '0'),
('views_handler_filter_boolean_operator_string', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_boolean_operator_string.inc', 'views', '0'),
('views_handler_filter_broken', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter.inc', 'views', '0'),
('views_handler_filter_combine', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_combine.inc', 'views', '0'),
('views_handler_filter_comment_user_uid', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_filter_comment_user_uid.inc', 'views', '0'),
('views_handler_filter_date', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_date.inc', 'views', '0'),
('views_handler_filter_entity_bundle', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_entity_bundle.inc', 'views', '0'),
('views_handler_filter_equality', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_equality.inc', 'views', '0'),
('views_handler_filter_field_list', 'class', 'profiles/spark/modules/contrib/views/modules/field/views_handler_filter_field_list.inc', 'views', '0'),
('views_handler_filter_file_status', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_filter_file_status.inc', 'views', '0'),
('views_handler_filter_group_by_numeric', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_group_by_numeric.inc', 'views', '0'),
('views_handler_filter_history_user_timestamp', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_filter_history_user_timestamp.inc', 'views', '0'),
('views_handler_filter_in_operator', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_in_operator.inc', 'views', '0'),
('views_handler_filter_locale_group', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_locale_group.inc', 'views', '0'),
('views_handler_filter_locale_language', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_locale_language.inc', 'views', '0'),
('views_handler_filter_locale_version', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_locale_version.inc', 'views', '0'),
('views_handler_filter_many_to_one', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_many_to_one.inc', 'views', '0'),
('views_handler_filter_ncs_last_updated', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_filter_ncs_last_updated.inc', 'views', '0'),
('views_handler_filter_node_access', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_access.inc', 'views', '0'),
('views_handler_filter_node_comment', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_filter_node_comment.inc', 'views', '0'),
('views_handler_filter_node_language', 'class', 'profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_node_language.inc', 'views', '0'),
('views_handler_filter_node_status', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_status.inc', 'views', '0'),
('views_handler_filter_node_tnid', 'class', 'profiles/spark/modules/contrib/views/modules/translation/views_handler_filter_node_tnid.inc', 'views', '0'),
('views_handler_filter_node_tnid_child', 'class', 'profiles/spark/modules/contrib/views/modules/translation/views_handler_filter_node_tnid_child.inc', 'views', '0'),
('views_handler_filter_node_type', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_type.inc', 'views', '0'),
('views_handler_filter_node_uid_revision', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_uid_revision.inc', 'views', '0'),
('views_handler_filter_numeric', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_numeric.inc', 'views', '0'),
('views_handler_filter_profile_selection', 'class', 'profiles/spark/modules/contrib/views/modules/profile/views_handler_filter_profile_selection.inc', 'views', '0'),
('views_handler_filter_search', 'class', 'profiles/spark/modules/contrib/views/modules/search/views_handler_filter_search.inc', 'views', '0'),
('views_handler_filter_string', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_filter_string.inc', 'views', '0'),
('views_handler_filter_system_type', 'class', 'profiles/spark/modules/contrib/views/modules/system/views_handler_filter_system_type.inc', 'views', '0'),
('views_handler_filter_term_node_tid', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_term_node_tid.inc', 'views', '0'),
('views_handler_filter_term_node_tid_depth', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_term_node_tid_depth.inc', 'views', '0'),
('views_handler_filter_tracker_boolean_operator', 'class', 'profiles/spark/modules/contrib/views/modules/tracker/views_handler_filter_tracker_boolean_operator.inc', 'views', '0'),
('views_handler_filter_tracker_comment_user_uid', 'class', 'profiles/spark/modules/contrib/views/modules/tracker/views_handler_filter_tracker_comment_user_uid.inc', 'views', '0'),
('views_handler_filter_user_current', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_current.inc', 'views', '0'),
('views_handler_filter_user_name', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_name.inc', 'views', '0'),
('views_handler_filter_user_permissions', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_permissions.inc', 'views', '0'),
('views_handler_filter_user_roles', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_roles.inc', 'views', '0'),
('views_handler_filter_vocabulary_machine_name', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_vocabulary_machine_name.inc', 'views', '0'),
('views_handler_filter_vocabulary_vid', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_vocabulary_vid.inc', 'views', '0'),
('views_handler_relationship', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_relationship.inc', 'views', '0'),
('views_handler_relationship_broken', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_relationship.inc', 'views', '0'),
('views_handler_relationship_entity_reverse', 'class', 'profiles/spark/modules/contrib/views/modules/field/views_handler_relationship_entity_reverse.inc', 'views', '0'),
('views_handler_relationship_groupwise_max', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_relationship_groupwise_max.inc', 'views', '0'),
('views_handler_relationship_node_term_data', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_relationship_node_term_data.inc', 'views', '0'),
('views_handler_relationship_translation', 'class', 'profiles/spark/modules/contrib/views/modules/translation/views_handler_relationship_translation.inc', 'views', '0'),
('views_handler_sort', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_sort.inc', 'views', '0'),
('views_handler_sort_broken', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_sort.inc', 'views', '0'),
('views_handler_sort_comment_thread', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_sort_comment_thread.inc', 'views', '0'),
('views_handler_sort_date', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_sort_date.inc', 'views', '0'),
('views_handler_sort_group_by_numeric', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_sort_group_by_numeric.inc', 'views', '0'),
('views_handler_sort_menu_hierarchy', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_sort_menu_hierarchy.inc', 'views', '0'),
('views_handler_sort_ncs_last_comment_name', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_sort_ncs_last_comment_name.inc', 'views', '0'),
('views_handler_sort_ncs_last_updated', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_handler_sort_ncs_last_updated.inc', 'views', '0'),
('views_handler_sort_random', 'class', 'profiles/spark/modules/contrib/views/handlers/views_handler_sort_random.inc', 'views', '0'),
('views_handler_sort_search_score', 'class', 'profiles/spark/modules/contrib/views/modules/search/views_handler_sort_search_score.inc', 'views', '0'),
('views_join', 'class', 'profiles/spark/modules/contrib/views/includes/handlers.inc', 'views', '0'),
('views_join_subquery', 'class', 'profiles/spark/modules/contrib/views/includes/handlers.inc', 'views', '0'),
('views_many_to_one_helper', 'class', 'profiles/spark/modules/contrib/views/includes/handlers.inc', 'views', '0'),
('views_object', 'class', 'profiles/spark/modules/contrib/views/includes/base.inc', 'views', '0'),
('views_plugin', 'class', 'profiles/spark/modules/contrib/views/includes/plugins.inc', 'views', '0'),
('views_plugin_access', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_access.inc', 'views', '0'),
('views_plugin_access_menu', 'class', 'sites/all/modules/contrib/usability/admin_views/plugins/views_plugin_access_menu.inc', 'admin_views', '12'),
('views_plugin_access_none', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_access_none.inc', 'views', '0'),
('views_plugin_access_perm', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_access_perm.inc', 'views', '0'),
('views_plugin_access_role', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_access_role.inc', 'views', '0'),
('views_plugin_argument_default', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default.inc', 'views', '0'),
('views_plugin_argument_default_book_root', 'class', 'profiles/spark/modules/contrib/views/modules/book/views_plugin_argument_default_book_root.inc', 'views', '0'),
('views_plugin_argument_default_current_user', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_plugin_argument_default_current_user.inc', 'views', '0'),
('views_plugin_argument_default_fixed', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default_fixed.inc', 'views', '0'),
('views_plugin_argument_default_node', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_plugin_argument_default_node.inc', 'views', '0'),
('views_plugin_argument_default_php', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default_php.inc', 'views', '0'),
('views_plugin_argument_default_raw', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default_raw.inc', 'views', '0'),
('views_plugin_argument_default_taxonomy_tid', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_plugin_argument_default_taxonomy_tid.inc', 'views', '0'),
('views_plugin_argument_default_user', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_plugin_argument_default_user.inc', 'views', '0'),
('views_plugin_argument_validate', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_argument_validate.inc', 'views', '0'),
('views_plugin_argument_validate_node', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_plugin_argument_validate_node.inc', 'views', '0'),
('views_plugin_argument_validate_numeric', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_argument_validate_numeric.inc', 'views', '0'),
('views_plugin_argument_validate_php', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_argument_validate_php.inc', 'views', '0'),
('views_plugin_argument_validate_taxonomy_term', 'class', 'profiles/spark/modules/contrib/views/modules/taxonomy/views_plugin_argument_validate_taxonomy_term.inc', 'views', '0'),
('views_plugin_argument_validate_user', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_plugin_argument_validate_user.inc', 'views', '0'),
('views_plugin_cache', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_cache.inc', 'views', '0'),
('views_plugin_cache_none', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_cache_none.inc', 'views', '0'),
('views_plugin_cache_time', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_cache_time.inc', 'views', '0'),
('views_plugin_display', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display.inc', 'views', '0'),
('views_plugin_display_attachment', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display_attachment.inc', 'views', '0'),
('views_plugin_display_block', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display_block.inc', 'views', '0'),
('views_plugin_display_default', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display_default.inc', 'views', '0'),
('views_plugin_display_embed', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display_embed.inc', 'views', '0'),
('views_plugin_display_extender', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display_extender.inc', 'views', '0'),
('views_plugin_display_feed', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display_feed.inc', 'views', '0'),
('views_plugin_display_page', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_display_page.inc', 'views', '0'),
('views_plugin_display_system', 'class', 'sites/all/modules/contrib/usability/admin_views/plugins/views_plugin_display_system.inc', 'admin_views', '12'),
('views_plugin_exposed_form', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_exposed_form.inc', 'views', '0'),
('views_plugin_exposed_form_basic', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_exposed_form_basic.inc', 'views', '0'),
('views_plugin_exposed_form_input_required', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_exposed_form_input_required.inc', 'views', '0'),
('views_plugin_localization', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_localization.inc', 'views', '0'),
('views_plugin_localization_core', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_localization_core.inc', 'views', '0'),
('views_plugin_localization_none', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_localization_none.inc', 'views', '0'),
('views_plugin_localization_test', 'class', 'profiles/spark/modules/contrib/views/tests/views_plugin_localization_test.inc', 'views', '0'),
('views_plugin_pager', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_pager.inc', 'views', '0'),
('views_plugin_pager_full', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_pager_full.inc', 'views', '0'),
('views_plugin_pager_mini', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_pager_mini.inc', 'views', '0'),
('views_plugin_pager_none', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_pager_none.inc', 'views', '0'),
('views_plugin_pager_some', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_pager_some.inc', 'views', '0'),
('views_plugin_query', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_query.inc', 'views', '0'),
('views_plugin_query_default', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_query_default.inc', 'views', '0'),
('views_plugin_row', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_row.inc', 'views', '0'),
('views_plugin_row_aggregator_rss', 'class', 'profiles/spark/modules/contrib/views/modules/aggregator/views_plugin_row_aggregator_rss.inc', 'views', '0'),
('views_plugin_row_comment_rss', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_plugin_row_comment_rss.inc', 'views', '0'),
('views_plugin_row_comment_view', 'class', 'profiles/spark/modules/contrib/views/modules/comment/views_plugin_row_comment_view.inc', 'views', '0'),
('views_plugin_row_fields', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_row_fields.inc', 'views', '0'),
('views_plugin_row_node_rss', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_plugin_row_node_rss.inc', 'views', '0'),
('views_plugin_row_node_view', 'class', 'profiles/spark/modules/contrib/views/modules/node/views_plugin_row_node_view.inc', 'views', '0'),
('views_plugin_row_rss_fields', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_row_rss_fields.inc', 'views', '0'),
('views_plugin_row_search_view', 'class', 'profiles/spark/modules/contrib/views/modules/search/views_plugin_row_search_view.inc', 'views', '0'),
('views_plugin_row_user_view', 'class', 'profiles/spark/modules/contrib/views/modules/user/views_plugin_row_user_view.inc', 'views', '0'),
('views_plugin_style', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style.inc', 'views', '0'),
('views_plugin_style_default', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_default.inc', 'views', '0'),
('views_plugin_style_grid', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_grid.inc', 'views', '0'),
('views_plugin_style_jump_menu', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_jump_menu.inc', 'views', '0'),
('views_plugin_style_list', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_list.inc', 'views', '0'),
('views_plugin_style_mapping', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_mapping.inc', 'views', '0'),
('views_plugin_style_rss', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_rss.inc', 'views', '0'),
('views_plugin_style_summary', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_summary.inc', 'views', '0'),
('views_plugin_style_summary_jump_menu', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_summary_jump_menu.inc', 'views', '0'),
('views_plugin_style_summary_unformatted', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_summary_unformatted.inc', 'views', '0'),
('views_plugin_style_table', 'class', 'profiles/spark/modules/contrib/views/plugins/views_plugin_style_table.inc', 'views', '0'),
('views_test_plugin_access_test_dynamic', 'class', 'profiles/spark/modules/contrib/views/tests/test_plugins/views_test_plugin_access_test_dynamic.inc', 'views', '0'),
('views_test_plugin_access_test_static', 'class', 'profiles/spark/modules/contrib/views/tests/test_plugins/views_test_plugin_access_test_static.inc', 'views', '0'),
('views_test_plugin_style_test_mapping', 'class', 'profiles/spark/modules/contrib/views/tests/test_plugins/views_test_plugin_style_test_mapping.inc', 'views', '0'),
('views_ui', 'class', 'profiles/spark/modules/contrib/views/plugins/export_ui/views_ui.class.php', 'views_ui', '0');
/*!40000 ALTER TABLE registry ENABLE KEYS */;

--
-- Table structure for table 'registry_file'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Files parsed to build the registry.';

--
-- Dumping data for table 'registry_file'
--

/*!40000 ALTER TABLE registry_file DISABLE KEYS */;
INSERT INTO `registry_file` VALUES
('includes/actions.inc', 'f36b066681463c7dfe189e0430cb1a89bf66f7e228cbb53cdfcd93987193f759'),
('includes/ajax.inc', '8328ec7441a0c101c1b39ba8d415c1d951b400887d8b29d2831210ae207f86eb'),
('includes/archiver.inc', 'bdbb21b712a62f6b913590b609fd17cd9f3c3b77c0d21f68e71a78427ed2e3e9'),
('includes/authorize.inc', '6d64d8c21aa01eb12fc29918732e4df6b871ed06e5d41373cb95c197ed661d13'),
('includes/batch.inc', '059da9e36e1f3717f27840aae73f10dea7d6c8daf16f6520401cc1ca3b4c0388'),
('includes/batch.queue.inc', '554b2e92e1dad0f7fd5a19cb8dff7e109f10fbe2441a5692d076338ec908de0f'),
('includes/bootstrap.inc', '8d7fd25c5cde6113b140ef70527735bf39f8eb822c608d8353f88b3edae3fe2e'),
('includes/cache-install.inc', 'e7ed123c5805703c84ad2cce9c1ca46b3ce8caeeea0d8ef39a3024a4ab95fa0e'),
('includes/cache.inc', 'c9d3df7ff9807bb4421d66b4579c2ef5ca4d74954a8184bd04881d179f22ccb2'),
('includes/common.inc', 'ff9d279dd929433e1c85de5f5172b283f6c5f06fa381cc18a66816a45160384d'),
('includes/database/database.inc', '1597142a1fbd6fcff24f2bb92805a1c98b7bc36520cc68007bc7383effcaf890'),
('includes/database/log.inc', '9feb5a17ae2fabcf26a96d2a634ba73da501f7bcfc3599a693d916a6971d00d1'),
('includes/database/mysql/database.inc', '8d3a784845064385ccdce8a66860f3177d52207df83d9735c0d72c9703dd258e'),
('includes/database/mysql/install.inc', '6ae316941f771732fbbabed7e1d6b4cbb41b1f429dd097d04b3345aa15e461a0'),
('includes/database/mysql/query.inc', '7d9ea18a7ff04b7aab6210abbd0313cb53325c19a47ff8ed6c0e591c6e7149c2'),
('includes/database/mysql/schema.inc', 'd8d3904ea9c23a526c2f2a7acc8ba870b31c378aac2eb53e2e41a73c6209c5bd'),
('includes/database/pgsql/database.inc', '56726100fd44f461a04886c590c9c472cc2b2a1b92eb26c7674bf3821a76bb64'),
('includes/database/pgsql/install.inc', '585b80c5bbd6f134bff60d06397f15154657a577d4da8d1b181858905f09dea5'),
('includes/database/pgsql/query.inc', 'cb4c84f8f1ffc73098ed71137248dcd078a505a7530e60d979d74b3a3cdaa658'),
('includes/database/pgsql/schema.inc', '8fd647e4557522283caef63e528c6e403fc0751a46e94aac867a281af85eac27'),
('includes/database/pgsql/select.inc', 'fd4bba7887c1dc6abc8f080fc3a76c01d92ea085434e355dc1ecb50d8743c22d'),
('includes/database/prefetch.inc', 'b5b207a66a69ecb52ee4f4459af16a7b5eabedc87254245f37cc33bebb61c0fb'),
('includes/database/query.inc', 'dad26c5d42eda178f8a858194a912fe5df2b7091bd038b23af26aee249166c76'),
('includes/database/schema.inc', '7eb7251f331109757173353263d1031493c1198ae17a165a6f5a03d3f14f93e7'),
('includes/database/select.inc', '1c74fa55c7721a704f5ef3389032604bf7a60fced15c40d844aee3e1cead7dc6'),
('includes/database/sqlite/database.inc', 'ed2b9981794239cdad2cd04cf4bcdc896ad4d6b66179a4fa487b0d1ec2150a10'),
('includes/database/sqlite/install.inc', '381f3db8c59837d961978ba3097bb6443534ed1659fd713aa563963fa0c42cc5'),
('includes/database/sqlite/query.inc', 'cd726af682495d8fe20283ddbc4d877536cad2df4a2df8afc2dc21be71a4eba8'),
('includes/database/sqlite/schema.inc', '238414785aa96dd27f10f48c961783f4d1091392beee8d0e7ca8ae774e917da2'),
('includes/database/sqlite/select.inc', '8d1c426dbd337733c206cce9f59a172546c6ed856d8ef3f1c7bef05a16f7bf68'),
('includes/date.inc', '18c047be64f201e16d189f1cc47ed9dcf0a145151b1ee187e90511b24e5d2b36'),
('includes/entity.inc', '93ed9b3f29fb2a75852af3b4cf03ce0edf3e9eddf19e4b82eeba8659d3d5bc78'),
('includes/errors.inc', '0923cf3303e0e976756d159c80c86bbe039109bd90a35a9aca18027c68abd0aa'),
('includes/file.inc', '4eeef6f486c843ff91e5eaa5ee435e66d89dd516c76b980c79d3c6595fe6bf2d'),
('includes/file.mimetypes.inc', 'f88c967550576694b7a1ce2afd0f2f1bbc1a91d21cc2c20f86c44d39ff353867'),
('includes/filetransfer/filetransfer.inc', 'fdea8ae48345ec91885ac48a9bc53daf87616271472bb7c29b7e3ce219b22034'),
('includes/filetransfer/ftp.inc', '589ebf4b8bd4a2973aa56a156ac1fa83b6c73e703391361fb573167670e0d832'),
('includes/filetransfer/local.inc', '7cbfdb46abbdf539640db27e66fb30e5265128f31002bd0dfc3af16ae01a9492'),
('includes/filetransfer/ssh.inc', '002e24a24cac133d12728bd3843868ce378681237d7fad420761af84e6efe5ad'),
('includes/form.inc', '5ab6ebd03a6852acd532fb3e06ce4d90c983246ba1f9506437fa19566729893d'),
('includes/graph.inc', '8e0e313a8bb33488f371df11fc1b58d7cf80099b886cd1003871e2c896d1b536'),
('includes/image.inc', 'bcdc7e1599c02227502b9d0fe36eeb2b529b130a392bc709eb737647bd361826'),
('includes/install.core.inc', '2a036b695c555d7339115099e0b7b06bf7fbafbaad6d7cc143e49969ff96c394'),
('includes/install.inc', 'f4e81c6b55769e0b5cc66565ade31d1f805faf11f73ca605bd3506a78ec1b7ee'),
('includes/iso.inc', '27730e6175b79c3b5d494582a124f6210289faa03bef099e16347bb914464c66'),
('includes/json-encode.inc', '02a822a652d00151f79db9aa9e171c310b69b93a12f549bc2ce00533a8efa14e'),
('includes/language.inc', '77ef0c210a8f01d4ad24b13b147db3db0dcef801dbae8b644124cedd562a8a57'),
('includes/locale.inc', '8cc571c114587f2b30e4e24db17e97e51e81f9cc395fa01f348aba12cee8523e'),
('includes/lock.inc', 'daa62e95528f6b986b85680b600a896452bf2ce6f38921242857dcc5a3460a1b'),
('includes/mail.inc', '8b37b30d82941010eacf8f435abbf9cb5b6cfc2710c3446a5037192ae14d68bf'),
('includes/menu.inc', '1b6ad3883f405b887032d8b2e58e6e3870a37f6963854275e0c0d9e1b12a624c'),
('includes/module.inc', '09dd0e483fd1c5569183ff0663543163d5262ec5eb9c4551c2214fd7599f386b'),
('includes/pager.inc', '6f9494b85c07a2cc3be4e54aff2d2757485238c476a7da084d25bde1d88be6d8'),
('includes/password.inc', '7550ac434a929562a3380e82c546afbf9163598b22f2351f0e7d3f19567fb6c9'),
('includes/path.inc', 'd20d3efabcb752fcafafc887fc0f09704d87000742302f95cf58e62333d05279'),
('includes/registry.inc', '4ffb8c9c8c179c1417ff01790f339edf50b5f7cc0c8bb976eef6858cc71e9bc8'),
('includes/session.inc', '65764101f3746e25210e8a91a9c058218c83c7bf444051ba339c412a2d2bff63'),
('includes/stream_wrappers.inc', 'b04e31585a9a397b0edf7b3586050cbd4b1f631e283296e1c93f4356662faeb9'),
('includes/tablesort.inc', '4cb2a5a2d41b2a204a13f59085096e3f64237d32639ea5d30752905099bc7540'),
('includes/theme.inc', 'f1a3045e917b454f23842e048f8753c7dc1e97bf8999bb8eeb4f72cee3cc7553'),
('includes/theme.maintenance.inc', '39f068b3eee4d10a90d6aa3c86db587b6d25844c2919d418d34d133cfe330f5a'),
('includes/token.inc', '5e7898cd78689e2c291ed3cd8f41c032075656896f1db57e49217aac19ae0428'),
('includes/unicode.entities.inc', '2b858138596d961fbaa4c6e3986e409921df7f76b6ee1b109c4af5970f1e0f54'),
('includes/unicode.inc', '518ad21bd4f43814277d67f76ff8eb2b99bd1be4caa5e02b6e5f06cf65d84eb0'),
('includes/update.inc', '177ce24362efc7f28b384c90a09c3e485396bbd18c3721d4b21e57dd1733bd92'),
('includes/updater.inc', 'd2da0e74ed86e93c209f16069f3d32e1a134ceb6c06a0044f78e841a1b54e380'),
('includes/utility.inc', '3458fd2b55ab004dd0cc529b8e58af12916e8bd36653b072bdd820b26b907ed5'),
('includes/xmlrpc.inc', 'c5b6ea78adeb135373d11aeaaea057d9fa8995faa4e8c0fec9b7c647f15cc4e0'),
('includes/xmlrpcs.inc', '79dc6e9882f4c506123d7dd8e228a61e22c46979c3aab21a5b1afa315ef6639c'),
('modules/block/block.test', '7aefd627d62b44f9c1e9ee3aa9da6c6e2a7cfce01c6613e8bd24c0b9c464dd73'),
('modules/color/color.test', '013806279bd47ceb2f82ca854b57f880ba21058f7a2592c422afae881a7f5d15'),
('modules/comment/comment.module', 'f7d4b93359bf3d6381204a0f63e6574ece4f45656d53d126f04067891d1d64b1'),
('modules/comment/comment.test', '5404277c15b1306a1ad5eca6703f7d2003567fea6085ffd2b1c3d65896acdf21'),
('modules/contextual/contextual.test', '023dafa199bd325ecc55a17b2a3db46ac0a31e23059f701f789f3bc42427ba0b'),
('modules/dblog/dblog.test', '6f5da69432a186df5086f9a588c9c18ad85bb3034bccc3860423d9e854c0d864'),
('modules/field/field.attach.inc', '25d05fb8ab30ba559051ca2034ea7e61bd1326cacb12dfeb865e90e2ffd147e6'),
('modules/field/field.info.class.inc', 'c2e4bc67ef51e4956c913be772914b1b2625aa5066ab67c74baf6404ed538174'),
('modules/field/field.module', 'd2d9b9b324c256ca11e117f84afd9722c5271887a57497e2dd1f339adae7c12d'),
('modules/field/modules/field_sql_storage/field_sql_storage.test', '8ede9843d771e307dfd3d7e7562976b07e0e0a9310a5cf409413581f199c897f'),
('modules/field/modules/list/tests/list.test', '9f366469763beb3fe0571d66318bac6df293fd15f4eb5cfe4850b9fb9a509f38'),
('modules/field/modules/number/number.test', 'cb55fbc3a1ceed154af673af727b4c5ee6ac2e7dc9d4e1cbc33f3f8e2269146c'),
('modules/field/modules/options/options.test', '8c6dd464fdb5cca90b0260bcfa5f56941b4b28edd879b23a795f0442f5368d4c'),
('modules/field/modules/text/text.test', '9d74c6d039f55dd7d6447a59186da8d48bf20617bfe58424612798f649797586'),
('modules/field/tests/field.test', 'f07f370dee1b3bf645c548a4542007b4653bf6a40f28888e180cbc408e62c569'),
('modules/field_ui/field_ui.test', '2c344c7ccd9d41156f3e4a16f1cad06d2c3f4d702b47452bf6f5260efe2abbeb'),
('modules/file/tests/file.test', '802532f0032f1740592379d7bd9c93f8c453f68b93f11bf0143bd5de648659c8'),
('modules/filter/filter.test', '50f74d9c07663cbf610559f7123709488c36dab18e4320635ca4bcf9a9891640'),
('modules/help/help.test', 'c6f03ece30548a6a345afcfac920d85afc418596a19dc4cf43f994391c5050d9'),
('modules/image/image.test', '03ab83fcfd3c0f8397ea2273847a13bb5661efd4fc68af55f85bb32e41f37dc3'),
('modules/menu/menu.test', 'b93a1f408a1b51563c4c761475366573fc481d4ace3496fce226a73bdf468e8c'),
('modules/node/node.module', '72f72261cac4ca7880f4384791d7aee1e40491a0c1978946c3fa4d3bb64a9433'),
('modules/node/node.test', '4757ff01c1209a86393a2370234f0af3fc708d50b5a012e7eb9763336bc747bf'),
('modules/path/path.test', 'c05b26db575e93a73f2e4c8eaa6091b4fe8fc805f59620c2f7e1276cc206ba9d'),
('modules/rdf/rdf.test', 'd586b165925f65c98adcc0ad1eb24b05e2803ea92f1acca351b3ce2dc8932f43'),
('modules/search/search.extender.inc', 'fea036745113dca3fea52ba956af605c4789f4acfa2ab1650a5843c6e173d7fe'),
('modules/search/search.test', '1fe9dfc982953f42f67d7eee9a855e7248373067ba55cfff001d8a750b83e695'),
('modules/shortcut/shortcut.test', '9d0f81602c9a58b60ad3ae4b996e5a431016014151540769e9594711232575e4'),
('modules/system/system.archiver.inc', 'faa849f3e646a910ab82fd6c8bbf0a4e6b8c60725d7ba81ec0556bd716616cd1'),
('modules/system/system.mail.inc', '3c2c06b55bded609e72add89db41af3bb405d42b9553793acba5fe51be8861d8'),
('modules/system/system.queue.inc', 'caf4feda51bdf7ad62cf782bc23274d367154e51897f2732f07bd06982d85ab1'),
('modules/system/system.tar.inc', '8a31d91f7b3cd7eac25b3fa46e1ed9a8527c39718ba76c3f8c0bbbeaa3aa4086'),
('modules/system/system.test', '1577ba238919ba208902f807cd35ef667616a064ecf2b611b0ccb39cba105450'),
('modules/system/system.updater.inc', '338cf14cb691ba16ee551b3b9e0fa4f579a2f25c964130658236726d17563b6a'),
('modules/taxonomy/taxonomy.module', '389f4e8e040e99c02b4795983e7b44ffb00e766d2a4b3fa06aca98621073f6b2'),
('modules/taxonomy/taxonomy.test', '2b1599532f0b6bd0e324b55b687fe9eac9c6465376fd8317652e7540ee0a3677'),
('modules/update/update.test', 'f0c11dfc51716e9dd5980428a416cdead4246435e1dceaff75ce52c5f381d617'),
('modules/user/user.module', '40a0d8e89d4de14cee5283a21eb541c0143ab86170a093cfc6ecf15c9fe534ea'),
('modules/user/user.test', '0cdf12305cce4a65da5be1155925ba2a83b6f5363d6c192f0cfec2985e835e20'),
('profiles/spark/modules/contrib/breakpoints/breakpoints.module', 'b4f838c7188568c96369987cb75e5f8b316ffa7828df84a531af18b65c54c22f'),
('profiles/spark/modules/contrib/breakpoints/breakpoints.test', '3d0dae6143ff9903554128f599a4156d852e57d5665e5cebc2ecc55f5eaef962'),
('profiles/spark/modules/contrib/ckeditor/includes/ckeditor.user.inc', '764146a91bf80c4c430c516d619efbeca11e3f8f8d39e1851f20da771eed6a6b'),
('profiles/spark/modules/contrib/ctools/includes/context.inc', 'b7b5b38b6d85ab438327fc6127e2f21654c45ffa6b55d7b01b3b65bf19918a7e'),
('profiles/spark/modules/contrib/ctools/includes/math-expr.inc', '3386323b01da62e02c9f3607cd7f0a0d46f1af90a107a07aed726b1fa8c28235'),
('profiles/spark/modules/contrib/ctools/includes/stylizer.inc', 'e18f5a1b8af526751d7175354162c06c2013c96f62d9baa399564d8c45a1c90e'),
('profiles/spark/modules/contrib/ctools/plugins/export_ui/ctools_export_ui.class.php', '3d6d5df2fd5657b59023c8cb7f2d8f96a3f282f28307e5803cc9159297d6a2ab'),
('profiles/spark/modules/contrib/entity/entity.features.inc', 'b77e91ea988218fd939a4e5f283b2c745d53e39159af5ab770eda6b66fcb33cb'),
('profiles/spark/modules/contrib/entity/entity.i18n.inc', '41e0e62af7e2774f62b162d597bb3244551c280296b692b29d039a2c243d7059'),
('profiles/spark/modules/contrib/entity/entity.info.inc', '962cf92c630a2954c4e430164e1d04b8125eb1103dbefb7b954182b4382d072d'),
('profiles/spark/modules/contrib/entity/entity.rules.inc', '774199059d1b3ebe6d3fe7a49dbb1550df489055a3d066b5de54edda8dd7ba84'),
('profiles/spark/modules/contrib/entity/entity.test', 'edc8b5e132f0a935ad76f64c68fe7e7c4ce7556c7da3cd287c8b6478282e29c5'),
('profiles/spark/modules/contrib/entity/includes/entity.controller.inc', 'bf7185b9553361a8a71ed943756dee86146cff4d8ef0872071b94fa7c001c08b'),
('profiles/spark/modules/contrib/entity/includes/entity.inc', '07fd52603c905608a5a6f927a6b672ff077220d057548ba679dc756ccf080177'),
('profiles/spark/modules/contrib/entity/includes/entity.ui.inc', 'b2bdd28eb3af34cb7c2ff1e58e0cf679d26cfd68cd9414dc3abfbd297443874d'),
('profiles/spark/modules/contrib/entity/includes/entity.wrapper.inc', '046b5ba9fb72b699ae169776a72ba1f8f36dd14f8652f66ebe13567184848630'),
('profiles/spark/modules/contrib/entity/views/entity.views.inc', 'd07e9f0bdd6e300fc237c966693aa5b09a57a507a4d40be4c8d03bd9f6535e28'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_field_handler_helper.inc', '69d5ac25d8686ee43be607d682795b2cae0278500392f5f7970ac9f45913ee84'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_area_entity.inc', 'e86aceccf21cbbca4bef7d2c049dc93a8f5a01c6bc73e7b2f92f5659a9eedd03'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_boolean.inc', 'b28b8eee8761ba7a6af35d97ab7aaee28406e6c227271f9769818560626c5791'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_date.inc', 'b0f5be5b399de94934b24e84c8cf6053a043f6b00c60dcffa752daeafdd38778'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_duration.inc', '6a7f83e4ce141428d3d782db0c71f3cf4b141eff4f551b826fef7e52ac728e01'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_entity.inc', '54f9b1ba705953ec4fffbb877268cc0a537e3e83e6624c1dc7da778e4d30c824'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_field.inc', '893121efbce2a7181e31147bade260c9cc657cbd33b0d254cb28b2650e57566d'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_numeric.inc', 'f14e2b063930e8820af381b4f5e83c7278440e7804ab88cfde865b6c94e7c0f6'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_options.inc', '16317359cf59afb290d78eb61228f93dda408081e8c2f88db2f90a60d68d31d6'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_text.inc', 'ae26b8a9a86c36a166644a1f5a9bae0676f535345c092d882df0177ded305bdd'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_field_uri.inc', '79ecaa3eb17dfdd0ca077351b75a2c0adf411ebc04720e7cc0e2397674225f24'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_relationship.inc', 'b69bc538d1e1e0f91f8485ca54c3b6e2be025caa47619734c467377cf89041b9'),
('profiles/spark/modules/contrib/entity/views/handlers/entity_views_handler_relationship_by_bundle.inc', '25aebf66cd2437bd5867fef8f0e0e25d4308b9ce491cc79801e9d3cbed68bcba'),
('profiles/spark/modules/contrib/entity/views/plugins/entity_views_plugin_row_entity_view.inc', 'ba557790215f2658146424d933e0d17787a0b15180c5815f23428448ccf056a0'),
('profiles/spark/modules/contrib/jquery_update/jquery_update.install', '17d0b3e4e05f9dc32bf6227459e7303068b92b000e20352b5af2c3d2f67f7183'),
('profiles/spark/modules/contrib/jquery_update/jquery_update.module', '28cbb57d05bd00f4042c04b477c8d309968b991aa077fdf08f092fcf82ae60e2'),
('profiles/spark/modules/contrib/libraries/tests/libraries.test', '6dccb7969e83afd82de3c83af5e0b06c1f27e35ab1069f5f669640eed6d5d4af'),
('profiles/spark/modules/contrib/module_filter/css/module_filter.css', '69609136efe52982305062cdf17756ad168aaf35920b7840ea1323e22b0ea0d0'),
('profiles/spark/modules/contrib/module_filter/css/module_filter_tab.css', '1789901bbb6bed007fff82895bf6d3ecfed7e237b408930c6c51a1c08e648487'),
('profiles/spark/modules/contrib/module_filter/js/module_filter.js', 'c8fc76388a4763c9821e9cf6ff31865dd89cbc410a067848798118d14f372c40'),
('profiles/spark/modules/contrib/module_filter/js/module_filter_tab.js', '14967d461c738e66bfb2f800c7dcab9a641c1f015cd17ea6867c5f593c4fb9d5'),
('profiles/spark/modules/contrib/module_filter/module_filter.admin.inc', '30b1be9c743e4a4d468c2382cbe74666b45e50cfd9251deb0b1a149357c9d03a'),
('profiles/spark/modules/contrib/module_filter/module_filter.install', 'b05b0010641a06ed8f5d67403cae6c3a3a27aa687835b8f012136d3f68a3cbb3'),
('profiles/spark/modules/contrib/module_filter/module_filter.module', 'b84535147bd21ed59818d94c2f7aede7c75d8ea0b334c37d0b9f25912217a4aa'),
('profiles/spark/modules/contrib/module_filter/module_filter.theme.inc', '1eb90ba4ed6ae900a035fe81bcfaaf16c2ecc84ee91bb1f240dbdf6300e8a69b'),
('profiles/spark/modules/contrib/panels/includes/common.inc', 'fcc6c2923d7f567514109f1a333f518c9044df463d7bfef7b7d2f3f1515060c8'),
('profiles/spark/modules/contrib/panels/includes/legacy.inc', 'dc65c1a82f4a063f9cbebbd8a0ceb512a3b41a1ee2603ec8045034412a791aab'),
('profiles/spark/modules/contrib/panels/includes/plugins.inc', 'd08bc486c44016463a4af61c5c399e7f7b52a04a65a17a5e8e810e1a3c2d1158'),
('profiles/spark/modules/contrib/panels/panels.module', '0312b8d317e75f19196d8d8aaba3e9f895ca59c1da79f391d7181d1d5ef5ea34'),
('profiles/spark/modules/contrib/panels/panels_ipe/panels_ipe.module', '7e2b39b7936059831fde07d8e105d7871fe7084f4d4809db25cbb534f219976b'),
('profiles/spark/modules/contrib/panels/panels_ipe/plugins/display_renderers/panels_renderer_ipe.class.php', 'a7e9eb4753816c11e42a7377f62fbc6765a2e5ed00abb3efa64cce4b7a234d08'),
('profiles/spark/modules/contrib/panels/plugins/display_renderers/panels_renderer_editor.class.php', '962f6a761b008182f18cf90063e2b9eb289a9e9a7de69591a75735ccc449a64a'),
('profiles/spark/modules/contrib/panels/plugins/display_renderers/panels_renderer_simple.class.php', '420aeca22872635ebd5ab3ce719dd8e1d7fef339271db5f20a0834b812084a6e'),
('profiles/spark/modules/contrib/panels/plugins/display_renderers/panels_renderer_standard.class.php', '7497764e0b1afa55cab7126035b5957869550ab747db48299a9a336e97b48770'),
('profiles/spark/modules/contrib/panels/plugins/export_ui/panels_layouts_ui.class.php', '3f83ac6aaa129fdb2b18114dcf1a79c9a8eda6ee26898462afacb76db7172962'),
('profiles/spark/modules/contrib/panels/plugins/views/panels_views_plugin_row_fields.inc', 'a30d798fcbc5e0d44894166e31bc2ab9f9c12b1b34629bf5a7b745374e85408b'),
('profiles/spark/modules/contrib/views/handlers/views_handler_area.inc', '95d4374c805c057c9855304ded14ce316cdee8aca0744120a74400e2a8173fae'),
('profiles/spark/modules/contrib/views/handlers/views_handler_area_result.inc', '836747c024cc153ec4516737da0c42a864eb708e0b77d2f8ba606411c57356a2'),
('profiles/spark/modules/contrib/views/handlers/views_handler_area_text.inc', '531d0ac3b64206970593762df0abac60524f607253c3af876dd66ba747786dce'),
('profiles/spark/modules/contrib/views/handlers/views_handler_area_text_custom.inc', '35b702060c192b0adf6601ed437d0a02effd3accb71c07d6156013c8be9d5a15'),
('profiles/spark/modules/contrib/views/handlers/views_handler_area_view.inc', 'a6a4a618c96a5657eaa881aa0836663600629529ebfd943c91303a11171974d5'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument.inc', '5858d2d1ad3ea0321532da0f66c4d2ef2b2a208e941789b37341b76c783c2d42'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument_date.inc', '1b423d5a437bbd8ed97d0bfb69c635d36f15114699a7bc0056568cc87937477d'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument_formula.inc', '5a29748494a7e1c37606224de0c3cac45566efe057e4748b6676a898ac224a61'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument_group_by_numeric.inc', 'b8d29f27592448b63f15138510128203d726590daef56cf153a09407c90ec481'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument_many_to_one.inc', 'b2de259c2d00fe7ed04eb5d45eb5107ce60535dd0275823883cc29b04d1a3974'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument_null.inc', '26699660fd0915ec078d7eb35a93ef39fd53e3a2a4841c0ac5dbf0bb02207bee'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument_numeric.inc', 'ae23d847fa0f1e92baec32665a8894e26660999e338bebffb49ee42daac5a063'),
('profiles/spark/modules/contrib/views/handlers/views_handler_argument_string.inc', 'f8fe4daf0a636cc93d520a0d5ff212840d8bdaa704ddc3c59a24667f341ed3a1'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field.inc', '3d059d737e738436a15651f9ac8374f460a71eb569619ba0a8a14a55a3efc87e'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_boolean.inc', 'dc00b916a223935e05f51d94a2dffbaf430b162517072f7c2122332af41e8fc2'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_contextual_links.inc', '9752231bd248bcbc5c7282361098350f080706e3886d20753c5b2059adb10c00'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_counter.inc', 'fcfd07c8a20b91819af375c5e1edc33ec7e5b6ee48f419f6183f3401abf9af42'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_custom.inc', 'a3d25fc20401ae0a1af4b7d6e83376a5b7dc18ab0aed17a3c6d81e2314cf19f8'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_date.inc', 'ea37efb7819df9a4c2b6f688ec101964474dc7df13e92824913f783314d80740'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_entity.inc', '909ab36aff896ad8fa4306d95a052172ec27e471ab385a035fcadef8d019e0f9'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_machine_name.inc', 'df2fe47cf9c6d2e7de8627c08da809fb60883c38697340966f303c223e22aee4'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_markup.inc', 'a0c652fdf47f7efe35bbf2371f00e230409fe90ea0038eb101bf0c93ae0718e9'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_math.inc', 'c0f1cd82305ecc2378a7346ed0e4e5503c031b155d53cbfee2c46f82e7996ce4'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_numeric.inc', '51311e98172a3f2b9f8d406e4c64f2bc9d1243ab8003e1d421bf6ffa5f0100df'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_prerender_list.inc', '0fe605bf457886fbca5f041a422fc51c6a1927654dcd06cbfc619496fe57de0e'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_serialized.inc', 'ad3d82a9f37ae4c71a875526c353839da2ff529351efc7861f8b7c9d4b5a47db'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_time_interval.inc', '280d569784312d19dabfb7aeb94639442ae37e16cba02659a8251de08a4f1de2'),
('profiles/spark/modules/contrib/views/handlers/views_handler_field_url.inc', '7ca57a8dcc42a3d1e7e7ec5defa64a689cb678073e15153ff6a7cafe54c90249'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter.inc', '70c93c35ffd8829e9e1bb0d8be80ff1641a868abecb41924c3cb2fc513f521ab'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_boolean_operator.inc', 'f4ca59e4e1f91f219a1b33690a4ad412269946804fe7cacf24f2574b2c6d8599'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_boolean_operator_string.inc', '306ce393a7a4f565fa3eaa4ede1bc7fb4b7f91c65c65f759cab864532bc9d182'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_combine.inc', '804377cf5e931fa619c2a40425843b24b0bd6008ccb6e79064e0994d9fd696c2'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_date.inc', 'e8f6b4181f3661155fd3b94355b2707441e87b2a151af669610a26eb0fba6674'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_entity_bundle.inc', '02db977a67a09f70bdc8e2bbc46a05fff8a6d8bd6423308c95418476e84714a3'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_equality.inc', '2100cdd7f5232348adae494c5122ba41ff051eee0a8cc14aeaf6a66202cb7ed1'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_group_by_numeric.inc', '9401c4c0fe0d678898e5288ef8152784a12e0743df21dec15457353eb2cdb01d'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_in_operator.inc', '8fd7f075468bddde5c4208b1c3a6105f8fea0ac0c214452a37c00fc2f3453a7d'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_many_to_one.inc', 'b4a415c2824195d3d7d0e37ada9d69ebec0b9cd833ebcac2439efc20aac15595'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_numeric.inc', '8a999227d17674a70381ab8b45fbdc91269a83a45e5f7514607ed8b4a5bf6a9f'),
('profiles/spark/modules/contrib/views/handlers/views_handler_filter_string.inc', '140006335ac5b19b6253b431afde624db70385b9d22390b8c275296ae469cc7b'),
('profiles/spark/modules/contrib/views/handlers/views_handler_relationship.inc', '4fefdb6c9c48b72dcfe86484123b97eb5f5b90b6a440d8026d71f74dccbd1cd6'),
('profiles/spark/modules/contrib/views/handlers/views_handler_relationship_groupwise_max.inc', '47dcfe351159b10153697c17b3a92607edb34a258ba3b44087c947b9cc88e86f'),
('profiles/spark/modules/contrib/views/handlers/views_handler_sort.inc', '06aab8d75f3dce81eb032128b8f755bfff752dcefc2e5d494b137bca161fdefa'),
('profiles/spark/modules/contrib/views/handlers/views_handler_sort_date.inc', 'd7e771abf74585bd09cc8e666747a093f40848b451de8ba67c8158317946f1b2'),
('profiles/spark/modules/contrib/views/handlers/views_handler_sort_group_by_numeric.inc', '4ba1c38c9af32789a951b8f9377e13631ae26bf1dac3371b31a37ead25b32eb8'),
('profiles/spark/modules/contrib/views/handlers/views_handler_sort_menu_hierarchy.inc', 'ccd65ea3b3270366b7175e2cd7cc9167a09c27e1486949e4a05495ff5c7be5c1'),
('profiles/spark/modules/contrib/views/handlers/views_handler_sort_random.inc', '05a00c3bf76c3278ae0ce39a206a6224089faf5ac4a00dd5b8a558f06fab8e46'),
('profiles/spark/modules/contrib/views/includes/base.inc', '8389f49a2bc00819c00eae88fc30630151a3487c54a17472956adc4b2c596d04'),
('profiles/spark/modules/contrib/views/includes/handlers.inc', '1ed338807e8fcdeab6432f374649b6adb03f9e3011ad019f408a6206605a01ea'),
('profiles/spark/modules/contrib/views/includes/plugins.inc', 'bb12703a4a4e8bbc42ecc8ce27bf98546d9ea024324f4d03ba77348ec18b328c'),
('profiles/spark/modules/contrib/views/includes/view.inc', '1c4773c34303378c10325d5bb8fd55a3c88b7f80c307d7daf7c3d2dfe80ead33'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_handler_argument_aggregator_category_cid.inc', '97acf41d6694fd4451909c18b118f482db9f39aa4b8c5cfa75d044d410c46012'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_handler_argument_aggregator_fid.inc', 'c37def91d635b01db36809141d147d263cc910895e11c05e73d703e86b39fd43'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_handler_argument_aggregator_iid.inc', '344f2806344d9c6356f2e19d297522f53bab7a4cebdf23c76d04c85c9e0a0d8e'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_handler_field_aggregator_category.inc', '252b30b832d8c0097d6878f5d56beecfc8cc1fc7cc8b5a4670d8d95a80b4f17d'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_handler_field_aggregator_title_link.inc', '1bb18967b11f2f4de62075d27e483f175b5e3431622c2e5e8292afcd000beadf'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_handler_field_aggregator_xss.inc', '2db2e1f0500e0a252c7367e6a92906870b3247f9d424f999c381368ee2c76597'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_handler_filter_aggregator_category_cid.inc', '7c7c0690c836ac1b75bca3433aca587b79aec3e7d072ce97dc9b33a35780ad4f'),
('profiles/spark/modules/contrib/views/modules/aggregator/views_plugin_row_aggregator_rss.inc', '591e5bb7272e389fe5fc2b563f8887dbc3674811ffbb41333d36a7a9a1859e56'),
('profiles/spark/modules/contrib/views/modules/book/views_plugin_argument_default_book_root.inc', 'bd3bd9496bf519b1688cf39396f3afa495a29c8190a3e173c0740f4d20606a53'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_argument_comment_user_uid.inc', '5e29f7523010a074bda7c619b24c5d31e0c060cdbe47136b8b16b2f198ed4b4a'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment.inc', 'a126d690cc5bf8491cb4bee4cc8237b90e86768bebbbecb8a9409a3c1e00fa9e'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_depth.inc', '1dc353a31d3c71c67d0b3e6854d9e767e421010fbbf6a8b04a14035e5f7c097f'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link.inc', '1f7382f7cb05c65a7cba44e4cd58022bbc6ce5597b96228d1891d7720510bf0e'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_approve.inc', 'f6db8a0b4dd9fffba9d8ecb7b7363ba99d3b2dc7176436a0a6dd7a93195a5789'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_delete.inc', '905a4cb1f91a4b40ee1ca1d1ded9958ae18e82286589fec100adb676769b1fe9'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_edit.inc', '8139c932cde20f366a3019111c054b1ed00dbc0c40634b91239b400243b7723a'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_link_reply.inc', '8807884efb840407696c909b9d5d07f60bde9d7f385a59eca214178ce5369558'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_node_link.inc', '64746ff2b80a5f8e83b996a325c3d5c8393934c331510b93d5815ea11c1db162'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_comment_username.inc', '1ce3fa61b3933a3e15466760e4c5d4a85407ba4c8753422b766fc04395fa4d02'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_last_comment_timestamp.inc', '30c55ec6d55bf4928b757f2a236aab56d34a8e6955944a1471e9d7b7aed057c0'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_ncs_last_comment_name.inc', '82025f3ad22b63abc57172d358b3f975006109802f4a5ecac93ce3785c505cae'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_ncs_last_updated.inc', 'facfbc5defd843f4dfb60e645f09a784234d87876628c8de98d2dfa6bb98a895'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_node_comment.inc', '0cf9e8fb416dca35c3b9df3125eb3a8585f798c6a8f8d0e1034b1fccb5cec38b'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_field_node_new_comments.inc', 'e0830d1f70dea473e46ab2b86e380ef741b2907f033777889f812f46989f2ff7'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_filter_comment_user_uid.inc', 'f526c2c4153b28d7b144054828261ba7b26566169350477cd4fb3f5b5f280719'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_filter_ncs_last_updated.inc', '9369675dfee24891fe19bddf85a847c275b8127949c55112ae5cb4d422977d24'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_filter_node_comment.inc', '70706c47bad9180c2426005da6c178ed8d27b75b28cb797ca2a1925a96dcef09'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_sort_comment_thread.inc', 'a64bc780cba372bd408f08a5ea9289cdf3d40562bdf2f7320657be9a9f6c7882'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_sort_ncs_last_comment_name.inc', '9f039e8b8a046c058fda620804e3503be7b3e7e3e4119f0b015ccbae0922635b'),
('profiles/spark/modules/contrib/views/modules/comment/views_handler_sort_ncs_last_updated.inc', 'fa8b9c3614ad5838aa40194940d9dc6935175a16e141ac919f40e74a7428c4e3'),
('profiles/spark/modules/contrib/views/modules/comment/views_plugin_row_comment_rss.inc', 'ab97ac0ed4e6d7f2d44dc4ae9c5a84fe5658b739e1b609e5a877df528c3aa970'),
('profiles/spark/modules/contrib/views/modules/comment/views_plugin_row_comment_view.inc', '82d7296fa3109ca170f66f6f3b5e1209af98a9519bb5e4a2c42d9fc0e95d7078'),
('profiles/spark/modules/contrib/views/modules/contact/views_handler_field_contact_link.inc', 'ec783b215a06c89c0933107a580c144051118305dd0129ac28a7fea5f95a8fd5'),
('profiles/spark/modules/contrib/views/modules/field/views_handler_argument_field_list.inc', 'eff5152a2c120425a2a75fe7dbcb49ed86e5d48392b0f45b49c2e7abee9fa72b'),
('profiles/spark/modules/contrib/views/modules/field/views_handler_argument_field_list_string.inc', '534af91d92da7a622580ab8b262f9ef76241671a5185f30ba81898806c7b7f15'),
('profiles/spark/modules/contrib/views/modules/field/views_handler_field_field.inc', 'da78d77eff6f6292ebcacc61aef1d92dcae59ccedb6ab111a44fb28253d9d116'),
('profiles/spark/modules/contrib/views/modules/field/views_handler_filter_field_list.inc', '3b55cd0a14453c95ebd534507ab842a8505496d0b7e4c7fcd61c186034c7322d'),
('profiles/spark/modules/contrib/views/modules/field/views_handler_relationship_entity_reverse.inc', '060035c5430c81671e4541bcf7de833c8a1eb3fa3f3a9db94dd3cebfa4299ef1'),
('profiles/spark/modules/contrib/views/modules/filter/views_handler_field_filter_format_name.inc', 'fc3f074ffb39822182783a8d5cf2b89ffcc097ccbb2ed15818a72a99e3a18468'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_argument_locale_group.inc', 'c8545411096da40f48eef8ec59391f4729c884079482e3e5b3cdd5578a1f9ad7'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_argument_locale_language.inc', 'a1b6505bb26e4b3abce543b9097cd0a7b8cddf00bf1e49fbba86febebb0f4486'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_field_locale_group.inc', '5b62afe18f92ee4a5fb49eb0995e65b4744bbe3b9c24ffe8f6c21f3191c04afc'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_field_locale_language.inc', '0cc08bd2d42e07f26e7acc92642b36f0ac62bf23ee9ba3fd21e6cab9a80e9f72'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_field_locale_link_edit.inc', '836ceb1883047011ac1b3dca2254861b8caa1ea67405b3cdbe0fa6f3fbbd5a96'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_field_node_language.inc', 'a6ccdb6c1c4df3b4fd31b714f5aa4ac99771ffce63439d6c5de6c0ae2f09a2c1'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_locale_group.inc', '40fbc041bab64f336f59d1e0593f184b879b2a0c9e2a6050709bdc54cceb2716'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_locale_language.inc', '3433893d988aad36b918dd6214f5258b701506bc9c0c6a72fd854a036b635e20'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_locale_version.inc', '9337ea5216784ffc67a0aa45c946e65ad11fc40849189cc70911a81366b78620'),
('profiles/spark/modules/contrib/views/modules/locale/views_handler_filter_node_language.inc', 'd7edea3f35891cc76aa3bb185b9c1404378623ea7fd214c2a1f0d824df12779a'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_argument_dates_various.inc', 'd2c17e6ec3d221bdd0d1c060da4b0c85274c8ac5a0b624b1469b162694a8d0f5'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_language.inc', '7ee3ba02bddaa6aeef9961cdf6af7bb386fc2b12529f095b28520bb98af51775'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_nid.inc', '11c5b62413ffd1b2c66d4b60a2fe21cf6eb839ae40d4ef81c7a938c5be3e30de'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_type.inc', '9e21b4cc4ae861f58c804ea7e2c17fbc5dd2a7938b9abfeb54437b531fc95e6e'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_uid_revision.inc', '675c99f8da9748ac507e202f546914bee3ed4065f6ce83a23a2aaafdaefd084e'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_argument_node_vid.inc', '7e5da5594a336c1d0f4cf080ab3fcd690e0de1ee6b5e1830b5fb76a46bced19c'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_history_user_timestamp.inc', '7d6d9c8273d317ab908d4873a32086dbd5f78a2b2d07b7ed79975841a2cadea6'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node.inc', '99a0ef52b68e8913eb3563d5c47097c09e46c6493fcb006f383c6f6798edb7fc'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_link.inc', '26d8309a3a9140682d7d90e4d16ff664a3d7ce662af6ccbf75dc4c493515d7d9'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_link_delete.inc', '3eeed8c9ffc088ee28b8ffaa5e2b084db24284acc4d1b2e69f90c96cc889016d'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_link_edit.inc', '28f8c3b7d3d60c31fec3cdf81c84cfbb20f492220457694a0e150c3ddee030c0'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_path.inc', 'f392fde21e434fd40fc672546ef684780179d91827350ba9c348bb1cc5924727'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision.inc', '3f510d58acaa8f844292b86c388cb1e78eac8c732bb5e7c9e92439c425710240'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision_link.inc', 'ace72f296cf4a4da4b7dd7b303532aebf93b6b1c18a5d30b51b65738475e3889'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision_link_delete.inc', '0a36602f080c4ef2bb5cb7dbddc5533deab7743c2fbf3bd88b9e478432cac7fb'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_revision_link_revert.inc', '80ddc7f0c001fde9af491bb22d6044b85324fe90bea611fc3822408fd60008fa'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_field_node_type.inc', 'f8f39c6f238f837270d1b2e42e67bf9ab400a37fe24246c8b86dfcfacc1c4fd9'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_filter_history_user_timestamp.inc', '2970f270e071cad079880e9598d9f7b71d4dd2a2a42a31cd4489029a3cafe158'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_access.inc', 'ca625167c8928f1c5b354c27c120ed9b19c1df665dc3b02ed6d96b58194d6243'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_status.inc', 'f7099a59d3f237f2870ecb6b0b5e49dd9d785b1085e94baf55687251e7f3231b'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_type.inc', '6842082e7b6e131d6e002e627e6b4490b93ca6ffe7fc0b158d31843217c8c929'),
('profiles/spark/modules/contrib/views/modules/node/views_handler_filter_node_uid_revision.inc', 'b221785bc9a736ef67e4f03e6b26235333115b5b9ce571095de5c5286dd8d744'),
('profiles/spark/modules/contrib/views/modules/node/views_plugin_argument_default_node.inc', '7fb79c8f4adb9bcef7c7da4bf4046fe3490e16c244f6ab96fdca97a8567315ff'),
('profiles/spark/modules/contrib/views/modules/node/views_plugin_argument_validate_node.inc', 'f10d3f4081eed5ca32c41b67e9a0e6f35b2f8ba2cd7897230cb5a680b410a6de'),
('profiles/spark/modules/contrib/views/modules/node/views_plugin_row_node_rss.inc', 'd170c2aab84b73c862bfa79b7aa3f83f2a6d4668235970a1a797ce6d57501308'),
('profiles/spark/modules/contrib/views/modules/node/views_plugin_row_node_view.inc', '713e1c83702ac2d0d7fe76374110cdfd657598a8f3b086ec2352f2de38101504'),
('profiles/spark/modules/contrib/views/modules/profile/views_handler_field_profile_date.inc', '4f357b26c60afe2b812c995be69ebce6c6f4ea13075613baad7ec0aef1960d18'),
('profiles/spark/modules/contrib/views/modules/profile/views_handler_field_profile_list.inc', 'da5fa527ab4bb6a1ff44cc2f9cec91cf3b094670f9e6e3884e1fedce714afe6f'),
('profiles/spark/modules/contrib/views/modules/profile/views_handler_filter_profile_selection.inc', '758dea53760a1b655986c33d21345ac396ad41d10ddf39dd16bc7d8c68e72da7'),
('profiles/spark/modules/contrib/views/modules/search/views_handler_argument_search.inc', '3c20f1234af341ea2229419980d8405b7eca5005c1e0ee387c8d5cd7a58c5c60'),
('profiles/spark/modules/contrib/views/modules/search/views_handler_field_search_score.inc', '711af637c864b775672d9f6203fc2da0902ed17404181d1117b400012aac366f'),
('profiles/spark/modules/contrib/views/modules/search/views_handler_filter_search.inc', '15d63289e4821f329f44eb40dc121375e024e61fc2f1158f71b3d6c77fe6c4f1'),
('profiles/spark/modules/contrib/views/modules/search/views_handler_sort_search_score.inc', '9d23dd6c464d486266749106caec1d10cec2da1cc3ae5f907f39056c46badbdf'),
('profiles/spark/modules/contrib/views/modules/search/views_plugin_row_search_view.inc', 'bc25864154d4df0a58bc1ac1148581c76df36267a1d18f8caee2e3e1233c8286'),
('profiles/spark/modules/contrib/views/modules/statistics/views_handler_field_accesslog_path.inc', '7843e5f4b35f4322d673b5646e840c274f7d747f2c60c4d4e9c47e282e6db37d'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_argument_file_fid.inc', 'e9bf1fdf12f210f0a77774381b670c77ee88e7789971ce732b254f6be5a0e451'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_field_file.inc', '0fff4adb471c0c164a78f507b035a68d41f404ab10535f06f6c11206f39a7681'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_extension.inc', 'f833f6ccd098994d91032d40c0eaf5817559917d860f8f2dd8b82768ca616c91'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_filemime.inc', 'bdd7f1255f3000f7f2900341d4c4ca378244b96390ef52a30db2962d017b61a4'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_status.inc', 'bfb0b9d796a4dbf95c4bb7a3deef7724bcda9e0d9067939b74ec787da934f2b0'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_field_file_uri.inc', '350d7dde27ee97cb4279360374eb8633ce7fee115a109346bea85c2c4e3a68c2'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_filter_file_status.inc', '9210a34795f9db36974525e718c91c03c28554da1199932791925d7c4a2f3b11'),
('profiles/spark/modules/contrib/views/modules/system/views_handler_filter_system_type.inc', 'd27513703a75c4d8af79b489266cf4102a36e350c3d90404dab24403ab637205'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_taxonomy.inc', '8962fa76f1e03316932468b0fd805817af94726beb82bf9f4786e0c709264662'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_term_node_tid.inc', '79a80284231b3bc5aab36833e8200853686784f880dc6b104552d61fc602f27c'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_term_node_tid_depth.inc', '5b2806fbad4a6cc104e733a3a0faf6eb1c19975930c67c4149fb3267976e0b7d'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_term_node_tid_depth_modifier.inc', 'd85ebe68290239b25fc240451655b825325854e9707cf742fbd75de81e0f1aa7'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_vocabulary_machine_name.inc', '888647527bec3444b2d0a571a77900396d7c5e884bca04a2a3667a61f6377b5e'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_argument_vocabulary_vid.inc', 'bf4be783ef6899f004f4dbd06c1bf2cd6dbc322678c825eec36bee81d667e81f'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_field_taxonomy.inc', 'b0dd5cfa87c44b95aefd819444e4985c1773350bcf9fe073a2ef5c82b680b833'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_field_term_link_edit.inc', '3da63f6feb1fa3312853b54585d761d037dac8841b4c06e01e35463c9098064a'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_field_term_node_tid.inc', '29c5132ac98a2959405e44f9a83096b0dcfa30ed7fb4688453ca7e1fc779684b'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_term_node_tid.inc', '0fd0384ec873d6db244da736e6f5f811ece9a8a5673aeca609a2a3f17f61fc45'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_term_node_tid_depth.inc', '0b05ec052dcc03081e20338808dda17beb0bdf869b0cfc1375ca96cfb758c22a'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_vocabulary_machine_name.inc', 'f1787b436b914cfe5ca6f2575d4c0595f4f496795711d6e8a116a39986728b0a'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_filter_vocabulary_vid.inc', '2a4d7dfbb6b795d217e2617595238f552bbea04b80217c933f1ee9978ceb7a0e'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_handler_relationship_node_term_data.inc', '995345469938c7796ed77cb010984cb01c0d712386ae4a5f447e843620248570'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_plugin_argument_default_taxonomy_tid.inc', 'fc4c3ace525162fc922de581af0710c7d92dc355e9630040a29a5c3a6ab7f9af'),
('profiles/spark/modules/contrib/views/modules/taxonomy/views_plugin_argument_validate_taxonomy_term.inc', '821d7d53109bb43372484db904e4975d1834894f5b22d3027de6bc231cfb75d0'),
('profiles/spark/modules/contrib/views/modules/tracker/views_handler_argument_tracker_comment_user_uid.inc', '91f5b7e9537942eee7a1798906f772cb9806eebfdc201c54fcdecf027cd71d0f'),
('profiles/spark/modules/contrib/views/modules/tracker/views_handler_filter_tracker_boolean_operator.inc', '5efea908902052d68141017b6f29f17381e7bb8ebb6d88245471926f0a552207'),
('profiles/spark/modules/contrib/views/modules/tracker/views_handler_filter_tracker_comment_user_uid.inc', '05e07f74d1e3978afd4c80a9b4bd72444872b84a44949a512f1d3040ce28421c'),
('profiles/spark/modules/contrib/views/modules/translation/views_handler_argument_node_tnid.inc', 'b0e3c87d3790cfa2e265f3d9700f2b3c2857932aa4b6e003e5d0114fc1b4d499'),
('profiles/spark/modules/contrib/views/modules/translation/views_handler_field_node_link_translate.inc', '27a1ac81b50d4807d9a1eff4c5dc8929e4472f9d363f70f5391a794db73424a2'),
('profiles/spark/modules/contrib/views/modules/translation/views_handler_field_node_translation_link.inc', '641ff25cd317bb803de2ace4bd23e8c5f5af5ba4ac38aab7be2fdc58fbb9e86a'),
('profiles/spark/modules/contrib/views/modules/translation/views_handler_filter_node_tnid.inc', '0942fd793740e3aec032a1abb7132f53788a9cdeaeb3d931cac908ac30b73950'),
('profiles/spark/modules/contrib/views/modules/translation/views_handler_filter_node_tnid_child.inc', '2a7a96d6caa4a99996549be0457bf40fa619731543a636d4573e55c190c64c7a'),
('profiles/spark/modules/contrib/views/modules/translation/views_handler_relationship_translation.inc', '9137c85f5ca309d4ee0d3243c470563a5853f5926b8cbd3e843438d4308c9516'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_argument_users_roles_rid.inc', '72da80e7f3c6980da024d86f37ba3721021cc1ead2cfcc1ab9b27897b7b5077a'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_argument_user_uid.inc', 'a4af1bdc1ec5e40587c22c14e839980050baaa346c9d5934ef3f01794932cdc5'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user.inc', '1a2141524e43d86b52c7828fe6df61dd603ad433743c1139cfc5cc28ccb5ce74'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_language.inc', '5a3da9e08ebeebbcb5abc6a9b16e0d380c5bb5c57b608afb540a3ca6dc1b2959'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_link.inc', '5a0f35d5305a29816658385ecbd804bf43c92d4b3629fbe4bd9b8d0e9574b6ff'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_link_cancel.inc', 'bcc690f03eca154ad02d1de3ebca7d99129455e8c8602c0642382ae66a6d2872'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_link_edit.inc', '5d7c1155d9eccbd6b07c7446fe2b6a8848d6a500f508ac3779f16df56816f92b'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_mail.inc', 'b7355b704f19322afb4876cea27744367e20098d4ed973e480bf2baf1ddd111c'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_name.inc', '5fd9a4d7843fee83cf529384a52d7ae69e40a9c8846e7f285e94f4bbbf8c7e29'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_permissions.inc', 'ec37373524bf23ae107adda6b825570c550e6654c0f0956409fc58df2c860903'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_picture.inc', '0103d136a91fb219fd981801301b7df00adf90617900ded08efbf6d7df04959b'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_field_user_roles.inc', 'ab5068c4f01a05c6511f7d4b973a77650d5b5c481d4a73f63b7a9b1ef9c0d138'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_current.inc', '7f70b7e3b3c10e75d95f54afc9c2fe2f1af9b7a9eab2308d2961b2588dc05845'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_name.inc', '5225e5d89051313e0e49ea833709bb4dc44369afeee970b0cfaf1818ababa22c'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_permissions.inc', 'a72e8d02c1075cebfee33e5b046460eef9193b2a7c1d47ff130457e4485b6fe5'),
('profiles/spark/modules/contrib/views/modules/user/views_handler_filter_user_roles.inc', '3bb69fbc4e352ce8e4840ec78bdd0f1f29e8709097ce6b29cc2fedd2c74c023e'),
('profiles/spark/modules/contrib/views/modules/user/views_plugin_argument_default_current_user.inc', '11e729115350deffe46ebfe3a55281fa169a90e38a76c3a9d98f26c87900a22b'),
('profiles/spark/modules/contrib/views/modules/user/views_plugin_argument_default_user.inc', 'fe567f009a8e20f402f104b157fd44c04d6bd886a39b2f3355104f644f905419'),
('profiles/spark/modules/contrib/views/modules/user/views_plugin_argument_validate_user.inc', '40d623b0a678fa7c292da92582f06449d0396341ab161069f0fe8d1086ab95da'),
('profiles/spark/modules/contrib/views/modules/user/views_plugin_row_user_view.inc', '52548cca3f18d25b06cfce15ee00acea530b85bd22a10944d984b5a798c5969f'),
('profiles/spark/modules/contrib/views/plugins/export_ui/views_ui.class.php', '8548322a602b99e4343948255a8c89b034e005a29d71e499cea7c60a4d8a6d87'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_access.inc', 'cc16bf7dc4c10eab382e948cfd91902ac1055514b627e3c50932376d3e3f1b91'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_access_none.inc', '8e0a6b706c60abf63ab84d8624567ca12a5b80ad293e4334790065fbe6fa14d4'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_access_perm.inc', '1807a9c91485a5abd3fb2f6590ed4bc185fdabe308db37b169be8abdfc30cab2'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_access_role.inc', '8784836ea87ec6b0974125ed95ed6bbf6fdf91624f496f22c28e9229c695068d'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default.inc', '43e593760f0e8f031f2e7b861385caa5e39f37de400fe4595925288c78f52f23'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default_fixed.inc', 'daaa3b59b54cbb11e411e010303f67a51348bb97a4e06997b475f4c41e91c4e0'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default_php.inc', '7a133b603294bfe498bfdeb50fade0b6e3cf8862270376067d86f69e7dc50eb8'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_argument_default_raw.inc', '4318e0dfa56f167183453cf8cd913f3b7ee539b77a096507905e36db12ded97e'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_argument_validate.inc', 'c71e2b54623cc62530ebb717dec1406c76200a59270d9c60b3be290694c9fdd8'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_argument_validate_numeric.inc', 'c050d3b5723dbfdca9ad312c7fa198e509c626057b95eed326820ce733dd9730');
INSERT INTO `registry_file` VALUES
('profiles/spark/modules/contrib/views/plugins/views_plugin_argument_validate_php.inc', '56a09922081a5e368d5796907727e35cbf43b0d634e53f947990c8a42d5b5f3e'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_cache.inc', '5a8d4d584ab973b512ca674b45a1e2a4d43d18d420b333cf8179f1ce79d23d85'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_cache_none.inc', 'a0d0ba252e1e2b65350c7ce648b97364726fa8ded5a366bfcce30c62daee4450'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_cache_time.inc', '10db3dd52b06478b7be9b858f3a053ae2c2f6377abe488ad912f8ca786200a1d'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display.inc', 'e795572a7578eadf9af19ef503f31ef2cfb482d3b5c92f2ded7178fc5b55371b'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display_attachment.inc', '712f4b78334d8b9abe275ef309541f69ae920117c82930cba1ddbb163cb078f5'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display_block.inc', 'be9e3c4a9e28270147bb21de8056712d58e47eeddf6e002fdb9425996d5d5ead'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display_default.inc', '91c6554d8f41f848bf30093d44d076051c54e998f6b50bdc2a922bfeeef9c54d'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display_embed.inc', '5424f2ea9e031faade7a562b8013aea193db5b0bc1be92b97bd7967de0d7bfff'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display_extender.inc', '75fb9f80e7f153715b911690c7140f251df588e6a541fab5881fbfafc0bbf778'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display_feed.inc', 'fbff8bf3f2d9fcd6403ca31d6f351dea54c83a644a613f78d34267b504bc84fc'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_display_page.inc', '34f789c6a2de584a1020cf53cf30d985c7d32edf05d5a9f7add624996fb2964f'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_exposed_form.inc', '31c3e76560512e25200e64e17e7a9716482535cd6f1fac7c610e48343484e107'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_exposed_form_basic.inc', 'c736e1862b393e15ecc80deb58663405a1d68c2db07eb620d8e640406876cd17'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_exposed_form_input_required.inc', '46566e6bf33f1b3d4640526372af94c03334318fe4267e9f5e2e8cb74f4ddc81'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_localization.inc', 'd7239cc693994dcd069c1f1e7847a7902c5bd29b8d64a93cdf37c602576661fb'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_localization_core.inc', 'f0900c0640e7c779e9b876223ea395f613c8fe8449f6c8eb5d060e2d54a6afcc'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_localization_none.inc', '4930c3a13ddc0df3065f4920a836ffdc933b037e1337764e6687d7311f49dd8a'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_pager.inc', '1cbe6ca33f3a177726e4435b82d05e465deb38f9d32d45a20738f47e7c2b0877'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_pager_full.inc', '1b6e5e1fd8837d6a5f458079a2dc87161a7814c6d8c181c1dee6958a37096c9a'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_pager_mini.inc', '47ecac80489f13ebf16a7d2f3458c291bc06ba12e0aeb601d89cac8f6e32b6c0'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_pager_none.inc', '822cab1ada25f4902a0505f13db86886061d2ced655438b33b197d031ccceddd'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_pager_some.inc', 'bc6aa7cbf1bc09374eced33334195c8897e4078336b8306d02d71c7aaaa22c99'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_query.inc', '0594d1fd0c34b86c6b81741e134da2d385d6be47b667af6660dd1d268fb7fa95'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_query_default.inc', 'a35fff884bddaa3e45a2143ba96ac595af7dc380457d96b2cc9f4e35c2742617'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_row.inc', '3ca81529526b930cfb0dda202757f203649236b90441e3c035bb79cd419ee2a6'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_row_fields.inc', '875fb2868cdbcc5f7af03098cbe55b9bb91ef512e5e52ccde89f7a02a0c5fbe2'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_row_rss_fields.inc', '62f4a0ceef14aec9958ee8b98d352303f10818ddc66031814cc8b9d21752ade9'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style.inc', '60243c95aa09e6b09de8418a6dc2b67eabf1e83289cfbf4658c519d6206227be'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_default.inc', 'bf411e635d2fd9e09eb245b43581a0a7b670359180ccb042d42a5e579bbe9c30'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_grid.inc', '35094b7f644b7e0692c9026b6b6b4c4c864c37fcdedef04b359dd2bdba496a47'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_jump_menu.inc', '66170c5b4a8e779f20cf7cf064c65eeba9753b8f4cdf156b108f30d4a22007a2'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_list.inc', '407b928d2c74a91903b681088bccce926d2268d0a9a6a34c185a4849dc0d7e31'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_mapping.inc', 'af4b75dd08f1597280a8deb6086259be4f10af50acace43ce2013170655f752c'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_rss.inc', '77fcd2a962022159e89a773c49823306ef69a0dd1b54e6b344d1e2e45590d3d1'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_summary.inc', '872df59f8f389eaf9b019e82d859dd198d31166e26a9102132e3932c7f1f2916'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_summary_jump_menu.inc', '2ec0d225824ee65b6bb61317979e1dabe2be524a66ab19da924c6949dd31af3b'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_summary_unformatted.inc', 'c1e6f9dd1d75e29fee271171440d2182e633a1dbbc996cb186f637ff7ad93ed9'),
('profiles/spark/modules/contrib/views/plugins/views_plugin_style_table.inc', '0cbcc5d256a13953fbd3e5966a33d2426d5c3bd8c228ef370daebf2f428e693c'),
('profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_base_views_wizard.class.php', 'd8325414c8ddde5c955a5cfb053b77478bb4d73cb2f7d75b857b082bc5a1e12d'),
('profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_comment_views_wizard.class.php', '208d02d7185ccc89c6767d31be2f5417c7877a6846457194eb103bd648aa7577'),
('profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_file_managed_views_wizard.class.php', '5734fb564ba9e2485cfa5d4a49f0c76f65a9be357b78e769ee4af92c4ef9e22a'),
('profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_node_revision_views_wizard.class.php', '6faf9ef92501a4f1aeaf86bcff9edaeb47bd7526ba50d06b841c9366149e7725'),
('profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_node_views_wizard.class.php', '2862cfdcef52cdd42f3b0e0113148bd0da8a93b6cd200f94d51df34e5428fcd2'),
('profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_taxonomy_term_views_wizard.class.php', 'a8713b5a925ce8619f4f7b2ce74fbf9f7bb570f8ed084c8a7a5865fb40032eab'),
('profiles/spark/modules/contrib/views/plugins/views_wizard/views_ui_users_views_wizard.class.php', 'f9fe2fb1ee87a1871e6ad32bad61b2457313f24da1bd5423977ced12de542919'),
('profiles/spark/modules/contrib/views/tests/comment/views_handler_argument_comment_user_uid.test', 'b8b417ef0e05806a88bd7d5e2f7dcb41339fbf5b66f39311defc9fb65476d561'),
('profiles/spark/modules/contrib/views/tests/comment/views_handler_filter_comment_user_uid.test', '347c6ffd4383706dbde844235aaf31cff44a22e95d2e6d8ef4da34a41b70edd1'),
('profiles/spark/modules/contrib/views/tests/field/views_fieldapi.test', '53e6d57c2d1d6cd0cd92e15ca4077ba532214daf41e9c7c0f940c7c8dbd86a66'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_area_text.test', 'af74a74a3357567b844606add76d7ca1271317778dd7bd245a216cf963c738b4'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_argument_null.test', '1d174e1f467b905d67217bd755100d78ffeca4aa4ada5c4be40270cd6d30b721'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_argument_string.test', '3d0213af0041146abb61dcdc750869ed773d0ac80cfa74ffbadfdd03b1f11c52'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field.test', 'af552bf825ab77486b3d0d156779b7c4806ce5a983c6116ad68b633daf9bb927'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_boolean.test', 'd334b12a850f36b41fe89ab30a9d758fd3ce434286bd136404344b7b288460ae'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_counter.test', '75b31942adf06b107f5ffd3c97545fde8cd1040b1d00f682e3c7c1320026e26c'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_custom.test', '1446bc3d5a6b1180a79edfa46a5268dbf7f089836aa3bc45df00ddaff9dd0ce1'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_date.test', '6f45326d7f74127956d9d8e4d7ad96a4beb0f66175fa40daf1d618d1a5fa996d'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_file_size.test', '49184db68af398a54e81c8a76261acd861da8fd7846b9d51dcf476d61396bfb9'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_math.test', '6e39e4f782e6b36151ceafb41a5509f7c661be79b393b24f6f5496d724535887'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_url.test', 'b41f762a71594b438a2e60a79c8260ba54e6305635725b0747e29f0d3ffe08c9'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_field_xss.test', 'f129ee16c03f84673e33990cbb2da5aa88c362f46e9ba1620b2a842ffd1c9cd2'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_combine.test', '05842d83a11822afe7d566835f5db9f0f94fdb27ddfc388d38138767bdf36f8b'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_date.test', '045cc449b68bbd5526071bf38c505b6d44f6c91868273c3120705c3bad250aee'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_equality.test', 'c88f21c9cbf1aae83393b26616908f8020c18fe378d76256c7ba192df2ec17af'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_in_operator.test', '89420a4071677232e0eb82b184b37b818a82bdb2ff90a8b21293f9ecb21808bf'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_numeric.test', '35ac7a34e696b979e86ef7209b6697098d9abe218e30a02cc4fe39fb11f2a852'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_filter_string.test', 'b7d090780748faad478e619fd55673d746d4a0cf343d9e40ea96881324c34cbd'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_sort.test', 'f4ff79e6bc54e83c4eb2777811f33702b7e9fe7416ef70ae00d100fa54d44fec'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_sort_date.test', 'f548584d7c6a71cabd3ce07e04053a38df3f3e1685210ce8114238fd05344c10'),
('profiles/spark/modules/contrib/views/tests/handlers/views_handler_sort_random.test', '4fdba9bf05a26720ffa97e7a37da65ddc9044bd2832f8c89007b82feb062f182'),
('profiles/spark/modules/contrib/views/tests/node/views_node_revision_relations.test', '9467497a6d693615b48c8f57611a850002317bcb091b926d2efbbe56a4e61480'),
('profiles/spark/modules/contrib/views/tests/plugins/views_plugin_display.test', '4a6b136543a60999604c54125fa9d4f5aa61a5dcc71e2133d89325d81bc0fc2d'),
('profiles/spark/modules/contrib/views/tests/styles/views_plugin_style.test', 'fb6c3279645fbcc1126acb3e1c908189e5240c647f81dcfd9b0761570c99d269'),
('profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_base.test', '54fb7816d18416d8b0db67e9f55aa2aa50ac204eb9311be14b6700b7d7a95ae7'),
('profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_jump_menu.test', 'b88baa8aebe183943a6e4cf2df314fef13ac41b5844cd5fa4aa91557dd624895'),
('profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_mapping.test', 'a4e68bc8cfbeff4a1d9b8085fd115bfe7a8c4b84c049573fa0409b0dc8c2f053'),
('profiles/spark/modules/contrib/views/tests/styles/views_plugin_style_unformatted.test', '033ca29d41af47cd7bd12d50fea6c956dde247202ebda9df7f637111481bb51d'),
('profiles/spark/modules/contrib/views/tests/taxonomy/views_handler_relationship_node_term_data.test', '6074f5c7ae63225ea0cd26626ace6c017740e226f4d3c234e39869c31308223d'),
('profiles/spark/modules/contrib/views/tests/test_plugins/views_test_plugin_access_test_dynamic.inc', '6a3ce8c256b84734b6b67a893ab24465a5f62d7bdf9ab5d22082a31849346b7d'),
('profiles/spark/modules/contrib/views/tests/test_plugins/views_test_plugin_access_test_static.inc', 'e345e42d443cfa73db0ed2be61291117ebd57b86196cdb77c6f440e93443def3'),
('profiles/spark/modules/contrib/views/tests/test_plugins/views_test_plugin_style_test_mapping.inc', '0b2c68626105bd5f6b9074022a37c3d09d3a6bd70b811bb26d5eacad6d74546f'),
('profiles/spark/modules/contrib/views/tests/user/views_handler_field_user_name.test', '69641b6da26d8daee9a2ceb2d0df56668bf09b86db1d4071c275b6e8d0885f9e'),
('profiles/spark/modules/contrib/views/tests/user/views_user.test', 'fbb63b42a0b7051bd4d33cf36841f39d7cc13a63b0554eca431b2a08c19facae'),
('profiles/spark/modules/contrib/views/tests/user/views_user_argument_default.test', '6423f2db7673763991b1fd0c452a7d84413c7dd888ca6c95545fadc531cfaaf4'),
('profiles/spark/modules/contrib/views/tests/user/views_user_argument_validate.test', 'c88c9e5d162958f8924849758486a0d83822ada06088f5cf71bfbe76932d8d84'),
('profiles/spark/modules/contrib/views/tests/views_access.test', 'f8b9d04b43c09a67ec722290a30408c1df8c163cf6e5863b41468bb4e381ee6f'),
('profiles/spark/modules/contrib/views/tests/views_analyze.test', '5548e36c99bb626209d63e5cddbc31f49ad83865c983d2662c6826b328d24ffb'),
('profiles/spark/modules/contrib/views/tests/views_argument_default.test', '5950937aae4608bba5b86f366ef3a56cc6518bbccfeaeacda79fa13246d220e4'),
('profiles/spark/modules/contrib/views/tests/views_argument_validator.test', '31f8f49946c8aa3b03d6d9a2281bdfb11c54071b28e83fb3e827ca6ff5e38c88'),
('profiles/spark/modules/contrib/views/tests/views_basic.test', '655bd33983f84bbea68a3f24bfab545d2c02f36a478566edf35a98a58ff0c6cf'),
('profiles/spark/modules/contrib/views/tests/views_cache.test', '76316e1f026c2ab81ef91450b9d6d5985cbfab087f839ea0edd112209bf84fd9'),
('profiles/spark/modules/contrib/views/tests/views_exposed_form.test', '2b2b16373af8ecade91d7c77bd8c2da8286a33bde554874f5d81399d201c3228'),
('profiles/spark/modules/contrib/views/tests/views_glossary.test', '118d50177a68a6f88e3727e10f8bcc6f95176282cc42fbd604458eeb932a36e8'),
('profiles/spark/modules/contrib/views/tests/views_groupby.test', 'ac6ca55f084f4884c06437815ccfa5c4d10bfef808c3f6f17a4f69537794a992'),
('profiles/spark/modules/contrib/views/tests/views_handlers.test', 'a696e3d6b1748da03a04ac532f403700d07c920b9c405c628a6c94ea6764f501'),
('profiles/spark/modules/contrib/views/tests/views_module.test', '3939798f2f679308903d4845f5625dd60df6110aec2615e33ab81e854d0b7e73'),
('profiles/spark/modules/contrib/views/tests/views_pager.test', '6f448c8c13c5177afb35103119d6281958a2d6dbdfb96ae5f4ee77cb3b44adc5'),
('profiles/spark/modules/contrib/views/tests/views_plugin_localization_test.inc', 'baedcf6c7381f9c5d3a5062f7d256f96808d06e04b6e73eff8e791e5f5293f45'),
('profiles/spark/modules/contrib/views/tests/views_query.test', '1ab587994dc43b1315e9a534d005798aecaa14182ba23a2b445e56516b9528cb'),
('profiles/spark/modules/contrib/views/tests/views_test.views_default.inc', '9664b95577fe2664410921bb751e1d99109e79b734f2c8c142d4083449282bd0'),
('profiles/spark/modules/contrib/views/tests/views_translatable.test', '6899c7b09ab72c262480cf78d200ecddfb683e8f2495438a55b35ae0e103a1b3'),
('profiles/spark/modules/contrib/views/tests/views_ui.test', 'f9687a363d7cc2828739583e3eedeb68c99acd505ff4e3036c806a42b93a2688'),
('profiles/spark/modules/contrib/views/tests/views_upgrade.test', 'c48bd74b85809dd78d963e525e38f3b6dd7e12aa249f73bd6a20247a40d6713a'),
('profiles/spark/modules/contrib/views/tests/views_view.test', 'a52e010d27cc2eb29804a3acd30f574adf11fad1f5860e431178b61cddbdbb69'),
('profiles/spark/modules/contrib/views/views_ui.module', '2451d4e3df513afe85c7e24acc90b89ed24f5a615e8b4002e9d3d6cd1ca8b32e'),
('sites/all/modules/contrib/development/demo/database_mysql_dump.inc', 'c01e89e41321a7f15572f47a7fcc6aaf939e85d316d11b99f03e0b6de96183ff'),
('sites/all/modules/contrib/development/demo/demo.admin.inc', 'ff01e842171c749a39795823ef68003f217736c0b0cbc12dac4363813c93c82e'),
('sites/all/modules/contrib/development/demo/demo.module', 'd9b45ccbd366930a02d7d422a5408c79760e4fbf22e89407c4c4cb1e575c14eb'),
('sites/all/modules/contrib/development/demo/demo_reset.module', '067cef93fb16116e8f4ad70bd74e9466a9bd0060124fe800271c6ac822ffe19a'),
('sites/all/modules/contrib/usability/admin_views/plugins/views_plugin_access_menu.inc', 'acc6274d79ce35a720003f829fb921f51f5b8dc517ba1419e45edc4093040a2b'),
('sites/all/modules/contrib/usability/admin_views/plugins/views_plugin_display_system.inc', '6e70294b17b1b0df5c6a2394d7e73ac6da83fd7d2edd6b418b4261811ed773e3'),
('sites/all/modules/contrib/usability/admin_views/tests/admin_views.test', 'a5fd9b4e6545659d7be965c78c7cd63f34767d42675251207a90ab896c2445b3'),
('sites/all/modules/contrib/usability/views_bulk_operations/plugins/operation_types/action.class.php', '75bb7f567eed1ad2ebc80894c7b5b3b7dcefda3fba917d2c99f7b5220deeea41'),
('sites/all/modules/contrib/usability/views_bulk_operations/plugins/operation_types/base.class.php', 'a974cc9716973e4ea8452620c4cbdd427496490566e8c1dc77852f67b450abf1'),
('sites/all/modules/contrib/usability/views_bulk_operations/plugins/operation_types/rules_component.class.php', '47e4d99cbd24ef42f102fcd16c96fc7fe0ea237b51204a1eaf92cb6f88af1f6a'),
('sites/all/modules/contrib/usability/views_bulk_operations/views/views_bulk_operations_handler_field_operations.inc', '6bb8e0825c0589884fa58226ebb04bbc3844852f02ad586e12cbc48c672d77c8');
/*!40000 ALTER TABLE registry_file ENABLE KEYS */;

--
-- Table structure for table 'role'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores user roles.';

--
-- Dumping data for table 'role'
--

/*!40000 ALTER TABLE role DISABLE KEYS */;
INSERT INTO `role` VALUES
('3', 'administrator', '2'),
('1', 'anonymous user', '0'),
('2', 'authenticated user', '1');
/*!40000 ALTER TABLE role ENABLE KEYS */;

--
-- Table structure for table 'role_permission'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores the permissions assigned to user roles.';

--
-- Dumping data for table 'role_permission'
--

/*!40000 ALTER TABLE role_permission DISABLE KEYS */;
INSERT INTO `role_permission` VALUES
('1', 'access comments', 'comment'),
('1', 'access content', 'node'),
('1', 'use text format filtered_html', 'filter'),
('2', 'access comments', 'comment'),
('2', 'access content', 'node'),
('2', 'post comments', 'comment'),
('2', 'skip comment approval', 'comment'),
('2', 'use text format filtered_html', 'filter'),
('3', 'access administration pages', 'system'),
('3', 'access all views', 'views'),
('3', 'access comments', 'comment'),
('3', 'access content', 'node'),
('3', 'access content overview', 'node'),
('3', 'access contextual links', 'contextual'),
('3', 'access in-place editing', 'edit'),
('3', 'access navbar', 'navbar'),
('3', 'access site in maintenance mode', 'system'),
('3', 'access site reports', 'system'),
('3', 'access user profiles', 'user'),
('3', 'administer actions', 'system'),
('3', 'administer advanced pane settings', 'panels'),
('3', 'administer blocks', 'block'),
('3', 'administer breakpoints', 'breakpoints'),
('3', 'administer ckeditor', 'ckeditor'),
('3', 'administer comments', 'comment'),
('3', 'administer content types', 'node'),
('3', 'administer demo settings', 'demo'),
('3', 'administer filters', 'filter'),
('3', 'administer gridbuilder', 'gridbuilder'),
('3', 'administer image styles', 'image'),
('3', 'administer layouts', 'layout'),
('3', 'administer menu', 'menu'),
('3', 'administer module filter', 'module_filter'),
('3', 'administer modules', 'system'),
('3', 'administer nodes', 'node'),
('3', 'administer page manager', 'page_manager'),
('3', 'administer pane access', 'panels'),
('3', 'administer panels layouts', 'panels'),
('3', 'administer panels styles', 'panels'),
('3', 'administer permissions', 'user'),
('3', 'administer search', 'search'),
('3', 'administer shortcuts', 'shortcut'),
('3', 'administer site configuration', 'system'),
('3', 'administer software updates', 'system'),
('3', 'administer taxonomy', 'taxonomy'),
('3', 'administer themes', 'system'),
('3', 'administer url aliases', 'path'),
('3', 'administer users', 'user'),
('3', 'administer views', 'views'),
('3', 'block IP addresses', 'system'),
('3', 'bypass node access', 'node'),
('3', 'cancel account', 'user'),
('3', 'change layouts in place editing', 'panels'),
('3', 'change own username', 'user'),
('3', 'create article content', 'node'),
('3', 'create every_field content', 'node'),
('3', 'create page content', 'node'),
('3', 'create url aliases', 'path'),
('3', 'customize ckeditor', 'ckeditor'),
('3', 'customize shortcut links', 'shortcut'),
('3', 'delete any article content', 'node'),
('3', 'delete any every_field content', 'node'),
('3', 'delete any page content', 'node'),
('3', 'delete own article content', 'node'),
('3', 'delete own every_field content', 'node'),
('3', 'delete own page content', 'node'),
('3', 'delete revisions', 'node'),
('3', 'delete terms in 1', 'taxonomy'),
('3', 'edit any article content', 'node'),
('3', 'edit any every_field content', 'node'),
('3', 'edit any page content', 'node'),
('3', 'edit own article content', 'node'),
('3', 'edit own comments', 'comment'),
('3', 'edit own every_field content', 'node'),
('3', 'edit own page content', 'node'),
('3', 'edit terms in 1', 'taxonomy'),
('3', 'post comments', 'comment'),
('3', 'revert revisions', 'node'),
('3', 'search content', 'search'),
('3', 'select account cancellation method', 'user'),
('3', 'skip comment approval', 'comment'),
('3', 'switch shortcut sets', 'shortcut'),
('3', 'use advanced search', 'search'),
('3', 'use page manager', 'page_manager'),
('3', 'use panels caching features', 'panels'),
('3', 'use panels dashboard', 'panels'),
('3', 'use panels in place editing', 'panels'),
('3', 'use panels locks', 'panels'),
('3', 'use text format filtered_html', 'filter'),
('3', 'use text format full_html', 'filter'),
('3', 'view own unpublished content', 'node'),
('3', 'view pane admin links', 'panels'),
('3', 'view revisions', 'node'),
('3', 'view the administration theme', 'system');
/*!40000 ALTER TABLE role_permission ENABLE KEYS */;

--
-- Table structure for table 'search_dataset'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores items that will be searched.';

--
-- Dumping data for table 'search_dataset'
--

/*!40000 ALTER TABLE search_dataset DISABLE KEYS */;
INSERT INTO `search_dataset` VALUES
('1', 'node', ' welcome to spark  welcome to a prerelease version of the spark distribution  our goal is to greatly improve the authoring experience of drupal through a drupal 7 distribution that can be used today but can also be proposed as drupal 8 core improvements for tomorrow you can read more about it at the official announcement or at wwwsparkdrupalcom  read on for more info please take a look around within you will find such nifty features as  inline editing  courtesy of edit module  simply click into this node log in as an admin then click the quick edit link in the sidebar from there you can click directly into any field to edit its contents including this one for fancier fields like boolean and multivalue you get just edit the form field directly try it out   true wysiwyg  courtesy of ckeditor v4  edit your rich text with your theme s direct styling through the inline editor support for images tables paste from word and more  responsive layout builder  courtesy of the layout and gridbuilder modules it layers on top of panels though is architected so it could work on other layout solutions as well if you want to try it as an admin go to structure panels custom layout  you can configure layouts for separate breakpoints eg mobile tablet desktop and even define your own grids these layouts and grids are all ctools exportable and become layouts you can use in your panels pages  new admin theme  brought to you by ember  this brings some nice light styling on drupal core s seven admin theme as well as a mobilefriendly toolbar courtesy of the admin module this functionality is still a bit rough but we re actively working on it right now we hope you enjoy playing with spark we greatly welcome collaboration join us in the issue queue  yes large 7 tag 1 another tag yet another tag a text field collaboratively administrate empowered markets via plugandplay networks dynamically procrastinate b2c users after installed base benefits dramatically visualize customer directed convergence without revolutionary roi efficiently unleash crossmedia information without crossmedia value quickly maximize timely deliverables for realtime schemas dramatically maintain clicksandmortar solutions without functional solutions completely synergize resource sucking relationships via premier niche markets professionally cultivate onetoone customer service with robust ideas dynamically innovate resourceleveling customer service for state of the art customer service  ', '1365409790'),
('2', 'node', ' about us collaboratively administrate empowered markets via plugandplay networks dynamically procrastinate b2c users after installed base benefits dramatically visualize customer directed convergence without revolutionary roi efficiently unleash crossmedia information without crossmedia value quickly maximize timely deliverables for realtime schemas dramatically maintain clicksandmortar solutions without functional solutions completely synergize resource sucking relationships via premier niche markets professionally cultivate onetoone customer service with robust ideas dynamically innovate resourceleveling customer service for state of the art customer service  ', '0');
/*!40000 ALTER TABLE search_dataset ENABLE KEYS */;

--
-- Table structure for table 'search_index'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores the search index, associating words, items and...';

--
-- Dumping data for table 'search_index'
--

/*!40000 ALTER TABLE search_index DISABLE KEYS */;
INSERT INTO `search_index` VALUES
('1', '1', 'node', '8.80075'),
('7', '1', 'node', '1.80275'),
('8', '1', 'node', '1'),
('about', '1', 'node', '1'),
('about', '2', 'node', '26'),
('actively', '1', 'node', '0.839384'),
('admin', '1', 'node', '7.18429'),
('administrate', '1', 'node', '0.78951'),
('administrate', '2', 'node', '1'),
('after', '1', 'node', '0.76431'),
('after', '2', 'node', '1'),
('all', '1', 'node', '0.902857'),
('also', '1', 'node', '1'),
('and', '1', 'node', '5.72285'),
('announcement', '1', 'node', '11'),
('another', '1', 'node', '17.4848'),
('any', '1', 'node', '1'),
('architected', '1', 'node', '0.98493'),
('are', '1', 'node', '0.906287'),
('around', '1', 'node', '1'),
('art', '1', 'node', '0.674137'),
('art', '2', 'node', '1'),
('authoring', '1', 'node', '1'),
('b2c', '1', 'node', '0.769219'),
('b2c', '2', 'node', '1'),
('base', '1', 'node', '0.759465'),
('base', '2', 'node', '1'),
('become', '1', 'node', '0.892724'),
('benefits', '1', 'node', '0.757065'),
('benefits', '2', 'node', '1'),
('bit', '1', 'node', '0.845322'),
('boolean', '1', 'node', '1'),
('breakpoints', '1', 'node', '0.938382'),
('brings', '1', 'node', '0.873132'),
('brought', '1', 'node', '0.879565'),
('builder', '1', 'node', '4'),
('but', '1', 'node', '1.83938'),
('can', '1', 'node', '5.83899'),
('ckeditor', '1', 'node', '11'),
('click', '1', 'node', '3'),
('clicksandmortar', '1', 'node', '0.71'),
('clicksandmortar', '2', 'node', '1'),
('collaboration', '1', 'node', '0.819249'),
('collaboratively', '1', 'node', '0.792123'),
('collaboratively', '2', 'node', '1'),
('completely', '1', 'node', '0.705825'),
('completely', '2', 'node', '1'),
('configure', '1', 'node', '0.949597'),
('contents', '1', 'node', '1'),
('convergence', '1', 'node', '0.745294'),
('convergence', '2', 'node', '1'),
('core', '1', 'node', '1.86055'),
('could', '1', 'node', '0.980874'),
('courtesy', '1', 'node', '3.85135'),
('crossmedia', '1', 'node', '1.45886'),
('crossmedia', '2', 'node', '2'),
('ctools', '1', 'node', '0.899454'),
('cultivate', '1', 'node', '0.689612'),
('cultivate', '2', 'node', '1'),
('custom', '1', 'node', '10.4874'),
('customer', '1', 'node', '2.78392'),
('customer', '2', 'node', '4'),
('define', '1', 'node', '0.920273'),
('deliverables', '1', 'node', '0.718502'),
('deliverables', '2', 'node', '1'),
('desktop', '1', 'node', '0.927431'),
('direct', '1', 'node', '1'),
('directed', '1', 'node', '0.747619'),
('directed', '2', 'node', '1'),
('directly', '1', 'node', '2'),
('distribution', '1', 'node', '12'),
('dramatically', '1', 'node', '1.46679'),
('dramatically', '2', 'node', '2'),
('drupal', '1', 'node', '3.86055'),
('dynamically', '1', 'node', '1.45405'),
('dynamically', '2', 'node', '2'),
('edit', '1', 'node', '15'),
('editing', '1', 'node', '4'),
('editor', '1', 'node', '1'),
('efficiently', '1', 'node', '0.736141'),
('efficiently', '2', 'node', '1'),
('ember', '1', 'node', '9.6397'),
('empowered', '1', 'node', '0.786915'),
('empowered', '2', 'node', '1'),
('enjoy', '1', 'node', '0.824901'),
('even', '1', 'node', '0.923838'),
('experience', '1', 'node', '1'),
('exportable', '1', 'node', '0.896076'),
('fancier', '1', 'node', '1'),
('features', '1', 'node', '1'),
('field', '1', 'node', '2.79212'),
('fields', '1', 'node', '1'),
('find', '1', 'node', '1'),
('for', '1', 'node', '6.33448'),
('for', '2', 'node', '2'),
('form', '1', 'node', '1'),
('from', '1', 'node', '2'),
('functional', '1', 'node', '0.707906'),
('functional', '2', 'node', '1'),
('functionality', '1', 'node', '0.851346'),
('get', '1', 'node', '1'),
('goal', '1', 'node', '1'),
('greatly', '1', 'node', '1.81925'),
('gridbuilder', '1', 'node', '11'),
('grids', '1', 'node', '1.81951'),
('hope', '1', 'node', '0.827757'),
('ideas', '1', 'node', '0.681785'),
('ideas', '2', 'node', '1'),
('images', '1', 'node', '1'),
('improve', '1', 'node', '1'),
('improvements', '1', 'node', '1'),
('including', '1', 'node', '1'),
('info', '1', 'node', '1'),
('information', '1', 'node', '0.729424'),
('information', '2', 'node', '1'),
('inline', '1', 'node', '5'),
('innovate', '1', 'node', '0.679856'),
('innovate', '2', 'node', '1'),
('installed', '1', 'node', '0.76188'),
('installed', '2', 'node', '1'),
('into', '1', 'node', '2'),
('issue', '1', 'node', '8.95041'),
('its', '1', 'node', '1'),
('join', '1', 'node', '0.816452'),
('just', '1', 'node', '1'),
('large', '1', 'node', '0.805455'),
('layers', '1', 'node', '1'),
('layout', '1', 'node', '26.4145'),
('layouts', '1', 'node', '2.74151'),
('light', '1', 'node', '0.863659'),
('like', '1', 'node', '1'),
('link', '1', 'node', '1'),
('log', '1', 'node', '1'),
('look', '1', 'node', '1'),
('maintain', '1', 'node', '0.712106'),
('maintain', '2', 'node', '1'),
('markets', '1', 'node', '1.47593'),
('markets', '2', 'node', '2'),
('maximize', '1', 'node', '0.722831'),
('maximize', '2', 'node', '1'),
('mobile', '1', 'node', '0.934703'),
('mobilefriendly', '1', 'node', '0.857458'),
('module', '1', 'node', '11.8513'),
('modules', '1', 'node', '1'),
('more', '1', 'node', '3'),
('multivalue', '1', 'node', '1'),
('networks', '1', 'node', '0.776703'),
('networks', '2', 'node', '1'),
('new', '1', 'node', '3.53127'),
('nice', '1', 'node', '0.866793'),
('niche', '1', 'node', '0.693594'),
('niche', '2', 'node', '1'),
('nifty', '1', 'node', '1'),
('node', '1', 'node', '1'),
('now', '1', 'node', '0.830633'),
('official', '1', 'node', '11'),
('one', '1', 'node', '1'),
('onetoone', '1', 'node', '0.687638'),
('onetoone', '2', 'node', '1'),
('other', '1', 'node', '0.972861'),
('our', '1', 'node', '1'),
('out', '1', 'node', '1'),
('own', '1', 'node', '0.916736'),
('pages', '1', 'node', '0.886095'),
('panels', '1', 'node', '12.3666'),
('paste', '1', 'node', '1'),
('playing', '1', 'node', '0.822065'),
('please', '1', 'node', '1'),
('plugandplay', '1', 'node', '0.779231'),
('plugandplay', '2', 'node', '1'),
('premier', '1', 'node', '0.695602'),
('premier', '2', 'node', '1'),
('prerelease', '1', 'node', '1'),
('procrastinate', '1', 'node', '0.771698'),
('procrastinate', '2', 'node', '1'),
('professionally', '1', 'node', '0.691597'),
('professionally', '2', 'node', '1'),
('proposed', '1', 'node', '1'),
('queue', '1', 'node', '8.92007'),
('quick', '1', 'node', '1'),
('quickly', '1', 'node', '0.725015'),
('quickly', '2', 'node', '1'),
('read', '1', 'node', '2'),
('realtime', '1', 'node', '0.716357'),
('realtime', '2', 'node', '1'),
('relationships', '1', 'node', '0.697623'),
('relationships', '2', 'node', '1'),
('resource', '1', 'node', '0.7017'),
('resource', '2', 'node', '1'),
('resourceleveling', '1', 'node', '0.677939'),
('resourceleveling', '2', 'node', '1'),
('responsive', '1', 'node', '4'),
('revolutionary', '1', 'node', '0.740689'),
('revolutionary', '2', 'node', '1'),
('rich', '1', 'node', '1'),
('right', '1', 'node', '0.833529'),
('robust', '1', 'node', '0.683725'),
('robust', '2', 'node', '1'),
('roi', '1', 'node', '0.738408'),
('roi', '2', 'node', '1'),
('rough', '1', 'node', '0.842342'),
('schemas', '1', 'node', '0.714225'),
('schemas', '2', 'node', '1'),
('separate', '1', 'node', '0.942091'),
('service', '1', 'node', '2.03396'),
('service', '2', 'node', '3'),
('seven', '1', 'node', '0.860547'),
('sidebar', '1', 'node', '1'),
('simply', '1', 'node', '1'),
('solutions', '1', 'node', '2.38264'),
('solutions', '2', 'node', '2'),
('some', '1', 'node', '0.869951'),
('spark', '1', 'node', '37.8192'),
('state', '1', 'node', '0.676032'),
('state', '2', 'node', '1'),
('still', '1', 'node', '0.848323'),
('structure', '1', 'node', '10.5295'),
('styling', '1', 'node', '1.86055'),
('such', '1', 'node', '1'),
('sucking', '1', 'node', '0.699655'),
('sucking', '2', 'node', '1'),
('support', '1', 'node', '1'),
('synergize', '1', 'node', '0.703756'),
('synergize', '2', 'node', '1'),
('tables', '1', 'node', '1'),
('tablet', '1', 'node', '0.931053'),
('tag', '1', 'node', '26.2859'),
('take', '1', 'node', '1'),
('text', '1', 'node', '1.79212'),
('that', '1', 'node', '1'),
('the', '1', 'node', '20.3392'),
('the', '2', 'node', '1'),
('theme', '1', 'node', '5.37572'),
('then', '1', 'node', '1'),
('there', '1', 'node', '1'),
('these', '1', 'node', '0.909743'),
('this', '1', 'node', '3.72448'),
('though', '1', 'node', '0.989021'),
('through', '1', 'node', '2'),
('timely', '1', 'node', '0.72066'),
('timely', '2', 'node', '1'),
('today', '1', 'node', '1'),
('tomorrow', '1', 'node', '1'),
('toolbar', '1', 'node', '0.854391'),
('top', '1', 'node', '0.997306'),
('true', '1', 'node', '4'),
('try', '1', 'node', '1.95723'),
('unleash', '1', 'node', '0.733888'),
('unleash', '2', 'node', '1'),
('use', '1', 'node', '0.889397'),
('used', '1', 'node', '1'),
('users', '1', 'node', '0.766757'),
('users', '2', 'node', '1'),
('value', '1', 'node', '0.727213'),
('value', '2', 'node', '1'),
('version', '1', 'node', '1'),
('via', '1', 'node', '1.47738'),
('via', '2', 'node', '2'),
('visualize', '1', 'node', '0.752312'),
('visualize', '2', 'node', '1'),
('want', '1', 'node', '0.961087'),
('welcome', '1', 'node', '27.8192'),
('well', '1', 'node', '1.82244'),
('will', '1', 'node', '1'),
('with', '1', 'node', '2.50297'),
('with', '2', 'node', '1'),
('within', '1', 'node', '1'),
('without', '1', 'node', '2.1781'),
('without', '2', 'node', '3'),
('word', '1', 'node', '1'),
('work', '1', 'node', '0.976851'),
('working', '1', 'node', '0.836446'),
('wwwsparkdrupalcom', '1', 'node', '11'),
('wysiwyg', '1', 'node', '4'),
('yes', '1', 'node', '0.808176'),
('yet', '1', 'node', '8.74229'),
('you', '1', 'node', '8.50132'),
('your', '1', 'node', '3.80283');
/*!40000 ALTER TABLE search_index ENABLE KEYS */;

--
-- Table structure for table 'search_node_links'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores items (like nodes) that link to other nodes, used...';

--
-- Dumping data for table 'search_node_links'
--

/*!40000 ALTER TABLE search_node_links DISABLE KEYS */;
/*!40000 ALTER TABLE search_node_links ENABLE KEYS */;

--
-- Table structure for table 'search_total'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores search totals for words.';

--
-- Dumping data for table 'search_total'
--

/*!40000 ALTER TABLE search_total DISABLE KEYS */;
INSERT INTO `search_total` VALUES
('1', '0.0467397'),
('7', '0.191649'),
('8', '0.30103'),
('about', '0.0157943'),
('actively', '0.30103'),
('admin', '0.0565972'),
('administrate', '0.192794'),
('after', '0.195012'),
('all', '0.30103'),
('also', '0.30103'),
('and', '0.0699411'),
('announcement', '0.0377886'),
('another', '0.0241541'),
('any', '0.30103'),
('architected', '0.30103'),
('are', '0.30103'),
('around', '0.30103'),
('art', '0.203393'),
('authoring', '0.30103'),
('b2c', '0.194576'),
('base', '0.195444'),
('become', '0.30103'),
('benefits', '0.195659'),
('bit', '0.30103'),
('boolean', '0.30103'),
('breakpoints', '0.30103'),
('brings', '0.30103'),
('brought', '0.30103'),
('builder', '0.09691'),
('but', '0.188552'),
('can', '0.0686542'),
('ckeditor', '0.0377886'),
('click', '0.124939'),
('clicksandmortar', '0.199973'),
('collaboration', '0.30103'),
('collaboratively', '0.192567'),
('completely', '0.200365'),
('configure', '0.30103'),
('contents', '0.30103'),
('convergence', '0.19672'),
('core', '0.186808'),
('could', '0.30103'),
('courtesy', '0.10025'),
('crossmedia', '0.110291'),
('ctools', '0.30103'),
('cultivate', '0.201903'),
('custom', '0.0395541'),
('customer', '0.0597177'),
('define', '0.30103'),
('deliverables', '0.19918'),
('desktop', '0.30103'),
('direct', '0.30103'),
('directed', '0.19651'),
('directly', '0.176091'),
('distribution', '0.0347621'),
('dramatically', '0.110068'),
('drupal', '0.100036'),
('dynamically', '0.110427'),
('edit', '0.0280287'),
('editing', '0.09691'),
('editor', '0.30103'),
('efficiently', '0.197553'),
('ember', '0.0428659'),
('empowered', '0.19302'),
('enjoy', '0.30103'),
('even', '0.30103'),
('experience', '0.30103'),
('exportable', '0.30103'),
('fancier', '0.30103'),
('features', '0.30103'),
('field', '0.132948'),
('fields', '0.30103'),
('find', '0.30103'),
('for', '0.0492116'),
('form', '0.30103'),
('from', '0.176091'),
('functional', '0.20017'),
('functionality', '0.30103'),
('get', '0.30103'),
('goal', '0.30103'),
('greatly', '0.190241'),
('gridbuilder', '0.0377886'),
('grids', '0.190219'),
('hope', '0.30103'),
('ideas', '0.202653'),
('images', '0.30103'),
('improve', '0.30103'),
('improvements', '0.30103'),
('including', '0.30103'),
('info', '0.30103'),
('information', '0.198169'),
('inline', '0.0791812'),
('innovate', '0.202839'),
('installed', '0.195229'),
('into', '0.176091'),
('issue', '0.045998'),
('its', '0.30103'),
('join', '0.30103'),
('just', '0.30103'),
('large', '0.30103'),
('layers', '0.30103'),
('layout', '0.016138'),
('layouts', '0.135057'),
('light', '0.30103'),
('like', '0.30103'),
('link', '0.30103'),
('log', '0.30103'),
('look', '0.30103'),
('maintain', '0.199776'),
('markets', '0.109812'),
('maximize', '0.198778'),
('mobile', '0.30103'),
('mobilefriendly', '0.30103'),
('module', '0.0351809'),
('modules', '0.30103'),
('more', '0.124939'),
('multivalue', '0.30103'),
('networks', '0.193915'),
('new', '0.108289'),
('nice', '0.30103'),
('niche', '0.201523'),
('nifty', '0.30103'),
('node', '0.30103'),
('now', '0.30103'),
('official', '0.0377886'),
('one', '0.30103'),
('onetoone', '0.202091'),
('other', '0.30103'),
('our', '0.30103'),
('out', '0.30103'),
('own', '0.30103'),
('pages', '0.30103'),
('panels', '0.0337706'),
('paste', '0.30103'),
('playing', '0.30103'),
('please', '0.30103'),
('plugandplay', '0.193692'),
('premier', '0.201332'),
('prerelease', '0.30103'),
('procrastinate', '0.194356'),
('professionally', '0.201713'),
('proposed', '0.30103'),
('queue', '0.0461465'),
('quick', '0.30103'),
('quickly', '0.198576'),
('read', '0.176091'),
('realtime', '0.199379'),
('relationships', '0.20114'),
('resource', '0.200754'),
('resourceleveling', '0.203025'),
('responsive', '0.09691'),
('revolutionary', '0.197139'),
('rich', '0.30103'),
('right', '0.30103'),
('robust', '0.202467'),
('roi', '0.197346'),
('rough', '0.30103'),
('schemas', '0.199578'),
('separate', '0.30103'),
('service', '0.0786927'),
('seven', '0.30103'),
('sidebar', '0.30103'),
('simply', '0.30103'),
('solutions', '0.0892596'),
('some', '0.30103'),
('spark', '0.0113342'),
('state', '0.203209'),
('still', '0.30103'),
('structure', '0.0394028'),
('styling', '0.186808'),
('such', '0.30103'),
('sucking', '0.200947'),
('support', '0.30103'),
('synergize', '0.20056'),
('tables', '0.30103'),
('tablet', '0.30103'),
('tag', '0.0162154'),
('take', '0.30103'),
('text', '0.192567'),
('that', '0.30103'),
('the', '0.0198895'),
('theme', '0.0740926'),
('then', '0.30103'),
('there', '0.30103'),
('these', '0.30103'),
('this', '0.103288'),
('though', '0.30103'),
('through', '0.176091'),
('timely', '0.198979'),
('today', '0.30103'),
('tomorrow', '0.30103'),
('toolbar', '0.30103'),
('top', '0.30103'),
('true', '0.09691'),
('try', '0.179244'),
('unleash', '0.19776'),
('use', '0.30103'),
('used', '0.30103'),
('users', '0.194794'),
('value', '0.198373'),
('version', '0.30103'),
('via', '0.109772'),
('visualize', '0.196086'),
('want', '0.30103'),
('welcome', '0.0153373'),
('well', '0.189972'),
('will', '0.30103'),
('with', '0.109063'),
('within', '0.30103'),
('without', '0.0766845'),
('word', '0.30103'),
('work', '0.30103'),
('working', '0.30103'),
('wwwsparkdrupalcom', '0.0377886'),
('wysiwyg', '0.09691'),
('yes', '0.30103'),
('yet', '0.0470359'),
('you', '0.0482976'),
('your', '0.10139');
/*!40000 ALTER TABLE search_total ENABLE KEYS */;

--
-- Table structure for table 'semaphore'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Table for holding semaphores, locks, flags, etc. that...';

--
-- Dumping data for table 'semaphore'
--

/*!40000 ALTER TABLE semaphore DISABLE KEYS */;
/*!40000 ALTER TABLE semaphore ENABLE KEYS */;

--
-- Table structure for table 'sequences'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores IDs.';

--
-- Dumping data for table 'sequences'
--

/*!40000 ALTER TABLE sequences DISABLE KEYS */;
INSERT INTO `sequences` VALUES
('3');
/*!40000 ALTER TABLE sequences ENABLE KEYS */;

--
-- Table structure for table 'sessions'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Drupal’s session handlers read and write into the...';

--
-- Dumping data for table 'sessions'
--

/*!40000 ALTER TABLE sessions DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('1', 'NA30X9p56coFKx65gEiPPjLlUiJO--f8mWYAnsBIu0Q', '', '127.0.0.1', '1365415792', '0', 'ckeditor|a:4:{s:8:"Advanced";a:2:{s:13:"UserFilesPath";s:21:"/sites/default/files/";s:21:"UserFilesAbsolutePath";s:77:"/home/local/PYCO/vinh.tran/pyco/www/spark-7.x-1.0-alpha8/sites/default/files/";}s:4:"Full";a:2:{s:13:"UserFilesPath";s:21:"/sites/default/files/";s:21:"UserFilesAbsolutePath";s:77:"/home/local/PYCO/vinh.tran/pyco/www/spark-7.x-1.0-alpha8/sites/default/files/";}s:13:"UserFilesPath";s:21:"/sites/default/files/";s:21:"UserFilesAbsolutePath";s:77:"/home/local/PYCO/vinh.tran/pyco/www/spark-7.x-1.0-alpha8/sites/default/files/";}batches|a:2:{i:2;b:1;i:3;b:1;}'),
('1', 'xo7TdLqz8s1lgfh-Ra3OwTVDIgEy8t-Wub1OeqmpqDo', '', '127.0.0.1', '1365409485', '0', 'batches|a:1:{i:1;b:1;}ckeditor|a:2:{s:8:"Advanced";a:2:{s:13:"UserFilesPath";s:46:"/www/spark-7.x-1.0-alpha8/sites/default/files/";s:21:"UserFilesAbsolutePath";s:77:"/home/local/PYCO/vinh.tran/pyco/www/spark-7.x-1.0-alpha8/sites/default/files/";}s:4:"Full";a:2:{s:13:"UserFilesPath";s:46:"/www/spark-7.x-1.0-alpha8/sites/default/files/";s:21:"UserFilesAbsolutePath";s:77:"/home/local/PYCO/vinh.tran/pyco/www/spark-7.x-1.0-alpha8/sites/default/files/";}}');
/*!40000 ALTER TABLE sessions ENABLE KEYS */;

--
-- Table structure for table 'shortcut_set'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores information about sets of shortcuts links.';

--
-- Dumping data for table 'shortcut_set'
--

/*!40000 ALTER TABLE shortcut_set DISABLE KEYS */;
INSERT INTO `shortcut_set` VALUES
('shortcut-set-1', 'Default');
/*!40000 ALTER TABLE shortcut_set ENABLE KEYS */;

--
-- Table structure for table 'shortcut_set_users'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Maps users to shortcut sets.';

--
-- Dumping data for table 'shortcut_set_users'
--

/*!40000 ALTER TABLE shortcut_set_users DISABLE KEYS */;
/*!40000 ALTER TABLE shortcut_set_users ENABLE KEYS */;

--
-- Table structure for table 'system'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='A list of all modules, themes, and theme engines that are...';

--
-- Dumping data for table 'system'
--

/*!40000 ALTER TABLE system DISABLE KEYS */;
INSERT INTO `system` VALUES
('modules/aggregator/aggregator.module', 'aggregator', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:10:"Aggregator";s:11:"description";s:57:"Aggregates syndicated content (RSS, RDF, and Atom feeds).";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"aggregator.test";}s:9:"configure";s:41:"admin/config/services/aggregator/settings";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:14:"aggregator.css";s:33:"modules/aggregator/aggregator.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/aggregator/tests/aggregator_test.module', 'aggregator_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:23:"Aggregator module tests";s:11:"description";s:46:"Support module for aggregator related testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/block/block.module', 'block', 'module', '', '1', '0', 7008, '-5', 'a:12:{s:4:"name";s:5:"Block";s:11:"description";s:140:"Controls the visual building blocks a page is constructed with. Blocks are boxes of content rendered into an area, or region, of a web page.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"block.test";}s:9:"configure";s:21:"admin/structure/block";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/block/tests/block_test.module', 'block_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:10:"Block test";s:11:"description";s:21:"Provides test blocks.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/blog/blog.module', 'blog', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:4:"Blog";s:11:"description";s:25:"Enables multi-user blogs.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"blog.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/book/book.module', 'book', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:4:"Book";s:11:"description";s:66:"Allows users to create and organize related content in an outline.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"book.test";}s:9:"configure";s:27:"admin/content/book/settings";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"book.css";s:21:"modules/book/book.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/color/color.module', 'color', 'module', '', '1', '0', 7001, '0', 'a:11:{s:4:"name";s:5:"Color";s:11:"description";s:70:"Allows administrators to change the color scheme of compatible themes.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"color.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/comment/comment.module', 'comment', 'module', '', '1', '0', 7009, '0', 'a:13:{s:4:"name";s:7:"Comment";s:11:"description";s:57:"Allows users to comment on and discuss published content.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:4:"text";}s:5:"files";a:2:{i:0;s:14:"comment.module";i:1;s:12:"comment.test";}s:9:"configure";s:21:"admin/content/comment";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:11:"comment.css";s:27:"modules/comment/comment.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/contact/contact.module', 'contact', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:7:"Contact";s:11:"description";s:61:"Enables the use of both personal and site-wide contact forms.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"contact.test";}s:9:"configure";s:23:"admin/structure/contact";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/contextual/contextual.module', 'contextual', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:16:"Contextual links";s:11:"description";s:75:"Provides contextual links to perform actions related to elements on a page.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"contextual.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/dashboard/dashboard.module', 'dashboard', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:9:"Dashboard";s:11:"description";s:136:"Provides a dashboard page in the administrative interface for organizing administrative tasks and tracking information within your site.";s:4:"core";s:3:"7.x";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:5:"files";a:1:{i:0;s:14:"dashboard.test";}s:12:"dependencies";a:1:{i:0;s:5:"block";}s:9:"configure";s:25:"admin/dashboard/customize";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/dblog/dblog.module', 'dblog', 'module', '', '1', '1', 7002, '0', 'a:11:{s:4:"name";s:16:"Database logging";s:11:"description";s:47:"Logs and records system events to the database.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"dblog.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/field/field.module', 'field', 'module', '', '1', '0', 7003, '0', 'a:13:{s:4:"name";s:5:"Field";s:11:"description";s:57:"Field API to add fields to entities like nodes and users.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:4:{i:0;s:12:"field.module";i:1;s:16:"field.attach.inc";i:2;s:20:"field.info.class.inc";i:3;s:16:"tests/field.test";}s:12:"dependencies";a:1:{i:0;s:17:"field_sql_storage";}s:8:"required";b:1;s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:15:"theme/field.css";s:29:"modules/field/theme/field.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/field/modules/field_sql_storage/field_sql_storage.module', 'field_sql_storage', 'module', '', '1', '0', 7002, '0', 'a:12:{s:4:"name";s:17:"Field SQL storage";s:11:"description";s:37:"Stores field data in an SQL database.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:22:"field_sql_storage.test";}s:8:"required";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/field/modules/list/list.module', 'list', 'module', '', '1', '0', 7002, '0', 'a:13:{s:4:"name";s:4:"List";s:11:"description";s:69:"Defines list field types. Use with Options to create selection lists.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:5:"field";i:1;s:7:"options";}s:5:"files";a:1:{i:0;s:15:"tests/list.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;s:8:"required";b:1;s:11:"explanation";s:76:"Field type(s) in use - see <a href="/?q=admin/reports/fields">Field list</a>";}'),
('modules/field/modules/list/tests/list_test.module', 'list_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:9:"List test";s:11:"description";s:41:"Support module for the List module tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/field/modules/number/number.module', 'number', 'module', '', '1', '0', 0, '0', 'a:13:{s:4:"name";s:6:"Number";s:11:"description";s:28:"Defines numeric field types.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:11:"number.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;s:8:"required";b:1;s:11:"explanation";s:76:"Field type(s) in use - see <a href="/?q=admin/reports/fields">Field list</a>";}'),
('modules/field/modules/options/options.module', 'options', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:7:"Options";s:11:"description";s:82:"Defines selection, check box and radio button widgets for text and numeric fields.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:12:"options.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/field/modules/text/text.module', 'text', 'module', '', '1', '0', 7000, '0', 'a:13:{s:4:"name";s:4:"Text";s:11:"description";s:32:"Defines simple text field types.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:9:"text.test";}s:8:"required";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;s:11:"explanation";s:76:"Field type(s) in use - see <a href="/?q=admin/reports/fields">Field list</a>";}'),
('modules/field/tests/field_test.module', 'field_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:14:"Field API Test";s:11:"description";s:39:"Support module for the Field API tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:5:"files";a:1:{i:0;s:21:"field_test.entity.inc";}s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/field_ui/field_ui.module', 'field_ui', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:8:"Field UI";s:11:"description";s:33:"User interface for the Field API.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:13:"field_ui.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/file/file.module', 'file', 'module', '', '1', '0', 0, '0', 'a:13:{s:4:"name";s:4:"File";s:11:"description";s:26:"Defines a file field type.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"field";}s:5:"files";a:1:{i:0;s:15:"tests/file.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;s:8:"required";b:1;s:11:"explanation";s:76:"Field type(s) in use - see <a href="/?q=admin/reports/fields">Field list</a>";}'),
('modules/file/tests/file_module_test.module', 'file_module_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:9:"File test";s:11:"description";s:53:"Provides hooks for testing File module functionality.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/filter/filter.module', 'filter', 'module', '', '1', '0', 7010, '0', 'a:13:{s:4:"name";s:6:"Filter";s:11:"description";s:43:"Filters content in preparation for display.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"filter.test";}s:8:"required";b:1;s:9:"configure";s:28:"admin/config/content/formats";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/forum/forum.module', 'forum', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:5:"Forum";s:11:"description";s:27:"Provides discussion forums.";s:12:"dependencies";a:2:{i:0;s:8:"taxonomy";i:1;s:7:"comment";}s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:10:"forum.test";}s:9:"configure";s:21:"admin/structure/forum";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:9:"forum.css";s:23:"modules/forum/forum.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/help/help.module', 'help', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:4:"Help";s:11:"description";s:35:"Manages the display of online help.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"help.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/image/image.module', 'image', 'module', '', '1', '0', 7004, '0', 'a:14:{s:4:"name";s:5:"Image";s:11:"description";s:34:"Provides image manipulation tools.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:4:"file";}s:5:"files";a:1:{i:0;s:10:"image.test";}s:9:"configure";s:31:"admin/config/media/image-styles";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;s:8:"required";b:1;s:11:"explanation";s:76:"Field type(s) in use - see <a href="/?q=admin/reports/fields">Field list</a>";}'),
('modules/image/tests/image_module_test.module', 'image_module_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:10:"Image test";s:11:"description";s:69:"Provides hook implementations for testing Image module functionality.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:24:"image_module_test.module";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/locale/locale.module', 'locale', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:6:"Locale";s:11:"description";s:119:"Adds language handling functionality and enables the translation of the user interface to languages other than English.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"locale.test";}s:9:"configure";s:30:"admin/config/regional/language";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/locale/tests/locale_test.module', 'locale_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"Locale Test";s:11:"description";s:42:"Support module for the locale layer tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/menu/menu.module', 'menu', 'module', '', '1', '0', 7003, '0', 'a:12:{s:4:"name";s:4:"Menu";s:11:"description";s:60:"Allows administrators to customize the site navigation menu.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"menu.test";}s:9:"configure";s:20:"admin/structure/menu";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/node/node.module', 'node', 'module', '', '1', '0', 7013, '0', 'a:14:{s:4:"name";s:4:"Node";s:11:"description";s:66:"Allows content to be submitted to the site and displayed on pages.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:11:"node.module";i:1;s:9:"node.test";}s:8:"required";b:1;s:9:"configure";s:21:"admin/structure/types";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"node.css";s:21:"modules/node/node.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/node/tests/node_access_test.module', 'node_access_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:24:"Node module access tests";s:11:"description";s:43:"Support module for node permission testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/node/tests/node_test.module', 'node_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:17:"Node module tests";s:11:"description";s:40:"Support module for node related testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/node/tests/node_test_exception.module', 'node_test_exception', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:27:"Node module exception tests";s:11:"description";s:50:"Support module for node related exception testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/openid/openid.module', 'openid', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:6:"OpenID";s:11:"description";s:48:"Allows users to log into your site using OpenID.";s:7:"version";s:4:"7.22";s:7:"package";s:4:"Core";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"openid.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/openid/tests/openid_test.module', 'openid_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:21:"OpenID dummy provider";s:11:"description";s:33:"OpenID provider used for testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"openid";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/overlay/overlay.module', 'overlay', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:7:"Overlay";s:11:"description";s:59:"Displays the Drupal administration interface in an overlay.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/path/path.module', 'path', 'module', '', '1', '0', 0, '0', 'a:12:{s:4:"name";s:4:"Path";s:11:"description";s:28:"Allows users to rename URLs.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"path.test";}s:9:"configure";s:24:"admin/config/search/path";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/php/php.module', 'php', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:10:"PHP filter";s:11:"description";s:50:"Allows embedded PHP code/snippets to be evaluated.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:8:"php.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/poll/poll.module', 'poll', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:4:"Poll";s:11:"description";s:95:"Allows your site to capture votes on different topics in the form of multiple choice questions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:9:"poll.test";}s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"poll.css";s:21:"modules/poll/poll.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/profile/profile.module', 'profile', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:7:"Profile";s:11:"description";s:36:"Supports configurable user profiles.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"profile.test";}s:9:"configure";s:27:"admin/config/people/profile";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/rdf/rdf.module', 'rdf', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:3:"RDF";s:11:"description";s:148:"Enriches your content with metadata to let other applications (e.g. search engines, aggregators) better understand its relationships and attributes.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:8:"rdf.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/rdf/tests/rdf_test.module', 'rdf_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:16:"RDF module tests";s:11:"description";s:38:"Support module for RDF module testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/search/search.module', 'search', 'module', '', '1', '0', 7000, '0', 'a:13:{s:4:"name";s:6:"Search";s:11:"description";s:36:"Enables site-wide keyword searching.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:19:"search.extender.inc";i:1;s:11:"search.test";}s:9:"configure";s:28:"admin/config/search/settings";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"search.css";s:25:"modules/search/search.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/search/tests/search_embedded_form.module', 'search_embedded_form', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:20:"Search embedded form";s:11:"description";s:59:"Support module for search module testing of embedded forms.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/search/tests/search_extra_type.module', 'search_extra_type', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:16:"Test search type";s:11:"description";s:41:"Support module for search module testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/shortcut/shortcut.module', 'shortcut', 'module', '', '1', '0', 0, '0', 'a:12:{s:4:"name";s:8:"Shortcut";s:11:"description";s:60:"Allows users to manage customizable lists of shortcut links.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:13:"shortcut.test";}s:9:"configure";s:36:"admin/config/user-interface/shortcut";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/simpletest/simpletest.module', 'simpletest', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:7:"Testing";s:11:"description";s:53:"Provides a framework for unit and functional testing.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:48:{i:0;s:15:"simpletest.test";i:1;s:24:"drupal_web_test_case.php";i:2;s:18:"tests/actions.test";i:3;s:15:"tests/ajax.test";i:4;s:16:"tests/batch.test";i:5;s:20:"tests/bootstrap.test";i:6;s:16:"tests/cache.test";i:7;s:17:"tests/common.test";i:8;s:24:"tests/database_test.test";i:9;s:32:"tests/entity_crud_hook_test.test";i:10;s:23:"tests/entity_query.test";i:11;s:16:"tests/error.test";i:12;s:15:"tests/file.test";i:13;s:23:"tests/filetransfer.test";i:14;s:15:"tests/form.test";i:15;s:16:"tests/graph.test";i:16;s:16:"tests/image.test";i:17;s:15:"tests/lock.test";i:18;s:15:"tests/mail.test";i:19;s:15:"tests/menu.test";i:20;s:17:"tests/module.test";i:21;s:16:"tests/pager.test";i:22;s:19:"tests/password.test";i:23;s:15:"tests/path.test";i:24;s:19:"tests/registry.test";i:25;s:17:"tests/schema.test";i:26;s:18:"tests/session.test";i:27;s:20:"tests/tablesort.test";i:28;s:16:"tests/theme.test";i:29;s:18:"tests/unicode.test";i:30;s:17:"tests/update.test";i:31;s:17:"tests/xmlrpc.test";i:32;s:26:"tests/upgrade/upgrade.test";i:33;s:34:"tests/upgrade/upgrade.comment.test";i:34;s:33:"tests/upgrade/upgrade.filter.test";i:35;s:32:"tests/upgrade/upgrade.forum.test";i:36;s:33:"tests/upgrade/upgrade.locale.test";i:37;s:31:"tests/upgrade/upgrade.menu.test";i:38;s:31:"tests/upgrade/upgrade.node.test";i:39;s:35:"tests/upgrade/upgrade.taxonomy.test";i:40;s:34:"tests/upgrade/upgrade.trigger.test";i:41;s:39:"tests/upgrade/upgrade.translatable.test";i:42;s:33:"tests/upgrade/upgrade.upload.test";i:43;s:31:"tests/upgrade/upgrade.user.test";i:44;s:36:"tests/upgrade/update.aggregator.test";i:45;s:33:"tests/upgrade/update.trigger.test";i:46;s:31:"tests/upgrade/update.field.test";i:47;s:30:"tests/upgrade/update.user.test";}s:9:"configure";s:41:"admin/config/development/testing/settings";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/actions_loop_test.module', 'actions_loop_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:17:"Actions loop test";s:11:"description";s:39:"Support module for action loop testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/ajax_forms_test.module', 'ajax_forms_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:26:"AJAX form test mock module";s:11:"description";s:25:"Test for AJAX form calls.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/ajax_test.module', 'ajax_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:9:"AJAX Test";s:11:"description";s:40:"Support module for AJAX framework tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/batch_test.module', 'batch_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:14:"Batch API test";s:11:"description";s:35:"Support module for Batch API tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/common_test.module', 'common_test', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:11:"Common Test";s:11:"description";s:32:"Support module for Common tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:15:"common_test.css";s:40:"modules/simpletest/tests/common_test.css";}s:5:"print";a:1:{s:21:"common_test.print.css";s:46:"modules/simpletest/tests/common_test.print.css";}}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/common_test_cron_helper.module', 'common_test_cron_helper', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:23:"Common Test Cron Helper";s:11:"description";s:56:"Helper module for CronRunTestCase::testCronExceptions().";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/database_test.module', 'database_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:13:"Database Test";s:11:"description";s:40:"Support module for Database layer tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/drupal_system_listing_compatible_test/drupal_system_listing_compatible_test.module', 'drupal_system_listing_compatible_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:37:"Drupal system listing compatible test";s:11:"description";s:62:"Support module for testing the drupal_system_listing function.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/drupal_system_listing_incompatible_test/drupal_system_listing_incompatible_test.module', 'drupal_system_listing_incompatible_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:39:"Drupal system listing incompatible test";s:11:"description";s:62:"Support module for testing the drupal_system_listing function.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/entity_cache_test.module', 'entity_cache_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:17:"Entity cache test";s:11:"description";s:40:"Support module for testing entity cache.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:28:"entity_cache_test_dependency";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/entity_cache_test_dependency.module', 'entity_cache_test_dependency', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:28:"Entity cache test dependency";s:11:"description";s:51:"Support dependency module for testing entity cache.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/entity_crud_hook_test.module', 'entity_crud_hook_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:22:"Entity CRUD Hooks Test";s:11:"description";s:35:"Support module for CRUD hook tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/entity_query_access_test.module', 'entity_query_access_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:24:"Entity query access test";s:11:"description";s:49:"Support module for checking entity query results.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/error_test.module', 'error_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:10:"Error test";s:11:"description";s:47:"Support module for error and exception testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/file_test.module', 'file_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:9:"File test";s:11:"description";s:39:"Support module for file handling tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:16:"file_test.module";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/filter_test.module', 'filter_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:18:"Filter test module";s:11:"description";s:33:"Tests filter hooks and functions.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/form_test.module', 'form_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:12:"FormAPI Test";s:11:"description";s:34:"Support module for Form API tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/image_test.module', 'image_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:10:"Image test";s:11:"description";s:39:"Support module for image toolkit tests.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/menu_test.module', 'menu_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:15:"Hook menu tests";s:11:"description";s:37:"Support module for menu hook testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/module_test.module', 'module_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"Module test";s:11:"description";s:41:"Support module for module system testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/path_test.module', 'path_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:15:"Hook path tests";s:11:"description";s:37:"Support module for path hook testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/psr_0_test/psr_0_test.module', 'psr_0_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:16:"PSR-0 Test cases";s:11:"description";s:44:"Test classes to be discovered by simpletest.";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/requirements1_test.module', 'requirements1_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:19:"Requirements 1 Test";s:11:"description";s:80:"Tests that a module is not installed when it fails hook_requirements(''install'').";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/requirements2_test.module', 'requirements2_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:19:"Requirements 2 Test";s:11:"description";s:98:"Tests that a module is not installed when the one it depends on fails hook_requirements(''install).";s:12:"dependencies";a:2:{i:0;s:18:"requirements1_test";i:1;s:7:"comment";}s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/session_test.module', 'session_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:12:"Session test";s:11:"description";s:40:"Support module for session data testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/system_dependencies_test.module', 'system_dependencies_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:22:"System dependency test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:19:"_missing_dependency";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/system_incompatible_core_version_dependencies_test.module', 'system_incompatible_core_version_dependencies_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:50:"System incompatible core version dependencies test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:37:"system_incompatible_core_version_test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/system_incompatible_core_version_test.module', 'system_incompatible_core_version_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:37:"System incompatible core version test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"5.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/system_incompatible_module_version_dependencies_test.module', 'system_incompatible_module_version_dependencies_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:52:"System incompatible module version dependencies test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:46:"system_incompatible_module_version_test (>2.0)";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/system_incompatible_module_version_test.module', 'system_incompatible_module_version_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:39:"System incompatible module version test";s:11:"description";s:47:"Support module for testing system dependencies.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/system_test.module', 'system_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"System test";s:11:"description";s:34:"Support module for system testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:18:"system_test.module";}s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/taxonomy_test.module', 'taxonomy_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:20:"Taxonomy test module";s:11:"description";s:45:""Tests functions and hooks not used in core".";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:8:"taxonomy";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/theme_test.module', 'theme_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:10:"Theme test";s:11:"description";s:40:"Support module for theme system testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/update_script_test.module', 'update_script_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:18:"Update script test";s:11:"description";s:41:"Support module for update script testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/update_test_1.module', 'update_test_1', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"Update test";s:11:"description";s:34:"Support module for update testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/update_test_2.module', 'update_test_2', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"Update test";s:11:"description";s:34:"Support module for update testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/update_test_3.module', 'update_test_3', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"Update test";s:11:"description";s:34:"Support module for update testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/url_alter_test.module', 'url_alter_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:15:"Url_alter tests";s:11:"description";s:45:"A support modules for url_alter hook testing.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/simpletest/tests/xmlrpc_test.module', 'xmlrpc_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:12:"XML-RPC Test";s:11:"description";s:75:"Support module for XML-RPC tests according to the validator1 specification.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/statistics/statistics.module', 'statistics', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:10:"Statistics";s:11:"description";s:37:"Logs access statistics for your site.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"statistics.test";}s:9:"configure";s:30:"admin/config/system/statistics";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/syslog/syslog.module', 'syslog', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:6:"Syslog";s:11:"description";s:41:"Logs and records system events to syslog.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"syslog.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/system/system.module', 'system', 'module', '', '1', '0', 7078, '0', 'a:13:{s:4:"name";s:6:"System";s:11:"description";s:54:"Handles general site configuration for administrators.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:6:{i:0;s:19:"system.archiver.inc";i:1;s:15:"system.mail.inc";i:2;s:16:"system.queue.inc";i:3;s:14:"system.tar.inc";i:4;s:18:"system.updater.inc";i:5;s:11:"system.test";}s:8:"required";b:1;s:9:"configure";s:19:"admin/config/system";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/taxonomy/taxonomy.module', 'taxonomy', 'module', '', '1', '0', 7010, '0', 'a:14:{s:4:"name";s:8:"Taxonomy";s:11:"description";s:38:"Enables the categorization of content.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:7:"options";}s:5:"files";a:2:{i:0;s:15:"taxonomy.module";i:1;s:13:"taxonomy.test";}s:9:"configure";s:24:"admin/structure/taxonomy";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;s:8:"required";b:1;s:11:"explanation";s:76:"Field type(s) in use - see <a href="/?q=admin/reports/fields">Field list</a>";}'),
('modules/toolbar/toolbar.module', 'toolbar', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:7:"Toolbar";s:11:"description";s:99:"Provides a toolbar that shows the top-level administration menu items and links from other modules.";s:4:"core";s:3:"7.x";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/tracker/tracker.module', 'tracker', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:7:"Tracker";s:11:"description";s:45:"Enables tracking of recent content for users.";s:12:"dependencies";a:1:{i:0;s:7:"comment";}s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"tracker.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/translation/tests/translation_test.module', 'translation_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:24:"Content Translation Test";s:11:"description";s:49:"Support module for the content translation tests.";s:4:"core";s:3:"7.x";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/translation/translation.module', 'translation', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:19:"Content translation";s:11:"description";s:57:"Allows content to be translated into different languages.";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:16:"translation.test";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/trigger/tests/trigger_test.module', 'trigger_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:12:"Trigger Test";s:11:"description";s:33:"Support module for Trigger tests.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}');
INSERT INTO `system` VALUES
('modules/trigger/trigger.module', 'trigger', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:7:"Trigger";s:11:"description";s:90:"Enables actions to be fired on certain system events, such as when new content is created.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"trigger.test";}s:9:"configure";s:23:"admin/structure/trigger";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/update/tests/aaa_update_test.module', 'aaa_update_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:15:"AAA Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/update/tests/bbb_update_test.module', 'bbb_update_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:15:"BBB Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/update/tests/ccc_update_test.module', 'ccc_update_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:15:"CCC Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:4:"7.22";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/update/tests/update_test.module', 'update_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"Update test";s:11:"description";s:41:"Support module for update module testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/update/update.module', 'update', 'module', '', '1', '0', 7001, '0', 'a:12:{s:4:"name";s:14:"Update manager";s:11:"description";s:104:"Checks for available updates, and can securely install or update modules and themes via a web interface.";s:7:"version";s:4:"7.22";s:7:"package";s:4:"Core";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:11:"update.test";}s:9:"configure";s:30:"admin/reports/updates/settings";s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('modules/user/tests/user_form_test.module', 'user_form_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:22:"User module form tests";s:11:"description";s:37:"Support module for user form testing.";s:7:"package";s:7:"Testing";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('modules/user/user.module', 'user', 'module', '', '1', '0', 7018, '0', 'a:14:{s:4:"name";s:4:"User";s:11:"description";s:47:"Manages the user registration and login system.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:11:"user.module";i:1;s:9:"user.test";}s:8:"required";b:1;s:9:"configure";s:19:"admin/config/people";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:8:"user.css";s:21:"modules/user/user.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/admin_icons/admin_icons.module', 'admin_icons', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:10:"Icon fonts";s:11:"description";s:56:"Icon font library for use with other modules and themes.";s:4:"core";s:3:"7.x";s:7:"version";s:11:"7.x-1.x-dev";s:7:"project";s:11:"admin_icons";s:9:"datestamp";s:10:"1349049710";s:12:"dependencies";a:0:{}s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/breakpoints/breakpoints.module', 'breakpoints', 'module', '', '1', '0', 7102, '0', 'a:12:{s:4:"name";s:11:"Breakpoints";s:11:"description";s:18:"Manage breakpoints";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:5:"files";a:2:{i:0;s:18:"breakpoints.module";i:1;s:16:"breakpoints.test";}s:9:"configure";s:30:"admin/config/media/breakpoints";s:7:"version";s:7:"7.x-1.0";s:7:"project";s:11:"breakpoints";s:9:"datestamp";s:10:"1353614756";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/breakpoints/tests/breakpoints_theme_test.module', 'breakpoints_theme_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:22:"Breakpoints Theme Test";s:11:"description";s:35:"Test breakpoints provided by themes";s:7:"package";s:5:"Other";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:7:"7.x-1.0";s:7:"project";s:11:"breakpoints";s:9:"datestamp";s:10:"1353614756";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ckeditor/ckeditor.module', 'ckeditor', 'module', '', '1', '0', 7005, '0', 'a:12:{s:4:"name";s:8:"CKEditor";s:11:"description";s:76:"Enables CKEditor (WYSIWYG HTML editor) for use instead of plain text fields.";s:4:"core";s:3:"7.x";s:7:"package";s:14:"User interface";s:9:"configure";s:29:"admin/config/content/ckeditor";s:5:"files";a:1:{i:0;s:26:"includes/ckeditor.user.inc";}s:7:"version";s:8:"7.x-1.12";s:7:"project";s:8:"ckeditor";s:9:"datestamp";s:10:"1356180966";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/bulk_export/bulk_export.module', 'bulk_export', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:11:"Bulk Export";s:11:"description";s:67:"Performs bulk exporting of data objects known about by Chaos tools.";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:7:"package";s:16:"Chaos tool suite";s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/ctools.module', 'ctools', 'module', '', '1', '0', 6008, '0', 'a:11:{s:4:"name";s:11:"Chaos tools";s:11:"description";s:46:"A library of helpful tools by Merlin of Chaos.";s:4:"core";s:3:"7.x";s:7:"package";s:16:"Chaos tool suite";s:5:"files";a:3:{i:0;s:20:"includes/context.inc";i:1;s:22:"includes/math-expr.inc";i:2;s:21:"includes/stylizer.inc";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/ctools_access_ruleset/ctools_access_ruleset.module', 'ctools_access_ruleset', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:15:"Custom rulesets";s:11:"description";s:81:"Create custom, exportable, reusable access rulesets for applications like Panels.";s:4:"core";s:3:"7.x";s:7:"package";s:16:"Chaos tool suite";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/ctools_ajax_sample/ctools_ajax_sample.module', 'ctools_ajax_sample', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:33:"Chaos Tools (CTools) AJAX Example";s:11:"description";s:41:"Shows how to use the power of Chaos AJAX.";s:7:"package";s:16:"Chaos tool suite";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/ctools_custom_content/ctools_custom_content.module', 'ctools_custom_content', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:20:"Custom content panes";s:11:"description";s:79:"Create custom, exportable, reusable content panes for applications like Panels.";s:4:"core";s:3:"7.x";s:7:"package";s:16:"Chaos tool suite";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/ctools_plugin_example/ctools_plugin_example.module', 'ctools_plugin_example', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:35:"Chaos Tools (CTools) Plugin Example";s:11:"description";s:75:"Shows how an external module can provide ctools plugins (for Panels, etc.).";s:7:"package";s:16:"Chaos tool suite";s:12:"dependencies";a:4:{i:0;s:6:"ctools";i:1;s:6:"panels";i:2;s:12:"page_manager";i:3;s:13:"advanced_help";}s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/page_manager/page_manager.module', 'page_manager', 'module', '', '1', '0', 0, '99', 'a:11:{s:4:"name";s:12:"Page manager";s:11:"description";s:54:"Provides a UI and API to manage pages within the site.";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:7:"package";s:16:"Chaos tool suite";s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/stylizer/stylizer.module', 'stylizer', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:8:"Stylizer";s:11:"description";s:53:"Create custom styles for applications such as Panels.";s:4:"core";s:3:"7.x";s:7:"package";s:16:"Chaos tool suite";s:12:"dependencies";a:2:{i:0;s:6:"ctools";i:1;s:5:"color";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/tests/ctools_export_test/ctools_export_test.module', 'ctools_export_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:18:"CTools export test";s:11:"description";s:25:"CTools export test module";s:4:"core";s:3:"7.x";s:7:"package";s:16:"Chaos tool suite";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:6:"hidden";b:1;s:5:"files";a:1:{i:0;s:18:"ctools_export.test";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/tests/ctools_plugin_test.module', 'ctools_plugin_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:24:"Chaos tools plugins test";s:11:"description";s:42:"Provides hooks for testing ctools plugins.";s:7:"package";s:16:"Chaos tool suite";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:5:"files";a:6:{i:0;s:19:"ctools.plugins.test";i:1;s:17:"object_cache.test";i:2;s:8:"css.test";i:3;s:12:"context.test";i:4;s:20:"math_expression.test";i:5;s:26:"math_expression_stack.test";}s:6:"hidden";b:1;s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/ctools/views_content/views_content.module', 'views_content', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:19:"Views content panes";s:11:"description";s:104:"Allows Views content to be used in Panels, Dashboard and other modules which use the CTools Content API.";s:7:"package";s:16:"Chaos tool suite";s:12:"dependencies";a:2:{i:0;s:6:"ctools";i:1;s:5:"views";}s:4:"core";s:3:"7.x";s:5:"files";a:3:{i:0;s:61:"plugins/views/views_content_plugin_display_ctools_context.inc";i:1;s:57:"plugins/views/views_content_plugin_display_panel_pane.inc";i:2;s:59:"plugins/views/views_content_plugin_style_ctools_context.inc";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:6:"ctools";s:9:"datestamp";s:10:"1365013512";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/edit/edit.module', 'edit', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:4:"Edit";s:11:"description";s:25:"In-place content editing.";s:7:"package";s:5:"Spark";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:6:"entity";i:1;s:14:"field (>=7.22)";}s:7:"version";s:14:"7.x-1.0-alpha9";s:7:"project";s:4:"edit";s:9:"datestamp";s:10:"1365167113";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/entity/entity.module', 'entity', 'module', '', '1', '0', 7002, '0', 'a:11:{s:4:"name";s:10:"Entity API";s:11:"description";s:69:"Enables modules to work with any entity type and to provide entities.";s:4:"core";s:3:"7.x";s:5:"files";a:24:{i:0;s:19:"entity.features.inc";i:1;s:15:"entity.i18n.inc";i:2;s:15:"entity.info.inc";i:3;s:16:"entity.rules.inc";i:4;s:11:"entity.test";i:5;s:19:"includes/entity.inc";i:6;s:30:"includes/entity.controller.inc";i:7;s:22:"includes/entity.ui.inc";i:8;s:27:"includes/entity.wrapper.inc";i:9;s:22:"views/entity.views.inc";i:10;s:52:"views/handlers/entity_views_field_handler_helper.inc";i:11;s:51:"views/handlers/entity_views_handler_area_entity.inc";i:12;s:53:"views/handlers/entity_views_handler_field_boolean.inc";i:13;s:50:"views/handlers/entity_views_handler_field_date.inc";i:14;s:54:"views/handlers/entity_views_handler_field_duration.inc";i:15;s:52:"views/handlers/entity_views_handler_field_entity.inc";i:16;s:51:"views/handlers/entity_views_handler_field_field.inc";i:17;s:53:"views/handlers/entity_views_handler_field_numeric.inc";i:18;s:53:"views/handlers/entity_views_handler_field_options.inc";i:19;s:50:"views/handlers/entity_views_handler_field_text.inc";i:20;s:49:"views/handlers/entity_views_handler_field_uri.inc";i:21;s:62:"views/handlers/entity_views_handler_relationship_by_bundle.inc";i:22;s:52:"views/handlers/entity_views_handler_relationship.inc";i:23;s:53:"views/plugins/entity_views_plugin_row_entity_view.inc";}s:7:"version";s:7:"7.x-1.0";s:7:"project";s:6:"entity";s:9:"datestamp";s:10:"1356471145";s:12:"dependencies";a:0:{}s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/entity/entity_token.module', 'entity_token', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:13:"Entity tokens";s:11:"description";s:99:"Provides token replacements for all properties that have no tokens and are known to the entity API.";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:23:"entity_token.tokens.inc";i:1;s:19:"entity_token.module";}s:12:"dependencies";a:1:{i:0;s:6:"entity";}s:7:"version";s:7:"7.x-1.0";s:7:"project";s:6:"entity";s:9:"datestamp";s:10:"1356471145";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/entity/tests/entity_feature.module', 'entity_feature', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:21:"Entity feature module";s:11:"description";s:31:"Provides some entities in code.";s:7:"version";s:7:"7.x-1.0";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:21:"entity_feature.module";}s:12:"dependencies";a:1:{i:0;s:11:"entity_test";}s:6:"hidden";b:1;s:7:"project";s:6:"entity";s:9:"datestamp";s:10:"1356471145";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/entity/tests/entity_test.module', 'entity_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:23:"Entity CRUD test module";s:11:"description";s:46:"Provides entity types based upon the CRUD API.";s:7:"version";s:7:"7.x-1.0";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:18:"entity_test.module";i:1;s:19:"entity_test.install";}s:12:"dependencies";a:1:{i:0;s:6:"entity";}s:6:"hidden";b:1;s:7:"project";s:6:"entity";s:9:"datestamp";s:10:"1356471145";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/entity/tests/entity_test_i18n.module', 'entity_test_i18n', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:28:"Entity-test type translation";s:11:"description";s:37:"Allows translating entity-test types.";s:12:"dependencies";a:2:{i:0;s:11:"entity_test";i:1;s:11:"i18n_string";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:7:"7.x-1.0";s:7:"project";s:6:"entity";s:9:"datestamp";s:10:"1356471145";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/every_field/every_field.module', 'every_field', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:11:"Every Field";s:11:"description";s:37:"One of every field on a content type.";s:4:"core";s:3:"7.x";s:12:"dependencies";a:7:{i:0;s:4:"file";i:1;s:5:"image";i:2;s:4:"list";i:3;s:6:"number";i:4;s:7:"options";i:5;s:8:"taxonomy";i:6;s:4:"text";}s:7:"version";s:11:"7.x-1.x-dev";s:7:"project";s:11:"every_field";s:9:"datestamp";s:10:"1340280981";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/gridbuilder/gridbuilder.module', 'gridbuilder', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:12:"Grid builder";s:11:"description";s:27:"Simple grid system builder.";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:7:"version";s:14:"7.x-1.0-alpha2";s:7:"project";s:11:"gridbuilder";s:9:"datestamp";s:10:"1344614548";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/jquery_update/jquery_update.module', 'jquery_update', 'module', '', '1', '0', 7000, '0', 'a:12:{s:4:"name";s:13:"jQuery Update";s:11:"description";s:53:"Update jQuery and jQuery UI to a more recent version.";s:7:"package";s:14:"User interface";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:20:"jquery_update.module";i:1;s:21:"jquery_update.install";}s:9:"configure";s:38:"admin/config/development/jquery_update";s:7:"version";s:7:"7.x-2.3";s:7:"project";s:13:"jquery_update";s:9:"datestamp";s:10:"1360375905";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/json2/json2.module', 'json2', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:24:"JSON2 javascript library";s:11:"description";s:61:"This module provides support for the JSON2 javascript library";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:9:"libraries";}s:7:"version";s:7:"7.x-1.1";s:7:"project";s:5:"json2";s:9:"datestamp";s:10:"1345207030";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/layout/layout.module', 'layout', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:25:"Panels responsive layouts";s:11:"description";s:36:"Responsive layout editor for panels.";s:4:"core";s:3:"7.x";s:12:"dependencies";a:4:{i:0;s:6:"panels";i:1;s:11:"gridbuilder";i:2;s:5:"json2";i:3;s:13:"jquery_update";}s:7:"version";s:14:"7.x-1.0-alpha6";s:7:"project";s:6:"layout";s:9:"datestamp";s:10:"1363878012";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/libraries/libraries.module', 'libraries', 'module', '', '1', '0', 7200, '0', 'a:11:{s:4:"name";s:9:"Libraries";s:11:"description";s:64:"Allows version-dependent and shared usage of external libraries.";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:20:"tests/libraries.test";}s:7:"version";s:13:"7.x-2.0+7-dev";s:7:"project";s:9:"libraries";s:9:"datestamp";s:10:"1364994754";s:12:"dependencies";a:0:{}s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/libraries/tests/libraries_test.module', 'libraries_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:21:"Libraries test module";s:11:"description";s:36:"Tests library detection and loading.";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:9:"libraries";}s:6:"hidden";b:1;s:7:"version";s:13:"7.x-2.0+7-dev";s:7:"project";s:9:"libraries";s:9:"datestamp";s:10:"1364994754";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/module_filter/module_filter.module', 'module_filter', 'module', '', '1', '0', 7100, '0', 'a:12:{s:4:"name";s:13:"Module filter";s:11:"description";s:24:"Filter the modules list.";s:4:"core";s:3:"7.x";s:5:"files";a:9:{i:0;s:21:"module_filter.install";i:1;s:16:"module_filter.js";i:2;s:20:"module_filter.module";i:3;s:23:"module_filter.admin.inc";i:4;s:23:"module_filter.theme.inc";i:5;s:21:"css/module_filter.css";i:6;s:25:"css/module_filter_tab.css";i:7;s:19:"js/module_filter.js";i:8;s:23:"js/module_filter_tab.js";}s:9:"configure";s:40:"admin/config/user-interface/modulefilter";s:7:"version";s:7:"7.x-1.7";s:7:"project";s:13:"module_filter";s:9:"datestamp";s:10:"1341518501";s:12:"dependencies";a:0:{}s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/navbar/navbar.module', 'navbar', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:34:"Mobile Friendly Navigation Toolbar";s:11:"description";s:88:"A very simple mobile friendly toolbar that lets you switch between frontend and backend.";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:11:"breakpoints";}s:7:"version";s:14:"7.x-1.0-alpha7";s:7:"project";s:6:"navbar";s:9:"datestamp";s:10:"1365041571";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/panels/panels.module', 'panels', 'module', '', '1', '0', 7301, '0', 'a:12:{s:4:"name";s:6:"Panels";s:11:"description";s:107:"Core Panels display functions; provides no external UI, at least one other Panels module should be enabled.";s:4:"core";s:3:"7.x";s:7:"package";s:6:"Panels";s:9:"configure";s:22:"admin/structure/panels";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:5:"files";a:5:{i:0;s:13:"panels.module";i:1;s:19:"includes/common.inc";i:2;s:19:"includes/legacy.inc";i:3;s:20:"includes/plugins.inc";i:4;s:48:"plugins/views/panels_views_plugin_row_fields.inc";}s:7:"version";s:7:"7.x-3.3";s:7:"project";s:6:"panels";s:9:"datestamp";s:10:"1345319572";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/panels/panels_ipe/panels_ipe.module', 'panels_ipe', 'module', '', '1', '0', 0, '0', 'a:12:{s:4:"name";s:22:"Panels In-Place Editor";s:11:"description";s:101:"Provide a UI for managing some Panels directly on the frontend, instead of having to use the backend.";s:7:"package";s:6:"Panels";s:12:"dependencies";a:1:{i:0;s:6:"panels";}s:4:"core";s:3:"7.x";s:9:"configure";s:22:"admin/structure/panels";s:5:"files";a:1:{i:0;s:17:"panels_ipe.module";}s:7:"version";s:7:"7.x-3.3";s:7:"project";s:6:"panels";s:9:"datestamp";s:10:"1345319572";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/panels/panels_mini/panels_mini.module', 'panels_mini', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:11:"Mini panels";s:11:"description";s:89:"Create mini panels that can be used as blocks by Drupal and panes by other panel modules.";s:7:"package";s:6:"Panels";s:12:"dependencies";a:1:{i:0;s:6:"panels";}s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:42:"plugins/export_ui/panels_mini_ui.class.php";}s:7:"version";s:7:"7.x-3.3";s:7:"project";s:6:"panels";s:9:"datestamp";s:10:"1345319572";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/panels/panels_node/panels_node.module', 'panels_node', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:11:"Panel nodes";s:11:"description";s:65:"Create nodes that are divided into areas with selectable content.";s:7:"package";s:6:"Panels";s:12:"dependencies";a:1:{i:0;s:6:"panels";}s:9:"configure";s:22:"admin/structure/panels";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:18:"panels_node.module";}s:7:"version";s:7:"7.x-3.3";s:7:"project";s:6:"panels";s:9:"datestamp";s:10:"1345319572";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/responsive_preview/responsive_preview.module', 'responsive_preview', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:18:"Responsive Preview";s:11:"description";s:71:"Provides a component that previews a page in various device dimensions.";s:7:"package";s:14:"User interface";s:4:"core";s:3:"7.x";s:7:"version";s:13:"7.x-1.0-beta1";s:7:"project";s:18:"responsive_preview";s:9:"datestamp";s:10:"1364432717";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/resp_img/resp_img.module', 'resp_img', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:28:"Responsive images and styles";s:11:"description";s:28:"Responsive images and styles";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:5:"files";a:2:{i:0;s:15:"resp_img.module";i:1;s:9:"cache.inc";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:8:"resp_img";s:9:"datestamp";s:10:"1340805730";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/simplified_menu_admin/simplified_menu_admin.module', 'simplified_menu_admin', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:30:"Simplified menu administration";s:11:"description";s:115:"Simplifies the Menu and Shortcut modules by merging "List links" and "Edit menu" into a single administration page.";s:4:"core";s:3:"7.x";s:7:"version";s:13:"7.x-1.0-beta2";s:7:"project";s:21:"simplified_menu_admin";s:9:"datestamp";s:10:"1308938520";s:12:"dependencies";a:0:{}s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/views/tests/views_test.module', 'views_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:10:"Views Test";s:11:"description";s:22:"Test module for Views.";s:7:"package";s:5:"Views";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"views";}s:6:"hidden";b:1;s:7:"version";s:7:"7.x-3.6";s:7:"project";s:5:"views";s:9:"datestamp";s:10:"1363810217";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/views/views.module', 'views', 'module', '', '1', '0', 7301, '10', 'a:12:{s:4:"name";s:5:"Views";s:11:"description";s:55:"Create customized lists and queries from your database.";s:7:"package";s:5:"Views";s:4:"core";s:3:"7.x";s:3:"php";s:3:"5.2";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:13:"css/views.css";s:50:"profiles/spark/modules/contrib/views/css/views.css";}}s:12:"dependencies";a:1:{i:0;s:6:"ctools";}s:5:"files";a:297:{i:0;s:31:"handlers/views_handler_area.inc";i:1;s:38:"handlers/views_handler_area_result.inc";i:2;s:36:"handlers/views_handler_area_text.inc";i:3;s:43:"handlers/views_handler_area_text_custom.inc";i:4;s:36:"handlers/views_handler_area_view.inc";i:5;s:35:"handlers/views_handler_argument.inc";i:6;s:40:"handlers/views_handler_argument_date.inc";i:7;s:43:"handlers/views_handler_argument_formula.inc";i:8;s:47:"handlers/views_handler_argument_many_to_one.inc";i:9;s:40:"handlers/views_handler_argument_null.inc";i:10;s:43:"handlers/views_handler_argument_numeric.inc";i:11;s:42:"handlers/views_handler_argument_string.inc";i:12;s:52:"handlers/views_handler_argument_group_by_numeric.inc";i:13;s:32:"handlers/views_handler_field.inc";i:14;s:40:"handlers/views_handler_field_counter.inc";i:15;s:40:"handlers/views_handler_field_boolean.inc";i:16;s:49:"handlers/views_handler_field_contextual_links.inc";i:17;s:39:"handlers/views_handler_field_custom.inc";i:18;s:37:"handlers/views_handler_field_date.inc";i:19;s:39:"handlers/views_handler_field_entity.inc";i:20;s:39:"handlers/views_handler_field_markup.inc";i:21;s:37:"handlers/views_handler_field_math.inc";i:22;s:40:"handlers/views_handler_field_numeric.inc";i:23;s:47:"handlers/views_handler_field_prerender_list.inc";i:24;s:46:"handlers/views_handler_field_time_interval.inc";i:25;s:43:"handlers/views_handler_field_serialized.inc";i:26;s:45:"handlers/views_handler_field_machine_name.inc";i:27;s:36:"handlers/views_handler_field_url.inc";i:28;s:33:"handlers/views_handler_filter.inc";i:29;s:50:"handlers/views_handler_filter_boolean_operator.inc";i:30;s:57:"handlers/views_handler_filter_boolean_operator_string.inc";i:31;s:41:"handlers/views_handler_filter_combine.inc";i:32;s:38:"handlers/views_handler_filter_date.inc";i:33;s:42:"handlers/views_handler_filter_equality.inc";i:34;s:47:"handlers/views_handler_filter_entity_bundle.inc";i:35;s:50:"handlers/views_handler_filter_group_by_numeric.inc";i:36;s:45:"handlers/views_handler_filter_in_operator.inc";i:37;s:45:"handlers/views_handler_filter_many_to_one.inc";i:38;s:41:"handlers/views_handler_filter_numeric.inc";i:39;s:40:"handlers/views_handler_filter_string.inc";i:40;s:39:"handlers/views_handler_relationship.inc";i:41;s:53:"handlers/views_handler_relationship_groupwise_max.inc";i:42;s:31:"handlers/views_handler_sort.inc";i:43;s:36:"handlers/views_handler_sort_date.inc";i:44;s:39:"handlers/views_handler_sort_formula.inc";i:45;s:48:"handlers/views_handler_sort_group_by_numeric.inc";i:46;s:46:"handlers/views_handler_sort_menu_hierarchy.inc";i:47;s:38:"handlers/views_handler_sort_random.inc";i:48;s:17:"includes/base.inc";i:49;s:21:"includes/handlers.inc";i:50;s:20:"includes/plugins.inc";i:51;s:17:"includes/view.inc";i:52;s:60:"modules/aggregator/views_handler_argument_aggregator_fid.inc";i:53;s:60:"modules/aggregator/views_handler_argument_aggregator_iid.inc";i:54;s:69:"modules/aggregator/views_handler_argument_aggregator_category_cid.inc";i:55;s:64:"modules/aggregator/views_handler_field_aggregator_title_link.inc";i:56;s:62:"modules/aggregator/views_handler_field_aggregator_category.inc";i:57;s:70:"modules/aggregator/views_handler_field_aggregator_item_description.inc";i:58;s:57:"modules/aggregator/views_handler_field_aggregator_xss.inc";i:59;s:67:"modules/aggregator/views_handler_filter_aggregator_category_cid.inc";i:60;s:54:"modules/aggregator/views_plugin_row_aggregator_rss.inc";i:61;s:56:"modules/book/views_plugin_argument_default_book_root.inc";i:62;s:59:"modules/comment/views_handler_argument_comment_user_uid.inc";i:63;s:47:"modules/comment/views_handler_field_comment.inc";i:64;s:53:"modules/comment/views_handler_field_comment_depth.inc";i:65;s:52:"modules/comment/views_handler_field_comment_link.inc";i:66;s:60:"modules/comment/views_handler_field_comment_link_approve.inc";i:67;s:59:"modules/comment/views_handler_field_comment_link_delete.inc";i:68;s:57:"modules/comment/views_handler_field_comment_link_edit.inc";i:69;s:58:"modules/comment/views_handler_field_comment_link_reply.inc";i:70;s:57:"modules/comment/views_handler_field_comment_node_link.inc";i:71;s:56:"modules/comment/views_handler_field_comment_username.inc";i:72;s:61:"modules/comment/views_handler_field_ncs_last_comment_name.inc";i:73;s:56:"modules/comment/views_handler_field_ncs_last_updated.inc";i:74;s:52:"modules/comment/views_handler_field_node_comment.inc";i:75;s:57:"modules/comment/views_handler_field_node_new_comments.inc";i:76;s:62:"modules/comment/views_handler_field_last_comment_timestamp.inc";i:77;s:57:"modules/comment/views_handler_filter_comment_user_uid.inc";i:78;s:57:"modules/comment/views_handler_filter_ncs_last_updated.inc";i:79;s:53:"modules/comment/views_handler_filter_node_comment.inc";i:80;s:53:"modules/comment/views_handler_sort_comment_thread.inc";i:81;s:60:"modules/comment/views_handler_sort_ncs_last_comment_name.inc";i:82;s:55:"modules/comment/views_handler_sort_ncs_last_updated.inc";i:83;s:48:"modules/comment/views_plugin_row_comment_rss.inc";i:84;s:49:"modules/comment/views_plugin_row_comment_view.inc";i:85;s:52:"modules/contact/views_handler_field_contact_link.inc";i:86;s:43:"modules/field/views_handler_field_field.inc";i:87;s:59:"modules/field/views_handler_relationship_entity_reverse.inc";i:88;s:51:"modules/field/views_handler_argument_field_list.inc";i:89;s:58:"modules/field/views_handler_argument_field_list_string.inc";i:90;s:49:"modules/field/views_handler_filter_field_list.inc";i:91;s:57:"modules/filter/views_handler_field_filter_format_name.inc";i:92;s:52:"modules/locale/views_handler_field_node_language.inc";i:93;s:53:"modules/locale/views_handler_filter_node_language.inc";i:94;s:54:"modules/locale/views_handler_argument_locale_group.inc";i:95;s:57:"modules/locale/views_handler_argument_locale_language.inc";i:96;s:51:"modules/locale/views_handler_field_locale_group.inc";i:97;s:54:"modules/locale/views_handler_field_locale_language.inc";i:98;s:55:"modules/locale/views_handler_field_locale_link_edit.inc";i:99;s:52:"modules/locale/views_handler_filter_locale_group.inc";i:100;s:55:"modules/locale/views_handler_filter_locale_language.inc";i:101;s:54:"modules/locale/views_handler_filter_locale_version.inc";i:102;s:53:"modules/node/views_handler_argument_dates_various.inc";i:103;s:53:"modules/node/views_handler_argument_node_language.inc";i:104;s:48:"modules/node/views_handler_argument_node_nid.inc";i:105;s:49:"modules/node/views_handler_argument_node_type.inc";i:106;s:48:"modules/node/views_handler_argument_node_vid.inc";i:107;s:57:"modules/node/views_handler_argument_node_uid_revision.inc";i:108;s:59:"modules/node/views_handler_field_history_user_timestamp.inc";i:109;s:41:"modules/node/views_handler_field_node.inc";i:110;s:46:"modules/node/views_handler_field_node_link.inc";i:111;s:53:"modules/node/views_handler_field_node_link_delete.inc";i:112;s:51:"modules/node/views_handler_field_node_link_edit.inc";i:113;s:50:"modules/node/views_handler_field_node_revision.inc";i:114;s:55:"modules/node/views_handler_field_node_revision_link.inc";i:115;s:62:"modules/node/views_handler_field_node_revision_link_delete.inc";i:116;s:62:"modules/node/views_handler_field_node_revision_link_revert.inc";i:117;s:46:"modules/node/views_handler_field_node_path.inc";i:118;s:46:"modules/node/views_handler_field_node_type.inc";i:119;s:60:"modules/node/views_handler_filter_history_user_timestamp.inc";i:120;s:49:"modules/node/views_handler_filter_node_access.inc";i:121;s:49:"modules/node/views_handler_filter_node_status.inc";i:122;s:47:"modules/node/views_handler_filter_node_type.inc";i:123;s:55:"modules/node/views_handler_filter_node_uid_revision.inc";i:124;s:51:"modules/node/views_plugin_argument_default_node.inc";i:125;s:52:"modules/node/views_plugin_argument_validate_node.inc";i:126;s:42:"modules/node/views_plugin_row_node_rss.inc";i:127;s:43:"modules/node/views_plugin_row_node_view.inc";i:128;s:52:"modules/profile/views_handler_field_profile_date.inc";i:129;s:52:"modules/profile/views_handler_field_profile_list.inc";i:130;s:58:"modules/profile/views_handler_filter_profile_selection.inc";i:131;s:48:"modules/search/views_handler_argument_search.inc";i:132;s:51:"modules/search/views_handler_field_search_score.inc";i:133;s:46:"modules/search/views_handler_filter_search.inc";i:134;s:50:"modules/search/views_handler_sort_search_score.inc";i:135;s:47:"modules/search/views_plugin_row_search_view.inc";i:136;s:57:"modules/statistics/views_handler_field_accesslog_path.inc";i:137;s:50:"modules/system/views_handler_argument_file_fid.inc";i:138;s:43:"modules/system/views_handler_field_file.inc";i:139;s:53:"modules/system/views_handler_field_file_extension.inc";i:140;s:52:"modules/system/views_handler_field_file_filemime.inc";i:141;s:47:"modules/system/views_handler_field_file_uri.inc";i:142;s:50:"modules/system/views_handler_field_file_status.inc";i:143;s:51:"modules/system/views_handler_filter_file_status.inc";i:144;s:52:"modules/taxonomy/views_handler_argument_taxonomy.inc";i:145;s:57:"modules/taxonomy/views_handler_argument_term_node_tid.inc";i:146;s:63:"modules/taxonomy/views_handler_argument_term_node_tid_depth.inc";i:147;s:72:"modules/taxonomy/views_handler_argument_term_node_tid_depth_modifier.inc";i:148;s:58:"modules/taxonomy/views_handler_argument_vocabulary_vid.inc";i:149;s:67:"modules/taxonomy/views_handler_argument_vocabulary_machine_name.inc";i:150;s:49:"modules/taxonomy/views_handler_field_taxonomy.inc";i:151;s:54:"modules/taxonomy/views_handler_field_term_node_tid.inc";i:152;s:55:"modules/taxonomy/views_handler_field_term_link_edit.inc";i:153;s:55:"modules/taxonomy/views_handler_filter_term_node_tid.inc";i:154;s:61:"modules/taxonomy/views_handler_filter_term_node_tid_depth.inc";i:155;s:56:"modules/taxonomy/views_handler_filter_vocabulary_vid.inc";i:156;s:65:"modules/taxonomy/views_handler_filter_vocabulary_machine_name.inc";i:157;s:62:"modules/taxonomy/views_handler_relationship_node_term_data.inc";i:158;s:65:"modules/taxonomy/views_plugin_argument_validate_taxonomy_term.inc";i:159;s:63:"modules/taxonomy/views_plugin_argument_default_taxonomy_tid.inc";i:160;s:67:"modules/tracker/views_handler_argument_tracker_comment_user_uid.inc";i:161;s:65:"modules/tracker/views_handler_filter_tracker_comment_user_uid.inc";i:162;s:65:"modules/tracker/views_handler_filter_tracker_boolean_operator.inc";i:163;s:51:"modules/system/views_handler_filter_system_type.inc";i:164;s:56:"modules/translation/views_handler_argument_node_tnid.inc";i:165;s:63:"modules/translation/views_handler_field_node_link_translate.inc";i:166;s:65:"modules/translation/views_handler_field_node_translation_link.inc";i:167;s:54:"modules/translation/views_handler_filter_node_tnid.inc";i:168;s:60:"modules/translation/views_handler_filter_node_tnid_child.inc";i:169;s:62:"modules/translation/views_handler_relationship_translation.inc";i:170;s:48:"modules/user/views_handler_argument_user_uid.inc";i:171;s:55:"modules/user/views_handler_argument_users_roles_rid.inc";i:172;s:41:"modules/user/views_handler_field_user.inc";i:173;s:50:"modules/user/views_handler_field_user_language.inc";i:174;s:46:"modules/user/views_handler_field_user_link.inc";i:175;s:53:"modules/user/views_handler_field_user_link_cancel.inc";i:176;s:51:"modules/user/views_handler_field_user_link_edit.inc";i:177;s:46:"modules/user/views_handler_field_user_mail.inc";i:178;s:46:"modules/user/views_handler_field_user_name.inc";i:179;s:53:"modules/user/views_handler_field_user_permissions.inc";i:180;s:49:"modules/user/views_handler_field_user_picture.inc";i:181;s:47:"modules/user/views_handler_field_user_roles.inc";i:182;s:50:"modules/user/views_handler_filter_user_current.inc";i:183;s:47:"modules/user/views_handler_filter_user_name.inc";i:184;s:54:"modules/user/views_handler_filter_user_permissions.inc";i:185;s:48:"modules/user/views_handler_filter_user_roles.inc";i:186;s:59:"modules/user/views_plugin_argument_default_current_user.inc";i:187;s:51:"modules/user/views_plugin_argument_default_user.inc";i:188;s:52:"modules/user/views_plugin_argument_validate_user.inc";i:189;s:43:"modules/user/views_plugin_row_user_view.inc";i:190;s:31:"plugins/views_plugin_access.inc";i:191;s:36:"plugins/views_plugin_access_none.inc";i:192;s:36:"plugins/views_plugin_access_perm.inc";i:193;s:36:"plugins/views_plugin_access_role.inc";i:194;s:41:"plugins/views_plugin_argument_default.inc";i:195;s:45:"plugins/views_plugin_argument_default_php.inc";i:196;s:47:"plugins/views_plugin_argument_default_fixed.inc";i:197;s:45:"plugins/views_plugin_argument_default_raw.inc";i:198;s:42:"plugins/views_plugin_argument_validate.inc";i:199;s:50:"plugins/views_plugin_argument_validate_numeric.inc";i:200;s:46:"plugins/views_plugin_argument_validate_php.inc";i:201;s:30:"plugins/views_plugin_cache.inc";i:202;s:35:"plugins/views_plugin_cache_none.inc";i:203;s:35:"plugins/views_plugin_cache_time.inc";i:204;s:32:"plugins/views_plugin_display.inc";i:205;s:43:"plugins/views_plugin_display_attachment.inc";i:206;s:38:"plugins/views_plugin_display_block.inc";i:207;s:40:"plugins/views_plugin_display_default.inc";i:208;s:38:"plugins/views_plugin_display_embed.inc";i:209;s:41:"plugins/views_plugin_display_extender.inc";i:210;s:37:"plugins/views_plugin_display_feed.inc";i:211;s:37:"plugins/views_plugin_display_page.inc";i:212;s:43:"plugins/views_plugin_exposed_form_basic.inc";i:213;s:37:"plugins/views_plugin_exposed_form.inc";i:214;s:52:"plugins/views_plugin_exposed_form_input_required.inc";i:215;s:42:"plugins/views_plugin_localization_core.inc";i:216;s:37:"plugins/views_plugin_localization.inc";i:217;s:42:"plugins/views_plugin_localization_none.inc";i:218;s:30:"plugins/views_plugin_pager.inc";i:219;s:35:"plugins/views_plugin_pager_full.inc";i:220;s:35:"plugins/views_plugin_pager_mini.inc";i:221;s:35:"plugins/views_plugin_pager_none.inc";i:222;s:35:"plugins/views_plugin_pager_some.inc";i:223;s:30:"plugins/views_plugin_query.inc";i:224;s:38:"plugins/views_plugin_query_default.inc";i:225;s:28:"plugins/views_plugin_row.inc";i:226;s:35:"plugins/views_plugin_row_fields.inc";i:227;s:39:"plugins/views_plugin_row_rss_fields.inc";i:228;s:30:"plugins/views_plugin_style.inc";i:229;s:38:"plugins/views_plugin_style_default.inc";i:230;s:35:"plugins/views_plugin_style_grid.inc";i:231;s:35:"plugins/views_plugin_style_list.inc";i:232;s:40:"plugins/views_plugin_style_jump_menu.inc";i:233;s:38:"plugins/views_plugin_style_mapping.inc";i:234;s:34:"plugins/views_plugin_style_rss.inc";i:235;s:38:"plugins/views_plugin_style_summary.inc";i:236;s:48:"plugins/views_plugin_style_summary_jump_menu.inc";i:237;s:50:"plugins/views_plugin_style_summary_unformatted.inc";i:238;s:36:"plugins/views_plugin_style_table.inc";i:239;s:43:"tests/handlers/views_handler_area_text.test";i:240;s:47:"tests/handlers/views_handler_argument_null.test";i:241;s:49:"tests/handlers/views_handler_argument_string.test";i:242;s:39:"tests/handlers/views_handler_field.test";i:243;s:47:"tests/handlers/views_handler_field_boolean.test";i:244;s:46:"tests/handlers/views_handler_field_custom.test";i:245;s:47:"tests/handlers/views_handler_field_counter.test";i:246;s:44:"tests/handlers/views_handler_field_date.test";i:247;s:49:"tests/handlers/views_handler_field_file_size.test";i:248;s:44:"tests/handlers/views_handler_field_math.test";i:249;s:43:"tests/handlers/views_handler_field_url.test";i:250;s:43:"tests/handlers/views_handler_field_xss.test";i:251;s:48:"tests/handlers/views_handler_filter_combine.test";i:252;s:45:"tests/handlers/views_handler_filter_date.test";i:253;s:49:"tests/handlers/views_handler_filter_equality.test";i:254;s:52:"tests/handlers/views_handler_filter_in_operator.test";i:255;s:48:"tests/handlers/views_handler_filter_numeric.test";i:256;s:47:"tests/handlers/views_handler_filter_string.test";i:257;s:45:"tests/handlers/views_handler_sort_random.test";i:258;s:43:"tests/handlers/views_handler_sort_date.test";i:259;s:38:"tests/handlers/views_handler_sort.test";i:260;s:60:"tests/test_plugins/views_test_plugin_access_test_dynamic.inc";i:261;s:59:"tests/test_plugins/views_test_plugin_access_test_static.inc";i:262;s:59:"tests/test_plugins/views_test_plugin_style_test_mapping.inc";i:263;s:39:"tests/plugins/views_plugin_display.test";i:264;s:46:"tests/styles/views_plugin_style_jump_menu.test";i:265;s:36:"tests/styles/views_plugin_style.test";i:266;s:41:"tests/styles/views_plugin_style_base.test";i:267;s:44:"tests/styles/views_plugin_style_mapping.test";i:268;s:48:"tests/styles/views_plugin_style_unformatted.test";i:269;s:23:"tests/views_access.test";i:270;s:24:"tests/views_analyze.test";i:271;s:22:"tests/views_basic.test";i:272;s:33:"tests/views_argument_default.test";i:273;s:35:"tests/views_argument_validator.test";i:274;s:29:"tests/views_exposed_form.test";i:275;s:31:"tests/field/views_fieldapi.test";i:276;s:25:"tests/views_glossary.test";i:277;s:24:"tests/views_groupby.test";i:278;s:25:"tests/views_handlers.test";i:279;s:23:"tests/views_module.test";i:280;s:22:"tests/views_pager.test";i:281;s:40:"tests/views_plugin_localization_test.inc";i:282;s:29:"tests/views_translatable.test";i:283;s:22:"tests/views_query.test";i:284;s:24:"tests/views_upgrade.test";i:285;s:34:"tests/views_test.views_default.inc";i:286;s:58:"tests/comment/views_handler_argument_comment_user_uid.test";i:287;s:56:"tests/comment/views_handler_filter_comment_user_uid.test";i:288;s:45:"tests/node/views_node_revision_relations.test";i:289;s:61:"tests/taxonomy/views_handler_relationship_node_term_data.test";i:290;s:45:"tests/user/views_handler_field_user_name.test";i:291;s:43:"tests/user/views_user_argument_default.test";i:292;s:44:"tests/user/views_user_argument_validate.test";i:293;s:26:"tests/user/views_user.test";i:294;s:22:"tests/views_cache.test";i:295;s:21:"tests/views_view.test";i:296;s:19:"tests/views_ui.test";}s:7:"version";s:7:"7.x-3.6";s:7:"project";s:5:"views";s:9:"datestamp";s:10:"1363810217";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/contrib/views/views_ui.module', 'views_ui', 'module', '', '1', '0', 0, '0', 'a:12:{s:4:"name";s:8:"Views UI";s:11:"description";s:93:"Administrative interface to views. Without this module, you cannot create or edit your views.";s:7:"package";s:5:"Views";s:4:"core";s:3:"7.x";s:9:"configure";s:21:"admin/structure/views";s:12:"dependencies";a:1:{i:0;s:5:"views";}s:5:"files";a:2:{i:0;s:15:"views_ui.module";i:1;s:57:"plugins/views_wizard/views_ui_base_views_wizard.class.php";}s:7:"version";s:7:"7.x-3.6";s:7:"project";s:5:"views";s:9:"datestamp";s:10:"1363810217";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('profiles/spark/modules/spark_demo/spark_demo.module', 'spark_demo', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:10:"Spark Demo";s:11:"description";s:40:"Demo content for the Spark distribution.";s:4:"core";s:3:"7.x";s:7:"package";s:5:"Spark";s:12:"dependencies";a:1:{i:0;s:11:"every_field";}s:7:"version";s:14:"7.x-1.0-alpha8";s:7:"project";s:5:"spark";s:9:"datestamp";s:10:"1365080420";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('profiles/spark/spark.profile', 'spark', 'module', '', '1', '0', 0, '1000', 'a:15:{s:4:"name";s:5:"Spark";s:11:"description";s:58:"Cutting-edge authoring experience improvements for Drupal.";s:7:"version";s:14:"7.x-1.0-alpha8";s:4:"core";s:3:"7.x";s:3:"php";s:3:"5.3";s:17:"distribution_name";s:5:"Spark";s:9:"exclusive";b:1;s:12:"dependencies";a:38:{i:0;s:5:"block";i:1;s:5:"color";i:2;s:7:"comment";i:3;s:10:"contextual";i:4;s:5:"dblog";i:5;s:8:"field_ui";i:6;s:4:"file";i:7;s:4:"help";i:8;s:5:"image";i:9;s:4:"list";i:10;s:4:"menu";i:11;s:6:"number";i:12;s:7:"options";i:13;s:4:"path";i:14;s:3:"rdf";i:15;s:6:"search";i:16;s:8:"shortcut";i:17;s:8:"taxonomy";i:18;s:11:"breakpoints";i:19;s:6:"entity";i:20;s:13:"jquery_update";i:21;s:5:"json2";i:22;s:9:"libraries";i:23;s:13:"module_filter";i:24;s:12:"page_manager";i:25;s:6:"panels";i:26;s:10:"panels_ipe";i:27;s:5:"views";i:28;s:8:"views_ui";i:29;s:21:"simplified_menu_admin";i:30;s:8:"ckeditor";i:31;s:4:"edit";i:32;s:11:"gridbuilder";i:33;s:11:"admin_icons";i:34;s:6:"layout";i:35;s:6:"navbar";i:36;s:18:"responsive_preview";i:37;s:10:"spark_demo";}s:7:"project";s:5:"spark";s:9:"datestamp";s:10:"1365080420";s:7:"package";s:5:"Other";s:5:"files";a:0:{}s:9:"bootstrap";i:0;s:6:"hidden";b:1;s:8:"required";b:1;}'),
('profiles/spark/themes/contrib/ember/ember.info', 'ember', 'theme', 'themes/engines/phptemplate/phptemplate.engine', '1', '0', -1, '0', 'a:17:{s:4:"name";s:5:"Ember";s:11:"description";s:34:"A responsive administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:14:"7.x-1.0-alpha5";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:17:"css/normalize.css";s:53:"profiles/spark/themes/contrib/ember/css/normalize.css";s:13:"css/style.css";s:49:"profiles/spark/themes/contrib/ember/css/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:6:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"messages";s:8:"Messages";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:5:"ember";s:9:"datestamp";s:10:"1359095802";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:50:"profiles/spark/themes/contrib/ember/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}');
INSERT INTO `system` VALUES
('profiles/spark/themes/contrib/responsive_bartik/responsive_bartik.info', 'responsive_bartik', 'theme', 'themes/engines/phptemplate/phptemplate.engine', '1', '0', -1, '0', 'a:16:{s:4:"name";s:17:"Responsive Bartik";s:11:"description";s:86:"A flexible, recolorable theme with many regions and a responsive, mobile-first layout.";s:7:"version";s:19:"7.x-1.0-beta1+2-dev";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/layout.css";s:13:"css/style.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/style.css";s:14:"css/colors.css";s:62:"profiles/spark/themes/contrib/responsive_bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:61:"profiles/spark/themes/contrib/responsive_bartik/css/print.css";}}s:7:"scripts";a:1:{s:22:"js/collapsible-menu.js";s:70:"profiles/spark/themes/contrib/responsive_bartik/js/collapsible-menu.js";}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:17:"responsive_bartik";s:9:"datestamp";s:10:"1365080424";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:62:"profiles/spark/themes/contrib/responsive_bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}'),
('sites/all/modules/contrib/development/coder/coder.module', 'coder', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:5:"Coder";s:11:"description";s:66:"Developer Module that assists with code review and version upgrade";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:12:"coder.module";}s:7:"version";s:13:"7.x-2.0-beta2";s:7:"project";s:5:"coder";s:9:"datestamp";s:10:"1359576476";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/coder/coder_review/coder_review.module', 'coder_review', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:12:"Coder Review";s:11:"description";s:119:""Developer module" which reviews your code identifying coding style problems and where updates to the API are required.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"coder";}s:5:"files";a:9:{i:0;s:33:"tests/coder_review_test_case.tinc";i:1;s:26:"tests/coder_review_6x.test";i:2;s:26:"tests/coder_review_7x.test";i:3;s:31:"tests/coder_review_comment.test";i:4;s:28:"tests/coder_review_i18n.test";i:5;s:32:"tests/coder_review_security.test";i:6;s:27:"tests/coder_review_sql.test";i:7;s:29:"tests/coder_review_style.test";i:8;s:31:"tests/coder_review_sniffer.test";}s:7:"version";s:13:"7.x-2.0-beta2";s:7:"project";s:5:"coder";s:9:"datestamp";s:10:"1359576476";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/coder/coder_review/tests/coder_review_test/coder_review_test.module', 'coder_review_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:17:"Coder Review Test";s:7:"package";s:5:"Coder";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:5:"files";a:1:{i:0;s:24:"coder_review_test.module";}s:7:"version";s:13:"7.x-2.0-beta2";s:7:"project";s:5:"coder";s:9:"datestamp";s:10:"1359576476";s:12:"dependencies";a:0:{}s:11:"description";s:0:"";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/coder/coder_sniffer/Test/bad.module', 'bad', 'module', '', '0', '0', -1, '0', 'a:11:{s:5:"files";a:2:{i:0;s:25:"includes/non-existing.php";i:1;s:11:"bad.tpl.php";}s:6:"hidden";b:1;s:7:"version";s:13:"7.x-2.0-beta2";s:4:"core";s:3:"7.x";s:7:"project";s:5:"coder";s:9:"datestamp";s:10:"1359576476";s:12:"dependencies";a:0:{}s:11:"description";s:0:"";s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/coder/coder_upgrade/coder_upgrade.module', 'coder_upgrade', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:13:"Coder Upgrade";s:11:"description";s:93:"Modifies source code to assist with the upgrade of a module for changes to a relied upon API.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:12:"gplib (<2.0)";}s:5:"files";a:1:{i:0;s:18:"coder_upgrade.test";}s:9:"configure";s:47:"admin/config/development/coder/upgrade/settings";s:7:"version";s:13:"7.x-2.0-beta2";s:7:"project";s:5:"coder";s:9:"datestamp";s:10:"1359576476";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/demo/demo.module', 'demo', 'module', '', '1', '0', 6100, '0', 'a:12:{s:4:"name";s:18:"Demonstration site";s:11:"description";s:74:"Create snapshots and reset the site for demonstration or testing purposes.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:9:"configure";s:20:"admin/structure/demo";s:5:"files";a:3:{i:0;s:11:"demo.module";i:1;s:14:"demo.admin.inc";i:2;s:23:"database_mysql_dump.inc";}s:7:"version";s:7:"7.x-1.0";s:7:"project";s:4:"demo";s:9:"datestamp";s:10:"1294543925";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/demo/demo_reset.module', 'demo_reset', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:24:"Demonstration site reset";s:11:"description";s:176:"Allows to reset the site on cron runs and to <strong>reset the site WITHOUT CONFIRMATION.</strong> Only supposed to be used on public demonstration sites. Use at your own risk.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:4:"demo";}s:5:"files";a:1:{i:0;s:17:"demo_reset.module";}s:7:"version";s:7:"7.x-1.0";s:7:"project";s:4:"demo";s:9:"datestamp";s:10:"1294543925";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/devel/devel.module', 'devel', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:5:"Devel";s:11:"description";s:52:"Various blocks, pages, and functions for developers.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:9:"configure";s:30:"admin/config/development/devel";s:4:"tags";a:1:{i:0;s:9:"developer";}s:5:"files";a:2:{i:0;s:10:"devel.test";i:1;s:14:"devel.mail.inc";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1338940281";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/devel/devel_generate/devel_generate.module', 'devel_generate', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:14:"Devel generate";s:11:"description";s:48:"Generate dummy users, nodes, and taxonomy terms.";s:7:"package";s:11:"Development";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:5:"devel";}s:4:"tags";a:1:{i:0;s:9:"developer";}s:9:"configure";s:33:"admin/config/development/generate";s:7:"version";s:7:"7.x-1.3";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1338940281";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/devel/devel_node_access.module', 'devel_node_access', 'module', '', '0', '0', -1, '0', 'a:13:{s:4:"name";s:17:"Devel node access";s:11:"description";s:68:"Developer blocks and page illustrating relevant node_access records.";s:7:"package";s:11:"Development";s:12:"dependencies";a:1:{i:0;s:4:"menu";}s:4:"core";s:3:"7.x";s:9:"configure";s:30:"admin/config/development/devel";s:4:"tags";a:1:{i:0;s:9:"developer";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:5:"devel";s:9:"datestamp";s:10:"1338940281";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/drupal_reset/drupal_reset.module', 'drupal_reset', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:12:"Drupal Reset";s:11:"description";s:147:"Resets the current site by doing one or both of deleting the site files directory, and deleting all database tables and redirecting to install.php.";s:4:"core";s:3:"7.x";s:7:"package";s:11:"Development";s:5:"files";a:1:{i:0;s:20:"drupal_reset.lib.inc";}s:7:"version";s:7:"7.x-1.3";s:7:"project";s:12:"drupal_reset";s:9:"datestamp";s:10:"1335893455";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/skinr.module', 'skinr', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:5:"Skinr";s:11:"description";s:71:"Provides a way to define and/or skin bits of Drupal output from the UI.";s:7:"package";s:5:"Skinr";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:16:"tests/skinr.test";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/skinr_context/skinr_context.module', 'skinr_context', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:13:"Skinr Context";s:11:"description";s:40:"Provides Skinr integration with Context.";s:7:"package";s:5:"Skinr";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:7:"context";i:1;s:5:"skinr";}s:5:"files";a:1:{i:0;s:24:"tests/skinr_context.test";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/skinr_context/skinr_context_ui.module', 'skinr_context_ui', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:16:"Skinr Context UI";s:11:"description";s:105:"Administrative interface for Skinr Context. Without this module, you cannot edit your skins with context.";s:7:"package";s:5:"Skinr";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:10:"context_ui";i:1;s:8:"skinr_ui";}s:5:"files";a:1:{i:0;s:27:"tests/skinr_context_ui.test";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/skinr_context/tests/skinr_context_test/skinr_context_test.module', 'skinr_context_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:21:"Skinr Context Testing";s:11:"description";s:45:"A test module used for testing Skinr Context.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:13:"skinr_context";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/skinr_panels/skinr_panels.module', 'skinr_panels', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:12:"Skinr Panels";s:11:"description";s:39:"Provides Skinr integration with Panels.";s:7:"package";s:5:"Skinr";s:4:"core";s:3:"7.x";s:12:"dependencies";a:1:{i:0;s:6:"panels";}s:5:"files";a:1:{i:0;s:23:"tests/skinr_panels.test";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/skinr_panels/tests/skinr_panels_test/skinr_panels_test.module', 'skinr_panels_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:20:"Skinr Panels Testing";s:11:"description";s:44:"A test module used for testing Skinr Panels.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:2:{i:0;s:12:"skinr_panels";i:1;s:8:"skinr_ui";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/skinr_ui.module', 'skinr_ui', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:8:"Skinr UI";s:11:"description";s:83:"Administrative interface to skinr. Without this module, you cannot edit your skins.";s:7:"package";s:5:"Skinr";s:4:"core";s:3:"7.x";s:9:"configure";s:21:"admin/structure/skinr";s:12:"dependencies";a:1:{i:0;s:5:"skinr";}s:5:"files";a:1:{i:0;s:19:"tests/skinr_ui.test";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/tests/skinr_test/skinr_test.module', 'skinr_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:13:"Skinr Testing";s:11:"description";s:37:"A test module used for testing Skinr.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:5:"skinr";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/tests/skinr_test_incompatible/skinr_test_incompatible.module', 'skinr_test_incompatible', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:26:"Skinr Incompatible Testing";s:11:"description";s:70:"A test module used for testing incompatible Skinr API implementations.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:5:"skinr";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/development/skinr/tests/skinr_ui_test/skinr_ui_test.module', 'skinr_ui_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:16:"Skinr UI Testing";s:11:"description";s:40:"A test module used for testing Skinr UI.";s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:12:"dependencies";a:1:{i:0;s:8:"skinr_ui";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:5:"skinr";s:9:"datestamp";s:10:"1334917632";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n.module', 'i18n', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:20:"Internationalization";s:11:"description";s:49:"Extends Drupal support for multilingual features.";s:12:"dependencies";a:2:{i:0;s:6:"locale";i:1;s:8:"variable";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:3:{i:0;s:12:"i18n.install";i:1;s:15:"i18n_object.inc";i:2;s:9:"i18n.test";}s:9:"configure";s:26:"admin/config/regional/i18n";s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_block/i18n_block.module', 'i18n_block', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:15:"Block languages";s:11:"description";s:68:"Enables language selector for blocks and optional block translation.";s:12:"dependencies";a:2:{i:0;s:5:"block";i:1;s:11:"i18n_string";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:14:"i18n_block.inc";i:1;s:15:"i18n_block.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_contact/i18n_contact.module', 'i18n_contact', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:19:"Contact translation";s:11:"description";s:63:"Makes contact categories and replies available for translation.";s:12:"dependencies";a:2:{i:0;s:7:"contact";i:1;s:11:"i18n_string";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_field/i18n_field.module', 'i18n_field', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:17:"Field translation";s:11:"description";s:26:"Translate field properties";s:12:"dependencies";a:2:{i:0;s:5:"field";i:1;s:11:"i18n_string";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:14:"i18n_field.inc";i:1;s:15:"i18n_field.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_forum/i18n_forum.module', 'i18n_forum', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:18:"Multilingual forum";s:11:"description";s:60:"Enables multilingual forum, translates names and containers.";s:12:"dependencies";a:3:{i:0;s:5:"forum";i:1;s:13:"i18n_taxonomy";i:2;s:9:"i18n_node";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:15:"i18n_forum.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_menu/i18n_menu.module', 'i18n_menu', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:16:"Menu translation";s:11:"description";s:40:"Supports translatable custom menu items.";s:12:"dependencies";a:4:{i:0;s:4:"i18n";i:1;s:4:"menu";i:2;s:11:"i18n_string";i:3;s:16:"i18n_translation";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:13:"i18n_menu.inc";i:1;s:14:"i18n_menu.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_node/i18n_node.module', 'i18n_node', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:20:"Multilingual content";s:11:"description";s:46:"Extended node options for multilingual content";s:12:"dependencies";a:3:{i:0;s:11:"translation";i:1;s:4:"i18n";i:2;s:11:"i18n_string";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:9:"configure";s:31:"admin/config/regional/i18n/node";s:5:"files";a:2:{i:0;s:14:"i18n_node.test";i:1;s:22:"i18n_node.variable.inc";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_path/i18n_path.module', 'i18n_path', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:16:"Path translation";s:11:"description";s:37:"Define translations for generic paths";s:12:"dependencies";a:1:{i:0;s:16:"i18n_translation";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:13:"i18n_path.inc";i:1;s:14:"i18n_path.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_redirect/i18n_redirect.module', 'i18n_redirect', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:20:"Translation redirect";s:11:"description";s:71:"Redirect to translated page when available. SEO for multilingual sites.";s:12:"dependencies";a:1:{i:0;s:4:"i18n";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_select/i18n_select.module', 'i18n_select', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:19:"Multilingual select";s:11:"description";s:45:"API module for multilingual content selection";s:12:"dependencies";a:1:{i:0;s:4:"i18n";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:9:"configure";s:33:"admin/config/regional/i18n/select";s:5:"files";a:1:{i:0;s:16:"i18n_select.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_string/i18n_string.module', 'i18n_string', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:18:"String translation";s:11:"description";s:57:"Provides support for translation of user defined strings.";s:12:"dependencies";a:2:{i:0;s:6:"locale";i:1;s:4:"i18n";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:3:{i:0;s:21:"i18n_string.admin.inc";i:1;s:15:"i18n_string.inc";i:2;s:16:"i18n_string.test";}s:9:"configure";s:34:"admin/config/regional/i18n/strings";s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_sync/i18n_sync.module', 'i18n_sync', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:24:"Synchronize translations";s:11:"description";s:74:"Synchronizes taxonomy and fields accross translations of the same content.";s:12:"dependencies";a:2:{i:0;s:4:"i18n";i:1;s:11:"translation";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:5:{i:0;s:16:"i18n_sync.module";i:1;s:17:"i18n_sync.install";i:2;s:20:"i18n_sync.module.inc";i:3;s:18:"i18n_sync.node.inc";i:4;s:14:"i18n_sync.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_taxonomy/i18n_taxonomy.module', 'i18n_taxonomy', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:20:"Taxonomy translation";s:11:"description";s:30:"Enables multilingual taxonomy.";s:12:"dependencies";a:3:{i:0;s:8:"taxonomy";i:1;s:11:"i18n_string";i:2;s:16:"i18n_translation";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:4:{i:0;s:17:"i18n_taxonomy.inc";i:1;s:23:"i18n_taxonomy.pages.inc";i:2;s:23:"i18n_taxonomy.admin.inc";i:3;s:18:"i18n_taxonomy.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_translation/i18n_translation.module', 'i18n_translation', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:16:"Translation sets";s:11:"description";s:47:"Simple translation sets API for generic objects";s:12:"dependencies";a:1:{i:0;s:4:"i18n";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:20:"i18n_translation.inc";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_user/i18n_user.module', 'i18n_user', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:21:"User mail translation";s:11:"description";s:43:"Translate emails sent from the User module.";s:4:"core";s:3:"7.x";s:7:"package";s:35:"Multilingual - Internationalization";s:12:"dependencies";a:1:{i:0;s:13:"i18n_variable";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/i18n_variable/i18n_variable.module', 'i18n_variable', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:20:"Variable translation";s:11:"description";s:71:"Multilingual variables that switch language depending on page language.";s:12:"dependencies";a:3:{i:0;s:4:"i18n";i:1;s:24:"variable_store (7.x-2.x)";i:2;s:24:"variable_realm (7.x-2.x)";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:9:"configure";s:35:"admin/config/regional/i18n/variable";s:5:"files";a:2:{i:0;s:23:"i18n_variable.class.inc";i:1;s:18:"i18n_variable.test";}s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18n/tests/i18n_test.module', 'i18n_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:26:"Internationalization tests";s:11:"description";s:55:"Helper module for testing i18n (do not enable manually)";s:12:"dependencies";a:3:{i:0;s:6:"locale";i:1;s:11:"translation";i:2;s:4:"i18n";}s:7:"package";s:7:"Testing";s:4:"core";s:3:"7.x";s:6:"hidden";b:1;s:7:"version";s:7:"7.x-1.8";s:7:"project";s:4:"i18n";s:9:"datestamp";s:10:"1358075001";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/i18nviews/i18nviews.module', 'i18nviews', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:17:"Views translation";s:11:"description";s:80:"Translation of views strings and content selection for views. Requires Views 3.x";s:12:"dependencies";a:2:{i:0;s:5:"views";i:1;s:11:"i18n_string";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:17:{i:0;s:13:"i18nviews.inc";i:1;s:18:"i18nviews.i18n.inc";i:2;s:58:"includes/i18nviews_handler_argument_taxonomy_index_tid.inc";i:3;s:58:"includes/i18nviews_handler_argument_taxonomy_term_name.inc";i:4;s:53:"includes/i18nviews_handler_argument_term_language.inc";i:5;s:59:"includes/i18nviews_handler_argument_term_node_tid_depth.inc";i:6;s:62:"includes/i18nviews_handler_field_taxonomy_term_description.inc";i:7;s:59:"includes/i18nviews_handler_field_taxonomy_term_language.inc";i:8;s:55:"includes/i18nviews_handler_field_taxonomy_term_name.inc";i:9;s:50:"includes/i18nviews_handler_field_term_node_tid.inc";i:10;s:48:"includes/i18nviews_handler_filter_field_list.inc";i:11;s:56:"includes/i18nviews_handler_filter_taxonomy_index_tid.inc";i:12;s:56:"includes/i18nviews_handler_filter_taxonomy_term_name.inc";i:13;s:60:"includes/i18nviews_handler_filter_taxonomy_term_language.inc";i:14;s:57:"includes/i18nviews_handler_filter_term_node_tid_depth.inc";i:15;s:66:"includes/i18nviews_plugin_argument_validate_i18n_taxonomy_term.inc";i:16;s:54:"includes/i18nviews_plugin_localization_i18nstrings.inc";}s:7:"version";s:11:"7.x-3.x-dev";s:7:"project";s:9:"i18nviews";s:9:"datestamp";s:10:"1343175615";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/l10n_client/l10n_client.module', 'l10n_client', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:19:"Localization client";s:11:"description";s:29:"Provides on-page localization";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:4:"core";s:3:"7.x";s:7:"package";s:12:"Multilingual";s:7:"version";s:7:"7.x-1.2";s:7:"project";s:11:"l10n_client";s:9:"datestamp";s:10:"1361543603";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/l10n_update/l10n_update.module', 'l10n_update', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:19:"Localization update";s:11:"description";s:58:"Provides automatic downloads and updates for translations.";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:4:"core";s:3:"7.x";s:7:"package";s:12:"Multilingual";s:5:"files";a:11:{i:0;s:21:"l10n_update.admin.inc";i:1;s:19:"l10n_update.api.php";i:2;s:21:"l10n_update.batch.inc";i:3;s:21:"l10n_update.check.inc";i:4;s:21:"l10n_update.drush.inc";i:5;s:15:"l10n_update.inc";i:6;s:19:"l10n_update.install";i:7;s:22:"l10n_update.locale.inc";i:8;s:18:"l10n_update.module";i:9;s:22:"l10n_update.parser.inc";i:10;s:23:"l10n_update.project.inc";}s:7:"version";s:13:"7.x-1.0-beta3";s:7:"project";s:11:"l10n_update";s:9:"datestamp";s:10:"1328563848";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/languageicons/languageicons.module', 'languageicons', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:14:"Language icons";s:11:"description";s:29:"Adds icons to language links.";s:12:"dependencies";a:1:{i:0;s:6:"locale";}s:7:"package";s:35:"Multilingual - Internationalization";s:4:"core";s:3:"7.x";s:5:"files";a:3:{i:0;s:20:"languageicons.module";i:1;s:23:"languageicons.admin.inc";i:2;s:21:"languageicons.install";}s:7:"version";s:7:"7.x-1.0";s:7:"project";s:13:"languageicons";s:9:"datestamp";s:10:"1331734546";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/translation_overview/translation_overview.module', 'translation_overview', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:20:"Translation overview";s:11:"description";s:69:"Provides an overview of the translation status of the site''s content.";s:12:"dependencies";a:1:{i:0;s:11:"translation";}s:4:"core";s:3:"7.x";s:3:"php";s:3:"5.1";s:7:"package";s:13:"Multilanguage";s:5:"files";a:4:{i:0;s:28:"translation_overview.install";i:1;s:27:"translation_overview.module";i:2;s:30:"translation_overview.pages.inc";i:3;s:25:"translation_overview.test";}s:7:"version";s:13:"7.x-2.0-beta1";s:7:"project";s:20:"translation_overview";s:9:"datestamp";s:10:"1306699318";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/variable/variable.module', 'variable', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:8:"Variable";s:11:"description";s:43:"Variable Information and basic variable API";s:7:"package";s:8:"Variable";s:4:"core";s:3:"7.x";s:5:"files";a:9:{i:0;s:27:"includes/forum.variable.inc";i:1;s:28:"includes/locale.variable.inc";i:2;s:26:"includes/menu.variable.inc";i:3;s:26:"includes/node.variable.inc";i:4;s:28:"includes/system.variable.inc";i:5;s:30:"includes/taxonomy.variable.inc";i:6;s:33:"includes/translation.variable.inc";i:7;s:26:"includes/user.variable.inc";i:8;s:13:"variable.test";}s:7:"version";s:7:"7.x-2.2";s:7:"project";s:8:"variable";s:9:"datestamp";s:10:"1358075138";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/variable/variable_admin/variable_admin.module', 'variable_admin', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:14:"Variable admin";s:11:"description";s:26:"Variable Administration UI";s:12:"dependencies";a:1:{i:0;s:8:"variable";}s:7:"package";s:8:"Variable";s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-2.2";s:7:"project";s:8:"variable";s:9:"datestamp";s:10:"1358075138";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/variable/variable_advanced/variable_advanced.module', 'variable_advanced', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:17:"Variable advanced";s:11:"description";s:105:"Provides access to advanced low level variables. By using this you will be able to break your site badly.";s:12:"dependencies";a:1:{i:0;s:8:"variable";}s:7:"package";s:8:"Variable";s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-2.2";s:7:"project";s:8:"variable";s:9:"datestamp";s:10:"1358075138";s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/variable/variable_example/variable_example.module', 'variable_example', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:16:"Variable example";s:11:"description";s:83:"An example module showing how to use the Variable API and providing some variables.";s:12:"dependencies";a:2:{i:0;s:8:"variable";i:1;s:14:"variable_store";}s:7:"package";s:15:"Example modules";s:4:"core";s:3:"7.x";s:5:"files";a:1:{i:0;s:29:"variable_example.variable.inc";}s:7:"version";s:7:"7.x-2.2";s:7:"project";s:8:"variable";s:9:"datestamp";s:10:"1358075138";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/variable/variable_realm/variable_realm.module', 'variable_realm', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:14:"Variable realm";s:11:"description";s:49:"API to use variable realms from different modules";s:12:"dependencies";a:1:{i:0;s:8:"variable";}s:7:"package";s:8:"Variable";s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-2.2";s:5:"files";a:2:{i:0;s:24:"variable_realm.class.inc";i:1;s:30:"variable_realm_union.class.inc";}s:7:"project";s:8:"variable";s:9:"datestamp";s:10:"1358075138";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/variable/variable_store/variable_store.module', 'variable_store', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:14:"Variable store";s:11:"description";s:60:"Database storage for variable realms. This is an API module.";s:12:"dependencies";a:1:{i:0;s:8:"variable";}s:7:"package";s:8:"Variable";s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-2.2";s:5:"files";a:2:{i:0;s:24:"variable_store.class.inc";i:1;s:19:"variable_store.test";}s:7:"project";s:8:"variable";s:9:"datestamp";s:10:"1358075138";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/multilingual/variable/variable_views/variable_views.module', 'variable_views', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:14:"Variable views";s:11:"description";s:78:"Provides views integration for variable, included a default variable argument.";s:12:"dependencies";a:2:{i:0;s:8:"variable";i:1;s:5:"views";}s:7:"package";s:8:"Variable";s:4:"core";s:3:"7.x";s:5:"files";a:3:{i:0;s:51:"includes/views_plugin_argument_default_variable.inc";i:1;s:47:"includes/views_handler_field_variable_title.inc";i:2;s:47:"includes/views_handler_field_variable_value.inc";}s:7:"version";s:7:"7.x-2.2";s:7:"project";s:8:"variable";s:9:"datestamp";s:10:"1358075138";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/others/backup_migrate/backup_migrate.module', 'backup_migrate', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:18:"Backup and Migrate";s:11:"description";s:75:"Backup or migrate the Drupal Database quickly and without unnecessary data.";s:4:"core";s:3:"7.x";s:5:"files";a:5:{i:0;s:21:"backup_migrate.module";i:1;s:22:"backup_migrate.install";i:2;s:25:"includes/destinations.inc";i:3;s:21:"includes/profiles.inc";i:4;s:22:"includes/schedules.inc";}s:9:"configure";s:34:"admin/config/system/backup_migrate";s:7:"version";s:7:"7.x-2.4";s:7:"project";s:14:"backup_migrate";s:9:"datestamp";s:10:"1338903073";s:12:"dependencies";a:0:{}s:7:"package";s:5:"Other";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/usability/admin_views/admin_views.module', 'admin_views', 'module', '', '1', '0', 0, '12', 'a:11:{s:4:"name";s:20:"Administration views";s:11:"description";s:75:"Replaces all system object management pages in Drupal core with real views.";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:12:"dependencies";a:2:{i:0;s:5:"views";i:1;s:21:"views_bulk_operations";}s:5:"files";a:3:{i:0;s:39:"plugins/views_plugin_display_system.inc";i:1;s:36:"plugins/views_plugin_access_menu.inc";i:2;s:22:"tests/admin_views.test";}s:7:"version";s:13:"7.x-1.1+1-dev";s:7:"project";s:11:"admin_views";s:9:"datestamp";s:10:"1358555464";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/usability/admin_views/tests/admin_views_test/admin_views_test.module', 'admin_views_test', 'module', '', '0', '0', -1, '0', 'a:12:{s:4:"name";s:25:"Administration views test";s:11:"description";s:32:"Administration views test module";s:4:"core";s:3:"7.x";s:7:"package";s:14:"administration";s:6:"hidden";b:1;s:7:"version";s:13:"7.x-1.1+1-dev";s:7:"project";s:11:"admin_views";s:9:"datestamp";s:10:"1358555464";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/usability/views_bulk_operations/actions_permissions.module', 'actions_permissions', 'module', '', '0', '0', -1, '0', 'a:11:{s:4:"name";s:25:"Actions permissions (VBO)";s:11:"description";s:84:"Provides permission-based access control for actions. Used by Views Bulk Operations.";s:7:"package";s:14:"Administration";s:4:"core";s:3:"7.x";s:7:"version";s:7:"7.x-3.1";s:7:"project";s:21:"views_bulk_operations";s:9:"datestamp";s:10:"1354500015";s:12:"dependencies";a:0:{}s:3:"php";s:5:"5.3.2";s:5:"files";a:0:{}s:9:"bootstrap";i:0;}'),
('sites/all/modules/contrib/usability/views_bulk_operations/views_bulk_operations.module', 'views_bulk_operations', 'module', '', '1', '0', 0, '0', 'a:11:{s:4:"name";s:21:"Views Bulk Operations";s:11:"description";s:74:"Provides a way of selecting multiple rows and applying operations to them.";s:12:"dependencies";a:2:{i:0;s:6:"entity";i:1;s:5:"views";}s:7:"package";s:5:"Views";s:4:"core";s:3:"7.x";s:5:"files";a:2:{i:0;s:38:"plugins/operation_types/base.class.php";i:1;s:56:"views/views_bulk_operations_handler_field_operations.inc";}s:7:"version";s:7:"7.x-3.1";s:7:"project";s:21:"views_bulk_operations";s:9:"datestamp";s:10:"1354500015";s:3:"php";s:5:"5.3.2";s:9:"bootstrap";i:0;}'),
('themes/bartik/bartik.info', 'bartik', 'theme', 'themes/engines/phptemplate/phptemplate.engine', '1', '0', -1, '0', 'a:17:{s:4:"name";s:6:"Bartik";s:11:"description";s:48:"A flexible, recolorable theme with many regions.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:3:{s:14:"css/layout.css";s:28:"themes/bartik/css/layout.css";s:13:"css/style.css";s:27:"themes/bartik/css/style.css";s:14:"css/colors.css";s:28:"themes/bartik/css/colors.css";}s:5:"print";a:1:{s:13:"css/print.css";s:27:"themes/bartik/css/print.css";}}s:7:"regions";a:17:{s:6:"header";s:6:"Header";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:11:"highlighted";s:11:"Highlighted";s:8:"featured";s:8:"Featured";s:7:"content";s:7:"Content";s:13:"sidebar_first";s:13:"Sidebar first";s:14:"sidebar_second";s:14:"Sidebar second";s:14:"triptych_first";s:14:"Triptych first";s:15:"triptych_middle";s:15:"Triptych middle";s:13:"triptych_last";s:13:"Triptych last";s:18:"footer_firstcolumn";s:19:"Footer first column";s:19:"footer_secondcolumn";s:20:"Footer second column";s:18:"footer_thirdcolumn";s:19:"Footer third column";s:19:"footer_fourthcolumn";s:20:"Footer fourth column";s:6:"footer";s:6:"Footer";}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"0";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:28:"themes/bartik/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}'),
('themes/garland/garland.info', 'garland', 'theme', 'themes/engines/phptemplate/phptemplate.engine', '0', '0', -1, '0', 'a:17:{s:4:"name";s:7:"Garland";s:11:"description";s:111:"A multi-column theme which can be configured to modify colors and switch between fixed and fluid width layouts.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:2:{s:3:"all";a:1:{s:9:"style.css";s:24:"themes/garland/style.css";}s:5:"print";a:1:{s:9:"print.css";s:24:"themes/garland/print.css";}}s:8:"settings";a:1:{s:13:"garland_width";s:5:"fluid";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:29:"themes/garland/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}'),
('themes/seven/seven.info', 'seven', 'theme', 'themes/engines/phptemplate/phptemplate.engine', '0', '0', -1, '0', 'a:17:{s:4:"name";s:5:"Seven";s:11:"description";s:65:"A simple one-column, tableless, fluid width administration theme.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:6:"screen";a:2:{s:9:"reset.css";s:22:"themes/seven/reset.css";s:9:"style.css";s:22:"themes/seven/style.css";}}s:8:"settings";a:1:{s:20:"shortcut_module_link";s:1:"1";}s:7:"regions";a:5:{s:7:"content";s:7:"Content";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";s:13:"sidebar_first";s:13:"First sidebar";}s:14:"regions_hidden";a:3:{i:0;s:13:"sidebar_first";i:1;s:8:"page_top";i:2;s:11:"page_bottom";}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/seven/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}}'),
('themes/stark/stark.info', 'stark', 'theme', 'themes/engines/phptemplate/phptemplate.engine', '0', '0', -1, '0', 'a:16:{s:4:"name";s:5:"Stark";s:11:"description";s:208:"This theme demonstrates Drupal''s default HTML markup and CSS styles. To learn how to build your own theme and override Drupal''s default code, see the <a href="http://drupal.org/theme-guide">Theming Guide</a>.";s:7:"package";s:4:"Core";s:7:"version";s:4:"7.22";s:4:"core";s:3:"7.x";s:11:"stylesheets";a:1:{s:3:"all";a:1:{s:10:"layout.css";s:23:"themes/stark/layout.css";}}s:7:"project";s:6:"drupal";s:9:"datestamp";s:10:"1365027012";s:6:"engine";s:11:"phptemplate";s:7:"regions";a:9:{s:13:"sidebar_first";s:12:"Left sidebar";s:14:"sidebar_second";s:13:"Right sidebar";s:7:"content";s:7:"Content";s:6:"header";s:6:"Header";s:6:"footer";s:6:"Footer";s:11:"highlighted";s:11:"Highlighted";s:4:"help";s:4:"Help";s:8:"page_top";s:8:"Page top";s:11:"page_bottom";s:11:"Page bottom";}s:8:"features";a:9:{i:0;s:4:"logo";i:1;s:7:"favicon";i:2;s:4:"name";i:3;s:6:"slogan";i:4;s:17:"node_user_picture";i:5;s:20:"comment_user_picture";i:6;s:25:"comment_user_verification";i:7;s:9:"main_menu";i:8;s:14:"secondary_menu";}s:10:"screenshot";s:27:"themes/stark/screenshot.png";s:3:"php";s:5:"5.3.2";s:7:"scripts";a:0:{}s:28:"overlay_supplemental_regions";a:1:{i:0;s:8:"page_top";}s:14:"regions_hidden";a:2:{i:0;s:8:"page_top";i:1;s:11:"page_bottom";}}');
/*!40000 ALTER TABLE system ENABLE KEYS */;

--
-- Table structure for table 'taxonomy_index'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Maintains denormalized information about node/term...';

--
-- Dumping data for table 'taxonomy_index'
--

/*!40000 ALTER TABLE taxonomy_index DISABLE KEYS */;
INSERT INTO `taxonomy_index` VALUES
('1', '1', '0', '1365408324'),
('1', '2', '0', '1365408324'),
('1', '3', '0', '1365408324');
/*!40000 ALTER TABLE taxonomy_index ENABLE KEYS */;

--
-- Table structure for table 'taxonomy_term_data'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores term information.';

--
-- Dumping data for table 'taxonomy_term_data'
--

/*!40000 ALTER TABLE taxonomy_term_data DISABLE KEYS */;
INSERT INTO `taxonomy_term_data` VALUES
('1', '1', 'tag 1', NULL, NULL, '0'),
('2', '1', 'another tag', NULL, NULL, '0'),
('3', '1', 'yet another tag', NULL, NULL, '0');
/*!40000 ALTER TABLE taxonomy_term_data ENABLE KEYS */;

--
-- Table structure for table 'taxonomy_term_hierarchy'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores the hierarchical relationship between terms.';

--
-- Dumping data for table 'taxonomy_term_hierarchy'
--

/*!40000 ALTER TABLE taxonomy_term_hierarchy DISABLE KEYS */;
INSERT INTO `taxonomy_term_hierarchy` VALUES
('1', '0'),
('2', '0'),
('3', '0');
/*!40000 ALTER TABLE taxonomy_term_hierarchy ENABLE KEYS */;

--
-- Table structure for table 'taxonomy_vocabulary'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores vocabulary information.';

--
-- Dumping data for table 'taxonomy_vocabulary'
--

/*!40000 ALTER TABLE taxonomy_vocabulary DISABLE KEYS */;
INSERT INTO `taxonomy_vocabulary` VALUES
('1', 'Tags', 'tags', 'Use tags to group articles on similar topics into categories.', '0', 'taxonomy', '0');
/*!40000 ALTER TABLE taxonomy_vocabulary ENABLE KEYS */;

--
-- Table structure for table 'url_alias'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='A list of URL aliases for Drupal paths; a user may visit...';

--
-- Dumping data for table 'url_alias'
--

/*!40000 ALTER TABLE url_alias DISABLE KEYS */;
/*!40000 ALTER TABLE url_alias ENABLE KEYS */;

--
-- Table structure for table 'users'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores user data.';

--
-- Dumping data for table 'users'
--

/*!40000 ALTER TABLE users DISABLE KEYS */;
INSERT INTO `users` VALUES
('0', '', '', '', '', '', NULL, '0', '0', '0', '0', NULL, '', '0', '', NULL),
('1', 'admin', '$S$Doiqt2cNeowii92b14fA8fLJNBExKQMWj.aXNmW/x5IDtUkcCjAa', 'admin@localhost.com', '', '', NULL, '1365408289', '1365415754', '1365409689', '1', 'Asia/Bangkok', '', '0', 'admin@localhost.com', 'b:0;');
/*!40000 ALTER TABLE users ENABLE KEYS */;

--
-- Table structure for table 'users_roles'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Maps users to roles.';

--
-- Dumping data for table 'users_roles'
--

/*!40000 ALTER TABLE users_roles DISABLE KEYS */;
INSERT INTO `users_roles` VALUES
('1', '3');
/*!40000 ALTER TABLE users_roles ENABLE KEYS */;

--
-- Table structure for table 'variable'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Named variable/value pairs created by Drupal core or any...';

--
-- Dumping data for table 'variable'
--

/*!40000 ALTER TABLE variable DISABLE KEYS */;
INSERT INTO `variable` VALUES
('admin_theme', 's:5:"ember";'),
('clean_url', 's:1:"0";'),
('comment_page', 'i:0;'),
('cron_key', 's:43:"ogyw8bhHsZEesEMIDcttnGbQZUE7icDq5-bfqFjidbA";'),
('cron_last', 'i:1365408459;'),
('css_js_query_string', 's:6:"mkxl3g";'),
('ctools_last_cron', 'i:1365408462;'),
('date_default_timezone', 's:12:"Asia/Bangkok";'),
('drupal_private_key', 's:43:"q8yOoEP1F0VKrvYOgg8HkUWDcX4f0pn-5-hwRNZdZNY";'),
('file_default_scheme', 's:6:"public";'),
('file_private_path', 's:21:"sites/default/private";'),
('file_public_path', 's:19:"sites/default/files";'),
('file_temporary_path', 's:4:"/tmp";'),
('filter_fallback_format', 's:10:"plain_text";'),
('install_profile', 's:5:"spark";'),
('install_task', 's:4:"done";'),
('install_time', 'i:1365408459;'),
('jquery_update_compression_type', 's:3:"min";'),
('jquery_update_jquery_cdn', 's:4:"none";'),
('jquery_update_jquery_version', 's:3:"1.7";'),
('maintenance_mode', 'b:0;'),
('menu_expanded', 'a:0:{}'),
('menu_masks', 'a:37:{i:0;i:501;i:1;i:493;i:2;i:253;i:3;i:250;i:4;i:247;i:5;i:246;i:6;i:245;i:7;i:126;i:8;i:125;i:9;i:124;i:10;i:123;i:11;i:122;i:12;i:121;i:13;i:117;i:14;i:96;i:15;i:63;i:16;i:62;i:17;i:61;i:18;i:60;i:19;i:59;i:20;i:58;i:21;i:44;i:22;i:31;i:23;i:30;i:24;i:29;i:25;i:24;i:26;i:21;i:27;i:15;i:28;i:14;i:29;i:13;i:30;i:11;i:31;i:7;i:32;i:6;i:33;i:5;i:34;i:3;i:35;i:2;i:36;i:1;}'),
('node_admin_theme', 's:1:"1";'),
('node_cron_last', 's:10:"1365408324";'),
('node_options_page', 'a:1:{i:0;s:6:"status";}'),
('node_submitted_page', 'b:0;'),
('path_alias_whitelist', 'a:0:{}'),
('responsive_preview_devices', 'a:6:{s:6:"iphone";a:3:{s:5:"label";s:8:"iPhone 5";s:10:"dimensions";a:3:{s:5:"width";s:3:"640";s:6:"height";s:4:"1136";s:4:"dppx";s:1:"2";}s:11:"orientation";s:8:"portrait";}s:7:"iphone4";a:3:{s:5:"label";s:8:"iPhone 4";s:10:"dimensions";a:3:{s:5:"width";s:3:"640";s:6:"height";s:3:"960";s:4:"dppx";s:1:"2";}s:11:"orientation";s:8:"portrait";}s:4:"ipad";a:3:{s:5:"label";s:4:"iPad";s:10:"dimensions";a:3:{s:5:"width";s:4:"1536";s:6:"height";s:4:"2048";s:4:"dppx";s:1:"2";}s:11:"orientation";s:8:"portrait";}s:6:"nexus4";a:3:{s:5:"label";s:7:"Nexus 4";s:10:"dimensions";a:3:{s:5:"width";s:3:"768";s:6:"height";s:4:"1280";s:4:"dppx";s:1:"2";}s:11:"orientation";s:8:"portrait";}s:6:"nexus7";a:3:{s:5:"label";s:7:"Nexus 7";s:10:"dimensions";a:3:{s:5:"width";s:3:"800";s:6:"height";s:4:"1280";s:4:"dppx";s:5:"1.325";}s:11:"orientation";s:8:"portrait";}s:7:"desktop";a:3:{s:5:"label";s:15:"Typical desktop";s:10:"dimensions";a:3:{s:5:"width";s:4:"1366";s:6:"height";s:3:"768";s:4:"dppx";s:1:"1";}s:11:"orientation";s:9:"landscape";}}'),
('site_default_country', 's:2:"VN";'),
('site_frontpage', 's:15:"spark-demo-home";'),
('site_mail', 's:19:"admin@localhost.com";'),
('site_name', 's:14:"Spark Drupal 7";'),
('theme_default', 's:17:"responsive_bartik";'),
('update_last_check', 'i:1365412662;'),
('update_last_email_notification', 'i:1365408459;'),
('update_notify_emails', 'a:1:{i:0;s:19:"admin@localhost.com";}'),
('user_admin_role', 's:1:"3";'),
('user_pictures', 's:1:"1";'),
('user_picture_dimensions', 's:9:"1024x1024";'),
('user_picture_file_size', 's:3:"800";'),
('user_picture_style', 's:9:"thumbnail";'),
('user_register', 'i:2;');
/*!40000 ALTER TABLE variable ENABLE KEYS */;

--
-- Table structure for table 'views_display'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores information about each display attached to a view.';

--
-- Dumping data for table 'views_display'
--

/*!40000 ALTER TABLE views_display DISABLE KEYS */;
/*!40000 ALTER TABLE views_display ENABLE KEYS */;

--
-- Table structure for table 'views_view'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Stores the general data for a view.';

--
-- Dumping data for table 'views_view'
--

/*!40000 ALTER TABLE views_view DISABLE KEYS */;
/*!40000 ALTER TABLE views_view ENABLE KEYS */;

--
-- Table structure for table 'watchdog'
--

 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Table that contains logs of all system events.';

SET FOREIGN_KEY_CHECKS = 1;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;

