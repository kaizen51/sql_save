-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 05 2019 г., 10:41
-- Версия сервера: 5.5.60-MariaDB
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `moti.svyaznoytv.com`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_admin`
--

CREATE TABLE `fusion5W314_admin` (
  `admin_id` mediumint(8) UNSIGNED NOT NULL,
  `admin_rights` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `admin_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'reserved',
  `admin_page` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_admin`
--

INSERT INTO `fusion5W314_admin` (`admin_id`, `admin_rights`, `admin_image`, `admin_title`, `admin_link`, `admin_page`) VALUES
(1, 'AD', 'administrator.png', 'Administrators', 'administrators.php', 2),
(2, 'APWR', 'adminpass.png', 'Admin Password Reset', 'admin_reset.php', 2),
(3, 'SB', 'banner.png', 'Banners', 'banners.php', 3),
(4, 'BB', 'bbcodes.png', 'BB Codes', 'bbcodes.php', 3),
(5, 'B', 'blacklist.png', 'Blacklist', 'blacklist.php', 2),
(6, 'C', '', 'Comments', 'reserved', 2),
(7, 'CP', 'c-pages.png', 'Custom Pages', 'custom_pages.php', 1),
(8, 'DB', 'db_backup.png', 'Database Backup', 'db_backup.php', 3),
(9, 'ERRO', 'errors.png', 'Error Log', 'errors.php', 3),
(10, 'IM', 'images.png', 'Images', 'images.php', 1),
(11, 'I', 'infusions.png', 'Infusions', 'infusions.php', 3),
(12, 'IP', '', 'Infusion Panels', 'reserved', 3),
(13, 'M', 'members.png', 'Members', 'members.php', 2),
(14, 'MI', 'migration.png', 'Migration Tool', 'migrate.php', 2),
(15, 'P', 'panels.png', 'Panels', 'panels.php', 3),
(16, 'PL', 'permalink.png', 'Permalinks', 'permalink.php', 3),
(17, 'PI', 'phpinfo.png', 'PHP Info', 'phpinfo.php', 3),
(18, 'SL', 'sitelinks.png', 'Site Links', 'site_links.php', 3),
(19, 'SM', 'smileys.png', 'Smileys', 'smileys.php', 3),
(20, 'U', 'upgrade.png', 'Upgrade', 'upgrade.php', 3),
(21, 'TS', 'theme.png', 'Theme Manager', 'theme.php', 3),
(22, 'UG', 'user_groups.png', 'User Groups', 'user_groups.php', 2),
(23, 'S1', 'settings.png', 'Main', 'settings_main.php', 4),
(24, 'S2', 'time.png', 'Time and Date', 'settings_time.php', 4),
(25, 'S3', 'theme_settings.png', 'Theme Settings', 'settings_theme.php', 4),
(26, 'S4', 'registration.png', 'Registration', 'settings_registration.php', 4),
(27, 'S6', 'misc.png', 'Miscellaneous', 'settings_misc.php', 4),
(28, 'S7', 'pm.png', 'Private Message', 'settings_messages.php', 4),
(29, 'S9', 'user_settings.png', 'User Management', 'settings_users.php', 4),
(30, 'S12', 'security.png', 'Security', 'settings_security.php', 4),
(31, 'UF', 'user_fields.png', 'User Fields', 'user_fields.php', 2),
(32, 'UL', 'user_log.png', 'User Log', 'user_log.php', 2),
(33, 'ROB', 'robots.png', 'robots.txt', 'robots.php', 3),
(34, 'MAIL', 'email.png', 'Email Templates', 'email.php', 3),
(35, 'LANG', 'language.png', 'Language Settings', 'settings_languages.php', 4),
(36, 'A', '../infusions/articles/articles.svg', 'Articles', '../infusions/articles/articles_admin.php', 1),
(37, 'BLOG', '../infusions/blog/blog.svg', 'Blog', '../infusions/blog/blog_admin.php', 1),
(38, 'D', '../infusions/downloads/download.svg', 'Downloads', '../infusions/downloads/downloads_admin.php', 1),
(39, 'FQ', '../infusions/faq/faq.svg', 'FAQs', '../infusions/faq/faq_admin.php', 1),
(40, 'F', '../infusions/forum/forums.svg', 'Forums', '../infusions/forum/admin/forums.php', 1),
(41, 'PH', '../infusions/gallery/gallery.svg', 'Gallery', '../infusions/gallery/gallery_admin.php', 1),
(42, 'PO', '../infusions/member_poll_panel/polls.png', 'Polls', '../infusions/member_poll_panel/poll_admin.php', 1),
(43, 'N', '../infusions/news/news.svg', 'News', '../infusions/news/news_admin.php', 1),
(44, 'S', '../infusions/shoutbox_panel/shouts.png', 'Shoutbox Admin', '../infusions/shoutbox_panel/shoutbox_admin.php', 5),
(45, 'W', '../infusions/weblinks/weblink.svg', 'Web Links', '../infusions/weblinks/weblinks_admin.php', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_admin_resetlog`
--

