-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 05 2019 г., 10:38
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
-- База данных: `mail.svyaznoytv.com`
--

-- --------------------------------------------------------

--
-- Структура таблицы `action_recorder`
--

CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `action_recorder`
--

INSERT INTO `action_recorder` (`id`, `module`, `user_id`, `user_name`, `identifier`, `success`, `date_added`) VALUES
(1, 'ar_admin_login', 1, 'admin', '178.212.195.36', '1', '2019-02-15 14:57:06'),
(2, 'ar_admin_login', 1, 'admin', '178.212.195.36', '1', '2019-02-15 16:31:39'),
(3, 'ar_admin_login', 1, 'admin', '178.212.195.36', '1', '2019-02-17 01:40:51'),
(4, 'ar_admin_login', 0, 'admin', '195.138.79.229', '0', '2019-02-17 13:26:47'),
(5, 'ar_admin_login', 1, 'admin', '195.138.79.229', '1', '2019-02-19 01:20:05'),
(6, 'ar_admin_login', 1, 'admin', '178.212.195.36', '1', '2019-02-22 19:08:26'),
(7, 'ar_admin_login', 1, 'admin', '178.212.195.36', '1', '2019-03-05 21:34:47'),
(8, 'ar_admin_login', 1, 'admin', '178.212.195.36', '1', '2019-04-17 20:54:27');

-- --------------------------------------------------------

--
-- Структура таблицы `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(1, 1, 'm', '', 'mic', 'lee', 'm. jukova', '', '67114', 'odessa', '', 220, 473);

-- --------------------------------------------------------

--
-- Структура таблицы `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `address_format`
--

INSERT INTO `address_format` (`address_format_id`, `address_format`, `address_summary`) VALUES
(1, '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country'),
(2, '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country'),
(3, '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country'),
(4, '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country'),
(5, '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country'),
(6, '$firstname $lastname$cr$streets$cr $city$cr$state_name$cr$country$cr$postcode', '$city / $country');

-- --------------------------------------------------------

--
-- Структура таблицы `administrators`
--

CREATE TABLE `administrators` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `administrators`
--

INSERT INTO `administrators` (`id`, `user_name`, `user_password`) VALUES
(1, 'admin', '$P$DoODQo7bpLPwAidvHA1a6FK7dXgyyA1');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`) VALUES
(1, 'svyaznoy', 'http://www.svyaznoytv.com.com', 'banners/oscommerce.gif', 'footer', '', 0, NULL, NULL, '2019-02-15 14:53:42', '2019-02-17 01:56:07', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(1, 'category_hardware.gif', 0, 1, '2019-02-15 14:53:42', NULL),
(2, 'category_software.gif', 0, 2, '2019-02-15 14:53:42', NULL),
(3, 'category_dvd_movies.gif', 0, 3, '2019-02-15 14:53:42', NULL),
(4, 'subcategory_graphic_cards.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(5, 'subcategory_printers.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(6, 'subcategory_monitors.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(7, 'subcategory_speakers.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(8, 'subcategory_keyboards.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(9, 'subcategory_mice.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(10, 'subcategory_action.gif', 3, 0, '2019-02-15 14:53:42', NULL),
(11, 'subcategory_science_fiction.gif', 3, 0, '2019-02-15 14:53:42', NULL),
(12, 'subcategory_comedy.gif', 3, 0, '2019-02-15 14:53:42', NULL),
(13, 'subcategory_cartoons.gif', 3, 0, '2019-02-15 14:53:42', NULL),
(14, 'subcategory_thriller.gif', 3, 0, '2019-02-15 14:53:42', NULL),
(15, 'subcategory_drama.gif', 3, 0, '2019-02-15 14:53:42', NULL),
(16, 'subcategory_memory.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(17, 'subcategory_cdrom_drives.gif', 1, 0, '2019-02-15 14:53:42', NULL),
(18, 'subcategory_simulation.gif', 2, 0, '2019-02-15 14:53:42', NULL),
(19, 'subcategory_action_games.gif', 2, 0, '2019-02-15 14:53:42', NULL),
(20, 'subcategory_strategy.gif', 2, 0, '2019-02-15 14:53:42', NULL),
(21, 'category_gadgets.png', 0, 4, '2019-02-15 14:53:42', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories_description`
--

INSERT INTO `categories_description` (`categories_id`, `language_id`, `categories_name`) VALUES
(10, 1, 'Action'),
(10, 2, 'Action'),
(19, 1, 'Action'),
(19, 2, 'Action'),
(13, 1, 'Cartoons'),
(13, 2, 'Cartoons'),
(17, 1, 'CDROM Drives'),
(17, 2, 'CDROM Drives'),
(12, 1, 'Comedy'),
(12, 2, 'Comedy'),
(15, 1, 'Drama'),
(15, 2, 'Drama'),
(3, 1, 'DVD Movies'),
(3, 2, 'DVD Movies'),
(21, 1, 'Gadgets'),
(21, 2, 'Gadgets'),
(4, 1, 'Graphics Cards'),
(4, 2, 'Graphics Cards'),
(1, 1, 'Hardware'),
(1, 2, 'Hardware'),
(8, 1, 'Keyboards'),
(8, 2, 'Keyboards'),
(16, 1, 'Memory'),
(16, 2, 'Memory'),
(9, 1, 'Mice'),
(9, 2, 'Mice'),
(6, 1, 'Monitors'),
(6, 2, 'Monitors'),
(5, 1, 'Printers'),
(5, 2, 'Printers'),
(11, 1, 'Science Fiction'),
(11, 2, 'Science Fiction'),
(18, 1, 'Simulation'),
(18, 2, 'Simulation'),
(2, 1, 'Software'),
(2, 2, 'Software'),
(7, 1, 'Speakers'),
(7, 2, 'Speakers'),
(20, 1, 'Strategy'),
(20, 2, 'Strategy'),
(14, 1, 'Thriller'),
(14, 2, 'Thriller');

-- --------------------------------------------------------

--
-- Структура таблицы `configuration`
--

CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL,
  `configuration_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_value` text COLLATE utf8_unicode_ci NOT NULL,
  `configuration_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `configuration`
--

INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Название магазина', 'STORE_NAME', 'svyaznoy', 'Название Вашего магазина', 1, 1, NULL, '2019-02-15 14:53:43', NULL, NULL),
(2, 'Владелец магазина', 'STORE_OWNER', 'admin', 'Имя владельца магазина', 1, 2, NULL, '2019-02-15 14:53:43', NULL, NULL),
(3, 'E-Mail Адрес', 'STORE_OWNER_EMAIL_ADDRESS', 'kaizen@list.ru', 'E-Mail адрес владельца магазина', 1, 3, NULL, '2019-02-15 14:53:43', NULL, NULL),
(4, 'E-Mail От', 'EMAIL_FROM', '\"admin\" <kaizen@list.ru>', 'E-Mail адрес в отправляемых письмах', 1, 4, NULL, '2019-02-15 14:53:43', NULL, NULL),
(5, 'Страна', 'STORE_COUNTRY', '220', 'Страна находения магазина.<br><br><b>Замечание: Не забудьте также указать Зону.</b>', 1, 6, '2019-02-17 01:45:05', '2019-02-15 14:53:43', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(6, 'Зона', 'STORE_ZONE', '473', 'Регион нахождения магазина', 1, 7, '2019-02-17 01:45:23', '2019-02-15 14:53:43', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list('),
(7, 'Порядок сортировки ожидаемых товаров', 'EXPECTED_PRODUCTS_SORT', 'desc', 'Укажите порядок сортировки для ожидаемых товаров, по возрастанию - asc или по убыванию - desc.', 1, 8, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'asc\', \'desc\'), '),
(8, 'Сортировка ожидаемых товаров', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'По какому значению будут сортироваться ожидаемые товары.', 1, 9, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'products_name\', \'date_expected\'), '),
(9, 'Переключение на валюту текущего языка', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Автоматическое переключение цен в магазине на валюту текущего языка.', 1, 10, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(10, 'Отправка копий писем с заказом', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Если Вы хотите получать письма с заказами, т.е. такие же письма, что и получает клиент после оформления заказа, укажите e-mail адрес для получения копий писем в следующем формате: Имя 1 &lt;email@address1&gt;, Имя 2 &lt;email@address2&gt;', 1, 11, NULL, '2019-02-15 14:53:43', NULL, NULL),
(11, 'Использовать короткие URL адреса (находится в разработке)', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Использовать короткие URL адреса в магазине', 1, 12, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(12, 'Переходить в корзину после добавления товара', 'DISPLAY_CART', 'true', 'Переходить в корзину после добавления товара в корзину или оставаться на той же странице.', 1, 14, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(13, 'Разрешить гостям использовать функцию Рассказать другу', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'false', 'Позволить гостям использовать функцию магазина Рассказать другу, если нет, то данной функцией могут пользоваться только зарегистрированные пользователи магазина.', 1, 15, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(14, 'Оператор поиска по умолчанию', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Укажите, какой оператор будет использоваться по умолчанию при осуществлении посетителем поиска в магазине.', 1, 17, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'and\', \'or\'), '),
(15, 'Адрес магазина', 'STORE_ADDRESS', 'Address\nCountry', 'Адрес магазина используется на печатных документах и отображается на сайте', 1, 18, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_textarea('),
(16, 'Телефон магазина', 'STORE_PHONE', '01 234 5678', 'Телефон магазина используется на печатных документах и отображается на сайте', 1, 19, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_textarea('),
(17, 'Показывать счётчик товаров', 'SHOW_COUNTS', 'true', 'Показывает количество товара в каждой категории. При большом количестве товара в магазина рекомендуется отключать счётчик - false, чтобы снизить нагрузку на MySQL сервер, тем самых скорость загрузки страницы Вашего магазина увеличится.', 1, 20, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(18, 'Количество знаков после запятой у налогов', 'TAX_DECIMAL_PLACES', '0', 'Количество знаков после целого числа у налогов.', 1, 21, NULL, '2019-02-15 14:53:43', NULL, NULL),
(19, 'Показывать цены с налогами', 'DISPLAY_PRICE_WITH_TAX', 'false', 'Показывать цены в магазине с налогами (true) или показывать налог только на заключительном этапе оформления заказа (false)', 1, 22, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(20, 'Имя', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Минимальное количество символов поля Имя', 2, 1, NULL, '2019-02-15 14:53:43', NULL, NULL),
(21, 'Фамилия', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Минимальное количество символов поля Фамилия', 2, 2, NULL, '2019-02-15 14:53:43', NULL, NULL),
(22, 'Дата рождения', 'ENTRY_DOB_MIN_LENGTH', '10', 'Минимальное количество символов поля Дата рождения', 2, 3, NULL, '2019-02-15 14:53:43', NULL, NULL),
(23, 'E-Mail Адрес', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Минимальное количество символов поля E-Mail адрес', 2, 4, NULL, '2019-02-15 14:53:43', NULL, NULL),
(24, 'Адрес', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Минимальное количество символов поля Адрес', 2, 5, NULL, '2019-02-15 14:53:43', NULL, NULL),
(25, 'Компания', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Минимальное количество символов поля Компания', 2, 6, NULL, '2019-02-15 14:53:43', NULL, NULL),
(26, 'Почтовый индекс', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Минимальное количество символов поля Почтовый индекс', 2, 7, NULL, '2019-02-15 14:53:43', NULL, NULL),
(27, 'Город', 'ENTRY_CITY_MIN_LENGTH', '3', 'Минимальное количество символов поля Город', 2, 8, NULL, '2019-02-15 14:53:43', NULL, NULL),
(28, 'Регион', 'ENTRY_STATE_MIN_LENGTH', '2', 'Минимальное количество символов поля Регион', 2, 9, NULL, '2019-02-15 14:53:43', NULL, NULL),
(29, 'Телефон', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Минимальное количество символов поля Телефон', 2, 10, NULL, '2019-02-15 14:53:43', NULL, NULL),
(30, 'Пароль', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Минимальное количество символов поля Пароль', 2, 11, NULL, '2019-02-15 14:53:43', NULL, NULL),
(31, 'Владелец кредитной карточки', 'CC_OWNER_MIN_LENGTH', '3', 'Минимальное количество символов поля Владелец кредитной карточки', 2, 12, NULL, '2019-02-15 14:53:43', NULL, NULL),
(32, 'Номер кредитной карточки', 'CC_NUMBER_MIN_LENGTH', '10', 'Минимальное количество символов поля Номер кредитной карточки', 2, 13, NULL, '2019-02-15 14:53:43', NULL, NULL),
(33, 'Текст отзыва', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Минимальное количество символов для отызов', 2, 14, NULL, '2019-02-15 14:53:43', NULL, NULL),
(34, 'Лидеры продаж', 'MIN_DISPLAY_BESTSELLERS', '1', 'Минимальное количество товара, выводимого в блоке Лидеры продаж', 2, 15, NULL, '2019-02-15 14:53:43', NULL, NULL),
(35, 'Также заказали', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Минимальное количество товара, выводимого в боксе Также заказали', 2, 16, NULL, '2019-02-15 14:53:43', NULL, NULL),
(36, 'Записи в адресной книге', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Максимальное количество записей, которые может сделать покупатель в своей адресной книге', 3, 1, NULL, '2019-02-15 14:53:43', NULL, NULL),
(37, 'Товаров на одной странице в каталоге', 'MAX_DISPLAY_SEARCH_RESULTS', '20', 'Количество товара, выводимого на одной странице', 3, 2, NULL, '2019-02-15 14:53:43', NULL, NULL),
(38, 'Ссылок на страницы', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Количество ссылок на другие страницы', 3, 3, NULL, '2019-02-15 14:53:43', NULL, NULL),
(39, 'Специальные цены', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '9', 'Максимальное количество товара, выводимого на странице Скидки', 3, 4, NULL, '2019-02-15 14:53:43', NULL, NULL),
(40, 'Новинки', 'MAX_DISPLAY_NEW_PRODUCTS', '9', 'Максимальное количество товара, выводимых в боксе Новинки', 3, 5, NULL, '2019-02-15 14:53:43', NULL, NULL),
(41, 'Ожидаемые товары', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Максимальное количество товара, выводимого в блоке Ожидаемые товары', 3, 6, NULL, '2019-02-15 14:53:43', NULL, NULL),
(42, 'Список производителей', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Данная опция используется для настройки бокса производителей, если число производителей превышает указанное в данной опции, список производителей будет выводиться в виде drop-down списка, если число производителей меньше указанного в данной опции, произво', 3, 7, NULL, '2019-02-15 14:53:43', NULL, NULL),
(43, 'Производители в виде развёрнутого меню', 'MAX_MANUFACTURERS_LIST', '1', 'Данная опция используется для настройки бокса производителей, если указана цифра \'1\', то список производителей выводится в виде стандартного drop-down списка. Если указана любая другая цифра, то выводится только X производителей в виде развёрнутого меню.', 3, 7, NULL, '2019-02-15 14:53:43', NULL, NULL),
(44, 'Ограничение длины названия производителя', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Данная опция используется для настройки бокса производителей, Вы указываете количество символов, выводимого в боксе производителей, если название производителя будет состоять из большего количества символов, то будут выведены первые X символов названия', 3, 8, NULL, '2019-02-15 14:53:43', NULL, NULL),
(45, 'Новые отзывы', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Максимальное количество выводимых новых отзывов', 3, 9, NULL, '2019-02-15 14:53:43', NULL, NULL),
(46, 'Выбор случайных отзывов', 'MAX_RANDOM_SELECT_REVIEWS', '10', 'Количество отзывов, которое будет использоваться для вывода случайного, т.е. если указано X - число отзывов, то случайный отзыв будет выбран из этих X отзывов', 3, 10, NULL, '2019-02-15 14:53:43', NULL, NULL),
(47, 'Выбор случайного товара в боксе Новинки', 'MAX_RANDOM_SELECT_NEW', '10', 'Количество товара, среди которого будет выбран случайный товар и выведен в бокс Новинок, т.е. если указано число X, то новый товар, который будет показан в боксе Новинок будет выбран из этих X новых товаров', 3, 11, NULL, '2019-02-15 14:53:43', NULL, NULL),
(48, 'Выбор случайного товара в боксе Скидки', 'MAX_RANDOM_SELECT_SPECIALS', '10', 'Количество товара, среди которого будет выбран случайный товар и выведен в бокс Скидки, т.е. если указано число X, то товар, который будет показан в боксе Скидки будет выбран из этих X товаров', 3, 12, NULL, '2019-02-15 14:53:43', NULL, NULL),
(49, 'Количество категорий в строке', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'Сколько категорий выводить в одной строке', 3, 13, NULL, '2019-02-15 14:53:43', NULL, NULL),
(50, 'Количество Новинок на странице', 'MAX_DISPLAY_PRODUCTS_NEW', '10', 'Максимальное количество новинок, выводимых на одной странице в разделе Новинки', 3, 14, NULL, '2019-02-15 14:53:43', NULL, NULL),
(51, 'Лидеры продаж', 'MAX_DISPLAY_BESTSELLERS', '10', 'Максимальное количество лидеров продаж, выводимых в боксе Лидеры продаж', 3, 15, NULL, '2019-02-15 14:53:43', NULL, NULL),
(52, 'Также заказази', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Максимальное количество товаров в боксе Наши покупатели также заказали', 3, 16, NULL, '2019-02-15 14:53:43', NULL, NULL),
(53, 'Бокс История заказов', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Максимальное количество товаров, выводимых в боксе История заказов', 3, 17, NULL, '2019-02-15 14:53:43', NULL, NULL),
(54, 'История заказов', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Максимальное количество заказов, выводимых на странице История заказов', 3, 18, NULL, '2019-02-15 14:53:43', NULL, NULL),
(55, 'Количество товара в корзину', 'MAX_QTY_IN_CART', '99', 'Максимальное количество товара, которое можно положить в корзину (0 - без ограничений)', 3, 19, NULL, '2019-02-15 14:53:43', NULL, NULL),
(56, 'Ширина маленькой картинки', 'SMALL_IMAGE_WIDTH', '100', 'Ширина картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать ширину картинки. Ограничение ширины картинки не значит физического уменьшения размеров картинки.', 4, 1, NULL, '2019-02-15 14:53:43', NULL, NULL),
(57, 'Высота маленькой картинки', 'SMALL_IMAGE_HEIGHT', '80', 'Высота картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать высоту картинки. Ограничение высоты картинки не значит физического уменьшения размеров картинки.', 4, 2, NULL, '2019-02-15 14:53:43', NULL, NULL),
(58, 'Ширина картинки категории', 'HEADING_IMAGE_WIDTH', '57', 'Ширина картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать ширину картинки. Ограничение ширины картинки не значит физического уменьшения размеров картинки.', 4, 3, NULL, '2019-02-15 14:53:43', NULL, NULL),
(59, 'Высота картинки категории', 'HEADING_IMAGE_HEIGHT', '40', 'Высота картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать высоту картинки. Ограничение высоты картинки не значит физического уменьшения размеров картинки.', 4, 4, NULL, '2019-02-15 14:53:43', NULL, NULL),
(60, 'Ширина картинки подкатегории', 'SUBCATEGORY_IMAGE_WIDTH', '100', 'Ширина картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать ширину картинки. Ограничение ширины картинки не значит физического уменьшения размеров картинки.', 4, 5, NULL, '2019-02-15 14:53:43', NULL, NULL),
(61, 'Высота картинки подкатегории', 'SUBCATEGORY_IMAGE_HEIGHT', '57', 'Высота картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать высоту картинки. Ограничение высоты картинки не значит физического уменьшения размеров картинки.', 4, 6, NULL, '2019-02-15 14:53:43', NULL, NULL),
(62, 'Вычислять размер картинки', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Данная опция просто смотрит переменные, указанные выше и сжимает картинку до указанных размеров, это не значит, что физический размер картинки уменьшится, происходит принудительный вывод картинки определённого размера. Рекомендуется ставить значение false', 4, 7, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(63, 'Картинка обязательна', 'IMAGE_REQUIRED', 'true', 'Необходимо для поиска ошибок, в случае, если картинка не выводится.', 4, 8, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(64, 'Пол', 'ACCOUNT_GENDER', 'true', 'Показывать поле Пол при регистрации покупателя в магазине и в адресной книге', 5, 1, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(65, 'Дата рождения', 'ACCOUNT_DOB', 'true', 'Показывать поле Дата рождения при регистрации покупателя в магазине и в адресной книге', 5, 2, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(66, 'Компания', 'ACCOUNT_COMPANY', 'true', 'Показывать поле Компания при регистрации покупателя в магазине и в адресной книге', 5, 3, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(67, 'Район', 'ACCOUNT_SUBURB', 'true', 'Показывать поле Район при регистрации покупателя в магазине и в адресной книге', 5, 4, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(68, 'Регион', 'ACCOUNT_STATE', 'true', 'Показывать поле Регион при регистрации покупателя в магазине и в адресной книге', 5, 5, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(69, 'Установленные модули', 'MODULE_PAYMENT_INSTALLED', 'cod.php', 'Список установленных модулей оплаты, разделённых точкой с запятой. Страница автоматически обновляется. Ничего изменять не нужно, это просто информативная страница об установленных модулях. (Например: cc.php;cod.php;paypal.php)', 6, 0, NULL, '2019-02-15 14:53:43', NULL, NULL),
(70, 'Установленные модули', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php', 'Список установленных модулей заказ итого, разделённых точкой с запятой. Страница автоматически обновляется. Ничего изменять не нужно, это просто информативная страница об установленных модулях. (Например: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_tota', 6, 0, NULL, '2019-02-15 14:53:43', NULL, NULL),
(71, 'Установленные модули', 'MODULE_SHIPPING_INSTALLED', 'flat.php', 'Список установленных модулей доставки, разделённых точкой с запятой. Страница автоматически обновляется. Ничего изменять не нужно, это просто информативная страница об установленных модулях. (Например: ups.php;flat.php;item.php)', 6, 0, NULL, '2019-02-15 14:53:43', NULL, NULL),
(72, 'Installed Modules', 'MODULE_ACTION_RECORDER_INSTALLED', 'ar_admin_login.php;ar_contact_us.php;ar_reset_password.php;ar_tell_a_friend.php', 'List of action recorder module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2019-02-15 14:53:43', NULL, NULL),
(73, 'Installed Modules', 'MODULE_SOCIAL_BOOKMARKS_INSTALLED', 'sb_email.php;sb_google_plus_share.php;sb_facebook.php;sb_twitter.php;sb_pinterest.php', 'List of social bookmark module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, '2019-02-15 16:47:11', '2019-02-15 14:53:43', NULL, NULL),
(74, 'Разрешить модуль Оплата наличными при получении', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Вы хотите разрешить использование модуля при оформлении заказов?', 6, 1, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(75, 'Зона', 'MODULE_PAYMENT_COD_ZONE', '0', 'Если выбрана зона, то данный модуль оплаты будет виден только покупателям из выбранной зоны.', 6, 2, NULL, '2019-02-15 14:53:43', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(76, 'Порядок сортировки.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Порядок сортировки модуля.', 6, 0, NULL, '2019-02-15 14:53:43', NULL, NULL),
(77, 'Статус заказа', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Заказы, оформленные с использованием данного модуля оплаты будут принимать указанный статус.', 6, 0, NULL, '2019-02-15 14:53:43', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(78, 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', 6, 0, NULL, '2019-02-15 14:53:43', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(79, 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '5.00', 'The shipping cost for all orders using this shipping method.', 6, 0, NULL, '2019-02-15 14:53:43', NULL, NULL),
(80, 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2019-02-15 14:53:43', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(81, 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2019-02-15 14:53:43', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(82, 'Сортировка', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(83, 'Валюта по умолчанию', 'DEFAULT_CURRENCY', 'USD', 'Валюта по умолчанию', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(84, 'Язык по умолчанию', 'DEFAULT_LANGUAGE', 'ru', 'Язык по умолчанию', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(85, 'Статус заказа по умолчанию', 'DEFAULT_ORDERS_STATUS_ID', '1', 'Статус заказа по умолчанию, присваиваемый новым заказам.', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(86, 'Показывать доставку', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Вы хотите показывать стоимость доставки?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(87, 'Порядок сортировки', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '2', 'Порядок сортировки модуля.', 6, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(88, 'Разрешить бесплатную доставку', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Вы хотите разрешить использование модуля бесплатной доставки?', 6, 3, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(89, 'Бесплатная доставка для заказов на сумму свыше', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50', 'Заказы, свыше суммы, указанной данной поле, будут доставляться бесплатно.', 6, 4, NULL, '2019-02-15 14:53:44', 'currencies->format', NULL),
(90, 'Бесплатная доставка для заказов, оформленных из', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'national - заказы из страны нахождения магазина(переменная Страна магазина), international - заказы из любой страны, кроме страны нахождения магазина, если both - тогда все заказы. При условии, что сумма заказы выше суммы, указанной в переменной выше.', 6, 5, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'national\', \'international\', \'both\'), '),
(91, 'Показывать стоимость товара', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Вы хотите показывать стоимость товара?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(92, 'Порядок сортировки', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'Порядок сортировки модуля.', 6, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(93, 'Показывать налог', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Вы хотите показывать налог?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(94, 'Порядок сортировки', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '3', 'Порядок сортировки модуля.', 6, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(95, 'Показывать всего', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Вы хотите показывать общую стоимость заказа?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(96, 'Порядок сортировки', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'Порядок сортировки модуля.', 6, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(97, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(98, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(99, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES', '5', 'Number of minutes to allow login attempts to occur.', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(100, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS', '3', 'Number of login attempts to allow within the specified period.', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(101, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES', '5', 'Number of minutes to allow password resets to occur.', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(102, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS', '1', 'Number of password reset attempts to allow within the specified period.', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(103, 'Enable E-Mail Module', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'True', 'Do you want to allow products to be shared through e-mail?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(104, 'Сортировка', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER', '10', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(105, 'Enable Google+ Share Module', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_STATUS', 'True', 'Do you want to allow products to be shared through Google+?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(106, 'Annotation', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ANNOTATION', 'None', 'The annotation to display next to the button.', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'Inline\', \'Bubble\', \'Vertical-Bubble\', \'None\'), '),
(107, 'Width', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_WIDTH', '', 'The maximum width of the button.', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(108, 'Height', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_HEIGHT', '15', 'Sets the height of the button.', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'15\', \'20\', \'24\', \'60\'), '),
(109, 'Alignment', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ALIGN', 'Left', 'The alignment of the button assets.', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'Left\', \'Right\'), '),
(110, 'Сортировка', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_SORT_ORDER', '20', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(111, 'Enable Facebook Module', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_STATUS', 'True', 'Do you want to allow products to be shared through Facebook?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(112, 'Сортировка', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_SORT_ORDER', '30', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(113, 'Enable Twitter Module', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_STATUS', 'True', 'Do you want to allow products to be shared through Twitter?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(114, 'Сортировка', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_SORT_ORDER', '40', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(115, 'Enable Pinterest Module', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_STATUS', 'True', 'Do you want to allow Pinterest Button?', 6, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(116, 'Layout Position', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_BUTTON_COUNT_POSITION', 'None', 'Horizontal or Vertical or None', 6, 2, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'Horizontal\', \'Vertical\', \'None\'), '),
(117, 'Сортировка', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_SORT_ORDER', '50', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(118, 'Страна магазина', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Страна, где находится магазин. Необходимо для некоторых модулей доставки.', 7, 1, NULL, '2019-02-15 14:53:44', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(119, 'Почтовый индекс магазина', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Укажите почтовый индекс магазина. Необходимо для некоторых модулей доставки.', 7, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(120, 'Максимальный вес доставки', 'SHIPPING_MAX_WEIGHT', '50', 'Вы можете указать максимальный вес доставки, свыше которого заказы не доставляются. Необходимо для некоторых модулей доставки.', 7, 3, NULL, '2019-02-15 14:53:44', NULL, NULL),
(121, 'Вес упаковки', 'SHIPPING_BOX_WEIGHT', '3', 'Вы можете указать вес упаковки.', 7, 4, NULL, '2019-02-15 14:53:44', NULL, NULL),
(122, 'Тяжёлые заказы - Процентное увеличение стоимости', 'SHIPPING_BOX_PADDING', '10', 'Доставка заказов, вес которых больше указанного в переменной Максимальный вес доставки, увеличивается на указанный процент. Если Вы хотите увелить стоимость на 10%, пишите - 10', 7, 5, NULL, '2019-02-15 14:53:44', NULL, NULL),
(123, 'Разрешить заказы не соответствующие определённым зонам доставки', 'SHIPPING_ALLOW_UNDEFINED_ZONES', 'False', 'Разрешить заказы не соответствующие определённым зонам доставки?', 7, 5, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(124, 'Показывать картинку товара', 'PRODUCT_LIST_IMAGE', '1', 'Укажите порядок вывода, т.е. введите цифру. Если укажите 1, то картинка будет слева на первом месте, если 2, то картинка будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 1, NULL, '2019-02-15 14:53:44', NULL, NULL),
(125, 'Показывать производителя товара', 'PRODUCT_LIST_MANUFACTURER', '0', 'Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(126, 'Показывать код товара', 'PRODUCT_LIST_MODEL', '0', 'Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 3, NULL, '2019-02-15 14:53:44', NULL, NULL),
(127, 'Показывать название товара', 'PRODUCT_LIST_NAME', '2', 'Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 4, NULL, '2019-02-15 14:53:44', NULL, NULL),
(128, 'Показывать стоимость товара', 'PRODUCT_LIST_PRICE', '3', 'Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 5, NULL, '2019-02-15 14:53:44', NULL, NULL),
(129, 'Показывать количество товара на складе', 'PRODUCT_LIST_QUANTITY', '0', 'Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 6, NULL, '2019-02-15 14:53:44', NULL, NULL),
(130, 'Показывать вес товара', 'PRODUCT_LIST_WEIGHT', '0', 'Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 7, NULL, '2019-02-15 14:53:44', NULL, NULL),
(131, 'Показывать кнопку Купить сейчас!', 'PRODUCT_LIST_BUY_NOW', '4', 'Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.', 8, 8, NULL, '2019-02-15 14:53:44', NULL, NULL),
(132, 'Показывать фильтр Категория/Производители (0=не показывать; 1=показывать)', 'PRODUCT_LIST_FILTER', '1', 'Показывать бокс(drop-down) меню, с помощью которого можно сортировать товар в какой-либо категории магазина по Производителю.', 8, 9, NULL, '2019-02-15 14:53:44', NULL, NULL),
(133, 'Расположение навигации Следующая/Предыдущая страница', 'PREV_NEXT_BAR_LOCATION', '2', 'Установите расположение навигации Следующая/Предыдущая страница (1-верх, 2-низ, 3-верх+низ)', 8, 10, NULL, '2019-02-15 14:53:44', NULL, NULL),
(134, 'Проверять наличие товара на складе', 'STOCK_CHECK', 'true', 'Проверять, есть ли необходимое количество товара на складе при оформлении заказа', 9, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(135, 'Вычитать товар со склада', 'STOCK_LIMITED', 'true', 'Вычитать со склада то количество товара, которое будет заказываться в интернет-магазине', 9, 2, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(136, 'Разрешить оформление заказа', 'STOCK_ALLOW_CHECKOUT', 'true', 'Разрешить покупателям оформлять заказ, даже если на складе нет достаточного количества единиц заказываемого товара', 9, 3, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(137, 'Отмечать товар, отсутствующий на складе', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Показывать покупателю маркер напротив товара при оформлении заказа, если на складе нет необходимого количества единиц заказываемого товара', 9, 4, NULL, '2019-02-15 14:53:44', NULL, NULL),
(138, 'Лимит количества товара на складе', 'STOCK_REORDER_LEVEL', '5', 'Если количество товара на складе меньше, чем указанное число в данной переменной, то в корзине выводится предупреждение о недостаточном количестве товара на складе для выполнения заказа.', 9, 5, NULL, '2019-02-15 14:53:44', NULL, NULL),
(139, 'Сохранять время парсинга страниц', 'STORE_PAGE_PARSE_TIME', 'false', 'Хранить время, затраченное на генерацию(парсинг) страниц магазина.', 10, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(140, 'Директория хранения логов', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Полный путь до директории и файла, в который будет записываться лог парсинга страниц.', 10, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(141, 'Формат даты логов', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'Формат даты', 10, 3, NULL, '2019-02-15 14:53:44', NULL, NULL),
(142, 'Показывать время парсинга страниц', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Показывать время парсинга страницы в интернет-магазине (опция Сохранять время парсинга страниц должна быть включена)', 10, 4, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(143, 'Сохранять запросы к базе дынных', 'STORE_DB_TRANSACTIONS', 'false', 'Сохранять все запросы к базе данных в файле, указанном в переменной Директория хранение логов (только для PHP4 и выше)', 10, 5, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(144, 'Использовать кэш', 'USE_CACHE', 'true', 'Использовать кэширование информации.', 11, 1, '2019-02-17 01:47:29', '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(145, 'Кэш директория', 'DIR_FS_CACHE', '/var/www/html/mail.svyaznoytv.com/includes/work/', 'Директория, куда будут записываться и сохраняться кэш-файлы.', 11, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(146, 'Способ отправки E-Mail', 'EMAIL_TRANSPORT', 'sendmail', 'Укажите, какой способ отправки писем из магазина будет использоваться. Для серверов, работающих под управлением Windows или MacOS необходимо установить SMTP для отправки писем.', 12, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'sendmail\', \'smtp\'),'),
(147, 'Разделитель строк в E-Mail', 'EMAIL_LINEFEED', 'LF', 'Используемая последовательность символов для разделения заголовков в письме.', 12, 2, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'LF\', \'CRLF\'),'),
(148, 'Использовать HTML формат при отправке писем', 'EMAIL_USE_HTML', 'false', 'Отправлять письма из магазина в HTML формате.', 12, 3, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),'),
(149, 'Проверять E-Mail адрес через DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Проверять, верные ли e-mail адреса указываются при регистрации в интернет-магазине. Для проверки используется DNS.', 12, 4, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(150, 'Отправлять письма из магазина', 'SEND_EMAILS', 'true', 'Отправлять письма из мгаазина.', 12, 5, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(151, 'Разрешить функцию скачивания товаров', 'DOWNLOAD_ENABLED', 'false', 'Разрешить функцию скачивания товаров.', 13, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(152, 'Использовать перенаправление при скачивании', 'DOWNLOAD_BY_REDIRECT', 'false', 'Использовать перенаправление в браузере для скачивания товара. Для не Unix систем(Windows, Mac OS и т.д.) должно стоять false.', 13, 2, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(153, 'Срок существования ссылки для скачивания (дней)', 'DOWNLOAD_MAX_DAYS', '7', 'Установите количество дней, в течение которых покупатель может скачать свой товар. Если укажите 0, тогда срок существования ссылки для скачивания ограничен не будет.', 13, 3, NULL, '2019-02-15 14:53:44', NULL, ''),
(154, 'Максимальное количество скачиваний', 'DOWNLOAD_MAX_COUNT', '5', 'Установите максимальное количество скачиваний для одного товара. Если укажите 0, тогда никаких ограничений по количеству скачиваний не будет.', 13, 4, NULL, '2019-02-15 14:53:44', NULL, ''),
(155, 'Разрешить GZip компрессию', 'GZIP_COMPRESSION', 'false', 'Разрешить HTTP GZip компрессию.', 14, 1, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), '),
(156, 'Уровень компрессии', 'GZIP_LEVEL', '5', 'Вы можете указать уровень компрессии от 0 до 9 (0 = минимум, 9 = максимум).', 14, 2, NULL, '2019-02-15 14:53:44', NULL, NULL),
(157, 'Директория сессий', 'SESSION_WRITE_DIRECTORY', '/var/www/html/mail.svyaznoytv.com/includes/work/', 'Если сессии хранятся в файлах, то здесь необходимо указать полный путь до папки, в которой будут храниться файлы сессий.', 15, 1, NULL, '2019-02-15 14:53:44', NULL, NULL),
(158, 'Принудительное использование Cookie', 'SESSION_FORCE_COOKIE_USE', 'False', 'Принудительно использовать сессии, только когда в браузере активированы cookies.', 15, 2, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(159, 'Проверять ID SSL сессии', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Проверять  SSL_SESSION_ID при каждом обращении к странице, защищённой протоколом HTTPS.', 15, 3, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(160, 'Проверять переменную User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Проверять переменную бразура user agent при каждом обращении к страницам интернет-магазина.', 15, 4, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(161, 'Проверять IP адрес', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Проверять IP адреса клиентов при каждом обращении к страницам интернет-магазина.', 15, 5, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(162, 'Не показывать сессию в адресе паукам поисковых машин', 'SESSION_BLOCK_SPIDERS', 'True', 'Не показывать сессию в адресе при обращении к станицам магазина известных поисковых пауков. Список известных пауков находится в файле includes/spiders.txt.', 15, 6, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(163, 'Воссоздавать сессию', 'SESSION_RECREATE', 'True', 'Воссоздавать сессию для генерации нового ID кода сессии при входе зарегистрированного покупателя в магазин, либо при регистрации нового покупателя (Только для PHP 4.1 и выше).', 15, 7, NULL, '2019-02-15 14:53:44', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(164, 'Last UPDATE Check Time', 'LAST_UPDATE_CHECK_TIME', '', 'Last time a check for new versions of osCommerce was run', 6, 0, NULL, '2019-02-15 14:53:44', NULL, NULL),
(183, 'Installed Modules', 'MODULE_HEADER_TAGS_INSTALLED', 'ht_canonical.php;ht_manufacturer_title.php;ht_category_title.php;ht_product_title.php;ht_robot_noindex.php', 'List of header tag module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(184, 'Enable Category Title Module', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_STATUS', 'True', 'Do you want to allow category titles to be added to the page title?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(185, 'Сортировка', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SORT_ORDER', '200', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(186, 'Enable Manufacturer Title Module', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_STATUS', 'True', 'Do you want to allow manufacturer titles to be added to the page title?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(187, 'Сортировка', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SORT_ORDER', '100', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(188, 'Enable Product Title Module', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_STATUS', 'True', 'Do you want to allow product titles to be added to the page title?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(189, 'Сортировка', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SORT_ORDER', '300', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(190, 'Enable Canonical Module', 'MODULE_HEADER_TAGS_CANONICAL_STATUS', 'True', 'Do you want to enable the Canonical module?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(191, 'Сортировка', 'MODULE_HEADER_TAGS_CANONICAL_SORT_ORDER', '400', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(192, 'Enable Robot NoIndex Module', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_STATUS', 'True', 'Do you want to enable the Robot NoIndex module?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(193, 'Pages', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_PAGES', 'account.php;account_edit.php;account_history.php;account_history_info.php;account_newsletters.php;account_notifications.php;account_password.php;address_book.php;address_book_process.php;checkout_confirmation.php;checkout_payment.php;checkout_payment_address.php;checkout_process.php;checkout_shipping.php;checkout_shipping_address.php;checkout_success.php;cookie_usage.php;create_account.php;create_account_success.php;login.php;logoff.php;password_forgotten.php;password_reset.php;product_reviews_write.php;shopping_cart.php;ssl_check.php;tell_a_friend.php', 'The pages to add the meta robot noindex tag to.', 6, 0, NULL, '2019-02-15 14:53:52', 'ht_robot_noindex_show_pages', 'ht_robot_noindex_edit_pages('),
(194, 'Сортировка', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_SORT_ORDER', '500', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(195, 'Installed Modules', 'MODULE_ADMIN_DASHBOARD_INSTALLED', 'd_total_revenue.php;d_total_customers.php;d_orders.php;d_customers.php;d_admin_logins.php;d_security_checks.php;d_latest_news.php;d_latest_addons.php;d_partner_news.php;d_version_check.php;d_reviews.php', 'List of Administration Tool Dashboard module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(196, 'Enable Administrator Logins Module', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_STATUS', 'True', 'Do you want to show the latest administrator logins on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(197, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_SORT_ORDER', '500', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(198, 'Enable Customers Module', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_STATUS', 'True', 'Do you want to show the newest customers on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(199, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_SORT_ORDER', '400', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(200, 'Enable Latest Add-Ons Module', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_STATUS', 'True', 'Do you want to show the latest osCommerce Add-Ons on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(201, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_SORT_ORDER', '800', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(202, 'Enable Latest News Module', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce News on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(203, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_SORT_ORDER', '700', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(204, 'Enable Orders Module', 'MODULE_ADMIN_DASHBOARD_ORDERS_STATUS', 'True', 'Do you want to show the latest orders on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(205, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_ORDERS_SORT_ORDER', '300', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(206, 'Enable Security Checks Module', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_STATUS', 'True', 'Do you want to run the security checks for this installation?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(207, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_SORT_ORDER', '600', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(208, 'Enable Total Customers Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_STATUS', 'True', 'Do you want to show the total customers chart on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(209, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_SORT_ORDER', '200', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(210, 'Enable Total Revenue Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_STATUS', 'True', 'Do you want to show the total revenue chart on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(211, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_SORT_ORDER', '100', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(212, 'Enable Version Check Module', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_STATUS', 'True', 'Do you want to show the version check results on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(213, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_SORT_ORDER', '900', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(214, 'Enable Latest Reviews Module', 'MODULE_ADMIN_DASHBOARD_REVIEWS_STATUS', 'True', 'Do you want to show the latest reviews on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(215, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_REVIEWS_SORT_ORDER', '1000', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(216, 'Enable Partner News Module', 'MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce Partner News on the dashboard?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(217, 'Сортировка', 'MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_SORT_ORDER', '820', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(218, 'Installed Modules', 'MODULE_BOXES_INSTALLED', 'bm_categories.php;bm_manufacturers.php;bm_search.php;bm_whats_new.php;bm_information.php;bm_card_acceptance.php;bm_shopping_cart.php;bm_manufacturer_info.php;bm_order_history.php;bm_best_sellers.php;bm_product_notifications.php;bm_product_social_bookmarks.php;bm_specials.php;bm_reviews.php;bm_languages.php;bm_currencies.php', 'List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(219, 'Enable Best Sellers Module', 'MODULE_BOXES_BEST_SELLERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(220, 'Местоположение', 'MODULE_BOXES_BEST_SELLERS_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(221, 'Сортировка', 'MODULE_BOXES_BEST_SELLERS_SORT_ORDER', '5030', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(222, 'Enable Categories Module', 'MODULE_BOXES_CATEGORIES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(223, 'Местоположение', 'MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT', 'Left Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(224, 'Сортировка', 'MODULE_BOXES_CATEGORIES_SORT_ORDER', '1000', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(225, 'Enable Currencies Module', 'MODULE_BOXES_CURRENCIES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(226, 'Местоположение', 'MODULE_BOXES_CURRENCIES_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(227, 'Сортировка', 'MODULE_BOXES_CURRENCIES_SORT_ORDER', '5090', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(228, 'Enable Information Module', 'MODULE_BOXES_INFORMATION_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(229, 'Местоположение', 'MODULE_BOXES_INFORMATION_CONTENT_PLACEMENT', 'Left Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(230, 'Сортировка', 'MODULE_BOXES_INFORMATION_SORT_ORDER', '1050', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(231, 'Enable Languages Module', 'MODULE_BOXES_LANGUAGES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(232, 'Местоположение', 'MODULE_BOXES_LANGUAGES_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(233, 'Сортировка', 'MODULE_BOXES_LANGUAGES_SORT_ORDER', '5080', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(234, 'Enable Manufacturer Info Module', 'MODULE_BOXES_MANUFACTURER_INFO_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(235, 'Местоположение', 'MODULE_BOXES_MANUFACTURER_INFO_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(236, 'Сортировка', 'MODULE_BOXES_MANUFACTURER_INFO_SORT_ORDER', '5010', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(237, 'Enable Manufacturers Module', 'MODULE_BOXES_MANUFACTURERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(238, 'Местоположение', 'MODULE_BOXES_MANUFACTURERS_CONTENT_PLACEMENT', 'Left Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:52', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(239, 'Сортировка', 'MODULE_BOXES_MANUFACTURERS_SORT_ORDER', '1020', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:52', NULL, NULL),
(240, 'Enable Order History Module', 'MODULE_BOXES_ORDER_HISTORY_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(241, 'Местоположение', 'MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(242, 'Сортировка', 'MODULE_BOXES_ORDER_HISTORY_SORT_ORDER', '5020', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(243, 'Enable Product Notifications Module', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(244, 'Местоположение', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(245, 'Сортировка', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_SORT_ORDER', '5040', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(246, 'Enable Product Social Bookmarks Module', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(247, 'Местоположение', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(248, 'Сортировка', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_SORT_ORDER', '5050', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(249, 'Enable Reviews Module', 'MODULE_BOXES_REVIEWS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(250, 'Местоположение', 'MODULE_BOXES_REVIEWS_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(251, 'Сортировка', 'MODULE_BOXES_REVIEWS_SORT_ORDER', '5070', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(252, 'Enable Search Module', 'MODULE_BOXES_SEARCH_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(253, 'Местоположение', 'MODULE_BOXES_SEARCH_CONTENT_PLACEMENT', 'Left Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(254, 'Сортировка', 'MODULE_BOXES_SEARCH_SORT_ORDER', '1030', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(255, 'Enable Shopping Cart Module', 'MODULE_BOXES_SHOPPING_CART_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(256, 'Местоположение', 'MODULE_BOXES_SHOPPING_CART_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(257, 'Сортировка', 'MODULE_BOXES_SHOPPING_CART_SORT_ORDER', '5000', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(258, 'Enable Specials Module', 'MODULE_BOXES_SPECIALS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(259, 'Местоположение', 'MODULE_BOXES_SPECIALS_CONTENT_PLACEMENT', 'Right Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(260, 'Сортировка', 'MODULE_BOXES_SPECIALS_SORT_ORDER', '5060', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(261, 'Enable What\'s New Module', 'MODULE_BOXES_WHATS_NEW_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(262, 'Местоположение', 'MODULE_BOXES_WHATS_NEW_CONTENT_PLACEMENT', 'Left Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(263, 'Сортировка', 'MODULE_BOXES_WHATS_NEW_SORT_ORDER', '1040', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(264, 'Enable Card Acceptance Module', 'MODULE_BOXES_CARD_ACCEPTANCE_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(265, 'Logos', 'MODULE_BOXES_CARD_ACCEPTANCE_LOGOS', 'paypal_horizontal_large.png;visa.png;mastercard_transparent.png;american_express.png;maestro_transparent.png', 'The card acceptance logos to show.', 6, 0, NULL, '2019-02-15 14:53:53', 'bm_card_acceptance_show_logos', 'bm_card_acceptance_edit_logos('),
(266, 'Местоположение', 'MODULE_BOXES_CARD_ACCEPTANCE_CONTENT_PLACEMENT', 'Left Column', 'Этот модуль загружать в правую или левую колонку?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), '),
(267, 'Сортировка', 'MODULE_BOXES_CARD_ACCEPTANCE_SORT_ORDER', '1060', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(268, 'Установленные группы блока шаблона', 'TEMPLATE_BLOCK_GROUPS', 'boxes;header_tags', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(269, 'Installed Modules', 'MODULE_CONTENT_INSTALLED', 'account/cm_account_set_password;checkout_success/cm_cs_redirect_old_order;checkout_success/cm_cs_thank_you;checkout_success/cm_cs_product_notifications;checkout_success/cm_cs_downloads;login/cm_login_form;login/cm_create_account_link', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(270, 'Enable Set Account Password', 'MODULE_CONTENT_ACCOUNT_SET_PASSWORD_STATUS', 'True', 'Do you want to enable the Set Account Password module?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(271, 'Allow Local Passwords', 'MODULE_CONTENT_ACCOUNT_SET_PASSWORD_ALLOW_PASSWORD', 'True', 'Allow local account passwords to be set.', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(272, 'Сортировка', 'MODULE_CONTENT_ACCOUNT_SET_PASSWORD_SORT_ORDER', '100', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(273, 'Enable Redirect Old Order Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_STATUS', 'True', 'Should customers be redirected when viewing old checkout success orders?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(274, 'Redirect Minutes', 'MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_MINUTES', '60', 'Redirect customers to the My Account page after an order older than this amount is viewed.', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(275, 'Сортировка', 'MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_SORT_ORDER', '500', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(276, 'Enable Thank You Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_THANK_YOU_STATUS', 'True', 'Should the thank you block be shown on the checkout success page?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(277, 'Сортировка', 'MODULE_CONTENT_CHECKOUT_SUCCESS_THANK_YOU_SORT_ORDER', '1000', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(278, 'Enable Product Notifications Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Should the product notifications block be shown on the checkout success page?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(279, 'Сортировка', 'MODULE_CONTENT_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_SORT_ORDER', '2000', 'Порядок сортировки', 6, 3, NULL, '2019-02-15 14:53:53', NULL, NULL),
(280, 'Enable Product Downloads Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_DOWNLOADS_STATUS', 'True', 'Should ordered product download links be shown on the checkout success page?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(281, 'Сортировка', 'MODULE_CONTENT_CHECKOUT_SUCCESS_DOWNLOADS_SORT_ORDER', '3000', 'Порядок сортировки', 6, 3, NULL, '2019-02-15 14:53:53', NULL, NULL),
(282, 'Enable Login Form Module', 'MODULE_CONTENT_LOGIN_FORM_STATUS', 'True', 'Do you want to enable the login form module?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(283, 'Content Width', 'MODULE_CONTENT_LOGIN_FORM_CONTENT_WIDTH', 'Half', 'Should the content be shown in a full or half width container?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Full\', \'Half\'), '),
(284, 'Сортировка', 'MODULE_CONTENT_LOGIN_FORM_SORT_ORDER', '1000', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(285, 'Enable New User Module', 'MODULE_CONTENT_CREATE_ACCOUNT_LINK_STATUS', 'True', 'Do you want to enable the new user module?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), '),
(286, 'Content Width', 'MODULE_CONTENT_CREATE_ACCOUNT_LINK_CONTENT_WIDTH', 'Half', 'Should the content be shown in a full or half width container?', 6, 1, NULL, '2019-02-15 14:53:53', NULL, 'tep_cfg_select_option(array(\'Full\', \'Half\'), '),
(287, 'Сортировка', 'MODULE_CONTENT_CREATE_ACCOUNT_LINK_SORT_ORDER', '2000', 'Порядок сортировки', 6, 0, NULL, '2019-02-15 14:53:53', NULL, NULL),
(288, 'Security Check Extended Last Run', 'MODULE_SECURITY_CHECK_EXTENDED_LAST_RUN_DATETIME', '1550236094', 'The date and time the last extended security check was performed.', 6, NULL, NULL, '2019-02-15 15:03:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `configuration_group`
--

CREATE TABLE `configuration_group` (
  `configuration_group_id` int(11) NOT NULL,
  `configuration_group_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `configuration_group_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `configuration_group`
--

INSERT INTO `configuration_group` (`configuration_group_id`, `configuration_group_title`, `configuration_group_description`, `sort_order`, `visible`) VALUES
(1, 'Магазин', 'Основные настройки магазина', 1, 1),
(2, 'Минимальные значения', 'Минимальные значения функций и данных', 2, 1),
(3, 'Максимальные значения', 'Максимальные значения функций и данных', 3, 1),
(4, 'Картинки', 'Настройки картинок', 4, 1),
(5, 'Данные покупателя', 'Настройка формы регистрации', 5, 1),
(6, 'Установленные модули', 'Скрытые опции', 6, 0),
(7, 'Доставка/Упаковка', 'Настройка опци доставки и упаковки', 7, 1),
(8, 'Вывод товара', 'Настройка вывода товара', 8, 1),
(9, 'Склад', 'Настройка склада', 9, 1),
(10, 'Логи', 'Настройка логов', 10, 1),
(11, 'Кэш', 'Настройка кэша', 11, 1),
(12, 'Настройка E-Mail', 'Настройка E-Mail', 12, 1),
(13, 'Скачивание', 'Настройка скачиваемых товаров', 13, 1),
(14, 'GZip Компрессия', 'Настройка GZip компрессии', 14, 1),
(15, 'Сессии', 'Session options', 15, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `counter`
--

CREATE TABLE `counter` (
  `startdate` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `counter_history`
--

CREATE TABLE `counter_history` (
  `month` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Афганистан', 'AF', 'AFG', 1),
(2, 'Албания', 'AL', 'ALB', 1),
(3, 'Алжир', 'DZ', 'DZA', 1),
(4, 'Американский Самоа', 'AS', 'ASM', 1),
(5, 'Андорра', 'AD', 'AND', 1),
(6, 'Ангола', 'AO', 'AGO', 1),
(7, 'Ангилья', 'AI', 'AIA', 1),
(8, 'Антарктика', 'AQ', 'ATA', 1),
(9, 'Антигуа и Барбуда', 'AG', 'ATG', 1),
(10, 'Аргентина', 'AR', 'ARG', 1),
(11, 'Армения', 'AM', 'ARM', 1),
(12, 'Аруба', 'AW', 'ABW', 1),
(13, 'Австралия', 'AU', 'AUS', 1),
(14, 'Австрия', 'AT', 'AUT', 5),
(15, 'Азербайджан', 'AZ', 'AZE', 1),
(16, 'Багамские острова', 'BS', 'BHS', 1),
(17, 'Бахрейн', 'BH', 'BHR', 1),
(18, 'Бангладеш', 'BD', 'BGD', 1),
(19, 'Барбадос', 'BB', 'BRB', 1),
(20, 'Беларусь', 'BY', 'BLR', 1),
(21, 'Бельгия', 'BE', 'BEL', 1),
(22, 'Белиз', 'BZ', 'BLZ', 1),
(23, 'Бенин', 'BJ', 'BEN', 1),
(24, 'Бермуды', 'BM', 'BMU', 1),
(25, 'Бутан', 'BT', 'BTN', 1),
(26, 'Боливия', 'BO', 'BOL', 1),
(27, 'Босния и Герцеговина', 'BA', 'BIH', 1),
(28, 'Ботсвана', 'BW', 'BWA', 1),
(29, 'остров Буве', 'BV', 'BVT', 1),
(30, 'Бразилия', 'BR', 'BRA', 1),
(31, 'Британские территории Индийского океана', 'IO', 'IOT', 1),
(32, 'Бруней', 'BN', 'BRN', 1),
(33, 'Болгария', 'BG', 'BGR', 1),
(34, 'Буркина Фасо', 'BF', 'BFA', 1),
(35, 'Бурунди', 'BI', 'BDI', 1),
(36, 'Камбоджа', 'KH', 'KHM', 1),
(37, 'Камерун', 'CM', 'CMR', 1),
(38, 'Канада', 'CA', 'CAN', 1),
(39, 'острова Зеленого Мыса', 'CV', 'CPV', 1),
(40, 'Каймановы острова', 'KY', 'CYM', 1),
(41, 'Центральная Африканская Республика', 'CF', 'CAF', 1),
(42, 'Чад', 'TD', 'TCD', 1),
(43, 'Чили', 'CL', 'CHL', 1),
(44, 'Китайская Народная Республика', 'CN', 'CHN', 1),
(45, 'остров Рождества', 'CX', 'CXR', 1),
(46, 'Кокосовые острова', 'CC', 'CCK', 1),
(47, 'Колумбия', 'CO', 'COL', 1),
(48, 'Коморские острова', 'KM', 'COM', 1),
(49, 'Конго', 'CG', 'COG', 1),
(50, 'острова Кука', 'CK', 'COK', 1),
(51, 'Коста Рика', 'CR', 'CRI', 1),
(52, 'Кот-д\'Ивуар', 'CI', 'CIV', 1),
(53, 'Хорватия', 'HR', 'HRV', 1),
(54, 'Куба', 'CU', 'CUB', 1),
(55, 'Кипр', 'CY', 'CYP', 1),
(56, 'Чехия', 'CZ', 'CZE', 1),
(57, 'Дания', 'DK', 'DNK', 1),
(58, 'Джибути', 'DJ', 'DJI', 1),
(59, 'Доминика', 'DM', 'DMA', 1),
(60, 'Доминиканская республика', 'DO', 'DOM', 1),
(61, 'Восточный Тимур', 'TP', 'TMP', 1),
(62, 'Эквадор', 'EC', 'ECU', 1),
(63, 'Египет', 'EG', 'EGY', 1),
(64, 'Сальвадор', 'SV', 'SLV', 1),
(65, 'Экваториальная Гвинея', 'GQ', 'GNQ', 1),
(66, 'Эритрея', 'ER', 'ERI', 1),
(67, 'Эстония', 'EE', 'EST', 1),
(68, 'Эфиопия', 'ET', 'ETH', 1),
(69, 'Фолклендские', 'FK', 'FLK', 1),
(70, 'Фарерские острова', 'FO', 'FRO', 1),
(71, 'Фиджи', 'FJ', 'FJI', 1),
(72, 'Финляндия', 'FI', 'FIN', 1),
(73, 'Франция', 'FR', 'FRA', 1),
(74, 'Франция, Метрополия', 'FX', 'FXX', 1),
(75, 'Французская Гвиана', 'GF', 'GUF', 1),
(76, 'Французская Полинезия', 'PF', 'PYF', 1),
(77, 'Французские Южные Территории', 'TF', 'ATF', 1),
(78, 'Габон', 'GA', 'GAB', 1),
(79, 'Гамбия', 'GM', 'GMB', 1),
(80, 'Грузия', 'GE', 'GEO', 1),
(81, 'Германия', 'DE', 'DEU', 5),
(82, 'Гана', 'GH', 'GHA', 1),
(83, 'Гибралтар', 'GI', 'GIB', 1),
(84, 'Греция', 'GR', 'GRC', 1),
(85, 'Гренландия', 'GL', 'GRL', 1),
(86, 'Гренада', 'GD', 'GRD', 1),
(87, 'Гваделупа', 'GP', 'GLP', 1),
(88, 'Гуам', 'GU', 'GUM', 1),
(89, 'Гватемала', 'GT', 'GTM', 1),
(90, 'Гвинея', 'GN', 'GIN', 1),
(91, 'Гвинея-Бисау', 'GW', 'GNB', 1),
(92, 'Гайана', 'GY', 'GUY', 1),
(93, 'Гаити', 'HT', 'HTI', 1),
(94, 'острова Герда и МакДональда', 'HM', 'HMD', 1),
(95, 'Гондурас', 'HN', 'HND', 1),
(96, 'Гонконг', 'HK', 'HKG', 1),
(97, 'Венгрия', 'HU', 'HUN', 1),
(98, 'Исландия', 'IS', 'ISL', 1),
(99, 'Индия', 'IN', 'IND', 1),
(100, 'Индонезия', 'ID', 'IDN', 1),
(101, 'Иран', 'IR', 'IRN', 1),
(102, 'Ирак', 'IQ', 'IRQ', 1),
(103, 'Ирландия', 'IE', 'IRL', 1),
(104, 'Израиль', 'IL', 'ISR', 1),
(105, 'Италия', 'IT', 'ITA', 1),
(106, 'Ямайка', 'JM', 'JAM', 1),
(107, 'Япония', 'JP', 'JPN', 1),
(108, 'Иордания', 'JO', 'JOR', 1),
(109, 'Казахстан', 'KZ', 'KAZ', 1),
(110, 'Кения', 'KE', 'KEN', 1),
(111, 'Кирибати', 'KI', 'KIR', 1),
(112, 'Корейская Народная Демократическая республика', 'KP', 'PRK', 1),
(113, 'Корея', 'KR', 'KOR', 1),
(114, 'Кувейт', 'KW', 'KWT', 1),
(115, 'Кыргызстан', 'KG', 'KGZ', 1),
(116, 'Лаос', 'LA', 'LAO', 1),
(117, 'Латвия', 'LV', 'LVA', 1),
(118, 'Ливан', 'LB', 'LBN', 1),
(119, 'Лесото', 'LS', 'LSO', 1),
(120, 'Либерия', 'LR', 'LBR', 1),
(121, 'Ливия', 'LY', 'LBY', 1),
(122, 'Лихтенштейн', 'LI', 'LIE', 1),
(123, 'Литва', 'LT', 'LTU', 1),
(124, 'Люксембург', 'LU', 'LUX', 1),
(125, 'Макао', 'MO', 'MAC', 1),
(126, 'Македония', 'MK', 'MKD', 1),
(127, 'Мадагаскар', 'MG', 'MDG', 1),
(128, 'Малави', 'MW', 'MWI', 1),
(129, 'Малайзия', 'MY', 'MYS', 1),
(130, 'Мальдивские острова', 'MV', 'MDV', 1),
(131, 'Мали', 'ML', 'MLI', 1),
(132, 'Мальта', 'MT', 'MLT', 1),
(133, 'Маршалловы острова', 'MH', 'MHL', 1),
(134, 'Мартиника', 'MQ', 'MTQ', 1),
(135, 'Мавритания', 'MR', 'MRT', 1),
(136, 'Маврикий', 'MU', 'MUS', 1),
(137, 'Майотта', 'YT', 'MYT', 1),
(138, 'Мексика', 'MX', 'MEX', 1),
(139, 'Микронезия', 'FM', 'FSM', 1),
(140, 'Молдова', 'MD', 'MDA', 1),
(141, 'Монако', 'MC', 'MCO', 1),
(142, 'Монголия', 'MN', 'MNG', 1),
(143, 'Монтсеррат', 'MS', 'MSR', 1),
(144, 'Марокко', 'MA', 'MAR', 1),
(145, 'Мозамбик', 'MZ', 'MOZ', 1),
(146, 'Мьянма', 'MM', 'MMR', 1),
(147, 'Намибия', 'NA', 'NAM', 1),
(148, 'Науру', 'NR', 'NRU', 1),
(149, 'Непал', 'NP', 'NPL', 1),
(150, 'Нидерланды', 'NL', 'NLD', 1),
(151, 'Антильские острова', 'AN', 'ANT', 1),
(152, 'Новая Каледония', 'NC', 'NCL', 1),
(153, 'Новая Зеландия', 'NZ', 'NZL', 1),
(154, 'Никарагуа', 'NI', 'NIC', 1),
(155, 'Нигер', 'NE', 'NER', 1),
(156, 'Нигерия', 'NG', 'NGA', 1),
(157, 'Ниуэ', 'NU', 'NIU', 1),
(158, 'остров Норфолк', 'NF', 'NFK', 1),
(159, 'Марианские острова', 'MP', 'MNP', 1),
(160, 'Норвегия', 'NO', 'NOR', 1),
(161, 'Оман', 'OM', 'OMN', 1),
(162, 'Пакистан', 'PK', 'PAK', 1),
(163, 'Палау', 'PW', 'PLW', 1),
(164, 'Панама', 'PA', 'PAN', 1),
(165, 'Папуа - Новая Гвинея', 'PG', 'PNG', 1),
(166, 'Парагвай', 'PY', 'PRY', 1),
(167, 'Перу', 'PE', 'PER', 1),
(168, 'Филиппины', 'PH', 'PHL', 1),
(169, 'остров Питкэрн', 'PN', 'PCN', 1),
(170, 'Польша', 'PL', 'POL', 1),
(171, 'Португалия', 'PT', 'PRT', 1),
(172, 'Пуэрто-Рико', 'PR', 'PRI', 1),
(173, 'Катар', 'QA', 'QAT', 1),
(174, 'Реюньон', 'RE', 'REU', 1),
(175, 'Румыния', 'RO', 'ROM', 1),
(176, 'Россия', 'RU', 'RUS', 6),
(177, 'Руанда', 'RW', 'RWA', 1),
(178, 'Сент-Китс и Невис', 'KN', 'KNA', 1),
(179, 'Сент-Люсия', 'LC', 'LCA', 1),
(180, 'Сент-Винсент и Гренадины', 'VC', 'VCT', 1),
(181, 'острова Самоа', 'WS', 'WSM', 1),
(182, 'Сан-Марино', 'SM', 'SMR', 1),
(183, 'Сан-Томе и Принсипи', 'ST', 'STP', 1),
(184, 'Саудовская Аравия', 'SA', 'SAU', 1),
(185, 'Сенегал', 'SN', 'SEN', 1),
(186, 'Сейшельские острова', 'SC', 'SYC', 1),
(187, 'Сьерра-Леоне', 'SL', 'SLE', 1),
(188, 'Сингапур', 'SG', 'SGP', 4),
(189, 'Словакия', 'SK', 'SVK', 1),
(190, 'Словения', 'SI', 'SVN', 1),
(191, 'Соломоновы острова', 'SB', 'SLB', 1),
(192, 'Сомали', 'SO', 'SOM', 1),
(193, 'ЮАР', 'ZA', 'ZAF', 1),
(194, 'Южная Георгия и Южные Сандвичевы острова', 'GS', 'SGS', 1),
(195, 'Испания', 'ES', 'ESP', 3),
(196, 'Шри Ланка', 'LK', 'LKA', 1),
(197, 'остров Святой Елены', 'SH', 'SHN', 1),
(198, 'Сен-Пьер и Микелон', 'PM', 'SPM', 1),
(199, 'Судан', 'SD', 'SDN', 1),
(200, 'Суринам', 'SR', 'SUR', 1),
(201, 'острова Свалбард и Ян Майен', 'SJ', 'SJM', 1),
(202, 'Свазиленд', 'SZ', 'SWZ', 1),
(203, 'Швеция', 'SE', 'SWE', 1),
(204, 'Швейцария', 'CH', 'CHE', 1),
(205, 'Сирия', 'SY', 'SYR', 1),
(206, 'Тайвань', 'TW', 'TWN', 1),
(207, 'Таджикистан', 'TJ', 'TJK', 1),
(208, 'Танзания', 'TZ', 'TZA', 1),
(209, 'Тайланд', 'TH', 'THA', 1),
(210, 'Того', 'TG', 'TGO', 1),
(211, 'Токелау', 'TK', 'TKL', 1),
(212, 'Тонга', 'TO', 'TON', 1),
(213, 'Тринидад и Тобаго', 'TT', 'TTO', 1),
(214, 'Тунис', 'TN', 'TUN', 1),
(215, 'Турция', 'TR', 'TUR', 1),
(216, 'Туркменистан', 'TM', 'TKM', 1),
(217, 'острова Туркс и Кайкос', 'TC', 'TCA', 1),
(218, 'Тувалу', 'TV', 'TUV', 1),
(219, 'Уганда', 'UG', 'UGA', 1),
(220, 'Украина', 'UA', 'UKR', 1),
(221, 'Арабские Эмираты', 'AE', 'ARE', 1),
(222, 'Великобритания', 'GB', 'GBR', 1),
(223, 'Соединенные Штаты Америки', 'US', 'USA', 2),
(224, 'Отдаленные Острова США', 'UM', 'UMI', 1),
(225, 'Уругвай', 'UY', 'URY', 1),
(226, 'Узбекистан', 'UZ', 'UZB', 1),
(227, 'Вануату', 'VU', 'VUT', 1),
(228, 'Ватикан', 'VA', 'VAT', 1),
(229, 'Венесуэла', 'VE', 'VEN', 1),
(230, 'Вьетнам', 'VN', 'VNM', 1),
(231, 'Британские Виргинские острова', 'VG', 'VGB', 1),
(232, 'Американские Виргинские острова', 'VI', 'VIR', 1),
(233, 'острова Валлис и Футуна', 'WF', 'WLF', 1),
(234, 'Западная Сахара', 'EH', 'ESH', 1),
(235, 'Йемен', 'YE', 'YEM', 1),
(236, 'Югославия', 'YU', 'YUG', 1),
(237, 'Заир', 'ZR', 'ZAR', 1),
(238, 'Замбия', 'ZM', 'ZMB', 1),
(239, 'Зимбабве', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', '', '.', ',', '2', 1.00000000, '2019-02-15 14:53:47'),
(2, 'Euro', 'EUR', '', '€', '.', ',', '2', 1.00000000, '2019-02-15 14:53:47'),
(3, 'Рубль', 'RUR', '', 'руб.', '.', ',', '2', 33.00000000, '2019-02-15 14:53:53'),
(4, 'Гривна', 'UAH', '', 'грн.', '.', ',', '2', 5.05000019, '2019-02-15 14:53:53');

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_dob` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `customers_email_address`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `customers_password`, `customers_newsletter`) VALUES
(1, 'm', 'mic', 'lee', '1978-06-06 00:00:00', 'kaizen@lis.ru', 1, '0682523312', '', '$P$DKqBZSpDfsZn2F93V1Suk8yjf03H8o1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `customers_basket_date_added` char(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0',
  `password_reset_key` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`, `password_reset_key`, `password_reset_date`) VALUES
(1, NULL, 0, '2019-02-15 16:58:50', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', NULL, '2019-02-15 14:53:49');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`) VALUES
(1, 'English', 'en', 'icon.gif', 'english', 1),
(2, 'Russian', 'ru', 'icon.gif', 'russian', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(1, 'Matrox', 'manufacturer_matrox.gif', '2019-02-15 14:53:47', NULL),
(2, 'Microsoft', 'manufacturer_microsoft.gif', '2019-02-15 14:53:47', NULL),
(3, 'Warner', 'manufacturer_warner.gif', '2019-02-15 14:53:47', NULL),
(4, 'Fox', 'manufacturer_fox.gif', '2019-02-15 14:53:47', NULL),
(5, 'Logitech', 'manufacturer_logitech.gif', '2019-02-15 14:53:47', NULL),
(6, 'Canon', 'manufacturer_canon.gif', '2019-02-15 14:53:47', NULL),
(7, 'Sierra', 'manufacturer_sierra.gif', '2019-02-15 14:53:47', NULL),
(8, 'GT Interactive', 'manufacturer_gt_interactive.gif', '2019-02-15 14:53:47', NULL),
(9, 'Hewlett Packard', 'manufacturer_hewlett_packard.gif', '2019-02-15 14:53:47', NULL),
(10, 'Samsung', 'manufacturer_samsung.png', '2019-02-15 14:53:47', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `manufacturers_info`
--

INSERT INTO `manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `url_clicked`, `date_last_click`) VALUES
(1, 1, 'http://www.matrox.com', 0, NULL),
(1, 2, 'http://www.matrox.com', 1, '2019-04-28 07:19:30'),
(2, 1, 'http://www.microsoft.com', 0, NULL),
(2, 2, 'http://www.microsoft.com', 2, '2019-04-28 14:40:54'),
(3, 1, 'http://www.warner.com', 0, NULL),
(3, 2, 'http://www.warner.com', 1, '2019-02-24 12:47:47'),
(4, 1, 'http://www.fox.com', 0, NULL),
(4, 2, 'http://www.fox.com', 1, '2019-04-22 17:01:17'),
(5, 1, 'http://www.logitech.com', 0, NULL),
(5, 2, 'http://www.logitech.com', 0, NULL),
(6, 1, 'http://www.canon.com', 0, NULL),
(6, 2, 'http://www.canon.com', 0, NULL),
(7, 1, 'http://www.sierra.com', 0, NULL),
(7, 2, 'http://www.sierra.com', 1, '2019-04-28 13:33:46'),
(8, 1, 'http://www.infogrames.com', 0, NULL),
(8, 2, 'http://www.infogrames.com', 1, '2019-04-14 11:46:27'),
(9, 1, 'http://www.hewlettpackard.com', 0, NULL),
(9, 2, 'http://www.hewlettpackard.com', 0, NULL),
(10, 1, 'http://www.samsung.com', 0, NULL),
(10, 2, 'http://www.samsung.com', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) NOT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) NOT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`orders_id`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `customers_email_address`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_status`, `orders_date_finished`, `currency`, `currency_value`) VALUES
(1, 1, 'mic lee', '', 'm. jukova', '', 'odessa', '67114', 'Одесская область', 'Украина', '0682523312', 'kaizen@lis.ru', 1, 'mic lee', '', 'm. jukova', '', 'odessa', '67114', 'Одесская область', 'Украина', 1, 'mic lee', '', 'm. jukova', '', 'odessa', '67114', 'Одесская область', 'Украина', 1, 'Оплата наличными при получении ', '', '', '', '', NULL, '2019-02-15 16:59:54', 1, NULL, 'USD', '1.000000');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 2, 'MG400-32MB', 'Matrox G400 32MB', '499.9900', '489.9900', '0.0000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(1, 1, 1, 'Модель', 'Premium', '0.0000', '+'),
(2, 1, 1, 'Память', '16 mb', '10.0000', '-');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT '1',
  `downloads_flag` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(1, 2, 'Ожидает', 1, 0),
(2, 1, 'Processing', 1, 1),
(2, 2, 'Обрабатывается', 1, 1),
(3, 1, 'Delivered', 1, 1),
(3, 2, 'Доставляется', 1, 1),
(4, 1, 'PayPal [Transactions]', 0, 0),
(4, 2, 'PayPal [Транзакция]', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(1, 1, 1, '2019-02-15 16:59:54', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders_total`
--

INSERT INTO `orders_total` (`orders_total_id`, `orders_id`, `title`, `text`, `value`, `class`, `sort_order`) VALUES
(1, 1, 'Стоимость товара:', '$489.99', '489.9900', 'ot_subtotal', 1),
(2, 1, 'Российская почта (Бандероль):', '$5.00', '5.0000', 'ot_shipping', 2),
(3, 1, 'Всего:', '<strong>$494.99</strong>', '494.9900', 'ot_total', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(5,2) NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`) VALUES
(1, 32, 'MG200MMS', 'matrox/mg200mms.gif', '299.9900', '2019-02-15 14:53:48', NULL, NULL, '23.00', 1, 1, 1, 0),
(2, 31, 'MG400-32MB', 'matrox/mg400-32mb.gif', '499.9900', '2019-02-15 14:53:48', NULL, NULL, '23.00', 1, 1, 1, 1),
(3, 2, 'MSIMPRO', 'microsoft/msimpro.gif', '49.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(4, 13, 'DVD-RPMK', 'dvd/replacement_killers.gif', '42.0000', '2019-02-15 14:53:48', NULL, NULL, '23.00', 1, 1, 2, 0),
(5, 17, 'DVD-BLDRNDC', 'dvd/blade_runner.gif', '35.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(6, 10, 'DVD-MATR', 'dvd/the_matrix.gif', '39.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(7, 10, 'DVD-YGEM', 'dvd/youve_got_mail.gif', '34.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(8, 10, 'DVD-ABUG', 'dvd/a_bugs_life.gif', '35.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(9, 10, 'DVD-UNSG', 'dvd/under_siege.gif', '29.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(10, 10, 'DVD-UNSG2', 'dvd/under_siege2.gif', '29.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(11, 10, 'DVD-FDBL', 'dvd/fire_down_below.gif', '29.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(12, 10, 'DVD-DHWV', 'dvd/die_hard_3.gif', '39.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 4, 0),
(13, 10, 'DVD-LTWP', 'dvd/lethal_weapon.gif', '34.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(14, 10, 'DVD-REDC', 'dvd/red_corner.gif', '32.0000', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(15, 10, 'DVD-FRAN', 'dvd/frantic.gif', '35.0000', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(16, 10, 'DVD-CUFI', 'dvd/courage_under_fire.gif', '38.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 4, 0),
(17, 10, 'DVD-SPEED', 'dvd/speed.gif', '39.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 4, 0),
(18, 10, 'DVD-SPEED2', 'dvd/speed_2.gif', '42.0000', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 4, 0),
(19, 10, 'DVD-TSAB', 'dvd/theres_something_about_mary.gif', '49.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 4, 0),
(20, 10, 'DVD-BELOVED', 'dvd/beloved.gif', '54.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 3, 0),
(21, 16, 'PC-SWAT3', 'sierra/swat_3.gif', '79.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 7, 0),
(22, 13, 'PC-UNTM', 'gt_interactive/unreal_tournament.gif', '89.9900', '2019-02-15 14:53:48', NULL, NULL, '7.00', 1, 1, 8, 0),
(23, 16, 'PC-TWOF', 'gt_interactive/wheel_of_time.gif', '99.9900', '2019-02-15 14:53:48', NULL, NULL, '10.00', 1, 1, 8, 0),
(24, 17, 'PC-DISC', 'gt_interactive/disciples.gif', '90.0000', '2019-02-15 14:53:48', NULL, NULL, '8.00', 1, 1, 8, 0),
(25, 16, 'MSINTKB', 'microsoft/intkeyboardps2.gif', '69.9900', '2019-02-15 14:53:48', NULL, NULL, '8.00', 1, 1, 2, 0),
(26, 10, 'MSIMEXP', 'microsoft/imexplorer.gif', '64.9500', '2019-02-15 14:53:48', NULL, NULL, '8.00', 1, 1, 2, 0),
(27, 8, 'HPLJ1100XI', 'hewlett_packard/lj1100xi.gif', '499.9900', '2019-02-15 14:53:48', NULL, NULL, '45.00', 1, 1, 9, 0),
(28, 100, 'GT-P1000', 'samsung/galaxy_tab.gif', '749.9900', '2019-02-15 14:53:48', NULL, NULL, '1.00', 1, 1, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`) VALUES
(1, 1, 4, 1, '0.0000', '+'),
(2, 1, 4, 2, '50.0000', '+'),
(3, 1, 4, 3, '70.0000', '+'),
(4, 1, 3, 5, '0.0000', '+'),
(5, 1, 3, 6, '100.0000', '+'),
(6, 2, 4, 3, '10.0000', '-'),
(7, 2, 4, 4, '0.0000', '+'),
(8, 2, 3, 6, '0.0000', '+'),
(9, 2, 3, 7, '120.0000', '+'),
(10, 26, 3, 8, '0.0000', '+'),
(11, 26, 3, 9, '6.0000', '+'),
(26, 22, 5, 10, '0.0000', '+'),
(27, 22, 5, 13, '0.0000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_attributes_download`
--

INSERT INTO `products_attributes_download` (`products_attributes_id`, `products_attributes_filename`, `products_attributes_maxdays`, `products_attributes_maxcount`) VALUES
(26, 'unreal.zip', 7, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `products_description`
--

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(1, 1, 'Matrox G200 MMS', 'Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br /><br />With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br /><br />Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters &amp; Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.', 'www.matrox.com/mga/products/g200_mms/home.cfm', 1),
(1, 2, 'Matrox G200 MMS', 'Reinforcing its position as a multi-monitor trailblazer, Matrox Graphics Inc. has once again developed the most flexible and highly advanced solution in the industry. Introducing the new Matrox G200 Multi-Monitor Series; the first graphics card ever to support up to four DVI digital flat panel displays on a single 8&quot; PCI board.<br /><br />With continuing demand for digital flat panels in the financial workplace, the Matrox G200 MMS is the ultimate in flexible solutions. The Matrox G200 MMS also supports the new digital video interface (DVI) created by the Digital Display Working Group (DDWG) designed to ease the adoption of digital flat panels. Other configurations include composite video capture ability and onboard TV tuner, making the Matrox G200 MMS the complete solution for business needs.<br /><br />Based on the award-winning MGA-G200 graphics chip, the Matrox G200 Multi-Monitor Series provides superior 2D/3D graphics acceleration to meet the demanding needs of business applications such as real-time stock quotes (Versus), live video feeds (Reuters &amp; Bloombergs), multiple windows applications, word processing, spreadsheets and CAD.', 'www.matrox.com/mga/products/g200_mms/home.cfm', 12),
(2, 1, 'Matrox G400 32MB', '<strong>Dramatically Different High Performance Graphics</strong><br /><br />Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry\'s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC\'s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br /><br /><strong>Key features:</strong><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>', 'www.matrox.com/mga/products/mill_g400/home.htm', 2),
(2, 2, 'Matrox G400 32MB', '<strong>Dramatically Different High Performance Graphics</strong><br /><br />Introducing the Millennium G400 Series - a dramatically different, high performance graphics experience. Armed with the industry\'s fastest graphics chip, the Millennium G400 Series takes explosive acceleration two steps further by adding unprecedented image quality, along with the most versatile display options for all your 3D, 2D and DVD applications. As the most powerful and innovative tools in your PC\'s arsenal, the Millennium G400 Series will not only change the way you see graphics, but will revolutionize the way you use your computer.<br /><br /><strong>Key features:</strong><ul><li>New Matrox G400 256-bit DualBus graphics chip</li><li>Explosive 3D, 2D and DVD performance</li><li>DualHead Display</li><li>Superior DVD and TV output</li><li>3D Environment-Mapped Bump Mapping</li><li>Vibrant Color Quality rendering </li><li>UltraSharp DAC of up to 360 MHz</li><li>3D Rendering Array Processor</li><li>Support for 16 or 32 MB of memory</li></ul>', 'www.matrox.com/mga/products/mill_g400/home.htm', 11),
(3, 1, 'Microsoft IntelliMouse Pro', 'Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft\'s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.', 'www.microsoft.com/hardware/mouse/intellimouse.asp', 0),
(3, 2, 'Microsoft IntelliMouse Pro', 'Every element of IntelliMouse Pro - from its unique arched shape to the texture of the rubber grip around its base - is the product of extensive customer and ergonomic research. Microsoft\'s popular wheel control, which now allows zooming and universal scrolling functions, gives IntelliMouse Pro outstanding comfort and efficiency.', 'www.microsoft.com/hardware/mouse/intellimouse.asp', 3),
(4, 1, 'The Replacement Killers', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 80 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.replacement-killers.com', 1),
(4, 2, 'The Replacement Killers', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 80 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.replacement-killers.com', 3),
(5, 1, 'Blade Runner - Director\'s Cut', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 112 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.bladerunner.com', 1),
(5, 2, 'Blade Runner - Director\'s Cut', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br />Languages: English, Deutsch.<br />Subtitles: English, Deutsch, Spanish.<br />Audio: Dolby Surround 5.1.<br />Picture Format: 16:9 Wide-Screen.<br />Length: (approx) 112 minutes.<br />Other: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.bladerunner.com', 5),
(6, 1, 'The Matrix', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch.\r<br />\nAudio: Dolby Surround.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 131 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Making Of.', 'www.thematrix.com', 0),
(6, 2, 'The Matrix', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch.\r<br />\nAudio: Dolby Surround.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 131 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Making Of.', 'www.thematrix.com', 5),
(7, 1, 'You\'ve Got Mail', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch, Spanish.\r<br />\nSubtitles: English, Deutsch, Spanish, French, Nordic, Polish.\r<br />\nAudio: Dolby Digital 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.youvegotmail.com', 0),
(7, 2, 'You\'ve Got Mail', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch, Spanish.\r<br />\nSubtitles: English, Deutsch, Spanish, French, Nordic, Polish.\r<br />\nAudio: Dolby Digital 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.youvegotmail.com', 5),
(8, 1, 'A Bug\'s Life', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Digital 5.1 / Dobly Surround Stereo.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 91 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.abugslife.com', 1),
(8, 2, 'A Bug\'s Life', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Digital 5.1 / Dobly Surround Stereo.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 91 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', 'www.abugslife.com', 3),
(9, 1, 'Under Siege', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(9, 2, 'Under Siege', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 4),
(10, 1, 'Under Siege 2 - Dark Territory', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(10, 2, 'Under Siege 2 - Dark Territory', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 98 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 4),
(11, 1, 'Fire Down Below', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(11, 2, 'Fire Down Below', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 4),
(12, 1, 'Die Hard With A Vengeance', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 122 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(12, 2, 'Die Hard With A Vengeance', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 122 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 4),
(13, 1, 'Lethal Weapon', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(13, 2, 'Lethal Weapon', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 100 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 4),
(14, 1, 'Red Corner', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 117 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(14, 2, 'Red Corner', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 117 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 5),
(15, 1, 'Frantic', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(15, 2, 'Frantic', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 115 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 3),
(16, 1, 'Courage Under Fire', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 0),
(16, 2, 'Courage Under Fire', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 8),
(17, 1, 'Speed', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(17, 2, 'Speed', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 112 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 4),
(18, 1, 'Speed 2: Cruise Control', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 120 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(18, 2, 'Speed 2: Cruise Control', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 120 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 5),
(19, 1, 'There\'s Something About Mary', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 114 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(19, 2, 'There\'s Something About Mary', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 114 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 7),
(20, 1, 'Beloved', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 164 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 1),
(20, 2, 'Beloved', 'Regional Code: 2 (Japan, Europe, Middle East, South Africa).\r<br />\nLanguages: English, Deutsch.\r<br />\nSubtitles: English, Deutsch, Spanish.\r<br />\nAudio: Dolby Surround 5.1.\r<br />\nPicture Format: 16:9 Wide-Screen.\r<br />\nLength: (approx) 164 minutes.\r<br />\nOther: Interactive Menus, Chapter Selection, Subtitles (more languages).', '', 3),
(21, 1, 'SWAT 3: Close Quarters Battle', '<strong>Windows 95/98</strong><br /><br />211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and \"When needed\" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!', 'www.swat3.com', 1),
(21, 2, 'SWAT 3: Close Quarters Battle', '<strong>Windows 95/98</strong><br /><br />211 in progress with shots fired. Officer down. Armed suspects with hostages. Respond Code 3! Los Angles, 2005, In the next seven days, representatives from every nation around the world will converge on Las Angles to witness the signing of the United Nations Nuclear Abolishment Treaty. The protection of these dignitaries falls on the shoulders of one organization, LAPD SWAT. As part of this elite tactical organization, you and your team have the weapons and all the training necessary to protect, to serve, and \"When needed\" to use deadly force to keep the peace. It takes more than weapons to make it through each mission. Your arsenal includes C2 charges, flashbangs, tactical grenades. opti-Wand mini-video cameras, and other devices critical to meeting your objectives and keeping your men free of injury. Uncompromised Duty, Honor and Valor!', 'www.swat3.com', 4),
(22, 1, 'Unreal Tournament', 'From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br /><br />This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It\'s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of \'bots\' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.', 'www.unrealtournament.net', 1),
(22, 2, 'Unreal Tournament', 'From the creators of the best-selling Unreal, comes Unreal Tournament. A new kind of single player experience. A ruthless multiplayer revolution.<br /><br />This stand-alone game showcases completely new team-based gameplay, groundbreaking multi-faceted single player action or dynamic multi-player mayhem. It\'s a fight to the finish for the title of Unreal Grand Master in the gladiatorial arena. A single player experience like no other! Guide your team of \'bots\' (virtual teamates) against the hardest criminals in the galaxy for the ultimate title - the Unreal Grand Master.', 'www.unrealtournament.net', 5),
(23, 1, 'The Wheel Of Time', 'The world in which The Wheel of Time takes place is lifted directly out of Jordan\'s pages; it\'s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you\'re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter\'angreal, Portal Stones, and the Ways. However you move around, though, you\'ll quickly discover that means of locomotion can easily become the least of the your worries...<br /><br />During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time\'s main characters. Some of these places are ripped directly from the pages of Jordan\'s books, made flesh with Legend\'s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you\'ll have this year.', 'www.wheeloftime.com', 0),
(23, 2, 'The Wheel Of Time', 'The world in which The Wheel of Time takes place is lifted directly out of Jordan\'s pages; it\'s huge and consists of many different environments. How you navigate the world will depend largely on which game - single player or multipayer - you\'re playing. The single player experience, with a few exceptions, will see Elayna traversing the world mainly by foot (with a couple notable exceptions). In the multiplayer experience, your character will have more access to travel via Ter\'angreal, Portal Stones, and the Ways. However you move around, though, you\'ll quickly discover that means of locomotion can easily become the least of the your worries...<br /><br />During your travels, you quickly discover that four locations are crucial to your success in the game. Not surprisingly, these locations are the homes of The Wheel of Time\'s main characters. Some of these places are ripped directly from the pages of Jordan\'s books, made flesh with Legend\'s unparalleled pixel-pushing ways. Other places are specific to the game, conceived and executed with the intent of expanding this game world even further. Either way, they provide a backdrop for some of the most intense first person action and strategy you\'ll have this year.', 'www.wheeloftime.com', 4),
(24, 1, 'Disciples: Sacred Lands', 'A new age is dawning...<br /><br />Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br /><br />The day of reckoning has come... and only the chosen will survive.', '', 1),
(24, 2, 'Disciples: Sacred Lands', 'A new age is dawning...<br /><br />Enter the realm of the Sacred Lands, where the dawn of a New Age has set in motion the most momentous of wars. As the prophecies long foretold, four races now clash with swords and sorcery in a desperate bid to control the destiny of their gods. Take on the quest as a champion of the Empire, the Mountain Clans, the Legions of the Damned, or the Undead Hordes and test your faith in battles of brute force, spellbinding magic and acts of guile. Slay demons, vanquish giants and combat merciless forces of the dead and undead. But to ensure the salvation of your god, the hero within must evolve.<br /><br />The day of reckoning has come... and only the chosen will survive.', '', 5),
(25, 1, 'Microsoft Internet Keyboard PS/2', 'The Internet Keyboard has 10 Hot Keys on a comfortable standard keyboard design that also includes a detachable palm rest. The Hot Keys allow you to browse the web, or check e-mail directly from your keyboard. The IntelliType Pro software also allows you to customize your hot keys - make the Internet Keyboard work the way you want it to!', '', 1),
(25, 2, 'Microsoft Internet Keyboard PS/2', 'The Internet Keyboard has 10 Hot Keys on a comfortable standard keyboard design that also includes a detachable palm rest. The Hot Keys allow you to browse the web, or check e-mail directly from your keyboard. The IntelliType Pro software also allows you to customize your hot keys - make the Internet Keyboard work the way you want it to!', '', 5),
(26, 1, 'Microsoft IntelliMouse Explorer', 'Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!', 'www.microsoft.com/hardware/mouse/explorer.asp', 2),
(26, 2, 'Microsoft IntelliMouse Explorer', 'Microsoft introduces its most advanced mouse, the IntelliMouse Explorer! IntelliMouse Explorer features a sleek design, an industrial-silver finish, a glowing red underside and taillight, creating a style and look unlike any other mouse. IntelliMouse Explorer combines the accuracy and reliability of Microsoft IntelliEye optical tracking technology, the convenience of two new customizable function buttons, the efficiency of the scrolling wheel and the comfort of expert ergonomic design. All these great features make this the best mouse for the PC!', 'www.microsoft.com/hardware/mouse/explorer.asp', 16),
(27, 1, 'Hewlett Packard LaserJet 1100Xi', 'HP has always set the pace in laser printing technology. The new generation HP LaserJet 1100 series sets another impressive pace, delivering a stunning 8 pages per minute print speed. The 600 dpi print resolution with HP\'s Resolution Enhancement technology (REt) makes every document more professional.<br /><br />Enhanced print speed and laser quality results are just the beginning. With 2MB standard memory, HP LaserJet 1100xi users will be able to print increasingly complex pages. Memory can be increased to 18MB to tackle even more complex documents with ease. The HP LaserJet 1100xi supports key operating systems including Windows 3.1, 3.11, 95, 98, NT 4.0, OS/2 and DOS. Network compatibility available via the optional HP JetDirect External Print Servers.<br /><br />HP LaserJet 1100xi also features The Document Builder for the Web Era from Trellix Corp. (featuring software to create Web documents).', 'www.pandi.hp.com/pandi-db/prodinfo.main?product=laserjet1100', 0),
(27, 2, 'Hewlett Packard LaserJet 1100Xi', 'HP has always set the pace in laser printing technology. The new generation HP LaserJet 1100 series sets another impressive pace, delivering a stunning 8 pages per minute print speed. The 600 dpi print resolution with HP\'s Resolution Enhancement technology (REt) makes every document more professional.<br /><br />Enhanced print speed and laser quality results are just the beginning. With 2MB standard memory, HP LaserJet 1100xi users will be able to print increasingly complex pages. Memory can be increased to 18MB to tackle even more complex documents with ease. The HP LaserJet 1100xi supports key operating systems including Windows 3.1, 3.11, 95, 98, NT 4.0, OS/2 and DOS. Network compatibility available via the optional HP JetDirect External Print Servers.<br /><br />HP LaserJet 1100xi also features The Document Builder for the Web Era from Trellix Corp. (featuring software to create Web documents).', 'www.pandi.hp.com/pandi-db/prodinfo.main?product=laserjet1100', 6),
(28, 1, 'Samsung Galaxy Tab', '<p>Powered by a Cortex A8 1.0GHz application processor, the Samsung GALAXY Tab is designed to deliver high performance whenever and wherever you are. At the same time, HD video contents are supported by a wide range of multimedia formats (DivX, XviD, MPEG4, H.263, H.264 and more), which maximizes the joy of entertainment.</p><p>With 3G HSPA connectivity, 802.11n Wi-Fi, and Bluetooth 3.0, the Samsung GALAXY Tab enhances users\' mobile communication on a whole new level. Video conferencing and push email on the large 7-inch display make communication more smooth and efficient. For voice telephony, the Samsung GALAXY Tab turns out to be a perfect speakerphone on the desk, or a mobile phone on the move via Bluetooth headset.</p>', 'http://galaxytab.samsungmobile.com', 1),
(28, 2, 'Samsung Galaxy Tab', '<p>Powered by a Cortex A8 1.0GHz application processor, the Samsung GALAXY Tab is designed to deliver high performance whenever and wherever you are. At the same time, HD video contents are supported by a wide range of multimedia formats (DivX, XviD, MPEG4, H.263, H.264 and more), which maximizes the joy of entertainment.</p><p>With 3G HSPA connectivity, 802.11n Wi-Fi, and Bluetooth 3.0, the Samsung GALAXY Tab enhances users\' mobile communication on a whole new level. Video conferencing and push email on the large 7-inch display make communication more smooth and efficient. For voice telephony, the Samsung GALAXY Tab turns out to be a perfect speakerphone on the desk, or a mobile phone on the move via Bluetooth headset.</p>', 'http://galaxytab.samsungmobile.com', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 28, 'samsung/galaxy_tab_1.jpg', NULL, 1),
(2, 28, 'samsung/galaxy_tab_2.jpg', NULL, 2),
(3, 28, 'samsung/galaxy_tab_3.jpg', NULL, 3),
(4, 28, 'samsung/galaxy_tab_4.jpg', '<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/tAbsmHMAhrQ\" frameborder=\"0\" allowfullscreen></iframe>', 4),
(5, 17, 'dvd/speed_large.jpg', NULL, 1),
(6, 12, 'dvd/die_hard_3_large.jpg', NULL, 1),
(7, 11, 'dvd/fire_down_below_large.jpg', NULL, 1),
(8, 13, 'dvd/lethal_weapon_large.jpg', NULL, 1),
(9, 18, 'dvd/speed_2_large.jpg', NULL, 1),
(10, 6, 'dvd/the_matrix_large.jpg', NULL, 1),
(11, 4, 'dvd/replacement_killers_large.jpg', NULL, 1),
(12, 9, 'dvd/under_siege_large.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `language_id`, `products_options_name`) VALUES
(1, 1, 'Color'),
(1, 2, 'Цвет'),
(2, 1, 'Size'),
(2, 2, 'Размер'),
(3, 1, 'Model'),
(3, 2, 'Модель'),
(4, 1, 'Memory'),
(4, 2, 'Память'),
(5, 1, 'Version'),
(5, 2, 'Версия');

-- --------------------------------------------------------

--
-- Структура таблицы `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`) VALUES
(1, 1, '4 mb'),
(1, 2, '4 mb'),
(2, 1, '8 mb'),
(2, 2, '8 mb'),
(3, 1, '16 mb'),
(3, 2, '16 mb'),
(4, 1, '32 mb'),
(4, 2, '32 mb'),
(5, 1, 'Value'),
(5, 2, 'Value'),
(6, 1, 'Premium'),
(6, 2, 'Premium'),
(7, 1, 'Deluxe'),
(7, 2, 'Deluxe'),
(8, 1, 'PS/2'),
(8, 2, 'PS/2'),
(9, 1, 'USB'),
(9, 2, 'USB'),
(10, 1, 'Download: Windows - English'),
(10, 2, 'Download: Windows - English'),
(13, 1, 'Box: Windows - English'),
(13, 2, 'Box: Windows - English');

-- --------------------------------------------------------

--
-- Структура таблицы `products_options_values_to_products_options`
--

CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_options_values_to_products_options`
--

INSERT INTO `products_options_values_to_products_options` (`products_options_values_to_products_options_id`, `products_options_id`, `products_options_values_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 3),
(4, 4, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 5, 10),
(13, 5, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(1, 4),
(2, 4),
(3, 9),
(4, 10),
(5, 11),
(6, 10),
(7, 12),
(8, 13),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 15),
(15, 14),
(16, 15),
(17, 10),
(18, 10),
(19, 12),
(20, 15),
(21, 18),
(22, 19),
(23, 20),
(24, 20),
(25, 8),
(26, 9),
(27, 5),
(28, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `date_added`, `last_modified`, `reviews_status`, `reviews_read`) VALUES
(1, 19, 0, 'John Doe', 5, '2019-02-15 14:53:49', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews_description`
--

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reviews_description`
--

INSERT INTO `reviews_description` (`reviews_id`, `languages_id`, `reviews_text`) VALUES
(1, 1, 'This has to be one of the funniest movies released for 1999!');

-- --------------------------------------------------------

--
-- Структура таблицы `sec_directory_whitelist`
--

CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sec_directory_whitelist`
--

INSERT INTO `sec_directory_whitelist` (`id`, `directory`) VALUES
(1, 'admin/backups'),
(2, 'admin/images/graphs'),
(3, 'images'),
(4, 'images/banners'),
(5, 'images/dvd'),
(6, 'images/gt_interactive'),
(7, 'images/hewlett_packard'),
(8, 'images/matrox'),
(9, 'images/microsoft'),
(10, 'images/samsung'),
(11, 'images/sierra'),
(12, 'includes/work'),
(13, 'pub');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`sesskey`, `expiry`, `value`) VALUES
('0i6vvg6ksbdc67gi3gnbar7kl7', 1556465227, 'sessiontoken|s:32:\"c1be39323969bb61d11137dc879d31dc\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"12\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"0i6vvg6ksbdc67gi3gnbar7kl7\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"12\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('1742l6e7eiadrb06pv34a416e0', 1557018581, 'sessiontoken|s:32:\"8c3442e018f0aa5f899d2f0dae19f064\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:5:\"cPath\";s:3:\"1_9\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('18tvgqebepf3l5k6i0vgo885l5', 1556996853, 'sessiontoken|s:32:\"487483394dee506b1f600bcddc4dccbe\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"23\";s:8:\"language\";s:2:\"ru\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('1eqlb2qodbs79ufa3f6h1lcdn4', 1556985481, 'sessiontoken|s:32:\"4d368aafeb69206f5b170cc31c7a0cf3\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:24;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:90;s:6:\"weight\";d:8;s:6:\"cartID\";s:5:\"54845\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:5:\"cPath\";s:4:\"2_20\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"24\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"1eqlb2qodbs79ufa3f6h1lcdn4\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('1v0otduf3fkrdm7odilt86e442', 1556464640, 'sessiontoken|s:32:\"4955785744b149ab4eb6a71651d7d293\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:16:\"manufacturers_id\";s:1:\"3\";s:11:\"products_id\";s:1:\"5\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('27pe11k0pqkcv4bt46fnibhcb4', 1556464260, 'sessiontoken|s:32:\"1422168b44c87489902f6d88c19b42dc\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"26\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('2bdg1bgtqua0st57blhch82ui3', 1556469310, 'sessiontoken|s:32:\"8576ee4c12be64cc6425eee6b64097f9\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:20;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:54.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"38056\";s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"en\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"20\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"en\";s:6:\"osCsid\";s:26:\"2bdg1bgtqua0st57blhch82ui3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('33aqhbqtk93mu1pr73b8pk44b1', 1556469296, 'sessiontoken|s:32:\"d83d3db9698fa78d35ce8fb4563a1713\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:27;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:499.99000000000001;s:6:\"weight\";d:45;s:6:\"cartID\";s:5:\"50018\";s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"en\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"27\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"en\";s:6:\"osCsid\";s:26:\"33aqhbqtk93mu1pr73b8pk44b1\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('35gf170t7f3qp1t7gcpe0d31q3', 1556996873, 'sessiontoken|s:32:\"261b8fe9aa2836c4c08a1794262d0b46\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:11;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:29.989999999999998;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"71644\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"11\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"35gf170t7f3qp1t7gcpe0d31q3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('38pra1cb1v9d06apak08ial090', 1556464753, 'sessiontoken|s:32:\"8d9ad0fc1133e384dae9ccbc23a02c1c\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:5:\"cPath\";s:4:\"3_15\";s:4:\"page\";s:1:\"1\";s:4:\"sort\";s:2:\"2d\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('3fmtre4fa55mkp6pjp639931p5', 1556465120, 'sessiontoken|s:32:\"28148262bae1e88cf8a68acd4454e1f6\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:1:\"2\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('46e3j27mdskc5obo92vpmr84d2', 1556996858, 'sessiontoken|s:32:\"a69a2cd8623376bcc297efb0c82bdebf\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:7;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:34.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"18838\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:4:\"page\";s:1:\"3\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:1:\"7\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:1:\"3\";s:6:\"osCsid\";s:26:\"46e3j27mdskc5obo92vpmr84d2\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('46eo7933267jn5hfara2v4ubl0', 1557013748, 'sessiontoken|s:32:\"7514b3cf4018fd01b0961f77e8f1b7a4\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:6;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:30;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"43589\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:4:\"page\";s:1:\"3\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:1:\"6\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:1:\"3\";s:6:\"osCsid\";s:26:\"46eo7933267jn5hfara2v4ubl0\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('510c89mupuigg77g44fql3p2u4', 1557007904, 'sessiontoken|s:32:\"4d553a943bae67f5cc5d0a0d81838619\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:3:\"1_4\";s:11:\"products_id\";s:1:\"1\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('5oi76e339ubelg1vnjuu0rsrp3', 1556996774, 'sessiontoken|s:32:\"39278d6034ff306b5c4b8003e3648304\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:1:\"2\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('60hvfosb91hsfg29h7eumfglv0', 1556996777, 'sessiontoken|s:32:\"df5be5441d880268a3021833bf5d9cc8\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"7\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('6cvgd21pr1o2n6vodvdcqn8ip2', 1557013775, 'sessiontoken|s:32:\"afa8303883bd78989dabcd3287d1e329\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:21;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:79.989999999999995;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"16244\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:4:\"page\";s:1:\"2\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"21\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:1:\"2\";s:6:\"osCsid\";s:26:\"6cvgd21pr1o2n6vodvdcqn8ip2\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('6ecdkmvvii8akhr7cmlbam1r63', 1556465092, 'sessiontoken|s:32:\"e0bd892ee1f888393523525237d8fb7d\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"20\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"6ecdkmvvii8akhr7cmlbam1r63\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"20\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('6oma9am88utmkl7pj1i1ur35n4', 1556996882, 'sessiontoken|s:32:\"8889427c02271871b07cf2346aa83a61\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"24\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"6oma9am88utmkl7pj1i1ur35n4\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"24\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('6ug72t2cdnoag5pjr1b270cgl6', 1556996692, 'sessiontoken|s:32:\"9b9bc1123c9a105990dd568519c62166\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:1:\"2\";s:8:\"language\";s:2:\"ru\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('71eust14e8j870h13kqt78ts15', 1556996842, 'sessiontoken|s:32:\"94c3a72038b4d6b332563c7cdab584fd\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"24\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"71eust14e8j870h13kqt78ts15\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"24\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('7hbnpnk3raosvdp2ad93btii83', 1556463912, 'sessiontoken|s:32:\"02887999e60307c492373a34352e3043\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:1:\"8\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('808td11n93iu91j8vf2qefvug3', 1556469297, 'sessiontoken|s:32:\"adb7a830f9fbc0548a63034c2130b395\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:24;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:90;s:6:\"weight\";d:8;s:6:\"cartID\";s:5:\"40295\";s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"en\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"24\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"en\";s:6:\"osCsid\";s:26:\"808td11n93iu91j8vf2qefvug3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('86e7rmvn055rq78r1gka4h7e77', 1556996885, 'sessiontoken|s:32:\"898d3a43398f90d7667a0baf067ae482\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:24;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:90;s:6:\"weight\";d:8;s:6:\"cartID\";s:5:\"58366\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"8\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"24\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"8\";s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"86e7rmvn055rq78r1gka4h7e77\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('8jm1t5oq1cnnaqhrjjgeo8d7o2', 1556465173, 'sessiontoken|s:32:\"6949a5a845164d5c6465fefe13f75d64\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:4:\"1_17\";s:8:\"language\";s:2:\"ru\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('99995bof5fu2gr0upopa0p4jo6', 1556537677, 'sessiontoken|s:32:\"d3cc035b33eeb2ceca22b6d513879ed4\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"28\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('9d41hlliphcefkqtio2kt74nc0', 1556996850, 'sessiontoken|s:32:\"35be040f28b330b9263b68cf9774f0f4\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:21;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:79.989999999999995;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"42819\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:5:\"cPath\";s:4:\"2_18\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"21\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"9d41hlliphcefkqtio2kt74nc0\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('a03fjal2slpra489p9p58hsff7', 1556465001, 'sessiontoken|s:32:\"1eadec3ce9dda80eda59a50f48624ef2\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"21\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"a03fjal2slpra489p9p58hsff7\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"21\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('a5j9ofbir9971gendlo7psi576', 1556465165, 'sessiontoken|s:32:\"fb3f1c0153f0a620888f147bb7b498b7\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:15;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:35;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"50356\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"15\";s:6:\"action\";s:7:\"buy_now\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"a5j9ofbir9971gendlo7psi576\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('aaa0eh85i121mbjsr0200l8b42', 1556464528, 'sessiontoken|s:32:\"cfbbcb29ce23173b1f0f12e7b0b2c946\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:24;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:90;s:6:\"weight\";d:8;s:6:\"cartID\";s:5:\"06677\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"ru\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"24\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"ru\";s:6:\"osCsid\";s:26:\"aaa0eh85i121mbjsr0200l8b42\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('adfhnf4gqj4f05kbdmnem6r103', 1556996865, 'sessiontoken|s:32:\"d92b9e42ebfc7391ddca2b3a0af928df\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:25:\"product_reviews_write.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"13\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"adfhnf4gqj4f05kbdmnem6r103\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:25:\"product_reviews_write.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"13\";}s:4:\"post\";a:0:{}}}'),
('ar541822fp4nbiusrv2jn7mv04', 1556996812, 'sessiontoken|s:32:\"31795833e973245cb10ef05dc68d17aa\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"28\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"ar541822fp4nbiusrv2jn7mv04\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"28\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('aun6gc5cgelas910oti4n2n801', 1556465260, 'sessiontoken|s:32:\"7c2ff0b83d530468352573f35b84fd0f\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"25\";s:8:\"language\";s:2:\"ru\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('bngq7hbgp4e7aksp5uts5123c2', 1556469393, 'sessiontoken|s:32:\"31d600ebdf1fa30a3ae2b9b8d81adde8\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:15;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:35;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"45262\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"3\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"15\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"3\";s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"bngq7hbgp4e7aksp5uts5123c2\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('cish2je5fqe9icngm3c78kq0s5', 1556996794, 'sessiontoken|s:32:\"db6ec91babe60d6c5d8ee5965aaaf63c\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:25:\"product_reviews_write.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"18\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"cish2je5fqe9icngm3c78kq0s5\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:25:\"product_reviews_write.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"18\";}s:4:\"post\";a:0:{}}}'),
('classcnvnjn9cbgrvhis0ov403', 1556465250, 'sessiontoken|s:32:\"3760fbfea38c2d6350d6d077a9053728\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"3\";s:4:\"page\";s:1:\"1\";s:4:\"sort\";s:2:\"3a\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('dmk4jg099qq0knh2f524dvlio3', 1556464843, 'sessiontoken|s:32:\"853c9c70590b366387f13872f6a12acb\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:4:\"page\";s:1:\"2\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:1:\"1\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"1\";s:6:\"osCsid\";s:26:\"dmk4jg099qq0knh2f524dvlio3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('en5rup590ks1igvt856l2p3ah3', 1556464885, 'sessiontoken|s:32:\"df35a43dcaf99dc929d75e6ae780095e\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:4:\"page\";s:1:\"2\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:1:\"2\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"2\";s:6:\"osCsid\";s:26:\"en5rup590ks1igvt856l2p3ah3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('epjjj2el8nug1hfshe724g3t05', 1556996855, 'sessiontoken|s:32:\"165b91a8ce4af3041a0192dd357b5d69\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:3;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:39.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"68030\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"3\";s:6:\"action\";s:7:\"buy_now\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"epjjj2el8nug1hfshe724g3t05\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('evb7dok64ovhv94j9t13o7irt4', 1556464280, 'sessiontoken|s:32:\"5dd25d932e7dba18cdcbfd32dbe5b2fe\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"9\";s:4:\"page\";s:1:\"1\";s:4:\"sort\";s:2:\"2d\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('f3h41dt656s2j857sp1fomi2m5', 1556465116, 'sessiontoken|s:32:\"21367b5bb76bd9dc20754bb8fe2f8edd\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:16:\"manufacturers_id\";s:1:\"1\";s:8:\"language\";s:2:\"ru\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('f6c2f73rl9faaovripgqnctsv3', 1556996876, 'sessiontoken|s:32:\"f844699909b28a4f26cc79e057862682\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:7;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:34.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"54959\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:5:\"cPath\";s:4:\"3_12\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:1:\"7\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"f6c2f73rl9faaovripgqnctsv3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('fl1550ev9p2pq7abkcln6ou8e4', 1556464856, 'sessiontoken|s:32:\"138547069d9b4bab907660cc1b1afc91\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:5:\"cPath\";s:4:\"3_13\";s:4:\"page\";s:1:\"1\";s:4:\"sort\";s:2:\"2d\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('fttsvafi9nqehguncisj10kci5', 1557013618, 'sessiontoken|s:32:\"139749f62f49fb753a26875b3c807206\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:4:\"3_14\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('g41vjhmmtsvbnbb4llclummfs1', 1556469299, 'sessiontoken|s:32:\"2b3e7b4c01ba0b07c34da0aa6db75240\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:17:\"tell_a_friend.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"23\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"g41vjhmmtsvbnbb4llclummfs1\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:17:\"tell_a_friend.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"23\";}s:4:\"post\";a:0:{}}}'),
('gaal6llagan1rike90ibhs8v86', 1556996844, 'sessiontoken|s:32:\"40bcdce1d97a9e78e2fe893b97969892\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:10;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:29.989999999999998;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"48794\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"3\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"10\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"3\";s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"gaal6llagan1rike90ibhs8v86\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('gl69qpjtk3d07m2819k2ffio07', 1556996857, 'sessiontoken|s:32:\"464ec792dc88e1cc50c2afb6e2721f17\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"2\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"26\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"26\";s:6:\"osCsid\";s:26:\"gl69qpjtk3d07m2819k2ffio07\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('gn7moc65nrbe9smpihvpm00p41', 1556464741, 'sessiontoken|s:32:\"15065069a7c8a810e82bc9f094743bf6\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:4:\"3_13\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('h735qigtee43sadomhvq0igkp6', 1556464853, 'sessiontoken|s:32:\"8399d289bb0075d79fb8c5aa1725632a\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"3\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"h735qigtee43sadomhvq0igkp6\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"3\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('h9gaek00pa6e6msklopncjbic2', 1556464073, 'sessiontoken|s:32:\"7fbfadfb0f8e1ae4d4d80896287ed7c0\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"3\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"h9gaek00pa6e6msklopncjbic2\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"3\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('hqi3ivbeucio2gosf8ea957ki5', 1556469245, 'sessiontoken|s:32:\"bdab9e72f990451f52bc083a15946edc\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:25:\"product_reviews_write.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"14\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"hqi3ivbeucio2gosf8ea957ki5\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:25:\"product_reviews_write.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"14\";}s:4:\"post\";a:0:{}}}'),
('hqo2r8btq0rl3v62khh7nsvnf2', 1556465266, 'sessiontoken|s:32:\"72a9f2ef642dbcb8da6b21101aed7e76\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"2\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"hqo2r8btq0rl3v62khh7nsvnf2\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"2\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('i0udbj2dap9nl6rrfo66uubg34', 1556996768, 'sessiontoken|s:32:\"30fe2abfd5d5253388fc653e492b12a8\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"28\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('igmka7iedrc41gulnpafg73je4', 1556518152, 'sessiontoken|s:32:\"1d2552aefab95bf07a4c419e2159a78d\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"27\";s:8:\"language\";s:2:\"ru\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('irlm7ocp7g4vvtlljav93lj324', 1556543860, 'sessiontoken|s:32:\"5db15eb0f53a72189a6e8b6b272a4bbc\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"ru\";s:4:\"page\";s:1:\"1\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('j16qotq4ls5bsose8tpjm1k4d4', 1556469406, 'sessiontoken|s:32:\"2bb540bc0bc3565f7c209bbbb6afa94d\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:17:\"tell_a_friend.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"28\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"j16qotq4ls5bsose8tpjm1k4d4\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:17:\"tell_a_friend.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"28\";}s:4:\"post\";a:0:{}}}'),
('j48e809avtvffpordscj25lqd6', 1556463862, 'sessiontoken|s:32:\"1f73995f57f7dc5ea9cf8a3da054d4d4\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:4:\"2_20\";s:11:\"products_id\";s:2:\"23\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('jplbhs4r7mnrp7ve2d1utjvmd3', 1556996860, 'sessiontoken|s:32:\"40d642b04616e8b3b0633f69c14e2f29\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:27;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:499.99000000000001;s:6:\"weight\";d:45;s:6:\"cartID\";s:5:\"21684\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"ru\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"27\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"ru\";s:6:\"osCsid\";s:26:\"jplbhs4r7mnrp7ve2d1utjvmd3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('jtb1t33tu49628acab54illaa0', 1556464929, 'sessiontoken|s:32:\"dd9a279e08511fe9ba45ca47cfa51a60\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"5\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"jtb1t33tu49628acab54illaa0\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"5\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('ju3g7fuf4qf4q28q69lium4981', 1556465061, 'sessiontoken|s:32:\"b69f702d7fb9518260d462b0dfdfe1c3\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:19;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:49.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"23773\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"19\";s:6:\"action\";s:7:\"buy_now\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"ju3g7fuf4qf4q28q69lium4981\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('kftppkbag3dgc8isbe5nlr5tr6', 1556996862, 'sessiontoken|s:32:\"64736aff09bfbeab799b13f91d58e544\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:11;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:29.989999999999998;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"68447\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"ru\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"11\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"ru\";s:6:\"osCsid\";s:26:\"kftppkbag3dgc8isbe5nlr5tr6\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('l0b7mjfumscftnsgdv5sq8n6f1', 1556996848, 'sessiontoken|s:32:\"850f2e090198718bacfab5473bb122be\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:14;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:32;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"28687\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"3\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"14\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"3\";s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"l0b7mjfumscftnsgdv5sq8n6f1\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('l7san4d3542louhjk2dq1s57n2', 1556996834, 'sessiontoken|s:32:\"1d693eeaaebdb2b86c2bbad3eeafecde\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:4:\"2_20\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('m22lrecg56ep7f7g8urbqke8l4', 1556996866, 'sessiontoken|s:32:\"738e934eddf2fa82b1b75b6a89f2fe39\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:17;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:39.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"83786\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:4:\"page\";s:1:\"2\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"17\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:1:\"2\";s:6:\"osCsid\";s:26:\"m22lrecg56ep7f7g8urbqke8l4\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('muim0rmk11h726itn1fmasj731', 1556996863, 'sessiontoken|s:32:\"0a78410262647131c5190d38d556095b\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:16:\"manufacturers_id\";s:1:\"8\";s:11:\"products_id\";s:2:\"24\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('n3scvf4oq449ql4cqgcuhcnq54', 1556469214, 'sessiontoken|s:32:\"466b5ac27c8c50bba89d3a335a6364fa\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"2\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"n3scvf4oq449ql4cqgcuhcnq54\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"2\";s:6:\"action\";s:6:\"notify\";}s:4:\"post\";a:0:{}}}'),
('nsfa2rusnebhphdcgikgrub8p2', 1556469298, 'sessiontoken|s:32:\"7543c0cafcf52af4cf560ec2107f87b7\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:11;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:29.989999999999998;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"29580\";s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"en\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"11\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"en\";s:6:\"osCsid\";s:26:\"nsfa2rusnebhphdcgikgrub8p2\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('oc21rm2f3eim7vighhlisqu9a0', 1556465241, 'sessiontoken|s:32:\"46230dab4c4f1e76530a608df4e7a5dc\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:5:\"cPath\";s:4:\"3_15\";s:11:\"products_id\";s:2:\"14\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('ock7rldm8gd90t1eu3u9o0m7r7', 1556996703, 'sessiontoken|s:32:\"c32fb2bda3569bd38fd8d6f388411669\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:16:\"manufacturers_id\";s:2:\"10\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
INSERT INTO `sessions` (`sesskey`, `expiry`, `value`) VALUES
('ojiomeeet5heq1pf8dg06l9g80', 1556469388, 'sessiontoken|s:32:\"c433aa685431536e41488fda3640c678\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:17;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:39.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"80933\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"4\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"17\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"4\";s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"ojiomeeet5heq1pf8dg06l9g80\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('q9f4spmb0lpihkvodfvb35k7t3', 1556464515, 'sessiontoken|s:32:\"e1f9d46d8ba5cb4e272512b0def3b2a7\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:4;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:42;s:6:\"weight\";d:23;s:6:\"cartID\";s:5:\"40072\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:4:\"page\";s:1:\"3\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:1:\"4\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:1:\"3\";s:6:\"osCsid\";s:26:\"q9f4spmb0lpihkvodfvb35k7t3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('qf8dmgop9090dhh72jlqvakaj1', 1556469296, 'sessiontoken|s:32:\"4ee125eae5381caa1c66b11c870b63bc\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:12;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:39.990000000000002;s:6:\"weight\";d:7;s:6:\"cartID\";s:5:\"71882\";s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:8:\"language\";s:2:\"en\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"12\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:8:\"language\";s:2:\"en\";s:6:\"osCsid\";s:26:\"qf8dmgop9090dhh72jlqvakaj1\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('qfub5lneu5iqmn7ksu9ipmn3i2', 1556996826, 'sessiontoken|s:32:\"db3e042f062f99f7b473e1ac20f04145\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"1\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('qsqihlvlfjndkb8t0e1fqt2sf3', 1557013712, 'sessiontoken|s:32:\"a04698b65b1efc16b281e4456cef8e9f\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"1\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:1:\"1\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:1:\"1\";s:6:\"osCsid\";s:26:\"qsqihlvlfjndkb8t0e1fqt2sf3\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('qu5kbk2lc122cddrdopv149u43', 1557013729, 'sessiontoken|s:32:\"7a76fe1ea2644f42a2a7a7da5dba2c7b\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:1:{i:25;a:1:{s:3:\"qty\";i:1;}}s:5:\"total\";d:69.989999999999995;s:6:\"weight\";d:8;s:6:\"cartID\";s:5:\"62843\";s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:4:{s:16:\"manufacturers_id\";s:1:\"2\";s:4:\"sort\";s:2:\"2a\";s:6:\"action\";s:7:\"buy_now\";s:11:\"products_id\";s:2:\"25\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:16:\"manufacturers_id\";s:1:\"2\";s:4:\"sort\";s:2:\"2a\";s:6:\"osCsid\";s:26:\"qu5kbk2lc122cddrdopv149u43\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('rsaf6jpdjpf05ld6s7lhksrlc1', 1556985474, 'sessiontoken|s:32:\"8ca55614b0ac27b87f170e1c98204c98\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"22\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('s6aakkjiet8lb2dontmj8f3tc2', 1556465256, 'sessiontoken|s:32:\"d32a5ea5eda7be8ad8fb6ea8d9c89065\";cart|O:12:\"shoppingCart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:17:\"tell_a_friend.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:1:\"1\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:6:\"osCsid\";s:26:\"s6aakkjiet8lb2dontmj8f3tc2\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:4:{s:4:\"page\";s:17:\"tell_a_friend.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:1:\"1\";}s:4:\"post\";a:0:{}}}'),
('sdgmnmorgthfl8r1kl4qnshq33', 1556996780, 'sessiontoken|s:32:\"4512e3cf441788d0ad8a5f6f05f72303\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:11:\"products_id\";s:2:\"25\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('sp7sbi5u33pfkjrdsbijh2dal1', 1556996786, 'sessiontoken|s:32:\"4158fb15ab5f3b07af0bbb391e8b39c6\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:3:{s:5:\"cPath\";s:3:\"1_8\";s:4:\"page\";s:1:\"1\";s:4:\"sort\";s:2:\"2d\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('tcrj6ob65slsu4kn5ltjf41gl6', 1556464445, 'sessiontoken|s:32:\"6adc570c9dfb257b13640bad90275ada\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:16:\"manufacturers_id\";s:1:\"3\";s:8:\"language\";s:2:\"en\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}'),
('u6l114jtroau1fh77sobgu9l00', 1556996783, 'sessiontoken|s:32:\"9dad4a55ed9d36720c7bafd10ab56e2c\";cart|O:12:\"shoppingCart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"russian\";languages_id|s:1:\"2\";currency|s:3:\"USD\";navigation|O:17:\"navigationHistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:19:\"product_reviews.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:2:\"13\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 3, '39.9900', '2019-02-15 14:53:49', NULL, NULL, NULL, 1),
(2, 5, '30.0000', '2019-02-15 14:53:49', NULL, NULL, NULL, 1),
(3, 6, '30.0000', '2019-02-15 14:53:49', NULL, NULL, NULL, 1),
(4, 16, '29.9900', '2019-02-15 14:53:49', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Taxable Goods', 'The following types of products are included non-food, services, etc', '2019-02-15 14:53:49', '2019-02-15 14:53:49');

-- --------------------------------------------------------

--
-- Структура таблицы `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 1, 1, 1, '7.0000', 'FL TAX 7.0%', '2019-02-15 14:53:49', '2019-02-15 14:53:49');

-- --------------------------------------------------------

--
-- Структура таблицы `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(0, 'Guest', '1742l6e7eiadrb06pv34a416e0', '5.45.207.69', '1557018581', '1557018581', '/index.php?cPath=1_9');

-- --------------------------------------------------------

--
-- Структура таблицы `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza'),
(182, 176, '01', 'Республика Адыгея (Адыгея)'),
(183, 176, '04', 'Республика Алтай'),
(184, 176, '02', 'Республика Башкортостан'),
(185, 176, '03', 'Республика Бурятия'),
(186, 176, '05', 'Республика Дагестан'),
(187, 176, '06', 'Республика Ингушетия'),
(188, 176, '07', 'Кабардино-Балкарская Республика'),
(189, 176, '08', 'Республика Калмыкия'),
(190, 176, '09', 'Карачаево-Черкесская Республика'),
(191, 176, '10', 'Республика Карелия'),
(192, 176, '11', 'Республика Коми'),
(193, 176, '12', 'Республика Марий Эл'),
(194, 176, '13', 'Республика Мордовия'),
(195, 176, '14', 'Республика Саха (Якутия)'),
(196, 176, '15', 'Республика Северная Осетия - Алания'),
(197, 176, '16', 'Республика Татарстан (Татарстан)'),
(198, 176, '17', 'Республика Тыва'),
(199, 176, '18', 'Удмуртская Республика'),
(200, 176, '19', 'Республика Хакасия'),
(201, 176, '20', 'Чеченская Республика'),
(202, 176, '21', 'Чувашская Республика - Чувашия'),
(203, 176, '22', 'Алтайский край'),
(204, 176, '23', 'Краснодарский край'),
(205, 176, '24', 'Красноярский край'),
(206, 176, '25', 'Приморский край'),
(207, 176, '26', 'Ставропольский край'),
(208, 176, '27', 'Хабаровский край'),
(209, 176, '28', 'Амурская область'),
(210, 176, '29', 'Архангельская область'),
(211, 176, '30', 'Астраханская область'),
(212, 176, '31', 'Белгородская область'),
(213, 176, '32', 'Брянская область'),
(214, 176, '33', 'Владимирская область'),
(215, 176, '34', 'Волгоградская область'),
(216, 176, '35', 'Вологодская область'),
(217, 176, '36', 'Воронежская область'),
(218, 176, '37', 'Ивановская область'),
(219, 176, '38', 'Иркутская область'),
(220, 176, '39', 'Калининградская область'),
(221, 176, '40', 'Калужская область'),
(222, 176, '41', 'Камчатский край'),
(223, 176, '42', 'Кемеровская область'),
(224, 176, '43', 'Кировская область'),
(225, 176, '44', 'Костромская область'),
(226, 176, '45', 'Курганская область'),
(227, 176, '46', 'Курская область'),
(228, 176, '47', 'Ленинградская область'),
(229, 176, '48', 'Липецкая область'),
(230, 176, '49', 'Магаданская область'),
(231, 176, '50', 'Московская область'),
(232, 176, '51', 'Мурманская область'),
(233, 176, '52', 'Нижегородская область'),
(234, 176, '53', 'Новгородская область'),
(235, 176, '54', 'Новосибирская область'),
(236, 176, '55', 'Омская область'),
(237, 176, '56', 'Оренбургская область'),
(238, 176, '57', 'Орловская область'),
(239, 176, '58', 'Пензенская область'),
(240, 176, '59', 'Пермский край'),
(241, 176, '60', 'Псковская область'),
(242, 176, '61', 'Ростовская область'),
(243, 176, '62', 'Рязанская область'),
(244, 176, '63', 'Самарская область'),
(245, 176, '64', 'Саратовская область'),
(246, 176, '65', 'Сахалинская область'),
(247, 176, '66', 'Свердловская область'),
(248, 176, '67', 'Смоленская область'),
(249, 176, '68', 'Тамбовская область'),
(250, 176, '69', 'Тверская область'),
(251, 176, '70', 'Томская область'),
(252, 176, '71', 'Тульская область'),
(253, 176, '72', 'Тюменская область'),
(254, 176, '73', 'Ульяновская область'),
(255, 176, '74', 'Челябинская область'),
(256, 176, '75', 'Забайкальский край'),
(257, 176, '76', 'Ярославская область'),
(258, 176, '77', 'Москва'),
(259, 176, '78', 'Санкт-Петербург'),
(260, 176, '79', 'Еврейская автономная область'),
(261, 176, '82', 'Крым Республика'),
(262, 176, '83', 'Ненецкий автономный округ'),
(263, 176, '86', 'Ханты-Мансийский автономный округ'),
(264, 176, '87', 'Чукотский автономный округ'),
(265, 176, '89', 'Ямало-Ненецкий автономный округ'),
(266, 176, '92', 'Севастополь'),
(267, 11, 'Араратская область', 'Араратская область'),
(268, 11, 'Армавирская область', 'Армавирская область'),
(269, 11, 'Гегаркуникская область', 'Гегаркуникская область'),
(270, 11, 'Ереван', 'Ереван'),
(271, 11, 'Котайкская область', 'Котайкская область'),
(272, 11, 'Лорийская область', 'Лорийская область'),
(273, 11, 'Область Вайоц Дзор', 'Область Вайоц Дзор'),
(274, 11, 'Область Арагацотн', 'Область Арагацотн'),
(275, 11, 'Сюникская область', 'Сюникская область'),
(276, 11, 'Тавушская область', 'Тавушская область'),
(277, 11, 'Ширакская область', 'Ширакская область'),
(278, 15, 'Агдашский район', 'Агдашский район'),
(279, 15, 'Агдамский район', 'Агдамский район'),
(280, 15, 'Агджабединский район', 'Агджабединский район'),
(281, 15, 'Агсуинский район', 'Агсуинский район'),
(282, 15, 'Акстафинский район', 'Акстафинский район'),
(283, 15, 'Апшеронский район', 'Апшеронский район'),
(284, 15, 'Астаринский район', 'Астаринский район'),
(285, 15, 'Бабекский район', 'Бабекский район'),
(286, 15, 'Балакенский район', 'Балакенский район'),
(287, 15, 'Бардинский район', 'Бардинский район'),
(288, 15, 'Бейлаганский район', 'Бейлаганский район'),
(289, 15, 'Билясуварский район', 'Билясуварский район'),
(290, 15, 'Габалинский район', 'Габалинский район'),
(291, 15, 'Гаджигабульский район', 'Гаджигабульский район'),
(292, 15, 'Газахский район', 'Газахский район'),
(293, 15, 'Гахский район', 'Гахский район'),
(294, 15, 'Геокчайский район', 'Геокчайский район'),
(295, 15, 'Геранбойский район', 'Геранбойский район'),
(296, 15, 'Гобустанский район', 'Гобустанский район'),
(297, 15, 'Губинский район', 'Губинский район'),
(298, 15, 'Губадлинский район', 'Губадлинский район'),
(299, 15, 'Гусарский район', 'Гусарский район'),
(300, 15, 'Дашкесанский район', 'Дашкесанский район'),
(301, 15, 'Джалилабадский район', 'Джалилабадский район'),
(302, 15, 'Джебраильский район', 'Джебраильский район'),
(303, 15, 'Джульфинский район', 'Джульфинский район'),
(304, 15, 'Дивичинский район', 'Дивичинский район'),
(305, 15, 'Евлахский район', 'Евлахский район'),
(306, 15, 'Закатальский район', 'Закатальский район'),
(307, 15, 'Зангеланский район', 'Зангеланский район'),
(308, 15, 'Зардабский район', 'Зардабский район'),
(309, 15, 'Имишлинский район', 'Имишлинский район'),
(310, 15, 'Исмаиллинский район', 'Исмаиллинский район'),
(311, 15, 'Кедабекский район', 'Кедабекский район'),
(312, 15, 'Кельбаджарский район', 'Кельбаджарский район'),
(313, 15, 'Кюрдамирский район', 'Кюрдамирский район'),
(314, 15, 'Лачинский район', 'Лачинский район'),
(315, 15, 'Ленкоранский район', 'Ленкоранский район'),
(316, 15, 'Лерикский район', 'Лерикский район'),
(317, 15, 'Масаллинский район', 'Масаллинский район'),
(318, 15, 'Нахичеванская Автономная Республ', 'Нахичеванская Автономная Республика'),
(319, 15, 'Нефтчалинский район', 'Нефтчалинский район'),
(320, 15, 'Огузский район', 'Огузский район'),
(321, 15, 'Ордубадский район', 'Ордубадский район'),
(322, 15, 'Саатлинский район', 'Саатлинский район'),
(323, 15, 'Сабирабадский район', 'Сабирабадский район'),
(324, 15, 'Садаракский район', 'Садаракский район'),
(325, 15, 'Сальянский район', 'Сальянский район'),
(326, 15, 'Самухский район', 'Самухский район'),
(327, 15, 'Сиязаньский район', 'Сиязаньский район'),
(328, 15, 'Тертерский район', 'Тертерский район'),
(329, 15, 'Товузский район', 'Товузский район'),
(330, 15, 'Уджарский район', 'Уджарский район'),
(331, 15, 'Физулинский район', 'Физулинский район'),
(332, 15, 'Ханларский район', 'Ханларский район'),
(333, 15, 'Хачмазский район', 'Хачмазский район'),
(334, 15, 'Ходжалинский район', 'Ходжалинский район'),
(335, 15, 'Ходжавендский район', 'Ходжавендский район'),
(336, 15, 'Хызынский район', 'Хызынский район'),
(337, 15, 'Шарурский район', 'Шарурский район'),
(338, 15, 'Шахбузский район', 'Шахбузский район'),
(339, 15, 'Шекинский район', 'Шекинский район'),
(340, 15, 'Шемахинский район', 'Шемахинский район'),
(341, 15, 'Шемкирский район', 'Шемкирский район'),
(342, 15, 'Шушинский район', 'Шушинский район'),
(343, 15, 'Ярдымлинский район', 'Ярдымлинский район'),
(344, 20, 'Брестская область', 'Брестская область'),
(345, 20, 'Витебская область', 'Витебская область'),
(346, 20, 'Гомельская область', 'Гомельская область'),
(347, 20, 'Гродненская область', 'Гродненская область'),
(348, 20, 'Минская область', 'Минская область'),
(349, 20, 'Могилевская область', 'Могилевская область'),
(350, 67, 'Валгамааский уезд', 'Валгамааский уезд'),
(351, 67, 'Вильяндимааский уезд', 'Вильяндимааский уезд'),
(352, 67, 'Вырумааский уезд', 'Вырумааский уезд'),
(353, 67, 'Ида-Вирумааский уезд', 'Ида-Вирумааский уезд'),
(354, 67, 'Йыгевамааский уезд', 'Йыгевамааский уезд'),
(355, 67, 'Ляэнемааский уезд', 'Ляэнемааский уезд'),
(356, 67, 'Ляэне-Вирумааский уезд', 'Ляэне-Вирумааский уезд'),
(357, 67, 'Пылвамааский уезд', 'Пылвамааский уезд'),
(358, 67, 'Пярнумааский уезд', 'Пярнумааский уезд'),
(359, 67, 'Рапламааский уезд', 'Рапламааский уезд'),
(360, 67, 'Сааремааский уезд', 'Сааремааский уезд'),
(361, 67, 'Тартумааский уезд', 'Тартумааский уезд'),
(362, 67, 'Харьюский уезд', 'Харьюский уезд'),
(363, 67, 'Хийумааский уезд', 'Хийумааский уезд'),
(364, 67, 'Ярвамаамааский уезд', 'Ярвамаамааский уезд'),
(365, 80, 'Абхазская автономная республика', 'Абхазская автономная республика'),
(366, 80, 'Аджарская автономная республика', 'Аджарская автономная республика'),
(367, 80, 'Гурия', 'Гурия'),
(368, 80, 'Имерети', 'Имерети'),
(369, 80, 'Кахети', 'Кахети'),
(370, 80, 'Квемо-Картли', 'Квемо-Картли'),
(371, 80, 'Мцхета-Тианети', 'Мцхета-Тианети'),
(372, 80, 'Рача-Лечхуми - Квемо Сванети', 'Рача-Лечхуми - Квемо Сванети'),
(373, 80, 'Республика Южная Осетия', 'Республика Южная Осетия'),
(374, 80, 'Самцхе-Джавахети', 'Самцхе-Джавахети'),
(375, 80, 'Самегрело - Земо-Сванети', 'Самегрело - Земо-Сванети'),
(376, 80, 'Тбилиси', 'Тбилиси'),
(377, 80, 'Шида - Картли', 'Шида - Картли'),
(378, 109, 'Акмолинская область', 'Акмолинская область'),
(379, 109, 'Актюбинская область', 'Актюбинская область'),
(380, 109, 'Алматинская область', 'Алматинская область'),
(381, 109, 'Атырауская область', 'Атырауская область'),
(382, 109, 'Восточно-Казахстанская область', 'Восточно-Казахстанская область'),
(383, 109, 'Жамбылская область', 'Жамбылская область'),
(384, 109, 'Западно-Казахстанская область', 'Западно-Казахстанская область'),
(385, 109, 'Карагандинская область', 'Карагандинская область'),
(386, 109, 'Кзылординская область', 'Кзылординская область'),
(387, 109, 'Костанайская область', 'Костанайская область'),
(388, 109, 'Мангистауская область', 'Мангистауская область'),
(389, 109, 'Павлодарская область', 'Павлодарская область'),
(390, 109, 'Северо-Казахстанская область', 'Северо-Казахстанская область'),
(391, 109, 'Южно-Казахстанская область', 'Южно-Казахстанская область'),
(392, 115, 'Баткенская область', 'Баткенская область'),
(393, 115, 'Джалал-Абадская область', 'Джалал-Абадская область'),
(394, 115, 'Иссык-Кульская область', 'Иссык-Кульская область'),
(395, 115, 'Нарынская область', 'Нарынская область'),
(396, 115, 'Ошская область', 'Ошская область'),
(397, 115, 'Таласская область', 'Таласская область'),
(398, 115, 'Чуйская область', 'Чуйская область'),
(399, 117, 'Аизкраукленский', 'Аизкраукленский'),
(400, 117, 'Алуксненский', 'Алуксненский'),
(401, 117, 'Балвский', 'Балвский'),
(402, 117, 'Бауский', 'Бауский'),
(403, 117, 'Валкский', 'Валкский'),
(404, 117, 'Валмиерский', 'Валмиерский'),
(405, 117, 'Вентспилсский', 'Вентспилсский'),
(406, 117, 'Вентспилс', 'Вентспилс'),
(407, 117, 'Гулбенский', 'Гулбенский'),
(408, 117, 'Давгавпилский', 'Давгавпилский'),
(409, 117, 'Даугавпилс', 'Даугавпилс'),
(410, 117, 'Добелский', 'Добелский'),
(411, 117, 'Екабпилский', 'Екабпилский'),
(412, 117, 'Елгавский', 'Елгавский'),
(413, 117, 'Елгава', 'Елгава'),
(414, 117, 'Краславский', 'Краславский'),
(415, 117, 'Кулдигский', 'Кулдигский'),
(416, 117, 'Ледзенский', 'Ледзенский'),
(417, 117, 'Лепайский', 'Лепайский'),
(418, 117, 'Лиепая', 'Лиепая'),
(419, 117, 'Лимбажский', 'Лимбажский'),
(420, 117, 'Мадонский', 'Мадонский'),
(421, 117, 'Огрский', 'Огрский'),
(422, 117, 'Прейльский', 'Прейльский'),
(423, 117, 'Резекненский', 'Резекненский'),
(424, 117, 'Резекне', 'Резекне'),
(425, 117, 'Рига', 'Рига'),
(426, 117, 'Рижский', 'Рижский'),
(427, 117, 'Салдуский', 'Салдуский'),
(428, 117, 'Талсинский', 'Талсинский'),
(429, 117, 'Тукумский', 'Тукумский'),
(430, 117, 'Цесиский', 'Цесиский'),
(431, 117, 'Юрмала', 'Юрмала'),
(432, 123, 'Kлайпедский уезд', 'Kлайпедский уезд'),
(433, 123, 'Maриямпольский уезд', 'Maриямпольский уезд'),
(434, 123, 'Tяльшяйский уезд', 'Tяльшяйский уезд'),
(435, 123, 'Алитусский уезд', 'Алитусский уезд'),
(436, 123, 'Вильнюсский уезд', 'Вильнюсский уезд'),
(437, 123, 'Каунасский уезд', 'Каунасский уезд'),
(438, 123, 'Панявежский уезд', 'Панявежский уезд'),
(439, 123, 'Таурагский уезд', 'Таурагский уезд'),
(440, 123, 'Утянский уезд', 'Утянский уезд'),
(441, 123, 'Шяуляйский уезд', 'Шяуляйский уезд'),
(442, 140, 'Балти', 'Балти'),
(443, 140, 'Единет', 'Единет'),
(444, 140, 'Кагул', 'Кагул'),
(445, 140, 'Кишенёв', 'Кишенёв'),
(446, 140, 'Лапушна', 'Лапушна'),
(447, 140, 'Оргей', 'Оргей'),
(448, 140, 'Сорока', 'Сорока'),
(449, 140, 'Тараклия', 'Тараклия'),
(450, 140, 'Тигина', 'Тигина'),
(451, 140, 'Унгены', 'Унгены'),
(452, 207, 'Ленинабадская область', 'Ленинабадская область'),
(453, 207, 'Мухтори-Кухистони-Бадахшони', 'Мухтори-Кухистони-Бадахшони'),
(454, 207, 'Хатлонская область', 'Хатлонская область'),
(455, 216, 'Ахал', 'Ахал'),
(456, 216, 'Балкан', 'Балкан'),
(457, 216, 'Дашховуз', 'Дашховуз'),
(458, 216, 'Лебап', 'Лебап'),
(459, 216, 'Мары', 'Мары'),
(460, 220, 'Винницкая область', 'Винницкая область'),
(461, 220, 'Волынская область', 'Волынская область'),
(462, 220, 'Днепропетровская область', 'Днепропетровская область'),
(463, 220, 'Донецкая область', 'Донецкая область'),
(464, 220, 'Житомирская область', 'Житомирская область'),
(465, 220, 'Закарпатская область', 'Закарпатская область'),
(466, 220, 'Запорожская область', 'Запорожская область'),
(467, 220, 'Ивано-Франковская область', 'Ивано-Франковская область'),
(468, 220, 'Киевская область', 'Киевская область'),
(469, 220, 'Кировоградская область', 'Кировоградская область'),
(470, 220, 'Луганская область', 'Луганская область'),
(471, 220, 'Львовская область', 'Львовская область'),
(472, 220, 'Николаевская область', 'Николаевская область'),
(473, 220, 'Одесская область', 'Одесская область'),
(474, 220, 'Полтавская область', 'Полтавская область'),
(475, 220, 'Ровенская область', 'Ровенская область'),
(476, 220, 'Сумская область', 'Сумская область'),
(477, 220, 'Тернопольская область', 'Тернопольская область'),
(478, 220, 'Харьковская область', 'Харьковская область'),
(479, 220, 'Херсонская область', 'Херсонская область'),
(480, 220, 'Хмельницкая область', 'Хмельницкая область'),
(481, 220, 'Черновицкая область', 'Черновицкая область'),
(482, 220, 'Черниговская область', 'Черниговская область'),
(483, 220, 'Черкасская область', 'Черкасская область'),
(484, 226, 'Андижанский', 'Андижанский'),
(485, 226, 'Бухарский', 'Бухарский'),
(486, 226, 'Джизакский', 'Джизакский'),
(487, 226, 'Каракалпакия', 'Каракалпакия'),
(488, 226, 'Кашкадарьинский', 'Кашкадарьинский'),
(489, 226, 'Навоийский', 'Навоийский'),
(490, 226, 'Наманганский', 'Наманганский'),
(491, 226, 'Самаркандский', 'Самаркандский'),
(492, 226, 'Сурхандарьинский', 'Сурхандарьинский'),
(493, 226, 'Сырдарьинский', 'Сырдарьинский'),
(494, 226, 'Ташкентский', 'Ташкентский'),
(495, 226, 'Ферганский', 'Ферганский'),
(496, 226, 'Хорезмский', 'Хорезмский');

-- --------------------------------------------------------

--
-- Структура таблицы `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `zones_to_geo_zones`
--

INSERT INTO `zones_to_geo_zones` (`association_id`, `zone_country_id`, `zone_id`, `geo_zone_id`, `last_modified`, `date_added`) VALUES
(1, 223, 18, 1, NULL, '2019-02-15 14:53:49');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `action_recorder`
--
ALTER TABLE `action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Индексы таблицы `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Индексы таблицы `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Индексы таблицы `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Индексы таблицы `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Индексы таблицы `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_id`,`language_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Индексы таблицы `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`configuration_id`);

--
-- Индексы таблицы `configuration_group`
--
ALTER TABLE `configuration_group`
  ADD PRIMARY KEY (`configuration_group_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies_id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD KEY `idx_customers_email_address` (`customers_email_address`);

--
-- Индексы таблицы `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Индексы таблицы `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Индексы таблицы `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Индексы таблицы `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Индексы таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`);

--
-- Индексы таблицы `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Индексы таблицы `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Индексы таблицы `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Индексы таблицы `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Индексы таблицы `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Индексы таблицы `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`);

--
-- Индексы таблицы `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Индексы таблицы `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Индексы таблицы `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Индексы таблицы `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Индексы таблицы `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`);

--
-- Индексы таблицы `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Индексы таблицы `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Индексы таблицы `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`,`language_id`);

--
-- Индексы таблицы `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`language_id`);

--
-- Индексы таблицы `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  ADD PRIMARY KEY (`products_options_values_to_products_options_id`);

--
-- Индексы таблицы `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Индексы таблицы `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Индексы таблицы `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Индексы таблицы `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Индексы таблицы `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Индексы таблицы `whos_online`
--
ALTER TABLE `whos_online`
  ADD KEY `idx_whos_online_session_id` (`session_id`);

--
-- Индексы таблицы `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Индексы таблицы `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `action_recorder`
--
ALTER TABLE `action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `configuration`
--
ALTER TABLE `configuration`
  MODIFY `configuration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT для таблицы `configuration_group`
--
ALTER TABLE `configuration_group`
  MODIFY `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `products_description`
--
ALTER TABLE `products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  MODIFY `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT для таблицы `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
