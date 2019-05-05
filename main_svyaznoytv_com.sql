-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 05 2019 г., 10:39
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
-- База данных: `main.svyaznoytv.com`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_admin`
--

CREATE TABLE `fusion49284_admin` (
  `admin_id` mediumint(8) UNSIGNED NOT NULL,
  `admin_rights` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `admin_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'reserved',
  `admin_page` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_admin`
--

INSERT INTO `fusion49284_admin` (`admin_id`, `admin_rights`, `admin_image`, `admin_title`, `admin_link`, `admin_page`) VALUES
(1, 'AD', 'administrator.png', 'Администраторы', 'administrators.php', 2),
(2, 'APWR', 'adminpass.png', 'Сброс админпароля', 'admin_reset.php', 2),
(3, 'SB', 'banner.png', 'Баннеры', 'banners.php', 3),
(4, 'BB', 'bbcodes.png', 'Коды BB', 'bbcodes.php', 3),
(5, 'B', 'blacklist.png', 'Чёрный список', 'blacklist.php', 2),
(6, 'C', '', 'Комментарии', 'reserved', 2),
(7, 'CP', 'c-pages.png', 'Страницы', 'custom_pages.php', 1),
(8, 'DB', 'db_backup.png', 'Резервная копия БД', 'db_backup.php', 3),
(9, 'ERRO', 'errors.png', 'Журнал ошибок', 'errors.php', 3),
(10, 'IM', 'images.png', 'Изображения', 'images.php', 1),
(11, 'I', 'infusions.png', 'Плагины', 'infusions.php', 3),
(12, 'IP', '', 'Панели плагинов', 'reserved', 3),
(13, 'M', 'members.png', 'Участники', 'members.php', 2),
(14, 'MI', 'migration.png', 'Инструмент миграции', 'migrate.php', 2),
(15, 'P', 'panels.png', 'Панели', 'panels.php', 3),
(16, 'PL', 'permalink.png', 'Постоянные ссылки', 'permalink.php', 3),
(17, 'PI', 'phpinfo.png', 'Информация PHP', 'phpinfo.php', 3),
(18, 'SL', 'sitelinks.png', 'Навигация сайта', 'site_links.php', 3),
(19, 'SM', 'smileys.png', 'Смайлики', 'smileys.php', 3),
(20, 'U', 'upgrade.png', 'Обновление', 'upgrade.php', 3),
(21, 'TS', 'theme.png', 'Темы', 'theme.php', 3),
(22, 'UG', 'user_groups.png', 'Группы пользователей', 'user_groups.php', 2),
(23, 'S1', 'settings.png', 'Основные параметры', 'settings_main.php', 4),
(24, 'S2', 'time.png', 'Время и дата', 'settings_time.php', 4),
(25, 'S3', 'theme_settings.png', 'Настройки темы', 'settings_theme.php', 4),
(26, 'S4', 'registration.png', 'Регистрация', 'settings_registration.php', 4),
(27, 'S6', 'misc.png', 'Прочие параметры', 'settings_misc.php', 4),
(28, 'S7', 'pm.png', 'Личные сообщения', 'settings_messages.php', 4),
(29, 'S9', 'user_settings.png', 'Управление пользователями', 'settings_users.php', 4),
(30, 'S12', 'security.png', 'Безопасность', 'settings_security.php', 4),
(31, 'UF', 'user_fields.png', 'Поля профиля', 'user_fields.php', 2),
(32, 'UL', 'user_log.png', 'Журнал пользователей', 'user_log.php', 2),
(33, 'ROB', 'robots.png', 'robots.txt', 'robots.php', 3),
(34, 'MAIL', 'email.png', 'Шаблоны почтовых сообщений', 'email.php', 3),
(35, 'LANG', 'language.png', 'Параметры языка', 'settings_languages.php', 4),
(36, 'A', '../infusions/articles/articles.svg', 'Статьи', '../infusions/articles/articles_admin.php', 1),
(37, 'BLOG', '../infusions/blog/blog.svg', 'Блог', '../infusions/blog/blog_admin.php', 1),
(38, 'D', '../infusions/downloads/download.svg', 'Загрузки', '../infusions/downloads/downloads_admin.php', 1),
(39, 'FQ', '../infusions/faq/faq.svg', 'ЧаВо', '../infusions/faq/faq_admin.php', 1),
(40, 'F', '../infusions/forum/forums.svg', 'Форумы', '../infusions/forum/admin/forums.php', 1),
(41, 'PH', '../infusions/gallery/gallery.svg', 'Галерея', '../infusions/gallery/gallery_admin.php', 1),
(42, 'PO', '../infusions/member_poll_panel/polls.png', 'Опросы', '../infusions/member_poll_panel/poll_admin.php', 1),
(43, 'N', '../infusions/news/news.svg', 'Новости', '../infusions/news/news_admin.php', 1),
(44, 'S', '../infusions/shoutbox_panel/shouts.png', 'Управление мини-чатом', '../infusions/shoutbox_panel/shoutbox_admin.php', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_admin_resetlog`
--