CREATE TABLE `fusion5W314_admin_resetlog` (
  `reset_id` mediumint(8) UNSIGNED NOT NULL,
  `reset_admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `reset_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reset_sucess` text COLLATE utf8_unicode_ci NOT NULL,
  `reset_failed` text COLLATE utf8_unicode_ci NOT NULL,
  `reset_admins` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `reset_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_articles`
--

CREATE TABLE `fusion5W314_articles` (
  `article_id` mediumint(8) UNSIGNED NOT NULL,
  `article_subject` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `article_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `article_snippet` text COLLATE utf8_unicode_ci NOT NULL,
  `article_article` text COLLATE utf8_unicode_ci NOT NULL,
  `article_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `article_breaks` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `article_name` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `article_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `article_visibility` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `article_reads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `article_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `article_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `article_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `article_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_article_cats`
--

CREATE TABLE `fusion5W314_article_cats` (
  `article_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `article_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `article_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `article_cat_description` text COLLATE utf8_unicode_ci NOT NULL,
  `article_cat_visibility` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `article_cat_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `article_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_bbcodes`
--

CREATE TABLE `fusion5W314_bbcodes` (
  `bbcode_id` mediumint(8) UNSIGNED NOT NULL,
  `bbcode_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bbcode_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_bbcodes`
--

INSERT INTO `fusion5W314_bbcodes` (`bbcode_id`, `bbcode_name`, `bbcode_order`) VALUES
(1, 'smiley', 1),
(2, 'b', 2),
(3, 'i', 3),
(4, 'u', 4),
(5, 'url', 5),
(6, 'mail', 6),
(7, 'img', 7),
(8, 'center', 8),
(9, 'small', 9),
(10, 'code', 10),
(11, 'quote', 11),
(12, 'yandex', 12),
(13, 'color', 13),
(14, 'justify', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_blacklist`
--

CREATE TABLE `fusion5W314_blacklist` (
  `blacklist_id` mediumint(8) UNSIGNED NOT NULL,
  `blacklist_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `blacklist_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `blacklist_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `blacklist_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `blacklist_reason` text COLLATE utf8_unicode_ci NOT NULL,
  `blacklist_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_blog`
--

CREATE TABLE `fusion5W314_blog` (
  `blog_id` mediumint(8) UNSIGNED NOT NULL,
  `blog_subject` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_image_t1` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_image_t2` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_ialign` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_cat` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `blog_blog` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_extended` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_breaks` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_name` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `blog_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blog_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blog_end` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blog_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `blog_reads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blog_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blog_sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blog_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `blog_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `blog_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_blog_cats`
--

CREATE TABLE `fusion5W314_blog_cats` (
  `blog_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `blog_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `blog_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_cat_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_blog_cats`
--

INSERT INTO `fusion5W314_blog_cats` (`blog_cat_id`, `blog_cat_parent`, `blog_cat_name`, `blog_cat_image`, `blog_cat_language`) VALUES
(1, 0, 'Bugs', 'bugs.svg', 'English'),
(2, 0, 'Downloads', 'downloads.svg', 'English'),
(3, 0, 'Games', 'games.svg', 'English'),
(4, 0, 'Graphics', 'graphics.svg', 'English'),
(5, 0, 'Hardware', 'hardware.svg', 'English'),
(6, 0, 'Journal', 'journal.svg', 'English'),
(7, 0, 'Members', 'members.svg', 'English'),
(8, 0, 'Mods', 'mods.svg', 'English'),
(9, 0, 'Network', 'network.svg', 'English'),
(10, 0, 'PHP-Fusion', 'php-fusion.svg', 'English'),
(11, 0, 'Security', 'security.svg', 'English'),
(12, 0, 'Software', 'software.svg', 'English'),
(13, 0, 'Themes', 'themes.svg', 'English'),
(14, 0, 'Windows', 'windows.svg', 'English'),
(15, 0, 'Ошибки', 'bugs.svg', 'Russian'),
(16, 0, 'Загрузки', 'downloads.svg', 'Russian'),
(17, 0, 'Игры', 'games.svg', 'Russian'),
(18, 0, 'Графика', 'graphics.svg', 'Russian'),
(19, 0, 'Железо', 'hardware.svg', 'Russian'),
(20, 0, 'Журнал', 'journal.svg', 'Russian'),
(21, 0, 'Участники', 'members.svg', 'Russian'),
(22, 0, 'Моды', 'mods.svg', 'Russian'),
(23, 0, 'Сеть', 'network.svg', 'Russian'),
(24, 0, 'PHP-Fusion', 'php-fusion.svg', 'Russian'),
(25, 0, 'Безопасность', 'security.svg', 'Russian'),
(26, 0, 'Программы', 'software.svg', 'Russian'),
(27, 0, 'Темы', 'themes.svg', 'Russian'),
(28, 0, 'Windows', 'windows.svg', 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_captcha`
--

CREATE TABLE `fusion5W314_captcha` (
  `captcha_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `captcha_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `captcha_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `captcha_encode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `captcha_string` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_comments`
--

CREATE TABLE `fusion5W314_comments` (
  `comment_id` mediumint(8) UNSIGNED NOT NULL,
  `comment_item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `comment_type` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `comment_cat` mediumint(8) NOT NULL DEFAULT '0',
  `comment_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_subject` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `comment_message` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `comment_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `comment_hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_custom_pages`
--

CREATE TABLE `fusion5W314_custom_pages` (
  `page_id` mediumint(8) UNSIGNED NOT NULL,
  `page_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `page_link_cat` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_access` tinyint(4) NOT NULL DEFAULT '0',
  `page_content` text COLLATE utf8_unicode_ci NOT NULL,
  `page_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `page_status` smallint(1) NOT NULL DEFAULT '0',
  `page_user` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `page_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English',
  `page_grid_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_content_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_left_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_right_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_header_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_footer_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_top_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_bottom_panel` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_custom_pages`
--

INSERT INTO `fusion5W314_custom_pages` (`page_id`, `page_cat`, `page_link_cat`, `page_title`, `page_access`, `page_content`, `page_keywords`, `page_status`, `page_user`, `page_datestamp`, `page_language`, `page_grid_id`, `page_content_id`, `page_left_panel`, `page_right_panel`, `page_header_panel`, `page_footer_panel`, `page_top_panel`, `page_bottom_panel`) VALUES
(1, 0, 0, 'Home', 0, '', 'Home', 1, 1, 1551760057, 'English', 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_custom_pages_content`
--

CREATE TABLE `fusion5W314_custom_pages_content` (
  `page_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_grid_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_content_id` mediumint(9) UNSIGNED NOT NULL,
  `page_content_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` text COLLATE utf8_unicode_ci NOT NULL,
  `page_options` text COLLATE utf8_unicode_ci NOT NULL,
  `page_content_order` tinyint(5) UNSIGNED NOT NULL DEFAULT '0',
  `page_widget` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_custom_pages_content`
--

INSERT INTO `fusion5W314_custom_pages_content` (`page_id`, `page_grid_id`, `page_content_id`, `page_content_type`, `page_content`, `page_options`, `page_content_order`, `page_widget`) VALUES
(1, 1, 1, 'Content', '', '', 1, ''),
(1, 2, 2, 'Carousel', 'YToxOntpOjA7YToxMDp7czoxMjoic2xpZGVyX3RpdGxlIjtzOjM2OiJXZWxjb21lIHRvIHlvdXIgUEhQLUZ1c2lvbiA5IFdlYnNpdGUiO3M6MTg6InNsaWRlcl9kZXNjcmlwdGlvbiI7czoyOTc6IiZsdDtzdHJvbmcmZ3Q7Q29uZ3JhdHVsYXRpb25zIG9uIHlvdXIgZmlyc3QgaW5zdGFsbCZsdDsvc3Ryb25nJmd0OwpUaGUgZWFzaWVzdCB3YXkgdG8gZGV2ZWxvcCBhICZsdDtpJmd0O3BybyBncmFkZSZsdDsvaSZndDsgd2Vic2l0ZS4gJmx0O3N0cm9uZyZndDtTdGFydGluZyBOb3cmbHQ7L3N0cm9uZyZndDsKJmx0O2RpdiBjbGFzcz0mIzAzOTtsb2dvJiMwMzk7Jmd0OyZsdDtpbWcgc3JjPSYjMDM5O2ltYWdlcy9waHAtZnVzaW9uLWljb24ucG5nJiMwMzk7IGFsdD0mIzAzOTtMb2dvJiMwMzk7Jmd0OyZsdDsvZGl2Jmd0OyI7czoxMToic2xpZGVyX2xpbmsiO3M6MDoiIjtzOjEyOiJzbGlkZXJfb3JkZXIiO2k6MTtzOjIxOiJzbGlkZXJfY2FwdGlvbl9vZmZzZXQiO3M6MzoiMTIwIjtzOjIwOiJzbGlkZXJfY2FwdGlvbl9hbGlnbiI7czo5OiJ0ZXh0LWxlZnQiO3M6MTc6InNsaWRlcl90aXRsZV9zaXplIjtpOjUwO3M6MTY6InNsaWRlcl9kZXNjX3NpemUiO2k6MzU7czoxNToic2xpZGVyX2J0bl9zaXplIjtzOjA6IiI7czoxNjoic2xpZGVyX2ltYWdlX3NyYyI7czoyMDoiZGVmYXVsdC1jYXJvdXNlbC5qcGciO319', 'YTo2OntzOjk6InNsaWRlcl9pZCI7czoxMzoiaG9tZV9jYXJvdXNlbCI7czoxMToic2xpZGVyX3BhdGgiO3M6ODoiY2Fyb3VzZWwiO3M6MTM6InNsaWRlcl9oZWlnaHQiO2k6NzAwO3M6MTc6InNsaWRlcl9uYXZpZ2F0aW9uIjtpOjA7czoxNjoic2xpZGVyX2luZGljYXRvciI7aTowO3M6MTU6InNsaWRlcl9pbnRlcnZhbCI7aTowO30=', 1, 'slider'),
(1, 3, 3, 'Block', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7czo2OiJUaGVtZXMiO3M6MTc6ImJsb2NrX2Rlc2NyaXB0aW9uIjtzOjE0MDoiT3VyIHRoZW1lcyBkZWxpdmVycyBhd2Vzb21lIGRlc2lnbiBhbmQgcG93ZXJmdWwgZmVhdHVyZXMgZm9yIHlvdXIgd2Vic2l0ZS4gUGl4ZWwgcGVyZmVjdGVkIHRvIGRlbW9uc3RyYXRlIHlvdXIgd2Vic2l0ZSB2ZXJzYXRpbGl0eSBmZWF0dXJlcy4iO3M6MTE6ImJsb2NrX2FsaWduIjtzOjk6InRleHQtbGVmdCI7czoxMToiYmxvY2tfY2xhc3MiO3M6MDoiIjtzOjEyOiJibG9ja19tYXJnaW4iO3M6NzoiMTUwcHggMCI7czoxMzoiYmxvY2tfcGFkZGluZyI7czowOiIiO30=', '', 1, 'block'),
(1, 4, 4, 'Block', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7czoyODoiV2h5IHlvdSdsbCBsb3ZlIFBIUC1GdXNpb24gOSI7czoxNzoiYmxvY2tfZGVzY3JpcHRpb24iO3M6MTkxOiJXaXRoIG92ZXIgYSBtaWxsaW9uIGxpbmVzIG9mIGNvZGUgcmV3cml0ZXMgdGhhdCBtb2Rlcm5pemUgY29udGVudCBtYW5hZ2VtZW50IHN5c3RlbSBpbiBhIHdheSBuZXZlciBsaWtlIGJlZm9yZSwgUEhQLUZ1c2lvbiA5IHJlbWFpbnMgbGlnaHR3ZWlnaHQgZmFzdCwgc21hcnRlciBhbmQgaXMgbW9yZSBiZWF1dGlmdWwgdGhhbiBldmVyLiI7czoxMToiYmxvY2tfYWxpZ24iO3M6MTE6InRleHQtY2VudGVyIjtzOjExOiJibG9ja19jbGFzcyI7czowOiIiO3M6MTI6ImJsb2NrX21hcmdpbiI7czo2OiI3MHB4IDAiO3M6MTM6ImJsb2NrX3BhZGRpbmciO3M6MDoiIjt9', '', 1, 'block'),
(1, 5, 5, 'Block', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7czoyNjoiV29ybGR3aWRlIERldmVsb3BlcnMgRm9ydW0iO3M6MTc6ImJsb2NrX2Rlc2NyaXB0aW9uIjtzOjI3MzoiJmx0O2g0Jmd0O1BIUC1GdXNpb24gRGV2ZWxvcGVycyBOZXR3b3JrJmx0Oy9oNCZndDsmbHQ7cCZndDtHZXQgYXNzaXN0ZWQgaW4gY29kZSBkZXZlbG9wbWVudCwgRmluZGluZyBkZXZlbG9wZXJzIG9yIEZ1bmRpbmcgaWRlYXMgYW5kIHJvYWQtbWFwcyB0aGF0IGluIHJldHVybiB0byBiZSBwbGVkZ2VkIG9wZW5seSwgaXQgaXMgYWxsIGhhcHBlbmluZy4NCkpvaW4gaW4gYSB3b3JsZCB3aWRlIG9wZW4gc291cmNlIGNvbGxhYm9yYXRpdmUgZWZmb3J0cyB0b2RheS4mbHQ7L3AmZ3Q7IjtzOjExOiJibG9ja19hbGlnbiI7czowOiIiO3M6MTE6ImJsb2NrX2NsYXNzIjtzOjc6InN1cHBvcnQiO3M6MTI6ImJsb2NrX21hcmdpbiI7czo4OiI5NXB4IDAgMCI7czoxMzoiYmxvY2tfcGFkZGluZyI7czo0OiIzMHB4Ijt9', '', 1, 'block'),
(1, 6, 6, 'Block', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7czoyNzoiQW1hemluZ2x5IEVhc3kgZm9yIEV2ZXJ5b25lIjtzOjE3OiJibG9ja19kZXNjcmlwdGlvbiI7czoxMTY6IkFsbCBpcyByZXF1aXJlZCBpcyB0byB0aW5rZXIgYXJvdW5kIHRvIGZlZWwgdGhlIGJhc2ljIG5lZWRzLiBOb3RoaW5nIGNhbiBldmVyIGdvIHdyb25nIHdpdGggYW4gYWxsIHJvdW5kIENNUyBzeXN0ZW0uIjtzOjExOiJibG9ja19hbGlnbiI7czoxMToidGV4dC1jZW50ZXIiO3M6MTE6ImJsb2NrX2NsYXNzIjtzOjA6IiI7czoxMjoiYmxvY2tfbWFyZ2luIjtzOjY6IjMwcHggMCI7czoxMzoiYmxvY2tfcGFkZGluZyI7czo0OiI2MHB4Ijt9', '', 1, 'block');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_custom_pages_grid`
--

CREATE TABLE `fusion5W314_custom_pages_grid` (
  `page_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_grid_id` mediumint(9) UNSIGNED NOT NULL,
  `page_grid_container` tinyint(1) NOT NULL DEFAULT '0',
  `page_grid_column_count` tinyint(1) NOT NULL DEFAULT '0',
  `page_grid_html_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `page_grid_class` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page_grid_order` tinyint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_custom_pages_grid`
--

INSERT INTO `fusion5W314_custom_pages_grid` (`page_id`, `page_grid_id`, `page_grid_container`, `page_grid_column_count`, `page_grid_html_id`, `page_grid_class`, `page_grid_order`) VALUES
(1, 1, 1, 1, 'content', '', 7),
(1, 2, 0, 1, 'carousel_wrapper', '', 1),
(1, 3, 0, 1, 'showcase', 'container', 3),
(1, 4, 1, 1, 'home_feature', '', 4),
(1, 5, 1, 1, 'support', '', 5),
(1, 6, 0, 1, 'home_parallax', '', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_downloads`
--

CREATE TABLE `fusion5W314_downloads` (
  `download_id` mediumint(8) UNSIGNED NOT NULL,
  `download_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `download_homepage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_description_short` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `download_description` text COLLATE utf8_unicode_ci NOT NULL,
  `download_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_image_thumb` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_url` text COLLATE utf8_unicode_ci NOT NULL,
  `download_file` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `download_license` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_copyright` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_os` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_version` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_filesize` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `download_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `download_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `download_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `download_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_download_cats`
--

CREATE TABLE `fusion5W314_download_cats` (
  `download_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `download_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `download_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_cat_description` text COLLATE utf8_unicode_ci NOT NULL,
  `download_cat_sorting` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'download_title ASC',
  `download_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_email_templates`
--

CREATE TABLE `fusion5W314_email_templates` (
  `template_id` mediumint(8) UNSIGNED NOT NULL,
  `template_key` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `template_format` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `template_active` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `template_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `template_content` text COLLATE utf8_unicode_ci NOT NULL,
  `template_sender_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `template_sender_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `template_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_email_templates`
--

INSERT INTO `fusion5W314_email_templates` (`template_id`, `template_key`, `template_format`, `template_active`, `template_name`, `template_subject`, `template_content`, `template_sender_name`, `template_sender_email`, `template_language`) VALUES
(1, 'PM', 'html', 0, 'Notification on new PM', 'You have a new private message from [USER] waiting at [SITENAME]', 'Hello [RECEIVER],\r\nYou have received a new Private Message titled [SUBJECT] from [USER] at [SITENAME]. You can read your private message at [SITEURL]messages.php\r\n\r\nMessage: [MESSAGE]\r\n\r\nYou can disable email notification through the options panel of the Private Message page if you no longer wish to be notified of new messages.\r\n\r\nRegards,\r\n[SENDER].', '', '', 'English'),
(2, 'POST', 'html', 0, 'Notification on new forum posts', 'Thread Reply Notification - [SUBJECT]', 'Hello [RECEIVER],\r\n\r\nA reply has been posted in the forum thread \'[SUBJECT]\' which you are tracking at [SITENAME]. You can use the following link to view the reply:\r\n\r\n[THREAD_URL]\r\n\r\nIf you no longer wish to watch this thread you can click the \'Stop tracking this thread\' link located at the top of the thread.\r\n\r\nRegards,\r\n[SENDER].', '', '', 'English'),
(3, 'CONTACT', 'html', 0, 'Contact form', '[SUBJECT]', '[MESSAGE]', '', '', 'English'),
(4, 'PM', 'html', 0, 'Уведомление о новом личном сообщении', 'Вы получили новое личное сообщение от пользователя [USER] на сайте [SITENAME]', 'Приветствую, [RECEIVER],\r\nВы получили новое личное сообщение с темой [SUBJECT] от пользователя [USER] на сайте [SITENAME]. Вы можете прочитать его по ссылке [SITEURL]messages.php\r\n\r\nСообщение: [MESSAGE]\r\n\r\nВы также можете отключить уведомления на почту через панель опций личных собощений, если не хотите получать такие уведомления в дальнейшем.\r\n\r\nС наилучшими пожеланиями,\r\n[SENDER].', 'admin', 'moti@svyaznoytv.com', 'Russian'),
(5, 'POST', 'html', 0, 'Уведомление о сообщениях на форуме', 'Уведомление об ответе в теме - [SUBJECT]', 'Приветствую, [RECEIVER],\r\n\r\nВ теме форума \'[SUBJECT]\', которую вы отслеживаете на сайте [SITENAME], появился новый ответ. Для того, чтобы ответить, пройдите по ссылке:\r\n\r\n[THREAD_URL]\r\n\r\nЕсли Вы больше не хотите отслеживать эту тему, пройдите по ссылке \'Прекратить следить за темой\', которая размещена вверху темы. С наилучшими пожеланиями,\r\n[SENDER].', 'admin', 'moti@svyaznoytv.com', 'Russian'),
(6, 'CONTACT', 'html', 0, 'Обратная связь', '[SUBJECT]', '[MESSAGE]', 'admin', 'moti@svyaznoytv.com', 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_email_verify`
--

CREATE TABLE `fusion5W314_email_verify` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_errors`
--

CREATE TABLE `fusion5W314_errors` (
  `error_id` mediumint(8) UNSIGNED NOT NULL,
  `error_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `error_message` text COLLATE utf8_unicode_ci NOT NULL,
  `error_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `error_line` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `error_page` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `error_user_level` tinyint(4) NOT NULL DEFAULT '0',
  `error_user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `error_user_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `error_status` tinyint(1) NOT NULL DEFAULT '0',
  `error_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_faqs`
--

CREATE TABLE `fusion5W314_faqs` (
  `faq_id` mediumint(8) UNSIGNED NOT NULL,
  `faq_cat_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `faq_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_answer` text COLLATE utf8_unicode_ci NOT NULL,
  `faq_breaks` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_name` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `faq_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `faq_visibility` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `faq_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `faq_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_faq_cats`
--

CREATE TABLE `fusion5W314_faq_cats` (
  `faq_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `faq_cat_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_cat_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_flood_control`
--

CREATE TABLE `fusion5W314_flood_control` (
  `flood_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `flood_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `flood_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forums`
--

CREATE TABLE `fusion5W314_forums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_branch` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `forum_type` tinyint(1) NOT NULL DEFAULT '1',
  `forum_answer_threshold` tinyint(3) NOT NULL DEFAULT '15',
  `forum_lock` tinyint(1) NOT NULL DEFAULT '0',
  `forum_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `forum_description` text COLLATE utf8_unicode_ci NOT NULL,
  `forum_rules` text COLLATE utf8_unicode_ci NOT NULL,
  `forum_mods` text COLLATE utf8_unicode_ci NOT NULL,
  `forum_access` tinyint(4) NOT NULL DEFAULT '0',
  `forum_post` tinyint(4) DEFAULT '-101',
  `forum_reply` tinyint(4) DEFAULT '-101',
  `forum_allow_poll` tinyint(1) NOT NULL DEFAULT '0',
  `forum_poll` tinyint(4) NOT NULL DEFAULT '-101',
  `forum_vote` tinyint(4) NOT NULL DEFAULT '-101',
  `forum_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `forum_post_ratings` tinyint(4) NOT NULL DEFAULT '-101',
  `forum_users` tinyint(1) NOT NULL DEFAULT '0',
  `forum_allow_attach` tinyint(1) NOT NULL DEFAULT '0',
  `forum_attach` tinyint(4) NOT NULL DEFAULT '-101',
  `forum_attach_download` tinyint(4) NOT NULL DEFAULT '-101',
  `forum_quick_edit` tinyint(1) NOT NULL DEFAULT '0',
  `forum_lastpostid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_postcount` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_threadcount` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_lastuser` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_merge` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `forum_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English',
  `forum_meta` text COLLATE utf8_unicode_ci NOT NULL,
  `forum_alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_attachments`
--

CREATE TABLE `fusion5W314_forum_attachments` (
  `attach_id` mediumint(8) UNSIGNED NOT NULL,
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attach_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attach_mime` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attach_size` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `attach_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_polls`
--

CREATE TABLE `fusion5W314_forum_polls` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_poll_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `forum_poll_start` int(10) UNSIGNED DEFAULT NULL,
  `forum_poll_length` int(10) UNSIGNED NOT NULL,
  `forum_poll_votes` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_poll_options`
--

CREATE TABLE `fusion5W314_forum_poll_options` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_poll_option_id` smallint(5) UNSIGNED NOT NULL,
  `forum_poll_option_text` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `forum_poll_option_votes` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_poll_voters`
--

CREATE TABLE `fusion5W314_forum_poll_voters` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_vote_user_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_vote_user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `forum_vote_user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_posts`
--

CREATE TABLE `fusion5W314_forum_posts` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL,
  `post_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_message` text COLLATE utf8_unicode_ci NOT NULL,
  `post_showsig` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_smileys` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_author` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `post_edituser` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_edittime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_editreason` text COLLATE utf8_unicode_ci NOT NULL,
  `post_hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_answer` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_post_mood`
--

CREATE TABLE `fusion5W314_forum_post_mood` (
  `mood_id` mediumint(8) UNSIGNED NOT NULL,
  `mood_name` text COLLATE utf8_unicode_ci NOT NULL,
  `mood_description` text COLLATE utf8_unicode_ci NOT NULL,
  `mood_icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mood_notify` smallint(4) NOT NULL DEFAULT '-101',
  `mood_access` smallint(4) NOT NULL DEFAULT '-101',
  `mood_status` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_post_notify`
--

CREATE TABLE `fusion5W314_forum_post_notify` (
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_mood_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_sender` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_ranks`
--

CREATE TABLE `fusion5W314_forum_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rank_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rank_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_apply` tinyint(4) DEFAULT '-101',
  `rank_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_forum_ranks`
--

INSERT INTO `fusion5W314_forum_ranks` (`rank_id`, `rank_title`, `rank_image`, `rank_posts`, `rank_type`, `rank_apply`, `rank_language`) VALUES
(1, 'Super Admin', 'rank_super_admin.png', 0, 1, -103, 'English'),
(2, 'Admin', 'rank_admin.png', 0, 1, -102, 'English'),
(3, 'Moderator', 'rank_mod.png', 0, 1, -104, 'English'),
(4, 'Newbie', 'rank0.png', 0, 0, -101, 'English'),
(5, 'Junior Member', 'rank1.png', 10, 0, -101, 'English'),
(6, 'Member', 'rank2.png', 50, 0, -101, 'English'),
(7, 'Senior Member', 'rank3.png', 200, 0, -101, 'English'),
(8, 'Veteran Member', 'rank4.png', 500, 0, -101, 'English'),
(9, 'Fusioneer', 'rank5.png', 1000, 0, -101, 'English');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_threads`
--

CREATE TABLE `fusion5W314_forum_threads` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `thread_tags` text COLLATE utf8_unicode_ci NOT NULL,
  `thread_tags_old` text COLLATE utf8_unicode_ci NOT NULL,
  `thread_tags_change` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thread_author` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_lastpostid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_lastuser` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_postcount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thread_poll` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thread_sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thread_answered` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thread_bounty` smallint(8) NOT NULL,
  `thread_bounty_description` text COLLATE utf8_unicode_ci NOT NULL,
  `thread_bounty_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_bounty_user` mediumint(11) UNSIGNED NOT NULL DEFAULT '0',
  `thread_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thread_hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_thread_notify`
--

CREATE TABLE `fusion5W314_forum_thread_notify` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_thread_tags`
--

CREATE TABLE `fusion5W314_forum_thread_tags` (
  `tag_id` mediumint(8) UNSIGNED NOT NULL,
  `tag_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_color` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_status` smallint(1) NOT NULL DEFAULT '0',
  `tag_language` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_forum_thread_tags`
--

INSERT INTO `fusion5W314_forum_thread_tags` (`tag_id`, `tag_title`, `tag_description`, `tag_color`, `tag_status`, `tag_language`) VALUES
(1, 'Site Information', 'Discussions regarding the management of this website', '#2e8c65', 1, 'English');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_user_reputation`
--

CREATE TABLE `fusion5W314_forum_user_reputation` (
  `rep_id` mediumint(8) UNSIGNED NOT NULL,
  `rep_answer` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `points_gain` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `voter_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` mediumint(11) UNSIGNED NOT NULL DEFAULT '0',
  `datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_forum_votes`
--

CREATE TABLE `fusion5W314_forum_votes` (
  `vote_id` mediumint(20) UNSIGNED NOT NULL,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vote_points` decimal(3,0) NOT NULL DEFAULT '0',
  `vote_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_infusions`
--

CREATE TABLE `fusion5W314_infusions` (
  `inf_id` mediumint(8) UNSIGNED NOT NULL,
  `inf_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inf_folder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inf_version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_infusions`
--

INSERT INTO `fusion5W314_infusions` (`inf_id`, `inf_title`, `inf_folder`, `inf_version`) VALUES
(1, 'Articles', 'articles', '1.2'),
(2, 'Blog', 'blog', '1.1'),
(3, 'Downloads', 'downloads', '1.1'),
(4, 'FAQs', 'faq', '1.2'),
(5, 'Forum', 'forum', '1.0.6'),
(6, 'Gallery', 'gallery', '1.1'),
(7, 'Polls', 'member_poll_panel', '1.1'),
(8, 'News', 'news', '1.12'),
(9, 'Shoutbox', 'shoutbox_panel', '1.1'),
(10, 'Web Links', 'weblinks', '1.2');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_language_sessions`
--

CREATE TABLE `fusion5W314_language_sessions` (
  `user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `user_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English',
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_language_sessions`
--

INSERT INTO `fusion5W314_language_sessions` (`user_ip`, `user_language`, `user_datestamp`) VALUES
('178.212.195.36', 'Russian', 1553183238);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_messages`
--

CREATE TABLE `fusion5W314_messages` (
  `message_id` mediumint(8) UNSIGNED NOT NULL,
  `message_to` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `message_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `message_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `message_subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message_message` text COLLATE utf8_unicode_ci NOT NULL,
  `message_smileys` smallint(1) NOT NULL DEFAULT '0',
  `message_read` smallint(1) NOT NULL DEFAULT '0',
  `message_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message_folder` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_messages_options`
--

CREATE TABLE `fusion5W314_messages_options` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pm_email_notify` smallint(1) NOT NULL DEFAULT '0',
  `pm_save_sent` smallint(100) NOT NULL DEFAULT '0',
  `pm_inbox` smallint(5) NOT NULL DEFAULT '0',
  `pm_savebox` smallint(5) NOT NULL DEFAULT '0',
  `pm_sentbox` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_messages_options`
--

INSERT INTO `fusion5W314_messages_options` (`user_id`, `pm_email_notify`, `pm_save_sent`, `pm_inbox`, `pm_savebox`, `pm_sentbox`) VALUES
(0, 0, 1, 20, 20, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_mlt_tables`
--

CREATE TABLE `fusion5W314_mlt_tables` (
  `mlt_rights` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `mlt_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mlt_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_mlt_tables`
--

INSERT INTO `fusion5W314_mlt_tables` (`mlt_rights`, `mlt_title`, `mlt_status`) VALUES
('SL', 'Навигация', '1'),
('CP', 'Страницы', '1'),
('ET', 'Шаблоны почтовых сообщений', '1'),
('PN', 'Панели', '1'),
('AR', 'Статьи', '1'),
('BL', 'Блог', '1'),
('DL', 'Загрузки', '1'),
('FQ', 'ЧаВо', '1'),
('FO', 'Forum', '1'),
('FR', 'Ранги форума', '1'),
('PG', 'Галерея', '1'),
('PO', 'Опросы', '1'),
('NS', 'Новости', '1'),
('SB', 'Мини-чат', '1'),
('WL', 'Ссылки', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_news`
--

CREATE TABLE `fusion5W314_news` (
  `news_id` mediumint(8) UNSIGNED NOT NULL,
  `news_subject` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `news_news` text COLLATE utf8_unicode_ci NOT NULL,
  `news_extended` text COLLATE utf8_unicode_ci NOT NULL,
  `news_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_breaks` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_name` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `news_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_end` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `news_reads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_image_align` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_image_full_default` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `news_image_front_default` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `news_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `news_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `news_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_news_cats`
--

CREATE TABLE `fusion5W314_news_cats` (
  `news_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `news_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `news_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_cat_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_cat_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `news_cat_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_cat_sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_news_cats`
--

INSERT INTO `fusion5W314_news_cats` (`news_cat_id`, `news_cat_parent`, `news_cat_name`, `news_cat_image`, `news_cat_visibility`, `news_cat_draft`, `news_cat_sticky`, `news_cat_language`) VALUES
(1, 0, 'Bugs', 'bugs.svg', 0, 0, 0, 'English'),
(2, 0, 'Downloads', 'downloads.svg', 0, 0, 0, 'English'),
(3, 0, 'Games', 'games.svg', 0, 0, 0, 'English'),
(4, 0, 'Graphics', 'graphics.svg', 0, 0, 0, 'English'),
(5, 0, 'Hardware', 'hardware.svg', 0, 0, 0, 'English'),
(6, 0, 'Journal', 'journal.svg', 0, 0, 0, 'English'),
(7, 0, 'Members', 'members.svg', 0, 0, 0, 'English'),
(8, 0, 'Mods', 'mods.svg', 0, 0, 0, 'English'),
(9, 0, 'Network', 'network.svg', 0, 0, 0, 'English'),
(10, 0, 'News', 'news.svg', 0, 0, 0, 'English'),
(11, 0, 'PHP-Fusion', 'php-fusion.svg', 0, 0, 0, 'English'),
(12, 0, 'Security', 'security.svg', 0, 0, 0, 'English'),
(13, 0, 'Software', 'software.svg', 0, 0, 0, 'English'),
(14, 0, 'Themes', 'themes.svg', 0, 0, 0, 'English'),
(15, 0, 'Windows', 'windows.svg', 0, 0, 0, 'English'),
(16, 0, 'Ошибки', 'bugs.svg', 0, 0, 0, 'Russian'),
(17, 0, 'Загрузки', 'downloads.svg', 0, 0, 0, 'Russian'),
(18, 0, 'Игры', 'games.svg', 0, 0, 0, 'Russian'),
(19, 0, 'Графика', 'graphics.svg', 0, 0, 0, 'Russian'),
(20, 0, 'Железо', 'hardware.svg', 0, 0, 0, 'Russian'),
(21, 0, 'Журнал', 'journal.svg', 0, 0, 0, 'Russian'),
(22, 0, 'Участники', 'members.svg', 0, 0, 0, 'Russian'),
(23, 0, 'Моды', 'mods.svg', 0, 0, 0, 'Russian'),
(24, 0, 'Сеть', 'network.svg', 0, 0, 0, 'Russian'),
(25, 0, 'Новости', 'news.svg', 0, 0, 0, 'Russian'),
(26, 0, 'PHP-Fusion', 'php-fusion.svg', 0, 0, 0, 'Russian'),
(27, 0, 'Безопасность', 'security.svg', 0, 0, 0, 'Russian'),
(28, 0, 'Программы', 'software.svg', 0, 0, 0, 'Russian'),
(29, 0, 'Темы', 'themes.svg', 0, 0, 0, 'Russian'),
(30, 0, 'Windows', 'windows.svg', 0, 0, 0, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_news_gallery`
--

CREATE TABLE `fusion5W314_news_gallery` (
  `news_image_id` mediumint(11) UNSIGNED NOT NULL,
  `news_id` mediumint(11) UNSIGNED NOT NULL DEFAULT '0',
  `submit_id` mediumint(11) UNSIGNED NOT NULL DEFAULT '0',
  `news_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_image_t1` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_image_t2` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_image_user` mediumint(9) NOT NULL DEFAULT '0',
  `news_image_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_new_users`
--

CREATE TABLE `fusion5W314_new_users` (
  `user_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_info` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_online`
--

CREATE TABLE `fusion5W314_online` (
  `online_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `online_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `online_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `online_lastactive` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_online`
--

INSERT INTO `fusion5W314_online` (`online_user`, `online_ip`, `online_ip_type`, `online_lastactive`) VALUES
('0', '178.212.195.36', 4, 1553183245);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_panels`
--

CREATE TABLE `fusion5W314_panels` (
  `panel_id` mediumint(8) UNSIGNED NOT NULL,
  `panel_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `panel_filename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `panel_content` text COLLATE utf8_unicode_ci NOT NULL,
  `panel_side` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `panel_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `panel_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `panel_access` tinyint(4) NOT NULL DEFAULT '0',
  `panel_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `panel_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `panel_url_list` text COLLATE utf8_unicode_ci NOT NULL,
  `panel_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `panel_languages` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_panels`
--

INSERT INTO `fusion5W314_panels` (`panel_id`, `panel_name`, `panel_filename`, `panel_content`, `panel_side`, `panel_order`, `panel_type`, `panel_access`, `panel_display`, `panel_status`, `panel_url_list`, `panel_restriction`, `panel_languages`) VALUES
(1, 'Navigation', 'css_navigation_panel', '', 1, 1, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(2, 'RSS', 'rss_feeds_panel', '', 1, 2, 'file', 0, 0, 1, 'home.php', 2, 'English.Russian'),
(3, 'Online Users', 'online_users_panel', '', 1, 3, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(4, 'Welcome Message', 'welcome_message_panel', '', 2, 1, 'file', 0, 0, 1, 'home.php', 2, 'English.Russian'),
(5, 'User Info', 'user_info_panel', '', 4, 1, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(6, 'Latest Articles', 'latest_articles_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(7, 'Blog Archive Panel', 'blog_archive_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(8, 'Latest Downloads', 'latest_downloads_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(9, 'Forum Threads', 'forum_threads_panel', '', 1, 4, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(10, 'Forum Threads List', 'forum_threads_list_panel', '', 2, 1, 'file', 0, 1, 1, 'home.php', 2, 'English.Russian'),
(11, 'Members Poll', 'member_poll_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'English.Russian'),
(12, 'Shoutbox', 'shoutbox_panel', '', 4, 3, 'file', 0, 1, 1, '', 3, 'English.Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_permalinks_alias`
--

CREATE TABLE `fusion5W314_permalinks_alias` (
  `alias_id` mediumint(8) UNSIGNED NOT NULL,
  `alias_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias_php_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `alias_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_permalinks_method`
--

CREATE TABLE `fusion5W314_permalinks_method` (
  `pattern_id` mediumint(8) UNSIGNED NOT NULL,
  `pattern_type` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `pattern_source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pattern_target` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pattern_cat` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_permalinks_rewrites`
--

CREATE TABLE `fusion5W314_permalinks_rewrites` (
  `rewrite_id` mediumint(8) UNSIGNED NOT NULL,
  `rewrite_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_photos`
--

CREATE TABLE `fusion5W314_photos` (
  `photo_id` mediumint(8) UNSIGNED NOT NULL,
  `album_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `photo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_filename` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_thumb1` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_thumb2` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photo_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `photo_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photo_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `photo_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `photo_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_photo_albums`
--

CREATE TABLE `fusion5W314_photo_albums` (
  `album_id` mediumint(8) UNSIGNED NOT NULL,
  `album_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `album_description` text COLLATE utf8_unicode_ci NOT NULL,
  `album_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `album_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `album_thumb1` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `album_thumb2` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `album_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `album_access` tinyint(4) NOT NULL DEFAULT '0',
  `album_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `album_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `album_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_polls`
--

CREATE TABLE `fusion5W314_polls` (
  `poll_id` mediumint(8) UNSIGNED NOT NULL,
  `poll_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `poll_opt` text COLLATE utf8_unicode_ci NOT NULL,
  `poll_started` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_ended` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_visibility` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_poll_votes`
--

CREATE TABLE `fusion5W314_poll_votes` (
  `vote_id` mediumint(8) UNSIGNED NOT NULL,
  `vote_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vote_user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `vote_opt` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `poll_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_ratings`
--

CREATE TABLE `fusion5W314_ratings` (
  `rating_id` mediumint(8) UNSIGNED NOT NULL,
  `rating_item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rating_type` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `rating_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rating_vote` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rating_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `rating_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_settings`
--

CREATE TABLE `fusion5W314_settings` (
  `settings_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_settings`
--

INSERT INTO `fusion5W314_settings` (`settings_name`, `settings_value`) VALUES
('sitename', 'Moti'),
('siteurl', 'http://moti.svyaznoytv.com/'),
('site_protocol', 'http'),
('site_host', 'moti.svyaznoytv.com'),
('site_port', ''),
('site_path', '/'),
('site_seo', '0'),
('sitebanner', 'images/php-fusion-logo.png'),
('logoposition_xs', 'logo-xs-left'),
('logoposition_sm', 'logo-sm-left'),
('logoposition_md', 'logo-md-left'),
('logoposition_lg', 'logo-lg-left'),
('sitebanner1', '<div style=\\\"text-align: center;\\\"><strong>test1</strong></div>'),
('sitebanner2', ''),
('siteemail', 'moti@svyaznoytv.com'),
('siteusername', 'admin'),
('siteintro', '<div style=\\\"text-align: center;\\\">Welcome to your site</div>'),
('description', 'PHP-Fusion is a lightweight open source content management system (CMS) written in PHP.'),
('keywords', 'PHP-Fusion, CMS, Portal, Open Source, AGPL, PHP, MySQL, HTML, CSS, JS'),
('footer', '<div style=\\\"text-align: center;\\\">Copyright © 2019</div>'),
('opening_page', 'viewpage.php?page_id=1'),
('locale', 'Russian'),
('bootstrap', '1'),
('entypo', '1'),
('fontawesome', '1'),
('theme', 'Czechia'),
('admin_theme', 'MDashboard'),
('default_search', 'all'),
('exclude_left', ''),
('exclude_upper', ''),
('exclude_lower', ''),
('exclude_aupper', ''),
('exclude_blower', ''),
('exclude_right', ''),
('exclude_user1', ''),
('exclude_user2', ''),
('exclude_user3', ''),
('exclude_user4', ''),
('shortdate', '%d.%m.%y'),
('longdate', '%B %d %Y %H:%M:%S'),
('forumdate', '%d-%m-%Y %H:%M'),
('newsdate', '%B %d %Y'),
('subheaderdate', '%B %d %Y %H:%M:%S'),
('timeoffset', 'Europe/Kiev'),
('serveroffset', 'Europe/Kiev'),
('week_start', '0'),
('enable_registration', '1'),
('email_verification', '1'),
('admin_activation', '0'),
('display_validation', '0'),
('enable_deactivation', '0'),
('deactivation_period', '365'),
('deactivation_response', '14'),
('enable_terms', '0'),
('license_agreement', ''),
('license_lastupdate', '0'),
('thumb_compression', 'gd2'),
('tinymce_enabled', '1'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('bad_words_enabled', '1'),
('bad_words', ''),
('bad_word_replace', '****'),
('login_method', '0'),
('guestposts', '0'),
('comments_enabled', '1'),
('ratings_enabled', '1'),
('hide_userprofiles', '0'),
('userthemes', '1'),
('flood_interval', '15'),
('counter', '3'),
('version', '9.0'),
('maintenance', '0'),
('maintenance_message', ''),
('links_per_page', '8'),
('links_grouping', '0'),
('comments_per_page', '10'),
('comments_sorting', 'ASC'),
('comments_avatar', '1'),
('avatar_width', '500'),
('avatar_height', '500'),
('avatar_filesize', '150000'),
('avatar_ratio', '0'),
('cronjob_day', '1553183198'),
('cronjob_hour', '2019-03-21 17:47:25'),
('flood_autoban', '1'),
('visitorcounter_enabled', '1'),
('rendertime_enabled', '0'),
('maintenance_level', '-102'),
('deactivation_action', '0'),
('captcha', 'securimage3'),
('password_algorithm', 'sha256'),
('default_timezone', 'Europe/Kiev'),
('userNameChange', '1'),
('recaptcha_public', ''),
('recaptcha_private', ''),
('recaptcha_theme', 'light'),
('recaptcha_type', 'text'),
('allow_php_exe', '0'),
('multiple_logins', '0'),
('smtp_auth', '0'),
('mime_check', '0'),
('normalize_seo', '0'),
('debug_seo', '0'),
('privacy_policy', ''),
('create_og_tags', '1'),
('index_url_bbcode', '1'),
('index_url_userweb', '1'),
('pm_inbox_limit', '20'),
('pm_outbox_limit', '20'),
('pm_archive_limit', '20'),
('pm_email_notify', '2'),
('pm_save_sent', '2'),
('enabled_languages', 'English.Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_settings_inf`
--

CREATE TABLE `fusion5W314_settings_inf` (
  `settings_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8_unicode_ci NOT NULL,
  `settings_inf` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_settings_inf`
--

INSERT INTO `fusion5W314_settings_inf` (`settings_name`, `settings_value`, `settings_inf`) VALUES
('article_pagination', '15', 'article'),
('article_allow_submission', '1', 'article'),
('article_extended_required', '0', 'article'),
('blog_thumb_ratio', '0', 'blog'),
('blog_image_link', '1', 'blog'),
('blog_photo_w', '400', 'blog'),
('blog_photo_h', '300', 'blog'),
('blog_thumb_w', '100', 'blog'),
('blog_thumb_h', '100', 'blog'),
('blog_photo_max_w', '1800', 'blog'),
('blog_photo_max_h', '1600', 'blog'),
('blog_photo_max_b', '150000', 'blog'),
('blog_pagination', '12', 'blog'),
('blog_allow_submission', '1', 'blog'),
('blog_allow_submission_files', '1', 'blog'),
('blog_extended_required', '0', 'blog'),
('blog_file_types', '.pdf,.gif,.jpg,.png,.svg,.zip,.rar,.tar,.bz2,.7z', 'blog'),
('download_max_b', '512000', 'downloads'),
('download_types', '.pdf,.gif,.jpg,.png,.zip,.rar,.tar,.bz2,.7z', 'downloads'),
('download_screen_max_b', '150000', 'downloads'),
('download_screen_max_w', '1024', 'downloads'),
('download_screen_max_h', '768', 'downloads'),
('download_screenshot', '1', 'downloads'),
('download_stats', '1', 'downloads'),
('download_thumb_max_w', '100', 'downloads'),
('download_thumb_max_h', '100', 'downloads'),
('download_pagination', '15', 'downloads'),
('download_allow_submission', '1', 'downloads'),
('download_screenshot_required', '1', 'downloads'),
('download_extended_required', '1', 'downloads'),
('faq_allow_submission', '1', 'faq'),
('forum_ips', '-103', 'forum'),
('forum_attachmax', '1000000', 'forum'),
('forum_attachmax_count', '5', 'forum'),
('forum_attachtypes', '.pdf,.gif,.jpg,.png,.zip,.rar,.tar,.bz2,.7z', 'forum'),
('thread_notify', '1', 'forum'),
('forum_ranks', '1', 'forum'),
('forum_edit_lock', '0', 'forum'),
('forum_edit_timelimit', '0', 'forum'),
('popular_threads_timeframe', '604800', 'forum'),
('forum_last_posts_reply', '1', 'forum'),
('forum_last_post_avatar', '1', 'forum'),
('forum_editpost_to_lastpost', '1', 'forum'),
('threads_per_page', '20', 'forum'),
('posts_per_page', '20', 'forum'),
('numofthreads', '16', 'forum'),
('forum_rank_style', '0', 'forum'),
('upvote_points', '2', 'forum'),
('downvote_points', '1', 'forum'),
('answering_points', '15', 'forum'),
('points_to_upvote', '100', 'forum'),
('points_to_downvote', '100', 'forum'),
('thumb_w', '200', 'gallery'),
('thumb_h', '200', 'gallery'),
('photo_w', '800', 'gallery'),
('photo_h', '600', 'gallery'),
('photo_max_w', '2400', 'gallery'),
('photo_max_h', '1800', 'gallery'),
('photo_max_b', '2000000', 'gallery'),
('gallery_pagination', '24', 'gallery'),
('photo_watermark', '1', 'gallery'),
('photo_watermark_image', 'infusions/gallery/photos/watermark.png', 'gallery'),
('photo_watermark_text', '0', 'gallery'),
('photo_watermark_text_color1', 'FF6600', 'gallery'),
('photo_watermark_text_color2', 'FFFF00', 'gallery'),
('photo_watermark_text_color3', 'FFFFFF', 'gallery'),
('photo_watermark_save', '0', 'gallery'),
('gallery_allow_submission', '1', 'gallery'),
('gallery_extended_required', '1', 'gallery'),
('gallery_file_types', '.pdf,.gif,.jpg,.png,.svg,.zip,.rar,.tar,.bz2,.7z', 'gallery'),
('news_image_readmore', '1', 'news'),
('news_image_frontpage', '0', 'news'),
('news_thumb_ratio', '0', 'news'),
('news_image_link', '1', 'news'),
('news_photo_w', '1920', 'news'),
('news_photo_h', '1080', 'news'),
('news_thumb_w', '800', 'news'),
('news_thumb_h', '640', 'news'),
('news_photo_max_w', '2048', 'news'),
('news_photo_max_h', '1365', 'news'),
('news_photo_max_b', '2000000', 'news'),
('news_pagination', '12', 'news'),
('news_allow_submission', '1', 'news'),
('news_allow_submission_files', '1', 'news'),
('news_extended_required', '0', 'news'),
('news_file_types', '.pdf,.gif,.jpg,.png,.svg,.zip,.rar,.tar,.bz2,.7z', 'news'),
('visible_shouts', '5', 'shoutbox_panel'),
('guest_shouts', '0', 'shoutbox_panel'),
('hidden_shouts', '0', 'shoutbox_panel'),
('links_per_page', '15', 'weblinks'),
('links_extended_required', '1', 'weblinks'),
('links_allow_submission', '1', 'weblinks');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_settings_theme`
--

CREATE TABLE `fusion5W314_settings_theme` (
  `settings_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8_unicode_ci NOT NULL,
  `settings_theme` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_settings_theme`
--

INSERT INTO `fusion5W314_settings_theme` (`settings_name`, `settings_value`, `settings_theme`) VALUES
('theme_pack', 'Nebula', 'FusionTheme'),
('FusionTheme', '1', 'FusionTheme'),
('home_installed', 'yes', 'FusionTheme');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_shoutbox`
--

CREATE TABLE `fusion5W314_shoutbox` (
  `shout_id` mediumint(8) UNSIGNED NOT NULL,
  `shout_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shout_message` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shout_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shout_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shout_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `shout_hidden` tinyint(4) NOT NULL DEFAULT '0',
  `shout_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_site_links`
--

CREATE TABLE `fusion5W314_site_links` (
  `link_id` mediumint(8) UNSIGNED NOT NULL,
  `link_cat` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `link_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link_icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `link_position` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `link_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `link_window` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `link_order` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `link_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_site_links`
--

INSERT INTO `fusion5W314_site_links` (`link_id`, `link_cat`, `link_name`, `link_url`, `link_icon`, `link_visibility`, `link_position`, `link_status`, `link_window`, `link_order`, `link_language`) VALUES
(1, 0, 'Home', 'index.php', '', 0, 2, 1, 0, 1, 'English'),
(2, 0, 'Contact', 'contact.php', '', 0, 3, 1, 0, 8, 'English'),
(3, 0, 'Search', 'search.php', '', 0, 1, 1, 0, 10, 'English'),
(4, 0, 'Submissions', 'submissions.php', '', -101, 1, 1, 0, 10, 'English'),
(5, 0, '---', '---', '', -101, 1, 1, 0, 11, 'English'),
(6, 0, 'Articles', 'infusions/articles/articles.php', '', 0, 2, 1, 0, 2, 'English'),
(7, 0, 'Submit Article', 'submit.php?stype=a', '', -101, 1, 1, 0, 14, 'English'),
(8, 0, 'Blog', 'infusions/blog/blog.php', '', 0, 2, 1, 0, 2, 'English'),
(9, 0, 'Submit Blog', 'submit.php?stype=b', '', -101, 1, 1, 0, 14, 'English'),
(10, 0, 'Downloads', 'infusions/downloads/downloads.php', '', 0, 2, 1, 0, 2, 'English'),
(11, 0, 'Submit Download', 'submit.php?stype=d', '', -101, 1, 1, 0, 16, 'English'),
(12, 0, 'FAQ', 'infusions/faq/faq.php', '', 0, 2, 1, 0, 2, 'English'),
(13, 0, 'Submit FAQ', 'submit.php?stype=q', '', -101, 1, 1, 0, 14, 'English'),
(14, 0, 'Discussion Forum', 'infusions/forum/index.php', '', 0, 2, 1, 0, 5, 'English'),
(15, 14, 'Start a New Thread', 'infusions/forum/newthread.php', '', 0, 2, 1, 0, 1, 'English'),
(16, 14, 'Latest Discussions', 'infusions/forum/index.php?section=latest', '', 0, 2, 1, 0, 2, 'English'),
(17, 14, 'Participated Discussions', 'infusions/forum/index.php?section=participated', '', 0, 2, 1, 0, 3, 'English'),
(18, 14, 'Tracked Threads', 'infusions/forum/index.php?section=tracked', '', 0, 2, 1, 0, 4, 'English'),
(19, 14, 'Unanswered Threads', 'infusions/forum/index.php?section=unanswered', '', 0, 2, 1, 0, 5, 'English'),
(20, 14, 'Unsolved Questions', 'infusions/forum/index.php?section=unsolved', '', 0, 2, 1, 0, 6, 'English'),
(21, 0, 'Gallery', 'infusions/gallery/gallery.php', '', 0, 2, 1, 0, 2, 'English'),
(22, 0, 'Submit Photo', 'submit.php?stype=p', '', -101, 1, 1, 0, 15, 'English'),
(23, 0, 'Polls', 'infusions/member_poll_panel/polls_archive.php', '', 0, 1, 1, 0, 2, 'English'),
(24, 0, 'News', 'infusions/news/news.php', '', 0, 2, 1, 0, 2, 'English'),
(25, 0, 'Submit News', 'submit.php?stype=n', '', -101, 1, 1, 0, 13, 'English'),
(26, 0, 'Web Links', 'infusions/weblinks/weblinks.php', '', 0, 2, 1, 0, 2, 'English'),
(27, 0, 'Submit Link', 'submit.php?stype=l', '', -101, 1, 1, 0, 15, 'English'),
(28, 0, 'Главная', 'index.php', '', 0, 2, 0, 0, 1, 'Russian'),
(29, 0, 'Статьи', 'infusions/articles/articles.php', '', 0, 2, 1, 0, 2, 'Russian'),
(30, 0, 'Добавить статью', 'submit.php?stype=a', '', -101, 1, 1, 0, 14, 'Russian'),
(31, 0, 'Блог', 'infusions/blog/blog.php', '', 0, 2, 1, 0, 2, 'Russian'),
(32, 0, 'Добавить запись в блог', 'submit.php?stype=b', '', -101, 1, 1, 0, 14, 'Russian'),
(33, 0, 'Загрузки', 'infusions/downloads/downloads.php', '', 0, 2, 1, 0, 2, 'Russian'),
(34, 0, 'Добавить загрузку', 'submit.php?stype=d', '', -101, 1, 1, 0, 16, 'Russian'),
(35, 0, 'ЧаВо', 'infusions/faq/faq.php', '', 0, 2, 1, 0, 2, 'Russian'),
(36, 0, 'Добавить ЧаВо', 'submit.php?stype=q', '', -101, 1, 1, 0, 14, 'Russian'),
(37, 0, 'Галерея', 'infusions/gallery/gallery.php', '', 0, 2, 1, 0, 2, 'Russian'),
(38, 0, 'Добавить фото', 'submit.php?stype=p', '', -101, 1, 1, 0, 15, 'Russian'),
(39, 0, 'Опросы', 'infusions/member_poll_panel/polls_archive.php', '', 0, 1, 1, 0, 2, 'Russian'),
(40, 0, 'Новости', 'infusions/news/news.php', '', 0, 2, 1, 0, 2, 'Russian'),
(41, 0, 'Добавить новость', 'submit.php?stype=n', '', -101, 1, 1, 0, 13, 'Russian'),
(42, 0, 'Ссылки', 'infusions/weblinks/weblinks.php', '', 0, 2, 1, 0, 2, 'Russian'),
(43, 0, 'Добавить ссылку', 'submit.php?stype=l', '', -101, 1, 1, 0, 15, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_smileys`
--

CREATE TABLE `fusion5W314_smileys` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `smiley_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smiley_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `smiley_text` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_smileys`
--

INSERT INTO `fusion5W314_smileys` (`smiley_id`, `smiley_code`, `smiley_image`, `smiley_text`) VALUES
(1, ':)', 'smile.png', 'Smile'),
(2, ';)', 'wink.png', 'Wink'),
(3, ':(', 'sad.png', 'Sad'),
(4, ':|', 'frown.png', 'Frown'),
(5, ':o', 'shock.png', 'Shock'),
(6, ':P', 'pfft.png', 'Pfft'),
(7, 'B)', 'cool.png', 'Cool'),
(8, ':D', 'grin.png', 'Grin'),
(9, ':@', 'angry.png', 'Angry'),
(10, '(y)', 'like.png', 'Like');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_submissions`
--

CREATE TABLE `fusion5W314_submissions` (
  `submit_id` mediumint(8) UNSIGNED NOT NULL,
  `submit_type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `submit_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `submit_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `submit_criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_suspends`
--

CREATE TABLE `fusion5W314_suspends` (
  `suspend_id` mediumint(8) UNSIGNED NOT NULL,
  `suspended_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `suspending_admin` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `suspend_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `suspend_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `suspend_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `suspend_reason` text COLLATE utf8_unicode_ci NOT NULL,
  `suspend_type` tinyint(1) NOT NULL DEFAULT '0',
  `reinstating_admin` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `reinstate_reason` text COLLATE utf8_unicode_ci NOT NULL,
  `reinstate_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reinstate_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `reinstate_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_theme`
--

CREATE TABLE `fusion5W314_theme` (
  `theme_id` mediumint(8) UNSIGNED NOT NULL,
  `theme_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `theme_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `theme_file` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `theme_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `theme_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `theme_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme_config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_users`
--

CREATE TABLE `fusion5W314_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_algo` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sha256',
  `user_salt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_admin_algo` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sha256',
  `user_admin_salt` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `user_admin_password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_hide_email` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_timezone` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Europe/London',
  `user_avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_posts` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_threads` text COLLATE utf8_unicode_ci NOT NULL,
  `user_joined` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `user_rights` text COLLATE utf8_unicode_ci NOT NULL,
  `user_groups` text COLLATE utf8_unicode_ci NOT NULL,
  `user_level` tinyint(4) NOT NULL DEFAULT '-101',
  `user_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_reputation` int(10) UNSIGNED NOT NULL,
  `user_inbox` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `user_outbox` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `user_archive` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `user_pm_email_notify` tinyint(1) NOT NULL DEFAULT '0',
  `user_pm_save_sent` tinyint(1) NOT NULL DEFAULT '0',
  `user_actiontime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_theme` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Default',
  `user_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_birthdate` date NOT NULL DEFAULT '1900-01-01',
  `user_skype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_aim` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `user_icq` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_yahoo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_sig` text COLLATE utf8_unicode_ci NOT NULL,
  `user_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_users`
--

INSERT INTO `fusion5W314_users` (`user_id`, `user_name`, `user_algo`, `user_salt`, `user_password`, `user_admin_algo`, `user_admin_salt`, `user_admin_password`, `user_email`, `user_hide_email`, `user_timezone`, `user_avatar`, `user_posts`, `user_threads`, `user_joined`, `user_lastvisit`, `user_ip`, `user_ip_type`, `user_rights`, `user_groups`, `user_level`, `user_status`, `user_reputation`, `user_inbox`, `user_outbox`, `user_archive`, `user_pm_email_notify`, `user_pm_save_sent`, `user_actiontime`, `user_theme`, `user_location`, `user_birthdate`, `user_skype`, `user_aim`, `user_icq`, `user_yahoo`, `user_web`, `user_sig`, `user_language`) VALUES
(1, 'admin', 'sha256', '1313f5369afbca25e9469d75eda831d665460164', '321eba7f92a9eeffbde66a0eaa8674c0635ceeb7531f37d443c29068858496b6', 'sha256', '4b1928144a3bf7a618b3f6e95d047442ee3220b8', '3e8710afce8072486ca1c39eab45d6e21d4f474d58be711ea97d2e3dd38b50bf', 'kaizenroot@gmail.com', 1, 'Europe/Kiev', '', 0, '', 1551759956, 1552981495, '178.212.195.36', 4, 'A.AD.APWR.B.BB.BLOG.C.CP.DB.ERRO.FQ.F.FR.IM.I.IP.M.MI.MAIL.P.PH.PI.PL.PO.ROB.SL.S1.S2.S3.S4.S5.S6.S7.S8.S9.S10.S11.S12.S13.SB.SM.SU.UF.UFC.UG.UL.U.TS.W.LANG.A.BLOG.D.FQ.F.PH.PO.N.S.W', '', -103, 0, 0, 0, 0, 0, 0, 0, 0, 'Default', '', '1900-01-01', '', '', '', '', '', '', 'English');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_user_fields`
--

CREATE TABLE `fusion5W314_user_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_title` text COLLATE utf8_unicode_ci NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `field_default` text COLLATE utf8_unicode_ci NOT NULL,
  `field_options` text COLLATE utf8_unicode_ci NOT NULL,
  `field_error` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_log` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_registration` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `field_config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_user_fields`
--

INSERT INTO `fusion5W314_user_fields` (`field_id`, `field_title`, `field_name`, `field_cat`, `field_type`, `field_default`, `field_options`, `field_error`, `field_required`, `field_log`, `field_registration`, `field_order`, `field_config`) VALUES
(1, 'Birthdate', 'user_birthdate', 3, 'file', '1900-01-01', '', '', 0, 0, 0, 2, ''),
(2, 'Location', 'user_location', 3, 'file', '', '', '', 0, 0, 0, 2, ''),
(3, 'Skype', 'user_skype', 2, 'file', '', '', '', 0, 0, 0, 1, ''),
(4, 'AIM ID', 'user_aim', 2, 'file', '', '', '', 0, 0, 0, 2, ''),
(5, 'ICQ#', 'user_icq', 2, 'file', '', '', '', 0, 0, 0, 3, ''),
(6, 'Yahoo', 'user_yahoo', 2, 'file', '', '', '', 0, 0, 0, 4, ''),
(7, 'Website', 'user_web', 3, 'file', '', '', '', 0, 0, 0, 3, ''),
(8, 'Timezone', 'user_timezone', 4, 'file', '', '', '', 0, 0, 0, 1, ''),
(9, 'Theme', 'user_theme', 4, 'file', '', '', '', 0, 0, 0, 2, ''),
(10, 'Signature', 'user_sig', 4, 'file', '', '', '', 0, 0, 0, 3, '');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_user_field_cats`
--

CREATE TABLE `fusion5W314_user_field_cats` (
  `field_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `field_cat_name` text COLLATE utf8_unicode_ci NOT NULL,
  `field_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_cat_db` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_cat_index` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `field_cat_class` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_cat_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion5W314_user_field_cats`
--

INSERT INTO `fusion5W314_user_field_cats` (`field_cat_id`, `field_cat_name`, `field_parent`, `field_cat_db`, `field_cat_index`, `field_cat_class`, `field_cat_order`) VALUES
(1, 'Profile', 0, 'users', 'user_id', 'fa fa-user', 1),
(2, 'Contact Information', 1, '', '', 'fa fa-user', 1),
(3, 'Miscellaneous Information', 1, '', '', 'fa fa-user', 2),
(4, 'Options', 1, '', '', 'fa fa-user', 3),
(5, 'Statistics', 1, '', '', 'fa fa-user', 4),
(6, 'Privacy', 1, '', '', 'fa fa-user', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_user_groups`
--

CREATE TABLE `fusion5W314_user_groups` (
  `group_id` tinyint(3) UNSIGNED NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group_description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `group_icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_user_log`
--

CREATE TABLE `fusion5W314_user_log` (
  `userlog_id` mediumint(8) UNSIGNED NOT NULL,
  `userlog_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userlog_field` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userlog_value_new` text COLLATE utf8_unicode_ci NOT NULL,
  `userlog_value_old` text COLLATE utf8_unicode_ci NOT NULL,
  `userlog_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_weblinks`
--

CREATE TABLE `fusion5W314_weblinks` (
  `weblink_id` mediumint(8) UNSIGNED NOT NULL,
  `weblink_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weblink_description` text COLLATE utf8_unicode_ci NOT NULL,
  `weblink_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weblink_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `weblink_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `weblink_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `weblink_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `weblink_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `weblink_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion5W314_weblink_cats`
--

CREATE TABLE `fusion5W314_weblink_cats` (
  `weblink_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `weblink_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `weblink_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weblink_cat_description` text COLLATE utf8_unicode_ci NOT NULL,
  `weblink_cat_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `weblink_cat_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `weblink_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fusion5W314_admin`
--
ALTER TABLE `fusion5W314_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Индексы таблицы `fusion5W314_admin_resetlog`
--
ALTER TABLE `fusion5W314_admin_resetlog`
  ADD PRIMARY KEY (`reset_id`);

--
-- Индексы таблицы `fusion5W314_articles`
--
ALTER TABLE `fusion5W314_articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `article_cat` (`article_cat`),
  ADD KEY `article_datestamp` (`article_datestamp`),
  ADD KEY `article_reads` (`article_reads`);

--
-- Индексы таблицы `fusion5W314_article_cats`
--
ALTER TABLE `fusion5W314_article_cats`
  ADD PRIMARY KEY (`article_cat_id`);

--
-- Индексы таблицы `fusion5W314_bbcodes`
--
ALTER TABLE `fusion5W314_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `bbcode_order` (`bbcode_order`);

--
-- Индексы таблицы `fusion5W314_blacklist`
--
ALTER TABLE `fusion5W314_blacklist`
  ADD PRIMARY KEY (`blacklist_id`),
  ADD KEY `blacklist_ip_type` (`blacklist_ip_type`);

--
-- Индексы таблицы `fusion5W314_blog`
--
ALTER TABLE `fusion5W314_blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blog_datestamp` (`blog_datestamp`),
  ADD KEY `blog_reads` (`blog_reads`);

--
-- Индексы таблицы `fusion5W314_blog_cats`
--
ALTER TABLE `fusion5W314_blog_cats`
  ADD PRIMARY KEY (`blog_cat_id`);

--
-- Индексы таблицы `fusion5W314_captcha`
--
ALTER TABLE `fusion5W314_captcha`
  ADD KEY `captcha_datestamp` (`captcha_datestamp`);

--
-- Индексы таблицы `fusion5W314_comments`
--
ALTER TABLE `fusion5W314_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_datestamp` (`comment_datestamp`);

--
-- Индексы таблицы `fusion5W314_custom_pages`
--
ALTER TABLE `fusion5W314_custom_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Индексы таблицы `fusion5W314_custom_pages_content`
--
ALTER TABLE `fusion5W314_custom_pages_content`
  ADD PRIMARY KEY (`page_content_id`),
  ADD KEY `page_grid_id` (`page_grid_id`);

--
-- Индексы таблицы `fusion5W314_custom_pages_grid`
--
ALTER TABLE `fusion5W314_custom_pages_grid`
  ADD PRIMARY KEY (`page_grid_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `fusion5W314_downloads`
--
ALTER TABLE `fusion5W314_downloads`
  ADD PRIMARY KEY (`download_id`),
  ADD KEY `download_datestamp` (`download_datestamp`);

--
-- Индексы таблицы `fusion5W314_download_cats`
--
ALTER TABLE `fusion5W314_download_cats`
  ADD PRIMARY KEY (`download_cat_id`);

--
-- Индексы таблицы `fusion5W314_email_templates`
--
ALTER TABLE `fusion5W314_email_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Индексы таблицы `fusion5W314_email_verify`
--
ALTER TABLE `fusion5W314_email_verify`
  ADD KEY `user_datestamp` (`user_datestamp`);

--
-- Индексы таблицы `fusion5W314_errors`
--
ALTER TABLE `fusion5W314_errors`
  ADD PRIMARY KEY (`error_id`);

--
-- Индексы таблицы `fusion5W314_faqs`
--
ALTER TABLE `fusion5W314_faqs`
  ADD PRIMARY KEY (`faq_id`),
  ADD KEY `faq_cat_id` (`faq_cat_id`),
  ADD KEY `faq_datestamp` (`faq_datestamp`);

--
-- Индексы таблицы `fusion5W314_faq_cats`
--
ALTER TABLE `fusion5W314_faq_cats`
  ADD PRIMARY KEY (`faq_cat_id`);

--
-- Индексы таблицы `fusion5W314_flood_control`
--
ALTER TABLE `fusion5W314_flood_control`
  ADD KEY `flood_timestamp` (`flood_timestamp`);

--
-- Индексы таблицы `fusion5W314_forums`
--
ALTER TABLE `fusion5W314_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `forum_order` (`forum_order`),
  ADD KEY `forum_lastpostid` (`forum_lastpostid`),
  ADD KEY `forum_postcount` (`forum_postcount`),
  ADD KEY `forum_threadcount` (`forum_threadcount`);

--
-- Индексы таблицы `fusion5W314_forum_attachments`
--
ALTER TABLE `fusion5W314_forum_attachments`
  ADD PRIMARY KEY (`attach_id`);

--
-- Индексы таблицы `fusion5W314_forum_polls`
--
ALTER TABLE `fusion5W314_forum_polls`
  ADD KEY `thread_id` (`thread_id`);

--
-- Индексы таблицы `fusion5W314_forum_poll_options`
--
ALTER TABLE `fusion5W314_forum_poll_options`
  ADD KEY `thread_id` (`thread_id`);

--
-- Индексы таблицы `fusion5W314_forum_poll_voters`
--
ALTER TABLE `fusion5W314_forum_poll_voters`
  ADD KEY `thread_id` (`thread_id`,`forum_vote_user_id`);

--
-- Индексы таблицы `fusion5W314_forum_posts`
--
ALTER TABLE `fusion5W314_forum_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `post_datestamp` (`post_datestamp`);

--
-- Индексы таблицы `fusion5W314_forum_post_mood`
--
ALTER TABLE `fusion5W314_forum_post_mood`
  ADD PRIMARY KEY (`mood_id`);

--
-- Индексы таблицы `fusion5W314_forum_post_notify`
--
ALTER TABLE `fusion5W314_forum_post_notify`
  ADD KEY `notify_datestamp` (`notify_datestamp`);

--
-- Индексы таблицы `fusion5W314_forum_ranks`
--
ALTER TABLE `fusion5W314_forum_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Индексы таблицы `fusion5W314_forum_threads`
--
ALTER TABLE `fusion5W314_forum_threads`
  ADD PRIMARY KEY (`thread_id`),
  ADD KEY `thread_postcount` (`thread_postcount`),
  ADD KEY `thread_lastpost` (`thread_lastpost`),
  ADD KEY `thread_views` (`thread_views`);

--
-- Индексы таблицы `fusion5W314_forum_thread_notify`
--
ALTER TABLE `fusion5W314_forum_thread_notify`
  ADD KEY `notify_datestamp` (`notify_datestamp`);

--
-- Индексы таблицы `fusion5W314_forum_thread_tags`
--
ALTER TABLE `fusion5W314_forum_thread_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Индексы таблицы `fusion5W314_forum_user_reputation`
--
ALTER TABLE `fusion5W314_forum_user_reputation`
  ADD PRIMARY KEY (`rep_id`),
  ADD KEY `post_id` (`post_id`,`user_id`,`voter_id`);

--
-- Индексы таблицы `fusion5W314_forum_votes`
--
ALTER TABLE `fusion5W314_forum_votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- Индексы таблицы `fusion5W314_infusions`
--
ALTER TABLE `fusion5W314_infusions`
  ADD PRIMARY KEY (`inf_id`);

--
-- Индексы таблицы `fusion5W314_messages`
--
ALTER TABLE `fusion5W314_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `message_datestamp` (`message_datestamp`);

--
-- Индексы таблицы `fusion5W314_messages_options`
--
ALTER TABLE `fusion5W314_messages_options`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `fusion5W314_mlt_tables`
--
ALTER TABLE `fusion5W314_mlt_tables`
  ADD PRIMARY KEY (`mlt_rights`);

--
-- Индексы таблицы `fusion5W314_news`
--
ALTER TABLE `fusion5W314_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_datestamp` (`news_datestamp`),
  ADD KEY `news_reads` (`news_reads`);

--
-- Индексы таблицы `fusion5W314_news_cats`
--
ALTER TABLE `fusion5W314_news_cats`
  ADD PRIMARY KEY (`news_cat_id`);

--
-- Индексы таблицы `fusion5W314_news_gallery`
--
ALTER TABLE `fusion5W314_news_gallery`
  ADD PRIMARY KEY (`news_image_id`);

--
-- Индексы таблицы `fusion5W314_new_users`
--
ALTER TABLE `fusion5W314_new_users`
  ADD KEY `user_datestamp` (`user_datestamp`);

--
-- Индексы таблицы `fusion5W314_panels`
--
ALTER TABLE `fusion5W314_panels`
  ADD PRIMARY KEY (`panel_id`),
  ADD KEY `panel_order` (`panel_order`);

--
-- Индексы таблицы `fusion5W314_permalinks_alias`
--
ALTER TABLE `fusion5W314_permalinks_alias`
  ADD PRIMARY KEY (`alias_id`);

--
-- Индексы таблицы `fusion5W314_permalinks_method`
--
ALTER TABLE `fusion5W314_permalinks_method`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Индексы таблицы `fusion5W314_permalinks_rewrites`
--
ALTER TABLE `fusion5W314_permalinks_rewrites`
  ADD PRIMARY KEY (`rewrite_id`);

--
-- Индексы таблицы `fusion5W314_photos`
--
ALTER TABLE `fusion5W314_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `photo_order` (`photo_order`),
  ADD KEY `photo_datestamp` (`photo_datestamp`);

--
-- Индексы таблицы `fusion5W314_photo_albums`
--
ALTER TABLE `fusion5W314_photo_albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_order` (`album_order`),
  ADD KEY `album_datestamp` (`album_datestamp`);

--
-- Индексы таблицы `fusion5W314_polls`
--
ALTER TABLE `fusion5W314_polls`
  ADD PRIMARY KEY (`poll_id`);

--
-- Индексы таблицы `fusion5W314_poll_votes`
--
ALTER TABLE `fusion5W314_poll_votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- Индексы таблицы `fusion5W314_ratings`
--
ALTER TABLE `fusion5W314_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `rating_datestamp` (`rating_datestamp`);

--
-- Индексы таблицы `fusion5W314_settings`
--
ALTER TABLE `fusion5W314_settings`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusion5W314_settings_inf`
--
ALTER TABLE `fusion5W314_settings_inf`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusion5W314_settings_theme`
--
ALTER TABLE `fusion5W314_settings_theme`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusion5W314_shoutbox`
--
ALTER TABLE `fusion5W314_shoutbox`
  ADD PRIMARY KEY (`shout_id`),
  ADD KEY `shout_datestamp` (`shout_datestamp`);

--
-- Индексы таблицы `fusion5W314_site_links`
--
ALTER TABLE `fusion5W314_site_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Индексы таблицы `fusion5W314_smileys`
--
ALTER TABLE `fusion5W314_smileys`
  ADD PRIMARY KEY (`smiley_id`);

--
-- Индексы таблицы `fusion5W314_submissions`
--
ALTER TABLE `fusion5W314_submissions`
  ADD PRIMARY KEY (`submit_id`),
  ADD KEY `submit_datestamp` (`submit_datestamp`);

--
-- Индексы таблицы `fusion5W314_suspends`
--
ALTER TABLE `fusion5W314_suspends`
  ADD PRIMARY KEY (`suspend_id`);

--
-- Индексы таблицы `fusion5W314_theme`
--
ALTER TABLE `fusion5W314_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `fusion5W314_users`
--
ALTER TABLE `fusion5W314_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_lastvisit` (`user_lastvisit`);

--
-- Индексы таблицы `fusion5W314_user_fields`
--
ALTER TABLE `fusion5W314_user_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `field_order` (`field_order`);

--
-- Индексы таблицы `fusion5W314_user_field_cats`
--
ALTER TABLE `fusion5W314_user_field_cats`
  ADD PRIMARY KEY (`field_cat_id`),
  ADD KEY `field_cat_order` (`field_cat_order`);

--
-- Индексы таблицы `fusion5W314_user_groups`
--
ALTER TABLE `fusion5W314_user_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Индексы таблицы `fusion5W314_user_log`
--
ALTER TABLE `fusion5W314_user_log`
  ADD PRIMARY KEY (`userlog_id`),
  ADD KEY `userlog_field` (`userlog_field`);

--
-- Индексы таблицы `fusion5W314_weblinks`
--
ALTER TABLE `fusion5W314_weblinks`
  ADD PRIMARY KEY (`weblink_id`),
  ADD KEY `weblink_datestamp` (`weblink_datestamp`),
  ADD KEY `weblink_count` (`weblink_count`);

--
-- Индексы таблицы `fusion5W314_weblink_cats`
--
ALTER TABLE `fusion5W314_weblink_cats`
  ADD PRIMARY KEY (`weblink_cat_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fusion5W314_admin`
--
ALTER TABLE `fusion5W314_admin`
  MODIFY `admin_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_admin_resetlog`
--
ALTER TABLE `fusion5W314_admin_resetlog`
  MODIFY `reset_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_articles`
--
ALTER TABLE `fusion5W314_articles`
  MODIFY `article_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_article_cats`
--
ALTER TABLE `fusion5W314_article_cats`
  MODIFY `article_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_bbcodes`
--
ALTER TABLE `fusion5W314_bbcodes`
  MODIFY `bbcode_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_blacklist`
--
ALTER TABLE `fusion5W314_blacklist`
  MODIFY `blacklist_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_blog`
--
ALTER TABLE `fusion5W314_blog`
  MODIFY `blog_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_blog_cats`
--
ALTER TABLE `fusion5W314_blog_cats`
  MODIFY `blog_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_comments`
--
ALTER TABLE `fusion5W314_comments`
  MODIFY `comment_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_custom_pages`
--
ALTER TABLE `fusion5W314_custom_pages`
  MODIFY `page_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_custom_pages_content`
--
ALTER TABLE `fusion5W314_custom_pages_content`
  MODIFY `page_content_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_custom_pages_grid`
--
ALTER TABLE `fusion5W314_custom_pages_grid`
  MODIFY `page_grid_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_downloads`
--
ALTER TABLE `fusion5W314_downloads`
  MODIFY `download_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_download_cats`
--
ALTER TABLE `fusion5W314_download_cats`
  MODIFY `download_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_email_templates`
--
ALTER TABLE `fusion5W314_email_templates`
  MODIFY `template_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_errors`
--
ALTER TABLE `fusion5W314_errors`
  MODIFY `error_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_faqs`
--
ALTER TABLE `fusion5W314_faqs`
  MODIFY `faq_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_faq_cats`
--
ALTER TABLE `fusion5W314_faq_cats`
  MODIFY `faq_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forums`
--
ALTER TABLE `fusion5W314_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_attachments`
--
ALTER TABLE `fusion5W314_forum_attachments`
  MODIFY `attach_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_posts`
--
ALTER TABLE `fusion5W314_forum_posts`
  MODIFY `post_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_post_mood`
--
ALTER TABLE `fusion5W314_forum_post_mood`
  MODIFY `mood_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_ranks`
--
ALTER TABLE `fusion5W314_forum_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_threads`
--
ALTER TABLE `fusion5W314_forum_threads`
  MODIFY `thread_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_thread_tags`
--
ALTER TABLE `fusion5W314_forum_thread_tags`
  MODIFY `tag_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_user_reputation`
--
ALTER TABLE `fusion5W314_forum_user_reputation`
  MODIFY `rep_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_forum_votes`
--
ALTER TABLE `fusion5W314_forum_votes`
  MODIFY `vote_id` mediumint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_infusions`
--
ALTER TABLE `fusion5W314_infusions`
  MODIFY `inf_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_messages`
--
ALTER TABLE `fusion5W314_messages`
  MODIFY `message_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_news`
--
ALTER TABLE `fusion5W314_news`
  MODIFY `news_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_news_cats`
--
ALTER TABLE `fusion5W314_news_cats`
  MODIFY `news_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_news_gallery`
--
ALTER TABLE `fusion5W314_news_gallery`
  MODIFY `news_image_id` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_panels`
--
ALTER TABLE `fusion5W314_panels`
  MODIFY `panel_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_permalinks_alias`
--
ALTER TABLE `fusion5W314_permalinks_alias`
  MODIFY `alias_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_permalinks_method`
--
ALTER TABLE `fusion5W314_permalinks_method`
  MODIFY `pattern_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_permalinks_rewrites`
--
ALTER TABLE `fusion5W314_permalinks_rewrites`
  MODIFY `rewrite_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_photos`
--
ALTER TABLE `fusion5W314_photos`
  MODIFY `photo_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_photo_albums`
--
ALTER TABLE `fusion5W314_photo_albums`
  MODIFY `album_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_polls`
--
ALTER TABLE `fusion5W314_polls`
  MODIFY `poll_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_poll_votes`
--
ALTER TABLE `fusion5W314_poll_votes`
  MODIFY `vote_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_ratings`
--
ALTER TABLE `fusion5W314_ratings`
  MODIFY `rating_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_shoutbox`
--
ALTER TABLE `fusion5W314_shoutbox`
  MODIFY `shout_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_site_links`
--
ALTER TABLE `fusion5W314_site_links`
  MODIFY `link_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_smileys`
--
ALTER TABLE `fusion5W314_smileys`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_submissions`
--
ALTER TABLE `fusion5W314_submissions`
  MODIFY `submit_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_suspends`
--
ALTER TABLE `fusion5W314_suspends`
  MODIFY `suspend_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_theme`
--
ALTER TABLE `fusion5W314_theme`
  MODIFY `theme_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_users`
--
ALTER TABLE `fusion5W314_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_user_fields`
--
ALTER TABLE `fusion5W314_user_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_user_field_cats`
--
ALTER TABLE `fusion5W314_user_field_cats`
  MODIFY `field_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_user_groups`
--
ALTER TABLE `fusion5W314_user_groups`
  MODIFY `group_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_user_log`
--
ALTER TABLE `fusion5W314_user_log`
  MODIFY `userlog_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_weblinks`
--
ALTER TABLE `fusion5W314_weblinks`
  MODIFY `weblink_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion5W314_weblink_cats`
--
ALTER TABLE `fusion5W314_weblink_cats`
  MODIFY `weblink_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
