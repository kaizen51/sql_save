-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 05 2019 г., 10:56
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
-- База данных: `svyaznoytv.com`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_admin`
--

CREATE TABLE `fusiont1baD_admin` (
  `admin_id` mediumint(8) UNSIGNED NOT NULL,
  `admin_rights` char(4) NOT NULL DEFAULT '',
  `admin_image` varchar(50) NOT NULL DEFAULT '',
  `admin_title` varchar(50) NOT NULL DEFAULT '',
  `admin_link` varchar(100) NOT NULL DEFAULT 'reserved',
  `admin_page` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_admin`
--

INSERT INTO `fusiont1baD_admin` (`admin_id`, `admin_rights`, `admin_image`, `admin_title`, `admin_link`, `admin_page`) VALUES
(1, 'AD', 'admins.gif', 'Администраторы', 'administrators.php', 2),
(2, 'APWR', 'admin_pass.gif', 'Сброс пароля администратора', 'admin_reset.php', 2),
(3, 'AC', 'article_cats.gif', 'Категории статей', 'article_cats.php', 1),
(4, 'A', 'articles.gif', 'Статьи', 'articles.php', 1),
(5, 'SB', 'banners.gif', 'Баннеры', 'banners.php', 3),
(6, 'BB', 'bbcodes.gif', 'BB-коды', 'bbcodes.php', 3),
(7, 'B', 'blacklist.gif', 'Черный список', 'blacklist.php', 2),
(8, 'C', '', 'Комментарии', 'reserved', 2),
(9, 'CP', 'c-pages.gif', 'Дополнительные страницы', 'custom_pages.php', 1),
(10, 'DB', 'db_backup.gif', 'Резервная копия БД', 'db_backup.php', 3),
(11, 'DC', 'dl_cats.gif', 'Категории файлов', 'download_cats.php', 1),
(12, 'D', 'dl.gif', 'Загрузка файлов', 'downloads.php', 1),
(13, 'ERRO', 'errors.gif', 'Журнал ошибок', 'errors.php', 3),
(14, 'FQ', 'faq.gif', 'FAQ', 'faq.php', 1),
(15, 'F', 'forums.gif', 'Форумы', 'forums.php', 1),
(16, 'IM', 'images.gif', 'Изображения', 'images.php', 1),
(17, 'I', 'infusions.gif', 'Плагины', 'infusions.php', 3),
(18, 'IP', '', 'Панель плагинов', 'reserved', 3),
(19, 'M', 'members.gif', 'Пользователи', 'members.php', 2),
(20, 'NC', 'news_cats.gif', 'Категории новостей', 'news_cats.php', 1),
(21, 'N', 'news.gif', 'Новости', 'news.php', 1),
(22, 'P', 'panels.gif', 'Панели', 'panels.php', 3),
(23, 'PH', 'photoalbums.gif', 'Фотоальбомы', 'photoalbums.php', 1),
(24, 'PI', 'phpinfo.gif', 'Информация PHP', 'phpinfo.php', 3),
(25, 'PO', 'polls.gif', 'Опросы', 'polls.php', 1),
(26, 'SL', 'site_links.gif', 'Навигация сайта', 'site_links.php', 3),
(27, 'SM', 'smileys.gif', 'Смайлы', 'smileys.php', 3),
(28, 'SU', 'submissions.gif', 'Подтверждения', 'submissions.php', 2),
(29, 'U', 'upgrade.gif', 'Обновление', 'upgrade.php', 3),
(30, 'UG', 'user_groups.gif', 'Пользовательские группы', 'user_groups.php', 2),
(31, 'WC', 'wl_cats.gif', 'Категории каталога ссылок', 'weblink_cats.php', 1),
(32, 'W', 'wl.gif', 'Каталог ссылок', 'weblinks.php', 1),
(33, 'S1', 'settings.gif', 'Главные настройки', 'settings_main.php', 4),
(34, 'S2', 'settings_time.gif', 'Настройки времени и даты', 'settings_time.php', 4),
(35, 'S3', 'settings_forum.gif', 'Настройки форума', 'settings_forum.php', 4),
(36, 'S4', 'registration.gif', 'Настройки регистрации', 'settings_registration.php', 4),
(37, 'S5', 'photoalbums.gif', 'Настройки фотогалереи', 'settings_photo.php', 4),
(38, 'S6', 'settings_misc.gif', 'Прочие настройки', 'settings_misc.php', 4),
(39, 'S7', 'settings_pm.gif', 'Настройки личных сообщений', 'settings_messages.php', 4),
(40, 'S8', 'settings_news.gif', 'Параметры новостей', 'settings_news.php', 4),
(41, 'S9', 'settings_users.gif', 'Настройки управления пользователями', 'settings_users.php', 4),
(42, 'S10', 'settings_ipp.gif', 'Пунктов на страницу', 'settings_ipp.php', 4),
(43, 'S11', 'settings_dl.gif', 'Настройки загрузок', 'settings_dl.php', 4),
(44, 'S12', 'security.gif', 'Безопасность', 'settings_security.php', 4),
(45, 'UF', 'user_fields.gif', 'Пользовательские поля', 'user_fields.php', 2),
(46, 'FR', 'forum_ranks.gif', 'Ранги для форума', 'forum_ranks.php', 2),
(47, 'UFC', 'user_fields_cats.gif', 'Категории пользовательских полей', 'user_field_cats.php', 2),
(48, 'UL', 'user_fields.gif', 'Журнал пользователя', 'user_log.php', 2),
(49, 'ROB', 'robots.gif', 'robots.txt', 'robots.php', 3),
(50, 'S', 'shout.gif', 'Администрирование мини-чат', '../infusions/shoutbox_panel/shoutbox_admin.php', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_admin_resetlog`
--

CREATE TABLE `fusiont1baD_admin_resetlog` (
  `reset_id` mediumint(8) UNSIGNED NOT NULL,
  `reset_admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `reset_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reset_sucess` text NOT NULL,
  `reset_failed` text NOT NULL,
  `reset_admins` varchar(8) NOT NULL DEFAULT '0',
  `reset_reason` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_articles`
--

CREATE TABLE `fusiont1baD_articles` (
  `article_id` mediumint(8) UNSIGNED NOT NULL,
  `article_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `article_subject` varchar(200) NOT NULL DEFAULT '',
  `article_snippet` text NOT NULL,
  `article_article` text NOT NULL,
  `article_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `article_breaks` char(1) NOT NULL DEFAULT '',
  `article_name` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `article_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `article_reads` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `article_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `article_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_articles`
--

INSERT INTO `fusiont1baD_articles` (`article_id`, `article_cat`, `article_subject`, `article_snippet`, `article_article`, `article_draft`, `article_breaks`, `article_name`, `article_datestamp`, `article_reads`, `article_allow_comments`, `article_allow_ratings`) VALUES
(1, 2, 'отчет о проделанной работе', '<p>отчет о проделанной работе</p>\r\n<p>установка серера svyaznoytv.com</p>', '<p>работа проводилась в трех категориях:</p>\r\n<p>1. Установка операционной системы Web хостинга</p>\r\n<p>2.Настройка Web хостинга</p>\r\n<p>3. Установка и базовая настройка сайтов, включая наполнение базовым контентом.</p>\r\n<p style=\\\"text-align: center;\\\"><strong>Установка операционной системы Web хостинга</strong></p>\r\n<p style=\\\"text-align: left;\\\">За основу была взята операционная система Centos 7, сборка</p>\r\n<p style=\\\"text-align: left;\\\">Название: kernel<br />Архитектура: x86_64<br />Версия: 3.10.0<br />Выпуск: 957.5.1.el7<br />Объем: 63 M<br />Источник: installed<br />Аннотация: The Linux kernel<br />Ссылка: http://www.kernel.org/<br />Лицензия: GPLv2<br />Описание: The kernel package contains the Linux kernel (vmlinuz), the core of any<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Linux operating system.&nbsp; The kernel handles the basic functions<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : of the operating system: memory allocation, process allocation, device<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : input and output, etc.</p>\r\n<p style=\\\"text-align: left;\\\">в дальнешем ядро было пересобрано под конфигурацию реально машины</p>\r\n<p style=\\\"text-align: left;\\\"><strong>Gigabyte GA-H110m-H, </strong>с учетом реальной конфигурации машины.</p>\r\n<p style=\\\"text-align: left;\\\">для стабильности работы сервера, в ядро системы был включены модули</p>\r\n<p style=\\\"text-align: left;\\\">1. зеркального копирования системы.</p>\r\n<p style=\\\"text-align: left;\\\">2. поддержка виртуальных систем в среде CHroot</p>\r\n<p style=\\\"text-align: left;\\\">3. коммутация резервных потоков.</p>\r\n<p style=\\\"text-align: center;\\\"><strong>Настройка Web хостинга</strong></p>\r\n<p style=\\\"text-align: left;\\\">1. Органиован (по согласованию с провайдером Sohonet) широкополосный 1 гигБит канал с выделенным IP адресом во внешней сети. Адрес сети: 178.212.195.36. Исключена внутренняя маршрутизация в контуре Sohonet.ua, не исключая биллинг провайдера.</p>\r\n<p style=\\\"text-align: left;\\\">2. Организован DNS маршрут между хостером Hosting.ua&nbsp; и локалльным сервером, с учетом формирования собственных доменных имен в разрешенных зонах, включая формирование Resolve Mail Sevice</p>\r\n<p style=\\\"text-align: left;\\\">3. Произведена установка, конфигурирование и тестирование необходимых серверных приложений:</p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;&nbsp;&nbsp; 3.1 <strong>Apache HTTP Server </strong></p>\r\n<p style=\\\"text-align: left;\\\">Server version: Apache/2.4.6 (CentOS)<br />Server built:&nbsp;&nbsp; Nov&nbsp; 5 2018 01:47:09</p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;&nbsp;&nbsp; 3.2 <strong>Bind 9 - DNS сервер</strong></p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;&nbsp;&nbsp; 3.3 <strong>PHP интерпретатор </strong></p>\r\n<p style=\\\"text-align: left;\\\">PHP 5.6.38 (cli) (built: Oct 24 2018 12:50:38) <br />Copyright (c) 1997-2016 The PHP Group<br />Zend Engine v2.6.0, Copyright (c) 1998-2016 Zend Technologies</p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;&nbsp;&nbsp; 3.4. Почтовый сервер Название: <strong>postfix</strong><br />Архитектура: x86_64<br />Период: 2<br />Версия: 2.10.1<br />Выпуск: 7.el7<br />Объем: 12 M<br />Источник: installed<br />Из источника: base<br />Аннотация: Postfix Mail Transport Agent<br />Ссылка: http://www.postfix.org<br />Лицензия: IBM and GPLv2+<br />Описание: Postfix is a Mail Transport Agent (MTA), supporting LDAP, SMTP AUTH (SASL),</p>\r\n<p style=\\\"text-align: left;\\\"><strong>dovecot</strong><br />Архитектура: x86_64<br />Период: 1<br />Версия: 2.2.36<br />Выпуск: 3.el7<br />Объем: 4.4 M<br />Источник: base/7/x86_64<br />Аннотация: Secure imap and pop3 server<br />Ссылка: http://www.dovecot.org/<br />Лицензия: MIT and LGPLv2<br />Описание: Dovecot is an IMAP server for Linux/UNIX-like systems, written with security<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : primarily in mind.&nbsp; It also contains a small POP3 server.&nbsp; It supports mail<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : in either of maildir or mbox formats.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : The SQL drivers and authentication plug-ins are in their subpackages.</p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.5. Сервер баз данных<strong><span style=\\\"font-size: x-small;\\\"> MariaDB</span></strong></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">&nbsp;mariadb<br />Архитектура: x86_64<br />Период: 1<br />Версия: 5.5.60<br />Выпуск: 1.el7_5<br />Объем: 49</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">для удаленног администрирования базовой конфигурации Web сервера были установлены пакеты</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.1.<strong>1. Webmin ver. 1.9 </strong></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.1.2. <strong>PhpMyadmin версии: <span class=\\\"version\\\">4.8.5</span></strong></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span class=\\\"version\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Версия протокола: 10</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"> Версия сервера: </span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">5.5.60-MariaDB - MariaDB Server&nbsp; <span class=\\\"version\\\">&nbsp;</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">Apache/2.4.6 (CentOS) PHP/5.6.40</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">Версия клиента базы данных: libmysql - mysqlnd 5.0.11-dev - 20120503 - </span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">SId: 76b08b24596e12d4553bd41fc93cccd5bac2fe7a $</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.1.3. <strong>PostfixAdminВ</strong></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><strong>В настоящий момент (05.04.19)</strong> на фиксированной платформе установлены следующие сайты:</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><a>svyaznoytv.com&nbsp; </a>CMS Php-fusion 7.2</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">admin svyaznoy</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">pass svyaznoy131</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">admin pass admin51</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><br /></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><strong><a href=\\\"http://forum.svyaznoytv.com\\\">forum.svyaznoytv.com</a> </strong>CMS PHPBB forum v. 3.2.5<br /></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">login admin </span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">pass admin131</span></p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><a href=\\\"http://mail.svyaznoytv.com\\\">mail.svyaznoytv.com </a>CMS OsCommerce 2.3.4.1</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">для входа в админ mail.svyaznoytv.com/admin/</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">login admin </span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">pass admin131</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"color: #ff0000;\\\"><em>не пользовался</em></span><br /></span></p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><a href=\\\"http://shop.svyaznoytv.com\\\">shop.svyaznoytv.com</a>&nbsp; CMS Opencart v.3.0.2.0</span></p>\r\n<p style=\\\"text-align: left;\\\">категории от груп товаров</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">предустановлен <strong>Facebook Ads Extention plugin ver. 2.1.3</strong></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">не настроен контакт с страницей в FB</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">Установлен<strong> Google Analitics</strong> с кодом активации</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><br /></span></p>\r\n<p><span style=\\\"font-size: x-small;\\\"><a href=\\\"http://trade.svyaznoytv.com\\\">trade.svyaznoytv.com</a>&nbsp; CMS Opencart v.3.0.2.0</span></p>\r\n<p style=\\\"text-align: left;\\\">категории от Бренда</p>\r\n<p style=\\\"text-align: left;\\\">сформированы категории согласно флэшки Олега</p>\r\n<p style=\\\"text-align: left;\\\">добавлены товары</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">установлен <strong>пиксель Facebook Ads Extention plugin ver. 2.1.3</strong></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">настроен контакт с страницей в FB</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">Установлен<strong> Google Analitics</strong> с кодом активации</span></p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;</p>\r\n<p style=\\\"text-align: left;\\\"><a href=\\\"http://root.svyaznoytv.com\\\">root.svyaznoytv.com&nbsp; </a>CMS PrestaShop v. 1.7.5.1</p>\r\n<p style=\\\"text-align: left;\\\">для входа в админку <a href=\\\"http://root.svyaznoytv.com/admin163hs2ckk/\\\">root.svyaznoytv.com/admin163hs2ckk/<br /></a></p>\r\n<p><a href=\\\"http://root.svyaznoytv.com/admin163hs2ckk/\\\"> </a></p>\r\n<p>login kaizenroot@gmail.com</p>\r\n<p>pass admin131</p>\r\n<p>для установки CMS переустановил PHP 5/6 добавил все, что они просили</p>\r\n<p>с контентом не работал</p>\r\n<p>&nbsp;</p>\r\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"text-decoration: underline; font-size: small;\\\"><strong>Виртуальная часть сервера</strong></span><br /></span></p>\r\n<p style=\\\"text-align: left;\\\">* Все сайты поддерживаются без участия Hosting.ua</p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><a href=\\\"http://main.svyaznoytv.com\\\">main.svyaznoytv.com&nbsp; </a>CMS Php-fusion 9</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">предполагался как основной сайт <strong>Сервис центра Svyaznoy</strong><br /></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">полностью пересобран под UTF8 с локализацией <strong>-ci</strong></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><strong>при сохранении сайта </strong>в стандартной установке выскакивали ошабки Fatall по сохранении базы данных</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">переписал db_backup.php с учетом вызовов региональных кодировок</span></p>\r\n<p style=\\\"text-align: left;\\\">доделал темы для выбора</p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">идея - сайт использовать как формирователь заказов для сервисного центра. </span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\">идея взята с сайта <a href=\\\"http://tehremont.com/\\\">http://tehremont.com/</a></span></p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><a href=\\\"http://radio.svyaznoytv.com\\\">radio.svyaznoytvcom&nbsp; </a>CMS <span style=\\\"font-size: x-small;\\\">CMS Opencart v.3.0.2.0</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">собран для магазина радиодеталей</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">в него добавлен модуль облачных структур баз данных.</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">предложено Федей поляковым, Для этого установил сервер баз данных с регистрацией корпоративных запросов в группе</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">работаю.</span></span></p>\r\n<p style=\\\"text-align: left;\\\">&nbsp;</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">show.svyaznoytv.com CMS <a href=\\\"https://openmeetings.apache.org/\\\">OpenMeetings<br /></a></span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">все установлено но не настраивал - нет времени и нужно включать балансировку нагрузки.</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">для этого нужно пересобрать сист. HotBackup горячего резервирования . Нужно разбираться.</span></span></p>\r\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"text-decoration: underline;\\\"><strong>Что нужно сделать </strong></span></span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">1. SSH протокол</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">2. DNS Slave server </span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">3. SMS сервер для магазинов.</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">4. Разобраться с обачным сервером запросов в корпоративе</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">5. Дособрать коммутатор машрутов сети. Все готово но не настроено.</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">6. Портирование ядра в виртуальную зону. В локали работает. Выложить в сеть.</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\">7. Портирование сайтов в виртуальную зону. Не понятно как распределять нагрузку и как Настроить Save Up</span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\"><br /></span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><span style=\\\"font-size: x-small;\\\"><br /></span></span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-size: x-small;\\\"><br /></span></p>', 0, 'n', 1, 1551804218, 5, 1, 1),
(2, 2, 'Проэктирование отказоустойчивой платформы', '<p><span style=\\\"font-size: small;\\\">Проэктирование отказоустойчивой платформы, анализ конфигураций</span></p>', '', 0, 'n', 1, 1553493019, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_article_cats`
--

CREATE TABLE `fusiont1baD_article_cats` (
  `article_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `article_cat_name` varchar(100) NOT NULL DEFAULT '',
  `article_cat_description` varchar(200) NOT NULL DEFAULT '',
  `article_cat_sorting` varchar(50) NOT NULL DEFAULT 'article_subject ASC',
  `article_cat_access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_article_cats`
--

INSERT INTO `fusiont1baD_article_cats` (`article_cat_id`, `article_cat_name`, `article_cat_description`, `article_cat_sorting`, `article_cat_access`) VALUES
(1, 'ремонт подсветки', 'процедура ремонта подсветки LCD телевизора', 'article_subject ASC', 0),
(2, 'отчет', 'отчет о проделанной работе', 'article_subject ASC', 101);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_bbcodes`
--

CREATE TABLE `fusiont1baD_bbcodes` (
  `bbcode_id` mediumint(8) UNSIGNED NOT NULL,
  `bbcode_name` varchar(20) NOT NULL DEFAULT '',
  `bbcode_order` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_bbcodes`
--

INSERT INTO `fusiont1baD_bbcodes` (`bbcode_id`, `bbcode_name`, `bbcode_order`) VALUES
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
(11, 'quote', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_blacklist`
--

CREATE TABLE `fusiont1baD_blacklist` (
  `blacklist_id` mediumint(8) UNSIGNED NOT NULL,
  `blacklist_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `blacklist_ip` varchar(45) NOT NULL DEFAULT '',
  `blacklist_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `blacklist_email` varchar(100) NOT NULL DEFAULT '',
  `blacklist_reason` text NOT NULL,
  `blacklist_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_captcha`
--

CREATE TABLE `fusiont1baD_captcha` (
  `captcha_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `captcha_ip` varchar(45) NOT NULL DEFAULT '',
  `captcha_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `captcha_encode` varchar(32) NOT NULL DEFAULT '',
  `captcha_string` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_comments`
--

CREATE TABLE `fusiont1baD_comments` (
  `comment_id` mediumint(8) UNSIGNED NOT NULL,
  `comment_item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `comment_type` char(2) NOT NULL DEFAULT '',
  `comment_name` varchar(50) NOT NULL DEFAULT '',
  `comment_message` text NOT NULL,
  `comment_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comment_ip` varchar(45) NOT NULL DEFAULT '',
  `comment_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `comment_hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_custom_pages`
--

CREATE TABLE `fusiont1baD_custom_pages` (
  `page_id` mediumint(8) NOT NULL,
  `page_title` varchar(200) NOT NULL DEFAULT '',
  `page_access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `page_content` text NOT NULL,
  `page_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `page_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_custom_pages`
--

INSERT INTO `fusiont1baD_custom_pages` (`page_id`, `page_title`, `page_access`, `page_content`, `page_allow_comments`, `page_allow_ratings`) VALUES
(1, 'Prestashop', 101, '<p style=\\\"text-align: center;\\\"><span style=\\\"text-decoration: underline; color: #0000ff;\\\"><strong>Выложен магазин Prestashop</strong></span></p>\r\n<p style=\\\"text-align: left;\\\">Сайт выложен на http://root.svyaznoytv.com</p>\r\n<p style=\\\"text-align: left;\\\">для входа в админку:</p>\r\n<p style=\\\"text-align: left;\\\">/admin</p>\r\n<p style=\\\"text-align: left;\\\">login admmin</p>\r\n<p style=\\\"text-align: left;\\\">pass admin131</p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"color: #000000;\\\">Для установки СMS пришлось пересобратьPHP 5.6</span></p>\r\n<p style=\\\"text-align: left;\\\"><span style=\\\"color: #000000;\\\">2 <br /></span></p>', 1, 1),
(2, 'trade', 0, '<p>trade.svyaznoytv.com</p>\r\n<p>добавлен Эхпорт/Импорт БД магазина в дух видах</p>\r\n<p>Импорт Экспорт в формате SQL запросов (для сохранения и копирования) всей базы данных магазина</p>\r\n<p>заход в админ панеи</p>\r\n<p>Системма &gt; Разработка &gt; Импорт/Экспорт</p>\r\n<p>и Экспорт/Импорт - заход там же. Файлы после редакции в ОС Windows в формате Exel .xml</p>\r\n<p>Так же добавлен мод для работы с смартфоном в админ</p>\r\n<p>на телефон загрузить</p>\r\n<hr />\r\n<h4><a id=\\\"user-content-используйте-эту-ссылку-для-скачивания-аппликации\\\" class=\\\"anchor\\\" href=\\\"https://github.com/pintawebware/opencart-mobile-admin/tree/master/2.0/full#используйте-эту-ссылку-для-скачивания-аппликации\\\"></a>Используйте эту ссылку для скачивания аппликации:</h4>\r\n<p><a rel=\\\"nofollow\\\" href=\\\"https://play.google.com/store/apps/details?id=com.pinta.opencart.opencartmobileadmin\\\">https://play.google.com/store/apps/details?id=com.pinta.opencart.opencartmobileadmin</a></p>', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_downloads`
--

CREATE TABLE `fusiont1baD_downloads` (
  `download_id` mediumint(8) UNSIGNED NOT NULL,
  `download_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `download_homepage` varchar(100) NOT NULL DEFAULT '',
  `download_title` varchar(100) NOT NULL DEFAULT '',
  `download_description_short` varchar(255) NOT NULL,
  `download_description` text NOT NULL,
  `download_image` varchar(100) NOT NULL DEFAULT '',
  `download_image_thumb` varchar(100) NOT NULL DEFAULT '',
  `download_url` varchar(200) NOT NULL DEFAULT '',
  `download_file` varchar(100) NOT NULL DEFAULT '',
  `download_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `download_license` varchar(50) NOT NULL DEFAULT '',
  `download_copyright` varchar(250) NOT NULL DEFAULT '',
  `download_os` varchar(50) NOT NULL DEFAULT '',
  `download_version` varchar(20) NOT NULL DEFAULT '',
  `download_filesize` varchar(20) NOT NULL DEFAULT '',
  `download_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `download_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `download_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `download_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_downloads`
--

INSERT INTO `fusiont1baD_downloads` (`download_id`, `download_user`, `download_homepage`, `download_title`, `download_description_short`, `download_description`, `download_image`, `download_image_thumb`, `download_url`, `download_file`, `download_cat`, `download_license`, `download_copyright`, `download_os`, `download_version`, `download_filesize`, `download_datestamp`, `download_count`, `download_allow_comments`, `download_allow_ratings`) VALUES
(1, 1, '', 'opencart', 'mods', 'mods for Opencart', '', '', '', 'ocmodnet_exchange1c_oc_23ocmod.zip', 1, '', '', '', '', '128.23кБ', 1551371287, 6, 1, 1),
(2, 1, '', 'Notepad', 'блокнот', 'блокнот для администратора', '', '', '', 'adminnotepad_v100ocmod.zip', 1, '', '', '', '', '7.25кБ', 1553593954, 4, 1, 1),
(3, 1, '', 'server', 'server', '', '', '', '', 'server.zip', 1, '', '', '', '', '1.54кБ', 1553778429, 4, 0, 0),
(4, 1, '', 'db_dump', 'db_dump', '', '', '', '', 'full_backup.zip', 1, '', '', '', '', '1.2МБ', 1554042994, 4, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_download_cats`
--

CREATE TABLE `fusiont1baD_download_cats` (
  `download_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `download_cat_name` varchar(100) NOT NULL DEFAULT '',
  `download_cat_description` text NOT NULL,
  `download_cat_sorting` varchar(50) NOT NULL DEFAULT 'download_title ASC',
  `download_cat_access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_download_cats`
--

INSERT INTO `fusiont1baD_download_cats` (`download_cat_id`, `download_cat_name`, `download_cat_description`, `download_cat_sorting`, `download_cat_access`) VALUES
(1, 'oscommerc', 'mods', 'download_id ASC', 0),
(2, 'php-fusion9', 'themes', 'download_id ASC', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_email_verify`
--

CREATE TABLE `fusiont1baD_email_verify` (
  `user_id` mediumint(8) NOT NULL,
  `user_code` varchar(32) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_errors`
--

CREATE TABLE `fusiont1baD_errors` (
  `error_id` mediumint(8) UNSIGNED NOT NULL,
  `error_level` smallint(5) UNSIGNED NOT NULL,
  `error_message` text NOT NULL,
  `error_file` varchar(255) NOT NULL,
  `error_line` smallint(5) NOT NULL,
  `error_page` varchar(200) NOT NULL,
  `error_user_level` smallint(3) NOT NULL,
  `error_user_ip` varchar(45) NOT NULL DEFAULT '',
  `error_user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `error_status` tinyint(1) NOT NULL DEFAULT '0',
  `error_timestamp` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_errors`
--

INSERT INTO `fusiont1baD_errors` (`error_id`, `error_level`, `error_message`, `error_file`, `error_line`, `error_page`, `error_user_level`, `error_user_ip`, `error_user_ip_type`, `error_status`, `error_timestamp`) VALUES
(14, 8192, 'preg_replace(): The /e modifier is deprecated, use preg_replace_callback instead', '/var/www/html/svyaznoytv.com/includes/bbcodes/mail_bbcode_include.php', 21, '/downloads.php', 0, '66.249.69.76', 4, 0, 1553630729),
(13, 8192, 'preg_replace(): The /e modifier is deprecated, use preg_replace_callback instead', '/var/www/html/svyaznoytv.com/includes/bbcodes/mail_bbcode_include.php', 20, '/downloads.php', 0, '66.249.69.76', 4, 0, 1553630729),
(11, 8192, 'preg_replace(): The /e modifier is deprecated, use preg_replace_callback instead', '/var/www/html/svyaznoytv.com/includes/bbcodes/url_bbcode_include.php', 21, '/news.php', 103, '178.212.195.36', 4, 0, 1553613067),
(12, 8192, 'preg_replace(): The /e modifier is deprecated, use preg_replace_callback instead', '/var/www/html/svyaznoytv.com/includes/bbcodes/url_bbcode_include.php', 22, '/news.php', 103, '178.212.195.36', 4, 0, 1553613067);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_faqs`
--

CREATE TABLE `fusiont1baD_faqs` (
  `faq_id` mediumint(8) UNSIGNED NOT NULL,
  `faq_cat_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `faq_question` varchar(200) NOT NULL DEFAULT '',
  `faq_answer` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_faq_cats`
--

CREATE TABLE `fusiont1baD_faq_cats` (
  `faq_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `faq_cat_name` varchar(200) NOT NULL DEFAULT '',
  `faq_cat_description` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_flood_control`
--

CREATE TABLE `fusiont1baD_flood_control` (
  `flood_ip` varchar(45) NOT NULL DEFAULT '',
  `flood_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `flood_timestamp` int(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_forums`
--

CREATE TABLE `fusiont1baD_forums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_name` varchar(50) NOT NULL DEFAULT '',
  `forum_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `forum_description` text NOT NULL,
  `forum_moderators` text NOT NULL,
  `forum_access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `forum_post` smallint(3) UNSIGNED DEFAULT '101',
  `forum_reply` smallint(3) UNSIGNED DEFAULT '101',
  `forum_poll` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `forum_vote` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `forum_attach` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `forum_attach_download` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `forum_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_postcount` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_threadcount` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_lastuser` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_merge` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_forums`
--

INSERT INTO `fusiont1baD_forums` (`forum_id`, `forum_cat`, `forum_name`, `forum_order`, `forum_description`, `forum_moderators`, `forum_access`, `forum_post`, `forum_reply`, `forum_poll`, `forum_vote`, `forum_attach`, `forum_attach_download`, `forum_lastpost`, `forum_postcount`, `forum_threadcount`, `forum_lastuser`, `forum_merge`) VALUES
(1, 0, 'настройки', 1, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 'настройки trade.svyaznoytv.com', 1, '[b][u]магазин на Opencart 3[/u][/b]\r\n[url]http://trade.svyaznoyt.com[/url]', '', 0, 101, 101, 101, 101, 101, 0, 1550601349, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_forum_attachments`
--

CREATE TABLE `fusiont1baD_forum_attachments` (
  `attach_id` mediumint(8) UNSIGNED NOT NULL,
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attach_name` varchar(100) NOT NULL DEFAULT '',
  `attach_ext` varchar(5) NOT NULL DEFAULT '',
  `attach_size` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `attach_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_forum_polls`
--

CREATE TABLE `fusiont1baD_forum_polls` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_poll_title` varchar(250) NOT NULL,
  `forum_poll_start` int(10) UNSIGNED DEFAULT NULL,
  `forum_poll_length` int(10) UNSIGNED NOT NULL,
  `forum_poll_votes` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_forum_polls`
--

INSERT INTO `fusiont1baD_forum_polls` (`thread_id`, `forum_poll_title`, `forum_poll_start`, `forum_poll_length`, `forum_poll_votes`) VALUES
(1, 'как работает', 1550601294, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_forum_poll_options`
--

CREATE TABLE `fusiont1baD_forum_poll_options` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_poll_option_id` smallint(5) UNSIGNED NOT NULL,
  `forum_poll_option_text` varchar(150) NOT NULL,
  `forum_poll_option_votes` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_forum_poll_options`
--

INSERT INTO `fusiont1baD_forum_poll_options` (`thread_id`, `forum_poll_option_id`, `forum_poll_option_text`, `forum_poll_option_votes`) VALUES
(1, 1, 'хорошо', 0),
(1, 2, 'плохо', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_forum_poll_voters`
--

CREATE TABLE `fusiont1baD_forum_poll_voters` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_vote_user_id` mediumint(8) UNSIGNED NOT NULL,
  `forum_vote_user_ip` varchar(45) NOT NULL,
  `forum_vote_user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_forum_ranks`
--

CREATE TABLE `fusiont1baD_forum_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(100) NOT NULL DEFAULT '',
  `rank_image` varchar(100) NOT NULL DEFAULT '',
  `rank_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_apply` smallint(5) UNSIGNED NOT NULL DEFAULT '101'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_forum_ranks`
--

INSERT INTO `fusiont1baD_forum_ranks` (`rank_id`, `rank_title`, `rank_image`, `rank_posts`, `rank_type`, `rank_apply`) VALUES
(1, 'Супер Администратор', 'rank_super_admin.png', 0, 1, 103),
(2, 'Администратор', 'rank_admin.png', 0, 1, 102),
(3, 'Модератор', 'rank_mod.png', 0, 1, 104),
(4, 'Новичок', 'rank0.png', 0, 0, 101),
(5, 'Начинающий', 'rank1.png', 10, 0, 101),
(6, 'Пользователь', 'rank2.png', 50, 0, 101),
(7, 'Опытный пользователь', 'rank3.png', 200, 0, 101),
(8, 'Ветеран', 'rank4.png', 500, 0, 101),
(9, 'Элита', 'rank5.png', 1000, 0, 101);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_infusions`
--

CREATE TABLE `fusiont1baD_infusions` (
  `inf_id` mediumint(8) UNSIGNED NOT NULL,
  `inf_title` varchar(100) NOT NULL DEFAULT '',
  `inf_folder` varchar(100) NOT NULL DEFAULT '',
  `inf_version` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_infusions`
--

INSERT INTO `fusiont1baD_infusions` (`inf_id`, `inf_title`, `inf_folder`, `inf_version`) VALUES
(1, 'Мини-чат', 'shoutbox_panel', '1.00');

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_messages`
--

CREATE TABLE `fusiont1baD_messages` (
  `message_id` mediumint(8) UNSIGNED NOT NULL,
  `message_to` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `message_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `message_subject` varchar(100) NOT NULL DEFAULT '',
  `message_message` text NOT NULL,
  `message_smileys` char(1) NOT NULL DEFAULT '',
  `message_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `message_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message_folder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_messages_options`
--

CREATE TABLE `fusiont1baD_messages_options` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pm_email_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_save_sent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_inbox` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pm_savebox` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `pm_sentbox` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_messages_options`
--

INSERT INTO `fusiont1baD_messages_options` (`user_id`, `pm_email_notify`, `pm_save_sent`, `pm_inbox`, `pm_savebox`, `pm_sentbox`) VALUES
(0, 0, 1, 20, 20, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_news`
--

CREATE TABLE `fusiont1baD_news` (
  `news_id` mediumint(8) UNSIGNED NOT NULL,
  `news_subject` varchar(200) NOT NULL DEFAULT '',
  `news_image` varchar(100) NOT NULL DEFAULT '',
  `news_image_t1` varchar(100) NOT NULL DEFAULT '',
  `news_image_t2` varchar(100) NOT NULL DEFAULT '',
  `news_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `news_news` text NOT NULL,
  `news_extended` text NOT NULL,
  `news_breaks` char(1) NOT NULL DEFAULT '',
  `news_name` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `news_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_start` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_end` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_visibility` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `news_reads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_draft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `news_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `news_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_news`
--

INSERT INTO `fusiont1baD_news` (`news_id`, `news_subject`, `news_image`, `news_image_t1`, `news_image_t2`, `news_cat`, `news_news`, `news_extended`, `news_breaks`, `news_name`, `news_datestamp`, `news_start`, `news_end`, `news_visibility`, `news_reads`, `news_draft`, `news_sticky`, `news_allow_comments`, `news_allow_ratings`) VALUES
(5, 'pass for sites', '', '', '', 6, '<p><strong>tade.svyaznoytv.com</strong></p>\r\n<p>shop.svyaznoytv.com</p>\r\n<p>mail.svyaznoytv.com</p>\r\n<p>вход в админку</p>\r\n<p>имя сайта/admin</p>\r\n<p>opencart</p>\r\n<p>login admin</p>\r\n<p>svyaznoytv.com</p>\r\n<p>login svyaznoy</p>\r\n<p>pass svyaznoy131</p>\r\n<p>суперадмин</p>\r\n<p>* Открыл</p>\r\n<p>root.svyaznoytv.com</p>\r\n<p>sale.svyaznoytv.com</p>\r\n<p>show.svyaznoytv.com</p>', '<p><strong>tade.svyaznoytv.com</strong></p>\r\n<p>shop.svyaznoytv.com</p>\r\n<p>mail.svyaznoytv.com</p>\r\n<p>вход в админку</p>\r\n<p>имя сайта/admin</p>\r\n<p>opencart</p>\r\n<p>login admin</p>\r\n<p>svyaznoytv.com</p>\r\n<p>login svyaznoy</p>\r\n<p>pass svyaznoy131</p>\r\n<p>суперадмин</p>\r\n<p>* Открыл</p>\r\n<p>root.svyaznoytv.com</p>\r\n<p>sale.svyaznoytv.com</p>\r\n<p>show.svyaznoytv.com</p>', 'n', 1, 1550404851, 0, 0, 101, 0, 1, 0, 1, 1),
(2, 'test sites', '', '', '', 6, '<p style=\\\"text-align: center;\\\"><strong>сязной.com.ua/phpinfo.php</strong></p>\r\n<p style=\\\"text-align: center;\\\"><strong>shop.svyaznoytv,com/phpinfo.php</strong></p>', '<p style=\\\"text-align: center;\\\"><strong>сязной.com.ua/phpinfo.php</strong></p>\r\n<p style=\\\"text-align: center;\\\"><strong>shop.svyaznoytv,com/phpinfo.php</strong></p>', 'n', 1, 1550320238, 0, 0, 0, 6, 1, 0, 1, 1),
(7, 'структуры магазинов', '', '', '', 0, '<p>trade.svyaznoy.com</p>\r\n<p>shop.svyaznoy.com</p>\r\n<p>/admin</p>\r\n<p>login admin</p>\r\n<p>pass admin131</p>\r\n<p>разные структуры формирования груп</p>\r\n<p>от производителя</p>\r\n<p>от категорий товара</p>\r\n<p>макет shop.svyaznoytv.com будет иметь категорию продать на главной</p>\r\n<p>стуктура коммисионый магазин</p>', '<p>trade.svyaznoy.com</p>\r\n<p>shop.svyaznoy.com</p>\r\n<p>/admin</p>\r\n<p>login admin</p>\r\n<p>pass admin131</p>\r\n<p>разные структуры формирования груп</p>\r\n<p>от производителя</p>\r\n<p>от категорий товара</p>\r\n<p>макет shop.svyaznoytv.com будет иметь категорию продать на главной</p>\r\n<p>стуктура коммисионый магазин</p>', 'n', 1, 1550575591, 0, 0, 0, 23, 0, 0, 1, 1),
(6, 'новый пользователь с правами суперадмин admin  pass admin131  admin pass admin131  на сайте открыт чат', '', '', '', 6, '<p>новый пользователь с правами суперадмин admin site svyaznoytv.com</p>\r\n<p>pass admin131</p>\r\n<p>admin pass admin131</p>\r\n<p>на сайте открыт чат</p>', '<p>новый пользователь с правами суперадмин admin</p>\r\n<p>pass admin131</p>\r\n<p>admin pass admin131</p>\r\n<p>на сайте открыт чат</p>', 'n', 1, 1550405648, 0, 0, 101, 0, 1, 0, 0, 0),
(8, 'show.svyaznoytv.com', '', '', '', 12, '<p>глянь эту инфу</p>\r\n<p>есть идея поставить на show.svyaznoytv.com как комуникатор для компании</p>\r\n<p>https://ru.wikipedia.org/wiki/OpenMeetings</p>', '<p>https://ru.wikipedia.org/wiki/OpenMeetings</p>', 'n', 1, 1550577964, 0, 0, 0, 19, 0, 0, 1, 1),
(9, 'prestashop', '', '', '', 2, '<p style=\\\"text-align: center;\\\">добавлен магазин на движке <strong>prestashop</strong></p>\r\n<p style=\\\"text-align: center;\\\">root.svyaznoytv.com</p>\r\n<p style=\\\"text-align: left;\\\">вход в админку root.svyaznoytv.com/admin</p>\r\n<p style=\\\"text-align: left;\\\">login admin</p>\r\n<p style=\\\"text-align: left;\\\">pass admin131</p>', '<p style=\\\"text-align: center;\\\">добавлен магазин на движке <strong>prestashop</strong></p>\r\n<p style=\\\"text-align: center;\\\">root.svyaznoytv.com</p>\r\n<p style=\\\"text-align: left;\\\">вход в админку root.svyaznoytv.com/admin</p>\r\n<p style=\\\"text-align: left;\\\">login admin</p>', 'n', 1, 1550931798, 0, 0, 0, 2, 1, 0, 1, 1),
(10, 'main', '', '', '', 2, '<p><span style=\\\"font-size: small;\\\"><strong>установлен движок php-fusion 9 на виртуальном хостинге main.svyaznoytv.com</strong></span></p>', '<p>login admin</p>\r\n<p>pass admin131</p>\r\n<p>admin pass admin1234</p>', 'n', 1, 1551181220, 0, 0, 0, 2, 1, 0, 0, 0),
(12, 'синхронизация 1с с сайтом', '', '', '', 2, '<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: small;\\\"><strong>синхронизация 1с с сайтом</strong></span></p>\r\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: small;\\\"><strong>http://shop.svyaznoytv.com<br /></strong></span></p>', '<p><span style=\\\"font-size: small;\\\"><strong>сайт shop.svyaznoytv.com</strong></span></p>\r\n<p><span style=\\\"font-size: small;\\\"><strong>движок OpenCart 3.0.2.0<br /></strong></span></p>\r\n<p><strong>доступ в админку <span style=\\\"font-size: small;\\\"><strong>shop.svyaznoytv.com/admin/</strong></span></strong></p>\r\n<p><strong><span style=\\\"font-size: small;\\\"><strong>login&nbsp; admin</strong></span></strong></p>\r\n<p><strong><span style=\\\"font-size: small;\\\"><strong>pass admin131</strong></span></strong></p>\r\n<p><strong><span style=\\\"font-size: small;\\\"><strong>мой Skype&nbsp; kaizen51</strong></span></strong></p>\r\n<p><strong><span style=\\\"font-size: small;\\\"><strong>стандартно это происходит так:</strong></span></strong></p>\r\n<p><span style=\\\"font-weight: bold;\\\">Установка модуля&nbsp;Exchange1C:</span></p>\r\n<p>1. Распаковать скачанный архив и выбрать модуль для вашей версии Opencart или OcStore</p>\r\n<p>2. В админке перейти в Дополнения -&gt; Установка расширений. Выбираем архив и нажимаем Продолжить.</p>\r\n<p>3. Дополнения -&gt; Модификаторы. Нажимаем кнопку Обновить.</p>\r\n<p>4. Дополнения -&gt; Модули. Включить модуль Обмен с 1С (Exchange 1C).</p>\r\n<p>5. Настроить модуль, придумать логин а пароль.</p>\r\n<div><span style=\\\"color: #222222; font-family: arial, sans-serif; font-size: 12.8px;\\\">6. </span>Теперь в среде 1С переходите в раздел Сервис &gt; Обмен данными с WEB-сайтом &gt; Настроить обмен данными с&nbsp;WEB-сайтом&nbsp;<br />Прописываете там адрес сайта -&nbsp;&nbsp;ваш-сайт/export/exchange1c.php<br />Прописываете логин и пароль, которые указали в настройках модуля.</div>\r\n<div>Нажимаете  \\\"Проверить\\\", если \\\"успешно\\\" - нажимаете \\\"Далее\\\" и дальше меняете  настройки, если нужно и выполняете первый обмен данными.</div>\r\n<div></div>\r\n<div></div>\r\n<p><strong><span style=\\\"font-size: small;\\\"><strong><br /></strong></span></strong></p>\r\n<p><strong><span style=\\\"font-size: small;\\\"><strong><br /></strong></span></strong></p>\r\n<p><strong><span style=\\\"font-size: small;\\\"><strong><br /></strong></span></strong></p>', 'n', 1, 1551273811, 0, 0, 0, 19, 0, 0, 1, 1),
(13, 'mod Exchange 1C', '', '', '', 6, '<p><a href=\\\"/downloads.php?cat_id=1&amp;download_id=1\\\">http://www.svyaznoytv.com/downloads.php?cat_id=1&amp;download_id=1</a></p>\r\n<p><a href=\\\"http://main.svyaznoytv.com/infusions/downloads/downloads.php\\\">http://main.svyaznoytv.com/infusions/downloads/downloads.php</a></p>', '<p>прямая ссылка на файл Mod for Exchange 1C для сайта&nbsp;<a href=\\\"http://shop.svyaznoytv.com/\\\"> http://shop.svyaznoytv.com/</a></p>\r\n<p><a href=\\\"/downloads.php?cat_id=1&amp;download_id=1\\\">http://www.svyaznoytv.com/downloads.php?cat_id=1&amp;download_id=1</a></p>\r\n<p><strong><span style=\\\"font-family: arial black, avant garde; font-size: small;\\\">добавлен пользователь jaroslav pass jaroslav131</span></strong></p>\r\n<p><strong><span style=\\\"font-family: arial black, avant garde; font-size: small;\\\"><span style=\\\"font-size: x-small;\\\">admin pass admin131</span><br /></span></strong></p>', 'n', 1, 1551371766, 0, 0, 0, 20, 0, 0, 1, 1),
(14, 'отчет о проделанной работе', 'dzen2.png', 'dzen2_t1.png', 'dzen2_t2.png', 2, '<p><a href=\\\"/articles.php\\\">Отчет о проделанной работе</a></p>', '<p>Отчет о проделанной работе</p>', 'n', 1, 1551882071, 0, 0, 0, 20, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_news_cats`
--

CREATE TABLE `fusiont1baD_news_cats` (
  `news_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `news_cat_name` varchar(100) NOT NULL DEFAULT '',
  `news_cat_image` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_news_cats`
--

INSERT INTO `fusiont1baD_news_cats` (`news_cat_id`, `news_cat_name`, `news_cat_image`) VALUES
(1, 'Ошибки', 'bugs.gif'),
(2, 'Абонент', 'abonent1.jpg'),
(3, 'Ремонт', 'diagnose1.jpg'),
(5, 'Оборудование', 'remont1.jpg'),
(6, 'Ремонт', 'diagnose1.jpg'),
(7, 'Пользователи', 'members.gif'),
(8, 'Моды Плагины', 'mods.gif'),
(9, 'Медиа', 'movies.gif'),
(10, 'Интернет', 'network.gif'),
(11, 'Новости', 'news.gif'),
(12, 'Ремонт', 'remont1.jpg'),
(14, 'Программы', 'software.gif'),
(15, 'Схемы Скины', 'themes.gif');

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_new_users`
--

CREATE TABLE `fusiont1baD_new_users` (
  `user_code` varchar(40) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_online`
--

CREATE TABLE `fusiont1baD_online` (
  `online_user` varchar(50) NOT NULL DEFAULT '',
  `online_ip` varchar(45) NOT NULL DEFAULT '',
  `online_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `online_lastactive` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_online`
--

INSERT INTO `fusiont1baD_online` (`online_user`, `online_ip`, `online_ip_type`, `online_lastactive`) VALUES
('0', '66.249.79.210', 4, 1557042964);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_panels`
--

CREATE TABLE `fusiont1baD_panels` (
  `panel_id` mediumint(8) UNSIGNED NOT NULL,
  `panel_name` varchar(100) NOT NULL DEFAULT '',
  `panel_filename` varchar(100) NOT NULL DEFAULT '',
  `panel_content` text NOT NULL,
  `panel_side` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `panel_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `panel_type` varchar(20) NOT NULL DEFAULT '',
  `panel_access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `panel_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `panel_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `panel_url_list` text NOT NULL,
  `panel_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_panels`
--

INSERT INTO `fusiont1baD_panels` (`panel_id`, `panel_name`, `panel_filename`, `panel_content`, `panel_side`, `panel_order`, `panel_type`, `panel_access`, `panel_display`, `panel_status`, `panel_url_list`, `panel_restriction`) VALUES
(1, 'Навигация', 'css_navigation_panel', '', 1, 1, 'file', 0, 0, 1, '', 0),
(2, 'Сейчас на сайте', 'online_users_panel', '', 1, 2, 'file', 0, 0, 1, '', 0),
(3, 'Темы форума', 'forum_threads_panel', '', 1, 3, 'file', 0, 0, 0, '', 0),
(4, 'Последние статьи', 'latest_articles_panel', '', 1, 4, 'file', 0, 0, 0, '', 0),
(5, 'Приветствие', 'welcome_message_panel', '', 2, 1, 'file', 0, 0, 0, '', 0),
(6, 'Список тем форума', 'forum_threads_list_panel', '', 2, 2, 'file', 0, 0, 0, '', 0),
(7, 'Информация о пользователе', 'user_info_panel', '', 4, 1, 'file', 0, 0, 1, '', 0),
(8, 'Голосование', 'member_poll_panel', '', 4, 2, 'file', 0, 0, 0, '', 0),
(9, 'Мини-чат', 'shoutbox_panel', '', 4, 3, 'file', 0, 0, 1, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_photos`
--

CREATE TABLE `fusiont1baD_photos` (
  `photo_id` mediumint(8) UNSIGNED NOT NULL,
  `album_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `photo_title` varchar(100) NOT NULL DEFAULT '',
  `photo_description` text NOT NULL,
  `photo_filename` varchar(100) NOT NULL DEFAULT '',
  `photo_thumb1` varchar(100) NOT NULL DEFAULT '',
  `photo_thumb2` varchar(100) NOT NULL DEFAULT '',
  `photo_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photo_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `photo_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photo_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `photo_allow_comments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `photo_allow_ratings` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_photo_albums`
--

CREATE TABLE `fusiont1baD_photo_albums` (
  `album_id` mediumint(8) UNSIGNED NOT NULL,
  `album_title` varchar(100) NOT NULL DEFAULT '',
  `album_description` text NOT NULL,
  `album_thumb` varchar(100) NOT NULL DEFAULT '',
  `album_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `album_access` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `album_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `album_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_polls`
--

CREATE TABLE `fusiont1baD_polls` (
  `poll_id` mediumint(8) UNSIGNED NOT NULL,
  `poll_title` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_0` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_1` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_2` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_3` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_4` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_5` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_6` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_7` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_8` varchar(200) NOT NULL DEFAULT '',
  `poll_opt_9` varchar(200) NOT NULL DEFAULT '',
  `poll_started` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_ended` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_polls`
--

INSERT INTO `fusiont1baD_polls` (`poll_id`, `poll_title`, `poll_opt_0`, `poll_opt_1`, `poll_opt_2`, `poll_opt_3`, `poll_opt_4`, `poll_opt_5`, `poll_opt_6`, `poll_opt_7`, `poll_opt_8`, `poll_opt_9`, `poll_started`, `poll_ended`) VALUES
(1, 'тест сайта', 'хорошо', 'плохо', 'не интересно', '', '', '', '', '', '', '', 1550002227, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_poll_votes`
--

CREATE TABLE `fusiont1baD_poll_votes` (
  `vote_id` mediumint(8) UNSIGNED NOT NULL,
  `vote_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vote_opt` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `poll_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_posts`
--

CREATE TABLE `fusiont1baD_posts` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` mediumint(8) UNSIGNED NOT NULL,
  `post_message` text NOT NULL,
  `post_showsig` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_smileys` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_author` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_ip` varchar(45) NOT NULL DEFAULT '',
  `post_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `post_edituser` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_edittime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_editreason` text NOT NULL,
  `post_hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_posts`
--

INSERT INTO `fusiont1baD_posts` (`forum_id`, `thread_id`, `post_id`, `post_message`, `post_showsig`, `post_smileys`, `post_author`, `post_datestamp`, `post_ip`, `post_ip_type`, `post_edituser`, `post_edittime`, `post_editreason`, `post_hidden`, `post_locked`) VALUES
(2, 1, 1, '[b][center]конфигурация сайта trade.svyaznoytv.com[/center][/b]\r\n[url]http://trade.svyaznoytv.com[/url]\n\nОбъединенные на February 19 2019 18:35:49:\nнужно пробовать:o', 0, 1, 1, 1550601294, '178.212.195.36', 4, 1, 1550601349, '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_ratings`
--

CREATE TABLE `fusiont1baD_ratings` (
  `rating_id` mediumint(8) UNSIGNED NOT NULL,
  `rating_item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rating_type` char(1) NOT NULL DEFAULT '',
  `rating_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rating_vote` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rating_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_ip` varchar(45) NOT NULL DEFAULT '',
  `rating_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_settings`
--

CREATE TABLE `fusiont1baD_settings` (
  `settings_name` varchar(200) NOT NULL DEFAULT '',
  `settings_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_settings`
--

INSERT INTO `fusiont1baD_settings` (`settings_name`, `settings_value`) VALUES
('sitename', 'Svyaznoyty'),
('siteurl', 'http://svyaznoytv.com/'),
('site_protocol', 'http'),
('site_host', 'svyaznoytv.com'),
('site_port', ''),
('site_path', '/'),
('sitebanner', 'images/logo1_svyaznoytv.png'),
('sitebanner1', ''),
('sitebanner2', ''),
('siteemail', 'kaizen@list.ru'),
('siteusername', 'svyaznoy'),
('siteintro', ''),
('description', ''),
('keywords', ''),
('footer', ''),
('opening_page', 'news.php'),
('news_thumb_ratio', '0'),
('news_image_link', '0'),
('news_thumb_w', '100'),
('news_thumb_h', '100'),
('news_photo_max_w', '1800'),
('news_photo_max_h', '1600'),
('news_photo_max_b', '150000'),
('locale', 'Russian'),
('theme', 'Gillette'),
('default_search', 'all'),
('exclude_left', ''),
('exclude_upper', ''),
('exclude_lower', ''),
('exclude_right', ''),
('shortdate', '%d.%m.%y'),
('longdate', '%B %d %Y %H:%M:%S'),
('forumdate', '%d-%m-%Y %H:%M'),
('newsdate', '%B %d %Y'),
('subheaderdate', '%B %d %Y %H:%M:%S'),
('timeoffset', '0.0'),
('serveroffset', '0.0'),
('numofthreads', '15'),
('forum_ips', '0'),
('attachmax', '150000'),
('attachmax_count', '5'),
('attachtypes', '.gif,.jpg,.png,.zip,.rar,.tar,.7z'),
('thread_notify', '1'),
('forum_ranks', '1'),
('forum_edit_lock', '0'),
('forum_edit_timelimit', '0'),
('forum_editpost_to_lastpost', '1'),
('forum_last_posts_reply', '10'),
('enable_registration', '1'),
('email_verification', '1'),
('admin_activation', '0'),
('display_validation', '1'),
('enable_deactivation', '0'),
('deactivation_period', '365'),
('deactivation_response', '14'),
('enable_terms', '0'),
('license_agreement', ''),
('license_lastupdate', '0'),
('thumb_w', '100'),
('thumb_h', '100'),
('photo_w', '400'),
('photo_h', '300'),
('photo_max_w', '1800'),
('photo_max_h', '1600'),
('photo_max_b', '512000'),
('thumb_compression', 'gd2'),
('thumbs_per_row', '4'),
('thumbs_per_page', '12'),
('photo_watermark', '1'),
('photo_watermark_image', 'images/watermark.png'),
('photo_watermark_text', '0'),
('photo_watermark_text_color1', 'FF6600'),
('photo_watermark_text_color2', 'FFFF00'),
('photo_watermark_text_color3', 'FFFFFF'),
('photo_watermark_save', '0'),
('tinymce_enabled', '1'),
('smtp_host', 'svyaznoytv.com'),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('bad_words_enabled', '1'),
('bad_words', ''),
('bad_word_replace', '****'),
('guestposts', '1'),
('comments_enabled', '1'),
('ratings_enabled', '1'),
('hide_userprofiles', '0'),
('userthemes', '1'),
('newsperpage', '11'),
('flood_interval', '15'),
('counter', '2092'),
('version', '7.02.07'),
('maintenance', '0'),
('maintenance_message', ''),
('download_max_b', '512000000'),
('download_types', '.pdf,.gif,.jpg,.png,.zip,.rar,.tar,.bz2,.7z,sql,.cnf'),
('articles_per_page', '15'),
('downloads_per_page', '15'),
('links_per_page', '15'),
('comments_per_page', '10'),
('comments_sorting', 'ASC'),
('comments_avatar', '1'),
('avatar_width', '100'),
('avatar_height', '100'),
('avatar_filesize', '15000'),
('avatar_ratio', '0'),
('cronjob_day', '1557011035'),
('cronjob_hour', '1557042965'),
('flood_autoban', '1'),
('visitorcounter_enabled', '1'),
('rendertime_enabled', '1'),
('popular_threads_timeframe', ''),
('maintenance_level', '102'),
('news_photo_w', '400'),
('news_photo_h', '300'),
('news_image_frontpage', '0'),
('news_image_readmore', '0'),
('deactivation_action', '0'),
('captcha', 'securimage'),
('password_algorithm', 'sha256'),
('default_timezone', 'Europe/London'),
('userNameChange', '1'),
('download_screen_max_b', '150000'),
('download_screen_max_w', '1024'),
('download_screen_max_h', '768'),
('recaptcha_public', ''),
('recaptcha_private', ''),
('recaptcha_theme', 'red'),
('download_screenshot', '1'),
('download_thumb_max_w', '100'),
('download_thumb_max_h', '100'),
('multiple_logins', '0'),
('smtp_auth', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_settings_inf`
--

CREATE TABLE `fusiont1baD_settings_inf` (
  `settings_name` varchar(200) NOT NULL DEFAULT '',
  `settings_value` text NOT NULL,
  `settings_inf` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_settings_inf`
--

INSERT INTO `fusiont1baD_settings_inf` (`settings_name`, `settings_value`, `settings_inf`) VALUES
('visible_shouts', '5', 'shoutbox_panel'),
('guest_shouts', '0', 'shoutbox_panel');

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_shoutbox`
--

CREATE TABLE `fusiont1baD_shoutbox` (
  `shout_id` mediumint(8) UNSIGNED NOT NULL,
  `shout_name` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shout_message` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shout_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shout_ip` varchar(45) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shout_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `shout_hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `fusiont1baD_shoutbox`
--

INSERT INTO `fusiont1baD_shoutbox` (`shout_id`, `shout_name`, `shout_message`, `shout_datestamp`, `shout_ip`, `shout_ip_type`, `shout_hidden`) VALUES
(1, '1', 'g', 1550405085, '178.212.195.36', 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_site_links`
--

CREATE TABLE `fusiont1baD_site_links` (
  `link_id` mediumint(8) UNSIGNED NOT NULL,
  `link_name` varchar(100) NOT NULL DEFAULT '',
  `link_url` varchar(200) NOT NULL DEFAULT '',
  `link_visibility` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `link_position` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `link_window` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `link_order` smallint(2) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_site_links`
--

INSERT INTO `fusiont1baD_site_links` (`link_id`, `link_name`, `link_url`, `link_visibility`, `link_position`, `link_window`, `link_order`) VALUES
(1, 'Главная', 'index.php', 0, 2, 0, 1),
(2, 'Статьи', 'articles.php', 0, 2, 0, 2),
(3, 'Файлы', 'downloads.php', 0, 2, 0, 3),
(4, 'FAQ', 'faq.php', 0, 1, 0, 4),
(5, 'Форум', 'forum/index.php', 0, 2, 0, 5),
(6, 'Категории новостей', 'news_cats.php', 0, 2, 0, 7),
(7, 'Каталог ссылок', 'weblinks.php', 0, 2, 0, 6),
(8, 'Обратная связь', 'contact.php', 0, 1, 0, 8),
(9, 'Фотогалерея', 'photogallery.php', 0, 1, 0, 9),
(10, 'Поиск', 'search.php', 0, 1, 0, 10),
(11, '---', '---', 101, 1, 0, 11),
(12, 'Добавить ссылку', 'submit.php?stype=l', 101, 1, 0, 12),
(13, 'Добавить новость', 'submit.php?stype=n', 101, 1, 0, 13),
(14, 'Добавить статью', 'submit.php?stype=a', 101, 1, 0, 14),
(15, 'Добавить изображение', 'submit.php?stype=p', 101, 1, 0, 15),
(16, 'Добавить файл', 'submit.php?stype=d', 101, 1, 0, 16),
(17, 'Prestashop', 'viewpage.php?page_id=1', 0, 1, 0, 17),
(18, 'trade', 'viewpage.php?page_id=2', 0, 1, 0, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_smileys`
--

CREATE TABLE `fusiont1baD_smileys` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `smiley_code` varchar(50) NOT NULL,
  `smiley_image` varchar(100) NOT NULL,
  `smiley_text` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_smileys`
--

INSERT INTO `fusiont1baD_smileys` (`smiley_id`, `smiley_code`, `smiley_image`, `smiley_text`) VALUES
(1, ':)', 'smile.gif', 'Улыбчивый'),
(2, ';)', 'wink.gif', 'Подмигивание'),
(3, ':(', 'sad.gif', 'Печальный'),
(4, ':|', 'frown.gif', 'Хмурый'),
(5, ':o', 'shock.gif', 'Шок'),
(6, ':P', 'pfft.gif', 'Pfft'),
(7, 'B)', 'cool.gif', 'Клевый'),
(8, ':D', 'grin.gif', 'Усмехающийся'),
(9, ':@', 'angry.gif', 'Сердитый');

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_submissions`
--

CREATE TABLE `fusiont1baD_submissions` (
  `submit_id` mediumint(8) UNSIGNED NOT NULL,
  `submit_type` char(1) NOT NULL,
  `submit_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `submit_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `submit_criteria` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_suspends`
--

CREATE TABLE `fusiont1baD_suspends` (
  `suspend_id` mediumint(8) UNSIGNED NOT NULL,
  `suspended_user` mediumint(8) UNSIGNED NOT NULL,
  `suspending_admin` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `suspend_ip` varchar(45) NOT NULL DEFAULT '',
  `suspend_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `suspend_date` int(10) NOT NULL DEFAULT '0',
  `suspend_reason` text NOT NULL,
  `suspend_type` tinyint(1) NOT NULL DEFAULT '0',
  `reinstating_admin` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `reinstate_reason` text NOT NULL,
  `reinstate_date` int(10) NOT NULL DEFAULT '0',
  `reinstate_ip` varchar(45) NOT NULL DEFAULT '',
  `reinstate_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_threads`
--

CREATE TABLE `fusiont1baD_threads` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_id` mediumint(8) UNSIGNED NOT NULL,
  `thread_subject` varchar(100) NOT NULL DEFAULT '',
  `thread_author` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_lastpostid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_lastuser` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `thread_postcount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `thread_poll` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thread_sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thread_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thread_hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_threads`
--

INSERT INTO `fusiont1baD_threads` (`forum_id`, `thread_id`, `thread_subject`, `thread_author`, `thread_views`, `thread_lastpost`, `thread_lastpostid`, `thread_lastuser`, `thread_postcount`, `thread_poll`, `thread_sticky`, `thread_locked`, `thread_hidden`) VALUES
(2, 1, 'конфигурация сайта', 1, 5, 1550601349, 1, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_thread_notify`
--

CREATE TABLE `fusiont1baD_thread_notify` (
  `thread_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_users`
--

CREATE TABLE `fusiont1baD_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_algo` varchar(10) NOT NULL DEFAULT 'sha256',
  `user_salt` varchar(40) NOT NULL DEFAULT '',
  `user_password` varchar(64) NOT NULL DEFAULT '',
  `user_admin_algo` varchar(10) NOT NULL DEFAULT 'sha256',
  `user_admin_salt` varchar(40) NOT NULL DEFAULT '',
  `user_admin_password` varchar(64) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_hide_email` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_offset` char(5) NOT NULL DEFAULT '0',
  `user_avatar` varchar(100) NOT NULL DEFAULT '',
  `user_posts` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `user_threads` text NOT NULL,
  `user_joined` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(45) NOT NULL DEFAULT '0.0.0.0',
  `user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `user_rights` text NOT NULL,
  `user_groups` text NOT NULL,
  `user_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '101',
  `user_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_actiontime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_theme` varchar(100) NOT NULL DEFAULT 'Default',
  `user_location` varchar(50) NOT NULL DEFAULT '',
  `user_birthdate` date NOT NULL DEFAULT '0000-00-00',
  `user_skype` varchar(100) NOT NULL DEFAULT '',
  `user_aim` varchar(16) NOT NULL DEFAULT '',
  `user_icq` varchar(15) NOT NULL DEFAULT '',
  `user_msn` varchar(100) NOT NULL DEFAULT '',
  `user_yahoo` varchar(100) NOT NULL DEFAULT '',
  `user_web` varchar(200) NOT NULL DEFAULT '',
  `user_sig` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_users`
--

INSERT INTO `fusiont1baD_users` (`user_id`, `user_name`, `user_algo`, `user_salt`, `user_password`, `user_admin_algo`, `user_admin_salt`, `user_admin_password`, `user_email`, `user_hide_email`, `user_offset`, `user_avatar`, `user_posts`, `user_threads`, `user_joined`, `user_lastvisit`, `user_ip`, `user_ip_type`, `user_rights`, `user_groups`, `user_level`, `user_status`, `user_actiontime`, `user_theme`, `user_location`, `user_birthdate`, `user_skype`, `user_aim`, `user_icq`, `user_msn`, `user_yahoo`, `user_web`, `user_sig`) VALUES
(1, 'svyaznoy', 'sha256', '1c3cffb46be6051945819030a880cbdc94c1c1f6', 'cb12cbebc8c29345e624bc075d45ce83055526bed1e868f0863ca396b628edcf', 'sha256', '6ab059631773804c62e1de536f8348a506ca74a0', '86e19f079eb2cb98d3ba27b947d97a469b84ceae463ebfbab5fd6c40283470ce', 'kaizen@list.ru', 1, '0', '', 1, '', 1550000811, 1556814621, '178.212.195.36', 4, 'A.AC.AD.APWR.B.BB.C.CP.DB.DC.D.ERRO.FQ.F.FR.IM.I.IP.M.N.NC.P.PH.PI.PO.ROB.SL.S1.S2.S3.S4.S5.S6.S7.S8.S9.S10.S11.S12.SB.SM.SU.UF.UFC.UG.UL.U.W.WC.S', '', 103, 0, 0, 'Default', '', '0000-00-00', '', '', '', '', '', '', ''),
(2, 'melnic', 'sha256', 'e4603b2d09e1910282d7a1c4e0cecd7d251c8225', '7baa60d3a80b36727ede840e527afb4f1263033dd730ad6900b24642dcbe8357', 'sha256', '', '', 'melnic@svyaznoytv.com', 1, '0.0', '', 0, '0', 1550361988, 0, '178.212.195.36', 4, '', '', 101, 0, 0, 'Default', '', '0000-00-00', '', '', '', '', '', '', ''),
(3, 'ADMIN', 'sha256', 'be7b89bbb0b7e87cb7f3743271041d8619d0bdc7', '8ca91c922cf822b1b70ed61e16216d0f1bd51ce19f59422230f70d132912a8c7', 'sha256', '', '', 'admin@svyaznoytv.com', 1, '0.0', '', 0, '0', 1550405136, 0, '178.212.195.36', 4, 'FQ.CP.D.IM.W.WC.NC.AC.DC.N.PO.A.F.PH.AD.UL.UFC.C.SU.M.UG.UF.FR.APWR.B.BB.ROB.SB.ERRO.PI.SL.U.P.IP.I.DB.SM.S12.S1.S2.S11.S7.S4.S9.S3.S5.S8.S6.S10.S', '', 103, 0, 0, 'Default', '', '0000-00-00', '', '', '', '', '', '', ''),
(4, 'vitaliy', 'sha256', 'a4eeb12f7cb5bf01ebe51fc57f9892079d851f6b', '044ec12e5e01be2d4a4c54ec863484c9f900e4e4b65323bfd9f94ac5e5ebbb8b', 'sha256', '', '', 'vitaliy@svyaznoytv.com', 1, '0.0', '', 0, '0', 1550600682, 0, '178.212.195.36', 4, '', '', 101, 0, 0, 'Default', '', '0000-00-00', '', '', '', '', '', '', ''),
(5, 'jaroslav', 'sha256', 'aa8aaf5c38c76fc46f55f88781f69bf9e83ee7af', '68685d874b15d3a17b02d0d7f651996ef31f70c3a60c67ac99813f361e2a6751', 'sha256', '', '', 'jaroslav@svyaznoytv.com', 1, '0.0', '', 0, '0', 1551372232, 0, '178.212.195.36', 4, '', '', 101, 0, 0, 'Default', '', '0000-00-00', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_user_fields`
--

CREATE TABLE `fusiont1baD_user_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `field_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_log` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_registration` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_user_fields`
--

INSERT INTO `fusiont1baD_user_fields` (`field_id`, `field_name`, `field_cat`, `field_required`, `field_log`, `field_registration`, `field_order`) VALUES
(1, 'user_location', 2, 0, 0, 0, 1),
(2, 'user_birthdate', 2, 0, 0, 0, 2),
(3, 'user_skype', 1, 0, 0, 0, 1),
(4, 'user_aim', 1, 0, 0, 0, 2),
(5, 'user_icq', 1, 0, 0, 0, 3),
(6, 'user_msn', 1, 0, 0, 0, 4),
(7, 'user_yahoo', 1, 0, 0, 0, 5),
(8, 'user_web', 1, 0, 0, 0, 6),
(9, 'user_offset', 3, 0, 0, 0, 1),
(10, 'user_theme', 3, 0, 0, 0, 2),
(11, 'user_sig', 3, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_user_field_cats`
--

CREATE TABLE `fusiont1baD_user_field_cats` (
  `field_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `field_cat_name` varchar(200) NOT NULL,
  `field_cat_order` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_user_field_cats`
--

INSERT INTO `fusiont1baD_user_field_cats` (`field_cat_id`, `field_cat_name`, `field_cat_order`) VALUES
(1, 'Контактная информация', 1),
(2, 'Прочая информация', 2),
(3, 'Опции', 3),
(4, 'Статистика', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_user_groups`
--

CREATE TABLE `fusiont1baD_user_groups` (
  `group_id` tinyint(3) UNSIGNED NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `group_description` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_user_log`
--

CREATE TABLE `fusiont1baD_user_log` (
  `userlog_id` mediumint(8) UNSIGNED NOT NULL,
  `userlog_user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userlog_field` varchar(50) NOT NULL DEFAULT '',
  `userlog_value_new` text NOT NULL,
  `userlog_value_old` text NOT NULL,
  `userlog_timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_weblinks`
--

CREATE TABLE `fusiont1baD_weblinks` (
  `weblink_id` mediumint(8) UNSIGNED NOT NULL,
  `weblink_name` varchar(100) NOT NULL DEFAULT '',
  `weblink_description` text NOT NULL,
  `weblink_url` varchar(200) NOT NULL DEFAULT '',
  `weblink_cat` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `weblink_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `weblink_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_weblinks`
--

INSERT INTO `fusiont1baD_weblinks` (`weblink_id`, `weblink_name`, `weblink_description`, `weblink_url`, `weblink_cat`, `weblink_datestamp`, `weblink_count`) VALUES
(1, 'config nodes', 'ссылка на KVM-2', 'https://bitworks.software/2017-07-18-mariadb-galera-cloudstack-ha-cluster.html', 1, 1553858468, 3),
(2, 'KVM-3', 'KVM-3', 'https://bogachev.biz/2016/03/29/nastroika-galera-klastera-na-mariadb-s-master-master-replikaciei/', 1, 1553858899, 2),
(3, 'https://habr.com/ru/post/333590/', 'g-0', 'https://habr.com/ru/post/333590/', 1, 1553949490, 1),
(4, 'https://habr.com/ru/post/333590/', 'g-0', 'https://habr.com/ru/post/333590/', 1, 1554019106, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fusiont1baD_weblink_cats`
--

CREATE TABLE `fusiont1baD_weblink_cats` (
  `weblink_cat_id` mediumint(8) UNSIGNED NOT NULL,
  `weblink_cat_name` varchar(100) NOT NULL DEFAULT '',
  `weblink_cat_description` text NOT NULL,
  `weblink_cat_sorting` varchar(50) NOT NULL DEFAULT 'weblink_name ASC',
  `weblink_cat_access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fusiont1baD_weblink_cats`
--

INSERT INTO `fusiont1baD_weblink_cats` (`weblink_cat_id`, `weblink_cat_name`, `weblink_cat_description`, `weblink_cat_sorting`, `weblink_cat_access`) VALUES
(1, 'galera', 'setup', 'weblink_id ASC', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fusiont1baD_admin`
--
ALTER TABLE `fusiont1baD_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Индексы таблицы `fusiont1baD_admin_resetlog`
--
ALTER TABLE `fusiont1baD_admin_resetlog`
  ADD PRIMARY KEY (`reset_id`);

--
-- Индексы таблицы `fusiont1baD_articles`
--
ALTER TABLE `fusiont1baD_articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `article_cat` (`article_cat`),
  ADD KEY `article_datestamp` (`article_datestamp`),
  ADD KEY `article_reads` (`article_reads`);

--
-- Индексы таблицы `fusiont1baD_article_cats`
--
ALTER TABLE `fusiont1baD_article_cats`
  ADD PRIMARY KEY (`article_cat_id`),
  ADD KEY `article_cat_access` (`article_cat_access`);

--
-- Индексы таблицы `fusiont1baD_bbcodes`
--
ALTER TABLE `fusiont1baD_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `bbcode_order` (`bbcode_order`);

--
-- Индексы таблицы `fusiont1baD_blacklist`
--
ALTER TABLE `fusiont1baD_blacklist`
  ADD PRIMARY KEY (`blacklist_id`),
  ADD KEY `blacklist_ip_type` (`blacklist_ip_type`);

--
-- Индексы таблицы `fusiont1baD_captcha`
--
ALTER TABLE `fusiont1baD_captcha`
  ADD KEY `captcha_datestamp` (`captcha_datestamp`);

--
-- Индексы таблицы `fusiont1baD_comments`
--
ALTER TABLE `fusiont1baD_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_datestamp` (`comment_datestamp`);

--
-- Индексы таблицы `fusiont1baD_custom_pages`
--
ALTER TABLE `fusiont1baD_custom_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Индексы таблицы `fusiont1baD_downloads`
--
ALTER TABLE `fusiont1baD_downloads`
  ADD PRIMARY KEY (`download_id`),
  ADD KEY `download_datestamp` (`download_datestamp`);

--
-- Индексы таблицы `fusiont1baD_download_cats`
--
ALTER TABLE `fusiont1baD_download_cats`
  ADD PRIMARY KEY (`download_cat_id`);

--
-- Индексы таблицы `fusiont1baD_email_verify`
--
ALTER TABLE `fusiont1baD_email_verify`
  ADD KEY `user_datestamp` (`user_datestamp`);

--
-- Индексы таблицы `fusiont1baD_errors`
--
ALTER TABLE `fusiont1baD_errors`
  ADD PRIMARY KEY (`error_id`);

--
-- Индексы таблицы `fusiont1baD_faqs`
--
ALTER TABLE `fusiont1baD_faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Индексы таблицы `fusiont1baD_faq_cats`
--
ALTER TABLE `fusiont1baD_faq_cats`
  ADD PRIMARY KEY (`faq_cat_id`);

--
-- Индексы таблицы `fusiont1baD_flood_control`
--
ALTER TABLE `fusiont1baD_flood_control`
  ADD KEY `flood_timestamp` (`flood_timestamp`);

--
-- Индексы таблицы `fusiont1baD_forums`
--
ALTER TABLE `fusiont1baD_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `forum_order` (`forum_order`),
  ADD KEY `forum_lastpost` (`forum_lastpost`),
  ADD KEY `forum_postcount` (`forum_postcount`),
  ADD KEY `forum_threadcount` (`forum_threadcount`);

--
-- Индексы таблицы `fusiont1baD_forum_attachments`
--
ALTER TABLE `fusiont1baD_forum_attachments`
  ADD PRIMARY KEY (`attach_id`);

--
-- Индексы таблицы `fusiont1baD_forum_polls`
--
ALTER TABLE `fusiont1baD_forum_polls`
  ADD KEY `thread_id` (`thread_id`);

--
-- Индексы таблицы `fusiont1baD_forum_poll_options`
--
ALTER TABLE `fusiont1baD_forum_poll_options`
  ADD KEY `thread_id` (`thread_id`);

--
-- Индексы таблицы `fusiont1baD_forum_poll_voters`
--
ALTER TABLE `fusiont1baD_forum_poll_voters`
  ADD KEY `thread_id` (`thread_id`,`forum_vote_user_id`);

--
-- Индексы таблицы `fusiont1baD_forum_ranks`
--
ALTER TABLE `fusiont1baD_forum_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Индексы таблицы `fusiont1baD_infusions`
--
ALTER TABLE `fusiont1baD_infusions`
  ADD PRIMARY KEY (`inf_id`);

--
-- Индексы таблицы `fusiont1baD_messages`
--
ALTER TABLE `fusiont1baD_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `message_datestamp` (`message_datestamp`);

--
-- Индексы таблицы `fusiont1baD_messages_options`
--
ALTER TABLE `fusiont1baD_messages_options`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `fusiont1baD_news`
--
ALTER TABLE `fusiont1baD_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_datestamp` (`news_datestamp`),
  ADD KEY `news_reads` (`news_reads`);

--
-- Индексы таблицы `fusiont1baD_news_cats`
--
ALTER TABLE `fusiont1baD_news_cats`
  ADD PRIMARY KEY (`news_cat_id`);

--
-- Индексы таблицы `fusiont1baD_new_users`
--
ALTER TABLE `fusiont1baD_new_users`
  ADD KEY `user_datestamp` (`user_datestamp`);

--
-- Индексы таблицы `fusiont1baD_panels`
--
ALTER TABLE `fusiont1baD_panels`
  ADD PRIMARY KEY (`panel_id`),
  ADD KEY `panel_order` (`panel_order`);

--
-- Индексы таблицы `fusiont1baD_photos`
--
ALTER TABLE `fusiont1baD_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `photo_order` (`photo_order`),
  ADD KEY `photo_datestamp` (`photo_datestamp`);

--
-- Индексы таблицы `fusiont1baD_photo_albums`
--
ALTER TABLE `fusiont1baD_photo_albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_order` (`album_order`),
  ADD KEY `album_datestamp` (`album_datestamp`);

--
-- Индексы таблицы `fusiont1baD_polls`
--
ALTER TABLE `fusiont1baD_polls`
  ADD PRIMARY KEY (`poll_id`);

--
-- Индексы таблицы `fusiont1baD_poll_votes`
--
ALTER TABLE `fusiont1baD_poll_votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- Индексы таблицы `fusiont1baD_posts`
--
ALTER TABLE `fusiont1baD_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `post_datestamp` (`post_datestamp`);

--
-- Индексы таблицы `fusiont1baD_ratings`
--
ALTER TABLE `fusiont1baD_ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Индексы таблицы `fusiont1baD_settings`
--
ALTER TABLE `fusiont1baD_settings`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusiont1baD_settings_inf`
--
ALTER TABLE `fusiont1baD_settings_inf`
  ADD PRIMARY KEY (`settings_name`);

--
-- Индексы таблицы `fusiont1baD_shoutbox`
--
ALTER TABLE `fusiont1baD_shoutbox`
  ADD PRIMARY KEY (`shout_id`),
  ADD KEY `shout_datestamp` (`shout_datestamp`);

--
-- Индексы таблицы `fusiont1baD_site_links`
--
ALTER TABLE `fusiont1baD_site_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Индексы таблицы `fusiont1baD_smileys`
--
ALTER TABLE `fusiont1baD_smileys`
  ADD PRIMARY KEY (`smiley_id`);

--
-- Индексы таблицы `fusiont1baD_submissions`
--
ALTER TABLE `fusiont1baD_submissions`
  ADD PRIMARY KEY (`submit_id`);

--
-- Индексы таблицы `fusiont1baD_suspends`
--
ALTER TABLE `fusiont1baD_suspends`
  ADD PRIMARY KEY (`suspend_id`);

--
-- Индексы таблицы `fusiont1baD_threads`
--
ALTER TABLE `fusiont1baD_threads`
  ADD PRIMARY KEY (`thread_id`),
  ADD KEY `thread_postcount` (`thread_postcount`),
  ADD KEY `thread_lastpost` (`thread_lastpost`),
  ADD KEY `thread_views` (`thread_views`);

--
-- Индексы таблицы `fusiont1baD_thread_notify`
--
ALTER TABLE `fusiont1baD_thread_notify`
  ADD KEY `notify_datestamp` (`notify_datestamp`);

--
-- Индексы таблицы `fusiont1baD_users`
--
ALTER TABLE `fusiont1baD_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_joined` (`user_joined`),
  ADD KEY `user_lastvisit` (`user_lastvisit`);

--
-- Индексы таблицы `fusiont1baD_user_fields`
--
ALTER TABLE `fusiont1baD_user_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `field_order` (`field_order`);

--
-- Индексы таблицы `fusiont1baD_user_field_cats`
--
ALTER TABLE `fusiont1baD_user_field_cats`
  ADD PRIMARY KEY (`field_cat_id`);

--
-- Индексы таблицы `fusiont1baD_user_groups`
--
ALTER TABLE `fusiont1baD_user_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Индексы таблицы `fusiont1baD_user_log`
--
ALTER TABLE `fusiont1baD_user_log`
  ADD PRIMARY KEY (`userlog_id`),
  ADD KEY `userlog_user_id` (`userlog_user_id`),
  ADD KEY `userlog_field` (`userlog_field`);

--
-- Индексы таблицы `fusiont1baD_weblinks`
--
ALTER TABLE `fusiont1baD_weblinks`
  ADD PRIMARY KEY (`weblink_id`),
  ADD KEY `weblink_datestamp` (`weblink_datestamp`),
  ADD KEY `weblink_count` (`weblink_count`);

--
-- Индексы таблицы `fusiont1baD_weblink_cats`
--
ALTER TABLE `fusiont1baD_weblink_cats`
  ADD PRIMARY KEY (`weblink_cat_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_admin`
--
ALTER TABLE `fusiont1baD_admin`
  MODIFY `admin_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_admin_resetlog`
--
ALTER TABLE `fusiont1baD_admin_resetlog`
  MODIFY `reset_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_articles`
--
ALTER TABLE `fusiont1baD_articles`
  MODIFY `article_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_article_cats`
--
ALTER TABLE `fusiont1baD_article_cats`
  MODIFY `article_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_bbcodes`
--
ALTER TABLE `fusiont1baD_bbcodes`
  MODIFY `bbcode_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_blacklist`
--
ALTER TABLE `fusiont1baD_blacklist`
  MODIFY `blacklist_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_comments`
--
ALTER TABLE `fusiont1baD_comments`
  MODIFY `comment_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_custom_pages`
--
ALTER TABLE `fusiont1baD_custom_pages`
  MODIFY `page_id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_downloads`
--
ALTER TABLE `fusiont1baD_downloads`
  MODIFY `download_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_download_cats`
--
ALTER TABLE `fusiont1baD_download_cats`
  MODIFY `download_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_errors`
--
ALTER TABLE `fusiont1baD_errors`
  MODIFY `error_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_faqs`
--
ALTER TABLE `fusiont1baD_faqs`
  MODIFY `faq_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_faq_cats`
--
ALTER TABLE `fusiont1baD_faq_cats`
  MODIFY `faq_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_forums`
--
ALTER TABLE `fusiont1baD_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_forum_attachments`
--
ALTER TABLE `fusiont1baD_forum_attachments`
  MODIFY `attach_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_forum_ranks`
--
ALTER TABLE `fusiont1baD_forum_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_infusions`
--
ALTER TABLE `fusiont1baD_infusions`
  MODIFY `inf_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_messages`
--
ALTER TABLE `fusiont1baD_messages`
  MODIFY `message_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_news`
--
ALTER TABLE `fusiont1baD_news`
  MODIFY `news_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_news_cats`
--
ALTER TABLE `fusiont1baD_news_cats`
  MODIFY `news_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_panels`
--
ALTER TABLE `fusiont1baD_panels`
  MODIFY `panel_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_photos`
--
ALTER TABLE `fusiont1baD_photos`
  MODIFY `photo_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_photo_albums`
--
ALTER TABLE `fusiont1baD_photo_albums`
  MODIFY `album_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_polls`
--
ALTER TABLE `fusiont1baD_polls`
  MODIFY `poll_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_poll_votes`
--
ALTER TABLE `fusiont1baD_poll_votes`
  MODIFY `vote_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_posts`
--
ALTER TABLE `fusiont1baD_posts`
  MODIFY `post_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_ratings`
--
ALTER TABLE `fusiont1baD_ratings`
  MODIFY `rating_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_shoutbox`
--
ALTER TABLE `fusiont1baD_shoutbox`
  MODIFY `shout_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_site_links`
--
ALTER TABLE `fusiont1baD_site_links`
  MODIFY `link_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_smileys`
--
ALTER TABLE `fusiont1baD_smileys`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_submissions`
--
ALTER TABLE `fusiont1baD_submissions`
  MODIFY `submit_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_suspends`
--
ALTER TABLE `fusiont1baD_suspends`
  MODIFY `suspend_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_threads`
--
ALTER TABLE `fusiont1baD_threads`
  MODIFY `thread_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_users`
--
ALTER TABLE `fusiont1baD_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_user_fields`
--
ALTER TABLE `fusiont1baD_user_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_user_field_cats`
--
ALTER TABLE `fusiont1baD_user_field_cats`
  MODIFY `field_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_user_groups`
--
ALTER TABLE `fusiont1baD_user_groups`
  MODIFY `group_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_user_log`
--
ALTER TABLE `fusiont1baD_user_log`
  MODIFY `userlog_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_weblinks`
--
ALTER TABLE `fusiont1baD_weblinks`
  MODIFY `weblink_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `fusiont1baD_weblink_cats`
--
ALTER TABLE `fusiont1baD_weblink_cats`
  MODIFY `weblink_cat_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
