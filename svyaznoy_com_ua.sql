-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 05 2019 г., 10:51
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
-- База данных: `svyaznoy.com.ua`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_advertise_google_target`
--

CREATE TABLE `oc_advertise_google_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'BKNDxKvnuyoBce5y85DhgZCe0pFHsphu9d5m0kbiD1r5iEprraIrzfm5qKrtLysWnqvTjrCKldKCMbPNbHbfCdb0MtXSDxovATphoTW0p4Gg5FTv4WRRMBAaChRRhWKLJ3yw11vdUyA1jwQmxGLTrIRJQUJp75vNBwjEf1I2z9LudJ2nJo2BhuidRRrvMxJbEBCBHMDAA9HtaWWiXiiuQmOJBx4wElLXsg7R209qKKVZHTgOfrE8EaOPZvDwAWe7', 1, '2019-03-16 08:37:06', '2019-03-16 08:37:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(113, 7, 1, 'Huawei', '', 'catalog/lenovo/lenovo-yoga-tab3-plus.jpg', 0),
(114, 7, 1, 'Lenovo', '', 'catalog/Huawei/huawei-watch-gt-1.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(112, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(110, 7, 1, 'trade', '', 'catalog/demo/sony_vaio_3.jpg', 0),
(111, 7, 1, 'trade2', '', 'catalog/demo/sony_vaio_2.jpg', 0),
(109, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(1, 0, 1, 'dc1f78a5e11e6b7805f45ce0b8', 30, 0, '{\"226\":\"15\"}', 1, '2019-03-25 09:12:41'),
(2, 0, 1, 'dc1f78a5e11e6b7805f45ce0b8', 47, 0, '{\"225\":\"2011-04-22\"}', 1, '2019-03-25 09:21:30'),
(3, 0, 1, 'dc1f78a5e11e6b7805f45ce0b8', 32, 0, '[]', 1, '2019-03-25 09:30:40'),
(6, 0, 10, '1e71e7c9ab5c742e775a570efd', 30, 0, '{\"226\":\"15\"}', 1, '2019-04-17 17:30:51');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Мониторы', '', 'Мониторы', '', ''),
(33, 1, 'Камеры', '', 'Камеры', '', ''),
(32, 1, 'Веб камеры', '', 'Веб камеры', '', ''),
(31, 1, 'Сканеры', '', 'Сканеры', '', ''),
(30, 1, 'Принтеры', '', 'Принтеры', '', ''),
(29, 1, 'Манипуляторы мышь', '', 'Манипуляторы мышь', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(17, 1, 'Софт', '', 'Софт', '', ''),
(25, 1, 'Комплектующие', '', 'Комплектующие', '', ''),
(24, 1, 'Телефоны', '', 'Телефоны', '', ''),
(20, 1, 'Компьютеры', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Компьютеры', 'Example of category description', ''),
(35, 1, 'test 1', '', 'test 1', '', ''),
(36, 1, 'test 2', '', 'test 2', '', ''),
(37, 1, 'test 5', '', 'test 5', '', ''),
(38, 1, 'test 4', '', 'test 4', '', ''),
(39, 1, 'test 6', '', 'test 6', '', ''),
(40, 1, 'test 7', '', 'test 7', '', ''),
(41, 1, 'test 8', '', 'test 8', '', ''),
(42, 1, 'test 9', '', 'test 9', '', ''),
(43, 1, 'test 11', '', 'test 11', '', ''),
(34, 1, 'MP3 плееры', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 плееры', '', ''),
(18, 1, 'Ноутбуки', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Ноутбуки', '', ''),
(44, 1, 'test 12', '', 'test 12', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(47, 1, 'test 15', '', 'test 15', '', ''),
(48, 1, 'test 16', '', 'test 16', '', ''),
(49, 1, 'test 17', '', 'test 17', '', ''),
(50, 1, 'test 18', '', 'test 18', '', ''),
(51, 1, 'test 19', '', 'test 19', '', ''),
(52, 1, 'test 20', '', 'test 20', '', ''),
(53, 1, 'test 21', '', 'test 21', '', ''),
(54, 1, 'test 22', '', 'test 22', '', ''),
(55, 1, 'test 23', '', 'test 23', '', ''),
(56, 1, 'test 24', '', 'test 24', '', ''),
(57, 1, 'Планшеты', '', 'Планшеты', '', ''),
(58, 1, 'test 25', '', 'test 25', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_google_product_category`
--

CREATE TABLE `oc_category_to_google_product_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'рубль', 'RUB', 'руб.', 'г.', '0', 1.00000000, 1, '2019-04-23 05:11:03'),
(2, 'гривна', 'UAH', 'гр.', 'грю', '2', 0.41882185, 1, '2019-04-23 05:11:03');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'Михаил', 'Хазеев', 'kaizen@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(2, 1, 0, 0, 'Иван', 'Петров', 'moti@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(3, 1, 0, 0, 'Петр', 'Иванов', 'piter@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(4, 1, 0, 0, 'Ольга', 'Хазеева', 'olga@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(5, 1, 0, 0, 'Сергей', 'Камасьев', 'kaizen@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(6, 1, 0, 0, 'Олег', 'Рылеев', 'kaizen@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(7, 1, 0, 0, 'Николай', 'Цепюк', 'kaizen@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(8, 1, 0, 0, 'Дмитрий', 'Стецюк', 'kaizen@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(9, 1, 0, 0, 'Алик', 'Белов', 'kaizen@list.ru', '068 2523312', '', '3ef708d3655d030d88ad9e6bc8d5aa3efdcfbe84', 'FxilBaNNW', '', '0', 0, 0, '[]', '178.212.195.36', 1, 0, '', '', '2019-03-16 09:25:17'),
(10, 1, 0, 1, 'michaael', 'khazeev', 'kaizenroot@gmail.com', '068 2523312', '', '9c8cad6c62a2cddd10740f519f53bc0209b411f3', '33kmTMFdU', NULL, NULL, 0, 0, '', '178.212.195.36', 1, 0, '', '', '2019-04-17 16:07:12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', '{\"customer_id\":1,\"name\":\"\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b \\u0425\\u0430\\u0437\\u0435\\u0435\\u0432\"}', '178.212.195.36', '2019-03-16 09:25:17'),
(2, 0, 'affiliate_add', '{\"customer_id\":null,\"name\":\"\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b \\u0425\\u0430\\u0437\\u0435\\u0435\\u0432\"}', '178.212.195.36', '2019-03-16 09:25:17'),
(3, 10, 'register', '{\"customer_id\":10,\"name\":\"michaael khazeev\"}', '178.212.195.36', '2019-04-17 16:07:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_affiliate`
--

INSERT INTO `oc_customer_affiliate` (`customer_id`, `company`, `website`, `tracking`, `commission`, `tax`, `payment`, `cheque`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `custom_field`, `status`, `date_added`) VALUES
(1, 'moti', 'moti.svyaznoytv.com', 'Ns1ROlRpG7TnzhbLSg9ZQte5rrieUNnaS3Pl4wJtGtCQrQM5B1mcK23X3JsT3ThC', '5.00', '', 'cheque', 'michael', '', '', '', '', '', '', '', 1, '2019-03-17 09:48:34'),
(0, 'moti', 'moti.svyaznoytv.com', '1234567890', '5.00', '', 'cheque', 'michael', '', '', '', '', '', '', '', 1, '2019-03-16 09:30:28');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '178.212.195.36', '2019-03-16 09:25:18'),
(2, 10, '178.212.195.36', '2019-04-17 16:07:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'kaizen@list.ru', '178.212.195.36', 1, '2019-04-17 13:05:46', '2019-04-17 13:05:46');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('66.249.79.214', 0, 'http://xn--b1akgpfo3h.com.ua/index.php?route=product/manufacturer', '', '2019-05-05 05:05:25');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0),
(50, 'module_integrated_vqmod', 'admin/controller/marketplace/modification/refresh/before', 'extension/module/integrated_vqmod/ControllerMarketplaceModificationRefreshBefore', 1, 0),
(51, 'module_integrated_vqmod', 'admin/view/marketplace/modification/before', 'extension/module/integrated_vqmod/ViewMarketplaceModificationBefore', 1, 0),
(52, 'module_integrated_vqmod', 'admin/controller/marketplace/installer/upload/before', 'extension/module/integrated_vqmod/ControllerMarketplaceInstallerUploadBefore', 1, 0),
(53, 'module_integrated_vqmod', 'admin/controller/marketplace/install/xml/before', 'extension/module/integrated_vqmod/ControllerMarketplaceInstallXmlBefore', 1, 0),
(54, 'module_integrated_vqmod', 'admin/view/design/layout_form/before', 'extension/module/integrated_vqmod/eventViewDesignLayoutFormBefore', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'store'),
(44, 'module', 'pp_button'),
(45, 'module', 'latest'),
(46, 'module', 'filter'),
(47, 'module', 'bestseller'),
(51, 'shipping', 'novaposhta'),
(50, 'module', 'integrated_vqmod'),
(52, 'shipping', 'novaposhtacopy'),
(53, 'module', 'special');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'localcopy_oc3.ocmod.zip', '2019-03-16 08:39:35'),
(2, 0, 'opencart-3-x-export-import-multilingual-3-19-cloud.ocmod.zip', '2019-03-16 08:46:54'),
(8, 0, 'calc_novaposhta_3.0_rus.ocmod.zip', '2019-03-25 09:09:15'),
(5, 0, '[ocmod.net] priceview_oc3x.ocmod.zip', '2019-03-20 06:15:11'),
(6, 0, '[ocmod.net] enable-disable-products_oc3x.ocmod.zip', '2019-03-20 06:18:37'),
(7, 0, 'opencart-3-0-x-vqmod-2-6-1-5.ocmod.zip', '2019-03-20 06:29:50'),
(9, 0, 'calc_novaposhta_translate_3.0.rus.ocmod.zip', '2019-03-25 09:22:45'),
(10, 0, 'excelport.ocmod.zip', '2019-04-16 06:06:35');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 2, 'system/library/export_import', '2019-03-16 08:46:54'),
(2, 2, 'admin/controller/extension/export_import.php', '2019-03-16 08:46:54'),
(3, 2, 'admin/model/extension/export_import.php', '2019-03-16 08:46:54'),
(4, 2, 'admin/view/image/export-import', '2019-03-16 08:46:54'),
(5, 2, 'admin/view/stylesheet/export_import.css', '2019-03-16 08:46:54'),
(6, 2, 'system/library/export_import/Classes', '2019-03-16 08:46:54'),
(7, 2, 'admin/language/en-gb/extension/export_import.php', '2019-03-16 08:46:54'),
(8, 2, 'admin/view/image/export-import/loading.gif', '2019-03-16 08:46:54'),
(9, 2, 'admin/view/template/extension/export_import.twig', '2019-03-16 08:46:54'),
(10, 2, 'system/library/export_import/Classes/PHPExcel', '2019-03-16 08:46:54'),
(11, 2, 'system/library/export_import/Classes/PHPExcel.php', '2019-03-16 08:46:54'),
(12, 2, 'system/library/export_import/Classes/PHPExcel/Autoloader.php', '2019-03-16 08:46:54'),
(13, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage', '2019-03-16 08:46:54'),
(14, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php', '2019-03-16 08:46:54'),
(15, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine', '2019-03-16 08:46:54'),
(16, 2, 'system/library/export_import/Classes/PHPExcel/Calculation', '2019-03-16 08:46:54'),
(17, 2, 'system/library/export_import/Classes/PHPExcel/Calculation.php', '2019-03-16 08:46:54'),
(18, 2, 'system/library/export_import/Classes/PHPExcel/Cell', '2019-03-16 08:46:54'),
(19, 2, 'system/library/export_import/Classes/PHPExcel/Cell.php', '2019-03-16 08:46:54'),
(20, 2, 'system/library/export_import/Classes/PHPExcel/Chart', '2019-03-16 08:46:54'),
(21, 2, 'system/library/export_import/Classes/PHPExcel/Chart.php', '2019-03-16 08:46:54'),
(22, 2, 'system/library/export_import/Classes/PHPExcel/Comment.php', '2019-03-16 08:46:54'),
(23, 2, 'system/library/export_import/Classes/PHPExcel/DocumentProperties.php', '2019-03-16 08:46:54'),
(24, 2, 'system/library/export_import/Classes/PHPExcel/DocumentSecurity.php', '2019-03-16 08:46:54'),
(25, 2, 'system/library/export_import/Classes/PHPExcel/Exception.php', '2019-03-16 08:46:54'),
(26, 2, 'system/library/export_import/Classes/PHPExcel/HashTable.php', '2019-03-16 08:46:54'),
(27, 2, 'system/library/export_import/Classes/PHPExcel/Helper', '2019-03-16 08:46:54'),
(28, 2, 'system/library/export_import/Classes/PHPExcel/IComparable.php', '2019-03-16 08:46:54'),
(29, 2, 'system/library/export_import/Classes/PHPExcel/IOFactory.php', '2019-03-16 08:46:54'),
(30, 2, 'system/library/export_import/Classes/PHPExcel/NamedRange.php', '2019-03-16 08:46:54'),
(31, 2, 'system/library/export_import/Classes/PHPExcel/Reader', '2019-03-16 08:46:54'),
(32, 2, 'system/library/export_import/Classes/PHPExcel/ReferenceHelper.php', '2019-03-16 08:46:54'),
(33, 2, 'system/library/export_import/Classes/PHPExcel/RichText', '2019-03-16 08:46:54'),
(34, 2, 'system/library/export_import/Classes/PHPExcel/RichText.php', '2019-03-16 08:46:54'),
(35, 2, 'system/library/export_import/Classes/PHPExcel/Settings.php', '2019-03-16 08:46:54'),
(36, 2, 'system/library/export_import/Classes/PHPExcel/Shared', '2019-03-16 08:46:54'),
(37, 2, 'system/library/export_import/Classes/PHPExcel/Style', '2019-03-16 08:46:54'),
(38, 2, 'system/library/export_import/Classes/PHPExcel/Style.php', '2019-03-16 08:46:54'),
(39, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet', '2019-03-16 08:46:54'),
(40, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet.php', '2019-03-16 08:46:54'),
(41, 2, 'system/library/export_import/Classes/PHPExcel/WorksheetIterator.php', '2019-03-16 08:46:54'),
(42, 2, 'system/library/export_import/Classes/PHPExcel/Writer', '2019-03-16 08:46:54'),
(43, 2, 'system/library/export_import/Classes/PHPExcel/locale', '2019-03-16 08:46:54'),
(44, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php', '2019-03-16 08:46:54'),
(45, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php', '2019-03-16 08:46:54'),
(46, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php', '2019-03-16 08:46:54'),
(47, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php', '2019-03-16 08:46:54'),
(48, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php', '2019-03-16 08:46:54'),
(49, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php', '2019-03-16 08:46:54'),
(50, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php', '2019-03-16 08:46:54'),
(51, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php', '2019-03-16 08:46:54'),
(52, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php', '2019-03-16 08:46:54'),
(53, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php', '2019-03-16 08:46:54'),
(54, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php', '2019-03-16 08:46:54'),
(55, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php', '2019-03-16 08:46:54'),
(56, 2, 'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php', '2019-03-16 08:46:54'),
(57, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php', '2019-03-16 08:46:54'),
(58, 2, 'system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php', '2019-03-16 08:46:54'),
(59, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Database.php', '2019-03-16 08:46:54'),
(60, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php', '2019-03-16 08:46:54'),
(61, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php', '2019-03-16 08:46:54'),
(62, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Exception.php', '2019-03-16 08:46:54'),
(63, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php', '2019-03-16 08:46:54'),
(64, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Financial.php', '2019-03-16 08:46:54'),
(65, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php', '2019-03-16 08:46:54'),
(66, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php', '2019-03-16 08:46:54'),
(67, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Function.php', '2019-03-16 08:46:54'),
(68, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Functions.php', '2019-03-16 08:46:54'),
(69, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Logical.php', '2019-03-16 08:46:54'),
(70, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php', '2019-03-16 08:46:54'),
(71, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php', '2019-03-16 08:46:54'),
(72, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php', '2019-03-16 08:46:54'),
(73, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/TextData.php', '2019-03-16 08:46:54'),
(74, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Token', '2019-03-16 08:46:54'),
(75, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt', '2019-03-16 08:46:54'),
(76, 2, 'system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php', '2019-03-16 08:46:54'),
(77, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DataType.php', '2019-03-16 08:46:54'),
(78, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php', '2019-03-16 08:46:54'),
(79, 2, 'system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php', '2019-03-16 08:46:54'),
(80, 2, 'system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php', '2019-03-16 08:46:54'),
(81, 2, 'system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php', '2019-03-16 08:46:54'),
(82, 2, 'system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php', '2019-03-16 08:46:54'),
(83, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Axis.php', '2019-03-16 08:46:54'),
(84, 2, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php', '2019-03-16 08:46:54'),
(85, 2, 'system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php', '2019-03-16 08:46:54'),
(86, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Exception.php', '2019-03-16 08:46:54'),
(87, 2, 'system/library/export_import/Classes/PHPExcel/Chart/GridLines.php', '2019-03-16 08:46:54'),
(88, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Layout.php', '2019-03-16 08:46:54'),
(89, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Legend.php', '2019-03-16 08:46:54'),
(90, 2, 'system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php', '2019-03-16 08:46:54'),
(91, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Properties.php', '2019-03-16 08:46:54'),
(92, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer', '2019-03-16 08:46:54'),
(93, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Title.php', '2019-03-16 08:46:54'),
(94, 2, 'system/library/export_import/Classes/PHPExcel/Helper/HTML.php', '2019-03-16 08:46:54'),
(95, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Abstract.php', '2019-03-16 08:46:54'),
(96, 2, 'system/library/export_import/Classes/PHPExcel/Reader/CSV.php', '2019-03-16 08:46:54'),
(97, 2, 'system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php', '2019-03-16 08:46:54'),
(98, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php', '2019-03-16 08:46:54'),
(99, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007', '2019-03-16 08:46:54'),
(100, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php', '2019-03-16 08:46:54'),
(101, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5', '2019-03-16 08:46:54'),
(102, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5.php', '2019-03-16 08:46:54'),
(103, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Exception.php', '2019-03-16 08:46:54'),
(104, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php', '2019-03-16 08:46:54'),
(105, 2, 'system/library/export_import/Classes/PHPExcel/Reader/HTML.php', '2019-03-16 08:46:54'),
(106, 2, 'system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php', '2019-03-16 08:46:54'),
(107, 2, 'system/library/export_import/Classes/PHPExcel/Reader/IReader.php', '2019-03-16 08:46:54'),
(108, 2, 'system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php', '2019-03-16 08:46:54'),
(109, 2, 'system/library/export_import/Classes/PHPExcel/Reader/SYLK.php', '2019-03-16 08:46:54'),
(110, 2, 'system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php', '2019-03-16 08:46:54'),
(111, 2, 'system/library/export_import/Classes/PHPExcel/RichText/Run.php', '2019-03-16 08:46:54'),
(112, 2, 'system/library/export_import/Classes/PHPExcel/RichText/TextElement.php', '2019-03-16 08:46:54'),
(113, 2, 'system/library/export_import/Classes/PHPExcel/Shared/CodePage.php', '2019-03-16 08:46:54'),
(114, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Date.php', '2019-03-16 08:46:54'),
(115, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Drawing.php', '2019-03-16 08:46:54'),
(116, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher', '2019-03-16 08:46:54'),
(117, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher.php', '2019-03-16 08:46:54'),
(118, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Excel5.php', '2019-03-16 08:46:54'),
(119, 2, 'system/library/export_import/Classes/PHPExcel/Shared/File.php', '2019-03-16 08:46:54'),
(120, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Font.php', '2019-03-16 08:46:54'),
(121, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA', '2019-03-16 08:46:54'),
(122, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE', '2019-03-16 08:46:54'),
(123, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE.php', '2019-03-16 08:46:54'),
(124, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLERead.php', '2019-03-16 08:46:54'),
(125, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip', '2019-03-16 08:46:54'),
(126, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php', '2019-03-16 08:46:54'),
(127, 2, 'system/library/export_import/Classes/PHPExcel/Shared/String.php', '2019-03-16 08:46:54'),
(128, 2, 'system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php', '2019-03-16 08:46:54'),
(129, 2, 'system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php', '2019-03-16 08:46:54'),
(130, 2, 'system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php', '2019-03-16 08:46:54'),
(131, 2, 'system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php', '2019-03-16 08:46:54'),
(132, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend', '2019-03-16 08:46:54'),
(133, 2, 'system/library/export_import/Classes/PHPExcel/Style/Alignment.php', '2019-03-16 08:46:54'),
(134, 2, 'system/library/export_import/Classes/PHPExcel/Style/Border.php', '2019-03-16 08:46:54'),
(135, 2, 'system/library/export_import/Classes/PHPExcel/Style/Borders.php', '2019-03-16 08:46:54'),
(136, 2, 'system/library/export_import/Classes/PHPExcel/Style/Color.php', '2019-03-16 08:46:54'),
(137, 2, 'system/library/export_import/Classes/PHPExcel/Style/Conditional.php', '2019-03-16 08:46:54'),
(138, 2, 'system/library/export_import/Classes/PHPExcel/Style/Fill.php', '2019-03-16 08:46:54'),
(139, 2, 'system/library/export_import/Classes/PHPExcel/Style/Font.php', '2019-03-16 08:46:54'),
(140, 2, 'system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php', '2019-03-16 08:46:54'),
(141, 2, 'system/library/export_import/Classes/PHPExcel/Style/Protection.php', '2019-03-16 08:46:54'),
(142, 2, 'system/library/export_import/Classes/PHPExcel/Style/Supervisor.php', '2019-03-16 08:46:54'),
(143, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter', '2019-03-16 08:46:54'),
(144, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php', '2019-03-16 08:46:54'),
(145, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php', '2019-03-16 08:46:54'),
(146, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php', '2019-03-16 08:46:54'),
(147, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Column.php', '2019-03-16 08:46:54'),
(148, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php', '2019-03-16 08:46:54'),
(149, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php', '2019-03-16 08:46:54'),
(150, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php', '2019-03-16 08:46:54'),
(151, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php', '2019-03-16 08:46:54'),
(152, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing', '2019-03-16 08:46:54'),
(153, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php', '2019-03-16 08:46:54'),
(154, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php', '2019-03-16 08:46:54'),
(155, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php', '2019-03-16 08:46:54'),
(156, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php', '2019-03-16 08:46:54'),
(157, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php', '2019-03-16 08:46:54'),
(158, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php', '2019-03-16 08:46:54'),
(159, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php', '2019-03-16 08:46:54'),
(160, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Row.php', '2019-03-16 08:46:54'),
(161, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php', '2019-03-16 08:46:54'),
(162, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php', '2019-03-16 08:46:54'),
(163, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php', '2019-03-16 08:46:54'),
(164, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php', '2019-03-16 08:46:54'),
(165, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Abstract.php', '2019-03-16 08:46:54'),
(166, 2, 'system/library/export_import/Classes/PHPExcel/Writer/CSV.php', '2019-03-16 08:46:54'),
(167, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007', '2019-03-16 08:46:54'),
(168, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php', '2019-03-16 08:46:54'),
(169, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5', '2019-03-16 08:46:54'),
(170, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5.php', '2019-03-16 08:46:54'),
(171, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Exception.php', '2019-03-16 08:46:54'),
(172, 2, 'system/library/export_import/Classes/PHPExcel/Writer/HTML.php', '2019-03-16 08:46:54'),
(173, 2, 'system/library/export_import/Classes/PHPExcel/Writer/IWriter.php', '2019-03-16 08:46:54'),
(174, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument', '2019-03-16 08:46:54'),
(175, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php', '2019-03-16 08:46:54'),
(176, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF', '2019-03-16 08:46:54'),
(177, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF.php', '2019-03-16 08:46:54'),
(178, 2, 'system/library/export_import/Classes/PHPExcel/locale/bg', '2019-03-16 08:46:54'),
(179, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs', '2019-03-16 08:46:54'),
(180, 2, 'system/library/export_import/Classes/PHPExcel/locale/da', '2019-03-16 08:46:54'),
(181, 2, 'system/library/export_import/Classes/PHPExcel/locale/de', '2019-03-16 08:46:54'),
(182, 2, 'system/library/export_import/Classes/PHPExcel/locale/en', '2019-03-16 08:46:54'),
(183, 2, 'system/library/export_import/Classes/PHPExcel/locale/es', '2019-03-16 08:46:54'),
(184, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi', '2019-03-16 08:46:54'),
(185, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr', '2019-03-16 08:46:54'),
(186, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu', '2019-03-16 08:46:54'),
(187, 2, 'system/library/export_import/Classes/PHPExcel/locale/it', '2019-03-16 08:46:54'),
(188, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl', '2019-03-16 08:46:54'),
(189, 2, 'system/library/export_import/Classes/PHPExcel/locale/no', '2019-03-16 08:46:54'),
(190, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl', '2019-03-16 08:46:54'),
(191, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt', '2019-03-16 08:46:54'),
(192, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru', '2019-03-16 08:46:54'),
(193, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv', '2019-03-16 08:46:54'),
(194, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr', '2019-03-16 08:46:54'),
(195, 2, 'system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php', '2019-03-16 08:46:54'),
(196, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt', '2019-03-16 08:46:54'),
(197, 2, 'system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php', '2019-03-16 08:46:54'),
(198, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php', '2019-03-16 08:46:54'),
(199, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php', '2019-03-16 08:46:54'),
(200, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color', '2019-03-16 08:46:54'),
(201, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php', '2019-03-16 08:46:54'),
(202, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php', '2019-03-16 08:46:54'),
(203, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php', '2019-03-16 08:46:54'),
(204, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php', '2019-03-16 08:46:54'),
(205, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php', '2019-03-16 08:46:54'),
(206, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style', '2019-03-16 08:46:54'),
(207, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer', '2019-03-16 08:46:54'),
(208, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php', '2019-03-16 08:46:54'),
(209, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer', '2019-03-16 08:46:54'),
(210, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php', '2019-03-16 08:46:54'),
(211, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT', '2019-03-16 08:46:54'),
(212, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php', '2019-03-16 08:46:54'),
(213, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php', '2019-03-16 08:46:54'),
(214, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php', '2019-03-16 08:46:54'),
(215, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php', '2019-03-16 08:46:54'),
(216, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php', '2019-03-16 08:46:54'),
(217, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php', '2019-03-16 08:46:54'),
(218, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils', '2019-03-16 08:46:54'),
(219, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php', '2019-03-16 08:46:54'),
(220, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS', '2019-03-16 08:46:54'),
(221, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php', '2019-03-16 08:46:54'),
(222, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt', '2019-03-16 08:46:54'),
(223, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php', '2019-03-16 08:46:54'),
(224, 2, 'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt', '2019-03-16 08:46:54'),
(225, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php', '2019-03-16 08:46:54'),
(226, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php', '2019-03-16 08:46:54'),
(227, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php', '2019-03-16 08:46:54'),
(228, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php', '2019-03-16 08:46:54'),
(229, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php', '2019-03-16 08:46:54'),
(230, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php', '2019-03-16 08:46:54'),
(231, 2, 'system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php', '2019-03-16 08:46:54'),
(232, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column', '2019-03-16 08:46:54'),
(233, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php', '2019-03-16 08:46:54'),
(234, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php', '2019-03-16 08:46:54'),
(235, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php', '2019-03-16 08:46:54'),
(236, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php', '2019-03-16 08:46:54'),
(237, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php', '2019-03-16 08:46:54'),
(238, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php', '2019-03-16 08:46:54'),
(239, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php', '2019-03-16 08:46:54'),
(240, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php', '2019-03-16 08:46:54'),
(241, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php', '2019-03-16 08:46:54'),
(242, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php', '2019-03-16 08:46:54'),
(243, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php', '2019-03-16 08:46:54'),
(244, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php', '2019-03-16 08:46:54'),
(245, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php', '2019-03-16 08:46:54'),
(246, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php', '2019-03-16 08:46:54'),
(247, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php', '2019-03-16 08:46:54'),
(248, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php', '2019-03-16 08:46:54'),
(249, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php', '2019-03-16 08:46:54'),
(250, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php', '2019-03-16 08:46:54'),
(251, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php', '2019-03-16 08:46:54'),
(252, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php', '2019-03-16 08:46:54'),
(253, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php', '2019-03-16 08:46:54'),
(254, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php', '2019-03-16 08:46:54'),
(255, 2, 'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php', '2019-03-16 08:46:54'),
(256, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell', '2019-03-16 08:46:54'),
(257, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php', '2019-03-16 08:46:54'),
(258, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php', '2019-03-16 08:46:54'),
(259, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php', '2019-03-16 08:46:54'),
(260, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php', '2019-03-16 08:46:54'),
(261, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php', '2019-03-16 08:46:54'),
(262, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php', '2019-03-16 08:46:54'),
(263, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php', '2019-03-16 08:46:54'),
(264, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php', '2019-03-16 08:46:54'),
(265, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php', '2019-03-16 08:46:54'),
(266, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php', '2019-03-16 08:46:54'),
(267, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php', '2019-03-16 08:46:54'),
(268, 2, 'system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php', '2019-03-16 08:46:54'),
(269, 2, 'system/library/export_import/Classes/PHPExcel/locale/bg/config', '2019-03-16 08:46:54'),
(270, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs/config', '2019-03-16 08:46:54'),
(271, 2, 'system/library/export_import/Classes/PHPExcel/locale/cs/functions', '2019-03-16 08:46:54'),
(272, 2, 'system/library/export_import/Classes/PHPExcel/locale/da/config', '2019-03-16 08:46:54'),
(273, 2, 'system/library/export_import/Classes/PHPExcel/locale/da/functions', '2019-03-16 08:46:54'),
(274, 2, 'system/library/export_import/Classes/PHPExcel/locale/de/config', '2019-03-16 08:46:54'),
(275, 2, 'system/library/export_import/Classes/PHPExcel/locale/de/functions', '2019-03-16 08:46:54'),
(276, 2, 'system/library/export_import/Classes/PHPExcel/locale/en/uk', '2019-03-16 08:46:54'),
(277, 2, 'system/library/export_import/Classes/PHPExcel/locale/es/config', '2019-03-16 08:46:54'),
(278, 2, 'system/library/export_import/Classes/PHPExcel/locale/es/functions', '2019-03-16 08:46:54'),
(279, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi/config', '2019-03-16 08:46:54'),
(280, 2, 'system/library/export_import/Classes/PHPExcel/locale/fi/functions', '2019-03-16 08:46:54'),
(281, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr/config', '2019-03-16 08:46:54'),
(282, 2, 'system/library/export_import/Classes/PHPExcel/locale/fr/functions', '2019-03-16 08:46:54'),
(283, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu/config', '2019-03-16 08:46:54'),
(284, 2, 'system/library/export_import/Classes/PHPExcel/locale/hu/functions', '2019-03-16 08:46:54'),
(285, 2, 'system/library/export_import/Classes/PHPExcel/locale/it/config', '2019-03-16 08:46:54'),
(286, 2, 'system/library/export_import/Classes/PHPExcel/locale/it/functions', '2019-03-16 08:46:54'),
(287, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl/config', '2019-03-16 08:46:54'),
(288, 2, 'system/library/export_import/Classes/PHPExcel/locale/nl/functions', '2019-03-16 08:46:54'),
(289, 2, 'system/library/export_import/Classes/PHPExcel/locale/no/config', '2019-03-16 08:46:54'),
(290, 2, 'system/library/export_import/Classes/PHPExcel/locale/no/functions', '2019-03-16 08:46:54'),
(291, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl/config', '2019-03-16 08:46:54'),
(292, 2, 'system/library/export_import/Classes/PHPExcel/locale/pl/functions', '2019-03-16 08:46:54'),
(293, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br', '2019-03-16 08:46:54'),
(294, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/config', '2019-03-16 08:46:54'),
(295, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/functions', '2019-03-16 08:46:54'),
(296, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru/config', '2019-03-16 08:46:54'),
(297, 2, 'system/library/export_import/Classes/PHPExcel/locale/ru/functions', '2019-03-16 08:46:54'),
(298, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv/config', '2019-03-16 08:46:54'),
(299, 2, 'system/library/export_import/Classes/PHPExcel/locale/sv/functions', '2019-03-16 08:46:54'),
(300, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr/config', '2019-03-16 08:46:54'),
(301, 2, 'system/library/export_import/Classes/PHPExcel/locale/tr/functions', '2019-03-16 08:46:54'),
(302, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php', '2019-03-16 08:46:54'),
(303, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php', '2019-03-16 08:46:54'),
(304, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php', '2019-03-16 08:46:54'),
(305, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php', '2019-03-16 08:46:54'),
(306, 2, 'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php', '2019-03-16 08:46:54'),
(307, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer', '2019-03-16 08:46:54'),
(308, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php', '2019-03-16 08:46:54'),
(309, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer', '2019-03-16 08:46:54'),
(310, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php', '2019-03-16 08:46:54'),
(311, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php', '2019-03-16 08:46:54'),
(312, 2, 'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php', '2019-03-16 08:46:54'),
(313, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php', '2019-03-16 08:46:54'),
(314, 2, 'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php', '2019-03-16 08:46:54'),
(315, 2, 'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php', '2019-03-16 08:46:54'),
(316, 2, 'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php', '2019-03-16 08:46:54'),
(317, 2, 'system/library/export_import/Classes/PHPExcel/locale/en/uk/config', '2019-03-16 08:46:54'),
(318, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/config', '2019-03-16 08:46:54'),
(319, 2, 'system/library/export_import/Classes/PHPExcel/locale/pt/br/functions', '2019-03-16 08:46:54'),
(320, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php', '2019-03-16 08:46:54'),
(321, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE', '2019-03-16 08:46:54'),
(322, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php', '2019-03-16 08:46:54'),
(323, 2, 'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php', '2019-03-16 08:46:54'),
(482, 8, 'catalog/language/uk-ua', '2019-03-25 09:09:16'),
(483, 8, 'admin/controller/localisation/city.php', '2019-03-25 09:09:16'),
(484, 8, 'admin/controller/localisation/city_update.php', '2019-03-25 09:09:16'),
(485, 8, 'admin/model/localisation/city.php', '2019-03-25 09:09:16'),
(486, 8, 'admin/model/localisation/city_update.php', '2019-03-25 09:09:16'),
(487, 8, 'catalog/language/uk-ua/extension', '2019-03-25 09:09:16'),
(488, 8, 'catalog/model/localisation/city.php', '2019-03-25 09:09:16'),
(489, 8, 'admin/controller/extension/shipping/novaposhta.php', '2019-03-25 09:09:16'),
(490, 8, 'admin/controller/extension/shipping/novaposhtacopy.php', '2019-03-25 09:09:16'),
(491, 8, 'admin/language/en-gb/localisation/city.php', '2019-03-25 09:09:16'),
(492, 8, 'admin/language/en-gb/localisation/city_update.php', '2019-03-25 09:09:16'),
(493, 8, 'admin/language/ru-ru/localisation/city.php', '2019-03-25 09:09:16'),
(494, 8, 'admin/language/ru-ru/localisation/city_update.php', '2019-03-25 09:09:16'),
(495, 8, 'admin/view/template/localisation/city_form.twig', '2019-03-25 09:09:16'),
(496, 8, 'admin/view/template/localisation/city_list.twig', '2019-03-25 09:09:16'),
(497, 8, 'admin/view/template/localisation/city_update_list.twig', '2019-03-25 09:09:16'),
(498, 8, 'catalog/language/uk-ua/extension/shipping', '2019-03-25 09:09:16'),
(499, 8, 'catalog/model/extension/shipping/novaposhta.php', '2019-03-25 09:09:16'),
(500, 8, 'catalog/model/extension/shipping/novaposhtacopy.php', '2019-03-25 09:09:16'),
(501, 8, 'admin/language/en-gb/extension/shipping/novaposhta.php', '2019-03-25 09:09:16'),
(502, 8, 'admin/language/en-gb/extension/shipping/novaposhtacopy.php', '2019-03-25 09:09:16'),
(503, 8, 'admin/language/ru-ru/extension/shipping/novaposhta.php', '2019-03-25 09:09:16'),
(504, 8, 'admin/language/ru-ru/extension/shipping/novaposhtacopy.php', '2019-03-25 09:09:16'),
(505, 8, 'admin/view/template/extension/shipping/novaposhta.twig', '2019-03-25 09:09:16'),
(506, 8, 'admin/view/template/extension/shipping/novaposhtacopy.twig', '2019-03-25 09:09:16'),
(507, 8, 'catalog/language/en-gb/extension/shipping/novaposhta.php', '2019-03-25 09:09:16'),
(508, 8, 'catalog/language/en-gb/extension/shipping/novaposhtacopy.php', '2019-03-25 09:09:16'),
(509, 8, 'catalog/language/ru-ru/extension/shipping/novaposhta.php', '2019-03-25 09:09:16'),
(510, 8, 'catalog/language/ru-ru/extension/shipping/novaposhtacopy.php', '2019-03-25 09:09:16'),
(511, 8, 'catalog/language/uk-ua/extension/shipping/novaposhta.php', '2019-03-25 09:09:16'),
(512, 8, 'catalog/language/uk-ua/extension/shipping/novaposhtacopy.php', '2019-03-25 09:09:16'),
(513, 10, 'system/library/vendor', '2019-04-16 06:06:35'),
(514, 10, 'admin/model/extension/module', '2019-04-16 06:06:35'),
(515, 10, 'admin/view/image/excelport', '2019-04-16 06:06:35'),
(516, 10, 'admin/view/javascript/excelport', '2019-04-16 06:06:35'),
(517, 10, 'admin/view/stylesheet/excelport.css', '2019-04-16 06:06:35'),
(518, 10, 'system/library/vendor/isenselabs', '2019-04-16 06:06:35'),
(519, 10, 'admin/controller/extension/module/excelport.php', '2019-04-16 06:06:35'),
(520, 10, 'admin/model/extension/module/excelport.php', '2019-04-16 06:06:35'),
(521, 10, 'admin/model/extension/module/excelport_attribute.php', '2019-04-16 06:06:35'),
(522, 10, 'admin/model/extension/module/excelport_category.php', '2019-04-16 06:06:35'),
(523, 10, 'admin/model/extension/module/excelport_coupon.php', '2019-04-16 06:06:35'),
(524, 10, 'admin/model/extension/module/excelport_customer.php', '2019-04-16 06:06:35'),
(525, 10, 'admin/model/extension/module/excelport_customer_group.php', '2019-04-16 06:06:35'),
(526, 10, 'admin/model/extension/module/excelport_manufacturer.php', '2019-04-16 06:06:35'),
(527, 10, 'admin/model/extension/module/excelport_option.php', '2019-04-16 06:06:35'),
(528, 10, 'admin/model/extension/module/excelport_order.php', '2019-04-16 06:06:35'),
(529, 10, 'admin/model/extension/module/excelport_product.php', '2019-04-16 06:06:35'),
(530, 10, 'admin/model/extension/module/excelport_product_bulk.php', '2019-04-16 06:06:35'),
(531, 10, 'admin/model/extension/module/excelport_voucher.php', '2019-04-16 06:06:35'),
(532, 10, 'admin/view/image/excelport/ajax-loader-2.gif', '2019-04-16 06:06:35'),
(533, 10, 'admin/view/image/excelport/ajax-loader.gif', '2019-04-16 06:06:35'),
(534, 10, 'admin/view/image/excelport/community.png', '2019-04-16 06:06:35'),
(535, 10, 'admin/view/image/excelport/pre-sale.png', '2019-04-16 06:06:35'),
(536, 10, 'admin/view/image/excelport/tickets.png', '2019-04-16 06:06:35'),
(537, 10, 'admin/view/javascript/excelport/help_increase_size.php', '2019-04-16 06:06:35'),
(538, 10, 'admin/view/javascript/excelport/index.html', '2019-04-16 06:06:35'),
(539, 10, 'system/library/vendor/isenselabs/excelport', '2019-04-16 06:06:35'),
(540, 10, 'admin/language/en-gb/extension/module/excelport.php', '2019-04-16 06:06:35'),
(541, 10, 'admin/view/template/extension/module/excelport', '2019-04-16 06:06:35'),
(542, 10, 'admin/view/template/extension/module/excelport.twig', '2019-04-16 06:06:35'),
(543, 10, 'system/library/vendor/isenselabs/excelport/excelport', '2019-04-16 06:06:35'),
(544, 10, 'system/library/vendor/isenselabs/excelport/excelportdb.php', '2019-04-16 06:06:35'),
(545, 10, 'system/library/vendor/isenselabs/excelport/index.html', '2019-04-16 06:06:35'),
(546, 10, 'system/library/vendor/isenselabs/excelport/phpexcel', '2019-04-16 06:06:35'),
(547, 10, 'admin/view/template/extension/module/excelport/tab_export.twig', '2019-04-16 06:06:35'),
(548, 10, 'admin/view/template/extension/module/excelport/tab_import.twig', '2019-04-16 06:06:35'),
(549, 10, 'admin/view/template/extension/module/excelport/tab_settings.twig', '2019-04-16 06:06:35'),
(550, 10, 'admin/view/template/extension/module/excelport/tab_support.twig', '2019-04-16 06:06:35'),
(551, 10, 'system/library/vendor/isenselabs/excelport/excelport/excelport_openstock.xml', '2019-04-16 06:06:35'),
(552, 10, 'system/library/vendor/isenselabs/excelport/excelport/index.html', '2019-04-16 06:06:35'),
(553, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_attribute.xlsx', '2019-04-16 06:06:35'),
(554, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_category.xlsx', '2019-04-16 06:06:35'),
(555, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_coupon.xlsx', '2019-04-16 06:06:35'),
(556, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_customer.xlsx', '2019-04-16 06:06:35'),
(557, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_customer_group.xlsx', '2019-04-16 06:06:35'),
(558, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_manufacturer.xlsx', '2019-04-16 06:06:35'),
(559, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_option.xlsx', '2019-04-16 06:06:35'),
(560, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_order.xlsx', '2019-04-16 06:06:35'),
(561, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_product_bulk.xlsx', '2019-04-16 06:06:35'),
(562, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_product_full.xlsx', '2019-04-16 06:06:35'),
(563, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_product_light.xlsx', '2019-04-16 06:06:35'),
(564, 10, 'system/library/vendor/isenselabs/excelport/excelport/template_voucher.xlsx', '2019-04-16 06:06:35'),
(565, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/CustomReadFilter.php', '2019-04-16 06:06:35'),
(566, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel', '2019-04-16 06:06:35'),
(567, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel.php', '2019-04-16 06:06:35'),
(568, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/index.html', '2019-04-16 06:06:35'),
(569, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Autoloader.php', '2019-04-16 06:06:35'),
(570, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage', '2019-04-16 06:06:35'),
(571, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorageFactory.php', '2019-04-16 06:06:35'),
(572, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CalcEngine', '2019-04-16 06:06:35'),
(573, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation', '2019-04-16 06:06:35'),
(574, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation.php', '2019-04-16 06:06:35'),
(575, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell', '2019-04-16 06:06:35'),
(576, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell.php', '2019-04-16 06:06:35'),
(577, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart', '2019-04-16 06:06:35'),
(578, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart.php', '2019-04-16 06:06:35'),
(579, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Comment.php', '2019-04-16 06:06:35'),
(580, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/DocumentProperties.php', '2019-04-16 06:06:35'),
(581, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/DocumentSecurity.php', '2019-04-16 06:06:35'),
(582, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Exception.php', '2019-04-16 06:06:35'),
(583, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/HashTable.php', '2019-04-16 06:06:35'),
(584, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Helper', '2019-04-16 06:06:35'),
(585, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/IComparable.php', '2019-04-16 06:06:35'),
(586, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/IOFactory.php', '2019-04-16 06:06:35'),
(587, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/NamedRange.php', '2019-04-16 06:06:35'),
(588, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader', '2019-04-16 06:06:35'),
(589, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/ReferenceHelper.php', '2019-04-16 06:06:35'),
(590, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/RichText', '2019-04-16 06:06:35'),
(591, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/RichText.php', '2019-04-16 06:06:35'),
(592, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Settings.php', '2019-04-16 06:06:35'),
(593, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared', '2019-04-16 06:06:35'),
(594, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style', '2019-04-16 06:06:35'),
(595, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style.php', '2019-04-16 06:06:35'),
(596, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet', '2019-04-16 06:06:35'),
(597, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet.php', '2019-04-16 06:06:35'),
(598, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/WorksheetIterator.php', '2019-04-16 06:06:35'),
(476, 5, 'catalog/view/javascript/priceview.js', '2019-03-20 06:15:12'),
(477, 5, 'catalog/view/theme/default/stylesheet/priceview.css', '2019-03-20 06:15:12'),
(478, 7, 'admin/controller/extension/module/integrated_vqmod.php', '2019-03-20 06:29:50'),
(479, 7, 'admin/language/en-gb/extension/module/integrated_vqmod.php', '2019-03-20 06:29:50'),
(480, 7, 'admin/view/template/extension/module/integrated_vqmod.twig', '2019-03-20 06:29:50'),
(481, 7, 'admin/view/template/extension/module/integrated_vqmod_marketplace_modification.twig', '2019-03-20 06:29:50'),
(599, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer', '2019-04-16 06:06:35'),
(600, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale', '2019-04-16 06:06:35'),
(601, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/APC.php', '2019-04-16 06:06:35'),
(602, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/CacheBase.php', '2019-04-16 06:06:35'),
(603, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/DiscISAM.php', '2019-04-16 06:06:35'),
(604, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/ICache.php', '2019-04-16 06:06:35'),
(605, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/Igbinary.php', '2019-04-16 06:06:35'),
(606, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/Memcache.php', '2019-04-16 06:06:35'),
(607, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/Memory.php', '2019-04-16 06:06:35'),
(608, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/MemoryGZip.php', '2019-04-16 06:06:35'),
(609, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/MemorySerialized.php', '2019-04-16 06:06:35'),
(610, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/PHPTemp.php', '2019-04-16 06:06:35'),
(611, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/SQLite.php', '2019-04-16 06:06:35'),
(612, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/SQLite3.php', '2019-04-16 06:06:35'),
(613, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CachedObjectStorage/Wincache.php', '2019-04-16 06:06:35'),
(614, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CalcEngine/CyclicReferenceStack.php', '2019-04-16 06:06:35'),
(615, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/CalcEngine/Logger.php', '2019-04-16 06:06:35'),
(616, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Database.php', '2019-04-16 06:06:35'),
(617, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/DateTime.php', '2019-04-16 06:06:35'),
(618, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Engineering.php', '2019-04-16 06:06:35'),
(619, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Exception.php', '2019-04-16 06:06:35'),
(620, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/ExceptionHandler.php', '2019-04-16 06:06:35'),
(621, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Financial.php', '2019-04-16 06:06:35'),
(622, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/FormulaParser.php', '2019-04-16 06:06:35'),
(623, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/FormulaToken.php', '2019-04-16 06:06:35'),
(624, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Function.php', '2019-04-16 06:06:35'),
(625, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Functions.php', '2019-04-16 06:06:35'),
(626, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Logical.php', '2019-04-16 06:06:35'),
(627, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/LookupRef.php', '2019-04-16 06:06:35'),
(628, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/MathTrig.php', '2019-04-16 06:06:35'),
(629, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Statistical.php', '2019-04-16 06:06:35'),
(630, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/TextData.php', '2019-04-16 06:06:35'),
(631, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Token', '2019-04-16 06:06:35'),
(632, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/functionlist.txt', '2019-04-16 06:06:35'),
(633, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell/AdvancedValueBinder.php', '2019-04-16 06:06:35'),
(634, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell/DataType.php', '2019-04-16 06:06:35'),
(635, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell/DataValidation.php', '2019-04-16 06:06:35'),
(636, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell/DefaultValueBinder.php', '2019-04-16 06:06:35'),
(637, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell/Hyperlink.php', '2019-04-16 06:06:35'),
(638, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Cell/IValueBinder.php', '2019-04-16 06:06:35'),
(639, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Axis.php', '2019-04-16 06:06:35'),
(640, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/DataSeries.php', '2019-04-16 06:06:35'),
(641, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/DataSeriesValues.php', '2019-04-16 06:06:35'),
(642, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Exception.php', '2019-04-16 06:06:35'),
(643, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/GridLines.php', '2019-04-16 06:06:35');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(644, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Layout.php', '2019-04-16 06:06:35'),
(645, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Legend.php', '2019-04-16 06:06:35'),
(646, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/PlotArea.php', '2019-04-16 06:06:35'),
(647, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Properties.php', '2019-04-16 06:06:35'),
(648, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Renderer', '2019-04-16 06:06:35'),
(649, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Title.php', '2019-04-16 06:06:35'),
(650, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Helper/HTML.php', '2019-04-16 06:06:35'),
(651, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Abstract.php', '2019-04-16 06:06:35'),
(652, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/CSV.php', '2019-04-16 06:06:35'),
(653, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/DefaultReadFilter.php', '2019-04-16 06:06:35'),
(654, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel2003XML.php', '2019-04-16 06:06:35'),
(655, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel2007', '2019-04-16 06:06:35'),
(656, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel2007.php', '2019-04-16 06:06:35'),
(657, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel5', '2019-04-16 06:06:35'),
(658, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel5.php', '2019-04-16 06:06:35'),
(659, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Exception.php', '2019-04-16 06:06:35'),
(660, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Gnumeric.php', '2019-04-16 06:06:35'),
(661, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/HTML.php', '2019-04-16 06:06:35'),
(662, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/IReadFilter.php', '2019-04-16 06:06:35'),
(663, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/IReader.php', '2019-04-16 06:06:35'),
(664, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/OOCalc.php', '2019-04-16 06:06:35'),
(665, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/SYLK.php', '2019-04-16 06:06:35'),
(666, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/RichText/ITextElement.php', '2019-04-16 06:06:35'),
(667, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/RichText/Run.php', '2019-04-16 06:06:35'),
(668, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/RichText/TextElement.php', '2019-04-16 06:06:35'),
(669, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/CodePage.php', '2019-04-16 06:06:35'),
(670, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Date.php', '2019-04-16 06:06:35'),
(671, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Drawing.php', '2019-04-16 06:06:35'),
(672, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher', '2019-04-16 06:06:35'),
(673, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher.php', '2019-04-16 06:06:35'),
(674, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Excel5.php', '2019-04-16 06:06:35'),
(675, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/File.php', '2019-04-16 06:06:35'),
(676, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Font.php', '2019-04-16 06:06:35'),
(677, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA', '2019-04-16 06:06:35'),
(678, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLE', '2019-04-16 06:06:35'),
(679, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLE.php', '2019-04-16 06:06:35'),
(680, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLERead.php', '2019-04-16 06:06:35'),
(681, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/PCLZip', '2019-04-16 06:06:35'),
(682, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/PasswordHasher.php', '2019-04-16 06:06:35'),
(683, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/String.php', '2019-04-16 06:06:35'),
(684, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/TimeZone.php', '2019-04-16 06:06:35'),
(685, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/XMLWriter.php', '2019-04-16 06:06:35'),
(686, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/ZipArchive.php', '2019-04-16 06:06:35'),
(687, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/ZipStreamWrapper.php', '2019-04-16 06:06:35'),
(688, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend', '2019-04-16 06:06:35'),
(689, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Alignment.php', '2019-04-16 06:06:35'),
(690, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Border.php', '2019-04-16 06:06:35'),
(691, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Borders.php', '2019-04-16 06:06:35'),
(692, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Color.php', '2019-04-16 06:06:35'),
(693, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Conditional.php', '2019-04-16 06:06:35'),
(694, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Fill.php', '2019-04-16 06:06:35'),
(695, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Font.php', '2019-04-16 06:06:35'),
(696, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/NumberFormat.php', '2019-04-16 06:06:35'),
(697, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Protection.php', '2019-04-16 06:06:35'),
(698, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Style/Supervisor.php', '2019-04-16 06:06:35'),
(699, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/AutoFilter', '2019-04-16 06:06:35'),
(700, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/AutoFilter.php', '2019-04-16 06:06:35'),
(701, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/BaseDrawing.php', '2019-04-16 06:06:35'),
(702, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/CellIterator.php', '2019-04-16 06:06:35'),
(703, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/Column.php', '2019-04-16 06:06:35'),
(704, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/ColumnCellIterator.php', '2019-04-16 06:06:35'),
(705, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/ColumnDimension.php', '2019-04-16 06:06:35'),
(706, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/ColumnIterator.php', '2019-04-16 06:06:35'),
(707, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/Drawing', '2019-04-16 06:06:35'),
(708, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/Drawing.php', '2019-04-16 06:06:35'),
(709, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/HeaderFooter.php', '2019-04-16 06:06:35'),
(710, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/HeaderFooterDrawing.php', '2019-04-16 06:06:35'),
(711, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/MemoryDrawing.php', '2019-04-16 06:06:35'),
(712, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/PageMargins.php', '2019-04-16 06:06:35'),
(713, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/PageSetup.php', '2019-04-16 06:06:35'),
(714, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/Protection.php', '2019-04-16 06:06:35'),
(715, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/Row.php', '2019-04-16 06:06:35'),
(716, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/RowCellIterator.php', '2019-04-16 06:06:35'),
(717, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/RowDimension.php', '2019-04-16 06:06:35'),
(718, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/RowIterator.php', '2019-04-16 06:06:35'),
(719, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/SheetView.php', '2019-04-16 06:06:35'),
(720, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Abstract.php', '2019-04-16 06:06:35'),
(721, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/CSV.php', '2019-04-16 06:06:35'),
(722, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007', '2019-04-16 06:06:35'),
(723, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007.php', '2019-04-16 06:06:35'),
(724, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5', '2019-04-16 06:06:35'),
(725, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5.php', '2019-04-16 06:06:35'),
(726, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Exception.php', '2019-04-16 06:06:35'),
(727, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/HTML.php', '2019-04-16 06:06:35'),
(728, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/IWriter.php', '2019-04-16 06:06:35'),
(729, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument', '2019-04-16 06:06:35'),
(730, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument.php', '2019-04-16 06:06:35'),
(731, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/PDF', '2019-04-16 06:06:35'),
(732, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/PDF.php', '2019-04-16 06:06:35'),
(733, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/bg', '2019-04-16 06:06:35'),
(734, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/cs', '2019-04-16 06:06:35'),
(735, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/da', '2019-04-16 06:06:35'),
(736, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/de', '2019-04-16 06:06:35'),
(737, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/en', '2019-04-16 06:06:35'),
(738, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/es', '2019-04-16 06:06:35'),
(739, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/fi', '2019-04-16 06:06:35'),
(740, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/fr', '2019-04-16 06:06:35'),
(741, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/hu', '2019-04-16 06:06:35'),
(742, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/it', '2019-04-16 06:06:35'),
(743, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/nl', '2019-04-16 06:06:35'),
(744, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/no', '2019-04-16 06:06:35'),
(745, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pl', '2019-04-16 06:06:35'),
(746, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pt', '2019-04-16 06:06:35'),
(747, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/ru', '2019-04-16 06:06:35'),
(748, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/sv', '2019-04-16 06:06:35'),
(749, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/tr', '2019-04-16 06:06:35'),
(750, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Calculation/Token/Stack.php', '2019-04-16 06:06:35'),
(751, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt', '2019-04-16 06:06:35'),
(752, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Chart/Renderer/jpgraph.php', '2019-04-16 06:06:35'),
(753, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel2007/Chart.php', '2019-04-16 06:06:35'),
(754, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel2007/Theme.php', '2019-04-16 06:06:35'),
(755, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel5/Escher.php', '2019-04-16 06:06:35'),
(756, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel5/MD5.php', '2019-04-16 06:06:35'),
(757, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Reader/Excel5/RC4.php', '2019-04-16 06:06:35'),
(758, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DgContainer', '2019-04-16 06:06:35'),
(759, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DgContainer.php', '2019-04-16 06:06:35'),
(760, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DggContainer', '2019-04-16 06:06:35'),
(761, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DggContainer.php', '2019-04-16 06:06:35'),
(762, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/CHANGELOG.TXT', '2019-04-16 06:06:35'),
(763, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/CholeskyDecomposition.php', '2019-04-16 06:06:35'),
(764, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php', '2019-04-16 06:06:35'),
(765, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/LUDecomposition.php', '2019-04-16 06:06:35'),
(766, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/Matrix.php', '2019-04-16 06:06:35'),
(767, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/QRDecomposition.php', '2019-04-16 06:06:35'),
(768, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/SingularValueDecomposition.php', '2019-04-16 06:06:35'),
(769, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/utils', '2019-04-16 06:06:35'),
(770, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLE/ChainedBlockStream.php', '2019-04-16 06:06:35'),
(771, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLE/PPS', '2019-04-16 06:06:35'),
(772, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLE/PPS.php', '2019-04-16 06:06:35'),
(773, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/PCLZip/gnu-lgpl.txt', '2019-04-16 06:06:35'),
(774, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/PCLZip/pclzip.lib.php', '2019-04-16 06:06:35'),
(775, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/PCLZip/readme.txt', '2019-04-16 06:06:35'),
(776, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend/bestFitClass.php', '2019-04-16 06:06:35'),
(777, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend/exponentialBestFitClass.php', '2019-04-16 06:06:35'),
(778, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend/linearBestFitClass.php', '2019-04-16 06:06:35'),
(779, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend/logarithmicBestFitClass.php', '2019-04-16 06:06:35'),
(780, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend/polynomialBestFitClass.php', '2019-04-16 06:06:35'),
(781, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend/powerBestFitClass.php', '2019-04-16 06:06:35'),
(782, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/trend/trendClass.php', '2019-04-16 06:06:35'),
(783, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/AutoFilter/Column', '2019-04-16 06:06:35'),
(784, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/AutoFilter/Column.php', '2019-04-16 06:06:35'),
(785, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/Drawing/Shadow.php', '2019-04-16 06:06:35'),
(786, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Chart.php', '2019-04-16 06:06:35'),
(787, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Comments.php', '2019-04-16 06:06:35'),
(788, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/ContentTypes.php', '2019-04-16 06:06:35'),
(789, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/DocProps.php', '2019-04-16 06:06:35'),
(790, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Drawing.php', '2019-04-16 06:06:35'),
(791, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Rels.php', '2019-04-16 06:06:35'),
(792, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/RelsRibbon.php', '2019-04-16 06:06:35'),
(793, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/RelsVBA.php', '2019-04-16 06:06:35'),
(794, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/StringTable.php', '2019-04-16 06:06:35'),
(795, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Style.php', '2019-04-16 06:06:35'),
(796, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Theme.php', '2019-04-16 06:06:35'),
(797, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Workbook.php', '2019-04-16 06:06:35'),
(798, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/Worksheet.php', '2019-04-16 06:06:35'),
(799, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel2007/WriterPart.php', '2019-04-16 06:06:35'),
(800, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5/BIFFwriter.php', '2019-04-16 06:06:35'),
(801, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5/Escher.php', '2019-04-16 06:06:35'),
(802, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5/Font.php', '2019-04-16 06:06:35'),
(803, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5/Parser.php', '2019-04-16 06:06:35'),
(804, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5/Workbook.php', '2019-04-16 06:06:35'),
(805, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5/Worksheet.php', '2019-04-16 06:06:35'),
(806, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/Excel5/Xf.php', '2019-04-16 06:06:35'),
(807, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Cell', '2019-04-16 06:06:35'),
(808, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Content.php', '2019-04-16 06:06:35'),
(809, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Meta.php', '2019-04-16 06:06:35'),
(810, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/MetaInf.php', '2019-04-16 06:06:35'),
(811, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Mimetype.php', '2019-04-16 06:06:35'),
(812, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Settings.php', '2019-04-16 06:06:35'),
(813, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Styles.php', '2019-04-16 06:06:35'),
(814, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Thumbnails.php', '2019-04-16 06:06:35'),
(815, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/WriterPart.php', '2019-04-16 06:06:35'),
(816, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/PDF/Core.php', '2019-04-16 06:06:35'),
(817, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/PDF/DomPDF.php', '2019-04-16 06:06:35'),
(818, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/PDF/mPDF.php', '2019-04-16 06:06:35'),
(819, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/PDF/tcPDF.php', '2019-04-16 06:06:35'),
(820, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/bg/config', '2019-04-16 06:06:35'),
(821, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/cs/config', '2019-04-16 06:06:35'),
(822, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/cs/functions', '2019-04-16 06:06:35'),
(823, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/da/config', '2019-04-16 06:06:35'),
(824, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/da/functions', '2019-04-16 06:06:35'),
(825, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/de/config', '2019-04-16 06:06:35'),
(826, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/de/functions', '2019-04-16 06:06:35'),
(827, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/en/uk', '2019-04-16 06:06:35'),
(828, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/es/config', '2019-04-16 06:06:35'),
(829, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/es/functions', '2019-04-16 06:06:35'),
(830, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/fi/config', '2019-04-16 06:06:35'),
(831, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/fi/functions', '2019-04-16 06:06:35'),
(832, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/fr/config', '2019-04-16 06:06:35'),
(833, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/fr/functions', '2019-04-16 06:06:35'),
(834, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/hu/config', '2019-04-16 06:06:35'),
(835, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/hu/functions', '2019-04-16 06:06:35'),
(836, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/it/config', '2019-04-16 06:06:35'),
(837, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/it/functions', '2019-04-16 06:06:35'),
(838, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/nl/config', '2019-04-16 06:06:35'),
(839, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/nl/functions', '2019-04-16 06:06:35'),
(840, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/no/config', '2019-04-16 06:06:35'),
(841, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/no/functions', '2019-04-16 06:06:35'),
(842, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pl/config', '2019-04-16 06:06:35'),
(843, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pl/functions', '2019-04-16 06:06:35'),
(844, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pt/br', '2019-04-16 06:06:35'),
(845, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pt/config', '2019-04-16 06:06:35'),
(846, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pt/functions', '2019-04-16 06:06:35'),
(847, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/ru/config', '2019-04-16 06:06:35'),
(848, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/ru/functions', '2019-04-16 06:06:35'),
(849, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/sv/config', '2019-04-16 06:06:35'),
(850, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/sv/functions', '2019-04-16 06:06:35'),
(851, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/tr/config', '2019-04-16 06:06:35'),
(852, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/tr/functions', '2019-04-16 06:06:35'),
(853, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DgContainer/SpgrContainer', '2019-04-16 06:06:35'),
(854, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php', '2019-04-16 06:06:35'),
(855, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer', '2019-04-16 06:06:35'),
(856, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php', '2019-04-16 06:06:35'),
(857, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/utils/Error.php', '2019-04-16 06:06:35'),
(858, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/JAMA/utils/Maths.php', '2019-04-16 06:06:35'),
(859, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLE/PPS/File.php', '2019-04-16 06:06:35'),
(860, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/OLE/PPS/Root.php', '2019-04-16 06:06:35'),
(861, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Worksheet/AutoFilter/Column/Rule.php', '2019-04-16 06:06:35'),
(862, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Writer/OpenDocument/Cell/Comment.php', '2019-04-16 06:06:35'),
(863, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/en/uk/config', '2019-04-16 06:06:35'),
(864, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pt/br/config', '2019-04-16 06:06:35'),
(865, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/locale/pt/br/functions', '2019-04-16 06:06:35'),
(866, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php', '2019-04-16 06:06:35'),
(867, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE', '2019-04-16 06:06:35'),
(868, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php', '2019-04-16 06:06:35'),
(869, 10, 'system/library/vendor/isenselabs/excelport/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php', '2019-04-16 06:06:35');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'Зона НДС', 'Облагаемые НДС', '2014-05-21 22:30:20', '2014-09-09 11:48:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'О нас', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'О нас', '', ''),
(5, 1, 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', 'Условия соглашения', '', ''),
(3, 1, 'Политика Безопасности', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Политика Безопасности', '', ''),
(6, 1, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru-ru.png', 'russian', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(74, 6, 'account', 'column_right', 1),
(92, 1, 'banner.31', 'content_top', 3),
(91, 1, 'banner.31', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(90, 1, 'carousel.29', 'content_top', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(54, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(60, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(2, 1, 'Миллиметр', 'мм');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_marketing`
--

INSERT INTO `oc_marketing` (`marketing_id`, `name`, `description`, `code`, `clicks`, `date_added`) VALUES
(1, 'affilan', '', '5c8ca302a417a', 0, '2019-03-16 09:21:45');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 1, 'Localcopy OCMOD Install Fix', 'localcopy-oc3', 'opencart3x.ru', '1.0', 'https://opencart3x.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Localcopy OCMOD Install Fix</name>\n  <code>localcopy-oc3</code>\n  <version>1.0</version>\n  <author>opencart3x.ru</author>\n  <link>https://opencart3x.ru</link>\n\n  <file path=\"admin/controller/marketplace/install.php\">\n	<operation>\n      <search>\n        <![CDATA[if ($safe) {]]>\n      </search>\n      <add position=\"before\">\n        <![CDATA[		\n		    $safe = true;\n		    ]]>\n      </add>\n    </operation>\n    <operation>\n      <search>\n        <![CDATA[if (is_dir($file) && !is_dir($path)) {]]>\n      </search>\n      <add position=\"before\">\n        <![CDATA[		\n			  if ($path == \'\') {\n  				$app_root = explode(\'/\',DIR_APPLICATION);\n  				unset($app_root[count($app_root)-2]);\n  				$app_root = implode(\'/\',$app_root);\n  				$path = $app_root . $destination;\n			  }\n		    ]]>\n      </add>\n    </operation>\n  </file> \n</modification>\n', 1, '2019-03-16 08:39:35'),
(2, 2, 'Export/Import Tool (V3.19) for OpenCart 3.x', 'Export/Import Tool (V3.19) for OpenCart 3.x', 'mhccorp.com', '3.x-3.19', 'https://www.mhccorp.com', '<modification>\n	<name>Export/Import Tool (V3.19) for OpenCart 3.x</name>\n	<code>Export/Import Tool (V3.19) for OpenCart 3.x</code>\n	<version>3.x-3.19</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/upload\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'extension/export_import\')) {\n				$maintenance[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'extension/export_import\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n', 1, '2019-03-16 08:46:54'),
(7, 8, 'OC 3: Новая Почта c калькулятором + отделения', 'novaposhta-3.0', 'm.s.tkalenko', '3.0', 'http://webmakers.com.ua/shop/novaya-pochta-c-kalkulyatorom-otdeleniya-dlya-opencart-3/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>OC 3: Новая Почта c калькулятором + отделения</name>\r\n  <code>novaposhta-3.0</code>\r\n  <version>3.0</version>\r\n  <author>m.s.tkalenko</author>\r\n  <link>http://webmakers.com.ua/shop/novaya-pochta-c-kalkulyatorom-otdeleniya-dlya-opencart-3/</link>\r\n	\r\n	<file path=\"catalog/model/tool/simpleapimain.php\">\r\n		<operation info=\"For Simple\">\r\n			<search trim=\"true\"><![CDATA[\r\n			\'id\'   => $result[\'city_id\'],\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			\'id\'   => $result[\'name\'],\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/common/column_left.php\">\r\n	  <operation info=\"Add City Link Action\">\r\n	    <search trim=\"true\"><![CDATA[\r\n		if ($this->user->hasPermission(\'access\', \'localisation/geo_zone\')) {\r\n        ]]></search>\r\n        <add position=\"before\"><![CDATA[			\r\n			if ($this->user->hasPermission(\'access\', \'localisation/city\')) {\r\n				$localisation[] = array(\r\n					\'name\'	   => $this->language->get(\'text_city\'),\r\n					\'href\'     => $this->url->link(\'localisation/city\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n					\'children\' => array()		\r\n				);\r\n			}]]></add>\r\n	  </operation>\r\n	</file>	\r\n	\r\n	<file path=\"admin/language/*/common/column_left.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_country\']                     = \'Области\';]]></add>\r\n	  </operation>\r\n	  \r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_zone.*)]]></search>\r\n        <add><![CDATA[$_[\'text_zone\']                        = \'Города\';]]></add>\r\n	  </operation>\r\n	  \r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_coupon.*)]]></search>\r\n        <add><![CDATA[\r\n		$_[\'text_coupon\']                      = \'Купоны\';\r\n		$_[\'text_city\']                        = \'Отделения новой почты\';\r\n		]]></add>\r\n	  </operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/customer/customer_form.twig\">\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search><![CDATA[\r\n						<label class=\"col-sm-2 control-label\" for=\"input-city{{ address_row }}\">{{ entry_city }}</label>\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"8\"><![CDATA[\r\n                        <label class=\"col-sm-2 control-label\" for=\"input-postcode{{ address_row }}\">{{ entry_postcode }}</label>\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add onchange attribute in zone select\">\r\n			<search><![CDATA[\r\n                          <select name=\"address[{{ address_row }}][zone_id]\" id=\"input-zone{{ address_row }}\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n                          <select name=\"address[{{ address_row }}][zone_id]\" id=\"input-zone{{ address_row }}\" class=\"form-control\" onchange=\"zone(this, \'{{ address_row }}\', \'{{ address_row }}][city] }}\');\">\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n		    <search><![CDATA[\r\n		        <div class=\"text-danger\">{{ error_address[address_row].zone }}</div>\r\n		    ]]></search>\r\n		    <add position=\"after\" offset=\"2\"><![CDATA[\r\n                      <div class=\"form-group required\">\r\n                        <label class=\"col-sm-2 control-label\" for=\"input-city{{ address_row }}\">{{ entry_city }}</label>\r\n                        <div class=\"col-sm-10\">\r\n                          <input type=\"text\" name=\"address[{{ address_row }}][city]\" value=\"{{ address.city }}\" placeholder=\"{{ entry_city }}\" id=\"input-city{{ address_row }}\" class=\"form-control\" />\r\n                          {% if error_address[address_row].city %}\r\n                          <div class=\"text-danger\">{{ error_address[address_row].city }}</div>\r\n                          {% endif %}</div>\r\n                      </div>\r\n		    ]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Remove city field in addAddress function\">\r\n			<search><![CDATA[\r\n	html += \'    <label class=\"col-sm-2 control-label\" for=\"input-city\' + address_row + \'\">{{ entry_city }}</label>\';\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"5\"><![CDATA[\r\n	html += \'    <label class=\"col-sm-2 control-label\" for=\"input-postcode\' + address_row + \'\">{{ entry_postcode }}</label>\';\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone in addAddress function\">\r\n			<search><![CDATA[\r\n	html += \'    <div class=\"col-sm-10\"><select name=\"address[\' + address_row + \'][zone_id]\" id=\"input-zone\' + address_row + \'\" class=\"form-control\"><option value=\"\">{{ text_none }}</option></select></div>\';\r\n			]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[\r\n	html += \'  <div class=\"form-group required\">\';\r\n	html += \'    <label class=\"col-sm-2 control-label\" for=\"input-city\' + address_row + \'\">{{ entry_city }}</label>\';\r\n	html += \'    <div class=\"col-sm-10\"><select name=\"address[\' + address_row + \'][city]\" id=\"input-city\' + address_row + \'\" class=\"form-control\"><option value=\"\">{{ text_none }}</option></select></div>\';\r\n	html += \'  </div>\';\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add onchange attribute in zone select\">\r\n			<search><![CDATA[\r\n	html += \'    <div class=\"col-sm-10\"><select name=\"address[\' + address_row + \'][zone_id]\" id=\"input-zone\' + address_row + \'\" class=\"form-control\"><option value=\"\">{{ text_none }}</option></select></div>\';\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n	html += \'    <div class=\"col-sm-10\"><select name=\"address[\' + address_row + \'][zone_id]\" id=\"input-zone\' + address_row + \'\" class=\"form-control\" onchange=\"zone(this, \\\'\' + address_row + \'\\\', \\\'0\\\');\"><option value=\"\">{{ text_none }}</option></select></div>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/controller/sale/order.php\">\r\n		<operation info=\"Add AJAX Response\">\r\n			<search trim=\"true\"><![CDATA[\r\n	public function history() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function zone() {\r\n		$json = array();\r\n\r\n		$this->load->model(\'localisation/zone\');\r\n\r\n		$zone_info = $this->model_localisation_zone->getZone($this->request->get[\'zone_id\']);\r\n\r\n		if ($zone_info) {\r\n			$this->load->model(\'localisation/city\');\r\n\r\n			$json = array(\r\n				\'zone_id\'   => $zone_info[\'zone_id\'],\r\n				\'name\'      => $zone_info[\'name\'],\r\n				\'city\'      => $this->model_localisation_city->getCitiesByZoneId($this->request->get[\'zone_id\']),\r\n				\'status\'    => $zone_info[\'status\']\r\n			);\r\n		}\r\n\r\n        $this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/sale/order_form.twig\">\r\n		<operation info=\"Remove city field at Payment Tab\">\r\n			<search trim=\"true\">\r\n				<![CDATA[<label class=\"col-sm-2 control-label\" for=\"input-payment-city\">{{ entry_city }}</label>]]>\r\n			</search>\r\n			<add position=\"replace\" offset=\"5\"><![CDATA[]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Remove city field at Shipping Tab\">\r\n			<search trim=\"true\">\r\n			<![CDATA[<label class=\"col-sm-2 control-label\" for=\"input-shipping-city\">{{ entry_city }}</label>]]>\r\n			</search>\r\n			<add position=\"replace\" offset=\"5\"><![CDATA[]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone at payment tab\">\r\n			<search trim=\"true\"><![CDATA[\r\n                  <select name=\"zone_id\" id=\"input-payment-zone\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"after\" offset=\"3\"><![CDATA[\r\n              <div class=\"form-group required\">\r\n                <label class=\"col-sm-2 control-label\" for=\"input-payment-city\">{{ entry_city }}</label>\r\n                <div class=\"col-sm-10\">\r\n                  <select name=\"city\" id=\"input-payment-city\" class=\"form-control\">\r\n                  </select>\r\n                </div>\r\n              </div>\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search trim=\"true\"><![CDATA[\r\n                  <select name=\"zone_id\" id=\"input-shipping-zone\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"after\" offset=\"3\"><![CDATA[\r\n              <div class=\"form-group required\">\r\n                <label class=\"col-sm-2 control-label\" for=\"input-shipping-city\">{{ entry_city }}</label>\r\n                <div class=\"col-sm-10\">\r\n                  <select name=\"city\" id=\"input-shipping-city\" class=\"form-control\">\r\n                  </select>\r\n                </div>\r\n              </div>\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Call zone function after country function is triggered\">\r\n			<search trim=\"true\"><![CDATA[\r\n            $(\'#tab-payment select[name=\\\'zone_id\\\']\').html(html);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n            $(\'#tab-payment select[name=\\\'city\\\']\').html(\'<option value=\"\">{{ text_select }}</option>\');\r\n            $(\'#tab-payment select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add AJAX change city based on selected zone\">\r\n			<search trim=\"true\"><![CDATA[\r\nvar payment_zone_id = \'{{ payment_zone_id }}\';\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\nvar payment_city = \'{{ payment_city }}\';\r\n\r\n$(\'#tab-payment select[name=\\\'zone_id\\\']\').on(\'change\', function() {\r\n    $.ajax({\r\n        url: \'index.php?route=sale/order/zone&user_token={{ user_token }}&zone_id=\' + this.value,\r\n        dataType: \'json\',\r\n        beforeSend: function() {\r\n            $(\'#tab-payment select[name=\\\'zone_id\\\']\').after(\'<i class=\"fa fa-circle-o-notch fa-spin\"></i>\');\r\n        },\r\n        complete: function() {\r\n            $(\'#tab-payment .fa-spin\').remove();\r\n        },\r\n        success: function(json) {\r\n            html = \'<option value=\"\">{{ text_select }}</option>\';\r\n\r\n            if (json[\'city\']) {\r\n                for (i = 0; i < json[\'city\'].length; i++) {\r\n                    html += \'<option value=\"\' + json[\'city\'][i][\'name\'] + \'\"\';\r\n\r\n                    if (json[\'city\'][i][\'name\'] == payment_city) {\r\n                        html += \' selected=\"selected\"\';\r\n                    }\r\n\r\n                    html += \'>\' + json[\'city\'][i][\'name\'] + \'</option>\';\r\n                }\r\n            } else {\r\n                html += \'<option value=\"0\" selected=\"selected\">{{ text_none }}</option>\';\r\n            }\r\n\r\n            $(\'#tab-payment select[name=\\\'city\\\']\').html(html);\r\n        },\r\n        error: function(xhr, ajaxOptions, thrownError) {\r\n            alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n        }\r\n    });\r\n});\r\n\r\n$(\'#tab-payment select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Get correct city when change address\">\r\n			<search trim=\"true\"><![CDATA[\r\n                $(\'#tab-payment input[name=\\\'city\\\']\').val(json[\'city\']);\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Get correct city when change address\">\r\n			<search trim=\"true\"><![CDATA[\r\n			payment_zone_id = json[\'zone_id\'];\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n            payment_city = json[\'city\'];\r\n            $(\'#tab-payment select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Call zone function after country function is triggered\">\r\n			<search trim=\"true\"><![CDATA[\r\n            $(\'#tab-shipping select[name=\\\'zone_id\\\']\').html(html);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n            $(\'#tab-shipping select[name=\\\'city\\\']\').html(\'<option value=\"\">{{ text_select }}</option>\');\r\n            $(\'#tab-shipping select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add AJAX change city based on selected zone\">\r\n			<search trim=\"true\"><![CDATA[\r\nvar shipping_zone_id = \'{{ shipping_zone_id }}\';\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\nvar shipping_city = \'{{ shipping_city }}\';\r\n\r\n$(\'#tab-shipping select[name=\\\'zone_id\\\']\').on(\'change\', function() {\r\n    $.ajax({\r\n        url: \'index.php?route=sale/order/zone&user_token={{ user_token }}&zone_id=\' + this.value,\r\n        dataType: \'json\',\r\n        beforeSend: function() {\r\n            $(\'select[name=\\\'shipping_address\\\']\').after(\' <i class=\"fa fa-circle-o-notch fa-spin\"></i>\');\r\n        },\r\n        complete: function() {\r\n            $(\'#tab-shipping .fa-spin\').remove();\r\n        },\r\n        success: function(json) {\r\n            html = \'<option value=\"\">{{ text_select }}</option>\';\r\n\r\n            if (json != \'\' && json[\'city\'] != \'\') {\r\n                for (i = 0; i < json[\'city\'].length; i++) {\r\n                    html += \'<option value=\"\' + json[\'city\'][i][\'name\'] + \'\"\';\r\n\r\n                    if (json[\'city\'][i][\'name\'] == shipping_city) {\r\n                        html += \' selected=\"selected\"\';\r\n                    }\r\n\r\n                    html += \'>\' + json[\'city\'][i][\'name\'] + \'</option>\';\r\n                }\r\n            } else {\r\n                html += \'<option value=\"0\" selected=\"selected\">{{ text_none }}</option>\';\r\n            }\r\n\r\n            $(\'#tab-shipping select[name=\\\'city\\\']\').html(html);\r\n        },\r\n        error: function(xhr, ajaxOptions, thrownError) {\r\n            alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n        }\r\n    });\r\n});\r\n\r\n$(\'#tab-shipping select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Get correct city when change address\">\r\n			<search trim=\"true\"><![CDATA[\r\n                $(\'#tab-shipping input[name=\\\'city\\\']\').val(json[\'city\']);\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Get correct city when change address\">\r\n			<search trim=\"true\"><![CDATA[\r\n			shipping_zone_id = json[\'zone_id\'];\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n                shipping_city = json[\'city\'];\r\n                $(\'#tab-shipping select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/account/address.php\">\r\n		<operation info=\"Get cities data\">\r\n			<search trim=\"true\"><![CDATA[\r\n		if (isset($this->request->post[\'city\'])) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		$this->load->model(\'localisation/city\');\r\n		$data[\'cities\'] = $this->model_localisation_city->getCities();\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add AJAX response\">\r\n			<search trim=\"true\"><![CDATA[\r\n	protected function validateDelete() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function zone() {\r\n		$json = array();\r\n\r\n		$this->load->model(\'localisation/zone\');\r\n\r\n		$zone_info = $this->model_localisation_zone->getZone($this->request->get[\'zone_id\']);\r\n\r\n		if ($zone_info) {\r\n			$this->load->model(\'localisation/city\');\r\n\r\n			$json = array(\r\n				\'zone_id\'   => $zone_info[\'zone_id\'],\r\n				\'name\'      => $zone_info[\'name\'],\r\n				\'city\'      => $this->model_localisation_city->getCitiesByZoneId($this->request->get[\'zone_id\']),\r\n				\'status\'    => $zone_info[\'status\']\r\n			);\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/account/register.php\">\r\n\r\n		<operation info=\"Add AJAX response\">\r\n			<search trim=\"true\"><![CDATA[\r\n	public function customfield() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function zone() {\r\n		$json = array();\r\n\r\n		$this->load->model(\'localisation/zone\');\r\n\r\n		$zone_info = $this->model_localisation_zone->getZone($this->request->get[\'zone_id\']);\r\n\r\n		if ($zone_info) {\r\n			$this->load->model(\'localisation/city\');\r\n\r\n			$json = array(\r\n				\'zone_id\'   => $zone_info[\'zone_id\'],\r\n				\'name\'      => $zone_info[\'name\'],\r\n				\'city\'      => $this->model_localisation_city->getCitiesByZoneId($this->request->get[\'zone_id\']),\r\n				\'status\'    => $zone_info[\'status\']\r\n			);\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/account/address_form.twig\">\r\n		<operation info=\"Remove city field\">\r\n			<search><![CDATA[\r\n              <label class=\"col-sm-2 control-label\" for=\"input-city\">{{ entry_city }}</label>\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"8\"><![CDATA[\r\n              <label class=\"col-sm-2 control-label\" for=\"input-postcode\">{{ entry_postcode }}</label>\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search><![CDATA[\r\n              <div class=\"text-danger\">{{ error_zone }}</div>\r\n			]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[\r\n          <div class=\"form-group required\">\r\n            <label class=\"col-sm-2 control-label\" for=\"input-city\">{{ entry_city }}</label>\r\n            <div class=\"col-sm-10\">\r\n              <select name=\"city\" id=\"input-city\" class=\"form-control\">\r\n              </select>\r\n              {% if (error_city) %} \r\n              <div class=\"text-danger\">{{ error_city }}</div>\r\n              {% endif %} \r\n            </div>\r\n          </div>\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Call zone function after country function is triggered\">\r\n			<search><![CDATA[\r\n                $(\'select[name=\\\'zone_id\\\']\').html(html);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n                $(\'select[name=\\\'city\\\']\').html(\'<option value=\"\">{{ text_select }}</option>\');\r\n                $(\'select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add AJAX change city based on selected zone\">\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n$(\'select[name=\\\'zone_id\\\']\').on(\'change\', function() {\r\n    if (this.value == \'\') return;\r\n    $.ajax({\r\n        url: \'index.php?route=account/register/zone&zone_id=\' + this.value,\r\n        dataType: \'json\',\r\n        beforeSend: function() {\r\n            $(\'select[name=\\\'zone_id\\\']\').after(\' <i class=\"fa fa-circle-o-notch fa-spin\"></i>\');\r\n        },\r\n        complete: function() {\r\n            $(\'.fa-spin\').remove();\r\n        },\r\n        success: function(json) {\r\n            $(\'.fa-spin\').remove();\r\n\r\n            html = \'<option value=\"\">{{ text_select }}</option>\';\r\n\r\n            if (json[\'city\']) {\r\n                for (i = 0; i < json[\'city\'].length; i++) {\r\n                    html += \'<option value=\"\' + json[\'city\'][i][\'name\'] + \'\"\';\r\n\r\n                    if (json[\'city\'][i][\'name\'] == \'{{ city }}\') {\r\n                        html += \' selected=\"selected\"\';\r\n                    }\r\n\r\n                    html += \'>\' + json[\'city\'][i][\'name\'] + \'</option>\';\r\n                }\r\n            } else {\r\n                html += \'<option value=\"0\" selected=\"selected\">{{ text_none }}</option>\';\r\n            }\r\n\r\n            $(\'select[name=\\\'city\\\']\').html(html);\r\n        },\r\n        error: function(xhr, ajaxOptions, thrownError) {\r\n            alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n        }\r\n    });\r\n});\r\n\r\n$(\'select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/extension/total/shipping.php\">\r\n\r\n      <operation info=\"get city session\">\r\n        <search><![CDATA[\r\n			if (isset($this->session->data[\'shipping_address\'][\'postcode\'])) {\r\n        ]]></search>\r\n        <add position=\"replace\" offset=\"5\"><![CDATA[\r\n			if (isset($this->session->data[\'shipping_address\'][\'city\'])) {\r\n				$data[\'city\'] = $this->session->data[\'shipping_address\'][\'city\'];\r\n			} else {\r\n				$data[\'city\'] = \'\';\r\n			}]]>\r\n        </add>\r\n      </operation>\r\n\r\n	  <operation info=\"remove postcode validation and add city validation\">\r\n	    <search><![CDATA[\r\n		if ($country_info && $country_info[\'postcode_required\'] && (utf8_strlen(trim($this->request->post[\'postcode\'])) < 2 || utf8_strlen(trim($this->request->post[\'postcode\'])) > 10)) {\r\n        ]]></search>\r\n        <add position=\"replace\" offset=\"2\"><![CDATA[\r\n		if (!isset($this->request->post[\'city\']) || $this->request->post[\'city\'] == \'\') {\r\n			$json[\'error\'][\'city\'] = $this->language->get(\'error_city\');\r\n		}]]>\r\n		</add>\r\n	  </operation>\r\n\r\n	  <operation info=\"add city data to array\">\r\n	    <search><![CDATA[\r\n				\'postcode\'       => $this->request->post[\'postcode\'],\r\n        ]]></search>\r\n        <add position=\"replace\" offset=\"1\"><![CDATA[\'postcode\'       => \'\',\r\n				\'city\'           => $this->request->post[\'city\'],]]></add>\r\n	  </operation>\r\n\r\n	  <operation>\r\n	    <search><![CDATA[\r\n	public function country() {\r\n	    ]]></search>\r\n	    <add position=\"before\"><![CDATA[\r\n	public function zone() {\r\n		$json = array();\r\n\r\n		$this->load->model(\'localisation/zone\');\r\n\r\n		$zone_info = $this->model_localisation_zone->getZone($this->request->get[\'zone_id\']);\r\n\r\n		if ($zone_info) {\r\n			$this->load->model(\'localisation/city\');\r\n\r\n			$json = array(\r\n				\'zone_id\'   => $zone_info[\'zone_id\'],\r\n				\'name\'      => $zone_info[\'name\'],\r\n				\'city\'      => $this->model_localisation_city->getCitiesByZoneId($this->request->get[\'zone_id\']),\r\n				\'status\'    => $zone_info[\'status\']\r\n			);\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n      ]]></add>\r\n	  </operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/extension/total/shipping.twig\">\r\n	  <operation info=\"replace postcode label\">\r\n	    <search><![CDATA[\r\n          <label class=\"col-sm-2 control-label\" for=\"input-postcode\">{{ entry_postcode }}</label>\r\n	    ]]></search>\r\n	    <add position=\"replace\"><![CDATA[\r\n          <label class=\"col-sm-2 control-label\" for=\"input-city\">{{ entry_city }}</label>]]>\r\n        </add>\r\n	  </operation>\r\n\r\n	  <operation info=\"replace postcode field\">\r\n	    <search><![CDATA[\r\n            <input type=\"text\" name=\"postcode\" value=\"{{ postcode }}\" placeholder=\"{{ entry_postcode }}\" id=\"input-postcode\" class=\"form-control\" />\r\n	    ]]></search>\r\n	    <add position=\"replace\"><![CDATA[\r\n            <select name=\"city\" id=\"input-city\" class=\"form-control\">\r\n            </select>]]>\r\n        </add>\r\n	  </operation>\r\n\r\n	  <operation info=\"replace ajax data\">\r\n	    <search><![CDATA[\r\n		data: \'country_id=\' + $(\'select[name=\\\'country_id\\\']\').val() + \'&zone_id=\' + $(\'select[name=\\\'zone_id\\\']\').val() + \'&postcode=\' + encodeURIComponent($(\'input[name=\\\'postcode\\\']\').val()),\r\n	    ]]></search>\r\n	    <add position=\"replace\"><![CDATA[		data: \'country_id=\' + $(\'select[name=\\\'country_id\\\']\').val() + \'&zone_id=\' + $(\'select[name=\\\'zone_id\\\']\').val() + \'&city=\' + $(\'select[name=\\\'city\\\']\').val(),]]>\r\n        </add>\r\n	  </operation>\r\n\r\n	  <operation>\r\n	    <search><![CDATA[\r\n			if (json[\'postcode_required\'] == \'1\') {\r\n	    ]]></search>\r\n	    <add position=\"replace\" offset=\"5\"><![CDATA[]]></add>\r\n	  </operation>\r\n\r\n	  <operation info=\"json error city\">\r\n	    <search><![CDATA[\r\n				if (json[\'error\'][\'postcode\']) {\r\n	    ]]></search>\r\n	    <add position=\"replace\" offset=\"2\"><![CDATA[if (json[\'error\'][\'city\']) {\r\n					$(\'select[name=\\\'city\\\']\').after(\'<div class=\"text-danger\">\' + json[\'error\'][\'city\'] + \'</div>\');\r\n				}]]>\r\n        </add>\r\n	  </operation>\r\n\r\n	  <operation info=\"restyle radio input\">\r\n	    <search><![CDATA[\r\n				$(\'input[name=\\\'shipping_method\\\']\').on(\'change\', function() {\r\n	    ]]></search>\r\n	    <add position=\"replace\" offset=\"2\"><![CDATA[$(\'input[name=\\\'shipping_method\\\']\').iCheck({ checkboxClass: \'icheckbox_flat\', radioClass: \'iradio_flat\', cursor: true });\r\n                $(\'div.radio label\').click(function() {\r\n					$(\'#button-shipping\').prop(\'disabled\', false);\r\n				});]]>\r\n        </add>\r\n	  </operation>\r\n\r\n	  <operation info=\"trigger select city\">\r\n	    <search><![CDATA[\r\n			$(\'select[name=\\\'zone_id\\\']\').html(html);\r\n	    ]]></search>\r\n	    <add position=\"after\"><![CDATA[\r\n            $(\'select[name=\\\'city\\\']\').html(\'<option value=\"\">{{ text_select }}</option>\');\r\n            $(\'select[name=\\\'zone_id\\\']\').trigger(\'change\');]]>\r\n        </add>\r\n	  </operation>\r\n\r\n      <operation info=\"Add AJAX change city based on selected zone\">\r\n			<search><![CDATA[\r\n$(\'select[name=\\\'country_id\\\']\').trigger(\'change\');\r\n			]]></search>\r\n			<add position=\"after\" offset=\"1\"><![CDATA[\r\n\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/checkout/guest.php\">\r\n		<operation info=\"Get payment cities data\">\r\n			<search trim=\"true\"><![CDATA[\r\n		if (isset($this->session->data[\'payment_address\'][\'city\'])) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		$this->load->model(\'localisation/city\');\r\n		$data[\'cities\'] = $this->model_localisation_city->getCities();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/checkout/guest_shipping.php\">\r\n		<operation info=\"Get shipping cities data\">\r\n			<search trim=\"true\"><![CDATA[\r\n		if (isset($this->session->data[\'shipping_address\'][\'city\'])) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		$this->load->model(\'localisation/city\');\r\n		$data[\'cities\'] = $this->model_localisation_city->getCities();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/checkout/{payment_address,register,shipping_address}*.php\">\r\n		<operation info=\"Get payment cities data\">\r\n			<search trim=\"true\"><![CDATA[\r\n		$this->load->model(\'localisation/country\');\r\n			]]></search>\r\n			<add position=\"before\" index=\"1\"><![CDATA[\r\n		$this->load->model(\'localisation/city\');\r\n\r\n		$data[\'cities\'] = $this->model_localisation_city->getCities();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/checkout/payment_address.php\">\r\n		<operation info=\"Put existed customer city in session\">\r\n			<search trim=\"true\"><![CDATA[\r\n		if (isset($this->session->data[\'payment_address\'][\'zone_id\'])) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		if (isset($this->session->data[\'payment_address\'][\'city\'])) {\r\n			$data[\'city\'] = $this->session->data[\'payment_address\'][\'city\'];\r\n		} else {\r\n			$data[\'city\'] = \'\';\r\n		}\r\n		]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Validate city session\">\r\n			<search trim=\"true\"><![CDATA[\r\n			if ((utf8_strlen($this->request->post[\'city\']) < 2) || (utf8_strlen($this->request->post[\'city\']) > 32)) {\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($this->request->post[\'city\'] == \'\') {\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/checkout/{register,shipping_address}*.php\">\r\n		<operation info=\"Add city session\">\r\n			<search trim=\"true\"><![CDATA[\r\n		if (isset($this->session->data[\'shipping_address\'][\'zone_id\'])) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		if (isset($this->session->data[\'shipping_address\'][\'city\'])) {\r\n			$data[\'city\'] = $this->session->data[\'shipping_address\'][\'city\'];\r\n		} else {\r\n			$data[\'city\'] = \'\';\r\n		}\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Validate city session\">\r\n			<search><![CDATA[\r\n			if ((utf8_strlen(trim($this->request->post[\'city\'])) < 2) || (utf8_strlen(trim($this->request->post[\'city\'])) > 128)) {\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($this->request->post[\'city\'] == \'\') {\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/checkout/checkout.php\">\r\n		<operation info=\"Add AJAX response\">\r\n			<search><![CDATA[\r\n			public function customfield() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	public function zone() {\r\n		$json = array();\r\n\r\n		$this->load->model(\'localisation/zone\');\r\n\r\n		$zone_info = $this->model_localisation_zone->getZone($this->request->get[\'zone_id\']);\r\n\r\n		if ($zone_info) {\r\n			$this->load->model(\'localisation/city\');\r\n\r\n			$json = array(\r\n				\'zone_id\'   => $zone_info[\'zone_id\'],\r\n				\'name\'      => $zone_info[\'name\'],\r\n				\'city\'      => $this->model_localisation_city->getCitiesByZoneId($this->request->get[\'zone_id\']),\r\n				\'status\'    => $zone_info[\'status\']\r\n			);\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/checkout/guest.twig\">\r\n		<operation info=\"Remove city field\">\r\n			<search><![CDATA[\r\n        <input type=\"text\" name=\"address_2\" value=\"{{ address_2 }}\" placeholder=\"{{ entry_address_2 }}\" id=\"input-payment-address-2\" class=\"form-control\" />\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"4\"><![CDATA[\r\n        <input type=\"text\" name=\"address_2\" value=\"{{ address_2 }}\" placeholder=\"{{ entry_address_2 }}\" id=\"input-payment-address-2\" class=\"form-control\" />\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search><![CDATA[\r\n        <select name=\"zone_id\" id=\"input-payment-zone\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[\r\n      <div class=\"form-group required\">\r\n        <label class=\"control-label\" for=\"input-payment-city\">{{ entry_city }}</label>\r\n        <select name=\"city\" id=\"input-payment-city\" class=\"form-control\">\r\n        </select>\r\n      </div>\r\n            ]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/checkout/{guest,payment_address,register}*.twig\">\r\n		<operation info=\"Call zone function after country function is triggered\">\r\n			<search><![CDATA[\r\n                $(\'#collapse-payment-address select[name=\\\'zone_id\\\']\').html(html);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n                $(\'#collapse-payment-address select[name=\\\'city\\\']\').html(\'<option value=\"\">{{ text_select }}</option>\');\r\n                $(\'#collapse-payment-address select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add AJAX change city based on selected zone\">\r\n			<search><![CDATA[\r\n$(\'#collapse-payment-address select[name=\\\'country_id\\\']\').trigger(\'change\');\r\n			]]></search>\r\n			<add position=\"after\" offset=\"1\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n$(\'#collapse-payment-address select[name=\\\'zone_id\\\']\').on(\'change\', function() {\r\n    if (this.value == \'\') return;\r\n    $.ajax({\r\n        url: \'index.php?route=checkout/checkout/zone&zone_id=\' + this.value,\r\n        dataType: \'json\',\r\n        beforeSend: function() {\r\n            $(\'#collapse-payment-address select[name=\\\'zone_id\\\']\').after(\' <i class=\"fa fa-circle-o-notch fa-spin\"></i>\');\r\n        },\r\n        complete: function() {\r\n            $(\'.fa-spin\').remove();\r\n        },\r\n        success: function(json) {\r\n            $(\'.fa-spin\').remove();\r\n\r\n            html = \'<option value=\"\">{{ text_select }}</option>\';\r\n\r\n            if (json[\'city\'] != \'\') {\r\n                for (i = 0; i < json[\'city\'].length; i++) {\r\n                    html += \'<option value=\"\' + json[\'city\'][i][\'name\'] + \'\"\';\r\n\r\n                    if (json[\'city\'][i][\'name\'] == \'{{ city }}\') {\r\n                        html += \' selected=\"selected\"\';\r\n                    }\r\n\r\n                    html += \'>\' + json[\'city\'][i][\'name\'] + \'</option>\';\r\n                }\r\n            } else {\r\n                html += \'<option value=\"0\" selected=\"selected\">{{ text_none }}</option>\';\r\n            }\r\n\r\n            $(\'#collapse-payment-address select[name=\\\'city\\\']\').html(html);\r\n        },\r\n        error: function(xhr, ajaxOptions, thrownError) {\r\n            alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n        }\r\n    });\r\n});\r\n\r\n$(\'#collapse-payment-address select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<!--file path=\"catalog/view/theme/*/template/checkout/guest_shipping.twig\">\r\n		<operation info=\"Remove city field\">\r\n			<search><![CDATA[\r\n      <input type=\"text\" name=\"address_2\" value=\"{{ address_2 }}\" placeholder=\"{{ entry_address_2 }}\" id=\"input-shipping-address-2\" class=\"form-control\" />\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"6\"><![CDATA[\r\n      <input type=\"text\" name=\"address_2\" value=\"{{ address_2 }}\" placeholder=\"{{ entry_address_2 }}\" id=\"input-shipping-address-2\" class=\"form-control\" />\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search><![CDATA[\r\n      <select name=\"zone_id\" id=\"input-shipping-zone\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"after\" offset=\"3\"><![CDATA[\r\n	  <div class=\"form-group required\">\r\n		<label class=\"col-sm-2 control-label\" for=\"input-shipping-city\">{{ entry_city }}</label>\r\n		<div class=\"col-sm-10\">\r\n		  <select name=\"city\" id=\"input-shipping-city\" class=\"form-control\">\r\n		  </select>\r\n		</div>\r\n	  </div>\r\n			]]></add>\r\n		</operation>\r\n	</file-->\r\n\r\n	<file path=\"catalog/view/theme/*/template/checkout/{guest_shipping,shipping_address}*.twig\">\r\n		<operation info=\"Remove city field\">\r\n			<search><![CDATA[\r\n	  placeholder=\"{{ entry_address_2 }}\" id=\"input-shipping-address-2\" class=\"form-control\" />\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"6\"><![CDATA[\r\n      <input type=\"text\" name=\"address_2\" value=\"{{ address_2 }}\" placeholder=\"{{ entry_address_2 }}\" id=\"input-shipping-address-2\" class=\"form-control\" />\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search><![CDATA[\r\n      <select name=\"zone_id\" id=\"input-shipping-zone\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"after\" offset=\"3\"><![CDATA[\r\n  <div class=\"form-group required\">\r\n    <label class=\"col-sm-2 control-label\" for=\"input-shipping-city\">{{ entry_city }}</label>\r\n    <div class=\"col-sm-10\">\r\n      <select name=\"city\" id=\"input-shipping-city\" class=\"form-control\">\r\n      </select>\r\n    </div>\r\n  </div>\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation info=\"Call zone function after country function is triggered\">\r\n			<search><![CDATA[\r\n                $(\'#collapse-shipping-address select[name=\\\'zone_id\\\']\').html(html);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n                $(\'#collapse-shipping-address select[name=\\\'city\\\']\').html(\'<option value=\"\">{{ text_select }}</option>\');\r\n                $(\'#collapse-shipping-address select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Add AJAX change city based on selected zone\">\r\n			<search><![CDATA[\r\n$(\'#collapse-shipping-address select[name=\\\'country_id\\\']\').trigger(\'change\');\r\n			]]></search>\r\n			<add position=\"after\" offset=\"1\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n$(\'#collapse-shipping-address select[name=\\\'zone_id\\\']\').on(\'change\', function() {\r\n    if (this.value == \'\') return;\r\n    $.ajax({\r\n        url: \'index.php?route=checkout/checkout/zone&zone_id=\' + this.value,\r\n        dataType: \'json\',\r\n        beforeSend: function() {\r\n            $(\'#collapse-shipping-address select[name=\\\'zone_id\\\']\').after(\' <i class=\"fa fa-circle-o-notch fa-spin\"></i>\');\r\n        },\r\n        complete: function() {\r\n            $(\'.fa-spin\').remove();\r\n        },\r\n        success: function(json) {\r\n            $(\'.fa-spin\').remove();\r\n\r\n            html = \'<option value=\"\">{{ text_select }}</option>\';\r\n\r\n            if (json[\'city\'] != \'\') {\r\n                for (i = 0; i < json[\'city\'].length; i++) {\r\n                    html += \'<option value=\"\' + json[\'city\'][i][\'name\'] + \'\"\';\r\n\r\n                    if (json[\'city\'][i][\'name\'] == \'{{ city }}\') {\r\n                        html += \' selected=\"selected\"\';\r\n                    }\r\n\r\n                    html += \'>\' + json[\'city\'][i][\'name\'] + \'</option>\';\r\n                }\r\n            } else {\r\n                html += \'<option value=\"0\" selected=\"selected\">{{ text_none }}</option>\';\r\n            }\r\n\r\n            $(\'#collapse-shipping-address select[name=\\\'city\\\']\').html(html);\r\n        },\r\n        error: function(xhr, ajaxOptions, thrownError) {\r\n            alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n        }\r\n    });\r\n});\r\n\r\n$(\'#collapse-shipping-address select[name=\\\'zone_id\\\']\').trigger(\'change\');\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/checkout/payment_address.twig\">\r\n		<operation info=\"Remove city field\">\r\n			<search><![CDATA[\r\n        <input type=\"text\" name=\"address_2\" value=\"\" placeholder=\"{{ entry_address_2 }}\" id=\"input-payment-address-2\" class=\"form-control\" />\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"6\"><![CDATA[\r\n        <input type=\"text\" name=\"address_2\" value=\"\" placeholder=\"{{ entry_address_2 }}\" id=\"input-payment-address-2\" class=\"form-control\" />\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search><![CDATA[\r\n        <select name=\"zone_id\" id=\"input-payment-zone\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"after\" offset=\"3\"><![CDATA[\r\n		<div class=\"form-group required\">\r\n		  <label class=\"col-sm-2 control-label\" for=\"input-payment-city\">{{ entry_city }}</label>\r\n		  <div class=\"col-sm-10\">\r\n			<select name=\"city\" id=\"input-payment-city\" class=\"form-control\">\r\n			</select>\r\n		  </div>\r\n		</div>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/checkout/register.twig\">\r\n		<operation info=\"Remove city field\">\r\n			<search><![CDATA[\r\n        <input type=\"text\" name=\"address_2\" value=\"\" placeholder=\"{{ entry_address_2 }}\" id=\"input-payment-address-2\" class=\"form-control\" />\r\n			]]></search>\r\n			<add position=\"replace\" offset=\"4\"><![CDATA[\r\n        <input type=\"text\" name=\"address_2\" value=\"\" placeholder=\"{{ entry_address_2 }}\" id=\"input-payment-address-2\" class=\"form-control\" />\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation info=\"Change city text field to select and place it after zone\">\r\n			<search><![CDATA[\r\n        <select name=\"zone_id\" id=\"input-payment-zone\" class=\"form-control\">\r\n			]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[\r\n      <div class=\"form-group required\">\r\n        <label class=\"control-label\" for=\"input-payment-city\">{{ entry_city }}</label>\r\n        <select name=\"city\" id=\"input-payment-city\" class=\"form-control\">\r\n        </select>\r\n      </div>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/api/{payment,shipping}*.php\">\r\n		<operation info=\"Remove error_city\">\r\n			<search><![CDATA[\r\n        if ((utf8_strlen($this->request->post[\'city\']) < 2) || (utf8_strlen($this->request->post[\'city\']) > 32)) {\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n        if ((utf8_strlen($this->request->post[\'city\']) < 2) || (utf8_strlen($this->request->post[\'city\']) > 128)) {\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2019-03-25 09:09:16'),
(5, 5, 'Price View in Product List', 'Price-view-category', 'https://ocmod.net', '3.0', 'https://ocmod.net', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Price View in Product List</name>\r\n	<code>Price-view-category</code>\r\n	<version>3.0</version>\r\n	<author>https://ocmod.net</author>\r\n	<link>https://ocmod.net</link>\r\n\r\n    <file path=\"catalog/controller/product/{category,special,manufacturer,search}*.php\">\r\n		<operation>\r\n			<search><![CDATA[           \r\n           public function index() {\r\n           ]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->document->addStyle(\'catalog/view/theme/default/stylesheet/priceview.css\');\r\n			$this->document->addScript(\'catalog/view/javascript/priceview.js\');\r\n			]]></add>\r\n		</operation>				\r\n    </file>\r\n	\r\n    <file path=\"catalog/language/{ru-ru,uk-ua,ua-uk}/product/{category,special,manufacturer,search}*.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            $_[\'text_limit\']\r\n            ]]></search>\r\n			<add position=\"before\"><![CDATA[				\r\n			$_[\'button_price\'] = \'Прайслист\';\r\n			]]></add>\r\n		</operation>			\r\n    </file>\r\n	\r\n    <file path=\"catalog/language/en-gb/product/{category,special,manufacturer,search}*.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            $_[\'text_search\']\r\n            ]]></search>\r\n			<add position=\"before\"><![CDATA[				\r\n			$_[\'button_price\'] = \'Price list\';\r\n			]]></add>\r\n		</operation>			\r\n    </file>\r\n	\r\n	<file path=\"catalog/view/theme/*/template/product/{category,special,manufacturer_info,search}*.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n            <button type=\"button\" id=\"list-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_list }}\"><i class=\"fa fa-th-list\"></i></button>\r\n            ]]></search>\r\n			<add position=\"replace\"><![CDATA[				\r\n			<button type=\"button\" id=\"list-view-new\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_list }}\"><i class=\"fa fa-th-list\"></i></button>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[           \r\n            <button type=\"button\" id=\"grid-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_grid }}\"><i class=\"fa fa-th\"></i></button>]]></search>\r\n			<add position=\"replace\"><![CDATA[<button type=\"button\" id=\"grid-view-new\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_grid }}\"><i class=\"fa fa-th\"></i></button>\r\n			<button type=\"button\" id=\"price-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ button_price }}\"><i class=\"fa fa-file-text-o\"></i></button>\r\n			]]></add>\r\n		</operation>				\r\n	</file>	\r\n</modification>', 1, '2019-03-20 06:15:12');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(6, 6, 'Enable-Disable Products', 'enable-disable-products', 'AlexDW', '1.05', 'https://ocmod.net', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Enable-Disable Products</name>\r\n	<version>1.05</version>\r\n	<author>AlexDW</author>\r\n	<link>https://ocmod.net</link>\r\n	<code>enable-disable-products</code>\r\n	<file path=\"admin/view/template/catalog/product_list.twig\">\r\n		<operation error=\"abort\">\r\n			<search index=\"0\"><![CDATA[\r\n<div class=\"pull-right\">\r\n			]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n<!-- EnableDisable -->\r\n      <div class=\"pull-right\">\r\n		<span style=\"padding-right:5px;\">\r\n        <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_enable_product }}\" class=\"btn btn-success\" onclick=\"$(\'#form-product\').attr(\'action\', \'{{ enable_product }}\'); $(\'#form-product\').submit();\"><i class=\"fa fa-plus\"></i></button>\r\n        <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_disable_product }}\" class=\"btn btn-danger\" onclick=\"$(\'#form-product\').attr(\'action\', \'{{ disable_product }}\'); $(\'#form-product\').submit();\"><i class=\"fa fa-minus\"></i></button>\r\n		</span>\r\n		<span style=\"padding-right:10px;\">\r\n	  <a href=\"{{ enable_all }}\" data-toggle=\"tooltip\" title=\"{{ button_enable_all }}\" data-confirm=\"{{ button_enable_all }}\" class=\"btn btn-success\"><i class=\"fa fa-check\"></i></a>\r\n	  <a href=\"{{ disable_all }}\" data-toggle=\"tooltip\" title=\"{{ button_disable_all }}\" data-confirm=\"{{ button_disable_all }}\" class=\"btn btn-danger\"><i class=\"fa fa-power-off\"></i></a>\r\n		</span>\r\n<!-- EnableDisable -->\r\n			]]></add>\r\n		</operation>\r\n		<operation error=\"abort\">\r\n			<search><![CDATA[\r\n{{ button_filter }}</button>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n<!-- EnableDisable -->\r\n			  <div class=\"pull-right\">&nbsp;</div>\r\n              <button type=\"button\" id=\"button-clear\" class=\"btn btn-info pull-right\"><i class=\"fa fa-eraser\"></i> Clear</button>\r\n<!-- EnableDisable -->\r\n			]]></add>\r\n		</operation>\r\n		<operation error=\"abort\">\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- EnableDisable -->\r\n<script type=\"text/javascript\"><!--\r\n$(document).ready(function() {\r\n	$(\'a[data-confirm]\').click(function(ev) {\r\n		var href = $(this).attr(\'href\');\r\n		if (!$(\'#dataConfirmModal\').length) {\r\n			$(\'body\').append(\'<div id=\"dataConfirmModal\" class=\"modal\" role=\"dialog\" aria-labelledby=\"dataConfirmLabel\" aria-hidden=\"true\"><div class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-body\"></div><div class=\"modal-footer\"><button class=\"btn btn-default\" data-dismiss=\"modal\" aria-hidden=\"true\">{{ text_no }}</button><a class=\"btn btn-danger\" id=\"dataConfirmOK\">{{ text_yes }}</a></div></div></div></div>\');\r\n		} \r\n		$(\'#dataConfirmModal\').find(\'.modal-body\').text($(this).attr(\'data-confirm\')+\' ?\');\r\n		$(\'#dataConfirmOK\').attr(\'href\', href);\r\n		$(\'#dataConfirmModal\').modal({show:true});\r\n		return false;\r\n	});\r\n});\r\n\r\n$(\'#button-clear\').on(\'click\', function() {\r\n	$(\'select[class=\\\'form-control\\\']\').val(\'\');\r\n	$(\'input[class=\\\'form-control\\\']\').val(\'\');\r\n	$(\'#button-filter\').click();\r\n});\r\n\r\n$(\'input[class=\\\'form-control\\\']\').keydown(function(e) {\r\n	if (e.keyCode == 13) {\r\n		$(\'#button-filter\').click();\r\n	}\r\n});\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[\r\n$data[\'delete\'] = $this->url->link(\'catalog/product/delete\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n		// EnableDisable\r\n			$data[\'button_enable_all\'] = $this->language->get(\'button_enable_all\') !=\'button_enable_all\' ? $this->language->get(\'button_enable_all\') : \'Enable All Products\';\r\n			$data[\'button_disable_all\'] = $this->language->get(\'button_disable_all\') !=\'button_disable_all\' ? $this->language->get(\'button_disable_all\') : \'Disable All Products\';\r\n			$data[\'button_enable_product\'] = $this->language->get(\'button_enable_product\') !=\'button_enable_product\' ? $this->language->get(\'button_enable_product\') : \'Enable Selected\';\r\n			$data[\'button_disable_product\'] = $this->language->get(\'button_disable_product\') !=\'button_disable_product\' ? $this->language->get(\'button_disable_product\') : \'Disable Selected\';\r\n\r\n			$data[\'enable_all\'] = $this->url->link(\'catalog/product/enable_all\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\r\n			$data[\'disable_all\'] = $this->url->link(\'catalog/product/disable_all\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\r\n			$data[\'enable_product\'] = $this->url->link(\'catalog/product/enable_product\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\r\n			$data[\'disable_product\'] = $this->url->link(\'catalog/product/disable_product\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\r\n		// EnableDisable end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation error=\"abort\">\r\n			<search><![CDATA[\r\npublic function delete() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		// EnableDisable\r\n	public function disable_all() {\r\n		$this->load->language(\'catalog/product\');\r\n \r\n		$this->document->setTitle($this->language->get(\'heading_title\'));\r\n		\r\n		$this->load->model(\'catalog/product\');\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'catalog/product\')) {\r\n			$this->error[\'warning\'] = $this->language->get(\'error_permission\');\r\n\r\n		} else {\r\n			\r\n			$this->model_catalog_product->disableAllProduct();\r\n			\r\n			$this->session->data[\'success\'] = $this->language->get(\'text_success\');\r\n\r\n			$url = \'\';\r\n\r\n			if (isset($this->request->get[\'filter_name\'])) {\r\n				$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_model\'])) {\r\n				$url .= \'&filter_model=\' . urlencode(html_entity_decode($this->request->get[\'filter_model\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_price\'])) {\r\n				$url .= \'&filter_price=\' . $this->request->get[\'filter_price\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_quantity\'])) {\r\n				$url .= \'&filter_quantity=\' . $this->request->get[\'filter_quantity\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_status\'])) {\r\n				$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'sort\'])) {\r\n				$url .= \'&sort=\' . $this->request->get[\'sort\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'order\'])) {\r\n				$url .= \'&order=\' . $this->request->get[\'order\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'page\'])) {\r\n				$url .= \'&page=\' . $this->request->get[\'page\'];\r\n			}\r\n\r\n			$this->response->redirect($this->url->link(\'catalog/product\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\r\n		}\r\n\r\n		$this->getList();\r\n	}\r\n\r\n	public function enable_all() {\r\n		$this->language->load(\'catalog/product\');\r\n \r\n		$this->document->setTitle($this->language->get(\'heading_title\'));\r\n		\r\n		$this->load->model(\'catalog/product\');\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'catalog/product\')) {\r\n			$this->error[\'warning\'] = $this->language->get(\'error_permission\');\r\n\r\n		} else {\r\n			\r\n			$this->model_catalog_product->enableAllProduct();\r\n			\r\n			$this->session->data[\'success\'] = $this->language->get(\'text_success\');\r\n\r\n			$url = \'\';\r\n\r\n			if (isset($this->request->get[\'filter_name\'])) {\r\n				$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_model\'])) {\r\n				$url .= \'&filter_model=\' . urlencode(html_entity_decode($this->request->get[\'filter_model\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_price\'])) {\r\n				$url .= \'&filter_price=\' . $this->request->get[\'filter_price\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_quantity\'])) {\r\n				$url .= \'&filter_quantity=\' . $this->request->get[\'filter_quantity\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_status\'])) {\r\n				$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'sort\'])) {\r\n				$url .= \'&sort=\' . $this->request->get[\'sort\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'order\'])) {\r\n				$url .= \'&order=\' . $this->request->get[\'order\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'page\'])) {\r\n				$url .= \'&page=\' . $this->request->get[\'page\'];\r\n			}\r\n\r\n			$this->response->redirect($this->url->link(\'catalog/product\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\r\n		}\r\n\r\n		$this->getList();\r\n	}\r\n\r\n	public function enable_product() {\r\n		$this->language->load(\'catalog/product\');\r\n \r\n		$this->document->setTitle($this->language->get(\'heading_title\'));\r\n		\r\n		$this->load->model(\'catalog/product\');\r\n\r\n		if (isset($this->request->post[\'selected\']) && $this->validateDelete()) {\r\n			foreach ($this->request->post[\'selected\'] as $product_id) {\r\n			$this->model_catalog_product->enableProduct($product_id);\r\n			}\r\n\r\n			$this->session->data[\'success\'] = $this->language->get(\'text_success\');\r\n\r\n			$url = \'\';\r\n\r\n			if (isset($this->request->get[\'filter_name\'])) {\r\n				$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_model\'])) {\r\n				$url .= \'&filter_model=\' . urlencode(html_entity_decode($this->request->get[\'filter_model\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_price\'])) {\r\n				$url .= \'&filter_price=\' . $this->request->get[\'filter_price\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_quantity\'])) {\r\n				$url .= \'&filter_quantity=\' . $this->request->get[\'filter_quantity\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_status\'])) {\r\n				$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'sort\'])) {\r\n				$url .= \'&sort=\' . $this->request->get[\'sort\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'order\'])) {\r\n				$url .= \'&order=\' . $this->request->get[\'order\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'page\'])) {\r\n				$url .= \'&page=\' . $this->request->get[\'page\'];\r\n			}\r\n\r\n			$this->response->redirect($this->url->link(\'catalog/product\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\r\n		}\r\n\r\n		$this->getList();\r\n	}\r\n\r\n	public function disable_product() {\r\n		$this->language->load(\'catalog/product\');\r\n \r\n		$this->document->setTitle($this->language->get(\'heading_title\'));\r\n		\r\n		$this->load->model(\'catalog/product\');\r\n\r\n		if (isset($this->request->post[\'selected\']) && $this->validateDelete()) {\r\n			foreach ($this->request->post[\'selected\'] as $product_id) {\r\n			$this->model_catalog_product->disableProduct($product_id);\r\n			}\r\n\r\n			$this->session->data[\'success\'] = $this->language->get(\'text_success\');\r\n\r\n			$url = \'\';\r\n\r\n			if (isset($this->request->get[\'filter_name\'])) {\r\n				$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_model\'])) {\r\n				$url .= \'&filter_model=\' . urlencode(html_entity_decode($this->request->get[\'filter_model\'], ENT_QUOTES, \'UTF-8\'));\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_price\'])) {\r\n				$url .= \'&filter_price=\' . $this->request->get[\'filter_price\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_quantity\'])) {\r\n				$url .= \'&filter_quantity=\' . $this->request->get[\'filter_quantity\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'filter_status\'])) {\r\n				$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'sort\'])) {\r\n				$url .= \'&sort=\' . $this->request->get[\'sort\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'order\'])) {\r\n				$url .= \'&order=\' . $this->request->get[\'order\'];\r\n			}\r\n\r\n			if (isset($this->request->get[\'page\'])) {\r\n				$url .= \'&page=\' . $this->request->get[\'page\'];\r\n			}\r\n\r\n			$this->response->redirect($this->url->link(\'catalog/product\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\r\n		}\r\n\r\n		$this->getList();\r\n	}\r\n		// EnableDisable end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/model/catalog/product.php\">		\r\n		<operation error=\"abort\">\r\n			<search><![CDATA[\r\npublic function getProduct($product_id) {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	// EnableDisable\r\n		public function disableAllProduct() {\r\n			$query = $this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET `status`=\'0\' \");\r\n			$this->cache->delete(\'product\');\r\n		}\r\n\r\n		public function enableAllProduct() {\r\n			$query = $this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET `status`=\'1\' \");\r\n			$this->cache->delete(\'product\');\r\n		}\r\n\r\n		public function enableProduct($product_id) {\r\n			$this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET `status`=\'1\' WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n			$this->cache->delete(\'product\');	\r\n		}\r\n\r\n		public function disableProduct($product_id) {\r\n			$this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET `status`=\'0\' WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n			$this->cache->delete(\'product\');	\r\n		}\r\n	// EnableDisable end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/language/ru-ru/catalog/product.php\">		\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[\r\n<?php\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			// EnableDisable\r\n				$_[\'button_enable_all\']    = \'Включить все товары\';\r\n				$_[\'button_disable_all\']   = \'Отключить все товары\';\r\n				$_[\'button_enable_product\']    = \'Включить выбранные\';\r\n				$_[\'button_disable_product\']   = \'Отключить выбранные\';\r\n			// EnableDisable end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/en-gb/catalog/product.php\">		\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[\r\n<?php\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			// EnableDisable\r\n				$_[\'button_enable_all\']    = \'Enable All Products\';\r\n				$_[\'button_disable_all\']   = \'Disable All Products\';\r\n				$_[\'button_enable_product\']    = \'Enable Selected\';\r\n				$_[\'button_disable_product\']   = \'Disable Selected\';\r\n			// EnableDisable end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2019-03-20 06:18:38'),
(8, 9, 'OC 3: Новая Почта c калькулятором + отделения (перевод)', 'novaposhta-translate', 'm.s.tkalenko', '3.0', 'http://webmakers.com.ua/shop/novaya-pochta-c-kalkulyatorom-otdeleniya-dlya-opencart-3/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>OC 3: Новая Почта c калькулятором + отделения (перевод)</name>\r\n  <code>novaposhta-translate</code>\r\n  <version>3.0</version>\r\n  <author>m.s.tkalenko</author>\r\n  <link>http://webmakers.com.ua/shop/novaya-pochta-c-kalkulyatorom-otdeleniya-dlya-opencart-3/</link>\r\n	\r\n	<file path=\"catalog/language/*/checkout/shipping.php\">\r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_postcode.*)]]></search>\r\n	    <add><![CDATA[\r\n		$_[\'entry_city\']       = \'Отделение Новой почты\';\r\n		$_[\'entry_postcode\']       = \'Почтовый индекс\';\r\n		]]></add>\r\n	  </operation>\r\n	\r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_postcode.*)]]></search>\r\n	    <add><![CDATA[\r\n		$_[\'error_postcode\']       = \'Почтовый индекс должен быть от 2 до 10 символов!\';\r\n		$_[\'error_city\']       = \'Пожалуйста, выберите отделение!\';\r\n		]]></add>\r\n	  </operation>\r\n	\r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']           = \'Город\';]]></add>\r\n	  </operation>\r\n	\r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[\r\n		$_[\'error_zone\']           = \'Пожалуйста, выберите город!\';\r\n		]]></add>\r\n	  </operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/*/account/{address,register}.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_city\']           = \'Отделение Новой почты\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_city\']           = \'Отделение должно быть от 2 до 128 символов!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']           = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_zone\']           = \'Пожалуйста, выберите город!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']        = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_country\']        = \'Пожалуйста, выберите область!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/*/affiliate/edit.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_city\']           = \'Отделение Новой почты\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_city\']           = \'Отделение должно быть от 2 до 128 символов!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']           = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_zone\']           = \'Пожалуйста, выберите город!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']     = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_country\']     = \'Пожалуйста, выберите область!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/*/affiliate/register.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_city\']           = \'Отделение Новой почты\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_city\']           = \'Отделение должно быть от 2 до 128 символов!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']                = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_zone\']                = \'Пожалуйста, выберите город!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']             = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_country\']             = \'Пожалуйста, выберите область!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/*/checkout/checkout.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_city\']           = \'Отделение Новой почты\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_city\']           = \'Отделение должно быть от 2 до 128 символов!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']                     = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_zone\']                     = \'Пожалуйста, укажите город!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']                  = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_country\']                  = \'Пожалуйста, укажите область!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/language/*/customer/customer.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_city\']            = \'Отделение Новой почты\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_city\']            = \'Отделение должно быть 2 до 128 символов!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']            = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_zone\']            = \'Укажите город!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']         = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_country\']         = \'Укажите область!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	<file path=\"admin/language/*/localisation/country.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*heading_title.*)]]></search>\r\n	    <add><![CDATA[$_[\'heading_title\']           = \'Области\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_success.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_success\']            = \'Области были изменены!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_list.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_list\']               = \'Список областей\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_add.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_add\']                = \'Добавить область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_edit.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_edit\']               = \'Изменить область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_permission.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_permission\']        = \'У вас нет прав на изменение области!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	\r\n	<file path=\"admin/language/*/localisation/geo_zone.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']      = \'Область\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	\r\n	<file path=\"admin/language/*/localisation/zone.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*column_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'column_country\']         = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']          = \'Область\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n\r\n	<file path=\"admin/language/*/marketing/affiliate.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_city\']                = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_city\']                = \'Отделение должно содержать от 2-х до 128-и знаков!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']                = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_zone\']                = \'Пожалуйста, выберите город!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']             = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_country\']             = \'Пожалуйста, выберите область!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	\r\n	<file path=\"admin/language/*/sale/customer.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']            = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_zone\']            = \'Пожалуйста, выберите город!\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']         = \'Область\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*error_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'error_country\']         = \'Пожалуйста, выберите область!\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	\r\n	<file path=\"admin/language/*/setting/setting.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']                       = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']                    = \'Область\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	\r\n	<file path=\"admin/language/*/setting/store.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_zone\']                       = \'Город\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']                    = \'Область\';]]></add>\r\n	  </operation>\r\n	</file>\r\n	\r\n	\r\n	<file path=\"admin/language/*/sale/order.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_city.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_city\']                               = \'Отделение Новой почты:\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_zone.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_zone\']                               = \'Город:\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_country\']                            = \'Область:\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_country_match.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_country_match\']                      = \'Совпадение области:\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_country_code.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_country_code\']                       = \'Код области:\';]]></add>\r\n	  </operation>\r\n	  \r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*entry_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'entry_country\']                           = \'Область\';]]></add>\r\n	  </operation>\r\n	</file>\r\n\r\n	\r\n	\r\n	<file path=\"admin/language/*/common/menu.php\">\r\n      <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_country.*)]]></search>\r\n	    <add><![CDATA[$_[\'text_country\']                     = \'Области\';]]></add>\r\n	  </operation>\r\n	  \r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_zone.*)]]></search>\r\n        <add><![CDATA[$_[\'text_zone\']                        = \'Города\';]]></add>\r\n	  </operation>\r\n	  \r\n	  <operation>\r\n	    <search regex=\"true\"><![CDATA[(.*text_coupon.*)]]></search>\r\n        <add><![CDATA[\r\n		$_[\'text_coupon\']                      = \'Купоны\';\r\n		$_[\'text_city\']                        = \'Отделения новой почты\';\r\n		]]></add>\r\n	  </operation>\r\n	</file>\r\n</modification>', 1, '2019-03-25 09:22:45'),
(9, 10, 'ExcelPort', 'excelport_3', 'iSense', '3.0.3', '', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n    <name><![CDATA[ExcelPort]]></name>\n	<code><![CDATA[excelport_3]]></code>\n	<version><![CDATA[3.0.3]]></version>\n	<author><![CDATA[iSense]]></author>\n	<file path=\"admin/view/template/catalog/product_list.twig\">\n		<operation>\n			<search><![CDATA[<i class=\"fa fa-copy\"></i></button>]]></search>\n			<add position=\"after\"><![CDATA[\n				<a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n			]]></add>\n		</operation>\n	</file>\n    <file path=\"admin/controller/catalog/category.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"before\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n	<file path=\"admin/view/template/catalog/category_list.twig\">\n		<operation>\n			<search><![CDATA[<a href=\"{{ repair }}\" data-toggle=\"tooltip\" title=\"{{ button_rebuild }}\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a>]]></search>\n			<add position=\"replace\"><![CDATA[\n				<a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> <a href=\"{{ repair }}\" data-toggle=\"tooltip\" title=\"{{ button_rebuild }}\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a>\n			]]></add>\n		</operation>\n	</file>\n    <file path=\"admin/controller/catalog/option.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n	<file path=\"admin/view/template/catalog/option_list.twig\">\n		<operation>\n			<search><![CDATA[<button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-option\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>]]></search>\n			<add position=\"before\"><![CDATA[\n				<a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n			]]></add>\n		</operation>\n	</file>\n    <file path=\"admin/controller/catalog/attribute.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n	<file path=\"admin/view/template/catalog/attribute_list.twig\">\n		<operation>\n			<search><![CDATA[<button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-attribute\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>]]></search>\n			<add position=\"before\"><![CDATA[\n				<a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n			]]></add>\n		</operation>\n	</file>\n    <file path=\"admin/controller/catalog/attribute_group.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n	<file path=\"admin/view/template/catalog/attribute_group_list.twig\">\n		<operation>\n			<search><![CDATA[<button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-attribute-group\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>]]></search>\n			<add position=\"before\"><![CDATA[\n				<a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n			]]></add>\n		</operation>\n	</file>\n    <file path=\"admin/controller/customer/customer.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/customer/customer_list.twig\">\n        <operation>\n            <search><![CDATA[<button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-customer\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>]]></search>\n            <add position=\"before\"><![CDATA[\n                <a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/customer/customer_group.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/customer/customer_group_list.twig\">\n        <operation>\n            <search><![CDATA[<button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-customer-group\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>]]></search>\n            <add position=\"before\"><![CDATA[\n                <a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/sale/order.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n	<file path=\"admin/view/template/sale/order_list.twig\">\n		<operation>\n			<search><![CDATA[<a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>]]></search>\n			<add position=\"before\"><![CDATA[\n                <a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n            ]]></add>\n		</operation>\n	</file>\n    <file path=\"admin/controller/catalog/manufacturer.php\">\n        <operation>\n            <search><![CDATA[$data[\'order\'] = $order;]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'user_token\'] = $this->session->data[\'user_token\'];\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/catalog/manufacturer_list.twig\">\n        <operation>\n            <search><![CDATA[<button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-manufacturer\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>]]></search>\n            <add position=\"before\"><![CDATA[\n                <a href=\"index.php?route=extension/module/excelport&user_token={{ user_token }}\" class=\"btn btn-info\" data-toggle=\"tooltip\" title=\"Export / Import\"><i class=\"fa fa-file-excel-o\"></i></a> \n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/common/column_left.php\">\n        <operation>\n            <search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/log\')) {]]></search>\n            <add position=\"before\"><![CDATA[\n                if ($this->user->hasPermission(\'access\', \'extension/module/excelport\')) {\n                    $maintenance[] = array(\n                        \'name\'     => \'ExcelPort: Export / Import\',\n                        \'href\'     => $this->url->link(\'extension/module/excelport\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n                        \'children\' => array()       \n                    );\n                }\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2019-04-16 06:06:35');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"400\",\"height\":\"200\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"400\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"100\",\"status\":\"1\"}'),
(32, 'new1', 'carousel', '{\"name\":\"new1\",\"banner_id\":\"7\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(33, 'рекомендованные', 'featured', '{\"name\":\"\\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435\",\"product_name\":\"\",\"product\":[\"41\",\"47\"],\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(34, 'Новые поступления', 'latest', '{\"name\":\"\\u041d\\u043e\\u0432\\u044b\\u0435 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(35, 'новинка', 'latest', '{\"name\":\"\\u043d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0430\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(36, 'рекомендуем', 'featured', '{\"name\":\"\\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\",\"product_name\":\"\",\"product\":[\"42\",\"30\",\"47\",\"28\",\"41\"],\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(37, 'хиты продаж', 'bestseller', '{\"name\":\"\\u0445\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(10, 1, 'Неудавшийся'),
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(16, 1, 'Аннулированный'),
(15, 1, 'Обработанный'),
(14, 1, 'Просроченный');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 14, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 15, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 25, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 7, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 11, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 16, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 8, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 9, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 8, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 21, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 13, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 38, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 14, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 9, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 15, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 15, '2009-02-03 21:08:40', '2011-09-30 01:05:28'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 15, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 14, '2011-04-26 08:57:34', '2011-09-30 01:06:23'),
(42, 'Apple Cinema 30&quot;', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 32, '2009-02-03 21:07:37', '2019-04-17 16:03:22');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_advertise_google`
--

CREATE TABLE `oc_product_advertise_google` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_advertise_google_status`
--

CREATE TABLE `oc_product_advertise_google_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_advertise_google_target`
--

CREATE TABLE `oc_product_advertise_google_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 2, 1, '4');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\n	Product 8&lt;/p&gt;\n&lt;p&gt;\n	Product 8&lt;/p&gt;\n', '', 'Product 8', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\n&lt;p class=&quot;intro&quot;&gt;\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\n	&lt;li&gt;\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\n	&lt;li&gt;\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\n	&lt;li&gt;\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\n	&lt;li&gt;\n		GPS and A-GPS ready&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\n	&lt;li&gt;\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\n	&lt;li&gt;\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\n	&lt;li&gt;\n		5 megapixel color camera with auto focus&lt;/li&gt;\n	&lt;li&gt;\n		VGA CMOS color camera&lt;/li&gt;\n	&lt;li&gt;\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\n	&lt;li&gt;\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\n	&lt;li&gt;\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\n	&lt;li&gt;\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\n	&lt;li&gt;\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\n	&lt;li&gt;\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\n	&lt;li&gt;\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\n	&lt;li&gt;\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\n	&lt;li&gt;\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\n	&lt;li&gt;\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\n	&lt;li&gt;\n		GPS and A-GPS ready&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\n	&lt;li&gt;\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\n	&lt;li&gt;\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\n	&lt;li&gt;\n		5 megapixel color camera with auto focus&lt;/li&gt;\n	&lt;li&gt;\n		VGA CMOS color camera&lt;/li&gt;\n	&lt;li&gt;\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\n	&lt;li&gt;\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\n	&lt;li&gt;\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\n	&lt;li&gt;\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\n	&lt;li&gt;\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\n	&lt;li&gt;\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\n	&lt;li&gt;\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\n&lt;/ul&gt;\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\n&lt;div&gt;\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		&lt;p&gt;\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\n		&lt;p&gt;\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\n		&lt;p&gt;\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\n	&lt;li&gt;\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\n	&lt;li&gt;\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\n	&lt;li&gt;\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\n	&lt;li&gt;\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\n	&lt;li&gt;\n		Built-in GPS&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\n	&lt;li&gt;\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\n	&lt;li&gt;\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\n	&lt;li&gt;\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\n	&lt;li&gt;\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\n	&lt;li&gt;\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\n	&lt;li&gt;\n		3.5mm stereo headset jack&lt;/li&gt;\n	&lt;li&gt;\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\n&lt;ul&gt;\n	&lt;li&gt;\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\n	&lt;li&gt;\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\n	&lt;li&gt;\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\n	&lt;li&gt;\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\n	&lt;li&gt;\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\n	&lt;li&gt;\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\n	&lt;li&gt;\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\n	&lt;li&gt;\n		Built-in GPS&lt;/li&gt;\n	&lt;li&gt;\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\n	&lt;li&gt;\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\n	&lt;li&gt;\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\n	&lt;li&gt;\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\n	&lt;li&gt;\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\n	&lt;li&gt;\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\n	&lt;li&gt;\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\n	&lt;li&gt;\n		3.5mm stereo headset jack&lt;/li&gt;\n	&lt;li&gt;\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\n&lt;/ul&gt;\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\n&lt;/div&gt;\n&lt;div&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\n&lt;/div&gt;\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\n&lt;p&gt;\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\n	&amp;nbsp;&lt;/p&gt;\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\n&lt;div&gt;\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\n&lt;div&gt;\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\n	&lt;p&gt;\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\n	&lt;p&gt;\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\n&lt;/div&gt;\n&lt;div&gt;\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\n	&lt;p&gt;\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\n	&lt;p&gt;\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\n	&lt;p&gt;\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\n&lt;/div&gt;\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\n	&lt;p&gt;\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\n&lt;/div&gt;\n&lt;div&gt;\n	&lt;p&gt;\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\n	&lt;p&gt;\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\n	&lt;p&gt;\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\n&lt;/div&gt;\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\n		&lt;br /&gt;\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;&lt;div class=&quot;cpt_product_description &quot;&gt;\n	&lt;div&gt;\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\n		&lt;br /&gt;\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\n		&lt;br /&gt;\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\n&lt;/div&gt;\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\n&lt;p&gt;\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\n&lt;p&gt;\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\n', '', 'sdf', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(42, 1, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(446, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(445, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(444, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2321, 47, 'catalog/demo/hp_3.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2320, 47, 'catalog/demo/hp_2.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2359, 42, 'catalog/apple/ap3.jpg', 3),
(2358, 42, 'catalog/apple/ap2.jpg', 2),
(2357, 42, 'catalog/apple/ap1.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(226, 30, 5, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(547, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(442, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(440, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(42, 20),
(42, 28),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 34),
(49, 57);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возвращены средства'),
(2, 1, 'Выдан в кредит'),
(3, 1, 'Отправлен другой товар для замены');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен/доставлен неисправным (сломан)'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(3, 1, 'Ошибочный заказ'),
(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Рассматриваемый'),
(3, 1, 'Готов (к отправке)'),
(2, 1, 'Заказ в ожидании');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(836, 0, 1, 'category_id=20', 'desktops'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(888, 0, 1, 'product_id=42', 'test'),
(789, 0, 1, 'category_id=34', 'mp3-players'),
(781, 0, 1, 'category_id=36', 'test2'),
(774, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(777, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(780, 0, 1, 'category_id=35', 'test1'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(785, 0, 1, 'category_id=57', 'tablet'),
(786, 0, 1, 'category_id=17', 'software'),
(787, 0, 1, 'category_id=24', 'smartphone'),
(788, 0, 1, 'category_id=33', 'camera'),
(790, 0, 1, 'category_id=43', 'test11'),
(791, 0, 1, 'category_id=44', 'test12'),
(792, 0, 1, 'category_id=47', 'test15'),
(793, 0, 1, 'category_id=48', 'test16'),
(794, 0, 1, 'category_id=49', 'test17'),
(795, 0, 1, 'category_id=50', 'test18'),
(796, 0, 1, 'category_id=51', 'test19'),
(797, 0, 1, 'category_id=52', 'test20'),
(798, 0, 1, 'category_id=58', 'test25'),
(799, 0, 1, 'category_id=53', 'test21'),
(800, 0, 1, 'category_id=54', 'test22'),
(801, 0, 1, 'category_id=55', 'test23'),
(802, 0, 1, 'category_id=56', 'test24'),
(803, 0, 1, 'category_id=38', 'test4'),
(804, 0, 1, 'category_id=37', 'test5'),
(805, 0, 1, 'category_id=39', 'test6'),
(806, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(840, 0, 1, 'product_id=47', 'hp-lp3065'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(812, 0, 1, 'product_id=43', 'macbook'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(814, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(837, 0, 1, 'product_id=41', 'imac'),
(823, 0, 1, 'product_id=40', 'iphone'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(845, 0, 1, 'common/home', ''),
(846, 0, 1, 'information/contact', 'contact'),
(847, 0, 1, 'information/sitemap', 'sitemap'),
(848, 0, 1, 'product/special', 'specials'),
(849, 0, 1, 'product/manufacturer', 'brands'),
(850, 0, 1, 'product/compare', 'compare-products'),
(851, 0, 1, 'product/search', 'search'),
(852, 0, 1, 'checkout/cart', 'cart'),
(853, 0, 1, 'checkout/checkout', 'checkout'),
(854, 0, 1, 'account/login', 'login'),
(855, 0, 1, 'account/logout', 'logout'),
(856, 0, 1, 'account/voucher', 'vouchers'),
(857, 0, 1, 'account/wishlist', 'wishlist'),
(858, 0, 1, 'account/account', 'my-account'),
(859, 0, 1, 'account/order', 'order-history'),
(860, 0, 1, 'account/newsletter', 'newsletter'),
(861, 0, 1, 'account/return/add', 'return-add'),
(862, 0, 1, 'account/forgotten', 'forgot-password'),
(863, 0, 1, 'account/download', 'downloads'),
(864, 0, 1, 'account/return', 'returns'),
(865, 0, 1, 'account/transaction', 'transactions'),
(866, 0, 1, 'account/register', 'create-account'),
(867, 0, 1, 'account/recurring', 'recurring'),
(868, 0, 1, 'account/address', 'address-book'),
(869, 0, 1, 'account/reward', 'reward-points'),
(870, 0, 1, 'account/edit', 'edit-account'),
(871, 0, 1, 'account/password', 'change-password'),
(880, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
(881, 0, 1, 'affiliate/register', 'create-affiliate-account'),
(882, 0, 1, 'affiliate/login', 'affiliate-login'),
(883, 0, 1, 'affiliate/payment', 'affiliate-payment'),
(884, 0, 1, 'affiliate/tracking', 'affiliate-tracking'),
(885, 0, 1, 'affiliate/transaction', 'affiliate-transaction'),
(886, 0, 1, 'affiliate/account', 'affiliates');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('002509b6f4f0143f56b3e4ddd2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 00:29:22'),
('006081b9fa38217a32c05e326e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 02:57:37'),
('0061bcc9625665f9de0a53c690', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 17:28:01'),
('0104dab0a504100e21bfe02e4c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 12:03:08'),
('0105b938f3bd54d7dfd409d95c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 08:30:13'),
('01243d113dc145107863b0db5b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 06:19:47'),
('0125daeee89d979a8d234150b0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:45:44'),
('01507bdac9987da91b364a24cc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:22'),
('0164740196f43929ecaf81f24b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 02:47:42'),
('01c92ad45c4879f56fa64d5b5e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 15:46:15'),
('01cf920edb8fed8e020c9b0e13', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:11'),
('025791b42cbe1458c8fee067d2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-23 16:43:04'),
('0273e310139873b6b1717f86c5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 08:39:01'),
('029f497dd07ddd64a6b26c97b9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 06:05:51'),
('030d1010167992fdbbe8a044ee', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 21:38:04'),
('032ce9bf89cd74db9243b77949', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:08'),
('03ce20d661ea4a27a261146bd2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 18:23:09'),
('03d3e840e05f097cbec34e24f7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:15:13'),
('04345ecc6fc2a1038c7dad2614', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 13:45:26'),
('043d5b0e3171c27dac6787de66', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:05:35'),
('04754e7ddd0008bffa99ff3927', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-13 04:10:27'),
('04a66cbe587dd83a6e99b0a29b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 16:53:31'),
('05f37753930854d80a59503646', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 23:29:00'),
('060c9a260eef6b07a3b22b2be1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 16:43:21'),
('0652fb991ad2526d22c8aa4c18', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 14:51:06'),
('0694a8502559ed7404c2e0be6b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 22:37:08'),
('073640fb0a2182c5a5c658656d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:28:56'),
('07527e9b33fff0e86115edf015', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 05:02:33'),
('0770e9f0aeb31a88eb8bd7a0ad', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 01:47:00'),
('078dbc01aca4dcb89bf14f6567', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-24 04:18:38'),
('07bd25d459dcd53c90f80c5cd6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 13:07:14'),
('07c79551b65b8fb57fd908fb9f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:37'),
('07c9a8a3d4bb584e5cbe602ea8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 23:37:56'),
('07d9a6a5ab67ba9b333e211f00', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:43:20'),
('0827e3f31a53e815ba5558fd94', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:07:20'),
('085ada1f1093c5def58c710e37', 'false', '2019-03-21 05:09:30'),
('08b1409b1863894eaa0d19cfd6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:43:41'),
('08e996e3c48aad9115cf3059a0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 03:14:01'),
('09228e41efb67474eb838531aa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 05:32:31'),
('095476a10d020e8d66e3778638', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:31'),
('09684009dff8f5f372cd0572a0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 05:33:05'),
('0979f0cf92abd68efe39096c2e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 20:38:50'),
('098f1f6c929c9334204fc1c397', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:16:09'),
('09cc1ba4e3db1e3c0fa91c7f4b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-23 10:49:44'),
('09ec316898f33d2e3b6b3e5d91', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 11:09:00'),
('09f89ca278ed8723ebbac065f1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 14:11:43'),
('09fbfd0e01ca267d96323eb49d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 15:29:38'),
('0a2e71c3fa8f2ec8f029dff0e6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:08'),
('0abb38a4cd0edc05eb715328c3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 17:45:15'),
('0ae2e44fbdc4102ab14eb3f3b9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 09:54:03'),
('0b37fbde0197b660a4a062e924', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:30:46'),
('0b740d13093cf9e5a814c30ab1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 22:25:33'),
('0b75153e71c0f07436afe533bb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:37'),
('0b78241193cac44191c40b41a3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2019-04-15 17:47:05'),
('0b97fcfbf2f674bf5751c93c08', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:28'),
('0bac5475a0758f625a26c0ed2f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 04:16:44'),
('0bb0d99d41dc56f1060c4a1d8e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 12:00:07'),
('0be7177bd633a9c1a1ce746ef8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:11'),
('0be985ef97b4b2977158b0d5c4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 21:18:09'),
('0c308479f68177ffdcb4da96ff', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 10:59:28'),
('0c36e28f8861fb3e7bb1a6e7e7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 19:40:56'),
('0c41e05892f6746d901d68e6bd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 01:42:44'),
('0c5824529074508ea83b970f23', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:34'),
('0ca3dbf37bd68b5174a128d61b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 14:08:06'),
('0cba3a395e3c8a1dcd89f2e840', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 16:49:50'),
('0cba857abf962d6a2fc8bee21c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 04:55:20'),
('0cc0a2dbeff723390ba265f14d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 19:47:21'),
('0e4873ebff743dcd28212af2b0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 15:50:59'),
('0e721ba7828c018c6f9caf8ccb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 14:48:34'),
('0e9704c0dfeacf778190dc66b0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:13:19'),
('0ed185c8a4cc698f65304921bd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:26:33'),
('0f00c36d38a524f54cfa9fdc35', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:40:19'),
('0f091276f3f37a8c8d72fc786a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 04:50:04'),
('0f2e97f11610adb1f3f4564b36', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:21'),
('0fe1218b1c39e57c5673726331', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 08:03:38'),
('0ff3c20d8913bb0f3d721725ac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 18:07:15'),
('101f51e3c69814013af1b8033f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 05:02:07'),
('1058fa15005499aa4f6544b5c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 16:54:38'),
('10843040c28567d55d869c93a4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 17:23:36'),
('10d149f6c4b7be03cc77dd6f2c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 10:10:59'),
('111ceb94f6e0bc4b062141896c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 04:36:02'),
('111f43c7956e3d259836365dcc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:23:15'),
('123d70af0c84b0913df10e5c6a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 09:42:01'),
('12782413fbfb184278185c5ee9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:40'),
('12cdcdc4a6d3c787b2842feae7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:24'),
('1341f0ccf0ed69e7310bc37621', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 20:21:16'),
('134969e81e5d52cc2af4e03148', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:08'),
('134aef4e3f78b4bd8f7052238d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 12:54:58'),
('13ed97ba4345087760993669d6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 03:40:46'),
('1416c0b8c03fcd9de78bd139ac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:38:00'),
('147d62d24082ce1df7dbfac777', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:33'),
('14cbda3cc77ab90f9564b857ef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-24 04:18:38'),
('150a1bee24e17ecacaac32e929', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 00:17:13'),
('151386297919a8966a78226757', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 22:42:37'),
('158cede41d93d945994588ae7d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 19:53:38'),
('15a5e896fd1df497fdeacc7f69', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 00:20:52'),
('162b88ccdd04369f0f53083c2d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 17:04:22'),
('1664a50b5617035dc8bdbcc991', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 06:39:31'),
('167c0303f33797d5980ce7d814', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 20:56:07'),
('17584a9ec0525c8d18668e9dca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:08:15'),
('179774c9ad364d606a890ef328', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 15:53:09'),
('17c4a557b19ab2516b5f831cdd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 10:10:22'),
('17d95f8e8bfd29004e96a03226', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 19:08:54'),
('17fad6c7dd03caf0c9430877df', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 02:18:26'),
('1860309ec075ed33ae1e04a690', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 00:28:30'),
('1868a3215bfb25cf042c6253f3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:50'),
('18774b88564909f59b3ca21cbf', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:57'),
('1889a7c3e89485a0124b1aca05', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 19:55:42'),
('18dba054354788cf31595e7fff', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:41'),
('19049e98734caee47eaebbc7f1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 09:57:57'),
('19cd3dfecfb62d7a8d9a85657d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:22'),
('19eb433d8fb018ad588232d154', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 21:45:12'),
('1a0eb8880d8f02263be52d3da0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 18:07:23'),
('1a6cbe53a77c3d00c375e2f4a9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 04:31:15'),
('1aba932c4481265cbb0912e880', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 04:31:39'),
('1acbbbdc3ee1c2fe1a4e32c3a6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 11:49:51'),
('1b040e3feb41dae7786f00c8e4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:12'),
('1bd4388d2575215a4ec37408e1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 00:18:18'),
('1c13e772edd2d8990780e56d9d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 12:50:29'),
('1c25cea4b159c5e86d4a47feae', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 12:41:00'),
('1c2f60f2e3f1261a8cf5808d6f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:15:26'),
('1c60d0536e79bf443f9bc8985e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 00:21:44'),
('1cd476a7896053b967430e004a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 06:43:35'),
('1d07a1eda1bc759ea317791a25', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:16'),
('1d3bd2cacefa2f23b1767f9562', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 06:33:24'),
('1dbf61b52aa884e42fd9c049cd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 09:31:46'),
('1dc52519f8025cfa3641920b84', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 19:46:06'),
('1e072e643cba5f280995a54f9b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 07:03:38'),
('1e6078210819dfc0a6bae0b1fc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 04:04:56'),
('1e69e9872d46417e19f1eea7e8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:38:03'),
('1e71e7c9ab5c742e775a570efd', '{\"language\":\"ru-ru\",\"currency\":\"UAH\",\"install\":\"BttUa3yGWq\",\"start_time\":1555384731,\"generated_files\":[\"products_excelport_light_ru-ru_xn--b1akgpfo3h.com.ua_2019-04-16_03-18-51_0.xlsx\"],\"generated_file\":\"\\/var\\/www\\/html\\/svyaznoy.com.ua\\/system\\/library\\/vendor\\/isenselabs\\/excelport\\/temp_excelport\\/products_excelport_light_ru-ru_xn--b1akgpfo3h.com.ua_2019-04-16_03-18-51_0.xlsx\",\"directory_file_manager\":\"apple\",\"page_file_manager\":null,\"customer_id\":\"10\",\"user_id\":\"1\",\"user_token\":\"uPrVdFAdjXlYNNE8ac4VdbPU6skCSHEX\"}', '2019-04-17 18:31:15'),
('1e77f1fd4ee421ad783199d107', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 21:57:47'),
('1e7d1693fa7a8569e8edc9b864', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 01:35:03'),
('1e7f57652a4ebdbcc0c902a4bc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 07:53:41'),
('1e8dd2cabff2cca4a6eaadabfe', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 07:26:23'),
('1e950e53a1acfbacfd04496ff9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 00:50:32'),
('1e9fd931a4c7e540bbfd2616d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 04:13:17'),
('1ebfabdbfbe68bd82ef97450be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 09:31:14'),
('1ec6d857383df7caf87d00c77a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 07:14:42'),
('1ee655901dd1391c5969902289', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:46'),
('1ef6dbbdac5ba03e0f04736586', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:28:56'),
('1f1a81e80b0879d5766abca563', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 23:53:12'),
('1f34b5514dabde29f59be243b9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:42'),
('1f91f6b06ff7704e3a8d828553', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:13'),
('1fa62e5f4a9dd18e3aa3a92a9d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:48'),
('1fca000580c3e045bea82ae9a4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:43'),
('20303a75fd4c4e069d8dac9236', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 02:01:46'),
('2042f0c16d486e4bf5bbe08454', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:38:01'),
('205bc23e64c40ca5789f9f91d6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 12:36:22'),
('207c0fa022b3b8cddca927f428', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 02:09:27'),
('20cd99b4fe5ab5ce58c500d0b5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 05:32:31'),
('20cf88bd15d742777104461010', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 15:31:03'),
('21668a494e48cda51eb6fca45a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 18:45:59'),
('216876b186a795ab2e8a3fa390', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 10:35:41'),
('21d500c3c75bc9f4e9003af062', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:44'),
('21eb87670eff5fb58a997844eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 14:36:44'),
('222cc07c362b010ec5fd64b387', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 01:39:02'),
('229083ea8fa43a752538fa0110', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:37'),
('22b308bbb9c0443e62995f196a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:05:50'),
('236f5d589d239dbbf65adb2bba', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 20:16:16'),
('23ae227f79929ff20e49c4d5e8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:40'),
('243a9933e57a908dd8f9a79508', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 01:10:59'),
('24a7dcf4196b00c6145b3ae6b1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 15:13:32'),
('24bf3ac0467347eabf338ccb02', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 20:38:09'),
('24fb153344923d9016605d0e4c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:57:44'),
('25040739db44b0806b99140c7e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 17:38:02'),
('2513e002be0e8a342e90b92676', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 11:55:30'),
('2525cfa2ce418218bd7f232910', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 08:04:07'),
('2567fe6ec41adc66eb3be28341', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 02:52:56'),
('256d1f7ebba6c63eb8913708fa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 03:17:26'),
('2573471a1f857f60cfd176d3f9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 18:05:01'),
('25b77286c17de81feb139b0cab', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 21:52:23'),
('260dc74db1689aa8fa937ea331', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:43:20'),
('264f95e274fc8367d594484f62', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 07:13:44'),
('2652594821c8465c4371347d30', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 11:51:28'),
('269e277d3f9d17ce7eacbd3fcb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 19:30:58'),
('26e54805c2e8d40a0ead716758', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:32'),
('271758bed0d8688c315a0b4138', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:14:32'),
('276381af916b077689771947ab', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 17:38:59'),
('276aab3b257f59288d04c6254a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 18:38:28'),
('27b30c0c3370e926fea1c2a69b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 13:02:44'),
('281fc6e3fd6ac68e770d2ff7d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:01:38'),
('2854c224d3fd9563983f681d2c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 14:19:00'),
('28603f491cd236a8a7b6da1b80', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 01:45:09'),
('28e10d7a7f811a191d2e243c26', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 06:54:14'),
('29e5ab9e2c022fb49364a9041b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 07:21:38'),
('29f0baf65ad1b476ae878bb61d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:04'),
('2a3c5dfc30828e96bc6ee3a52e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:01'),
('2a8886f6a27c2fa30f31b4aeed', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 04:30:29'),
('2aa5d946fe1a71251f2b7c46fc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 18:35:46'),
('2b2472a3e50be3fb3923b811aa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 05:12:08'),
('2b6705b88b36c8615cd9aa870a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 11:00:22'),
('2b8d3e741d9940bfca7b65e131', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 00:08:58'),
('2ba8ee3d300f521eb03dc8cbdb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-25 04:38:07'),
('2bf2afc305356e5cf43e83a354', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 15:38:50'),
('2c299be4e00eb9cd15111bc3ac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:50'),
('2c4c62dd709855aebef7da4042', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 21:08:14'),
('2c7970f04f5964f9f199a07efb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 23:13:29'),
('2cf2e5d6e915424a1fcb20204e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 04:12:08'),
('2d218ccdbb00798f8579b31792', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:23:51'),
('2e07047f98f10db1cd0d8f23b9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:20:46'),
('2e4baf60ce100da58ce85c15c9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"ZtVlZ7EfbZycaXl2D87CP7dDWW0BxY8W\"}', '2019-03-21 06:15:32'),
('2e880620ab86aa71e06bf1be0e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 19:18:44'),
('2ea2d281eb84e81c25b10d8013', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 14:49:16'),
('2ef6d8659c0dac7cfe99c0e1f7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 11:44:00'),
('2f13a5481e4f88c78205fb64e5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 22:58:06'),
('2f6f87593ac15c73b5431f0978', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:48:56'),
('305597014045060ebd1e9bc901', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 20:21:47'),
('3059a3317d0678afb05089a613', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:02:25'),
('306e2d732981bf323d9286177a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 19:55:20'),
('3146991e3993e4c63c33f4093a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 15:36:11'),
('31c5fafb8b00a1575fc83132d6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 06:30:51'),
('321ba075dd489e85911c917999', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:25'),
('3244c61b74787b440d8b69be20', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 06:03:38'),
('327d7088436a1b376e12616bc9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 19:44:39'),
('329f4be82b649a2c89b4c560a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 02:50:48'),
('32e1ce1ee5257256161329112a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 03:18:34'),
('32fea48e2a3296f4d38113222d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 19:55:26'),
('33659b0ab8308c1b9ec8eeff16', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 05:29:10'),
('34210b4920092a9fc060ae1331', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 18:17:18'),
('344fad1f8689deb643722a2cc6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 09:19:53'),
('34c753ab283e89bc014c01a9e8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 01:22:13'),
('35637a507edaee11813359d6da', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 17:05:12'),
('35f534a431138743ae055d50eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 19:27:16'),
('3618ba01e0cd7b2e4109fb6990', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 13:53:15'),
('369135878db01eb380313c486c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:50'),
('3693bb6e591c9e506363089e04', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 06:26:50'),
('369cf5fe947a5cd9002e24ec9d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 19:59:37'),
('36d81f3d8ca521b08beb9f6f6d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 16:54:35'),
('370ebc64621d46c76cfd2ba17c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 18:34:54'),
('37391b0a37df6dd288c5064da5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2019-03-28 03:53:47'),
('37c764de8be672ef24dc94f4df', '{\"install\":\"OzqevHJu1B\",\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 05:09:15'),
('3816e7b3ffe257c36be428af72', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:48'),
('381ad98f4bd2eef0900d08ceef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 01:29:20'),
('3839e6a9eac35c39e18cdf589d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 05:50:26'),
('385123759738cdc1fb320df642', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 02:18:30'),
('38d18cdc11c8bfc539d154a8ac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 01:48:57'),
('390215c1c71a3f0320049b6a79', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 10:35:41'),
('3907eec595bd0e769d0e7b517a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 15:57:58'),
('3926ac36553f8fbbfb0d1d0e06', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:01'),
('3988fb0097ad96ececdc342aa2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2019-03-18 20:10:28'),
('39ddf614af536cd14ce52e33b1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 09:14:29'),
('3a436d7b35987851b3bac1a7c8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 05:36:03'),
('3a6ce50700b0ce4e011d018417', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 04:53:18'),
('3a6dfcc12d2da80ccd374d4206', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 08:37:25'),
('3a83878242d7a0641f74cd9b49', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 12:24:46'),
('3a84baf302b4f1c781b4ab3718', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:55'),
('3aa1a7e73487fb03a17d82184f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 22:09:24'),
('3add5ebe7bc68c41f183c8a447', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:53:05'),
('3b402876eff69abcdce01a3310', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:01'),
('3bbe59844fb9f1cc178341b242', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 03:53:45'),
('3bee2ca0049ae4ffae3b10e0b4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 00:36:08'),
('3c466903481c0b541ab7e98eeb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 05:06:52'),
('3c954db651fdf70c9a97d6c1d9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 18:07:34'),
('3c99904f1ee3b782c310567677', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 14:23:03'),
('3cb671d5d8e82c7b1e27238590', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 15:37:31'),
('3cc0bc4725876a2cea379d11c2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 20:47:43'),
('3d10e0e7ed189e9a03c44ea110', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:38'),
('3d8d309bc55971c1e6f645a650', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:04:56'),
('3da5891b0d21d027f17525aa9e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 16:12:15'),
('3ddce4e27b64e3587b80f7fa62', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 22:55:27'),
('3e059cca478f647d17061328fd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 19:16:33'),
('3e36c7b96a3962798d54f3e94b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 00:07:22'),
('3e7d92a415d0768413381ffea0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 08:10:16'),
('3f5ac57d8a82ff0f703048aba5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:27'),
('3f8d1a84730828e4c382323577', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:26'),
('3fd824b574888140efde318fe2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:45'),
('3ffa2238d26606a3e66dd68b89', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 09:53:19'),
('40534dbea4e0eee9c0b6053806', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 10:28:29'),
('40eed922df21800b2e1752e05b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 05:48:43'),
('4108578d2ef77a01e05de43dd4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 03:07:23'),
('41595919c7a31d48e53f609b61', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 18:02:38'),
('415cc366a013415d31a91bb4b4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 13:46:40'),
('4183b1d54f49d6b6008e181d9f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:59:01'),
('41a758017d16493b8ad0dcd23a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 09:23:16'),
('4316833514a42a1a7cc2506868', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 01:12:08'),
('4322d2734112fddc351d5a175a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:46'),
('4358de9317ed50309202bcac0a', 'false', '2019-03-17 09:43:46'),
('436cc4fb1dc57fc5c4192c9128', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 15:33:12'),
('43b9e0cdb982c64491e1df3cc4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:16:21'),
('43cd1ae94431a3ad81d0eb7611', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:31'),
('43f98bc9fa7bd78b18b3973f49', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 15:50:55'),
('440af1d9cf3e6b3cf236eb284b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 13:48:01'),
('445ad265bced1e423132afa1e4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 22:00:25'),
('44638c00817e0e7f47ffa71d51', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 05:19:24'),
('446c56504c9ddb8845fc078f18', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:20'),
('4477b39a735248a40dc6f8f664', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 19:30:03'),
('447dc65806bcd6910c5447fec5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 15:51:47'),
('44f82d8b6f9b8e4c605e32a436', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 00:08:16'),
('45def42d150650f7acbc1a9ff4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:08:55'),
('4626e6a262d549bb8a3def23ac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:57'),
('46326ed02a371586e34b37949f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-27 08:30:14'),
('46a9d548b88f54ab10dc06b2e4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-13 09:02:25'),
('46ae9f119e1a69dfa060c4b75b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:12'),
('46cbe7864ef34d74be4bdaf3c4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 01:45:09'),
('46e4327fd688cad534e566c882', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 11:19:25'),
('46e8760c7f5de2667c2a2b30d2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 11:32:29'),
('472ba28911242b2e8ee00bc32f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 03:54:18'),
('477e1c8fd0bbf741ca62ea8ff0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 10:16:51'),
('47843af14b7a91dc38fcca9cfd', 'false', '2019-03-17 22:38:22'),
('480dadf6205b8a401b7bcc8b43', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-22 14:23:22'),
('481bc746acb02cc7d8152f6126', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 04:39:48'),
('4866d016d30e474f567aaf7105', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 17:07:43'),
('488bff5d49a9f6aba9a4e321ad', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 09:32:06'),
('49008a46ac0374a50a194b0312', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 19:26:08'),
('49262a1934d477cdc367207c75', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:39'),
('49810ae02a094b565596728fa7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:04'),
('49b506e2c21a8ba2bcd759d273', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:31'),
('49df7b3f6fbea1c9405878b111', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 16:52:59'),
('49f536710f0694bb959c33932a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:27'),
('4a26c425d317d99026e2650341', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:38'),
('4a5ff5d84c704d88c4087e55b3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:43'),
('4aa9f3affb9c25a32c1a5f2028', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 06:42:07'),
('4b05bc53fe1f49a4db76a923a9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 06:41:24'),
('4b3278b3ae06502ced40df756b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:22'),
('4b66c91f37f7f294e70b713fff', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 03:03:45'),
('4b7c8f608d77efdb6e3bf28c3c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 05:03:46'),
('4bbd2b566e187cb34dd21f929b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 15:21:31'),
('4c2ca1dee371b31afc78c103bb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 13:41:07'),
('4d7517c4131e1c79cf82067f85', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:09'),
('4dda5e53592410baf86aece1d2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 17:43:43'),
('4de77786e09e35354545f4ccd3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:04'),
('4e453320a7592b9722060213cd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 03:58:21'),
('4e760239a1eab0f711d020139c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 13:34:34'),
('4f178c3feb523af8fb3ce43832', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 14:56:20'),
('4f25cc8c88f89c8fea4f276178', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:04'),
('4f351d5b7d7dc5005fa3ce9922', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 05:34:35'),
('4f614a61264c49bc922ad2f847', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 07:58:42'),
('4f9c1e00fac1f1021f7aec01c6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:40:20'),
('4fa989051392e52254e8c15c8a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 14:09:54'),
('5047074b36ac8234aa76931634', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:50'),
('505453dc34857b6c9a5a190ad4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 14:23:03'),
('505e2087f4363f02300d456bd3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-22 14:34:55'),
('50e84e601ff6b61afbdbb18476', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:33:21'),
('5107866d02a3bc3b853c30a28f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 17:13:28'),
('516f1f14de91c34c39ef6684b0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:36'),
('517211947780b956abe89482a0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 07:17:35'),
('519933cd2e44c07a7a80c749b2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 21:08:06'),
('51b97f414f04c831e90643f813', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 12:16:15'),
('51cd303447981ed8f67a806bb9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 06:19:40'),
('51e69d87195aa3c55bf2164fc2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:08'),
('51fd45292df456d3fd55ac0e80', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:41'),
('521df0ab2e527604127e840510', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 01:21:49'),
('528ed8c7ea35c54ac8a97e845c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 09:10:06'),
('539ac73f7c30572b768af29546', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:54'),
('54064c7a70a955e17048c302ce', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 05:27:07'),
('54403a6a22f73436f3cc13be83', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 18:30:57'),
('545361cb3d0e00c54437bd46cc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:15:16'),
('54561518f653f5344ced9ac747', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:55:20'),
('54bc311c695701cd2a36ff406d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-01 23:46:45'),
('555c24b6e8c48c40f847dd6136', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 20:41:56'),
('555f454ac39e66610155e0e0e9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 04:23:56'),
('557280f6abee9fbc44c3bbf72a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:25:00'),
('559ddf7e02759568e50d5307e8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 21:22:06'),
('560f41bba7dcfd4bdfb88c21e7', 'false', '2019-03-17 22:27:58'),
('5665cd1b539a8affe1f3460688', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:02'),
('56e201aaa39e20caa4e983e6a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 02:36:47'),
('5734333f0c117d74c21fbe2170', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 06:12:36'),
('573d52cfffb0c56cc75fb62be4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:39'),
('57c9b3a58e8695898351999e5b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 15:00:33'),
('5800d22efc88378fb85ca5308c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 08:33:00'),
('5832993bfa0569776898bc10df', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 08:01:32'),
('583d232f88c690bd3fccf68914', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:08:41'),
('5850610df070a0e792a2567a35', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:28'),
('58b69f2fef0af76954194d789e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 09:37:18'),
('58f5f9087010c5023b8f8bde28', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 02:08:53'),
('58f797aa7e5d7ba62833eba4d4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 01:04:56'),
('5953e862d1653d159b45077137', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 14:00:42'),
('59acd113d1250af333908fa784', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 01:52:31'),
('59bcc61fe254c2da8ea74e8c3a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 13:23:23'),
('59dec8d37c22df982ceb74edf5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 11:08:38'),
('59e5693aa51681c6fbe87e61a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-01 23:52:55'),
('5a14597e75f9a013047a094ce8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 04:07:16'),
('5a252e2c924dcaac0bfd7b3b60', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:00:51'),
('5a29614c7b16ef6844aea12f7c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 09:50:18'),
('5a4637f284fa73156a1a57a1aa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 01:50:27'),
('5ad4ed863d2094b8fbe60b81cf', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 20:34:56'),
('5ad5b6dc2156a0253a9b2eb98e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 05:58:43'),
('5b6926806fb083d15332150dd4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 08:24:20'),
('5bbf0d6d21d203dbeb53646854', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 12:29:32'),
('5bc578d08da175b13fe42c7ebe', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-01 13:24:44'),
('5bf58ec950c5fd67e43bd064eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:22:04'),
('5bf62d4c5a4195fe7c597242e5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 23:13:34'),
('5c00b8e1423282538a9fb39382', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:21:35'),
('5c1d797a26c514f6d8180cb1b3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 23:17:08'),
('5c30b79b662f60721eb77b1861', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 03:34:17'),
('5c41b29c782ab318dd5a06df5c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:18'),
('5c460b32cfdef85c47c77eaa69', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 02:03:28'),
('5c6724e0ba9a067f6583d0e259', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 19:57:13'),
('5c9e6f308c706ffe14f5e316e4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 11:04:40'),
('5d4b65a263474b926a64accdb8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 20:22:05'),
('5d5d1c4ee422207ad90efe510f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:34'),
('5d60d38405e2a2034fe929cb3d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:52:58'),
('5d6c7e9ba9c17f8a2ccc20f725', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 23:14:29'),
('5d95a09432a5652dd503bc6985', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:05'),
('5ea1f7145fdf60aef153b48037', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:32'),
('5ead8d34574fdc1465dbbf94be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 13:40:59'),
('5ed4f6d6ad7453446b0beef155', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 04:42:02'),
('5edaaa79906f40824617cee18e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 17:46:58'),
('5eee10901fba78f4106482dbba', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:54'),
('5f1fe9a028c602453fdd4d8065', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 09:59:25'),
('5f58ce54c20d8942c733da8e70', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:24:08'),
('5f84714e11eecf634d93907b0c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 04:30:05'),
('603666003c026799c062dd4f12', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:33'),
('604029af8dea0ea90da7c66038', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 05:03:38'),
('605a7a53e5f593949ec689d4fa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:16'),
('605fa27aca7df9e42c9f559a47', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 00:19:46'),
('607c1611e225c2417a5be530fc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 12:32:37'),
('6083fe3fccb0876e525f6a5b93', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:14'),
('60850a1477ce337a82115b3ee5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 17:53:47'),
('6098124a1c63bba502d6841075', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 05:01:56'),
('6098fff93830a97e6366efa7b2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:19:20'),
('60f995850ebab5c260b22a576b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:05:34'),
('616e7e1fe1e8164e3e152e77b2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 20:16:02'),
('616ecf7cf5f841542d0931113c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 11:29:15'),
('61c27b136da589896ad22ba6a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-24 01:33:57'),
('6205e9f09dd7bf51b58e1b1427', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 11:43:14'),
('621196bb837631cc728c9e4526', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 12:55:24'),
('623190437f1bd77ddc2e6ac9e2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:50:32'),
('626d6d49ef546629ec5a894cf5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:07'),
('6270b80a80bf3d97be181edfa9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:11:50'),
('6294f1ad46331ba1723091692f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:54'),
('62aed916bb91e8c877e471b8dc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:15:47'),
('62c0997d3f518b6906345f241b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 08:30:42'),
('63160f84eb63c095052218f5df', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:33:44'),
('63231d0a5e498f4a38dec2068d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:28'),
('634b0361f91193dc42d70e5e29', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:36:12'),
('6354b9b036ff26951956fae251', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 01:10:10'),
('6367e892072a8a960d211b2d39', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:00:08'),
('6396c744849c6cde936895c7a1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 05:53:43'),
('63e3593cc6ba79af37c2c3d8fd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:08:08'),
('642ad9d24230e5b05eedf50b50', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 11:04:11'),
('6453fa83e3f4e111f02c92358f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 14:08:43'),
('645a8df7dcd31d4c0a7142e524', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:05:23'),
('647c9e2a2861131e97988a9c22', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:14:03'),
('648367cfdf237cd3c7874ccb18', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 18:45:14'),
('6497d0793f538952abe97f740c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 14:18:00'),
('64a149705d3f392da71b57968c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 00:38:30'),
('64a1548a5a6d4eb57e44d0a9c8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 14:54:15'),
('64a25f415a00c9abd4fbb19b5c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-26 11:52:07'),
('64f43ad392889637a90cd6a801', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 03:02:16'),
('6530fd0ee46b63790d71d79a21', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 12:06:54'),
('65bd16d2f83bca0fbf2ac76ee8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 16:03:46'),
('65ed3df7570585ad0a9eab83eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 03:05:28'),
('65fb45e9a0ba6ff6b69ac20e2a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 11:51:28'),
('6665cfc85ee37519472e693dcb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 17:48:27'),
('66acfa4fd827895687aa510c5a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 18:06:16'),
('66c20386f778a2cea04c9ff399', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 15:50:05'),
('66e848a88becf4eca0769bc21d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 13:18:16'),
('670ca632109504cbb2311e02be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:01'),
('670e6bf9d228d10440947a0eca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 06:07:57'),
('673195407fc5a3e67da516732e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 11:51:26'),
('678e158b530d5a86b3033af14e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 11:03:40'),
('678edf232b784325b79f198430', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 17:28:25'),
('67909544e0fb5753ed16fdb355', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 13:01:52'),
('683047b536d2ef5d2535466afa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 11:58:10'),
('685292f4e8ac05c0675f1cd3be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:29'),
('686fc1a3b3f080fb4c2eebb931', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 07:23:49'),
('6873eb997f478669251a013b54', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 04:16:44'),
('6881376ff85adc62a9eed04c32', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 23:13:34'),
('688360df8c363d2b3f775265f4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:36:08'),
('68fd73fef7145ff6c9d7c6999a', '{\"language\":\"ru-ru\",\"currency\":\"UAH\"}', '2019-05-03 18:54:21'),
('69024e0011bc48318cbf233953', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 09:33:04'),
('69332c2413da2a1a641b1aa588', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-23 06:18:17'),
('6986d1040190d08f7820a7d930', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 20:12:35'),
('6990e7c79aa26ea778701cebed', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 14:53:41'),
('69bb24f24d9104f388e54bb63b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:22:18'),
('6a1906526cd140c256eb6fa5ad', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 17:47:28'),
('6a52fe48560bbe8b100f65cd7a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:40:56'),
('6ab7fbce441550d0eebd71da16', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 13:07:15'),
('6b5ee229cc8c0f78aed409735b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 21:15:23'),
('6b63b0ca51ccb5549a20710eec', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 03:32:41'),
('6b75fcb76bf8b8ed655416738c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 10:03:18'),
('6b93bff2b81e73ca40b72d6336', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 08:32:35'),
('6b9dc8ddf5bae91676b8a342b1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 06:13:23'),
('6b9dd9510981c94b81c09b6f41', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:07'),
('6bc2009ceef7f0757d485fef9e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 17:28:04'),
('6c0da024ff9056c04896ad4e34', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 09:54:31'),
('6c171e28d6ed4dd213d9fc8e8b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 08:38:34'),
('6c4137ee0f14337405ea9cc1c8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:11'),
('6c665d01eecf17bd1958a9e47e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 15:46:35'),
('6ccf530161022f8d00c7cca44f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:12:00'),
('6dbe70f0696068c265d25b64ad', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 08:45:54'),
('6dfb68b47ef2b8fd22e5ae590a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 17:45:11');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('6dfd655b876c5d9a3c28bb1a65', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:11'),
('6e29554bd875b6c558196e8dbb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 16:40:26'),
('6e543ce73e2fef4b59252ff6b5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 22:22:58'),
('6e87fa302f6c9faf5c4291047b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 14:43:32'),
('6ece6382f3659ec229af62ed4b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 22:05:41'),
('6f353e5e2b939d4a46e504ea3e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 12:52:14'),
('6f4ead21796c00cac8b8adacc6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 20:36:36'),
('70124d7591876aa49a3ffb7697', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:17'),
('70258fc837bb19ebcf346e6bb9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 03:54:23'),
('70450171e4f5dc8fd4f5cd99bd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-01 14:32:27'),
('705a9147fddd8b6df2c0c093f7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:24'),
('70a7d19498ee0e072a321c18ce', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:27'),
('711626d23baa154abe11e4a50b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 06:01:41'),
('71263124e5ddeae8fbae4df13c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 11:38:10'),
('7126bff2f86a31dc5db9c384ca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"directory_file_manager\":\"Huawei\",\"page_file_manager\":null,\"user_id\":\"1\",\"user_token\":\"VGMP6i1fT141h1uqW4yX5XcHV25jkWgz\",\"install\":\"a2O9Brr6US\"}', '2019-03-17 09:44:40'),
('71b2bda613e8270349823a09dd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 13:40:33'),
('71b725c8b7b22f16138069cc95', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:15:06'),
('71f54520e381ad2c3ac1afb931', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 18:10:21'),
('72434b699f4c405ef984d9f578', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 06:44:26'),
('729bf44ee504d73cc7ae7fb7ab', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 14:21:14'),
('72ffe350335823476465724777', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 17:22:01'),
('7311dc0cda3b7786f541f7d2b2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 03:34:24'),
('7318a5f39ffcec35c417c36269', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:41'),
('735c1705fcd79b49317b4da005', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 00:14:46'),
('73d0ef992c3490fa2b20b74ed9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 05:29:26'),
('73e481e983fc7109b7205a7ed1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:38:02'),
('73fd51ee52adf624a7b7c4c8a9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 17:30:27'),
('7430b49b93d5ea56362a4a4ec7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:59'),
('74c3a1c59ff22460017f7bc29d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 10:04:54'),
('74df06e745052fbf9b801b660f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 13:11:02'),
('74e08fd2c5e0a29dec9a422391', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 18:55:22'),
('74f775b96f84284c2a3eccd87b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:04:56'),
('74f8ebefe5d9045c095478c956', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:24:33'),
('758551ce7509ac997f9d21f937', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:58'),
('7586b50be9f4d47d3dba12c625', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 09:19:53'),
('75d369d87f594b82fc659995bf', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 17:39:58'),
('75f94ab27052ca89825e786058', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:05:07'),
('76567eb736c3db706f881cbcbb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 06:10:36'),
('773778f827cc082968eaad51d7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 18:26:18'),
('774a806d6d0e25ac80395af27e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 04:54:49'),
('775188d72792ce8a4229acc372', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 01:45:03'),
('778c1ebee155ed7f8510aef270', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:35'),
('77adbe7c68f1dce5e367a664b7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 02:00:06'),
('77ef41960f703eca14fbfd7914', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 03:15:54'),
('7831769e6ba1a14295b806eecc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 19:55:51'),
('784f72eafe37aa11c6979b18c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 02:11:01'),
('78601c9d2ee6f7025003a4768e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 12:30:55'),
('78730686bb48a080dad385baec', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:58'),
('7876ffab49bb6a163c7e70f791', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 14:47:31'),
('78f57d6a34a585c08608b66f5f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 04:13:02'),
('7ac2450c57c1628b9160dbf026', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 13:42:50'),
('7b9091c680020cc048a72039b3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 03:16:22'),
('7b9ebe3bd37c51f0b99d83626f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 14:10:42'),
('7bb29803b7bd9cf9bc05211369', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:02'),
('7bcb6da54279323da119d892bc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:50:33'),
('7c031a6b3be9b2583982cffc31', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 09:09:19'),
('7c2ff5006bb5ef6b761b398110', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 19:09:22'),
('7c554ddedb51077330d5bdc83f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 09:57:22'),
('7c66619f8ea6e9194e6765e1c2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 05:18:10'),
('7c868b06aaa1284317f97cea1b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 16:48:54'),
('7c8dd23dcf08144554790322a6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:31'),
('7cb3210115a69e0016f06daa1d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 06:48:22'),
('7d1301a3342c3be0e68df4e497', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:33'),
('7da5d88bd0d7ec231c13c95f49', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 10:46:11'),
('7da7a3e65d7590f1dec233827f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:47'),
('7e25206ce964bfeb69c2636077', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:45'),
('7e6f4bfe6b22a4f42d8635e217', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 07:21:46'),
('7e724052895f49842c7fa550e7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 00:17:28'),
('7e885bc1852a572029810e4dca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 04:02:33'),
('7ea686b107f6d123409d73fdd3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 19:07:35'),
('7ef91118c019c32792bc3742a3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 16:32:42'),
('7f51175fa3b89415c243ae0bc1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:31:20'),
('7f7d085e98eec34265e3045429', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 19:48:08'),
('7fec4bc6aecbccf51877d2b6ef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:07'),
('809a62f4c9a7e06adf9119b361', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-13 04:30:45'),
('81103db451226cc861a37fbc42', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 02:01:57'),
('81162f87455ffbe8e58573787b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 04:50:11'),
('81772da26201716a29ea667833', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 08:04:07'),
('8179d58bed28b67c912faff81d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 04:26:32'),
('817daca905291dac310dee888d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 15:54:37'),
('820d90fcb320b4afea7522f591', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 08:04:08'),
('823490aa65570778bd3b4ad456', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 19:55:39'),
('826a8499d4738f4cf50b0d0797', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 12:24:53'),
('830634fd5c71bfbc0f44bb145f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 12:42:32'),
('830f9e67cc63083224217bdb8f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 16:39:18'),
('831727305b8878fcd2116d9737', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 11:29:29'),
('832b7eeae53bc20abfb33b79d8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 03:40:42'),
('836f37d81bb059260e76a75e1b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 19:40:29'),
('83b7b45e91154b95d47535d5c1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 21:44:40'),
('84263a92d582a69f57f90cf28c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-16 07:58:12'),
('84914ebb1ef9a7736d9662da14', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 13:40:53'),
('84b82166228a452e56f98b975c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 19:26:12'),
('84d9a88cf22b5925153eb55e00', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 01:07:28'),
('8525861c962d9758bffb1c090d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 06:02:29'),
('852a4112adf54d83f9ab4895ac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 19:38:48'),
('85695884bf6a0c7e5188bcaab1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 04:19:24'),
('856ff9b2958a72fd88ce790294', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:03:56'),
('86dda07532fb37b774fffb459b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:15'),
('86f5fbc733a68108e5a0fe2558', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:35'),
('87640c093da2e1d3b2ef6dfaa2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 06:48:18'),
('8779469dee06f76152f29033e3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 12:25:30'),
('878798d70fc70d01385d4203be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 06:05:58'),
('881031659c86a3e8c28a6015f3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 18:10:25'),
('88128c6b51b93785a27812f699', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 16:52:39'),
('8821ba37e4df53688bd0eef216', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 00:29:22'),
('882a4b592f4836c34c104dfbe9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 06:00:47'),
('88a4e958d5ccc2105030b8bd92', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 02:19:58'),
('88cc7d8f550b238d562b59e0a3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 06:51:28'),
('8914ecec3fc54bc4d818170ffd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 10:59:28'),
('89438ebdbe8443a0010ad35f37', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:22:11'),
('89ed30d080f762f7d3c8a81b0b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 07:28:24'),
('89fd8b0c062c74684a50710f22', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:05'),
('8a28cbd99ab7f609e73f46b4aa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:51'),
('8a7458b9075ec2e2b780dd82a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 02:31:33'),
('8a970fc43c0e3b6507b0b627fd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:16:56'),
('8b62b9a9694ced989c42482aa0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 06:27:07'),
('8b714619c12df51f62dc4cf233', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:52'),
('8bc068b1f350f876d5cd8073aa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:04'),
('8c9025315d4d3cc45baefee331', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 20:42:00'),
('8caf12688d3167ffbcda7841d0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:43'),
('8cb15a69918e4ffe8f30d31ae8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:09:44'),
('8ce892eb1072606345df6cd9d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 06:35:53'),
('8d198b083cb8c794852f0a1e0d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 17:20:02'),
('8d1a07af92a0cd4be48c122db5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:58'),
('8d312f7b01d1f85d60b3fa94b3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 08:00:19'),
('8d6dcd5295cf3432000512a79e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:15'),
('8d9b27cb591192f437d0a7fcba', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:00:08'),
('8df547a00740fb846cacc3e034', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:26'),
('8e5bb3fe015282eb6197b2f07d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 00:42:45'),
('8eb947fc5a57e090ac777e2229', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 06:03:30'),
('8ebc5ff0237b4f27763e75d1c1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 03:52:22'),
('8ec0e4ef7c74e8481e925393e2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:01'),
('8ecb923df0c4cd813798fc072f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:57:44'),
('8ed97f05663edab0385e0e6a4a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 01:22:44'),
('8f24f0b44eee36473148eadbd6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 18:47:45'),
('8fd4643b1335abc0519b1a2d30', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:20:27'),
('8fdbb805b12411ffe735ba5788', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:38'),
('8fe2d14dc3767b1f9540792a6d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 12:52:00'),
('8fe3e27a3369c96b4e55123926', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 11:39:15'),
('8ff3791b6fbf8b66101fea5dcb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 01:21:14'),
('90326a42738dcb48658c3e3e0b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 03:21:02'),
('907af3b00b1dcd93809815012d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:31'),
('90b414353e68d4d9ef07434f63', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 17:29:43'),
('91588ce378289fc071c2edb0b3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 05:35:17'),
('91998ffd47146cef59689057c1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 05:21:13'),
('91bb73e7d1c5d0a9dbdd7880cd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:27'),
('91c9a4ed0627c0e8516d17947d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:58'),
('91e9fd44c0e804f67709c45b8a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 17:28:50'),
('92049d7ddee7ca7075e78296bb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:08:17'),
('9207580f8b71144b5abe44a8c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 15:38:48'),
('92335db4755d5e558cf6844499', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:33'),
('924b137db7549d84758cef6c5d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:54'),
('926410f3ba1aee7df4ddc8e9e8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 15:49:07'),
('9302441983ee3f1ef6a433631f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 19:04:10'),
('9322ecd15873f07dc455968dbc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 01:39:45'),
('934c4f5be1703bc948d4c401f4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 09:59:31'),
('936c5e5cd382313bb5ba9e9526', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 21:04:58'),
('938c892e77bd47280eeacfe218', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 20:22:52'),
('9403320800b1fdb4690c97559c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 06:44:42'),
('94ae4132ea94d7126c9a3a235b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 19:08:51'),
('94c2a13b707b53d303a7b713b9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:14:28'),
('9553265469b98ed29548b2d177', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 12:59:42'),
('95837723660f265bc18b57614e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:19'),
('95942b08d9c693f8bfa9c94485', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 05:44:58'),
('95ae5234b0de57265bee27806e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 07:38:43'),
('963d0682af3ce5d6e92b0ed974', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:08:35'),
('96612313cb9b33133a1f098fea', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 17:29:44'),
('968be9dfacf20fc71dc0626ac1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 15:43:53'),
('9691efd1ddca08607366f4ed7c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:39'),
('969b2cbb1ca306d70e37733e54', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 09:11:48'),
('96a2ffee4d77ec506893d60332', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:06'),
('96e76db02718dad09acb10e631', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 20:40:59'),
('96ed95d482278340add52ff248', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 23:30:33'),
('9725358a288675b8cae69c3def', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 04:09:01'),
('974187d4897c16afe51499036e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 07:26:55'),
('9747ae1cbc79e4db4ec8ec157d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 19:32:34'),
('978e6faa4b96a836ea46049000', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 05:43:30'),
('97b34063a271d23d3be8fa67f6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 00:44:02'),
('97e8d628ef5f38e5f68b572581', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 16:23:14'),
('98e1a3cf8c417cc509aea66476', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 04:32:10'),
('995340ce2b6d06128a329cc1a6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 06:39:25'),
('9972c913e997f27852de4c7d73', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:07:20'),
('99c3ccbe313a48fd60e6a7145e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 18:45:04'),
('9a521a8455781c4e52a3d94dc0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 14:08:33'),
('9ad468921d5a9d4ea8105da07e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 11:49:49'),
('9b8c2de9e1596f3d61e8248873', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 05:02:23'),
('9b9bd9184d13d062b3e7e0f25d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 17:02:03'),
('9bb798a6f7f40e0871b86cb905', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:12:08'),
('9c39ba691f6401af032be09706', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 18:56:08'),
('9c5d383dd9b9ea3e698d70fcd2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 11:09:44'),
('9c79ebf2ce5a8c5ff6f98437cb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 16:31:30'),
('9cb23ffa252275c5cdef9cd720', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 16:03:32'),
('9d8dea993d4a6607526977a775', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 10:35:35'),
('9daa04544813346a6714d4d781', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-26 22:04:55'),
('9e0d1caeb2703ca2e59f895df5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 02:40:27'),
('9e20a8c8f34aede938f3a8c382', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 01:34:35'),
('9e34729dcae0097d686bd2919f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 09:48:54'),
('9e9aa2774e54e9ad5a3f331957', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 08:44:34'),
('9ef284f2919bc5f5fa31ba79af', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 19:26:12'),
('9f42ee96f472625fe597a07dac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 07:38:07'),
('9f86cb765f320397e1344ceb5a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:44'),
('9f9b36dfa079203a2dfdcac5b8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:58:36'),
('9ff4d7daa334b862f56ea2d9e2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 06:23:22'),
('a008c57e3be55ac9317036630c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 12:36:00'),
('a02571aa7251200f99de6e1534', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 16:49:14'),
('a10da844822d3e77a03d86480b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:04:58'),
('a1424ac07c353209b9e768e5ee', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 13:23:04'),
('a16a2e301336c8ccec1c2331a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 20:36:35'),
('a1dff6dd8701a785a206f78237', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:04:34'),
('a1f6f5704fe0576b88823c4664', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 07:04:00'),
('a22110048008199cde0e64c074', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:48'),
('a318c2d454f3fc1e65c0bc18b8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 15:01:12'),
('a3924d8a6dcb6446d1ddeff6e9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:43'),
('a3cbcfb65d4200309a23e534d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 19:42:02'),
('a3cbd0fa9f2094b1faec8931ab', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-22 01:45:46'),
('a411c6f3addbc79f949caf69b4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 02:33:10'),
('a42b6cd3f77c8090c04b2c098f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 18:54:44'),
('a4d3f7a85d4a9067b925de2810', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-21 18:29:03'),
('a4dfaf827bb320aebb04ebb2b0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:19'),
('a53a57fd0b425e9c739ff48bea', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 07:13:45'),
('a555d1cfed02e09ca08e8e4d99', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 14:27:49'),
('a571fa20c7aa413768173d3ae7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 01:49:10'),
('a57bb830da411c3ce34707356a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 14:30:06'),
('a5d9a09eaff78fef89e1f837c4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 19:47:55'),
('a5edba0e836e08e3437a262b53', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:09'),
('a642e3a0836c9318ee451baf06', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 03:40:25'),
('a6cecdb1a1171f9e43476fb95e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 14:23:01'),
('a71bfbae899d0ae1a8c3cbb00e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 14:24:02'),
('a79a9011fce9f459e3d0fa4ba6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 18:45:26'),
('a7c6affd92decb9dbf71a0ede7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:16'),
('a7c94d1c5314bbe2b11d345665', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 03:17:52'),
('a7fee7b4e5de4d238450c34e52', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 13:31:20'),
('a82aa27ab19dc3ad36d81d022f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 22:48:06'),
('a865eaac3e76cbdc00cffd8e0d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 05:14:25'),
('a876f6257752b1d3085577129f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 10:31:20'),
('a8ac062f22477d8be10e4ed92d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 06:40:12'),
('a8ea3fefde3eb27221e4c0de96', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 00:57:47'),
('a903d8ab563370aa6d4ffe6c1d', '{\"language\":\"ru-ru\",\"currency\":\"UAH\",\"user_id\":\"1\",\"user_token\":\"We95PIQ7HEYfNqydQdABsS5Ebx6t0ybm\"}', '2019-04-23 13:27:09'),
('a9087865c79a005b44e6c720fd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 21:43:11'),
('a93358046dd87e04463d068bac', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:20'),
('a940c11b85cc57b991d544b26d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:04'),
('a97e65da81686d9e1cfa473897', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 02:36:00'),
('a98a7a0e3ae626461168cd1bef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 20:48:19'),
('a9bb6b5e07a2b69dabb417dd09', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:02:32'),
('a9f96c0d7c211104464b722c29', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 03:26:10'),
('aa1baf8a5e38108a47a7048c3f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 17:32:46'),
('aa3df9157a422c0c5573076ede', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 16:31:40'),
('aa606da6aff1f8c82c64c88526', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 12:59:18'),
('aa98a14450ab403b9ebb4bb5d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:03:47'),
('ab1e8c780539e4c063c4cf0bef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 19:57:27'),
('ab273ffa6ebba4fcdc8ac93796', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:04:42'),
('ab2c0de31dc5faba569ec8faef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:15:20'),
('ab3a6af09585b381a3b70955be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-20 19:33:15'),
('ab40989aa7d42b40cb7da3f4d8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 05:31:19'),
('ab432e92c934a94d236d01a3a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 19:33:44'),
('abbc6cf4a0d5f1ae4261973bcc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 10:56:34'),
('abe8c13b6f97a9b2a40f9e02b7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-01 16:29:06'),
('abf0b4703d5953ae42134a4b4d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 11:27:05'),
('ac481dfd12f40ff6618ad7aca2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 11:46:04'),
('acd892826f588189975c4c1f76', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:36'),
('adf3a4803feda69ce106952a22', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:23'),
('ae080913850eadaae1be38f490', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:50'),
('ae338eca81a445b2e97cb7d482', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 01:54:51'),
('ae64d729a577638f364e912b2a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 11:44:39'),
('aebbc384a8d349a10b03c6ce75', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 15:03:48'),
('aeda76cf01e9426f098c63812b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:38:37'),
('aef34ad8f8664ada238dd05d42', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 19:38:49'),
('af8ae4f392bc7dfe9a51b94a6f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 23:18:11'),
('afae7a9c9393d26a21b4290c91', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 21:16:42'),
('afb46819e06481884fc780347e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:57'),
('b01121d3e7aaf6356dae1503a8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 08:48:46'),
('b01c5cebadb1fdb3b277964462', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:41'),
('b01ed0e5cd4a7e1910e970f27a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:40'),
('b0dfaf052fdd6bf62a7e311f7a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 12:42:41'),
('b160529a355346537a7fa2dfd4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:20'),
('b1d82ca3dc52d7ea9ff7d80571', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:01'),
('b231eaccc1061f22c6cd5308df', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-22 18:22:07'),
('b238376a4fb81c9191e0d5ad87', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 17:32:39'),
('b28c21d58f82a6364f13c645c5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-12 04:44:09'),
('b2a76f2d850a49cf3f4df76a47', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 23:49:35'),
('b386ecbb56cfcd4456aa0b3fa6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 22:53:03'),
('b3da9d8a6795cca147ec9d9202', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 18:10:25'),
('b3f95f3c032adf01837c59db95', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 05:01:52'),
('b4403c2555853f29ec20f76bf3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-20 02:13:11'),
('b4564b04baea77b8ec674d705c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:50'),
('b462e31e14710ac701d7d59247', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 03:21:44'),
('b4633d9d63ae523f85b67bea90', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 00:05:37'),
('b516e46cc5610e2b155dd0b82e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 13:27:34'),
('b54be5629e44a9dbf90d616e00', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:42'),
('b55c739df35e6ab82b022b20db', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 04:10:45'),
('b56fe94496277633dbc388bd36', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 08:16:02'),
('b599c1c99284705e2b9fa39f56', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 10:35:40'),
('b65115383a2232347708cfb0c7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:51'),
('b67364fdbf828c3bedacc13c28', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 23:24:08'),
('b67b45e970ad68c5271fdc1e32', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 16:54:38'),
('b69211379307751e6d7bcc52b6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:00'),
('b6b43e0e2baa0778d80ba9a84b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:17'),
('b6db2f1be4cefef20b6adfc858', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:01'),
('b6de96f66a438181f8dcd5c926', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 15:09:40'),
('b72aee92eba08255c453413b0c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 17:10:44'),
('b7b867670c14c68c46e88c23f2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 19:00:05'),
('b7d048fb79f859c2c9dcf1bc06', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 19:20:48'),
('b80bbd2582ea0931afc1987fec', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 15:35:46'),
('b8230b087d53627076b5ab3a0a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 09:53:13'),
('b825c2be2bf470591d844fc298', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:35'),
('b83cfb5928dbae1aac02b88e76', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2019-04-23 01:59:10'),
('b88a97f5e509414d4a77bbc457', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 11:58:35'),
('b92e3d236d1ab91b849bdbbe53', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 04:23:31'),
('b94741b8a643169aecd932c999', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 22:31:09'),
('b9aa29c06ee8bb6f88f04019c1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:27'),
('b9c10bb6b33111d7bddbd8a673', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 13:03:22'),
('b9d4b6cf83ed85aff9121bef21', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:38'),
('b9f92f871f03b9f0f988e3ebe9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 04:22:51'),
('ba30f619a6dd0ab787f8c05078', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:21:18'),
('ba7dc19436782b9e44d15e7775', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:14'),
('baa84e299e24f982fb52cf724c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 04:23:05'),
('bad48a918ed2b8b5993174446f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 16:51:38'),
('bb747379acb0d5adcb6b299b0b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:15:36'),
('bbcdc564c5947673800eee6e72', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:43'),
('bc0a8aded61fa691a3c0414eb8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 16:00:07'),
('bc2c6942ede94e02c8a54ac6ce', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 09:59:38'),
('bc4c96748fdaf01df6aa98a719', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 17:34:19'),
('bc5b3ebda044ba38225d4f999e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 22:59:15'),
('bd3e60faa16fb5fb0c69ac6e1b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 19:23:18'),
('bd49209b05a6531a361f0319dc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 14:16:56'),
('bdd8b276ea47c4dd6d6f164891', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 17:11:01'),
('beb07a94636fce0cec5bbfb454', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 19:16:22'),
('bf44645dfbbb989d5f1b0f7c1d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"install\":\"AqQ5YeZnb0\"}', '2019-03-16 07:08:11'),
('bf83414ed0bfed1edf9ba01e79', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 00:17:36'),
('c01ddb09cb775f1e80d6a0c9cf', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 15:39:11'),
('c0c341bdec9bf0b464a99d2c5d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 23:50:15'),
('c15238e829ce777478fc462b83', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 00:29:16'),
('c1aabc2a732931bc3de82c0435', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:53'),
('c1ad3230e54574e0225db457db', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 21:46:30'),
('c1cf7e25c934c2e26901ff7895', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 17:43:49'),
('c1fcdcea2ec5f92f4bba795438', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 23:08:10'),
('c202091988253f423a97cf373d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:21:44'),
('c22b6f6559289e6acd9286d1cd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 08:37:32'),
('c243effde45eee8912edb5afa3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 23:24:42'),
('c26f2771246a60698dbdac28ff', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 07:54:15'),
('c2ced468c5cae60a43d9c9d4fe', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:19'),
('c2eb38453ae41fa88234e2daa4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:22'),
('c342ad1ced64c4b41190eeaab7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 15:49:10'),
('c37828df0d4188c4529a7d63ce', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:53'),
('c38aacb3a7ef10078d16a6e9fa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 00:47:13'),
('c397ce2cbaaa58cd3500e235ca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 22:50:02'),
('c399d158d87510f567707cf2fc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 13:21:17'),
('c42b40894a3cc9c4f2c634ea14', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:46'),
('c464403d4d8869fcf9cde3b698', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:58'),
('c4b52e593887e627326311bc2c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 13:52:02'),
('c4b5b07de8cc384831346161f8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 03:39:03'),
('c4f24af0871988f741dbc510c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:53'),
('c5099c37987f62bca9adc29ae7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 23:46:57'),
('c5114284516280ac70b7f87b82', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 12:57:38'),
('c5180ae2fc1e1b31d8cc39a033', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 01:31:04'),
('c5ca2c6fde32dd29909fef0973', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 13:49:42'),
('c5fb4cdd6dae3f82b13069455d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 01:19:20'),
('c607ade4e894d8b2eeb3b2d1d3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:52'),
('c6189c5c1a1ce6f2f030b341b8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:47'),
('c65435cc476b7c2867653fec5d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 13:45:19'),
('c68750d4db89695aaa1b154908', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 04:16:44'),
('c693321d22db83cfaf3022cc66', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 08:51:46'),
('c6f7e560d10749a884d1f6fb83', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 10:16:12'),
('c77b11c925b61c3148a5442341', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:19'),
('c78963d606924e981cdd40d946', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 20:43:33'),
('c80c13a8d121996f1175954d5d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:09:55'),
('c839876f75fb928b9ea60709ea', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:01:49'),
('c8414e75be2788d6fcce8a1640', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 03:18:29'),
('c85680e3946033aebddc2b09c9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 05:51:35'),
('c8fd1671d70ca3f4f77fb2790c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-24 11:51:55'),
('c933955c146ff87170d5f6755e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 17:57:16'),
('c967b94c23897d8559a0288e5f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-01 13:24:43'),
('c9b22a6a99f8962e0778b65286', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 04:30:01'),
('c9f3eab405efad5cd53cc9743c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 04:59:20'),
('ca1b9572e3fbf8d88be9c4f90d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 07:17:26'),
('ca39b3f9c464b03f3701d88c51', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:21:57'),
('ca4f88d8a4fc2fb8976e28dda1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 02:31:16'),
('ca95bf70f5e52f5ae0d93a01cd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 00:09:55'),
('cb93afd54cf160e2a040637129', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 02:42:16'),
('cb98033ee9802e555286fbaf88', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 18:43:48'),
('cc5c7ef7858500d8ea6929cd34', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 10:49:30'),
('cc76165546c63b1de21239c181', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 17:26:43'),
('cd98050d35814134ccad8cfee4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 05:32:31'),
('ce00272ee3896099131408ccd8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 11:48:42'),
('ce3761ef19b793a3d295eb0a28', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 20:13:04'),
('cea01175b2eba390c3355691ff', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 15:33:26'),
('cee8fb7382ba1ebfc89a083b69', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:43'),
('cf612fcbc296ce489980175ede', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:14'),
('cfb2974e218d75c28c7b8273cb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 21:57:47'),
('cfcdac047e4bb704c217463631', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 18:25:12'),
('cfcdcec438ecae234fb6edd4e9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 06:48:19'),
('cfdefc58161a84e5b6720627e7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 01:54:29'),
('d005044e957cf2f7e5099af1bc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:07'),
('d0162942380b862a79a3de34f8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:38:39'),
('d05618407da59f60baaa8d2c42', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 14:20:10'),
('d060d014eab4648613613c4fc1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 00:43:20'),
('d0defb3d1e8bbb52c8f0c5af12', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:22'),
('d0f5549f8a87f3663d30519974', 'false', '2019-03-16 07:42:46'),
('d1046ee9c84136225ba222f1d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:01'),
('d167b6f5f63eba934eaf8657eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 19:17:27'),
('d18a30048c6d700af4a635599f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 00:23:58'),
('d1c39b0dbd217b38e6a5967c4d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 23:46:56'),
('d1df265aae32b9a3cc6b76699a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 22:52:08'),
('d1f0c9afa4d1bfdd69935b50be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:04'),
('d293e8c973fe21bf54a77d5377', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:17'),
('d295170256298e44d07db52377', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 06:30:59'),
('d2a2a0fb10c3c0a91cf57e30da', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:12:12'),
('d2a755bcf9e0bbc683a0fcb1c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 01:00:55'),
('d2c4cadc27d8e36b1cb686f641', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-16 23:01:12'),
('d2cec614df539d86f167e4ce0e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 04:11:20'),
('d2d49edafd657cfcb519f9e487', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 01:59:12'),
('d322aab76d7e0642f07de25c95', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 22:02:01'),
('d334a13e40f7dde34a602fe80d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 07:52:02'),
('d3635dda87645ec031a47a3af3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 11:09:06'),
('d38eb754521ce5b2e1751fdcd6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 11:16:09'),
('d3afe2033cac19d3131f99d291', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-03 03:53:40'),
('d3f17a901e84ae625185ff8f04', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 14:52:36'),
('d43cc5a49acff05fe309afeccb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 09:41:01'),
('d43e177845c5616d74d7181660', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-05 00:48:47'),
('d463e6b513e723a6bbfe52c164', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-23 06:37:57'),
('d4a22323a9b161a849b77807ec', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 14:41:31'),
('d4b4efe115079603f396fefd1d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 06:03:30'),
('d552e42f3436ab29065b2bd774', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:56'),
('d55c92c588414ecae46e75fccd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 18:51:06'),
('d56c3c98caff0db36c387e33f1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 16:20:20'),
('d58193fea330f0c42301c22cf4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 09:19:53'),
('d5b4f22d8dab9be177d8f64dca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 18:54:42'),
('d5f3ec3baa321ea7da4808b9fd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:46'),
('d6f5257ee9ccab6c722dc823c3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 14:00:06'),
('d71f370e695e2f281eeb704028', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:54'),
('d72050cd6cbecdfc692cd1f9ed', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 09:39:36'),
('d7206c54744481a99ceab9a555', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 12:53:54'),
('d75b7362a767746408849f74f5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 22:48:08'),
('d7774a1e2bc8b94dd53d97df25', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 12:00:54'),
('d7b1606954b3d1584d24384072', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 05:46:44'),
('d7c0ce460450ceb00738f977c5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 21:57:43'),
('d7efd405ce9dd5c172f16303c1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 04:20:31'),
('d8299e8e10fc7e15e39ef2497c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:42'),
('d9677eff8a38cde33ea3718bbb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 11:06:24'),
('d9e7dfc4be7db30b6f886c9f86', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-05 12:52:15'),
('da4e9b60951dc5ee6043ca1d70', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 14:12:13'),
('da74b7ffcc66408860459b848d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 00:38:11'),
('db2f096e3ea2f00d7f3382e5d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 01:50:11'),
('dc079d466f208bdae68d0e4224', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-26 04:34:24'),
('dc1f78a5e11e6b7805f45ce0b8', '{\"install\":\"WwoVBT5l9w\",\"language\":\"ru-ru\",\"currency\":\"UAH\",\"customer_id\":\"1\",\"shipping_address\":false,\"user_id\":\"1\",\"user_token\":\"R3OqfJdmWMBKAsQwAHLhIKFFjFOLnlZZ\"}', '2019-04-07 13:26:40'),
('dc2d9719428f199a0d6ef37bff', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 08:04:27'),
('dd2c874b35156e76fb7d35ea76', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:45'),
('ddcf62c22f445fda504cdcd732', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:12:16'),
('ddd4e7a0145a97b3ead902b7f7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 10:25:43'),
('de0d38e26b8d284dd02c9be7c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:57'),
('de18b900e0507c4703f0fffec5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 07:17:04'),
('de3d16bbd06c4acd19abca51ae', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 00:28:56'),
('de8fd2e5c19a379fc3d8738e2d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 19:37:15'),
('df2a0baf19e316155b816866d5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:43'),
('df2a7f45ef4f4578ff7ca14d35', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:49:05'),
('e0220075263d626c4694eb1aef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:06:08'),
('e0310d4369406cc04023b92c01', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:55'),
('e0743d4e271221ab3ab99a2057', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 20:41:59'),
('e0a2d7e92a80f3135eea979f9b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 09:41:53'),
('e0b38a75b1842aab8b1c67e718', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:24'),
('e0c7db9b7522902e336a6907a1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 10:39:46'),
('e0dd832c6eaa178879adfda270', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:46'),
('e0e80d5702edca45695498bea4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:54'),
('e0fdfae6f6fc63ef4c20a534eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 15:38:50'),
('e161845714288bf318a5486e93', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 03:59:48'),
('e167854bf10f5a3fd12305b8e5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 08:00:26'),
('e1796fdfa93aadd51216829fd6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 01:17:48'),
('e182d7b8f6294419f480b21a7a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 04:12:35'),
('e20e6b15a6fa23facd568ed5a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:36'),
('e23563e306ce1d788c4ec727c0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 00:52:07'),
('e24217d540472a54c10bdd2e8e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:49'),
('e2876876aa279683441225a1da', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 10:22:32'),
('e2aa6bf98f76bb1e9b596386b8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:14'),
('e2b9f71177cde3555517538cc4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 23:29:37'),
('e2f82eb48fccbedf613ec49afd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:24'),
('e3109b259ace643041d6919775', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 03:00:56'),
('e31e2bb7cc73412a033faaf535', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-21 08:40:58'),
('e3ec1bdbea1a34e05b302a6a5b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:24'),
('e3f5d7694ea83cca1e7aeb7e47', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-01 03:00:56'),
('e4d2569a46be795fd3d323738d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 13:42:18'),
('e502a48aa95f63bb532131a13f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 17:01:06'),
('e5275ae605b3f69c63a86ccf23', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 19:00:16'),
('e52a9d12f421a0c745d4d752ec', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-22 12:49:43'),
('e5a6327ac36d122a7bc1362db2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:07'),
('e5c4a52fa3f075b08f233f4bc6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 08:42:10');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('e60846036098f74913981e9256', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-30 14:04:10'),
('e6774e709d4e727dc32cbcb40d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-23 08:38:51'),
('e75a990e8e2e0ba088304d417b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 07:32:07'),
('e7aa5eb107c216105e8762aed1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:12:08'),
('e8046292545deacd869afa06a1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-10 04:18:09'),
('e82d58663037eff48c10b97dd5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 03:22:23'),
('e88878603034c5050c25fccbf4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 10:30:17'),
('e88a47fdfbb6fe38ecc482c3bb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 17:57:58'),
('e89537566d4312c7644e30cb79', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 12:26:51'),
('e8a34581e53065b9b662473c7d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 21:20:57'),
('e9184e71807c49af63cb4e072e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 09:00:17'),
('e9398e24d19e02603308690509', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 10:33:09'),
('e94b20c46890f672d907db94c3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-19 07:51:47'),
('e98eac80e92f0da7ee3d507f3b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:19'),
('ea75e1d3e3a33e044712c4f32e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:20'),
('ea86ea7f08fa643c1526a0d72d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 15:56:59'),
('eb844023101fc5e40c069feda4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 01:02:44'),
('ebb792710b1b6cbac934a3381b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 20:52:56'),
('ebde5b74ce285d466303797f9a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:11'),
('ec08a54f07778d0bc85f84cbef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 11:58:59'),
('ec6b15979033bb6f3e6f7eda27', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 05:20:42'),
('ec870903ab70231ef365c94c7b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 06:34:53'),
('ec92d251e25cdc4f978be7fa58', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 21:14:32'),
('ecb025f9ca98eb64ff5ffdb10f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:15'),
('ecc1a8e43dade46a9e2e59c8e8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 14:58:02'),
('ed731f1725e1f24c118902665c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:14'),
('edec4c358859a8b023ff5e5292', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 11:13:44'),
('edf6fdecfaf180aac2ca7b051f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 16:44:50'),
('ee5b65f39ce1e13830a7caf22b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 04:23:08'),
('ee8adfe90520eeb589f683c011', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:22'),
('ef54a4ec4ae1b76558cf95170c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-25 01:13:06'),
('ef818a6a4f947c04bf7221cdf9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-03 12:40:59'),
('efa049d354bf5142702a6e4944', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-23 08:58:47'),
('efaa91ea19ad5c9ee6a9f7954a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-24 23:16:56'),
('f0b1217b69f6b8fbcdbbd4ce54', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 13:14:36'),
('f1b41bf3af2242faef15427aa8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-20 09:04:42'),
('f1cb0a1f2ec4e7f438d075c160', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 20:48:24'),
('f1e8a4803973b90299d9369b13', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:07:33'),
('f21356b384879232a85c2acf37', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 17:06:06'),
('f28375282520bb2152312f9a7f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:57'),
('f28fac41bbbf7f0cd9a0aa6bb4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 16:42:56'),
('f29b833a17c98e91cfe8a06bc5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 09:54:46'),
('f2f3e30e13611262374d998104', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 14:44:12'),
('f3ab625d66d63600cc2a161b6c', '{\"language\":\"ru-ru\",\"currency\":\"UAH\"}', '2019-03-29 13:15:59'),
('f3fb34e7cee355f5b0ed3078f6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:04:22'),
('f426411b4e2cc7bd16e4e8c388', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 23:41:18'),
('f4298fce944e4076f755c1723a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 23:06:14'),
('f478c585f5babf4bdfb16973c2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-02 13:40:40'),
('f4b0318da3b4c7c43a5c3a4087', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-11 17:09:19'),
('f50af8640b68f5fdfa2b75d8bd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 02:00:14'),
('f53ba41381fc6610f47ddf773d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 04:07:45'),
('f642e3ae298d9b0d3297fba29f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-06 16:16:59'),
('f6c7846d181b51204360013b28', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 02:24:31'),
('f6cf4f664d5d885f96b92e4dd9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:49'),
('f6dc1cc0bf5bea519d95ff9b14', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 19:36:11'),
('f703d7541f7c507342ec4530f9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:04'),
('f744673ef11fa08f89d578a340', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:04:52'),
('f748531a96a945562217250658', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-14 07:16:10'),
('f76c5b4eab42f327776f76dc37', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-04 04:20:16'),
('f773f6e6ab91a0bc3cf265b64c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-08 20:39:32'),
('f7942278d1d880cc6db71ae8ca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 01:40:12'),
('f7a794972ca0a556ca193cdfa6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-21 03:48:14'),
('f816c0e2972147c9e4f7dc1c8b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 06:42:54'),
('f82c31fa4c608b35e2f1f579eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 19:20:48'),
('f8d36a30afc53360fb679b0629', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:34'),
('f8d37ab596d87d20ec2334db60', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:11:43'),
('f8d880f2747b4b21260a5833e6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:05:30'),
('f8db126b94a19356a40bf9b3bc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-02 09:49:11'),
('f9357f8740912a562ea686c5a1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:56'),
('f9470cb291ae8e36e6b0d40e43', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 12:06:00'),
('f95271f0703325557b3c714838', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-07 02:23:15'),
('f95a80e21a695a9ef8eae2bc5a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2019-03-17 14:05:28'),
('f9744b7d79f1da226cb218ab2e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-09 09:18:39'),
('f9cb2aa8bf30e2336c46722952', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-18 20:18:34'),
('fa0e41814894bc2f2d9fa65568', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-15 22:37:53'),
('fa1a5d9ffdfb1bd54d0bdc1f13', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 12:44:21'),
('fa62c9e47ab766d0046d4ed0c3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-29 14:17:39'),
('fb20ccfe117fa4b247dc28e384', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-17 08:33:25'),
('fb32be7bf0b0030897fc319459', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 04:42:42'),
('fb5dc1996f16b3f478a5eb546c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-19 16:41:06'),
('fb7211c5f7ede2c64cf73ade49', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 12:17:06'),
('fb837465c82154328a68dff1db', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 00:42:45'),
('fbe8acb049611e56a2de531a87', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-18 14:39:06'),
('fc830e77154898c5048b4fb2ea', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-27 11:05:29'),
('fcb70ad4638b088c063d94b0d8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-31 13:07:15'),
('fccd9726ba50a1dbb9c6a7fc2d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-16 20:21:28'),
('fd5d096761eef6f5c891150351', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-28 15:15:54'),
('fddc997ca2e9959e9fef358970', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:58:36'),
('fe5aaf923c53542bebb60ac963', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-17 14:10:03'),
('fe959809b05a9a0d99b7150848', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-04-23 01:59:49'),
('feb8b55786c9bba2508df2e03a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 22:38:45'),
('ff11e43d21cd9b09dcfd0bae2a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-03-16 10:08:25'),
('ff984f381b7f5696f59751855b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2019-05-04 02:37:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(378, 0, 'module_store', 'module_store_admin', '0', 0),
(377, 0, 'config', 'config_error_filename', 'error.log', 0),
(376, 0, 'config', 'config_error_log', '1', 0),
(374, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(375, 0, 'config', 'config_error_display', '1', 0),
(4, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(367, 0, 'config', 'config_compression', '0', 0),
(368, 0, 'config', 'config_secure', '0', 0),
(369, 0, 'config', 'config_password', '1', 0),
(370, 0, 'config', 'config_shared', '0', 0),
(371, 0, 'config', 'config_encryption', '7GMRq0O0zcH5N35c0CeNuTcSjowMHeeMaUVudnPD9dyns2Xrtdq5wLTxFONS7TQ2RLzYVPfN69mDZkCbnMkSgOKAoPoSxw58Q0DaXAKC4yhP96xoyzBB7nDtZo2TWHhz8BxFBYegOM0DwAoHQgsSTRvspV1ZUOmkrlNrO56lBVL1C3YGfTSEzXQqTNkZk49qAdxFHzE6Bi6A1xqQ2o8vZFMnuxH0c8pq0BbsoHWqqtqjSGIgGoTdlPamlgC3MgEttFU1kSBoLB7F3Lz0Im7kwBagl6gSzASBqkYNQjkEcebVGX6pD8on7NvCYjnoqgK1rlZTIQW7bDVQR3wTCBEzwKvqhEBdZ1bqIGPeJBc3i4BAEPeDhInHsgKapVLCJ40pGukoQsYj8fn68GrkNTPGSqVczv5ATAzBWgul2XUMHJInccusLqFMFSCQPcGCzW22aD8JNOXq2s1kAe1qLyI8b0EngDcluFQSa9uiA6vCgHkq7WIc1YtVvvKxYOvLwwbqx8d1YPPovXGCfZq88bi5qufteV0KV1Umz85liR6YdEsctGMZYeD2ZpTtk6O1V2gKZRiriQWJI1XWGDLmneGBO5EpU6bslpNTFjI4U7O56Vyq43cvqoL9jWgJZN1El2v2L0l8S5jn9OXP7LoBy764pqaJ20qlHLoXt0cuFUWPa7X1GNi8GrfVIUcLIqrq4DxiFnsCLpssxt7fHYReIh7Kuky14Nbb18rIXZnZ9CgkA0GAo1VvvAlLgQ3soufYX5kqUutMWJSXCy0SqYljAX9gBtjBuuhoRD3ElHkY9afBMUWdoTw2vWRrmpjoifpcEMc6on6R1YTB1IYCMnTyNLOk3bymfS0k32mXbvhqanXZUqEYayn4526B3zKu2VjMwct3Yzu2bFfAv1RHDD5r2jh7U45QpeIxVVj2a4MgGFYCYWX3QnWcWxaHOl4Fcs1e7m7E0HiaACmmt3vCECeT8oiQzBUflerCm3EqU45Y7anNYf05mA48cAsB8ZCUeyNI6zXy', 0),
(366, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(365, 0, 'config', 'config_seo_url', '0', 0),
(364, 0, 'config', 'config_maintenance', '0', 0),
(363, 0, 'config', 'config_mail_alert_email', '', 0),
(362, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(361, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(360, 0, 'config', 'config_mail_smtp_port', '25', 0),
(359, 0, 'config', 'config_mail_smtp_password', '', 0),
(356, 0, 'config', 'config_mail_parameter', '', 0),
(357, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(354, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(355, 0, 'config', 'config_mail_engine', 'mail', 0),
(350, 0, 'config', 'config_return_status_id', '2', 0),
(351, 0, 'config', 'config_captcha', '', 0),
(352, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(353, 0, 'config', 'config_logo', 'catalog/logo_svyaznoy.png', 0),
(339, 0, 'config', 'config_fraud_status_id', '16', 0),
(340, 0, 'config', 'config_api_id', '1', 0),
(341, 0, 'config', 'config_stock_display', '0', 0),
(342, 0, 'config', 'config_stock_warning', '0', 0),
(343, 0, 'config', 'config_stock_checkout', '0', 0),
(344, 0, 'config', 'config_affiliate_group_id', '1', 0),
(345, 0, 'config', 'config_affiliate_approval', '0', 0),
(346, 0, 'config', 'config_affiliate_auto', '0', 0),
(347, 0, 'config', 'config_affiliate_commission', '5', 0),
(348, 0, 'config', 'config_affiliate_id', '4', 0),
(349, 0, 'config', 'config_return_id', '0', 0),
(338, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(337, 0, 'config', 'config_processing_status', '[\"2\",\"3\",\"1\",\"12\",\"5\"]', 1),
(336, 0, 'config', 'config_order_status_id', '1', 0),
(335, 0, 'config', 'config_checkout_id', '5', 0),
(333, 0, 'config', 'config_cart_weight', '1', 0),
(334, 0, 'config', 'config_checkout_guest', '1', 0),
(332, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(331, 0, 'config', 'config_account_id', '3', 0),
(330, 0, 'config', 'config_login_attempts', '5', 0),
(329, 0, 'config', 'config_customer_price', '0', 0),
(327, 0, 'config', 'config_customer_group_id', '1', 0),
(328, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '0', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(412, 0, 'module_account', 'module_account_status', '1', 0),
(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(148, 0, 'theme_default', 'theme_default_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(199, 0, 'developer', 'developer_theme', '1', 0),
(200, 0, 'developer', 'developer_sass', '1', 0),
(358, 0, 'config', 'config_mail_smtp_username', '', 0),
(326, 0, 'config', 'config_customer_search', '1', 0),
(325, 0, 'config', 'config_customer_activity', '1', 0),
(324, 0, 'config', 'config_customer_online', '1', 0),
(323, 0, 'config', 'config_tax_customer', 'shipping', 0),
(322, 0, 'config', 'config_tax_default', 'shipping', 0),
(321, 0, 'config', 'config_tax', '0', 0),
(320, 0, 'config', 'config_voucher_max', '1000', 0),
(319, 0, 'config', 'config_voucher_min', '1', 0),
(318, 0, 'config', 'config_review_guest', '1', 0),
(317, 0, 'config', 'config_review_status', '1', 0),
(316, 0, 'config', 'config_limit_admin', '20', 0),
(315, 0, 'config', 'config_product_count', '1', 0),
(314, 0, 'config', 'config_weight_class_id', '1', 0),
(313, 0, 'config', 'config_length_class_id', '1', 0),
(312, 0, 'config', 'config_currency_auto', '1', 0),
(311, 0, 'config', 'config_currency', 'RUB', 0),
(310, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(308, 0, 'config', 'config_zone_id', '143', 0),
(309, 0, 'config', 'config_language', 'ru-ru', 0),
(204, 0, 'module_pp_button', 'module_pp_button_status', '1', 0),
(205, 0, 'module_filter', 'module_filter_status', '1', 0),
(372, 0, 'config', 'config_file_max_size', '300000', 0),
(373, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(305, 0, 'config', 'config_open', '', 0),
(306, 0, 'config', 'config_comment', '', 0),
(307, 0, 'config', 'config_country_id', '220', 0),
(294, 0, 'config', 'config_meta_keyword', '', 0),
(295, 0, 'config', 'config_theme', 'default', 0),
(296, 0, 'config', 'config_layout_id', '4', 0),
(297, 0, 'config', 'config_name', 'Связной', 0),
(298, 0, 'config', 'config_owner', 'Олег', 0),
(299, 0, 'config', 'config_address', 'г. Одесса', 0),
(300, 0, 'config', 'config_geocode', '', 0),
(301, 0, 'config', 'config_email', 'kaizenroot@gmail.com', 0),
(302, 0, 'config', 'config_telephone', '068 252 3312', 0),
(303, 0, 'config', 'config_fax', '', 0),
(304, 0, 'config', 'config_image', 'catalog/logo_svyaznoy.png', 0),
(293, 0, 'config', 'config_meta_description', 'Svyaznoy', 0),
(292, 0, 'config', 'config_meta_title', 'Svyaznoy', 0),
(379, 0, 'module_store', 'module_store_status', '1', 0),
(380, 0, 'advertise_google', 'advertise_google_checklist_confirmed', '1', 0),
(381, 0, 'module_integrated_vqmod', 'module_integrated_vqmod_status', '1', 0),
(402, 0, 'shipping_novaposhta', 'shipping_novaposhta_sort_order', '1', 0),
(401, 0, 'shipping_novaposhta', 'shipping_novaposhta_status', '1', 0),
(400, 0, 'shipping_novaposhta', 'shipping_novaposhta_geo_zone_id', '0', 0),
(399, 0, 'shipping_novaposhta', 'shipping_novaposhta_delivery_nal', '', 0),
(398, 0, 'shipping_novaposhta', 'shipping_novaposhta_delivery_insurance', '', 0),
(397, 0, 'shipping_novaposhta', 'shipping_novaposhta_delivery_price', '1.1', 0),
(396, 0, 'shipping_novaposhta', 'shipping_novaposhta_delivery_order', '10', 0),
(395, 0, 'shipping_novaposhta', 'shipping_novaposhta_min_total_for_free_delivery', '', 0),
(394, 0, 'shipping_novaposhta', 'shipping_novaposhta_name', '', 0),
(409, 0, 'ExcelPort', 'ExcelPort', '{\"Export\":{\"Filter\":\"0\",\"DataType\":\"Products\",\"Filters\":{\"Products\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"general_product_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Categories\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"general_category_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Options\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"option_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Attributes\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"attribute_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Customers\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"customer_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"CustomerGroups\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"customer_group_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Orders\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"order_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Manufacturers\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"general_manufacturer_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Coupons\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"general_coupon_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}},\"Vouchers\":{\"Conjunction\":\"OR\",\"0\":{\"Field\":\"general_voucher_id\",\"Condition\":\"number_ge\",\"Value\":\"\"}}},\"Store\":\"0\",\"Language\":\"1\",\"ProductExportMode\":\"1\"},\"Import\":{\"DataType\":\"Products\",\"Language\":\"1\"},\"LastImport\":\"\",\"Settings\":{\"DescriptionEncoding\":\"encoded_html\",\"ExportLimit\":\"500\",\"ImportLimit\":\"100\",\"ExportNonStoreProducts\":\"0\"}}', 1),
(410, 0, 'module_excelport', 'module_excelport_status', '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налоги', 'Облагаемые налогом', '2018-06-06 23:00:00', '2018-09-09 11:50:31');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(87, 3, 'НДС', '18.0000', 'F', '2018-09-21 21:49:23', '2018-09-09 11:49:32');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_theme`
--

INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(1, 0, 'default', 'extension/module/banner', '&lt;div class=&quot;swiper-viewport&quot;&gt;\n  &lt;div id=&quot;banner{{ module }}&quot; class=&quot;swiper-container&quot;&gt;\n    &lt;div class=&quot;swiper-wrapper&quot;&gt;{% for banner in banners %}\n      &lt;div class=&quot;swiper-slide&quot;&gt;{% if banner.link %}&lt;a href=&quot;{{ banner.link }}&quot;&gt;&lt;img src=&quot;{{ banner.image }}&quot; alt=&quot;{{ banner.title }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;{% else %}&lt;img src=&quot;{{ banner.image }}&quot; alt=&quot;{{ banner.title }}&quot; class=&quot;img-responsive&quot; /&gt;{% endif %}&lt;/div&gt;\n      {% endfor %}&lt;/div&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#banner{{ module }}\').swiper({\n	effect: \'flip\',\n	autoplay: 2500,\n    autoplayDisableOnInteraction: false\n});\n--&gt;&lt;/script&gt; ', '2019-03-21 07:15:39'),
(6, 0, 'default', 'extension/module/carousel', '&lt;div class=&quot;swiper-viewport&quot;&gt;\n  &lt;div id=&quot;carousel{{ module }}&quot; class=&quot;swiper-container&quot;&gt;\n    &lt;div class=&quot;swiper-wrapper&quot;&gt;{% for banner in banners %}\n      &lt;div class=&quot;swiper-slide text-center&quot;&gt;{% if banner.link %}&lt;a href=&quot;{{ banner.link }}&quot;&gt;&lt;img src=&quot;{{ banner.image }}&quot; alt=&quot;{{ banner.title }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;{% else %}&lt;img src=&quot;{{ banner.image }}&quot; alt=&quot;{{ banner.title }}&quot; class=&quot;img-responsive&quot; /&gt;{% endif %}&lt;/div&gt;\n      {% endfor %}&lt;/div&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;swiper-pagination carousel{{ module }}&quot;&gt;&lt;/div&gt;\n  &lt;div class=&quot;swiper-pager&quot;&gt;\n    &lt;div class=&quot;swiper-button-next&quot;&gt;&lt;/div&gt;\n    &lt;div class=&quot;swiper-button-prev&quot;&gt;&lt;/div&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#carousel{{ module }}\').swiper({\n	mode: \'horizontal\',\n	slidesPerView: 5,\n	pagination: \'.carousel{{ module }}\',\n	paginationClickable: true,\n	nextButton: \'.swiper-button-next\',\n    prevButton: \'.swiper-button-prev\',\n	autoplay: 2500,\n	loop: true\n});\n--&gt;&lt;/script&gt;', '2019-03-21 07:37:59'),
(8, 0, 'default', 'extension/module/slideshow', '&lt;div class=&quot;swiper-viewport&quot;&gt;\n  &lt;div id=&quot;slideshow{{ module }}&quot; class=&quot;swiper-container&quot;&gt;\n    &lt;div class=&quot;swiper-wrapper&quot;&gt; {% for banner in banners %}\n      &lt;div class=&quot;swiper-slide text-center&quot;&gt;{% if banner.link %}&lt;a href=&quot;{{ banner.link }}&quot;&gt;&lt;img src=&quot;{{ banner.image }}&quot; alt=&quot;{{ banner.title }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;{% else %}&lt;img src=&quot;{{ banner.image }}&quot; alt=&quot;{{ banner.title }}&quot; class=&quot;img-responsive&quot; /&gt;{% endif %}&lt;/div&gt;\n      {% endfor %} &lt;/div&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;swiper-pagination slideshow{{ module }}&quot;&gt;&lt;/div&gt;\n  &lt;div class=&quot;swiper-pager&quot;&gt;\n    &lt;div class=&quot;swiper-button-next&quot;&gt;&lt;/div&gt;\n    &lt;div class=&quot;swiper-button-prev&quot;&gt;&lt;/div&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#slideshow{{ module }}\').swiper({\n	mode: \'horizontal\',\n	slidesPerView: 4,\n	pagination: \'.slideshow{{ module }}\',\n	paginationClickable: true,\n	nextButton: \'.swiper-button-next\',\n    prevButton: \'.swiper-button-prev\',\n    spaceBetween: 30,\n	autoplay: 2500,\n    autoplayDisableOnInteraction: true,\n	loop: true\n});\n--&gt;&lt;/script&gt;', '2019-03-21 07:38:52');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'c712a9af85dabdc0240ed3c2a0c181e816e93164', 'H5vXemJTm', 'John', 'Doe', 'kaizenroot@gmail.com', '', '', '178.212.195.36', 1, '2019-03-16 08:37:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/excelport\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/integrated_vqmod\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/novaposhta\",\"extension\\/shipping\\/novaposhtacopy\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/city\",\"localisation\\/city_update\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/special\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/excelport\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/integrated_vqmod\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/novaposhta\",\"extension\\/shipping\\/novaposhtacopy\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/city\",\"localisation\\/city_update\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/special\"]}'),
(10, 'Demonstration', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"dwebexporter\\/dwebexporter\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/dbrest\\/category\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/dwebexporter\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"dwebexporter\\/dwebexporter\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/dbrest\\/category\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/dwebexporter\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/restadmin\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Новый год'),
(7, 1, 'День рождения'),
(8, 1, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограмм', 'кг'),
(2, 1, 'Грамм', 'г');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 20, 'Брест', 'BR', 1),
(2, 20, 'Гомель', 'HO', 1),
(3, 20, 'Минск', 'HM', 1),
(4, 20, 'Гродно', 'HR', 1),
(5, 20, 'Могилев', 'MA', 1),
(6, 20, 'Минская область', 'MI', 1),
(7, 20, 'Витебск', 'VI', 1),
(8, 80, 'Abkhazia', 'AB', 1),
(9, 80, 'Ajaria', 'AJ', 1),
(10, 80, 'Tbilisi', 'TB', 1),
(11, 80, 'Guria', 'GU', 1),
(12, 80, 'Imereti', 'IM', 1),
(13, 80, 'Kakheti', 'KA', 1),
(14, 80, 'Kvemo Kartli', 'KK', 1),
(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(19, 80, 'Shida Kartli', 'SK', 1),
(20, 109, 'Алматинская область', 'AL', 1),
(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
(22, 109, 'Акмолинская область', 'AM', 1),
(23, 109, 'Актюбинская область', 'AQ', 1),
(24, 109, 'Астана - город республ-го значения', 'AS', 1),
(25, 109, 'Атырауская область', 'AT', 1),
(26, 109, 'Западно-Казахстанская область', 'BA', 1),
(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
(28, 109, 'Мангистауская область', 'MA', 1),
(29, 109, 'Южно-Казахстанская область', 'ON', 1),
(30, 109, 'Павлодарская область', 'PA', 1),
(31, 109, 'Карагандинская область', 'QA', 1),
(32, 109, 'Костанайская область', 'QO', 1),
(33, 109, 'Кызылординская область', 'QY', 1),
(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
(35, 109, 'Северо-Казахстанская область', 'SO', 1),
(36, 109, 'Жамбылская область', 'ZH', 1),
(37, 115, 'Bishkek', 'GB', 1),
(38, 115, 'Batken', 'B', 1),
(39, 115, 'Chu', 'C', 1),
(40, 115, 'Jalal-Abad', 'J', 1),
(41, 115, 'Naryn', 'N', 1),
(42, 115, 'Osh', 'O', 1),
(43, 115, 'Talas', 'T', 1),
(44, 115, 'Ysyk-Kol', 'Y', 1),
(45, 176, 'Республика Хакасия', 'KK', 1),
(46, 176, 'Московская область', 'MOS', 1),
(47, 176, 'Чукотский АО', 'CHU', 1),
(48, 176, 'Архангельская область', 'ARK', 1),
(49, 176, 'Астраханская область', 'AST', 1),
(50, 176, 'Алтайский край', 'ALT', 1),
(51, 176, 'Белгородская область', 'BEL', 1),
(52, 176, 'Еврейская АО', 'YEV', 1),
(53, 176, 'Амурская область', 'AMU', 1),
(54, 176, 'Брянская область', 'BRY', 1),
(55, 176, 'Чувашская Республика', 'CU', 1),
(56, 176, 'Челябинская область', 'CHE', 1),
(57, 176, 'Карачаево-Черкесия', 'KC', 1),
(58, 176, 'Забайкальский край', 'ZAB', 1),
(59, 176, 'Ленинградская область', 'LEN', 1),
(60, 176, 'Республика Калмыкия', 'KL', 1),
(61, 176, 'Сахалинская область', 'SAK', 1),
(62, 176, 'Республика Алтай', 'AL', 1),
(63, 176, 'Чеченская Республика', 'CE', 1),
(64, 176, 'Иркутская область', 'IRK', 1),
(65, 176, 'Ивановская область', 'IVA', 1),
(66, 176, 'Удмуртская Республика', 'UD', 1),
(67, 176, 'Калининградская область', 'KGD', 1),
(68, 176, 'Калужская область', 'KLU', 1),
(69, 176, 'Республика Татарстан', 'TA', 1),
(70, 176, 'Кемеровская область', 'KEM', 1),
(71, 176, 'Хабаровский край', 'KHA', 1),
(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(73, 176, 'Костромская область', 'KOS', 1),
(74, 176, 'Краснодарский край', 'KDA', 1),
(75, 176, 'Красноярский край', 'KYA', 1),
(76, 176, 'Курганская область', 'KGN', 1),
(77, 176, 'Курская область', 'KRS', 1),
(78, 176, 'Республика Тыва', 'TY', 1),
(79, 176, 'Липецкая область', 'LIP', 1),
(80, 176, 'Магаданская область', 'MAG', 1),
(81, 176, 'Республика Дагестан', 'DA', 1),
(82, 176, 'Республика Адыгея', 'AD', 1),
(83, 176, 'Москва', 'MOW', 1),
(84, 176, 'Мурманская область', 'MUR', 1),
(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(86, 176, 'Ненецкий АО', 'NEN', 1),
(87, 176, 'Республика Ингушетия', 'IN', 1),
(88, 176, 'Нижегородская область', 'NIZ', 1),
(89, 176, 'Новгородская область', 'NGR', 1),
(90, 176, 'Новосибирская область', 'NVS', 1),
(91, 176, 'Омская область', 'OMS', 1),
(92, 176, 'Орловская область', 'ORL', 1),
(93, 176, 'Оренбургская область', 'ORE', 1),
(94, 176, 'Пензенская область', 'PNZ', 1),
(95, 176, 'Пермский край', 'PER', 1),
(96, 176, 'Камчатский край', 'KAM', 1),
(97, 176, 'Республика Карелия', 'KR', 1),
(98, 176, 'Псковская область', 'PSK', 1),
(99, 176, 'Ростовская область', 'ROS', 1),
(100, 176, 'Рязанская область', 'RYA', 1),
(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(102, 176, 'Самарская область', 'SAM', 1),
(103, 176, 'Республика Мордовия', 'MO', 1),
(104, 176, 'Саратовская область', 'SAR', 1),
(105, 176, 'Смоленская область', 'SMO', 1),
(106, 176, 'Санкт-Петербург', 'SPE', 1),
(107, 176, 'Ставропольский край', 'STA', 1),
(108, 176, 'Республика Коми', 'KO', 1),
(109, 176, 'Тамбовская область', 'TAM', 1),
(110, 176, 'Томская область', 'TOM', 1),
(111, 176, 'Тульская область', 'TUL', 1),
(112, 176, 'Тверская область', 'TVE', 1),
(113, 176, 'Тюменская область', 'TYU', 1),
(114, 176, 'Республика Башкортостан', 'BA', 1),
(115, 176, 'Ульяновская область', 'ULY', 1),
(116, 176, 'Республика Бурятия', 'BU', 1),
(117, 176, 'Республика Северная Осетия', 'SE', 1),
(118, 176, 'Владимирская область', 'VLA', 1),
(119, 176, 'Приморский край', 'PRI', 1),
(120, 176, 'Волгоградская область', 'VGG', 1),
(121, 176, 'Вологодская область', 'VLG', 1),
(122, 176, 'Воронежская область', 'VOR', 1),
(123, 176, 'Кировская область', 'KIR', 1),
(124, 176, 'Республика Саха', 'SA', 1),
(125, 176, 'Ярославская область', 'YAR', 1),
(126, 176, 'Свердловская область', 'SVE', 1),
(127, 176, 'Республика Марий Эл', 'ME', 1),
(128, 176, 'Республика Крым', 'CR', 1),
(129, 220, 'Черкассы', 'CK', 1),
(130, 220, 'Чернигов', 'CH', 1),
(131, 220, 'Черновцы', 'CV', 1),
(132, 220, 'Днепропетровск', 'DN', 1),
(133, 220, 'Донецк', 'DO', 1),
(134, 220, 'Ивано-Франковск', 'IV', 1),
(135, 220, 'Харьков', 'KH', 1),
(136, 220, 'Хмельницкий', 'KM', 1),
(137, 220, 'Кировоград', 'KR', 1),
(138, 220, 'Киевская область', 'KV', 1),
(139, 220, 'Киев', 'KY', 1),
(140, 220, 'Луганск', 'LU', 1),
(141, 220, 'Львов', 'LV', 1),
(142, 220, 'Николаев', 'MY', 1),
(143, 220, 'Одесса', 'OD', 1),
(144, 220, 'Полтава', 'PO', 1),
(145, 220, 'Ровно', 'RI', 1),
(146, 176, 'Севастополь', 'SEV', 1),
(147, 220, 'Сумы', 'SU', 1),
(148, 220, 'Тернополь', 'TE', 1),
(149, 220, 'Винница', 'VI', 1),
(150, 220, 'Луцк', 'VO', 1),
(151, 220, 'Ужгород', 'ZK', 1),
(152, 220, 'Запорожье', 'ZA', 1),
(153, 220, 'Житомир', 'ZH', 1),
(154, 220, 'Херсон', 'KE', 1),
(155, 226, 'Andijon', 'AN', 1),
(156, 226, 'Buxoro', 'BU', 1),
(157, 226, 'Farg\'ona', 'FA', 1),
(158, 226, 'Jizzax', 'JI', 1),
(159, 226, 'Namangan', 'NG', 1),
(160, 226, 'Navoiy', 'NW', 1),
(161, 226, 'Qashqadaryo', 'QA', 1),
(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(163, 226, 'Samarqand', 'SA', 1),
(164, 226, 'Sirdaryo', 'SI', 1),
(165, 226, 'Surxondaryo', 'SU', 1),
(166, 226, 'Toshkent City', 'TK', 1),
(167, 226, 'Toshkent Region', 'TO', 1),
(168, 226, 'Xorazm', 'XO', 1),
(169, 176, 'Байконур - город республ-го значения', 'BY', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 176, 0, 3, '2018-09-09 11:48:13', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_advertise_google_target`
--
ALTER TABLE `oc_advertise_google_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_google_product_category`
--
ALTER TABLE `oc_category_to_google_product_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_advertise_google`
--
ALTER TABLE `oc_product_advertise_google`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_advertise_google_status`
--
ALTER TABLE `oc_product_advertise_google_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Индексы таблицы `oc_product_advertise_google_target`
--
ALTER TABLE `oc_product_advertise_google_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `oc_product_advertise_google`
--
ALTER TABLE `oc_product_advertise_google`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2360;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
