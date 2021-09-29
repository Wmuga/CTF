DROP TABLE IF EXISTS `%--%_attachment`;
CREATE TABLE `%--%_attachment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `date` int(10) NOT NULL,
  `downloads` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%--%_category`;
CREATE TABLE `%--%_category` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(128) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `sort_word` text NOT NULL,
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `template` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%--%_comment`;
CREATE TABLE `%--%_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `post_id` int(10) NOT NULL DEFAULT '0',
  `post_name` varchar(255) NOT NULL,
  `post_cat` varchar(128) NOT NULL,
  `post_slug` varchar(128) NOT NULL,
  `date` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `reply_date` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%--%_item_data`;
CREATE TABLE `%--%_item_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `data_type` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_type` (`item_type`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%--%_item_plugin`;
CREATE TABLE `%--%_item_plugin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `plugin` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%--%_links`;
CREATE TABLE `%--%_links` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `request` text NOT NULL,
  `url` text NOT NULL,
  `plugin` varchar(255) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `%--%_options`;
CREATE TABLE `%--%_options` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `%--%_options` VALUES('1','global_setting','a:17:{s:4:\"name\";s:25:\"Lazy Admin&#039;s Website\";s:6:\"author\";s:10:\"Lazy Admin\";s:5:\"title\";s:0:\"\";s:8:\"keywords\";s:8:\"Keywords\";s:11:\"description\";s:11:\"Description\";s:5:\"admin\";s:7:\"manager\";s:6:\"passwd\";s:32:\"42f749ade7f9e195bf475f37a44cafcb\";s:5:\"close\";i:1;s:9:\"close_tip\";s:454:\"<p>Welcome to SweetRice - Thank your for install SweetRice as your website management system.</p><h1>This site is building now , please come late.</h1><p>If you are the webmaster,please go to Dashboard -> General -> Website setting </p><p>and uncheck the checkbox \"Site close\" to open your website.</p><p>More help at <a href=\"http://www.basic-cms.org/docs/5-things-need-to-be-done-when-SweetRice-installed/\">Tip for Basic CMS SweetRice installed</a></p>\";s:5:\"cache\";i:0;s:13:\"cache_expired\";i:0;s:10:\"user_track\";i:0;s:11:\"url_rewrite\";i:0;s:4:\"logo\";s:0:\"\";s:5:\"theme\";s:0:\"\";s:4:\"lang\";s:9:\"en-us.php\";s:11:\"admin_email\";N;}','1575023409');
INSERT INTO `%--%_options` VALUES('2','categories','','1575023409');
INSERT INTO `%--%_options` VALUES('3','links','','1575023409');
DROP TABLE IF EXISTS `%--%_posts`;
CREATE TABLE `%--%_posts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `tags` text NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sys_name` varchar(128) NOT NULL,
  `date` int(10) NOT NULL DEFAULT '0',
  `category` int(10) NOT NULL DEFAULT '0',
  `in_blog` tinyint(1) NOT NULL,
  `views` int(10) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL DEFAULT '1',
  `template` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_name` (`sys_name`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;