CREATE TABLE `fusion49284_admin_resetlog` (
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
-- Структура таблицы `fusion49284_articles`
--

CREATE TABLE `fusion49284_articles` (
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
  `article_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_article_cats`
--

CREATE TABLE `fusion49284_article_cats` (
  `article_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `article_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `article_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `article_cat_description` text COLLATE utf8_unicode_ci NOT NULL,
  `article_cat_visibility` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `article_cat_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `article_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_bbcodes`
--

CREATE TABLE `fusion49284_bbcodes` (
  `bbcode_id` mediumint(8) UNSIGNED NOT NULL,
  `bbcode_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bbcode_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_bbcodes`
--

INSERT INTO `fusion49284_bbcodes` (`bbcode_id`, `bbcode_name`, `bbcode_order`) VALUES
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
(12, 'flash', 12),
(13, 'justify', 13),
(14, 'geshi', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_blacklist`
--

CREATE TABLE `fusion49284_blacklist` (
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
-- Структура таблицы `fusion49284_blog`
--

CREATE TABLE `fusion49284_blog` (
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
  `blog_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_blog`
--

INSERT INTO `fusion49284_blog` (`blog_id`, `blog_subject`, `blog_image`, `blog_image_t1`, `blog_image_t2`, `blog_ialign`, `blog_cat`, `blog_blog`, `blog_extended`, `blog_keywords`, `blog_breaks`, `blog_name`, `blog_datestamp`, `blog_start`, `blog_end`, `blog_visibility`, `blog_reads`, `blog_draft`, `blog_sticky`, `blog_allow_comments`, `blog_allow_ratings`, `blog_language`) VALUES
(1, 'форма заявки на ремонт', 'sam_mon.jpg', 'sam_mon_t1.jpg', 'sam_mon.jpg', 'pull-left', '', 'текст заявки в формате .txt', 'проверка формы заявки', 'заявка,контакты,обратная связь', 'n', 1, 1551235266, 0, 0, 0, 7, 0, 0, 1, 1, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_blog_cats`
--

CREATE TABLE `fusion49284_blog_cats` (
  `blog_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `blog_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `blog_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_cat_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blog_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_blog_cats`
--

INSERT INTO `fusion49284_blog_cats` (`blog_cat_id`, `blog_cat_parent`, `blog_cat_name`, `blog_cat_image`, `blog_cat_language`) VALUES
(1, 0, 'Ошибки', 'bugs.svg', 'Russian'),
(2, 0, 'Загрузки', 'downloads.svg', 'Russian'),
(3, 0, 'Игры', 'games.svg', 'Russian'),
(4, 0, 'Графика', 'graphics.svg', 'Russian'),
(5, 0, 'Железо', 'hardware.svg', 'Russian'),
(6, 0, 'Журнал', 'journal.svg', 'Russian'),
(7, 0, 'Участники', 'members.svg', 'Russian'),
(8, 0, 'Моды', 'mods.svg', 'Russian'),
(9, 0, 'Сеть', 'network.svg', 'Russian'),
(10, 0, 'PHP-Fusion', 'php-fusion.svg', 'Russian'),
(11, 0, 'Безопасность', 'security.svg', 'Russian'),
(12, 0, 'Программы', 'software.svg', 'Russian'),
(13, 0, 'Темы', 'themes.svg', 'Russian'),
(14, 0, 'Windows', 'windows.svg', 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_captcha`
--

CREATE TABLE `fusion49284_captcha` (
  `captcha_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `captcha_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `captcha_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `captcha_encode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `captcha_string` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_comments`
--

CREATE TABLE `fusion49284_comments` (
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
-- Структура таблицы `fusion49284_custom_pages`
--

CREATE TABLE `fusion49284_custom_pages` (
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
  `page_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian',
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
-- Дамп данных таблицы `fusion49284_custom_pages`
--

INSERT INTO `fusion49284_custom_pages` (`page_id`, `page_cat`, `page_link_cat`, `page_title`, `page_access`, `page_content`, `page_keywords`, `page_status`, `page_user`, `page_datestamp`, `page_language`, `page_grid_id`, `page_content_id`, `page_left_panel`, `page_right_panel`, `page_header_panel`, `page_footer_panel`, `page_top_panel`, `page_bottom_panel`) VALUES
(1, 0, 0, '', 0, '', '', 1, 1, 1552059084, 'Russian', 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_custom_pages_content`
--

CREATE TABLE `fusion49284_custom_pages_content` (
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
-- Дамп данных таблицы `fusion49284_custom_pages_content`
--

INSERT INTO `fusion49284_custom_pages_content` (`page_id`, `page_grid_id`, `page_content_id`, `page_content_type`, `page_content`, `page_options`, `page_content_order`, `page_widget`) VALUES
(1, 1, 1, 'Content', '', '', 1, ''),
(1, 2, 2, '', 'YToxOntpOjA7YToxMDp7czoxMjoic2xpZGVyX3RpdGxlIjtOO3M6MTg6InNsaWRlcl9kZXNjcmlwdGlvbiI7czoxMjE6IiZsdDtkaXYgY2xhc3M9JiMwMzk7bG9nbyYjMDM5OyZndDsmbHQ7aW1nIHNyYz0mIzAzOTtpbWFnZXMvcGhwLWZ1c2lvbi1pY29uLnBuZyYjMDM5OyBhbHQ9JiMwMzk7TG9nbyYjMDM5OyZndDsmbHQ7L2RpdiZndDsiO3M6MTE6InNsaWRlcl9saW5rIjtzOjA6IiI7czoxMjoic2xpZGVyX29yZGVyIjtpOjE7czoyMToic2xpZGVyX2NhcHRpb25fb2Zmc2V0IjtzOjM6IjEyMCI7czoyMDoic2xpZGVyX2NhcHRpb25fYWxpZ24iO3M6OToidGV4dC1sZWZ0IjtzOjE3OiJzbGlkZXJfdGl0bGVfc2l6ZSI7aTo1MDtzOjE2OiJzbGlkZXJfZGVzY19zaXplIjtpOjM1O3M6MTU6InNsaWRlcl9idG5fc2l6ZSI7czowOiIiO3M6MTY6InNsaWRlcl9pbWFnZV9zcmMiO3M6MjA6ImRlZmF1bHQtY2Fyb3VzZWwuanBnIjt9fQ==', 'YTo2OntzOjk6InNsaWRlcl9pZCI7czoxMzoiaG9tZV9jYXJvdXNlbCI7czoxMToic2xpZGVyX3BhdGgiO3M6ODoiY2Fyb3VzZWwiO3M6MTM6InNsaWRlcl9oZWlnaHQiO2k6NzAwO3M6MTc6InNsaWRlcl9uYXZpZ2F0aW9uIjtpOjA7czoxNjoic2xpZGVyX2luZGljYXRvciI7aTowO3M6MTU6InNsaWRlcl9pbnRlcnZhbCI7aTowO30=', 1, 'slider'),
(1, 3, 3, '', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7TjtzOjE3OiJibG9ja19kZXNjcmlwdGlvbiI7TjtzOjExOiJibG9ja19hbGlnbiI7czo5OiJ0ZXh0LWxlZnQiO3M6MTE6ImJsb2NrX2NsYXNzIjtzOjA6IiI7czoxMjoiYmxvY2tfbWFyZ2luIjtzOjc6IjE1MHB4IDAiO3M6MTM6ImJsb2NrX3BhZGRpbmciO3M6MDoiIjt9', '', 1, 'block'),
(1, 4, 4, '', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7TjtzOjE3OiJibG9ja19kZXNjcmlwdGlvbiI7TjtzOjExOiJibG9ja19hbGlnbiI7czoxMToidGV4dC1jZW50ZXIiO3M6MTE6ImJsb2NrX2NsYXNzIjtzOjA6IiI7czoxMjoiYmxvY2tfbWFyZ2luIjtzOjY6IjcwcHggMCI7czoxMzoiYmxvY2tfcGFkZGluZyI7czowOiIiO30=', '', 1, 'block'),
(1, 5, 5, '', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7TjtzOjE3OiJibG9ja19kZXNjcmlwdGlvbiI7czowOiIiO3M6MTE6ImJsb2NrX2FsaWduIjtzOjA6IiI7czoxMToiYmxvY2tfY2xhc3MiO3M6Nzoic3VwcG9ydCI7czoxMjoiYmxvY2tfbWFyZ2luIjtzOjg6Ijk1cHggMCAwIjtzOjEzOiJibG9ja19wYWRkaW5nIjtzOjQ6IjMwcHgiO30=', '', 1, 'block'),
(1, 6, 6, '', 'YTo2OntzOjExOiJibG9ja190aXRsZSI7TjtzOjE3OiJibG9ja19kZXNjcmlwdGlvbiI7TjtzOjExOiJibG9ja19hbGlnbiI7czoxMToidGV4dC1jZW50ZXIiO3M6MTE6ImJsb2NrX2NsYXNzIjtzOjA6IiI7czoxMjoiYmxvY2tfbWFyZ2luIjtzOjY6IjMwcHggMCI7czoxMzoiYmxvY2tfcGFkZGluZyI7czo0OiI2MHB4Ijt9', '', 1, 'block');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_custom_pages_grid`
--

CREATE TABLE `fusion49284_custom_pages_grid` (
  `page_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `page_grid_id` mediumint(9) UNSIGNED NOT NULL,
  `page_grid_container` tinyint(1) NOT NULL DEFAULT '0',
  `page_grid_column_count` tinyint(1) NOT NULL DEFAULT '0',
  `page_grid_html_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `page_grid_class` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page_grid_order` tinyint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_custom_pages_grid`
--

INSERT INTO `fusion49284_custom_pages_grid` (`page_id`, `page_grid_id`, `page_grid_container`, `page_grid_column_count`, `page_grid_html_id`, `page_grid_class`, `page_grid_order`) VALUES
(1, 1, 1, 1, 'content', '', 7),
(1, 2, 0, 1, 'carousel_wrapper', '', 1),
(1, 3, 0, 1, 'showcase', 'container', 3),
(1, 4, 1, 1, 'home_feature', '', 4),
(1, 5, 1, 1, 'support', '', 5),
(1, 6, 0, 1, 'home_parallax', '', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_downloads`
--

CREATE TABLE `fusion49284_downloads` (
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

--
-- Дамп данных таблицы `fusion49284_downloads`
--

INSERT INTO `fusion49284_downloads` (`download_id`, `download_user`, `download_homepage`, `download_title`, `download_description_short`, `download_description`, `download_keywords`, `download_image`, `download_image_thumb`, `download_url`, `download_file`, `download_cat`, `download_license`, `download_copyright`, `download_os`, `download_version`, `download_filesize`, `download_datestamp`, `download_visibility`, `download_count`, `download_allow_comments`, `download_allow_ratings`) VALUES
(1, 1, '', 'OpenCart Mods', 'файлы, связанные с установкой магазина на Opencart', 'mod Exchangt for Opencart', '', 'ipad.jpg', 'ipad_thumb.jpg', '', 'ocmodnet_exchange1c_oc_23ocmod.zip', 1, '', '', '', '', '', 1551375189, 0, 6, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_download_cats`
--

CREATE TABLE `fusion49284_download_cats` (
  `download_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `download_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `download_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_cat_description` text COLLATE utf8_unicode_ci NOT NULL,
  `download_cat_sorting` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'download_title ASC',
  `download_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_download_cats`
--

INSERT INTO `fusion49284_download_cats` (`download_cat_id`, `download_cat_parent`, `download_cat_name`, `download_cat_description`, `download_cat_sorting`, `download_cat_language`) VALUES
(1, 0, 'OpenCart', 'файлы связанные с магазином', 'download_id ASC', 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_email_templates`
--

CREATE TABLE `fusion49284_email_templates` (
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
-- Дамп данных таблицы `fusion49284_email_templates`
--

INSERT INTO `fusion49284_email_templates` (`template_id`, `template_key`, `template_format`, `template_active`, `template_name`, `template_subject`, `template_content`, `template_sender_name`, `template_sender_email`, `template_language`) VALUES
(1, 'PM', 'html', 0, 'Уведомление о новом личном сообщении', 'Вы получили новое личное сообщение от пользователя [USER] на сайте [SITENAME]', 'Приветствую, [RECEIVER],\r\nВы получили новое личное сообщение с темой [SUBJECT] от пользователя [USER] на сайте [SITENAME]. Вы можете прочитать его по ссылке [SITEURL]messages.php\r\n\r\nСообщение: [MESSAGE]\r\n\r\nВы также можете отключить уведомления на почту через панель опций личных собощений, если не хотите получать такие уведомления в дальнейшем.\r\n\r\nС наилучшими пожеланиями,\r\n[SENDER].', '', '', 'Russian'),
(2, 'POST', 'html', 0, 'Уведомление о сообщениях на форуме', 'Уведомление об ответе в теме - [SUBJECT]', 'Приветствую, [RECEIVER],\r\n\r\nВ теме форума \'[SUBJECT]\', которую вы отслеживаете на сайте [SITENAME], появился новый ответ. Для того, чтобы ответить, пройдите по ссылке:\r\n\r\n[THREAD_URL]\r\n\r\nЕсли Вы больше не хотите отслеживать эту тему, пройдите по ссылке \'Прекратить следить за темой\', которая размещена вверху темы. С наилучшими пожеланиями,\r\n[SENDER].', '', '', 'Russian'),
(3, 'CONTACT', 'html', 0, 'Обратная связь', '[SUBJECT]', '[MESSAGE]', '', '', 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_email_verify`
--

CREATE TABLE `fusion49284_email_verify` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_errors`
--

CREATE TABLE `fusion49284_errors` (
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

--
-- Дамп данных таблицы `fusion49284_errors`
--

INSERT INTO `fusion49284_errors` (`error_id`, `error_level`, `error_message`, `error_file`, `error_line`, `error_page`, `error_user_level`, `error_user_ip`, `error_user_ip_type`, `error_status`, `error_timestamp`) VALUES
(22, 1024, 'Query Error: SELECT d.*, dc.*,\r\n				tu.user_id, tu.user_name, tu.user_status, tu.user_avatar , tu.user_level, tu.user_joined,\r\n				IF(SUM(tr.rating_vote)>0, SUM(tr.rating_vote), 0) AS sum_rating,\r\n				COUNT(tr.rating_item_id) AS count_votes,\r\n				MAX(d.download_datestamp) as last_updated\r\n				FROM fusion49284_downloads d\r\n				INNER JOIN fusion49284_download_cats dc ON d.download_cat=dc.download_cat_id\r\n				LEFT JOIN fusion49284_users tu ON d.download_user=tu.user_id\r\n				LEFT JOIN fusion49284_ratings tr ON tr.rating_item_id = d.download_id AND tr.rating_type=\'D\'\r\n				 WHERE download_cat_language=\'Russian\' AND  download_visibility = 0\r\n				AND download_cat = \'1\'\r\n				GROUP BY d.download_id\r\n				ORDER BY count_comment DESC\r\n				LIMIT 0,15<br/>Stack Trace: #0 /var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Database/Driver/PDOMySQL.inc(63): PDO->prepare(\'SELECT d.*, dc....\')\n#1 /var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Database/AbstractDatabaseDriver.inc(303): PHPFusion\\Database\\Driver\\PDOMySQL->_query(\'SELECT d.*, dc....\', Array)\n#2 /var/www/html/main.svyaznoytv.com/includes/db_handlers/all_functions_include.php(112): PHPFusion\\Database\\AbstractDatabaseDriver->query(\'SELECT d.*, dc....\', Array)\n#3 /var/www/html/main.svyaznoytv.com/infusions/downloads/downloads.php(249): dbquery(\'SELECT d.*, dc....\')\n#4 {main}<br/>Error Nature: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'count_comment\' in \'order clause\'', '/var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Database/Driver/PDOMySQL.inc', 71, '/infusions/downloads/downloads.php?cat_id=1&amp;type=comments', 0, '66.249.66.90', 4, 0, 1551858544),
(20, 8, 'Undefined offset: 1', '/var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Locale.inc', 113, '/infusions/gallery/gallery.php', 0, '66.249.69.164', 4, 0, 1551746080),
(23, 1024, 'Query Error: SELECT d.*, dc.*,\r\n				tu.user_id, tu.user_name, tu.user_status, tu.user_avatar , tu.user_level, tu.user_joined,\r\n				IF(SUM(tr.rating_vote)>0, SUM(tr.rating_vote), 0) AS sum_rating,\r\n				COUNT(tr.rating_item_id) AS count_votes,\r\n				max(d.download_datestamp) as last_updated\r\n				FROM fusion49284_downloads d\r\n				INNER JOIN fusion49284_download_cats dc ON d.download_cat=dc.download_cat_id\r\n				LEFT JOIN fusion49284_users tu ON d.download_user=tu.user_id\r\n				LEFT JOIN fusion49284_ratings tr ON tr.rating_item_id = d.download_id AND tr.rating_type=\'D\'\r\n				WHERE dc.download_cat_language = \'Russian\' AND download_visibility = 0\r\n				\r\n				GROUP BY d.download_id\r\n				ORDER BY count_comment DESC\r\n				LIMIT 0,15<br/>Stack Trace: #0 /var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Database/Driver/PDOMySQL.inc(63): PDO->prepare(\'SELECT d.*, dc....\')\n#1 /var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Database/AbstractDatabaseDriver.inc(303): PHPFusion\\Database\\Driver\\PDOMySQL->_query(\'SELECT d.*, dc....\', Array)\n#2 /var/www/html/main.svyaznoytv.com/includes/db_handlers/all_functions_include.php(112): PHPFusion\\Database\\AbstractDatabaseDriver->query(\'SELECT d.*, dc....\', Array)\n#3 /var/www/html/main.svyaznoytv.com/infusions/downloads/downloads.php(283): dbquery(\'SELECT d.*, dc....\')\n#4 {main}<br/>Error Nature: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'count_comment\' in \'order clause\'', '/var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Database/Driver/PDOMySQL.inc', 71, '/infusions/downloads/downloads.php?type=comments', 0, '66.249.66.88', 4, 0, 1551979702),
(24, 8, 'Undefined index: homeSetup_0200', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themepack/nebula/mainframe.php', 58, '/home.php', -103, '178.212.195.36', 4, 0, 1552059071),
(25, 8, 'Undefined index: homeSetup_0201', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themepack/nebula/mainframe.php', 59, '/home.php', -103, '178.212.195.36', 4, 0, 1552059071),
(26, 8, 'Undefined index: homeSetup_0202', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themepack/nebula/mainframe.php', 60, '/home.php', -103, '178.212.195.36', 4, 0, 1552059071),
(27, 8, 'Undefined index: homeSetup_0100', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 36, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(28, 8, 'Undefined index: homeSetup_0100', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 39, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(29, 8, 'Undefined index: homeSetup_0102', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 142, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(30, 8, 'Undefined index: homeSetup_0103', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 145, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(31, 8, 'Undefined index: homeSetup_0101', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 149, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(32, 8, 'Undefined index: homeSetup_0104', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 172, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(33, 8, 'Undefined index: homeSetup_0107', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 184, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(34, 8, 'Undefined index: homeSetup_0112', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 187, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(35, 8, 'Undefined index: homeSetup_0113', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 188, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(36, 8, 'Undefined index: homeSetup_0107', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 205, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(37, 8, 'Undefined index: homeSetup_0114', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 208, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(38, 8, 'Undefined index: homeSetup_0115', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 209, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(39, 8, 'Undefined index: homeSetup_0117', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 222, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(40, 8, 'Undefined index: homeSetup_0118', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 223, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(41, 8, 'Undefined index: homeSetup_0107', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 228, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(42, 8, 'Undefined index: homeSetup_0116', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 231, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(43, 8, 'Undefined index: homeSetup_0107', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 249, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(44, 8, 'Undefined index: homeSetup_0119', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 252, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(45, 8, 'Undefined index: homeSetup_0120', '/var/www/html/main.svyaznoytv.com/themes/FusionTheme/themefactory/lib/installer/home.inc', 253, '/home.php', -103, '178.212.195.36', 4, 0, 1552059084),
(46, 8, 'Undefined offset: 1', '/var/www/html/main.svyaznoytv.com/includes/classes/PHPFusion/Locale.inc', 113, '/infusions/gallery/gallery.php?photo_id=1A=0', 0, '185.212.170.62', 4, 0, 1556842422);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_faqs`
--

CREATE TABLE `fusion49284_faqs` (
  `faq_id` mediumint(8) UNSIGNED NOT NULL,
  `faq_cat_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `faq_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_answer` text COLLATE utf8_unicode_ci NOT NULL,
  `faq_breaks` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_name` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `faq_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `faq_visibility` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `faq_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `faq_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_faq_cats`
--

CREATE TABLE `fusion49284_faq_cats` (
  `faq_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `faq_cat_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_cat_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faq_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_flood_control`
--

CREATE TABLE `fusion49284_flood_control` (
  `flood_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `flood_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `flood_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forums`
--

CREATE TABLE `fusion49284_forums` (
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
  `forum_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian',
  `forum_meta` text COLLATE utf8_unicode_ci NOT NULL,
  `forum_alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_forums`
--

INSERT INTO `fusion49284_forums` (`forum_id`, `forum_cat`, `forum_branch`, `forum_name`, `forum_type`, `forum_answer_threshold`, `forum_lock`, `forum_order`, `forum_description`, `forum_rules`, `forum_mods`, `forum_access`, `forum_post`, `forum_reply`, `forum_allow_poll`, `forum_poll`, `forum_vote`, `forum_image`, `forum_post_ratings`, `forum_users`, `forum_allow_attach`, `forum_attach`, `forum_attach_download`, `forum_quick_edit`, `forum_lastpostid`, `forum_lastpost`, `forum_postcount`, `forum_threadcount`, `forum_lastuser`, `forum_merge`, `forum_language`, `forum_meta`, `forum_alias`) VALUES
(1, 0, 1, 'ремонт', 2, 0, 1, 1, 'ремонт бытовой техники', '', '-102', 0, -101, -101, 0, -101, -101, 'dzen_t1.jpg', -101, 1, 1, -101, -101, 1, 0, 0, 0, 0, 0, 1, 'Russian', '', 'тест'),
(2, 0, 2, 'ремонт телевизоров', 2, 0, 1, 2, 'мастерская', '', '-102', 0, -101, -101, 1, -101, -101, 'diagnose1.jpg', -101, 1, 1, -101, -101, 1, 1, 1551335071, 1, 1, 1, 1, 'Russian', '', 'ремонт-телевизоров');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_attachments`
--

CREATE TABLE `fusion49284_forum_attachments` (
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
-- Структура таблицы `fusion49284_forum_polls`
--

CREATE TABLE `fusion49284_forum_polls` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_poll_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `forum_poll_start` int(10) UNSIGNED DEFAULT NULL,
  `forum_poll_length` int(10) UNSIGNED NOT NULL,
  `forum_poll_votes` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_poll_options`
--

CREATE TABLE `fusion49284_forum_poll_options` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_poll_option_id` smallint(5) UNSIGNED NOT NULL,
  `forum_poll_option_text` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `forum_poll_option_votes` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_poll_voters`
--

CREATE TABLE `fusion49284_forum_poll_voters` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_vote_user_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_vote_user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `forum_vote_user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_posts`
--

CREATE TABLE `fusion49284_forum_posts` (
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

--
-- Дамп данных таблицы `fusion49284_forum_posts`
--

INSERT INTO `fusion49284_forum_posts` (`forum_id`, `thread_id`, `post_id`, `post_cat`, `post_message`, `post_showsig`, `post_smileys`, `post_author`, `post_datestamp`, `post_ip`, `post_ip_type`, `post_edituser`, `post_edittime`, `post_editreason`, `post_hidden`, `post_locked`, `post_answer`) VALUES
(2, 1, 1, 0, 'просмотр сообщений форума', 0, 0, 1, 1551335071, '178.212.195.36', 4, 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_post_mood`
--

CREATE TABLE `fusion49284_forum_post_mood` (
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
-- Структура таблицы `fusion49284_forum_post_notify`
--

CREATE TABLE `fusion49284_forum_post_notify` (
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_mood_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_sender` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_ranks`
--

CREATE TABLE `fusion49284_forum_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rank_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rank_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_apply` tinyint(4) DEFAULT '-101',
  `rank_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_forum_ranks`
--

INSERT INTO `fusion49284_forum_ranks` (`rank_id`, `rank_title`, `rank_image`, `rank_posts`, `rank_type`, `rank_apply`, `rank_language`) VALUES
(1, 'Суперадмин', 'rank_super_admin.png', 0, 1, -103, 'Russian'),
(2, 'Администратор', 'rank_admin.png', 0, 1, -102, 'Russian'),
(3, 'Модератор', 'rank_mod.png', 0, 1, -104, 'Russian'),
(4, 'Новичок', 'rank0.png', 0, 0, -101, 'Russian'),
(5, 'Младший участник', 'rank1.png', 10, 0, -101, 'Russian'),
(6, 'Участник', 'rank2.png', 50, 0, -101, 'Russian'),
(7, 'Опытный участник', 'rank3.png', 200, 0, -101, 'Russian'),
(8, 'Ветеран', 'rank4.png', 500, 0, -101, 'Russian'),
(9, 'Fusioneer', 'rank5.png', 1000, 0, -101, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_threads`
--

CREATE TABLE `fusion49284_forum_threads` (
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

--
-- Дамп данных таблицы `fusion49284_forum_threads`
--

INSERT INTO `fusion49284_forum_threads` (`forum_id`, `thread_id`, `thread_tags`, `thread_tags_old`, `thread_tags_change`, `thread_subject`, `thread_author`, `thread_views`, `thread_lastpost`, `thread_lastpostid`, `thread_lastuser`, `thread_postcount`, `thread_poll`, `thread_sticky`, `thread_answered`, `thread_bounty`, `thread_bounty_description`, `thread_bounty_start`, `thread_bounty_user`, `thread_locked`, `thread_hidden`) VALUES
(2, 1, '0', '', 0, 'ремонт подсветки', 1, 35, 1551335071, 1, 1, 1, 0, 1, 0, 0, '', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_thread_notify`
--

CREATE TABLE `fusion49284_forum_thread_notify` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_thread_tags`
--

CREATE TABLE `fusion49284_forum_thread_tags` (
  `tag_id` mediumint(8) UNSIGNED NOT NULL,
  `tag_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_color` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_status` smallint(1) NOT NULL DEFAULT '0',
  `tag_language` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_forum_thread_tags`
--

INSERT INTO `fusion49284_forum_thread_tags` (`tag_id`, `tag_title`, `tag_description`, `tag_color`, `tag_status`, `tag_language`) VALUES
(1, 'Информация о сайте', 'Обсуждения, касающиеся управления этим сайтом', '#2e8c65', 1, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_forum_user_reputation`
--

CREATE TABLE `fusion49284_forum_user_reputation` (
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
-- Структура таблицы `fusion49284_forum_votes`
--

CREATE TABLE `fusion49284_forum_votes` (
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
-- Структура таблицы `fusion49284_infusions`
--

CREATE TABLE `fusion49284_infusions` (
  `inf_id` mediumint(8) UNSIGNED NOT NULL,
  `inf_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inf_folder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inf_version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_infusions`
--

INSERT INTO `fusion49284_infusions` (`inf_id`, `inf_title`, `inf_folder`, `inf_version`) VALUES
(1, 'Статьи', 'articles', '1.2'),
(2, 'Блог', 'blog', '1.1'),
(3, 'Загрузки', 'downloads', '1.1'),
(4, 'ЧаВо', 'faq', '1.2'),
(5, 'Форум', 'forum', '1.0.6'),
(6, 'Фотографии', 'gallery', '1.1'),
(7, 'Опросы', 'member_poll_panel', '1.1'),
(8, 'Новости', 'news', '1.12'),
(9, 'Мини-чат', 'shoutbox_panel', '1.1');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_language_sessions`
--

CREATE TABLE `fusion49284_language_sessions` (
  `user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `user_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian',
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_messages`
--

CREATE TABLE `fusion49284_messages` (
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
-- Структура таблицы `fusion49284_messages_options`
--

CREATE TABLE `fusion49284_messages_options` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pm_email_notify` smallint(1) NOT NULL DEFAULT '0',
  `pm_save_sent` smallint(100) NOT NULL DEFAULT '0',
  `pm_inbox` smallint(5) NOT NULL DEFAULT '0',
  `pm_savebox` smallint(5) NOT NULL DEFAULT '0',
  `pm_sentbox` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_messages_options`
--

INSERT INTO `fusion49284_messages_options` (`user_id`, `pm_email_notify`, `pm_save_sent`, `pm_inbox`, `pm_savebox`, `pm_sentbox`) VALUES
(0, 0, 1, 20, 20, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_mlt_tables`
--

CREATE TABLE `fusion49284_mlt_tables` (
  `mlt_rights` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `mlt_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mlt_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_mlt_tables`
--

INSERT INTO `fusion49284_mlt_tables` (`mlt_rights`, `mlt_title`, `mlt_status`) VALUES
('SL', 'Навигация сайта', '1'),
('CP', 'Страницы', '1'),
('ET', 'Шаблоны почтовых сообщений', '1'),
('PN', 'Панели', '1'),
('AR', 'Статьи', '1'),
('BL', 'Блог', '1'),
('DL', 'Загрузки', '1'),
('FQ', 'ЧаВо', '1'),
('FO', 'Форум', '1'),
('FR', 'Ранги форума', '1'),
('PG', 'Галерея', '1'),
('PO', 'Опросы', '1'),
('NS', 'Новости', '1'),
('SB', 'Мини-чат', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_news`
--

CREATE TABLE `fusion49284_news` (
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
  `news_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_news_cats`
--

CREATE TABLE `fusion49284_news_cats` (
  `news_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `news_cat_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `news_cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_cat_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_cat_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `news_cat_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_cat_sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_cat_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_news_cats`
--

INSERT INTO `fusion49284_news_cats` (`news_cat_id`, `news_cat_parent`, `news_cat_name`, `news_cat_image`, `news_cat_visibility`, `news_cat_draft`, `news_cat_sticky`, `news_cat_language`) VALUES
(1, 0, 'Ошибки', 'bugs.svg', 0, 0, 0, 'Russian'),
(2, 0, 'Загрузки', 'downloads.svg', 0, 0, 0, 'Russian'),
(3, 0, 'Игры', 'games.svg', 0, 0, 0, 'Russian'),
(4, 0, 'Графика', 'graphics.svg', 0, 0, 0, 'Russian'),
(5, 0, 'Железо', 'hardware.svg', 0, 0, 0, 'Russian'),
(6, 0, 'Журнал', 'journal.svg', 0, 0, 0, 'Russian'),
(7, 0, 'Участники', 'members.svg', 0, 0, 0, 'Russian'),
(8, 0, 'Моды', 'mods.svg', 0, 0, 0, 'Russian'),
(9, 0, 'Сеть', 'network.svg', 0, 0, 0, 'Russian'),
(10, 0, 'Новости', 'news.svg', 0, 0, 0, 'Russian'),
(11, 0, 'PHP-Fusion', 'php-fusion.svg', 0, 0, 0, 'Russian'),
(12, 0, 'Безопасность', 'security.svg', 0, 0, 0, 'Russian'),
(13, 0, 'Программы', 'software.svg', 0, 0, 0, 'Russian'),
(14, 0, 'Темы', 'themes.svg', 0, 0, 0, 'Russian'),
(15, 0, 'Windows', 'windows.svg', 0, 0, 0, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_news_gallery`
--

CREATE TABLE `fusion49284_news_gallery` (
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
-- Структура таблицы `fusion49284_new_users`
--

CREATE TABLE `fusion49284_new_users` (
  `user_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_info` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_new_users`
--

INSERT INTO `fusion49284_new_users` (`user_code`, `user_name`, `user_email`, `user_datestamp`, `user_info`) VALUES
('bea895413cfb9ece639233c130407b91f3ff93b9', 'onabinot', 'imawarys@mfsa.info', 4294967295, 'YToyMjp7czo3OiJ1c2VyX2lkIjtpOjA7czoxNToidXNlcl9oaWRlX2VtYWlsIjtpOjA7czoxMToidXNlcl9hdmF0YXIiO3M6MDoiIjtzOjEwOiJ1c2VyX3Bvc3RzIjtpOjA7czoxMjoidXNlcl90aHJlYWRzIjtpOjA7czoxMToidXNlcl9qb2luZWQiO2k6MTU1NDQzNDY4MDtzOjE0OiJ1c2VyX2xhc3R2aXNpdCI7aTowO3M6NzoidXNlcl9pcCI7czoxMzoiOTMuMTgwLjE3OC4xMyI7czoxMjoidXNlcl9pcF90eXBlIjtpOjQ7czoxMToidXNlcl9yaWdodHMiO3M6MDoiIjtzOjExOiJ1c2VyX2dyb3VwcyI7czowOiIiO3M6MTA6InVzZXJfbGV2ZWwiO2k6LTEwMTtzOjExOiJ1c2VyX3N0YXR1cyI7aTowO3M6MTA6InVzZXJfdGhlbWUiO3M6NzoiRGVmYXVsdCI7czoxMzoidXNlcl9sYW5ndWFnZSI7czo3OiJSdXNzaWFuIjtzOjEzOiJ1c2VyX3RpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjE1OiJ1c2VyX3JlcHV0YXRpb24iO2k6MDtzOjk6InVzZXJfbmFtZSI7czo4OiJvbmFiaW5vdCI7czo5OiJ1c2VyX2FsZ28iO3M6Njoic2hhMjU2IjtzOjk6InVzZXJfc2FsdCI7czo0MDoiY2Y0ZjYxZTZmMTE1NWU3NDU3NWEyNDEyZGNmMTgwNDQyMjMwMGE4MiI7czoxMzoidXNlcl9wYXNzd29yZCI7czo2NDoiNzNhMjJhMmI3M2U1ODA1NWM5NThmMzc3NmUzZWQxOTRjZmI5ZTFmYjFjYjVhMDQyZTcxM2ZmOTk3OGJhZTNiMCI7czoxMDoidXNlcl9lbWFpbCI7czoxODoiaW1hd2FyeXNAbWZzYS5pbmZvIjt9'),
('1388423be6cf0efc95793479f1c8054e5cbd49b0', 'yxytat', 'ujuko@mfsa.info', 4294967295, 'YToyMjp7czo3OiJ1c2VyX2lkIjtpOjA7czoxNToidXNlcl9oaWRlX2VtYWlsIjtpOjA7czoxMToidXNlcl9hdmF0YXIiO3M6MDoiIjtzOjEwOiJ1c2VyX3Bvc3RzIjtpOjA7czoxMjoidXNlcl90aHJlYWRzIjtpOjA7czoxMToidXNlcl9qb2luZWQiO2k6MTU1NDQ2MDA4OTtzOjE0OiJ1c2VyX2xhc3R2aXNpdCI7aTowO3M6NzoidXNlcl9pcCI7czoxMzoiOTMuMTgwLjE3OC4xMyI7czoxMjoidXNlcl9pcF90eXBlIjtpOjQ7czoxMToidXNlcl9yaWdodHMiO3M6MDoiIjtzOjExOiJ1c2VyX2dyb3VwcyI7czowOiIiO3M6MTA6InVzZXJfbGV2ZWwiO2k6LTEwMTtzOjExOiJ1c2VyX3N0YXR1cyI7aTowO3M6MTA6InVzZXJfdGhlbWUiO3M6NzoiRGVmYXVsdCI7czoxMzoidXNlcl9sYW5ndWFnZSI7czo3OiJSdXNzaWFuIjtzOjEzOiJ1c2VyX3RpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjE1OiJ1c2VyX3JlcHV0YXRpb24iO2k6MDtzOjk6InVzZXJfbmFtZSI7czo2OiJ5eHl0YXQiO3M6OToidXNlcl9hbGdvIjtzOjY6InNoYTI1NiI7czo5OiJ1c2VyX3NhbHQiO3M6NDA6IjM3ZDhjMGQyNzI5NGI2NmQyZjcyNTEzNTA3MTY0N2MzYzU3NzQwNjEiO3M6MTM6InVzZXJfcGFzc3dvcmQiO3M6NjQ6ImMzMzk2OGYwY2FiZjBmNzQ5YmJmNzg3ZGZiOGRkNDA5Y2RlNzBkMmUxNTJlMzM4OTZkMjgxZTdjYmU0NTk2YTkiO3M6MTA6InVzZXJfZW1haWwiO3M6MTU6InVqdWtvQG1mc2EuaW5mbyI7fQ==');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_online`
--

CREATE TABLE `fusion49284_online` (
  `online_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `online_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `online_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `online_lastactive` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_online`
--

INSERT INTO `fusion49284_online` (`online_user`, `online_ip`, `online_ip_type`, `online_lastactive`) VALUES
('0', '66.249.79.100', 4, 1557041745);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_panels`
--

CREATE TABLE `fusion49284_panels` (
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
  `panel_languages` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_panels`
--

INSERT INTO `fusion49284_panels` (`panel_id`, `panel_name`, `panel_filename`, `panel_content`, `panel_side`, `panel_order`, `panel_type`, `panel_access`, `panel_display`, `panel_status`, `panel_url_list`, `panel_restriction`, `panel_languages`) VALUES
(1, 'Навигация', 'css_navigation_panel', '', 1, 1, 'file', 0, 1, 1, '', 3, 'Russian'),
(2, 'RSS', 'rss_feeds_panel', '', 1, 2, 'file', 0, 0, 1, 'home.php', 2, 'Russian'),
(3, 'Пользователи на сайте', 'online_users_panel', '', 1, 3, 'file', 0, 1, 1, '', 3, 'Russian'),
(4, 'Приветствие', 'welcome_message_panel', '', 2, 1, 'file', 0, 0, 1, 'home.php', 2, 'Russian'),
(5, 'Информация пользователя', 'user_info_panel', '', 4, 1, 'file', 0, 1, 1, '', 3, 'Russian'),
(6, 'Последние статьи', 'latest_articles_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'Russian'),
(7, 'Панель архива блога', 'blog_archive_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'Russian'),
(8, 'Последние файлы', 'latest_downloads_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'Russian'),
(9, 'Темы форума', 'forum_threads_panel', '', 1, 4, 'file', 0, 1, 1, '', 3, 'Russian'),
(10, 'Список тем форума', 'forum_threads_list_panel', '', 2, 1, 'file', 0, 1, 1, 'home.php', 2, 'Russian'),
(11, 'Опрос', 'member_poll_panel', '', 1, 5, 'file', 0, 1, 1, '', 3, 'Russian'),
(12, 'Мини-чат', 'shoutbox_panel', '', 4, 3, 'file', 0, 1, 1, '', 3, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_permalinks_alias`
--

CREATE TABLE `fusion49284_permalinks_alias` (
  `alias_id` mediumint(8) UNSIGNED NOT NULL,
  `alias_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias_php_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `alias_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_permalinks_method`
--

CREATE TABLE `fusion49284_permalinks_method` (
  `pattern_id` mediumint(8) UNSIGNED NOT NULL,
  `pattern_type` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `pattern_source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pattern_target` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pattern_cat` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_permalinks_rewrites`
--

CREATE TABLE `fusion49284_permalinks_rewrites` (
  `rewrite_id` mediumint(8) UNSIGNED NOT NULL,
  `rewrite_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_photos`
--

CREATE TABLE `fusion49284_photos` (
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

--
-- Дамп данных таблицы `fusion49284_photos`
--

INSERT INTO `fusion49284_photos` (`photo_id`, `album_id`, `photo_title`, `photo_description`, `photo_keywords`, `photo_filename`, `photo_thumb1`, `photo_thumb2`, `photo_datestamp`, `photo_user`, `photo_views`, `photo_order`, `photo_allow_comments`, `photo_allow_ratings`) VALUES
(1, 1, 'clock1.png', '', '', 'clock1.png', 'clock1_t1.png', 'clock1_t2.png', 1551136511, 1, 3, 1, 1, 1),
(2, 1, 'assia.jpg', '', '', 'assia.jpg', 'assia_t1.jpg', 'assia_t2.jpg', 1551136551, 1, 11, 2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_photo_albums`
--

CREATE TABLE `fusion49284_photo_albums` (
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
  `album_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_photo_albums`
--

INSERT INTO `fusion49284_photo_albums` (`album_id`, `album_title`, `album_description`, `album_keywords`, `album_image`, `album_thumb1`, `album_thumb2`, `album_user`, `album_access`, `album_order`, `album_datestamp`, `album_language`) VALUES
(1, 'Ремонт', 'ремонт бытовой техники', '', '', '', '', 1, 0, 1, 1551136420, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_polls`
--

CREATE TABLE `fusion49284_polls` (
  `poll_id` mediumint(8) UNSIGNED NOT NULL,
  `poll_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `poll_opt` text COLLATE utf8_unicode_ci NOT NULL,
  `poll_started` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_ended` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_visibility` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_poll_votes`
--

CREATE TABLE `fusion49284_poll_votes` (
  `vote_id` mediumint(8) UNSIGNED NOT NULL,
  `vote_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vote_user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `vote_opt` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `poll_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_ratings`
--

CREATE TABLE `fusion49284_ratings` (
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
-- Структура таблицы `fusion49284_settings`
--

CREATE TABLE `fusion49284_settings` (
  `settings_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_settings`
--

INSERT INTO `fusion49284_settings` (`settings_name`, `settings_value`) VALUES
('sitename', 'Сервисный центр Связной'),
('siteurl', 'http://main.svyaznoytv.com/'),
('site_protocol', 'http'),
('site_host', 'main.svyaznoytv.com'),
('site_port', ''),
('site_path', '/'),
('site_seo', '0'),
('sitebanner', 'images/logo1_svyaznoytv.png'),
('logoposition_xs', 'logo-xs-left'),
('logoposition_sm', 'logo-sm-left'),
('logoposition_md', 'logo-md-left'),
('logoposition_lg', 'logo-lg-left'),
('sitebanner1', '<h1 style=\"text-align: center; color: #ff0000;\"><img src=\"../images/logo1_svyaznoytv.png\" alt=\"logo1_svyaznoytv.png\" width=\"175\" height=\"42\" /></h1>'),
('sitebanner2', '<div style=\\\"text-align: center;\\\"><a title=\\\"trade.svyaznotv.com\\\" href=\\\"http://trade.svyaznotv.com\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">trade.svyaznotv.com</a></div>'),
('siteemail', 'kaizenroot@gmail.com'),
('siteusername', 'admin'),
('siteintro', '[u][b]Прием  заказов на ремонт бытовой техники[/b][/u]'),
('description', 'Сервисный центр Связной'),
('keywords', 'Ремонт'),
('footer', '<div style=\\\"text-align: center;\\\">Copyright © 2019</div>'),
('opening_page', 'viewpage.php?page_id=1'),
('locale', 'Russian'),
('bootstrap', '1'),
('entypo', '1'),
('fontawesome', '1'),
('theme', 'Bootstrap'),
('admin_theme', 'Material'),
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
('forumdate', '%d.%m.%Y %H:%M'),
('newsdate', '%B %d %Y'),
('subheaderdate', '%B %d %Y %H:%M:%S'),
('timeoffset', 'Europe/Moscow'),
('serveroffset', 'Europe/Moscow'),
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
('comments_enabled', '0'),
('ratings_enabled', '1'),
('hide_userprofiles', '0'),
('userthemes', '1'),
('flood_interval', '15'),
('counter', '7281'),
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
('cronjob_day', '1557025012'),
('cronjob_hour', '2019-05-05 10:35:45'),
('flood_autoban', '1'),
('visitorcounter_enabled', '1'),
('rendertime_enabled', '0'),
('maintenance_level', '-102'),
('deactivation_action', '0'),
('captcha', 'securimage3'),
('password_algorithm', 'sha256'),
('default_timezone', 'Europe/Moscow'),
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
('enabled_languages', 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_settings_inf`
--

CREATE TABLE `fusion49284_settings_inf` (
  `settings_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8_unicode_ci NOT NULL,
  `settings_inf` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_settings_inf`
--

INSERT INTO `fusion49284_settings_inf` (`settings_name`, `settings_value`, `settings_inf`) VALUES
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
('guest_shouts', '1', 'shoutbox_panel'),
('hidden_shouts', '0', 'shoutbox_panel');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_settings_theme`
--

CREATE TABLE `fusion49284_settings_theme` (
  `settings_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8_unicode_ci NOT NULL,
  `settings_theme` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_settings_theme`
--

INSERT INTO `fusion49284_settings_theme` (`settings_name`, `settings_value`, `settings_theme`) VALUES
('theme_pack', 'Nebula', 'FusionTheme'),
('FusionTheme', '1', 'FusionTheme'),
('home_installed', 'yes', 'FusionTheme');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_shoutbox`
--

CREATE TABLE `fusion49284_shoutbox` (
  `shout_id` mediumint(8) UNSIGNED NOT NULL,
  `shout_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shout_message` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shout_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shout_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shout_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `shout_hidden` tinyint(4) NOT NULL DEFAULT '0',
  `shout_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_shoutbox`
--

INSERT INTO `fusion49284_shoutbox` (`shout_id`, `shout_name`, `shout_message`, `shout_datestamp`, `shout_ip`, `shout_ip_type`, `shout_hidden`, `shout_language`) VALUES
(1, 'KerryKew', '[url=http://folshin.com/9g3ly][IMG]https://i84.fastpic.ru/big/2019/0113/36/ea7f925d280edd19db02c3dc17830d36.jpeg[/IMG][/url] \r\n \r\n \r\n[url=http://folshin.com/9g3ly][b]Write only if you are serious! Jes', 1554991828, '212.92.108.244', 4, 0, 'Russian'),
(2, 'Daonikewaype', 'Началась весенняя распродажа мужских и женских кроссовок NIKE! Скидки на все кроссовки до 30% - для просмотра всего ассортимента перейдите по ссылки - [url=https://nike-russia.com/muzhskie-krossovki/]', 1556725351, '31.184.238.211', 4, 0, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_site_links`
--

CREATE TABLE `fusion49284_site_links` (
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
  `link_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_site_links`
--

INSERT INTO `fusion49284_site_links` (`link_id`, `link_cat`, `link_name`, `link_url`, `link_icon`, `link_visibility`, `link_position`, `link_status`, `link_window`, `link_order`, `link_language`) VALUES
(1, 0, 'Главная', 'index.php', '', 0, 2, 1, 0, 1, 'Russian'),
(2, 0, 'Контакты', 'contact.php', '', 0, 3, 1, 0, 8, 'Russian'),
(3, 0, 'Поиск', 'search.php', '', 0, 1, 1, 0, 10, 'Russian'),
(4, 0, 'Присланное', 'submissions.php', '', -101, 1, 1, 0, 10, 'Russian'),
(5, 0, '---', '---', '', -101, 1, 1, 0, 11, 'Russian'),
(6, 0, 'Статьи', 'infusions/articles/articles.php', '', 0, 2, 1, 0, 2, 'Russian'),
(7, 0, 'Добавить статью', 'submit.php?stype=a', '', -101, 1, 1, 0, 14, 'Russian'),
(8, 0, 'Блог', 'infusions/blog/blog.php', '', 0, 2, 1, 0, 2, 'Russian'),
(9, 0, 'Добавить запись в блог', 'submit.php?stype=b', '', -101, 1, 1, 0, 14, 'Russian'),
(10, 0, 'Загрузки', 'infusions/downloads/downloads.php', '', 0, 2, 1, 0, 2, 'Russian'),
(11, 0, 'Добавить загрузку', 'submit.php?stype=d', '', -101, 1, 1, 0, 16, 'Russian'),
(12, 0, 'ЧаВо', 'infusions/faq/faq.php', '', 0, 2, 0, 0, 2, 'Russian'),
(13, 0, 'Добавить ЧаВо', 'submit.php?stype=q', '', -101, 1, 1, 0, 14, 'Russian'),
(14, 0, 'Форум', 'infusions/forum/index.php', '', 0, 2, 1, 0, 5, 'Russian'),
(15, 14, 'Начать тему', 'infusions/forum/newthread.php', '', 0, 2, 1, 0, 1, 'Russian'),
(16, 14, 'Последние обсуждения', 'infusions/forum/index.php?section=latest', '', 0, 2, 1, 0, 2, 'Russian'),
(17, 14, 'Обсуждения с моим участием', 'infusions/forum/index.php?section=participated', '', 0, 2, 1, 0, 3, 'Russian'),
(18, 14, 'Отслеживаемые темы', 'infusions/forum/index.php?section=tracked', '', 0, 2, 1, 0, 4, 'Russian'),
(19, 14, 'Темы без ответов', 'infusions/forum/index.php?section=unanswered', '', 0, 2, 1, 0, 5, 'Russian'),
(20, 14, 'Нерешённые вопросы', 'infusions/forum/index.php?section=unsolved', '', 0, 2, 1, 0, 6, 'Russian'),
(21, 0, 'Галерея', 'infusions/gallery/gallery.php', '', 0, 2, 1, 0, 2, 'Russian'),
(22, 0, 'Добавить фото', 'submit.php?stype=p', '', -101, 1, 1, 0, 15, 'Russian'),
(23, 0, 'Опросы', 'infusions/member_poll_panel/polls_archive.php', '', 0, 1, 1, 0, 2, 'Russian'),
(24, 0, 'Новости', 'infusions/news/news.php', '', 0, 2, 1, 0, 2, 'Russian'),
(25, 0, 'Добавить новость', 'submit.php?stype=n', '', -101, 1, 1, 0, 13, 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_smileys`
--

CREATE TABLE `fusion49284_smileys` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `smiley_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smiley_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `smiley_text` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_smileys`
--

INSERT INTO `fusion49284_smileys` (`smiley_id`, `smiley_code`, `smiley_image`, `smiley_text`) VALUES
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
-- Структура таблицы `fusion49284_submissions`
--

CREATE TABLE `fusion49284_submissions` (
  `submit_id` mediumint(8) UNSIGNED NOT NULL,
  `submit_type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `submit_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `submit_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `submit_criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_suspends`
--

CREATE TABLE `fusion49284_suspends` (
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
-- Структура таблицы `fusion49284_theme`
--

CREATE TABLE `fusion49284_theme` (
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
-- Структура таблицы `fusion49284_users`
--

CREATE TABLE `fusion49284_users` (
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
  `user_language` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Russian'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_users`
--

INSERT INTO `fusion49284_users` (`user_id`, `user_name`, `user_algo`, `user_salt`, `user_password`, `user_admin_algo`, `user_admin_salt`, `user_admin_password`, `user_email`, `user_hide_email`, `user_timezone`, `user_avatar`, `user_posts`, `user_threads`, `user_joined`, `user_lastvisit`, `user_ip`, `user_ip_type`, `user_rights`, `user_groups`, `user_level`, `user_status`, `user_reputation`, `user_inbox`, `user_outbox`, `user_archive`, `user_pm_email_notify`, `user_pm_save_sent`, `user_actiontime`, `user_theme`, `user_location`, `user_birthdate`, `user_skype`, `user_aim`, `user_icq`, `user_yahoo`, `user_web`, `user_sig`, `user_language`) VALUES
(1, 'admin', 'sha256', 'da6cc71b5966d2164394ea0cf8fe72b431712a91', '5a5a5a5c511b73173a35f53058d5101e7dc67afd9e18ae707b88b6858159ce8d', 'sha256', 'd1f90491915acac21324a3dec732d4a9b3bf8ea9', '317c88795123e31f1f7af990fd2b5c07b2f18351098b2d59512b9ed5723e8f53', 'kaizenroot@gmail.com', 1, 'Europe/Moscow', '', 1, '', 1551134955, 1553183370, '178.212.195.36', 4, 'A.AD.APWR.B.BB.BLOG.C.CP.DB.ERRO.FQ.F.FR.IM.I.IP.M.MI.MAIL.P.PH.PI.PL.PO.ROB.SL.S1.S2.S3.S4.S5.S6.S7.S8.S9.S10.S11.S12.S13.SB.SM.SU.UF.UFC.UG.UL.U.TS.LANG.A.BLOG.D.FQ.F.PH.PO.N.S.W', '', -103, 0, 0, 0, 0, 0, 0, 0, 0, 'Default', '', '1900-01-01', '', '', '', '', '', '', 'Russian');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_user_fields`
--

CREATE TABLE `fusion49284_user_fields` (
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
-- Дамп данных таблицы `fusion49284_user_fields`
--

INSERT INTO `fusion49284_user_fields` (`field_id`, `field_title`, `field_name`, `field_cat`, `field_type`, `field_default`, `field_options`, `field_error`, `field_required`, `field_log`, `field_registration`, `field_order`, `field_config`) VALUES
(1, 'День рождения', 'user_birthdate', 3, 'file', '1900-01-01', '', '', 0, 0, 0, 2, ''),
(2, 'Местонахождение пользователя', 'user_location', 3, 'file', '', '', '', 0, 0, 0, 2, ''),
(3, 'Skype', 'user_skype', 2, 'file', '', '', '', 0, 0, 0, 1, ''),
(4, 'AIM ID', 'user_aim', 2, 'file', '', '', '', 0, 0, 0, 2, ''),
(5, 'ICQ#', 'user_icq', 2, 'file', '', '', '', 0, 0, 0, 3, ''),
(6, 'Yahoo', 'user_yahoo', 2, 'file', '', '', '', 0, 0, 0, 4, ''),
(7, 'Сайт', 'user_web', 3, 'file', '', '', '', 0, 0, 0, 3, ''),
(8, 'Часовой пояс', 'user_timezone', 4, 'file', '', '', '', 0, 0, 0, 1, ''),
(9, 'Тема', 'user_theme', 4, 'file', '', '', '', 0, 0, 0, 2, ''),
(10, 'Подпись', 'user_sig', 4, 'file', '', '', '', 0, 0, 0, 3, '');

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_user_field_cats`
--

CREATE TABLE `fusion49284_user_field_cats` (
  `field_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `field_cat_name` text COLLATE utf8_unicode_ci NOT NULL,
  `field_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_cat_db` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_cat_index` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `field_cat_class` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_cat_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fusion49284_user_field_cats`
--

INSERT INTO `fusion49284_user_field_cats` (`field_cat_id`, `field_cat_name`, `field_parent`, `field_cat_db`, `field_cat_index`, `field_cat_class`, `field_cat_order`) VALUES
(1, 'Профиль', 0, 'users', 'user_id', 'fa fa-user', 1),
(2, 'Контакная информация', 1, '', '', 'fa fa-user', 1),
(3, 'Прочая информация', 1, '', '', 'fa fa-user', 2),
(4, 'Параметры', 1, '', '', 'fa fa-user', 3),
(5, 'Статистика', 1, '', '', 'fa fa-user', 4),
(6, 'Приватность', 1, '', '', 'fa fa-user', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_user_groups`
--

CREATE TABLE `fusion49284_user_groups` (
  `group_id` tinyint(3) UNSIGNED NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group_description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `group_icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fusion49284_user_log`
--

CREATE TABLE `fusion49284_user_log` (
  `userlog_id` mediumint(8) UNSIGNED NOT NULL,
  `userlog_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userlog_field` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userlog_value_new` text COLLATE utf8_unicode_ci NOT NULL,
  `userlog_value_old` text COLLATE utf8_unicode_ci NOT NULL,
  `userlog_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fusion49284_admin`
--
ALTER TABLE `fusion49284_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Индексы таблицы `fusion49284_admin_resetlog`
--
ALTER TABLE `fusion49284_admin_resetlog`
  ADD PRIMARY KEY (`reset_id`);

--
-- Индексы таблицы `fusion49284_articles`
--
ALTER TABLE `fusion49284_articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `article_cat` (`article_cat`),
  ADD KEY `article_datestamp` (`article_datestamp`),
  ADD KEY `article_reads` (`article_reads`);

--
-- Индексы таблицы `fusion49284_article_cats`
--
ALTER TABLE `fusion49284_article_cats`
  ADD PRIMARY KEY (`article_cat_id`);

--
-- Индексы таблицы `fusion49284_bbcodes`
--
ALTER TABLE `fusion49284_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `bbcode_order` (`bbcode_order`);

--
-- Индексы таблицы `fusion49284_blacklist`
--
ALTER TABLE `fusion49284_blacklist`
  ADD PRIMARY KEY (`blacklist_id`),
  ADD KEY `blacklist_ip_type` (`blacklist_ip_type`);

--
-- Индексы таблицы `fusion49284_blog`
--
ALTER TABLE `fusion49284_blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blog_datestamp` (`blog_datestamp`),
  ADD KEY `blog_reads` (`blog_reads`);

--
-- Индексы таблицы `fusion49284_blog_cats`
--
ALTER TABLE `fusion49284_blog_cats`
  ADD PRIMARY KEY (`blog_cat_id`);

--
-- Индексы таблицы `fusion49284_captcha`
--
ALTER TABLE `fusion49284_captcha`
  ADD KEY `captcha_datestamp` (`captcha_datestamp`);

--
-- Индексы таблицы `fusion49284_comments`
--
ALTER TABLE `fusion49284_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_datestamp` (`comment_datestamp`);

--
-- Индексы таблицы `fusion49284_custom_pages`
--
ALTER TABLE `fusion49284_custom_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Индексы таблицы `fusion49284_custom_pages_content`
--
ALTER TABLE `fusion49284_custom_pages_content`
  ADD PRIMARY KEY (`page_content_id`),
  ADD KEY `page_grid_id` (`page_grid_id`);

--
-- Индексы таблицы `fusion49284_custom_pages_grid`
--
ALTER TABLE `fusion49284_custom_pages_grid`
  ADD PRIMARY KEY (`page_grid_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `fusion49284_downloads`
--
ALTER TABLE `fusion49284_downloads`
  ADD PRIMARY KEY (`download_id`),
  ADD KEY `download_datestamp` (`download_datestamp`);

--
-- Индексы таблицы `fusion49284_download_cats`
--
ALTER TABLE `fusion49284_download_cats`
  ADD PRIMARY KEY (`download_cat_id`);

--
-- Индексы таблицы `fusion49284_email_templates`
--
ALTER TABLE `fusion49284_email_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Индексы таблицы `fusion49284_email_verify`
--
ALTER TABLE `fusion49284_email_verify`
  ADD KEY `user_datestamp` (`user_datestamp`);

--
-- Индексы таблицы `fusion49284_errors`
--
ALTER TABLE `fusion49284_errors`
  ADD PRIMARY KEY (`error_id`);

--
-- Индексы таблицы `fusion49284_faqs`
--
ALTER TABLE `fusion49284_faqs`
  ADD PRIMARY KEY (`faq_id`),
  ADD KEY `faq_cat_id` (`faq_cat_id`),
  ADD KEY `faq_datestamp` (`faq_datestamp`);

--
-- Индексы таблицы `fusion49284_faq_cats`
--
ALTER TABLE `fusion49284_faq_cats`
  ADD PRIMARY KEY (`faq_cat_id`);

--
-- Индексы таблицы `fusion49284_flood_control`
--
ALTER TABLE `fusion49284_flood_control`
  ADD KEY `flood_timestamp` (`flood_timestamp`);

--
-- Индексы таблицы `fusion49284_forums`
--
ALTER TABLE `fusion49284_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `forum_order` (`forum_order`),
  ADD KEY `forum_lastpostid` (`forum_lastpostid`),
  ADD KEY `forum_postcount` (`forum_postcount`),
  ADD KEY `forum_threadcount` (`forum_threadcount`);

--
-- Индексы таблицы `fusion49284_forum_attachments`
--
ALTER TABLE `fusion49284_forum_attachments`
  ADD PRIMARY KEY (`attach_id`);

--
-- Индексы таблицы `fusion49284_forum_polls`
--
ALTER TABLE `fusion49284_forum_polls`
  ADD KEY `thread_id` (`thread_id`);

--
-- Индексы таблицы `fusion49284_forum_poll_options`
--
ALTER TABLE `fusion49284_forum_poll_options`
  ADD KEY `thread_id` (`thread_id`);

--
-- Индексы таблицы `fusion49284_forum_poll_voters`
--
ALTER TABLE `fusion49284_forum_poll_voters`
  ADD KEY `thread_id` (`thread_id`,`forum_vote_user_id`);

--
-- Индексы таблицы `fusion49284_forum_posts`
--
ALTER TABLE `fusion49284_forum_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `post_datestamp` (`post_datestamp`);

--
-- Индексы таблицы `fusion49284_forum_post_mood`
--
ALTER TABLE `fusion49284_forum_post_mood`
  ADD PRIMARY KEY (`mood_id`);

--
-- Индексы таблицы `fusion49284_forum_post_notify`
--
ALTER TABLE `fusion49284_forum_post_notify`
  ADD KEY `notify_datestamp` (`notify_datestamp`);

--
-- Индексы таблицы `fusion49284_forum_ranks`
--
ALTER TABLE `fusion49284_forum_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Индексы таблицы `fusion49284_forum_threads`
--
ALTER TABLE `fusion49284_forum_threads`
  ADD PRIMARY KEY (`thread_id`),
  ADD KEY `thread_postcount` (`thread_postcount`),
  ADD KEY `thread_lastpost` (`thread_lastpost`),
  ADD KEY `thread_views` (`thread_views`);

--
-- Индексы таблицы `fusion49284_forum_thread_notify`
--
ALTER TABLE `fusion49284_forum_thread_notify`
  ADD KEY `notify_datestamp` (`notify_datestamp`);

--
-- Индексы таблицы `fusion49284_forum_thread_tags`
--
ALTER TABLE `fusion49284_forum_thread_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Индексы таблицы `fusion49284_forum_user_reputation`
--
ALTER TABLE `fusion49284_forum_user_reputation`
  ADD PRIMARY KEY (`rep_id`),
  ADD KEY `post_id` (`post_id`,`user_id`,`voter_id`);

--
-- Индексы таблицы `fusion49284_forum_votes`
--
ALTER TABLE `fusion49284_forum_votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- Индексы таблицы `fusion49284_infusions`
--
ALTER TABLE `fusion49284_infusions`
  ADD PRIMARY KEY (`inf_id`);

--
-- Индексы таблицы `fusion49284_messages`
--
ALTER TABLE `fusion49284_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `message_datestamp` (`message_datestamp`);

--
-- Индексы таблицы `fusion49284_messages_options`
--
ALTER TABLE `fusion49284_messages_options`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `fusion49284_mlt_tables`
--
ALTER TABLE `fusion49284_mlt_tables`
  ADD PRIMARY KEY (`mlt_rights`);

--
-- Индексы таблицы `fusion49284_news`
--
ALTER TABLE `fusion49284_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_datestamp` (`news_datestamp`),
  ADD KEY `news_reads` (`news_reads`);

--
-- Индексы таблицы `fusion49284_news_cats`
--
ALTER TABLE `fusion49284_news_cats`
  ADD PRIMARY KEY (`news_cat_id`);

--
-- Индексы таблицы `fusion49284_news_gallery`
--
ALTER TABLE `fusion49284_news_gallery`
  ADD PRIMARY KEY (`news_image_id`);

--
-- Индексы таблицы `fusion49284_new_users`
--
ALTER TABLE `fusion49284_new_users`
  ADD KEY `user_datestamp` (`user_datestamp`);

--
-- Индексы таблицы `fusion49284_panels`
--
ALTER TABLE `fusion49284_panels`
  ADD PRIMARY KEY (`panel_id`),
  ADD KEY `panel_order` (`panel_order`);

--
-- Индексы таблицы `fusion49284_permalinks_alias`
--
ALTER TABLE `fusion49284_permalinks_alias`
  ADD PRIMARY KEY (`alias_id`);

--
-- Индексы таблицы `fusion49284_permalinks_method`
--
ALTER TABLE `fusion49284_permalinks_method`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Индексы таблицы `fusion49284_permalinks_rewrites`
--
ALTER TABLE `fusion49284_permalinks_rewrites`
  ADD PRIMARY KEY (`rewrite_id`);

--
-- Индексы таблицы `fusion49284_photos`
--
ALTER TABLE `fusion49284_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `photo_order` (`photo_order`),
  ADD KEY `photo_datestamp` (`photo_datestamp`);

--
-- Индексы таблицы `fusion49284_photo_albums`
--
ALTER TABLE `fusion49284_photo_albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_order` (`album_order`),
  ADD KEY `album_datestamp` (`album_datestamp`);

--
-- Индексы таблицы `fusion49284_polls`
--
ALTER TABLE `fusion49284_polls`
  ADD PRIMARY KEY (`poll_id`);

--
-- Индексы таблицы `fusion49284_poll_votes`
--
ALTER TABLE `fusion49284_poll_votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- Индексы таблицы `fusion49284_ratings`
--
ALTER TABLE `fusion49284_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `rating_datestamp` (`rating_datestamp`);

--
-- Индексы таблицы `fusion49284_settings`
--
ALTER TABLE `fusion49284_settings`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusion49284_settings_inf`
--
ALTER TABLE `fusion49284_settings_inf`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusion49284_settings_theme`
--
ALTER TABLE `fusion49284_settings_theme`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusion49284_shoutbox`
--
ALTER TABLE `fusion49284_shoutbox`
  ADD PRIMARY KEY (`shout_id`),
  ADD KEY `shout_datestamp` (`shout_datestamp`);

--
-- Индексы таблицы `fusion49284_site_links`
--
ALTER TABLE `fusion49284_site_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Индексы таблицы `fusion49284_smileys`
--
ALTER TABLE `fusion49284_smileys`
  ADD PRIMARY KEY (`smiley_id`);

--
-- Индексы таблицы `fusion49284_submissions`
--
ALTER TABLE `fusion49284_submissions`
  ADD PRIMARY KEY (`submit_id`),
  ADD KEY `submit_datestamp` (`submit_datestamp`);

--
-- Индексы таблицы `fusion49284_suspends`
--
ALTER TABLE `fusion49284_suspends`
  ADD PRIMARY KEY (`suspend_id`);

--
-- Индексы таблицы `fusion49284_theme`
--
ALTER TABLE `fusion49284_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `fusion49284_users`
--
ALTER TABLE `fusion49284_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_lastvisit` (`user_lastvisit`);

--
-- Индексы таблицы `fusion49284_user_fields`
--
ALTER TABLE `fusion49284_user_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `field_order` (`field_order`);

--
-- Индексы таблицы `fusion49284_user_field_cats`
--
ALTER TABLE `fusion49284_user_field_cats`
  ADD PRIMARY KEY (`field_cat_id`),
  ADD KEY `field_cat_order` (`field_cat_order`);

--
-- Индексы таблицы `fusion49284_user_groups`
--
ALTER TABLE `fusion49284_user_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Индексы таблицы `fusion49284_user_log`
--
ALTER TABLE `fusion49284_user_log`
  ADD PRIMARY KEY (`userlog_id`),
  ADD KEY `userlog_field` (`userlog_field`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fusion49284_admin`
--
ALTER TABLE `fusion49284_admin`
  MODIFY `admin_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `fusion49284_admin_resetlog`
--
ALTER TABLE `fusion49284_admin_resetlog`
  MODIFY `reset_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_articles`
--
ALTER TABLE `fusion49284_articles`
  MODIFY `article_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_article_cats`
--
ALTER TABLE `fusion49284_article_cats`
  MODIFY `article_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_bbcodes`
--
ALTER TABLE `fusion49284_bbcodes`
  MODIFY `bbcode_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `fusion49284_blacklist`
--
ALTER TABLE `fusion49284_blacklist`
  MODIFY `blacklist_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_blog`
--
ALTER TABLE `fusion49284_blog`
  MODIFY `blog_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_blog_cats`
--
ALTER TABLE `fusion49284_blog_cats`
  MODIFY `blog_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `fusion49284_comments`
--
ALTER TABLE `fusion49284_comments`
  MODIFY `comment_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_custom_pages`
--
ALTER TABLE `fusion49284_custom_pages`
  MODIFY `page_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_custom_pages_content`
--
ALTER TABLE `fusion49284_custom_pages_content`
  MODIFY `page_content_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fusion49284_custom_pages_grid`
--
ALTER TABLE `fusion49284_custom_pages_grid`
  MODIFY `page_grid_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fusion49284_downloads`
--
ALTER TABLE `fusion49284_downloads`
  MODIFY `download_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_download_cats`
--
ALTER TABLE `fusion49284_download_cats`
  MODIFY `download_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_email_templates`
--
ALTER TABLE `fusion49284_email_templates`
  MODIFY `template_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fusion49284_errors`
--
ALTER TABLE `fusion49284_errors`
  MODIFY `error_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `fusion49284_faqs`
--
ALTER TABLE `fusion49284_faqs`
  MODIFY `faq_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_faq_cats`
--
ALTER TABLE `fusion49284_faq_cats`
  MODIFY `faq_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forums`
--
ALTER TABLE `fusion49284_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_attachments`
--
ALTER TABLE `fusion49284_forum_attachments`
  MODIFY `attach_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_posts`
--
ALTER TABLE `fusion49284_forum_posts`
  MODIFY `post_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_post_mood`
--
ALTER TABLE `fusion49284_forum_post_mood`
  MODIFY `mood_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_ranks`
--
ALTER TABLE `fusion49284_forum_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_threads`
--
ALTER TABLE `fusion49284_forum_threads`
  MODIFY `thread_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_thread_tags`
--
ALTER TABLE `fusion49284_forum_thread_tags`
  MODIFY `tag_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_user_reputation`
--
ALTER TABLE `fusion49284_forum_user_reputation`
  MODIFY `rep_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_forum_votes`
--
ALTER TABLE `fusion49284_forum_votes`
  MODIFY `vote_id` mediumint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_infusions`
--
ALTER TABLE `fusion49284_infusions`
  MODIFY `inf_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `fusion49284_messages`
--
ALTER TABLE `fusion49284_messages`
  MODIFY `message_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_news`
--
ALTER TABLE `fusion49284_news`
  MODIFY `news_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_news_cats`
--
ALTER TABLE `fusion49284_news_cats`
  MODIFY `news_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `fusion49284_news_gallery`
--
ALTER TABLE `fusion49284_news_gallery`
  MODIFY `news_image_id` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_panels`
--
ALTER TABLE `fusion49284_panels`
  MODIFY `panel_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `fusion49284_permalinks_alias`
--
ALTER TABLE `fusion49284_permalinks_alias`
  MODIFY `alias_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_permalinks_method`
--
ALTER TABLE `fusion49284_permalinks_method`
  MODIFY `pattern_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_permalinks_rewrites`
--
ALTER TABLE `fusion49284_permalinks_rewrites`
  MODIFY `rewrite_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_photos`
--
ALTER TABLE `fusion49284_photos`
  MODIFY `photo_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusion49284_photo_albums`
--
ALTER TABLE `fusion49284_photo_albums`
  MODIFY `album_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_polls`
--
ALTER TABLE `fusion49284_polls`
  MODIFY `poll_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_poll_votes`
--
ALTER TABLE `fusion49284_poll_votes`
  MODIFY `vote_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_ratings`
--
ALTER TABLE `fusion49284_ratings`
  MODIFY `rating_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_shoutbox`
--
ALTER TABLE `fusion49284_shoutbox`
  MODIFY `shout_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusion49284_site_links`
--
ALTER TABLE `fusion49284_site_links`
  MODIFY `link_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `fusion49284_smileys`
--
ALTER TABLE `fusion49284_smileys`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `fusion49284_submissions`
--
ALTER TABLE `fusion49284_submissions`
  MODIFY `submit_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_suspends`
--
ALTER TABLE `fusion49284_suspends`
  MODIFY `suspend_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_theme`
--
ALTER TABLE `fusion49284_theme`
  MODIFY `theme_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_users`
--
ALTER TABLE `fusion49284_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusion49284_user_fields`
--
ALTER TABLE `fusion49284_user_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `fusion49284_user_field_cats`
--
ALTER TABLE `fusion49284_user_field_cats`
  MODIFY `field_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fusion49284_user_groups`
--
ALTER TABLE `fusion49284_user_groups`
  MODIFY `group_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusion49284_user_log`
--
ALTER TABLE `fusion49284_user_log`
  MODIFY `userlog_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
