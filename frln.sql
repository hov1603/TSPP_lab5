-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 20 2014 г., 03:13
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `frln`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_assets`
--

CREATE TABLE IF NOT EXISTS `dj53b_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Дамп данных таблицы `dj53b_assets`
--

INSERT INTO `dj53b_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 97, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 42, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 43, 44, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 45, 46, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 47, 48, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 49, 50, 1, 'com_login', 'com_login', '{}'),
(13, 1, 51, 52, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 53, 54, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 55, 56, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 57, 58, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 59, 60, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 61, 62, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 63, 66, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 67, 68, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 69, 70, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 71, 72, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 73, 74, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 75, 78, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 79, 82, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 83, 84, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 29, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 64, 65, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 80, 81, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 76, 77, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 85, 86, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 87, 88, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 8, 30, 31, 2, 'com_content.category.8', 'Новини', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(36, 8, 32, 33, 2, 'com_content.category.9', 'Форель', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 8, 34, 37, 2, 'com_content.category.10', 'Проживання', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(38, 8, 38, 39, 2, 'com_content.category.11', 'Книга відгуків', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(39, 8, 40, 41, 2, 'com_content.category.12', 'Фотогалерея', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(40, 37, 35, 36, 3, 'com_content.article.1', 'Номери та ціни', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 27, 19, 20, 3, 'com_content.article.2', 'Приготування', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 27, 21, 22, 3, 'com_content.article.3', 'Проживання', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 27, 23, 24, 3, 'com_content.article.4', 'Рибна ловля', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 27, 25, 26, 3, 'com_content.article.5', 'Форель', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 27, 27, 28, 3, 'com_content.article.6', 'Приготування', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 1, 89, 90, 1, 'com_foxcontact', 'com_foxcontact', '{}'),
(47, 1, 91, 96, 1, 'com_booking', 'booking', '{"core.admin":[],"core.manage":[],"booking.reservation.create":{"1":1,"6":1,"7":1,"2":1,"3":1,"4":1,"5":1,"8":1},"booking.reservations.manage":[],"booking.item.manage":[],"booking.view.customers":[],"booking.edit.customer":{"1":1,"6":1,"7":1,"2":1,"3":1,"4":1,"5":1,"8":1},"booking.show.reservations":[],"booking.mailing.new.reservation":[],"booking.mailing.change.reservation":[],"booking.mailing.cancel.reservation":[]}'),
(48, 47, 92, 95, 2, 'com_booking.subject.1', 'Готель №1', '{"booking.reservations.manage":[],"booking.closingdays.manage":[],"booking.show.reservations":[],"booking.mailing.new.reservation":[],"booking.mailing.change.reservation":[],"booking.mailing.cancel.reservation":[]}'),
(49, 48, 93, 94, 3, 'com_booking.subject.2', 'Номер типу "люкс"', '{"booking.reservations.manage":[],"booking.closingdays.manage":[],"booking.show.reservations":[],"booking.mailing.new.reservation":[],"booking.mailing.change.reservation":[],"booking.mailing.cancel.reservation":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_associations`
--

CREATE TABLE IF NOT EXISTS `dj53b_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_banners`
--

CREATE TABLE IF NOT EXISTS `dj53b_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_banner_clients`
--

CREATE TABLE IF NOT EXISTS `dj53b_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `dj53b_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_admin`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_admin` (
  `id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_booking_admin`
--

INSERT INTO `dj53b_booking_admin` (`id`) VALUES
(160);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_article`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `dj53b_booking_article`
--

INSERT INTO `dj53b_booking_article` (`id`, `title`, `text`, `checked_out`, `checked_out_time`) VALUES
(1, 'Terms of Contract', '', 0, '0000-00-00 00:00:00'),
(2, 'Terms of Privacy', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_closingday`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_closingday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `color` varchar(6) NOT NULL DEFAULT '',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `date_up` date NOT NULL,
  `date_down` date NOT NULL,
  `time_up` time NOT NULL,
  `time_down` time NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from` (`date_up`,`date_down`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_closingday_subject`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_closingday_subject` (
  `closingday_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  UNIQUE KEY `exception_id` (`closingday_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_creditcards`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_creditcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `sec_code` varchar(255) NOT NULL,
  `exp_month` int(2) NOT NULL,
  `exp_year` int(2) NOT NULL,
  `pay_type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_customer`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `title_before` varchar(20) NOT NULL DEFAULT '',
  `firstname` varchar(35) NOT NULL DEFAULT '',
  `middlename` varchar(35) NOT NULL DEFAULT '',
  `surname` varchar(35) NOT NULL DEFAULT '',
  `title_after` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(70) NOT NULL DEFAULT '',
  `company_id` varchar(20) NOT NULL,
  `vat_id` varchar(20) NOT NULL,
  `street` varchar(35) NOT NULL DEFAULT '',
  `city` varchar(35) NOT NULL DEFAULT '',
  `country` varchar(35) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fields` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_email`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `sms` text NOT NULL,
  `mode` tinyint(1) NOT NULL DEFAULT '0',
  `usage` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `dj53b_booking_email`
--

INSERT INTO `dj53b_booking_email` (`id`, `subject`, `body`, `sms`, `mode`, `usage`, `checked_out`, `checked_out_time`) VALUES
(1, 'Your registration successfully saved.', '<p>Dear customer,<br /><br />your registration was successfully delivered. <br /><br />Registration date: {REGISTRATION DATE}<br />Username: {USERNAME}<br />Password: {PASSWORD}<br />E-mail: {E-MAIL}<br />Name: {NAME}<br />Company: {COMPANY}<br />Address: {ADDRESS}<br />Telephone: {TELEPHONE}<br />Fax: {FAX} <br /><br />Best regards <br /><br />This E-mail was generate automatically.</p>', '', 1, 0, 400, '2013-03-13 11:29:41'),
(2, 'New registration successfully saved.', '<p>New customer registered<br /><br />Registration date: {REGISTRATION DATE}<br />Username: {USERNAME}<br />Password: {PASSWORD}<br />E-mail: {E-MAIL}<br />Name: {NAME}<br />Company: {COMPANY}<br />Address: {ADDRESS}<br />Telephone: {TELEPHONE}<br />Fax: {FAX} <br /><br />This E-mail was generate automatically.</p>', '', 1, 0, 0, '0000-00-00 00:00:00'),
(3, 'Your reservation successfully saved', '<p>Dear Customer,<br /><br />your Reservation was successfully saved.<br /><br />{OBJECTS}<br />Object: {OBJECT TITLE}<br />Reservation Date: {DATE}<br />Quantity: {QUANTITY}<br />Price: {PRICE}<br />Deposit: {DEPOSIT}<br />{SUPPLEMENTS}<br />{/OBJECTS}<br />Full Price: {FULLPRICE}<br />Full Deposit: {FULLDEPOSIT}<br /><br />Customer: {CUSTOMER}<br />Address: {ADDRESS}<br />Company: {COMPANY}<br />E-mail: {EMAIL}<br />Telephone: {TELEPHONE}<br />Fax: {FAX}<br /><br />Best regards.<br /><br />This E-mail was generated automatically.</p>', '', 1, 0, 0, '0000-00-00 00:00:00'),
(4, 'New reservation received', '<p>New Reservation received.<br /><br />{OBJECTS}<br />Object: {OBJECT TITLE}<br />Reservation Date: {DATE}<br />Quantity: {QUANTITY}<br />Price: {PRICE}<br />Deposit: {DEPOSIT}<br />{SUPPLEMENTS}<br />{/OBJECTS}<br />Full Price: {FULLPRICE}<br />Full Deposit: {FULLDEPOSIT}<br /><br />Customer: {CUSTOMER}<br />Address: {ADDRESS}<br />Company: {COMPANY}<br />E-mail: {EMAIL}<br />Telephone: {TELEPHONE}<br />Fax: {FAX}<br /><br /><br />This E-mail was generated automatically.</p>', '', 1, 0, 0, '0000-00-00 00:00:00'),
(5, 'Your reservation changed status', '<p>Dear Customer,<br /><br />status of your reservation was changed to {STATUS}<br /><br />Reservation info:<br /><br />{OBJECTS}<br />Object: {OBJECT TITLE}<br />Reservation Date: {DATE}<br />Quantity: {QUANTITY}<br />Price: {PRICE}<br />Deposit: {DEPOSIT}<br />{SUPPLEMENTS}<br />{/OBJECTS}<br />Full Price: {FULLPRICE}<br />Full Deposit: {FULLDEPOSIT}<br /><br />Customer: {CUSTOMER}<br />Address: {ADDRESS}<br />Company: {COMPANY}<br />E-mail: {EMAIL}<br />Telephone: {TELEPHONE}<br />Fax: {FAX}<br /><br />Best regards.<br /><br />This E-mail was generated automatically.</p>', '', 1, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_google_calendar`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_google_calendar` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_location`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `pick_up` tinyint(1) NOT NULL DEFAULT '0',
  `drop_off` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `checked_out` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_occupancy_type`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_occupancy_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_payment`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `pay` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asset_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`,`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_price`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) NOT NULL DEFAULT '0',
  `value` float NOT NULL DEFAULT '0',
  `deposit` float NOT NULL DEFAULT '0',
  `deposit_type` tinyint(1) NOT NULL DEFAULT '1',
  `deposit_multiply` tinyint(4) NOT NULL DEFAULT '0',
  `price_capacity_multiply` tinyint(4) NOT NULL DEFAULT '1',
  `deposit_capacity_multiply` tinyint(4) NOT NULL DEFAULT '1',
  `deposit_include_supplements` tinyint(1) NOT NULL DEFAULT '0',
  `price_standard_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '1',
  `price_extra_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '0',
  `deposit_standard_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '1',
  `deposit_extra_occupancy_multiply` tinyint(1) NOT NULL DEFAULT '0',
  `volume_discount` text NOT NULL,
  `occupancy_price_modifier` text NOT NULL,
  `rezervation_type` int(11) NOT NULL DEFAULT '0',
  `date_up` date NOT NULL DEFAULT '0000-00-00',
  `date_down` date NOT NULL DEFAULT '0000-00-00',
  `time_up` time NOT NULL DEFAULT '00:00:00',
  `time_down` time NOT NULL DEFAULT '00:00:00',
  `cancel_time` int(11) DEFAULT NULL,
  `monday` tinyint(4) NOT NULL DEFAULT '0',
  `tuesday` tinyint(4) NOT NULL DEFAULT '0',
  `wednesday` tinyint(4) NOT NULL DEFAULT '0',
  `thursday` tinyint(4) NOT NULL DEFAULT '0',
  `friday` tinyint(4) NOT NULL DEFAULT '0',
  `saturday` tinyint(4) NOT NULL DEFAULT '0',
  `sunday` tinyint(4) NOT NULL DEFAULT '0',
  `week` tinyint(4) NOT NULL DEFAULT '0',
  `custom_color` varchar(20) DEFAULT NULL,
  `time_range` tinyint(4) NOT NULL DEFAULT '0',
  `head_piece` int(11) NOT NULL DEFAULT '0',
  `tail_piece` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `dj53b_booking_price`
--

INSERT INTO `dj53b_booking_price` (`id`, `subject`, `value`, `deposit`, `deposit_type`, `deposit_multiply`, `price_capacity_multiply`, `deposit_capacity_multiply`, `deposit_include_supplements`, `price_standard_occupancy_multiply`, `price_extra_occupancy_multiply`, `deposit_standard_occupancy_multiply`, `deposit_extra_occupancy_multiply`, `volume_discount`, `occupancy_price_modifier`, `rezervation_type`, `date_up`, `date_down`, `time_up`, `time_down`, `cancel_time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `week`, `custom_color`, `time_range`, `head_piece`, `tail_piece`) VALUES
(1, 2, 200, 5, 1, 0, 1, 1, 0, 1, 0, 1, 0, '{}', '{}', 1, '2014-05-30', '2020-10-30', '00:00:00', '00:00:00', NULL, 1, 1, 1, 1, 1, 1, 1, 0, '', 0, 0, 0),
(3, 3, 75, 5, 1, 0, 1, 1, 0, 1, 0, 1, 0, '', '', 3, '2010-12-16', '2020-12-31', '00:00:00', '00:00:00', NULL, 1, 1, 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0),
(4, 5, 75, 5, 1, 0, 1, 1, 0, 1, 0, 1, 0, '', '', 5, '2010-12-16', '2020-12-31', '00:00:00', '00:00:00', NULL, 1, 1, 1, 1, 1, 1, 1, 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_reservation`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `title_before` varchar(20) NOT NULL DEFAULT '',
  `firstname` varchar(35) NOT NULL DEFAULT '',
  `middlename` varchar(35) NOT NULL DEFAULT '',
  `surname` varchar(35) NOT NULL DEFAULT '',
  `title_after` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(70) NOT NULL DEFAULT '',
  `company_id` varchar(20) NOT NULL,
  `vat_id` varchar(20) NOT NULL,
  `street` varchar(35) NOT NULL DEFAULT '',
  `city` varchar(35) NOT NULL DEFAULT '',
  `country` varchar(35) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `payment_method_id` varchar(50) NOT NULL,
  `payment_method_name` varchar(50) NOT NULL,
  `payment_method_info` text NOT NULL,
  `note` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fields` longtext NOT NULL,
  `book_time` datetime DEFAULT NULL,
  `follow_up_sent` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_reservation_items`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_reservation_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` int(11) NOT NULL DEFAULT '0',
  `rtype` tinyint(4) NOT NULL DEFAULT '0',
  `subject` int(11) NOT NULL DEFAULT '0',
  `subject_title` varchar(255) NOT NULL,
  `sub_subject` int(11) NOT NULL DEFAULT '0',
  `sub_subject_title` varchar(255) NOT NULL,
  `from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `occupancy` text NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `deposit` float NOT NULL DEFAULT '0',
  `fullPrice` float NOT NULL DEFAULT '0',
  `fullPriceSupplements` float NOT NULL DEFAULT '0',
  `provision` float NOT NULL DEFAULT '0',
  `fullDeposit` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `cancel_time` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `period_time_up` time NOT NULL,
  `period_time_down` time NOT NULL,
  `period_type` tinyint(1) NOT NULL,
  `period_recurrence` int(11) NOT NULL,
  `period_monday` tinyint(1) NOT NULL,
  `period_tuesday` tinyint(1) NOT NULL,
  `period_wednesday` tinyint(1) NOT NULL,
  `period_thursday` tinyint(1) NOT NULL,
  `period_friday` tinyint(1) NOT NULL,
  `period_saturday` tinyint(1) NOT NULL,
  `period_sunday` tinyint(1) NOT NULL,
  `period_month` tinyint(2) NOT NULL,
  `period_week` tinyint(1) NOT NULL,
  `period_day` tinyint(1) NOT NULL,
  `period_date_up` date NOT NULL,
  `period_end` tinyint(1) NOT NULL,
  `period_occurrences` int(11) NOT NULL,
  `period_date_down` date NOT NULL,
  `period_total` int(11) NOT NULL,
  `google_calendar_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservation_id` (`reservation_id`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_reservation_period`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_reservation_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_item_id` int(11) NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservation_item_id` (`reservation_item_id`),
  KEY `from` (`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_reservation_supplement`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_reservation_supplement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `reservation` int(11) NOT NULL,
  `supplement` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  `value` varchar(255) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `fullPrice` float NOT NULL DEFAULT '0',
  `surcharge_value` float NOT NULL DEFAULT '0',
  `surcharge_label` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `boxsCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reservation` (`reservation`),
  KEY `supplement` (`supplement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_reservation_type`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_reservation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `capacity_unit` int(11) NOT NULL DEFAULT '0',
  `time_unit` int(11) NOT NULL DEFAULT '0',
  `gap_time` int(11) NOT NULL DEFAULT '0',
  `dynamic_gap_time` tinyint(1) NOT NULL DEFAULT '0',
  `special_offer` tinyint(4) NOT NULL DEFAULT '0',
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `fix` int(11) NOT NULL DEFAULT '0',
  `fix_from` text NOT NULL,
  `book_fix_past` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `dj53b_booking_reservation_type`
--

INSERT INTO `dj53b_booking_reservation_type` (`id`, `subject`, `title`, `type`, `description`, `capacity_unit`, `time_unit`, `gap_time`, `dynamic_gap_time`, `special_offer`, `min`, `max`, `fix`, `fix_from`, `book_fix_past`) VALUES
(1, 2, 'Бронювання', 2, 'Daily desk', 0, 0, 0, 0, 0, 0, 0, 0, 'a:1:{i:0;s:3:"mon";}', 0),
(2, 1, 'Поденне бронювання', 2, 'daily', 0, 0, 0, 0, 0, 0, 0, 0, 'a:7:{i:0;s:3:"mon";i:1;s:3:"tue";i:2;s:3:"wed";i:3;s:3:"thu";i:4;s:3:"fri";i:5;s:3:"sat";i:6;s:3:"sun";}', 0),
(3, 3, 'Daily', 2, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(4, 4, 'Daily', 2, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(5, 5, 'Daily', 2, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(6, 6, 'Daily', 2, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_subject`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `introtext` text NOT NULL,
  `fulltext` text NOT NULL,
  `total_capacity` int(11) NOT NULL DEFAULT '0',
  `show_occupancy` tinyint(1) NOT NULL DEFAULT '1',
  `standard_occupancy_max` int(11) NOT NULL DEFAULT '0',
  `standard_occupancy_min` int(11) NOT NULL DEFAULT '0',
  `extra_occupancy_max` int(11) NOT NULL DEFAULT '0',
  `extra_occupancy_min` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `use_pdf_ticket` tinyint(1) NOT NULL,
  `pdf_ticket_template` text NOT NULL,
  `pdf_ticket_width` int(11) NOT NULL,
  `pdf_ticket_heigth` int(11) NOT NULL,
  `pdf_ticket_border` tinyint(1) NOT NULL,
  `pdf_ticket_font` varchar(50) NOT NULL,
  `pdf_ticket_font_size` int(11) NOT NULL,
  `pdf_ticket_format` varchar(50) NOT NULL,
  `pdf_ticket_availability` tinyint(1) NOT NULL,
  `google_calendar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `dj53b_booking_subject`
--

INSERT INTO `dj53b_booking_subject` (`id`, `parent`, `template`, `title`, `alias`, `introtext`, `fulltext`, `total_capacity`, `show_occupancy`, `standard_occupancy_max`, `standard_occupancy_min`, `extra_occupancy_max`, `extra_occupancy_min`, `state`, `featured`, `ordering`, `publish_up`, `publish_down`, `access`, `hits`, `params`, `checked_out`, `checked_out_time`, `user_id`, `use_pdf_ticket`, `pdf_ticket_template`, `pdf_ticket_width`, `pdf_ticket_heigth`, `pdf_ticket_border`, `pdf_ticket_font`, `pdf_ticket_font_size`, `pdf_ticket_format`, `pdf_ticket_availability`, `google_calendar`) VALUES
(1, 0, 1, 'Готель №1', 'hotel', '', '', 1, 1, 0, 0, 0, 0, 1, 0, 1, '2014-06-01 16:37:00', '0000-00-00 00:00:00', 1, 0, '{"price_overlay":0,"display_only_one_rtype":0,"min_limit":0,"image":"","images":"","files":"","reserving":0,"use_fix_shedule":0,"shedule_to":null,"shedule_from":null,"display_capacity":0,"rlimit_count":0,"rlimit_days":0,"rlimit_set":0,"night_booking":0,"night_booking_from":null,"night_booking_to":null,"keywords":"","description":"","book_over_timeliness":0,"single_deposit":0,"single_deposit_type":0,"single_deposit_include_supplements":0,"volume_discount":"{}","early_booking_discount":"{}","member_discount":"{\\"1\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"6\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"7\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"2\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"3\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"4\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"5\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"8\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"}}","agent_provision":"{}","minimum_capacity":0,"google_maps":"off","google_maps_address":"","google_maps_width":0,"google_maps_heigth":0,"google_maps_zoom":"","google_maps_code":"","google_maps_display":"","tax":"","show_contact_form":0,"contact_email":"","tax_rate_id":"-1","display_who_reserve":""}', 0, '0000-00-00 00:00:00', 160, 0, '', 0, 0, 0, '', 0, '', 0, ''),
(2, 1, 1, 'Номер типу "люкс"', 'nomer-luks', '', '', 1, 1, 0, 0, 0, 0, 1, 0, 1, '2014-05-30 16:37:00', '0000-00-00 00:00:00', 1, 2, '{"price_overlay":1,"display_only_one_rtype":1,"min_limit":0,"image":"","images":"","files":"1-1.jpg::1::1","reserving":0,"use_fix_shedule":0,"shedule_to":null,"shedule_from":null,"display_capacity":0,"rlimit_count":0,"rlimit_days":0,"rlimit_set":0,"night_booking":0,"night_booking_from":null,"night_booking_to":null,"keywords":"","description":"","book_over_timeliness":0,"single_deposit":0,"single_deposit_type":0,"single_deposit_include_supplements":0,"volume_discount":"{}","early_booking_discount":"{}","member_discount":"{\\"1\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"6\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"7\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"2\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"3\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"4\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"5\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"},\\"8\\":{\\"value\\":\\"\\",\\"type\\":\\"0\\"}}","agent_provision":"{}","minimum_capacity":0,"google_maps":"off","google_maps_address":"","google_maps_width":0,"google_maps_heigth":0,"google_maps_zoom":"","google_maps_code":"","google_maps_display":"","tax":"","show_contact_form":0,"contact_email":"","tax_rate_id":"-1","display_who_reserve":""}', 0, '0000-00-00 00:00:00', 160, 0, '', 0, 0, 0, '', 0, '', 0, ''),
(3, 4, 2, 'Škoda Octavia Combi 2,0 TDI', 'skoda-octavia-combi-2-tdi-1', 'The Škoda Octavia Combi has enjoyed extraordinary popularity among  drivers for many years. Therefore, all the model''s versions were built  with regard to modern technology and customers’ wishes.<br /><br />The new  Škoda Octavia Combi offers not only all the benefits of the previous  generation, such as quality workmanship, timeless design and voluminous  luggage space, but also has new design elements, new technical elements  and a greater degree of safety. It can satisfy varied wishes and needs.  It is classic and modern. Still unique, yet different.\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_divTextArea" class="andromedaCRColumnTextArea2">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_backgroundImageDisplay">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_divHeader" class="andromedaCRTextHeader2"><strong>Self-confident appearance</strong></div>\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_divText" class="andromedaCRColumnText2 lexicon">\r\n<p><strong>The dynamic front </strong>with a dominant mask and newly-shaped headlights, the <strong>elegant lines </strong>of the chassis and the <strong>robust rear bumper </strong>with reflectors in an integrated spoiler give the new Octavia an even more confident appearance.<br /><br /><strong>The redesigned bumper </strong>optically  expands the front of the car and at the top smoothly follows on from  the newly designed grill on the opening for the radiator. When viewed  from the front, the <strong>front headlights with the word Octavia</strong> on a decorative inside bar will certainly attract attention.<br /><br /><strong>The new wing mirrors </strong>bring not only a greater useful surface, but also have a function that electronically folds them towards the body. The <strong>rear lights </strong>are equipped with new covers, but, after being lit up, retain the C-shape typical for Škoda.<br /><br /><strong>The palette of colours </strong>is supplemented by a pair of quite new metallic shades. The&nbsp;<strong>Aqua Blue </strong>and <strong>Arctic Green </strong>brilliantly reflect contemporary trends in the world of colours.</p>\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_divTextArea" class="andromedaCRColumnTextArea2">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_backgroundImageDisplay">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_divHeader" class="andromedaCRTextHeader2"><strong>Advanced technology</strong></div>\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_divText" class="andromedaCRColumnText2 lexicon">\r\n<p>The new Octavia Combi develops all the excellent properties of  its predecessor and gives space for the wide use of advanced  technologies.<br /><br /><strong>The progressive safety systems</strong>, but also the new elements, materials, quality of workmanship and arrangement of the spacious interior, together with <strong>great handling</strong>, enhance the feeling of comfort and safety.<br /><br />The new Octavia Combi now offers a quite <strong>new design for three- and four-spoke steering wheels</strong>, and the car <strong>radio</strong> and satellite <strong>navigation</strong> are also definitely worth mentioning. <strong>The instrument panel</strong>, with&nbsp;the Maxi DOT display and white under-lighting, provides perfectly legible data directly in the driver’s eye line.<br /><br />The new Octavia Combi can also boast a wide range of <strong>more powerful and economical engines</strong>, as well as a range of modern mechanical and automatic <strong>transmissions</strong>.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 1, 0, 0, 0, 0, 1, 0, 1, '2010-12-16 08:49:00', '0000-00-00 00:00:00', 1, 515, 'image=octavia-combi-gray-anthracite.jpg\r\nimages=oc-combi-1.jpg;oc-combi-2.jpg;oc-combi-3.jpg;oc-combi-4-1.jpg;oc-combi-5.jpg;oc-combi-7.jpg;oc-combi-8.jpg;oc-combi-9.jpg;oc-combi-6.jpg', 62, '2011-01-13 12:31:16', 0, 0, '', 0, 0, 0, '', 0, '', 0, ''),
(4, 0, 2, 'Car', 'car', '', '', 0, 1, 0, 0, 0, 0, 1, 0, 1, '2010-12-16 08:43:00', '0000-00-00 00:00:00', 1, 0, 'image=car1541.jpg', 0, '0000-00-00 00:00:00', 0, 0, '', 0, 0, 0, '', 0, '', 0, ''),
(5, 6, 3, 'Škoda Octavia Combi 2,0 TDI', 'skoda-octavia-combi-2-tdi-1', 'The Škoda Octavia Combi has enjoyed extraordinary popularity among  drivers for many years. Therefore, all the model''s versions were built  with regard to modern technology and customers’ wishes.<br /><br />The new  Škoda Octavia Combi offers not only all the benefits of the previous  generation, such as quality workmanship, timeless design and voluminous  luggage space, but also has new design elements, new technical elements  and a greater degree of safety. It can satisfy varied wishes and needs.  It is classic and modern. Still unique, yet different.\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_divTextArea" class="andromedaCRColumnTextArea2">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_backgroundImageDisplay">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_divHeader" class="andromedaCRTextHeader2"><strong>Self-confident appearance</strong></div>\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl00_divText" class="andromedaCRColumnText2 lexicon">\r\n<p><strong>The dynamic front </strong>with a dominant mask and newly-shaped headlights, the <strong>elegant lines </strong>of the chassis and the <strong>robust rear bumper </strong>with reflectors in an integrated spoiler give the new Octavia an even more confident appearance.<br /><br /><strong>The redesigned bumper </strong>optically  expands the front of the car and at the top smoothly follows on from  the newly designed grill on the opening for the radiator. When viewed  from the front, the <strong>front headlights with the word Octavia</strong> on a decorative inside bar will certainly attract attention.<br /><br /><strong>The new wing mirrors </strong>bring not only a greater useful surface, but also have a function that electronically folds them towards the body. The <strong>rear lights </strong>are equipped with new covers, but, after being lit up, retain the C-shape typical for Škoda.<br /><br /><strong>The palette of colours </strong>is supplemented by a pair of quite new metallic shades. The&nbsp;<strong>Aqua Blue </strong>and <strong>Arctic Green </strong>brilliantly reflect contemporary trends in the world of colours.</p>\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_divTextArea" class="andromedaCRColumnTextArea2">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_backgroundImageDisplay">\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_divHeader" class="andromedaCRTextHeader2"><strong>Advanced technology</strong></div>\r\n<div id="ctl00_PlaceHolderMain_ctl04_ctl00_ctl01_divText" class="andromedaCRColumnText2 lexicon">\r\n<p>The new Octavia Combi develops all the excellent properties of  its predecessor and gives space for the wide use of advanced  technologies.<br /><br /><strong>The progressive safety systems</strong>, but also the new elements, materials, quality of workmanship and arrangement of the spacious interior, together with <strong>great handling</strong>, enhance the feeling of comfort and safety.<br /><br />The new Octavia Combi now offers a quite <strong>new design for three- and four-spoke steering wheels</strong>, and the car <strong>radio</strong> and satellite <strong>navigation</strong> are also definitely worth mentioning. <strong>The instrument panel</strong>, with&nbsp;the Maxi DOT display and white under-lighting, provides perfectly legible data directly in the driver’s eye line.<br /><br />The new Octavia Combi can also boast a wide range of <strong>more powerful and economical engines</strong>, as well as a range of modern mechanical and automatic <strong>transmissions</strong>.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 1, 0, 0, 0, 0, 1, 0, 1, '2010-12-16 08:49:00', '0000-00-00 00:00:00', 1, 515, 'image=octavia-combi-gray-anthracite.jpg\r\nimages=oc-combi-1.jpg;oc-combi-2.jpg;oc-combi-3.jpg;oc-combi-4-1.jpg;oc-combi-5.jpg;oc-combi-7.jpg;oc-combi-8.jpg;oc-combi-9.jpg;oc-combi-6.jpg', 62, '2011-01-13 12:31:16', 0, 0, '', 0, 0, 0, '', 0, '', 0, ''),
(6, 0, 3, 'Car', 'car', '', '', 0, 1, 0, 0, 0, 0, 1, 0, 1, '2010-12-16 08:43:00', '0000-00-00 00:00:00', 1, 0, 'image=car1541.jpg', 0, '0000-00-00 00:00:00', 0, 0, '', 0, 0, 0, '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_supplement`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_supplement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  `options` text NOT NULL,
  `empty` tinyint(4) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `price` text NOT NULL,
  `member_discount` text NOT NULL,
  `surcharge_value` float NOT NULL DEFAULT '0',
  `surcharge_label` varchar(255) NOT NULL,
  `capacity_multiply` tinyint(4) NOT NULL DEFAULT '1',
  `capacity_max` int(11) unsigned NOT NULL DEFAULT '0',
  `capacity_min` int(11) unsigned NOT NULL DEFAULT '0',
  `unit_multiply` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `dj53b_booking_supplement`
--

INSERT INTO `dj53b_booking_supplement` (`id`, `ordering`, `subject`, `title`, `description`, `type`, `options`, `empty`, `paid`, `price`, `member_discount`, `surcharge_value`, `surcharge_label`, `capacity_multiply`, `capacity_max`, `capacity_min`, `unit_multiply`) VALUES
(1, 0, 3, 'Color', '', 1, 'Black\r\nSilver\r\nWhite\r\nBlue', 0, 0, '', '', 0, '', 1, 0, 0, 0),
(2, 0, 3, 'GPS', '', 2, '', 0, 1, '30', '', 0, '', 1, 0, 0, 0),
(3, 0, 3, 'Seat', '', 1, 'Leather\r\nSuede', 1, 1, '20', '', 0, '', 1, 0, 0, 0),
(4, 0, 5, 'Color', '', 1, 'Black\r\nSilver\r\nWhite\r\nBlue', 0, 0, '', '', 0, '', 1, 0, 0, 0),
(5, 0, 3, 'Player', '', 1, 'CD\r\nCD/DVD', 1, 2, '10\r\n15', '', 0, '', 1, 0, 0, 0),
(6, 0, 5, 'Color', '', 1, 'Black\r\nSilver\r\nWhite\r\nBlue', 0, 0, '', '', 0, '', 1, 0, 0, 0),
(7, 0, 5, 'GPS', '', 2, '', 0, 1, '30', '', 0, '', 1, 0, 0, 0),
(8, 0, 5, 'Seat', '', 1, 'Leather\r\nSuede', 1, 1, '20', '', 0, '', 1, 0, 0, 0),
(9, 0, 7, 'Color', '', 1, 'Black\r\nSilver\r\nWhite\r\nBlue', 0, 0, '', '', 0, '', 1, 0, 0, 0),
(10, 0, 5, 'Player', '', 1, 'CD\r\nCD/DVD', 1, 2, '10\r\n15', '', 0, '', 1, 0, 0, 0),
(11, 2, 2, 'Вечеря', '', 2, '', 0, 1, '50', '{"1":{"value":"","type":"0"},"6":{"value":"","type":"0"},"7":{"value":"","type":"0"},"2":{"value":"","type":"0"},"3":{"value":"","type":"0"},"4":{"value":"","type":"0"},"5":{"value":"","type":"0"},"8":{"value":"","type":"0"}}', 0, '', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_template`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_template` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `xml` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_booking_template`
--

INSERT INTO `dj53b_booking_template` (`id`, `params`, `xml`) VALUES
(1, '{"calendars":"monthly","shortest_interval":"","num_months":""}', '<?xml version="1.0"?>\n<form name="&#x413;&#x43E;&#x442;&#x435;&#x43B;&#x44C;" id="1"><fields name="params"><fieldset><field name="1" type="list" default="" label="&#x421;&#x43F;&#x430;&#x43B;&#x44C;&#x43D;&#x438;&#x445; &#x43C;&#x456;&#x441;&#x446;&#x44C;" description="" searchable="1" filterable="1" objects="1" object="1" icon="accommodation.png"><option value="1"/><option value="2"/><option value="3"/><option value="4"/></field><field name="3" type="checkbox" default="" label="&#x425;&#x430;&#x440;&#x447;&#x443;&#x432;&#x430;&#x43D;&#x43D;&#x44F;" description="" searchable="1" filterable="1" objects="1" object="1" icon="dinner.png"/><field name="5" type="checkbox" default="" label="&#x421;&#x443;&#x43F;&#x443;&#x442;&#x43D;&#x438;&#x43A;&#x43E;&#x432;&#x435; &#x422;&#x412;" description="" searchable="1" filterable="1" objects="1" object="1" icon="television.png"/><field name="6" type="checkbox" default="" label="&#x421;&#x430;&#x43D;-&#x432;&#x443;&#x437;&#x43E;&#x43B;" description="" searchable="1" filterable="1" objects="1" object="1" icon="toilet.png"/><field name="7" type="checkbox" default="" label="&#x421;&#x43D;&#x456;&#x434;&#x430;&#x43D;&#x43E;&#x43A;" description="" searchable="1" filterable="1" objects="1" object="1" icon="coffee.png"/></fieldset></fields></form>\n'),
(2, 'calendars=monthly', '<?xml version="1.0" encoding="utf-8"?>\n<form name="Car" id="2">\n	<fields name="params"><fieldset>\n		<field objects="1" object="1" name="1" type="checkbox" default="" label="Airbags" description="" searchable="1" filterable="1" icon="" />\n		<field objects="1" object="1" name="2" type="checkbox" default="" label="Radio" description="" searchable="1" filterable="1" icon="" />\n		<field objects="1" object="1" name="3" type="checkbox" default="" label="Air Conditioning" description="" searchable="1" filterable="1" icon="" />\n		<field objects="1" object="1" name="4" type="list" default="" label="Transmission" description="" searchable="1" filterable="1" icon="">\n			<option value="4-gear man." />\n			<option value="5-gear man." />\n			<option value="6-gear man." />\n			<option value="7-gear man." />\n			<option value="4-gear automatic" />\n			<option value="5-gear automatic" />\n			<option value="6-gear automatic" />\n			<option value="7-gear automatic" />\n		</field>\n		<field objects="1" object="1" name="5" type="list" default="" label="Passengers" description="" searchable="1" filterable="1" icon="">\n			<option value="1" />\n			<option value="2" />\n			<option value="3" />\n			<option value="4" />\n			<option value="5" />\n			<option value="6" />\n			<option value="7" />\n			<option value="8" />\n		</field>\n		<field objects="1" object="1" name="6" type="text" default="" label="Luggage Compartment" description="" searchable="1" filterable="0" icon="" />\n		<field objects="1" object="1" name="7" type="list" default="" label="Classification" description="" searchable="1" filterable="1" icon="">\n			<option value="Compact" />\n			<option value="Mid-size" />\n			<option value="Mid-size luxury" />\n			<option value="Full-size" />\n			<option value="Full-size luxury" />\n		</field>\n	</fieldset></fields>\n</form>'),
(3, 'calendars=monthly', '<?xml version="1.0" encoding="utf-8"?>\n<form name="Car" id="3">\n	<fields name="params"><fieldset>\n		<field objects="1" object="1" name="1" type="checkbox" default="" label="Airbags" description="" searchable="1" filterable="1" icon="" />\n		<field objects="1" object="1" name="2" type="checkbox" default="" label="Radio" description="" searchable="1" filterable="1" icon="" />\n		<field objects="1" object="1" name="3" type="checkbox" default="" label="Air Conditioning" description="" searchable="1" filterable="1" icon="" />\n		<field objects="1" object="1" name="4" type="list" default="" label="Transmission" description="" searchable="1" filterable="1" icon="">\n			<option value="4-gear man." />\n			<option value="5-gear man." />\n			<option value="6-gear man." />\n			<option value="7-gear man." />\n			<option value="4-gear automatic" />\n			<option value="5-gear automatic" />\n			<option value="6-gear automatic" />\n			<option value="7-gear automatic" />\n		</field>\n		<field objects="1" object="1" name="5" type="list" default="" label="Passengers" description="" searchable="1" filterable="1" icon="">\n			<option value="1" />\n			<option value="2" />\n			<option value="3" />\n			<option value="4" />\n			<option value="5" />\n			<option value="6" />\n			<option value="7" />\n			<option value="8" />\n		</field>\n		<field objects="1" object="1" name="6" type="text" default="" label="Luggage Compartment" description="" searchable="1" filterable="0" icon="" />\n		<field objects="1" object="1" name="7" type="list" default="" label="Classification" description="" searchable="1" filterable="1" icon="">\n			<option value="Compact" />\n			<option value="Mid-size" />\n			<option value="Mid-size luxury" />\n			<option value="Full-size" />\n			<option value="Full-size luxury" />\n		</field>\n	</fieldset></fields>\n</form>');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_template_1`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_template_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1` varchar(255) NOT NULL,
  `3` tinyint(4) NOT NULL,
  `5` tinyint(4) NOT NULL,
  `6` tinyint(4) NOT NULL,
  `7` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `dj53b_booking_template_1`
--

INSERT INTO `dj53b_booking_template_1` (`id`, `1`, `3`, `5`, `6`, `7`) VALUES
(1, '3', 0, 0, 0, 0),
(2, '4', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_template_2`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_template_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1` tinyint(4) NOT NULL,
  `2` tinyint(4) NOT NULL,
  `3` tinyint(4) NOT NULL,
  `4` varchar(255) NOT NULL,
  `5` varchar(255) NOT NULL,
  `6` varchar(255) NOT NULL,
  `7` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `dj53b_booking_template_2`
--

INSERT INTO `dj53b_booking_template_2` (`id`, `1`, `2`, `3`, `4`, `5`, `6`, `7`) VALUES
(4, 0, 0, 0, '4-gear man.', '', '', ''),
(3, 1, 1, 1, '6-gear man.', '5', '605-1665 l', 'Mid-size');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_template_3`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_template_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `1` tinyint(4) NOT NULL,
  `2` tinyint(4) NOT NULL,
  `3` tinyint(4) NOT NULL,
  `4` varchar(255) NOT NULL,
  `5` varchar(255) NOT NULL,
  `6` varchar(255) NOT NULL,
  `7` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `dj53b_booking_template_3`
--

INSERT INTO `dj53b_booking_template_3` (`id`, `1`, `2`, `3`, `4`, `5`, `6`, `7`) VALUES
(6, 0, 0, 0, '4-gear man.', '', '', ''),
(5, 1, 1, 1, '6-gear man.', '5', '605-1665 l', 'Mid-size');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_template_value`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_template_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Дамп данных таблицы `dj53b_booking_template_value`
--

INSERT INTO `dj53b_booking_template_value` (`id`, `value`) VALUES
(38, '4-degrees automat'),
(34, '4-degrees mech.'),
(46, '4-gear automatic'),
(42, '4-gear man.'),
(39, '5-degrees automat'),
(35, '5-degrees mech.'),
(47, '5-gear automatic'),
(43, '5-gear man.'),
(40, '6-degrees automat'),
(36, '6-degrees mech.'),
(48, '6-gear automatic'),
(44, '6-gear man.'),
(41, '7-degrees automat'),
(37, '7-degrees mech.'),
(49, '7-gear automatic'),
(45, '7-gear man.'),
(32, 'Air Conditioning'),
(30, 'Airbags'),
(56, 'Bathroom'),
(55, 'Beds'),
(63, 'Classification'),
(64, 'Compact'),
(54, 'Dimensions (m)'),
(66, 'Full-size'),
(68, 'Full-size luxury'),
(52, 'Luggage Compartment'),
(51, 'Luggage Compartment (min/max)'),
(65, 'Mid-size'),
(67, 'Mid-size luxury'),
(60, 'Minibar'),
(58, 'No'),
(50, 'Passengers'),
(31, 'Radio'),
(62, 'Restaurant (distance)'),
(53, 'Spectators Capacity'),
(61, 'Television'),
(59, 'Toilet'),
(33, 'Transmission'),
(57, 'Yes'),
(16, 'Інформація'),
(1, 'Бронювання номерів'),
(17, 'Готель'),
(73, 'Сан-вузол'),
(74, 'Сніданок'),
(2, 'Спальних місць'),
(72, 'Супутникове ТВ'),
(29, 'ТВ, с-в, холодильник'),
(3, 'Харчування');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_booking_user_config`
--

CREATE TABLE IF NOT EXISTS `dj53b_booking_user_config` (
  `user_id` int(11) NOT NULL,
  `payments` text NOT NULL,
  `config` text NOT NULL,
  `calendar` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_categories`
--

CREATE TABLE IF NOT EXISTS `dj53b_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `dj53b_categories`
--

INSERT INTO `dj53b_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 23, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 35, 1, 13, 14, 1, 'novyny', 'com_content', 'Новини', 'novyny', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 160, '2014-06-04 13:16:51', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 36, 1, 15, 16, 1, 'forel', 'com_content', 'Форель', 'forel', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 160, '2014-06-04 13:58:56', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 37, 1, 17, 18, 1, 'prozhyvannia', 'com_content', 'Проживання', 'prozhyvannia', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 160, '2014-06-04 13:59:05', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 38, 1, 19, 20, 1, 'knyha-vidhukiv', 'com_content', 'Книга відгуків', 'knyha-vidhukiv', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 160, '2014-06-04 13:59:13', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 39, 1, 21, 22, 1, 'fotohalereia', 'com_content', 'Фотогалерея', 'fotohalereia', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 160, '2014-06-04 13:59:23', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_contact_details`
--

CREATE TABLE IF NOT EXISTS `dj53b_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dj53b_contact_details`
--

INSERT INTO `dj53b_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Олександр', 'oleksandr', 'адміністратор', 'бульвар Просвіти 12/32', 'Тернопіль', '', 'Україна', '', '', '', '', 'images/IMG_20140602_142342_1.jpg', NULL, 'olexandr1603@gmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":null,"linkb_name":"","linkb":null,"linkc_name":"","linkc":null,"linkd_name":"","linkd":null,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '(067)66-212-85', '', '', '', '', '*', '2014-06-06 00:31:28', 160, '', '2014-06-06 00:41:26', 160, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_content`
--

CREATE TABLE IF NOT EXISTS `dj53b_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `dj53b_content`
--

INSERT INTO `dj53b_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 40, 'Номери та ціни', 'nomery-ta-tsiny', '', '<h1 class="short_head notab" style="padding-left: 30px; text-align: center;"><span style="font-size: x-large;">Номери та ціни:</span><span style="text-decoration: underline;"><br /></span></h1>\r\n<p><span style="text-decoration: underline;"> </span></p>\r\n<h4 class="short_head notab" style="padding-left: 30px;"><span style="text-decoration: underline;">Заборонені (і строго дотримуватися) в готелі "ФОРЕЛЕВИЙ ДВІР"</span></h4>\r\n<ul class="namTab" style="padding-left: 30px;">\r\n<li style="padding-left: 30px;"><span style="font-family: ''arial black'', ''avant garde''; color: #34bccb;">Куріння сигарет, наркотиків або кальян</span></li>\r\n<li style="padding-left: 30px;"><span style="font-family: ''arial black'', ''avant garde''; color: #34bccb;">Домашні тварини</span></li>\r\n</ul>\r\n<h4 class="short_head notab" style="padding-left: 30px;">Примітка</h4>\r\n<ul class="namTab" style="padding-left: 30px;">\r\n<li style="padding-left: 30px;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';">У вартість номера входить сніданок.</span></li>\r\n</ul>\r\n<p style="padding-left: 30px;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"> </span></p>\r\n<h4 style="padding-left: 30px;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="color: #c73846;">До ваших послуг номер люкс який включає в себе:</span><br /></span></h4>\r\n<ul style="padding-left: 30px;">\r\n<li style="padding-left: 30px;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde''; font-size: large;">2 спальні кімнати</span></li>\r\n<li style="padding-left: 30px;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde''; font-size: large;">гардероб</span></span></li>\r\n<li style="padding-left: 30px;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span><span style="color: #34bccb; font-family: ''arial black'', ''avant garde''; font-size: large;">сан-вузол</span></span></span></li>\r\n<li style="padding-left: 30px;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span><span><span style="color: #34bccb; font-family: ''arial black'', ''avant garde''; font-size: large;">кімната відпочинку</span></span></span></span></li>\r\n</ul>\r\n<h4 style="padding-left: 30px;"> </h4>\r\n<h6 style="padding-left: 30px;"><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;">Кімната відпочинку:</span></span></span></span></h6>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"><img src="images/hotel/5.JPG" border="0" alt="" style="float: left;" /><img src="images/hotel/3.JPG" border="0" alt="" /> </span></span></span></span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> </span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;">Кімната 1:</span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"><img src="images/hotel/1_1.jpg" border="0" alt="" /> <img src="images/hotel/1.jpg" border="0" alt="" /> </span></span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> </span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> </span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> </span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> </span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> </span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> </span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde''; font-size: large;"> Кімната 2:</span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"><img src="images/hotel/2.jpg" border="0" alt="" /> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> </span></span></span></p>\r\n<p><span style="font-family: ''book antiqua'', palatino; font-size: large;"><span style="color: #34bccb; font-family: ''arial black'', ''avant garde'';"><span style="font-family: ''arial black'', ''avant garde''; color: #ffcc99;"> Сан-вузол:</span></span></span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"><img src="images/hotel/4.JPG" border="0" alt="" /></span></span></p>\r\n<p><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde'';"><span style="font-size: large;"> </span></span></p>\r\n<p style="padding-left: 30px;"><span style="color: #ffcc99; font-family: ''arial black'', ''avant garde'';"> </span></p>\r\n<p style="padding-left: 30px;"> </p>', '', 1, 0, 0, 10, '2014-06-04 14:00:22', 160, '', '2014-06-08 13:14:46', 160, 0, '0000-00-00 00:00:00', '2014-06-04 14:00:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 0, 0, '', '', 1, 37, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 41, 'Приготування', 'pryhotuvannia', '', '<div class="fletter fletter2" style="padding-left: 30px;">\r\n<h4 style="padding-left: 30px;"><span style="font-size: large; font-family: arial, helvetica, sans-serif;"><span style="font-size: xx-large;">    З</span>гадуючи ресторан «Форелевий двір», виникає бажання розповісти про нього так, ніби він людина…</span></h4>\r\n</div>\r\n<p style="padding-left: 30px;"><span style="font-size: large; font-family: arial, helvetica, sans-serif;"><em>Він має свій настрій — кожної пори року, кожного дня, кожної години різний: коли мрійливий чи задумливий; буває безтурботно веселий чи піднесений; інколи романтичний чи зворушливий, — <strong>однак завжди співзвучно з мелодією бажань вашої душі.</strong></em></span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: large; font-family: arial, helvetica, sans-serif;"><em>Він має свій стиль і шарм — внутрішню витончену красу та самобутню привабливість, яку годі пояснити словами, але яку відчуваєш, заворожено споглядаючи деталі оригінального інтер’єру.</em></span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: large; font-family: arial, helvetica, sans-serif;"><em>Він має свою харизму — природний талант відчувати і розуміти вас; впевненість у собі та життєву мудрість. І це викликає до нього щиру повагу та захоплення.</em></span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: large; font-family: arial, helvetica, sans-serif;"><em>Він відчуває ваш намір і створює чарівну атмосферу: для відпочинку, розваг, спокійних роздумів, ділових перемовин, дружніх бесід, чи романтичних освідчень.</em></span></p>\r\n<div class="inbl" style="padding-left: 30px;">\r\n<h4><span style="font-size: large; font-family: arial, helvetica, sans-serif;">     І складно сказати, в чому секрет ресторану «ФОРЕЛЕВИЙ ДВІР»: </span></h4>\r\n<h4><span style="font-size: large; font-family: arial, helvetica, sans-serif;">     як йому вдається бути для кожного з нас рідним та близьким?</span></h4>\r\n<h4><span style="font-size: large; font-family: arial, helvetica, sans-serif;">     Та чи варто шукати відповідь на це запитання?</span></h4>\r\n<p style="padding-left: 90px;"><span style="font-size: large; font-family: arial, helvetica, sans-serif;"><img src="images/dvr19.jpg" border="0" alt="" width="288" height="216" /> <img src="images/IMG_4704.jpg" border="0" alt="" width="288" height="216" /></span></p>\r\n<p style="padding-left: 150px;"> </p>\r\n<p style="padding-left: 60px;"><span style="font-size: large; font-family: arial, helvetica, sans-serif;">      <img src="images/ 016.jpg" border="0" alt="" width="288" height="217" />  <img src="images/DSC03978.JPG" border="0" alt="" width="287" height="215" /></span></p>\r\n</div>', '', -2, 0, 0, 2, '2014-06-04 14:00:56', 160, '', '2014-06-06 13:56:40', 160, 0, '0000-00-00 00:00:00', '2014-06-04 14:00:56', '0000-00-00 00:00:00', '{"image_intro":"images\\/photo\\/dvr19.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 42, 'Проживання', 'prozhyvannia', '', '<div class="fletter fletter2">\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;"><span style="font-size: xx-large;">      З</span>дається, що готель «ФОРЕЛЕВИЙ ДВІР» просто виріс тут серед Карпатських гір. </span></p>\r\n</div>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">І хоча цей дім зводили людські руки без чарів та магії, все ж готель сповнений химерної доброї і</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">безкінечної карпатської казки.</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">Адже готель збудовано з дерева, каменю, глини – природних матеріалів, що несуть в собі тепло,</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">красу та затишок рідної землі.</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">Готель має усього 3 номери. І це дозволяє створити особливу, в дечому ексклюзивну атмосферу.</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">Ви швидко звикнете до свого номеру-кімнати. Вам здаватиметься, що ви приїхали в гості до</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">рідних і близьких вам людей, котрі відчувають серцем кожну вашу потребу.</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">Переступивши поріг готелю «ЗОЛОТА ФОРЕЛЬ», ви відчуєте його дивовижну ауру, яка</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">заколисує вас приємним відпочинком.</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">Ви ступаєте крок за кроком в очікуванні дива. І воно з’являється – приходить з легким відчуттям</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">дитячої безтурботності.</span></p>\r\n<p style="text-align: left; padding-left: 30px;"><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">А далі</span><span style="color: #ffcc00; font-family: ''book antiqua'', palatino; font-size: medium;">… в кожного своя казка…</span></p>', '', 1, 0, 0, 2, '2014-06-04 14:01:18', 160, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-04 14:01:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 43, 'Рибна ловля', 'rybna-lovlia', '', '<p> </p>\r\n<p style="padding-left: 30px;"><span style="font-family: ''times new roman'', times; color: #00ffff; font-size: large;">    <span style="font-size: xx-large;">Б</span>ажання відпочити від щоденної біганини, закинувши вудочку, приходить будь-якої пори року: восени, взимку, навесні, влітку.</span></p>\r\n<blockquote style="background-image: url(''http://forellenhof.url.ph/templates/b2/images/postquote.png'');">\r\n<p style="padding-left: 30px;"><span style="font-family: ''times new roman'', times; color: #00ffff; font-size: large;">Хочу на риболовлю…Хочу зняти з себе тугу краватку, нове взуття і стрес. Хочу забути про все і поїхати у Карпати на риболовлю у розважально-оздоровчий комплекс «ФОРЕЛЕВИЙ ДВІР».</span></p>\r\n</blockquote>\r\n<p style="padding-left: 30px;"><span style="font-family: ''times new roman'', times; color: #00ffff; font-size: large;">Приїздіть навесні і восени, влітку і взимку, на вихідні і в будні, на свято і просто так.</span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: large;"><span style="font-family: ''times new roman'', times; color: #00ffff;">«ФОРЕЛЕВИЙ ДВІР» завжди готова здивувати вас приємним відпочинком і надзвичайно захопливою риболовлею. </span><span style="font-family: ''times new roman'', times; color: #00ffff;">Приїздіть прямо з офісу, виїжджайте з дому – одразу, як тільки виникло бажання порибалити. Візьміть лише </span><span style="font-family: ''times new roman'', times; color: #00ffff;">найважливіше – себе. Усе інше вже чекає на вас у комплексі «ФОРЕЛЕВИЙ ДВІР»: </span><span style="font-family: ''times new roman'', times; color: #00ffff;">Свіже, чисте і прозоре </span><span style="color: #00ffff; font-family: ''times new roman'', times;">повітря. Щира, пишна і велична краса Карпатських Гір. Стрімка, холодна і бадьора гірська річка. І царська </span><span style="font-family: ''times new roman'', times; color: #00ffff;">риба – Її величність Золота форель. </span><span style="font-family: ''times new roman'', times; color: #00ffff;">У розважально-оздоровчому комплексі «ФОРЕЛЕВИЙ ДВІР» щедрий </span><span style="font-family: ''times new roman'', times; color: #00ffff;">улов вам гарантовано. Так само як і смачне, королівське, частування. </span><span style="font-family: ''times new roman'', times; color: #00ffff;">Ви власноруч зловили форель, і вже </span><span style="font-family: ''times new roman'', times; color: #00ffff;">за декілька хвилин вона перетворюється на кулінарний шедевр: свіжий, корисний, апетитний… </span><span style="color: #00ffff; font-family: ''times new roman'', times;">Коли ви </span><span style="color: #00ffff; font-family: ''times new roman'', times;">відвідаєте комплекс «ФОРЕЛЕВИЙ ДВІР», вам захочеться поділитися своїми враженнями з друзями та </span><span style="color: #00ffff; font-family: ''times new roman'', times;">рідними. </span><span style="color: #00ffff; font-family: ''times new roman'', times;">Адже тільки наявність ставка, вудочки, підсмаженої риби та «до риби» – це ще далеко не риболовля.</span></span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: large;"><span style="color: #00ffff; font-family: ''times new roman'', times;">Риболовля – це, насамперед, привітна атмосфера, щира гостинність та дружнє спілкування. </span><span style="color: #00ffff; font-family: ''times new roman'', times;">Заради таких миттєвостей варто приїхати у комплекс «ФОРЕЛЕВИЙ ДВІР» усією родиною. </span><span style="color: #00ffff; font-family: ''times new roman'', times;">Дружина нарешті відчує захопливий азарт риболовлі…</span></span></p>\r\n<p style="padding-left: 30px;"><span style="font-size: large;"><span style="font-family: ''times new roman'', times; color: #00ffff;">Діти будуть просто в захваті після відвідин форельного господарства. Екскурсія «Від ікринки до рибинки» -</span><span style="color: #00ffff; font-family: ''times new roman'', times;">пізнавальне знайомство із живою природою. Воно краще за будь-які шкільні уроки розповідає про дивовижі </span><span style="color: #00ffff; font-family: ''times new roman'', times;">довколишнього світу…</span></span></p>\r\n<p style="padding-left: 30px;"><span style="font-family: ''times new roman'', times; color: #00ffff; font-size: large;">І разом ви будете щасливі…</span></p>\r\n<p style="padding-left: 30px;"><span style="font-family: ''times new roman'', times; color: #00ffff; font-size: large;"><img src="images/other/020.jpg" border="0" alt="" /> <img src="images/other/DSC06510.JPG" border="0" alt="" /> </span></p>', '', 1, 0, 0, 2, '2014-06-04 14:01:35', 160, '', '2014-06-08 13:13:09', 160, 0, '0000-00-00 00:00:00', '2014-06-04 14:01:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 44, 'Форель', 'forel', '', '<p style="padding-left: 60px;"><span style="color: #ffff00;"><span style="font-size: medium; font-family: ''arial black'', ''avant garde'';"><strong><span style="font-size: xx-large;">Ф</span>орель</strong></span> (<em>Salmo</em>) — <span style="font-size: medium; font-family: arial, helvetica, sans-serif;">прісноводний </span><span style="font-size: medium; font-family: arial, helvetica, sans-serif;"><a href="http://uk.wikipedia.org/wiki/%D0%A0%D1%96%D0%B4_(%D0%B1%D1%96%D0%BE%D0%BB%D0%BE%D0%B3%D1%96%D1%8F)" title="Рід (біологія)" style="text-decoration: underline; color: #ff3010;"><span style="color: #ffff00;">рід</span></a> <a href="http://uk.wikipedia.org/wiki/%D0%A0%D0%B8%D0%B1%D0%B8" title="Риби"><span style="color: #ffff00;">риб</span></a> <a href="http://uk.wikipedia.org/wiki/%D0%A0%D0%BE%D0%B4%D0%B8%D0%BD%D0%B0_(%D0%B1%D1%96%D0%BE%D0%BB%D0%BE%D0%B3%D1%96%D1%8F)" title="Родина (біологія)"><span style="color: #ffff00;">родини</span></a> <a href="http://uk.wikipedia.org/wiki/%D0%9B%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%B2%D1%96" title="Лососеві"><span style="color: #ffff00;">лососеви</span></a>х. В <a href="http://uk.wikipedia.org/wiki/%D0%A3%D0%BA%D1%80%D0%B0%D1%97%D0%BD%D0%B0" title="Україна"><span style="color: #ffff00;">Україні</span></a> поширені два</span></span></p>\r\n<p style="padding-left: 60px;"><span style="color: #ffff00;"><span style="font-size: medium; font-family: arial, helvetica, sans-serif;">види. <a href="http://uk.wikipedia.org/wiki/%D0%9F%D1%81%D1%82%D1%80%D1%83%D0%B3_%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%BA%D0%BE%D0%B2%D0%B8%D0%B9" title="Пструг струмковий"><span style="color: #ffff00;">Пструг</span></a> </span><a href="http://uk.wikipedia.org/wiki/%D0%9F%D1%81%D1%82%D1%80%D1%83%D0%B3_%D1%81%D1%82%D1%80%D1%83%D0%BC%D0%BA%D0%BE%D0%B2%D0%B8%D0%B9" title="Пструг струмковий" style="font-size: medium;"><span style="color: #ffff00;">струмковий</span></a><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> (</span><em style="font-family: arial, helvetica, sans-serif; font-size: medium; color: #ffff99;">Salmo trutta</em><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> morpha</span><em style="font-family: arial, helvetica, sans-serif; font-size: medium; color: #ffff99;">faris</em><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> Pall.) у гірських </span><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">водоймах </span><a href="http://uk.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D0%BF%D0%B0%D1%82%D0%B8" title="Карпати" style="font-size: medium;"><span style="color: #ffff00;">Карпат</span></a><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">, </span></span></p>\r\n<p style="padding-left: 60px;"><span style="color: #ffff00;"><a href="http://uk.wikipedia.org/wiki/%D0%9A%D1%80%D0%B8%D0%BC%D1%81%D1%8C%D0%BA%D0%B8%D0%B9_%D0%BF%D1%96%D0%B2%D0%BE%D1%81%D1%82%D1%80%D1%96%D0%B2" title="Кримський півострів" style="font-size: medium;"><span style="color: #ffff00;">Криму</span></a><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> та </span><a href="http://uk.wikipedia.org/wiki/%D0%9A%D0%B0%D0%B2%D0%BA%D0%B0%D0%B7" title="Кавказ" style="font-size: medium;"><span style="color: #ffff00;">Кавказу</span></a><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">; довжина </span><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">до 37,5 см, вага до 0,8 кг (іноді до 2 кг); живиться </span><a href="http://uk.wikipedia.org/wiki/%D0%91%D0%B5%D0%B7%D1%85%D1%80%D0%B5%D0%B1%D0%B5%D1%82%D0%BD%D1%96" title="Безхребетні" style="font-size: medium;"><span style="color: #ffff00;">безхребетними</span></a><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> </span></span></p>\r\n<p style="padding-left: 60px;"><span style="color: #ffff00;"><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">та дрібною рибою.</span></span><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> </span><span style="font-size: medium;"><span><a href="http://uk.wikipedia.org/wiki/%D0%9F%D1%81%D1%82%D1%80%D1%83%D0%B3_%D1%80%D0%B0%D0%B9%D0%B4%D1%83%D0%B6%D0%BD%D0%B8%D0%B9" title="Пструг райдужний"><span style="color: #ffff00;">Пстру</span></a><span style="color: #ffff00;">г</span></span><span style="color: #ffff00;"> </span></span><span style="color: #ffff00;"><a href="http://uk.wikipedia.org/wiki/%D0%9F%D1%81%D1%82%D1%80%D1%83%D0%B3_%D1%80%D0%B0%D0%B9%D0%B4%D1%83%D0%B6%D0%BD%D0%B8%D0%B9" title="Пструг райдужний" style="font-size: medium;"><span style="color: #ffff00;">райдужний</span></a><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> (</span><em style="font-family: arial, helvetica, sans-serif; font-size: medium; color: #ffff99;"><a class="mw-redirect" href="http://uk.wikipedia.org/wiki/Salmo_irideus" title="Salmo irideus"><span style="color: #ffff00;">Salmo irideus</span></a></em><span style="font-family: arial, helvetica, sans-serif; font-size: medium;"> Pall), довжина до 90 см, вага до 1,6 кг.</span></span></p>\r\n<p style="padding-left: 60px;"><span style="color: #ffff00;"><span style="font-size: medium; font-family: arial, helvetica, sans-serif;">Обидва види форелі — об''єкти розведення в холодноводних ставкових господарствах</span></span></p>\r\n<p style="padding-left: 60px;"><span style="color: #ffff00;"><span style="font-size: medium; font-family: arial, helvetica, sans-serif;">і <a class="mw-redirect" href="http://uk.wikipedia.org/wiki/%D0%A1%D0%BF%D0%BE%D1%80%D1%82%D0%B8%D0%B2%D0%BD%D0%B5_%D1%80%D0%B8%D0%B1%D0%B0%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE" title="Спортивне рибальство"><span style="color: #ffff00;">спортивного</span></a> </span><a class="mw-redirect" href="http://uk.wikipedia.org/wiki/%D0%A1%D0%BF%D0%BE%D1%80%D1%82%D0%B8%D0%B2%D0%BD%D0%B5_%D1%80%D0%B8%D0%B1%D0%B0%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D0%BE" title="Спортивне рибальство" style="font-size: medium;"><span style="color: #ffff00;">рибальства</span></a><span style="font-family: arial, helvetica, sans-serif; font-size: medium;">.</span></span></p>\r\n<table style="padding-left: 60px;" border="0">\r\n<tbody style="padding-left: 60px;">\r\n<tr style="padding-left: 60px;">\r\n<td style="padding-left: 60px;"><img src="images/DSC06510.JPG" border="0" alt="" width="363" height="180" /></td>\r\n<td style="padding-left: 60px;"><img src="images/dvr19.jpg" border="0" alt="" width="242" height="182" /></td>\r\n</tr>\r\n<tr style="padding-left: 60px;">\r\n<td style="padding-left: 60px;"><a href="index.php/forel/rybna-lovlia"> <span style="font-size: medium; color: #ffcc00;">Детальніше про ловлю</span></a></td>\r\n<td style="padding-left: 60px;"><span style="color: #ffcc00; font-size: medium;"><a href="index.php/forel/pryhotuvannia"><span style="color: #ffcc00;">Детальніше про приготування</span></a></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="padding-left: 90px;"><span style="color: #ffff99;"><span style="font-size: medium; font-family: arial, helvetica, sans-serif;"> </span></span></p>', '', 1, 0, 0, 2, '2014-06-04 14:02:18', 160, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-04 14:02:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 45, 'Приготування', 'pryhotuvannia2', '', '<div class="fletter fletter2">\r\n<h4><span><span>    З</span>гадуючи ресторан «Форелевий двір», виникає бажання розповісти про нього так, ніби він людина…</span></h4>\r\n</div>\r\n<p><span><em>Він має свій настрій — кожної пори року, кожного дня, кожної години різний: коли мрійливий чи задумливий; буває безтурботно веселий чи піднесений; інколи романтичний чи зворушливий, — <strong>однак завжди співзвучно з мелодією бажань вашої душі.</strong></em></span></p>\r\n<p><span><em>Він має свій стиль і шарм — внутрішню витончену красу та самобутню привабливість, яку годі пояснити словами, але яку відчуваєш, заворожено споглядаючи деталі оригінального інтер’єру.</em></span></p>\r\n<p><span><em>Він має свою харизму — природний талант відчувати і розуміти вас; впевненість у собі та життєву мудрість. І це викликає до нього щиру повагу та захоплення.</em></span></p>\r\n<p><span><em>Він відчуває ваш намір і створює чарівну атмосферу: для відпочинку, розваг, спокійних роздумів, ділових перемовин, дружніх бесід, чи романтичних освідчень.</em></span></p>\r\n<div class="inbl">\r\n<h4><span>     І складно сказати, в чому секрет ресторану «ФОРЕЛЕВИЙ ДВІР»: </span></h4>\r\n<h4><span>     як йому вдається бути для кожного з нас рідним та близьким?</span></h4>\r\n<h4><span>     Та чи варто шукати відповідь на це запитання?</span></h4>\r\n<p><span> </span></p>\r\n<p> </p>\r\n<p><span>        <img src="images/other/dvr19.jpg" border="0" alt="" /> <img src="images/other/IMG_4704.jpg" border="0" alt="" /> </span></p>\r\n</div>', '', 1, 0, 0, 2, '2014-06-08 13:04:57', 160, '', '2014-06-08 13:10:29', 160, 0, '0000-00-00 00:00:00', '2014-06-08 13:04:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 0, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `dj53b_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_content_rating`
--

CREATE TABLE IF NOT EXISTS `dj53b_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `dj53b_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_extensions`
--

CREATE TABLE IF NOT EXISTS `dj53b_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10069 ;

--
-- Дамп данных таблицы `dj53b_extensions`
--

INSERT INTO `dj53b_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"uk-UA"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"1","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"true","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `dj53b_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"June 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, '', 'language', 'uk-UA', '', 0, 1, 0, 0, '{"legacy":false,"name":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 (\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430)","type":"language","creationDate":"23.09.2012","author":"Joomla! Ukraine","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved. Copyright (C) 2006 - 2012 Joomla! Ukraine. All rights reserved.","authorEmail":"denys@joomla-ua.org","authorUrl":"joomla-ua.org","version":"2.5.7.2","description":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u043a\\u043b\\u0430\\u0434 \\u0444\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0457 \\u0447\\u0430\\u0441\\u0442\\u0438\\u043d\\u0438 Joomla 2.5.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, '', 'language', 'uk-UA', '', 1, 1, 0, 0, '{"legacy":false,"name":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0430 (\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430)","type":"language","creationDate":"23.09.2012","author":"Joomla! Ukraine","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved. Copyright (C) 2006 - 2012 Joomla! Ukraine. All rights reserved.","authorEmail":"denys@joomla-ua.org","authorUrl":"www.joomla-ua.org","version":"2.5.7.2","description":"\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0435\\u043a\\u043b\\u0430\\u0434 \\u0444\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0457 \\u0447\\u0430\\u0441\\u0442\\u0438\\u043d\\u0438 Joomla 2.5.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'TinyMCE uk-UA', 'file', 'tinymce_uk-ua', '', 0, 1, 0, 0, '{"legacy":false,"name":"TinyMCE uk-UA","type":"file","creationDate":"23.07.2012","author":"Joomla! Ukraine","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"denys@joomla-ua.org","authorUrl":"www.joomla-ua.org","version":"3.5.5","description":"Ukrainian Language Package for TinyMCE 3.4.9 in Joomla 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Joomla! Україна Admin Menu', 'module', 'mod_jumenu', '', 1, 1, 2, 0, '{"legacy":false,"name":"Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430 Admin Menu","type":"module","creationDate":"23.09.2012","author":"Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430","copyright":"Copyright (C) 2006-2012 Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430","authorEmail":"denys@joomla.org\\"","authorUrl":"http:\\/\\/www.joomla.org\\/","version":"1.20.0","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Новини Joomla! Україна', 'module', 'mod_junews', '', 1, 1, 2, 0, '{"legacy":false,"name":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u0438 Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430","type":"module","creationDate":"23.09.2012","author":"Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430","copyright":"Copyright (C) 2006-2012 Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430","authorEmail":"denys@joomla.org\\"","authorUrl":"http:\\/\\/www.joomla.org\\/","version":"1.20.0","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'uk-UA', 'package', 'pkg_uk-UA', '', 0, 1, 1, 0, '{"legacy":false,"name":"Ukrainian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.7.2","description":"<div style=\\"background: #fff; border: 1px #ccc solid; padding: 15px; overflow: hidden;\\"><iframe style=\\"float: right; width: 70%; height: 560px; overflow-y: auto;\\" id=\\"julatest\\" src=\\"http:\\/\\/joomla-ua.org\\/latest\\" frameborder=\\"0\\" scrolling=\\"no\\"><\\/iframe><h2 style=\\"padding: 0 0 8px 0; margin: 0;font-weight: normal;\\">\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0438\\u0439 \\u043f\\u0430\\u043a\\u0435\\u0442 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0456\\u0437\\u0430\\u0446\\u0456\\u0457 Joomla 2.5<\\/h2><p>\\u041e\\u0444\\u0456\\u0446\\u0456\\u0439\\u043d\\u0430 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0456\\u0437\\u0430\\u0446\\u0456\\u044f Joomla!<\\/p><div id=\\"system-message-container\\"><dl id=\\"system-message\\"><dt class=\\"message\\"><\\/dt><dd class=\\"message message\\"><ul><li><strong>\\u0423\\u0432\\u0430\\u0433\\u0430! \\u0406\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0456\\u044f \\u043f\\u0440\\u043e \\u0432\\u0438\\u043a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0430\\u043d\\u043d\\u044f \\u043b\\u043e\\u043a\\u0430\\u043b\\u0456\\u0437\\u0430\\u0446\\u0456\\u0457 \\u0432 \\u043a\\u043e\\u043c\\u0435\\u0440\\u0446\\u0456\\u0439\\u043d\\u0438\\u0445 \\u0446\\u0456\\u043b\\u044f\\u0445:<\\/strong><\\/li><\\/ul><\\/dd><\\/dl><\\/div><p style=\\"font-weight: normal;\\">\\u042f\\u043a\\u0449\\u043e \\u0412\\u0438 \\u0432\\u0438\\u043a\\u043e\\u0440\\u0438\\u0441\\u0442\\u043e\\u0432\\u0443\\u0454\\u0442\\u0435 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0443 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0456\\u0437\\u0430\\u0446\\u0456\\u044e \\u0434\\u043b\\u044f \\u043a\\u043e\\u043c\\u0435\\u0440\\u0446\\u0456\\u0439\\u043d\\u0438\\u0445 \\u0441\\u0430\\u0439\\u0442\\u0456\\u0432, \\u043c\\u0438 \\u0431\\u0443\\u0434\\u0435\\u043c\\u043e \\u0432\\u0434\\u044f\\u0447\\u043d\\u0456 \\u0437\\u0430 \\u043f\\u043e\\u0436\\u0435\\u0440\\u0442\\u0432\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443 Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430, \\u0437\\u0430 \\u0440\\u0430\\u0445\\u0443\\u043d\\u043e\\u043a \\u0432\\u0430\\u0448\\u043e\\u0433\\u043e \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0443!<\\/p><p style=\\"font-weight: normal;\\">\\u041f\\u043e\\u0436\\u0435\\u0440\\u0442\\u0432\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f \\u043e\\u0437\\u043d\\u0430\\u0447\\u0430\\u0454 \\u0434\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0430 \\u0443 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0456\\u0437\\u0430\\u0446\\u0456\\u0457 \\u043e\\u0444\\u0456\\u0446\\u0456\\u0439\\u043d\\u043e\\u0433\\u043e \\u043f\\u0430\\u043a\\u0435\\u0442\\u0443 \\u043b\\u043e\\u043a\\u0430\\u043b\\u0456\\u0437\\u0430\\u0446\\u0456\\u0457 Joomla! \\u0442\\u0430 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u043d\\u0456\\u0445 \\u0440\\u043e\\u0437\\u0448\\u0438\\u0440\\u0435\\u043d\\u044c, \\u0432\\u043a\\u043b\\u044e\\u0447\\u0430\\u044e\\u0447\\u0438 \\u043a\\u043e\\u043c\\u0435\\u0440\\u0446\\u0456\\u0439\\u043d\\u0456 \\u0440\\u043e\\u0437\\u0448\\u0438\\u0440\\u0435\\u043d\\u043d\\u044f.<\\/p><p style=\\"font-weight: normal;\\"><strong>\\u0412\\u0438 \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0437\\u0440\\u043e\\u0431\\u0438\\u0442\\u0438 \\u043f\\u043e\\u0436\\u0435\\u0440\\u0442\\u0432\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430\\u0441\\u0442\\u0443\\u043f\\u043d\\u0438\\u043c \\u0447\\u0438\\u043d\\u043e\\u043c:<\\/strong><br \\/><br \\/>WebMoney: Z162084860012 \\u0442\\u0430 R371967759323.<\\/p>\\u0414\\u0435\\u043c\\u043e: <a href=\\"http:\\/\\/demo.joomla-ua.org\\/\\">demo.joomla-ua.org<\\/a><br \\/>\\u041f\\u0456\\u0434\\u0442\\u0440\\u0438\\u043c\\u043a\\u0430: <a href=\\"http:\\/\\/joomla-ua.org\\/forum\\/\\">\\u0424\\u043e\\u0440\\u0443\\u043c Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430<\\/a><br \\/><br \\/><span style=\\"font-size: 85%;\\">2006-2012 &copy; Joomla! \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430. \\u0412\\u0441\\u0456 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0445\\u0438\\u0449\\u0435\\u043d\\u0456.<\\/span><\\/div>","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Untitled', 'template', 'untitled', '', 0, 1, 1, 0, '{"legacy":false,"name":"Untitled","type":"template","creationDate":"2014-06-04","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'frln', 'template', 'frln', '', 0, 1, 1, 0, '{"legacy":false,"name":"frln","type":"template","creationDate":"2014-06-04","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'dwsffsdf', 'template', 'dwsffsdf', '', 0, 1, 1, 0, '{"legacy":false,"name":"dwsffsdf","type":"template","creationDate":"2014-06-04","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, '5', 'template', '5', '', 0, 1, 1, 0, '{"legacy":false,"name":"5","type":"template","creationDate":"2014-06-04","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, '6', 'template', '6', '', 0, 1, 1, 0, '{"legacy":false,"name":"6","type":"template","creationDate":"2014-06-05","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, '7', 'template', '7', '', 0, 1, 1, 0, '{"legacy":false,"name":"7","type":"template","creationDate":"2014-06-05","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'Sponsor Door', 'module', 'mod_sponsordoor', '', 0, 1, 0, 0, '{"legacy":false,"name":"Sponsor Door","type":"module","creationDate":"June 2011","author":"Vijay Padsumbiya","copyright":"Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.","authorEmail":"info@pulseinfotech.com","authorUrl":"www.pulseextensions.com","version":"1.1","description":"Sponsor Door","group":""}', '{"container_width":"100%","container_left_margin":"10px","container_top_margin":"10px","container_bottom_margin":"10px","@spacer":"","thumb_width":"160px","thumb_height":"160px","thumb_margin":"10px","thumb_font_color":"#fff","thumb_font_size":"11px","thumb_background_font_color":"#000","thumb_border_color":"#313131","thumb_background_color":"#999999","number_of_block":"15","random_option":"1","click_here":"ClickHere","link_type":"1","link_open_window":"0","image_1":"1.jpg","caption_1_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_1":"http:\\/\\/www.pulseinfotech.com\\/","image_2":"2.jpg","caption_2_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_2":"http:\\/\\/www.pulseinfotech.com\\/","image_3":"3.jpg","caption_3_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_3":"http:\\/\\/www.pulseinfotech.com","image_4":"4.jpg","caption_4_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ","readmore_link_4":"http:\\/\\/www.pulseinfotech.com","image_5":"5.jpg","caption_5_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_5":"http:\\/\\/www.pulseinfotech.com","image_6":"6.jpg","caption_6_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_6":"http:\\/\\/www.pulseinfotech.com\\/","image_7":"7.jpg","caption_7_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_7":"http:\\/\\/www.pulseinfotech.com","image_8":"8.jpg","caption_8_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_8":"http:\\/\\/www.pulseinfotech.com","image_9":"9.jpg","caption_9_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_9":"http:\\/\\/www.pulseinfotech.com","image_10":"10.jpg","caption_10_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_10":"http:\\/\\/www.mysql.com","image_11":"11.jpg","caption_11_desc":"One of the biggest computer manufacturers","readmore_link_11":"http:\\/\\/www.hp.com","image_12":"12.jpg","caption_12_desc":"The most popular network of social media portals and services","readmore_link_12":"http:\\/\\/www.yahoo.com","image_13":"13.jpg","caption_13_desc":"The biggest networking and communications technology manufacturer","readmore_link_13":"http:\\/\\/www.cisco.com","image_14":"14.jpg","caption_14_desc":"A popular video-centric social networking site","readmore_link_14":"http:\\/\\/www.vimeo.com","image_15":"15.jpg","caption_15_desc":"Imaging and optical technology manufacturer","readmore_link_15":"http:\\/\\/www.canon.com"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'System - Disable Mootools', 'plugin', 'disable_mootools', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Disable Mootools","type":"plugin","creationDate":"Jan 2011","author":"Union D","copyright":"Copyright (C) 2006 - 2011 Union D. All rights reserved.","authorEmail":"v.galyanin@gmail.com","authorUrl":"www.union-d.ru","version":"1.0","description":"Disable\\/enable loading mootools scripts","group":""}', '{"enabled":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'PLG_SPTHUMBNAIL', 'plugin', 'spthumbnail', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_SPTHUMBNAIL","type":"plugin","creationDate":"October 2012","author":"SP CYEND","copyright":"SP CYEND - All rights reserved.","authorEmail":"info@cyend.com","authorUrl":"http:\\/\\/www.cyend.com","version":"2.0.0","description":"PLG_SPTHUMBNAIL_XML_DESCRIPTION","group":""}', '{"thumbnails_for":"2","class":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'Multithumb', 'plugin', 'multithumb', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Multithumb","type":"plugin","creationDate":"2012-Nov-17","author":"Boris Komraz | Until Version 2.0 alpha 3 for Joomla 1.5 Martin Larsen","copyright":"(C) 2007-2008 Martin Larsen, (C) 2009-2011 Boris Komraz","authorEmail":"bkomraz1@gmail.com","authorUrl":"http:\\/\\/joomla.rjews.net\\/bk-multithumb","version":"3.2.0","description":"MULTITHUMB_DESCR","group":""}', '{"popup_type":"modal","min_img_size":"50x50","thumb_proportions":"bestfit","thumb_bg":"#FFFFFF","force_popup":"1","enable_thumbs":"1","only_classes":"","use_image_size":"0","thumb_size":"350x200","thumb_size_first":"","leading_num":"1","thumbclass":"multithumb","css":" .multithumb {     margin: 5px;     float: left;  }","enable_blogs":"1","only_classes_blog":"","blog_mode":"link","blog_img_txt":"0","use_image_size_blog":"0","blog_size":"200x150","blog_size_leading":"","blog_leading_num":"1","thumbclass_blog":"multithumb_blog","css_blog":".multithumb_blog {    margin: 5px;    float: left; }","border_style":"none","border_size":"2px","border_color":"#000000","caption":"0","caption_pos":"bottom","caption_type":"title","caption_class":"mtCapStyle","caption_css":" .mtCapStyle {     font-weight: bold;    color: black;    background-color: #ddd;    margin: 0px 4px;    text-align:center;    white-space: pre-wrap; }","group_images":"0","group_images_gal":"1","max_thumbnails":"1","more_images":"1","more_images_text":"More images...","gallery_thumb_size":"","num_cols":"3","gallery_class":"mtGallery","gallery_css":" .mtGallery {     margin: 5px;     align: center;     float: none;  }","caption_type_gallery_iptc":"1","caption_type_gallery_filename":"0","caption_type_gallery_title":"2","caption_type_gallery_alt":"3","resize":"0","full_width":"800","full_height":"600","image_proportions":"bestfit","image_bg":"#000000","magnify_type":"1","zoomin_file":"plugins\\/content\\/multithumb\\/zoomin.png","zoomin_position":"0","watermark_type":"0","watermark":"1","watermark_file":"","watermark_horiz_type":"center","watermark_left":"","watermark_vert_type":"middle","watermark_top":"","transparency_type":"alpha","transparent_color":"#000000","transparency":"25","scramble":"off","slimbox_headers":"1","slimbox_loop":"0","slimbox_overlayOpacity":"0.8","slimbox_overlayFadeDuration":"400","slimbox_resizeDuration":"400","slimbox_initialWidth":"250","slimbox_initialHeight":"250","slimbox_imageFadeDuration":"400","slimbox_captionAnimationDuration":"400","slimbox_counterText":"Image {x} of {y}","slimbox_closeKeys":"[27, 88, 67]","slimbox_previousKeys":"[37, 80]","slimbox_nextKeys":"[39, 78]","prettyphoto_headers":"1","prettyphoto_animationSpeed":"normal","prettyphoto_opacity":"0.80","prettyphoto_showTitle":"true","prettyphoto_allowresize":"true","prettyphoto_counter_separator_label":"\\/","prettyphoto_theme":"light_rounded","prettyphoto_horizontal_padding":"20","prettyphoto_modal":"false","prettyphoto_slideshow":"false","prettyphoto_autoplay_slideshow":"false","prettyphoto_overlay_gallery":"false","shadowbox_headers":"1","shadowbox_animate":"1","shadowbox_animateFade":"1","shadowbox_animSequence":"sync","shadowbox_autoplayMovies":"1","shadowbox_continuous":"0","shadowbox_counterLimit":"10","shadowbox_counterType":"default","shadowbox_displayCounter":"1","shadowbox_displayNav":"1","shadowbox_enableKeys":"1","shadowbox_fadeDuration":"0.35","shadowbox_flashParams":"bgcolor:#000000","shadowbox_flashVars":"","shadowbox_flashVersion":"9.0.0","shadowbox_handleOversize":"resize","shadowbox_handleUnsupported":"link","shadowbox_initialHeight":"160","shadowbox_initialWidth":"320","shadowbox_modal":"0","shadowbox_overlayColor":"#000","shadowbox_overlayOpacity":"0.5","shadowbox_resizeDuration":"0.35","shadowbox_showOverlay":"1","shadowbox_showMovieControls":"1","shadowbox_slideshowDelay":"0","shadowbox_viewportPadding":"20","iload_headers":"1","iload_fontCss":"font:11px Tahoma,Arial,Helvetica,sans-serif;color:#aaa;","iload_imageDescCss":"display: block;","iload_imageNameCss":"display: block; font-weight: 700; color: # 999;","iload_imageSetCss":"display: block;","iload_imageInfoCss":"display: block;","iload_zIndex":"9999","iload_splitSign":"|","iload_bigButtonsDisabledOpacity":"30","iload_bigButtonsPassiveOpacity":"100","iload_bigButtonsActiveOpacity":"70","iload_minButtonsPassiveOpacity":"50","iload_minButtonsActiveOpacity":"100","iload_overlayAppearTime":"200","iload_overlayDisappearTime":"200","iload_containerAppearTime":"300","iload_containerDisappearTime":"300","iload_containerResizeTime":"300","iload_contentAppearTime":"350","iload_contentDisappearTime":"200","iload_loaderAppearTime":"200","iload_loaderDisappearTime":"200","iload_containerCenterTime":"300","iload_panelAppearTime":"300","iload_panelDisappearTime":"300","iload_arrowsTime":"230","iload_paddingFromScreenEdge":"35","iload_contentPadding":"0","iload_cornersSize":"18","iload_overlayOpacity":"95","iload_overlayBackground":"#000000","iload_containerColor":"#ffffff","iload_panelType":"1","iload_hidePanelWhenScale":"true","iload_closeOnClickWhenSingle":"true","iload_forceCloseButton":"true","iload_arrows":"true","iload_imageNav":"true","iload_showSize":"true","iload_forceFullSize":"false","iload_keyboard":"true","iload_dragAndDrop":"true","iload_preloadNeighbours":"true","iload_info":"true","iload_showName":"true","iload_showDesc":"true","iload_showSet":"true","iload_imageSetText":"['' [N]  from  [T] '', ''in the group [S]'']","iload_fileInfoText":"File format  [F]  size  [W] x [H]  pixels","iload_tips":"''Previous'', ''Next'', ''Close'', ''Slideshow'', ''Pause'', ''Original'', ''Fit to window''","iload_slideshowTime":"3000","iload_slideshowRound":"true","iload_slideshowClose":"false","iload_errorWidth":"240","iload_errorName":"Error.","iload_errorText":"Could not load image. Perhaps the address specified is not valid or the server is temporarily unavailable.","iload_errorNameCss":"display: block; font-weight: 700; color: # 999; padding-bottom: 4px;","iload_errorDescCss":"display: block; padding-bottom: 4px;","jquery_headers":"1","jquery_version":"1.4.4","img_type":"","quality":"80","allow_img_toolbar":"0","IS_ARTICLE_RULE":"option=com_content&view=article,option=com_flexicontent&view=items","is_blog_rule":"option=com_content&view=featured,option=com_content&layout=blog","only_tagged":"0","exclude_tagged":"1","error_msg":"text","time_limit":"","memory_limit":"default"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Vinaora Nivo Slider', 'module', 'mod_vt_nivo_slider', '', 0, 1, 0, 0, '{"legacy":false,"name":"Vinaora Nivo Slider","type":"module","creationDate":"Aug 2013","author":"VINAORA","copyright":"Copyright (C) 2011-2013 VINAORA. All rights reserved.","authorEmail":"info@vinaora.com","authorUrl":"http:\\/\\/vinaora.com","version":"2.5.30","description":"MOD_VT_NIVO_SLIDER_XML_DESCRIPTION","group":""}', '{"demo":"-1","theme":"default","slide_width":"auto","slide_height":"auto","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"fold","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"1","controlNav":"1","pauseOnHover":"1","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"all","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","cache":"1","cache_time":"900","cachemode":"static","jquery_source":"local","jquery_version":"latest","controlNavThumbs":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Fox Contact', 'module', 'mod_foxcontact', '', 0, 1, 0, 0, '{"legacy":false,"name":"Fox Contact","type":"module","creationDate":"Unknown","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"2.0.15","description":"MOD_FOXCONTACT_DESCRIPTION","group":""}', '{"formwidth":"100","formunit":"%","customhtml0display":"1","customhtml0order":"-1000","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"2","labelswidth":"230","labelsunit":"px","sender0display":"2","sender0order":"5","sender1display":"2","sender1order":"10","sender1isemail":"1","senderwidth":"85","senderunit":"%","text0display":"1","text0order":"15","text1display":"0","text1order":"20","text2display":"0","text2order":"25","text3display":"0","text3order":"30","text4display":"0","text4order":"35","text5display":"0","text5order":"40","text6display":"0","text6order":"45","text7display":"0","text7order":"50","text8display":"0","text8order":"55","text9display":"0","text9order":"60","textwidth":"85","textunit":"%","dropdown0display":"1","dropdown0order":"65","dropdown1display":"0","dropdown1order":"70","dropdown2display":"0","dropdown2order":"75","dropdownwidth":"85","dropdownunit":"%","textarea0display":"1","textarea0order":"80","textarea1display":"0","textarea1order":"85","textarea2display":"0","textarea2order":"90","textareawidth":"85","textareaheight":"180","textareaunit":"%","checkbox0display":"1","checkbox0order":"95","checkbox1display":"0","checkbox1order":"100","checkbox2display":"0","checkbox2order":"105","checkbox3display":"0","checkbox3order":"110","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","uploadmax_file_size":"10000","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittype":"0","submiticon":"","resetbutton":"0","resettype":"0","reseticon":"","email_sent_action":"0","email_sent_textdisplay":"1","copy_to_submitter":"1","email_copy_summary":"0","spam_check":"1","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","stylesheet":"neon.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'com_foxcontact', 'component', 'com_foxcontact', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_FOXCONTACT","type":"component","creationDate":"Unknown","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"2.0.15","description":"COM_FOXCONTACT_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'JV GWeather', 'module', 'mod_jv_gweather', '', 0, 1, 0, 0, '{"legacy":true,"name":"JV GWeather","type":"module","creationDate":"Oct 2009","author":"JoomVision","copyright":"Copyright (c) 2008 - 2009 JoomVision. All rights reserved.","authorEmail":"info@joomvision.com","authorUrl":"www.joomvision.com","version":"1.5.1","description":"JV GWeather (Google API)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'booking', 'component', 'com_booking', '', 1, 1, 0, 0, '{"legacy":false,"name":"BOOKING","type":"component","creationDate":"02 May 2014","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2014 ARTIO","authorEmail":"info@artio.net","authorUrl":"http:\\/\\/www.artio.net","version":"2.2.9","description":"","group":""}', '{"parents_bookable":"0","customers_usergroup":"1","login_before_reserving":"0","enable_registration":"1","use_captcha":"0","more_reservations":"1","confirm_reservation":"0","prefill_reservation":"1","redirection_after_reservation":"0","redirection_back_reservation":"2","enable_responsive":"0","enable_jquery":"0","terms_of_contract_accept":"0","terms_of_privacy_accept":"0","locations":"0","show_occupancy_column":"1","date_type":"0","address_format":"0","popup":"slimbox","images":"\\/images\\/booking\\/","templates_icons":"\\/components\\/com_booking\\/assets\\/images\\/icons\\/","images_cache":"cache\\/com_booking\\/","jpg_quality":"85","png_quality":"9","png_filter":"0","using_prices":"2","main_currency":"EUR","last_zero":"0","decimals":"2","decimals_point":",","thousand_separator":"space","thousand_separator_char":"","price_format":"2","online_payment_expiration_time":"","b2b_tax":"0","show_total_price":"1","show_payment_status":"1","show_unit_price":"1","show_deposit_price":"1","show_price_excluding_tax":"1","show_tax":"1","use_provisions":"0","display_who_reserve":"0","show_note_in_calendar":"0","who_reserve_show_type":"1","first_day":"0","quick_navigator":"1","calendar_future_days":"0d","calendar_deep_month":"5","calendar_num_months":"1","calendar_deep_week":"20","calendar_num_weeks":"1","calendar_deep_day":"100","show_full_week":"0","week_style":"0","book_current_day":"0","hide_days_not_begin_fix_limit":"0","nights_style":"1","color_calendar_field_reserved":"","color_calendar_field_free":"","color_calendar_unavailable":"","color_calendar_box_reserved":"","show_recurrence_pattern_daily":"1","show_recurrence_pattern_weekly":"1","show_recurrence_pattern_monthly":"0","show_recurrence_pattern_yearly":"0","show_range_of_recurrence_no_end_date":"0","show_range_of_recurrence_end_after":"1","show_range_of_recurrence_end_by":"1","google_client_id":"","google_client_secret":"","google_default_calendar":"","google_event_summary":"1","list_style":"0","show_flag_featured":"1","display_thumbs_subjects_list":"1","display_thumbs_subjects_list_width":"150","display_thumbs_subjects_list_height":"","display_readmore_subjects_list":"1","display_readmore_subjects_list_length":"300","subjects_properties":"1","subjects_list_filter":"1","subjects_pagination":"1","subjects_pagination_start":"10","subjects_pagination_selector":"1","button_bookit":"1","subjects_calendar":"0","subjects_week":"0","multiple_reservations":"1","button_position":"0","cart_popup":"1","show_capacity":"0","display_image_subject_detail":"1","display_thumbs_subject_detail_width":"300","display_thumbs_subject_detail_height":"","display_gallery_subject_detail":"1","display_gallery_subject_position":"above","display_gallery_subject_style":"slideshow","gallery_slideshow_duration":"500","gallery_slideshow_shift":"3","display_gallery_thumbs_subject_detail_width":"50","display_gallery_thumbs_subject_detail_height":"50","display_gallery_preview_subject_detail_width":"600","display_gallery_preview_subject_detail_height":"","display_properties_subject_detail":"1","display_subject_back":"1","display_subject_text_position":"below_properties","prices_layout":"detailed_list","show_permanent_volume_discount":"1","show_early_booking_discount":"1","mailing_manager":"","mailing_phone":"","mailing_supplier":"","mailing_registration_client":"0","mailing_registration_manager":"0","mailing_reservation_client":"0","mailing_reservation_manager":"0","mailing_reservation_supplier":"0","mailing_status_client":"0","rs_title_before":"1","rs_firstname":"1","rs_middlename":"1","rs_surname":"1","rs_title_after":"1","rs_company":"1","rs_company_id":"1","rs_vat_id":"1","rs_street":"1","rs_city":"1","rs_country":"1","rs_zip":"1","rs_email":"1","rs_telephone":"1","rs_fax":"1","rs_note":"1","fields":"a:0:{}","artioDownloadId":"","asset_id":"com_booking"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'PLG_BOOKINGPAYMENT_BANKTRANSFER', 'plugin', 'banctransfer', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_BANKTRANSFER","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_BANKTRANSFER_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'PLG_BOOKINGPAYMENT_CASH', 'plugin', 'cash', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_CASH","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_CASH_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'PLG_BOOKINGPAYMENT_CCIDEAL', 'plugin', 'ccideal', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_CCIDEAL","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_CCIDEAL_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'PLG_BOOKINGPAYMENT_CHECKOUT', 'plugin', 'checkout', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_CHECKOUT","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_CHECKOUT_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'PLG_BOOKINGPAYMENT_CHEQUE', 'plugin', 'cheque', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_CHEQUE","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_CHEQUE_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'PLG_BOOKINGPAYMENT_CREDITCARD', 'plugin', 'creditcard', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_CREDITCARD","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_CREDITCARD_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'PLG_BOOKINGPAYMENT_DELTAPAY', 'plugin', 'deltapay', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_DELTAPAY","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_DELTAPAY_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'PLG_BOOKINGPAYMENT_MONEYBOOKERS', 'plugin', 'moneybookers', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_MONEYBOOKERS","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_MONEYBOOKERS_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'PLG_BOOKINGPAYMENT_PAYEX', 'plugin', 'payex', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_PAYEX","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_PAYEX_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'PLG_BOOKINGPAYMENT_PAYPAL', 'plugin', 'paypal', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_PAYPAL","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_PAYPAL_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'PLG_BOOKINGPAYMENT_PAYU', 'plugin', 'payu', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_PAYU","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_PAYU_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'PLG_BOOKINGPAYMENT_SOFORT', 'plugin', 'sofort', 'bookingpayment', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_BOOKINGPAYMENT_SOFORT","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"Copyright (C) 2013 ARTIO","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_PLGPAYMENT_SOFORT_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 'ARTIO Booking Customer Info', 'module', 'mod_booking_customer_info', '', 0, 1, 0, 0, '{"legacy":false,"name":"ARTIO Booking Customer Info","type":"module","creationDate":"2012-02-20","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"Display module with info about logged customer and links to customers profile,\\n        cutomers user account and list of customers reservations. If no customer logged display links\\n        to login or new registration.","group":""}', '{"cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `dj53b_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10060, 'MOD_BOOKING_ITEMS', 'module', 'mod_booking_items', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_BOOKING_ITEMS","type":"module","creationDate":"2013-05-18","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"MOD_BOOKING_ITEMS_DESC","group":""}', '{"number_items":"5","number_columns":"1","parent_item":"0","show_image":"1","thumb_width":"80","thumb_height":"80","show_desc":"1","desc_length":"100","show_price":"1","show_bookit":"1","ordering":"1","item_heading":"h4","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'ARTIO Booking Search', 'module', 'mod_booking_search', '', 0, 1, 0, 0, '{"legacy":false,"name":"ARTIO Booking Search","type":"module","creationDate":"2012-06-15","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"BOOKING_SEARCH_DESC","group":""}', '{"featured":"0","date_range":"1","time_range":"0","price_range":"0","template_area":"1","required_capacity":"0","locations":"0","properties":"0","login":"0","submit":"Search","submit_label":"","login_label":"","reset":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 'ARTIO Booking - expiration', 'plugin', 'expiration', 'booking', 0, 0, 1, 0, '{"legacy":false,"name":"ARTIO Booking - expiration","type":"plugin","creationDate":"March 2012","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"Plugin cancel expired reservations without paid deposit.","group":""}', '{"expiration_check_interval":"60","expiration_check_timestamp":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'cciDEAL Platfotm Payment Plugin for ARTIO Booking', 'plugin', 'bookingccideal', 'cciDEALPlatformCustomPayment', 0, 0, 1, 0, '{"legacy":false,"name":"cciDEAL Platfotm Payment Plugin for ARTIO Booking","type":"plugin","creationDate":"March 2012","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"Plugin updates Book-it payment status and redirect to order after processing cciDEAL payment. \\n\\tPlease, enable the plugin after install.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 'PLG_EXTENSION_BOOKINGPAYMENT', 'plugin', 'bookingpayment', 'extension', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_EXTENSION_BOOKINGPAYMENT","type":"plugin","creationDate":"2013-07-01","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"1.0.0","description":"PLG_EXTENSION_BOOKINGPAYMENT_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 'Search - Booking', 'plugin', 'booking', 'search', 0, 0, 1, 0, '{"legacy":false,"name":"Search - Booking","type":"plugin","creationDate":"January 2011","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"SEARCH_BOOKING_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 'PLG_SYSTEM_BOOKING', 'plugin', 'booking', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_SYSTEM_BOOKING","type":"plugin","creationDate":"2013-05-14","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"2.0.0","description":"PLG_SYSTEM_BOOKING_DESC","group":""}', '{"cron_schedule":"60"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 'PLG_SYSTEM_DISMOOT', 'plugin', 'dismoot', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"PLG_SYSTEM_DISMOOT","type":"plugin","creationDate":"2013-07-02","author":"ARTIO s.r.o.","copyright":"","authorEmail":"info@artio.cz","authorUrl":"http:\\/\\/www.artio.cz","version":"1.0.0","description":"PLG_SYSTEM_DISMOOT_DESC","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 'USER_ARTIO_BOOKING', 'plugin', 'booking', 'user', 0, 0, 1, 0, '{"legacy":false,"name":"USER_ARTIO_BOOKING","type":"plugin","creationDate":"2012-03-26","author":"ARTIO s.r.o.","copyright":"Copyright (C) ARTIO s.r.o. All rights reserved.","authorEmail":"info@artio.net","authorUrl":"www.artio.net","version":"2.0.0","description":"USER_ARTIO_BOOKING_DESC","group":""}', '{"msg":"After your registration in Joomla were create customer account in Booking component. You are now able to make reservations."}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_filters`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dj53b_finder_taxonomy`
--

INSERT INTO `dj53b_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_terms`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_finder_terms_common`
--

INSERT INTO `dj53b_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_finder_types`
--

CREATE TABLE IF NOT EXISTS `dj53b_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_foxcontact_sessions`
--

CREATE TABLE IF NOT EXISTS `dj53b_foxcontact_sessions` (
  `id` varchar(32) NOT NULL,
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `index` (`id`,`cid`,`mid`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_foxcontact_settings`
--

CREATE TABLE IF NOT EXISTS `dj53b_foxcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_foxcontact_settings`
--

INSERT INTO `dj53b_foxcontact_settings` (`name`, `value`) VALUES
('captchadrawer', 'use_gd'),
('dns', 'disabled'),
('mimefilter', 'disabled');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_languages`
--

CREATE TABLE IF NOT EXISTS `dj53b_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dj53b_languages`
--

INSERT INTO `dj53b_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_menu`
--

CREATE TABLE IF NOT EXISTS `dj53b_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

--
-- Дамп данных таблицы `dj53b_menu`
--

INSERT INTO `dj53b_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 79, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'Головна', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
(102, 'mainmenu', 'Форель', 'forel', '', 'forel', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["9"],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 48, 0, '*', 0),
(103, 'mainmenu', 'Рибна ловля', 'rybna-lovlia', '', 'forel/rybna-lovlia', 'index.php?option=com_content&view=article&id=4', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0),
(104, 'mainmenu', 'Приготування', 'pryhotuvannia', '', 'forel/pryhotuvannia', 'index.php?option=com_content&view=article&id=6', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(106, 'mainmenu', 'Проживання', 'prozhyvannia', '', 'prozhyvannia', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["10"],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 52, 0, '*', 0),
(107, 'mainmenu', 'Номери та ціни', 'nomery-ta-tsiny', '', 'prozhyvannia/nomery-ta-tsiny', 'index.php?option=com_content&view=article&id=1', 'component', 1, 106, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(108, 'mainmenu', 'Книга відгуків', 'knyha-vidhukiv', '', 'knyha-vidhukiv', 'index.php?option=com_foxcontact&view=foxcontact', 'component', 1, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"to_address":"olexandr1603@gmail.com","cc_address":"","bcc_address":"","email_subject":"","jmessenger_user":"0","page_subheading":"\\u0421\\u043a\\u0430\\u0440\\u0433\\u0438 \\u0442\\u0430 \\u043f\\u0440\\u043e\\u043f\\u043e\\u0437\\u0438\\u0446\\u0456\\u0457","formwidth":"100","formunit":"%","customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","labelswidth":"230","labelsunit":"px","sender0":"\\u0412\\u0430\\u0448\\u0435 \\u0456\\u043c''\\u044f:","sender0display":"2","sender0order":"5","sender1":"\\u0412\\u0430\\u0448\\u0430 \\u0430\\u0434\\u0440\\u0435\\u0441\\u0430 e-mail:","sender1display":"2","sender1order":"10","sender1isemail":"1","senderwidth":"270","senderunit":"px","text0":"\\u041c\\u0456\\u0441\\u0442\\u043e:","text0display":"1","text0order":"15","text1":"\\u0414\\u0430\\u0442\\u0430 \\u0432\\u0456\\u0434\\u043f\\u043e\\u0447\\u0438\\u043d\\u043a\\u0443:","text1display":"0","text1order":"20","text2":"","text2display":"0","text2order":"25","text3":"","text3display":"0","text3order":"30","text4":"","text4display":"0","text4order":"35","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","textwidth":"270","textunit":"px","dropdown0":"","dropdown0display":"0","dropdown0values":"","dropdown0order":"65","dropdown1":"","dropdown1display":"0","dropdown1values":"","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdownwidth":"280","dropdownunit":"px","textarea0":"","textarea0display":"2","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textareawidth":"270","textareaheight":"180","textareaunit":"px","checkbox0":"","checkbox0display":"0","checkbox0order":"95","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","upload":"","uploadmax_file_size":"10000","submittext":"\\u0412\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u0438","submittype":"0","submiticon":"mail-small.png","resetbutton":"0","resettext":"","resettype":"0","reseticon":"-1","email_sent_action":"0","email_sent_text":"","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"","email_copy_text":"","email_copy_summary":"0","spam_check":"1","spam_words":"","spam_detected_text":"","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptcha":"","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","stylesheet":"neon.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(109, 'mainmenu', 'Фотогалерея', 'fotohalereia', '', 'fotohalereia', 'index.php?option=com_foxcontact&view=foxcontact', 'component', 1, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"to_address":"olexandr1603@gmail.com","cc_address":"ribalka_forel@ukr.net","bcc_address":"","email_subject":"","jmessenger_user":"0","page_subheading":"\\u041f\\u043e\\u0434\\u0456\\u043b\\u0438\\u0442\\u0438\\u0441\\u044f \\u0432\\u043b\\u0430\\u0441\\u043d\\u0438\\u043c\\u0438 \\u0441\\u0432\\u0456\\u0442\\u043b\\u0438\\u043d\\u0430\\u043c\\u0438","formwidth":"100","formunit":"%","customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","labelswidth":"230","labelsunit":"px","sender0":"\\u0412\\u0430\\u0448\\u0435 \\u0456\\u043c''\\u044f:","sender0display":"2","sender0order":"5","sender1":"\\u0412\\u0430\\u0448\\u0430 \\u0430\\u0434\\u0440\\u0435\\u0441\\u0430 e-mail:","sender1display":"2","sender1order":"10","sender1isemail":"1","senderwidth":"270","senderunit":"px","text0":"\\u041c\\u0456\\u0441\\u0442\\u043e:","text0display":"1","text0order":"15","text1":"\\u0414\\u0430\\u0442\\u0430 \\u0432\\u0456\\u0434\\u043f\\u043e\\u0447\\u0438\\u043d\\u043a\\u0443:","text1display":"1","text1order":"20","text2":"","text2display":"0","text2order":"25","text3":"","text3display":"0","text3order":"30","text4":"","text4display":"0","text4order":"35","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","textwidth":"270","textunit":"px","dropdown0":"","dropdown0display":"0","dropdown0values":"","dropdown0order":"65","dropdown1":"","dropdown1display":"0","dropdown1values":"","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdownwidth":"280","dropdownunit":"px","textarea0":"\\u0412\\u0430\\u0448\\u0456 \\u0432\\u0440\\u0430\\u0436\\u0435\\u043d\\u043d\\u044f:","textarea0display":"1","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textareawidth":"270","textareaheight":"180","textareaunit":"px","checkbox0":"","checkbox0display":"0","checkbox0order":"95","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"1","uploadmethod":"2","upload":"","uploadmax_file_size":"2000","submittext":"\\u0412\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u0438","submittype":"0","submiticon":"arrow.png","resetbutton":"0","resettext":"","resettype":"0","reseticon":"-1","email_sent_action":"0","email_sent_text":"","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"","email_copy_text":"","email_copy_summary":"0","spam_check":"1","spam_words":"","spam_detected_text":"","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptcha":"","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","stylesheet":"neon.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(111, 'mainmenu', 'Контактна інформація', 'kontaktna-informatsiia', '', 'kontaktna-informatsiia', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(112, 'main', 'COM_FOXCONTACT_MENU', 'com-foxcontact-menu', '', 'com-foxcontact-menu', 'index.php?option=com_foxcontact', 'component', 0, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_foxcontact/images/email-16.png', 0, '', 59, 60, 0, '', 1),
(113, 'main', 'ARTIO_BOOKING', 'artio-booking', '', 'artio-booking', 'index.php?option=com_booking', 'component', 0, 1, 1, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/logo-16.png', 0, '', 61, 76, 0, '', 1),
(114, 'main', 'CONTROL_PANEL', 'control-panel', '', 'artio-booking/control-panel', 'index.php?option=com_booking', 'component', 0, 113, 2, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/logo-16.png', 0, '', 62, 63, 0, '', 1),
(115, 'main', 'RESERVATIONS', 'reservations', '', 'artio-booking/reservations', 'index.php?option=com_booking&view=reservations', 'component', 0, 113, 2, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/icon-16-category.png', 0, '', 64, 65, 0, '', 1),
(116, 'main', 'BOOKABLE_ITEMS', 'bookable-items', '', 'artio-booking/bookable-items', 'index.php?option=com_booking&view=subjects', 'component', 0, 113, 2, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/icon-16-object.png', 0, '', 66, 67, 0, '', 1),
(117, 'main', 'TEMPLATES', 'templates', '', 'artio-booking/templates', 'index.php?option=com_booking&view=templates', 'component', 0, 113, 2, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/icon-16-template.png', 0, '', 68, 69, 0, '', 1),
(118, 'main', 'MANAGERS', 'managers', '', 'artio-booking/managers', 'index.php?option=com_booking&view=admins', 'component', 0, 113, 2, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/icon-16-cbadmins.png', 0, '', 70, 71, 0, '', 1),
(119, 'main', 'CUSTOMERS', 'customers', '', 'artio-booking/customers', 'index.php?option=com_booking&view=customers', 'component', 0, 113, 2, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/icon-16-user.png', 0, '', 72, 73, 0, '', 1),
(120, 'main', 'HELP_AND_SUPPORT', 'help-and-support', '', 'artio-booking/help-and-support', 'index.php?option=com_booking&startOffset=3', 'component', 0, 113, 2, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_booking/assets/images/icon-16-help.png', 0, '', 74, 75, 0, '', 1),
(121, 'mainmenu', 'Бронювання', 'broniuvannia', '', 'broniuvannia', 'index.php?option=com_booking&view=subjects&id=1:kimnaty', 'component', 1, 1, 1, 10046, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"list_style":"","display_thumbs_subjects_list":"","display_thumbs_subjects_list_width":"","display_thumbs_subjects_list_height":"","display_readmore_subjects_list":"","display_readmore_subjects_list_length":"","subjects_properties":"","subjects_list_filter":"","subjects_pagination":"","subjects_pagination_start":"","subjects_pagination_selector":"","button_bookit":"","subjects_calendar":"","subjects_calendar_skin":"","subjects_calendar_start":"","subjects_calendar_deep":"","subjects_week":"","subjects_week_deep":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_menu_types`
--

CREATE TABLE IF NOT EXISTS `dj53b_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dj53b_menu_types`
--

INSERT INTO `dj53b_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Головне меню', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_messages`
--

CREATE TABLE IF NOT EXISTS `dj53b_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `dj53b_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_modules`
--

CREATE TABLE IF NOT EXISTS `dj53b_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Дамп данных таблицы `dj53b_modules`
--

INSERT INTO `dj53b_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Авторизація', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Joomla! Україна Admin Menu', '', '', 99, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jumenu', 1, 0, '', 1, '*'),
(88, 'Новини Joomla! Україна', '', '', 99, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_junews', 1, 0, '', 1, '*'),
(89, 'Меню', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sponsordoor', 1, 1, '{"container_width":"100%","container_left_margin":"100px","container_top_margin":"10px","container_bottom_margin":"10px","thumb_width":"160px","thumb_height":"160px","thumb_margin":"40px","thumb_font_color":"#fff","thumb_font_size":"22px","thumb_background_font_color":"#000","thumb_border_color":"#333d47","thumb_background_color":"#a52315","number_of_block":"5","random_option":"1","click_here":"\\u043f\\u0435\\u0440\\u0435\\u0439\\u0442\\u0438","link_type":"1","link_open_window":"0","image_1":"1.jpg","caption_1_desc":"\\u0420\\u0438\\u0431\\u043d\\u0430 \\u043b\\u043e\\u0432\\u043b\\u044f","readmore_link_1":"http:\\/\\/forellenhof\\/index.php\\/forel\\/rybna-lovlia","image_2":"2.jpg","caption_2_desc":"\\u041f\\u0440\\u0438\\u0433\\u043e\\u0442\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f","readmore_link_2":"http:\\/\\/forellenhof\\/index.php\\/forel\\/pryhotuvannia","image_3":"3.jpg","caption_3_desc":"\\u0413\\u043e\\u0442\\u0435\\u043b\\u044c","readmore_link_3":"http:\\/\\/forellenhof\\/index.php\\/prozhyvannia","image_4":"4.jpg","caption_4_desc":"\\u041a\\u043d\\u0438\\u0433\\u0430 \\u0432\\u0456\\u0434\\u0433\\u0443\\u043a\\u0456\\u0432","readmore_link_4":"http:\\/\\/forellenhof\\/index.php\\/knyha-vidhukiv","image_5":"5.jpg","caption_5_desc":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0430 \\u0456\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0456\\u044f","readmore_link_5":" http:\\/\\/forellenhof\\/index.php\\/kontaktna-informatsiia","image_6":"6.jpg","caption_6_desc":"\\u0424\\u043e\\u0442\\u043e\\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f","readmore_link_6":"http:\\/\\/forellenhof\\/index.php\\/fotohalereia","image_7":"7.jpg","caption_7_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_7":"http:\\/\\/www.pulseinfotech.com","image_8":"8.jpg","caption_8_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_8":"http:\\/\\/www.pulseinfotech.com","image_9":"9.jpg","caption_9_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_9":"http:\\/\\/www.pulseinfotech.com","image_10":"10.jpg","caption_10_desc":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","readmore_link_10":"http:\\/\\/www.mysql.com","image_11":"11.jpg","caption_11_desc":"One of the biggest computer manufacturers","readmore_link_11":"http:\\/\\/www.hp.com","image_12":"12.jpg","caption_12_desc":"The most popular network of social media portals and services","readmore_link_12":"http:\\/\\/www.yahoo.com","image_13":"13.jpg","caption_13_desc":"The biggest networking and communications technology manufacturer","readmore_link_13":"http:\\/\\/www.cisco.com","image_14":"14.jpg","caption_14_desc":"A popular video-centric social networking site","readmore_link_14":"http:\\/\\/www.vimeo.com","image_15":"15.jpg","caption_15_desc":"Imaging and optical technology manufacturer","readmore_link_15":"http:\\/\\/www.canon.com"}', 0, '*'),
(90, 'Vinaora Nivo Slider', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vt_nivo_slider', 1, 1, '{"demo":"-1","theme":"amazing","slide_width":"600","slide_height":"473","item_dir":"images\\/slider","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"fold","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"1","controlNav":"1","pauseOnHover":"1","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"topleft","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","jquery_source":"local","jquery_version":"latest","controlNavThumbs":"false"}', 0, '*'),
(94, 'JV GWeather', '', '', 1, 'position-15', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_jv_gweather', 1, 1, '', 0, '*'),
(95, 'ARTIO Booking Customer Info', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_booking_customer_info', 1, 1, '', 0, '*'),
(96, 'ARTIO Booking Items', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_booking_items', 1, 1, '', 0, '*'),
(97, 'ARTIO Booking Search', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_booking_search', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_modules_menu`
--

CREATE TABLE IF NOT EXISTS `dj53b_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_modules_menu`
--

INSERT INTO `dj53b_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 108),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 101),
(90, 109),
(94, 101);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `dj53b_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_overrider`
--

CREATE TABLE IF NOT EXISTS `dj53b_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_redirect_links`
--

CREATE TABLE IF NOT EXISTS `dj53b_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dj53b_redirect_links`
--

INSERT INTO `dj53b_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://forellenhof/index.php/bronka', '', 'http://forellenhof/', '', 1, 0, '2014-06-09 22:06:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_rentalot_bookings`
--

CREATE TABLE IF NOT EXISTS `dj53b_rentalot_bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `num_periods` smallint(6) NOT NULL DEFAULT '0',
  `state` tinyint(2) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone_home` varchar(30) NOT NULL,
  `phone_mobile` varchar(30) NOT NULL,
  `date_booked` date DEFAULT NULL,
  `lead_source` varchar(255) NOT NULL,
  `booking_ref` varchar(12) NOT NULL,
  `comments` text NOT NULL,
  `currency` char(3) NOT NULL,
  `currency_rate` float NOT NULL DEFAULT '1',
  `base_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extras_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `extras_details` text NOT NULL,
  `security_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment1_due` date DEFAULT NULL,
  `payment1_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment1_paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment2_due` date DEFAULT NULL,
  `payment2_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment2_paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment3_due` date DEFAULT NULL,
  `payment3_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment3_paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment4_due` date DEFAULT NULL,
  `payment4_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `payment4_paid` tinyint(1) NOT NULL DEFAULT '0',
  `checkout_details` text NOT NULL,
  `deposit_return_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deposit_returned` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_rentalot_config`
--

CREATE TABLE IF NOT EXISTS `dj53b_rentalot_config` (
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_rentalot_config`
--

INSERT INTO `dj53b_rentalot_config` (`name`, `value`) VALUES
('email_to', ''),
('email_cc', ''),
('notifier_secret', ''),
('log_rates', '0'),
('remind_payments', '1'),
('rp_days_before', '7'),
('rp_subject', 'Payment due from'),
('remind_start', '0'),
('rs_days_before', '2'),
('rs_subject', 'Booking start'),
('remind_end', '0'),
('re_days_before', '1'),
('re_subject', 'Booking end'),
('security_deposit', '100'),
('payment1_amount', '20'),
('payment1_type', '1'),
('payment1_time', '0'),
('payment1_time_type', '2'),
('payment2_amount', '40'),
('payment2_type', '1'),
('payment2_time', '6'),
('payment2_time_type', '1'),
('payment3_amount', '0'),
('payment3_type', '3'),
('payment3_time', '7'),
('payment3_time_type', '0'),
('payment4_amount', '0'),
('payment4_type', '0'),
('payment4_time', '0'),
('payment4_time_type', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_rentalot_currencies`
--

CREATE TABLE IF NOT EXISTS `dj53b_rentalot_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_currency` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `code` char(3) NOT NULL,
  `currency_format` smallint(6) NOT NULL DEFAULT '1',
  `name` varchar(30) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `latest_rate` float NOT NULL DEFAULT '1',
  `latest_update` datetime DEFAULT NULL,
  `adjust_factor` float NOT NULL DEFAULT '1',
  `customer_rate` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dj53b_rentalot_currencies`
--

INSERT INTO `dj53b_rentalot_currencies` (`id`, `base_currency`, `published`, `code`, `currency_format`, `name`, `symbol`, `latest_rate`, `latest_update`, `adjust_factor`, `customer_rate`) VALUES
(1, 1, 1, 'GBP', 1, 'British Pound', '&pound;', 1, '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_rentalot_prices`
--

CREATE TABLE IF NOT EXISTS `dj53b_rentalot_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `advertised_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `dj53b_rentalot_prices`
--

INSERT INTO `dj53b_rentalot_prices` (`id`, `published`, `unit_id`, `date_from`, `date_to`, `advertised_price`) VALUES
(1, 1, 2, '2014-06-10', '2014-06-15', '576.00'),
(2, 1, 2, '2014-06-15', '2014-06-20', '576.00'),
(3, 1, 2, '2014-06-20', '2014-06-25', '576.00'),
(4, 1, 2, '2014-06-25', '2014-06-30', '576.00'),
(5, 1, 2, '2014-06-30', '2014-07-05', '576.00'),
(6, 1, 2, '2014-07-05', '2014-07-10', '576.00'),
(7, 1, 2, '2014-07-10', '2014-07-15', '576.00'),
(8, 1, 2, '2014-07-15', '2014-07-20', '576.00'),
(9, 1, 2, '2014-07-20', '2014-07-25', '576.00'),
(10, 1, 2, '2014-07-25', '2014-07-30', '576.00'),
(11, 1, 2, '2014-07-30', '2014-08-04', '576.00'),
(12, 1, 2, '2014-08-04', '2014-08-09', '576.00'),
(13, 1, 2, '2014-08-09', '2014-08-14', '576.00'),
(14, 1, 2, '2014-08-14', '2014-08-19', '576.00'),
(15, 1, 2, '2014-08-19', '2014-08-24', '576.00'),
(16, 1, 2, '2014-08-24', '2014-08-29', '576.00'),
(17, 1, 2, '2014-08-29', '2014-09-03', '576.00'),
(18, 1, 2, '2014-09-03', '2014-09-08', '576.00'),
(19, 1, 2, '2014-09-08', '2014-09-13', '576.00');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_rentalot_units`
--

CREATE TABLE IF NOT EXISTS `dj53b_rentalot_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `dj53b_rentalot_units`
--

INSERT INTO `dj53b_rentalot_units` (`id`, `unit_name`) VALUES
(1, 'Unit 1'),
(2, 'Бронювання');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_schemas`
--

CREATE TABLE IF NOT EXISTS `dj53b_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_schemas`
--

INSERT INTO `dj53b_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.6'),
(10003, '1.20.0'),
(10004, '1.20.0'),
(10021, '1.9.0');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_session`
--

CREATE TABLE IF NOT EXISTS `dj53b_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_session`
--

INSERT INTO `dj53b_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('036b332bb654e31f2a000d741e40943c', 0, 1, '1402362258', '__default|a:8:{s:15:"session.counter";i:6;s:19:"session.timer.start";i:1402361717;s:18:"session.timer.last";i:1402362205;s:17:"session.timer.now";i:1402362257;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":3:{s:11:"com_booking";O:8:"stdClass":1:{s:6:"object";O:8:"stdClass":1:{s:4:"last";s:59:"http://forellenhof/index.php/broniuvannia/item/2-nomer-luks";}}s:7:"vsdmcm2";i:6;s:7:"vsdmcy2";i:2014;}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"eb7939ab12cc650f7f11814e2b015701";}', 0, '', ''),
('9f227791193fea13e7e48f6330db3347', 1, 0, '1402362404', '__default|a:8:{s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36";s:15:"session.counter";i:352;s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":17:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"uk-UA";}s:13:"com_installer";O:8:"stdClass":5:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;s:6:"manage";O:8:"stdClass":4:{s:4:"data";a:1:{s:7:"filters";a:5:{s:6:"search";s:5:"artio";s:9:"client_id";s:0:"";s:6:"status";s:0:"";s:4:"type";s:0:"";s:5:"group";s:0:"";}}s:10:"limitstart";s:1:"0";s:8:"ordercol";s:4:"name";s:9:"orderdirn";s:3:"asc";}s:7:"install";O:8:"stdClass":1:{s:17:"install_directory";s:27:"Z:\\home\\forellenhof\\www/tmp";}}s:9:"com_menus";O:8:"stdClass":2:{s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:4:"type";N;s:4:"link";N;s:4:"data";N;s:2:"id";a:0:{}}}s:5:"items";O:8:"stdClass":6:{s:6:"filter";O:8:"stdClass":4:{s:8:"menutype";s:8:"mainmenu";s:6:"access";i:0;s:5:"level";i:0;s:8:"language";s:0:"";}s:10:"limitstart";i:0;s:6:"search";s:0:"";s:9:"published";s:0:"";s:8:"ordercol";s:5:"a.lft";s:9:"orderdirn";s:3:"asc";}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}s:18:"booking_files_type";i:2;s:10:"afiles_dir";s:0:"";s:20:"booking_files_filter";s:0:"";s:19:"booking_images_type";i:2;s:11:"aimages_dir";s:0:"";s:20:"booking_images_limit";i:10;s:25:"booking_images_limitstart";i:0;s:9:"com_users";O:8:"stdClass":1:{s:6:"groups";O:8:"stdClass":2:{s:8:"ordercol";s:5:"a.lft";s:9:"orderdirn";s:3:"ASC";}}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:1;}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:11:"com_plugins";O:8:"stdClass":2:{s:7:"plugins";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:1:"1";s:6:"folder";s:7:"content";}s:10:"limitstart";i:0;s:8:"ordercol";s:6:"folder";s:9:"orderdirn";s:3:"asc";}s:4:"edit";O:8:"stdClass":1:{s:6:"plugin";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}s:11:"com_booking";O:8:"stdClass":1:{s:6:"fields";O:8:"stdClass":3:{s:4:"name";s:13:"jform[fields]";s:2:"id";s:13:"jform[fields]";s:5:"value";s:6:"a:0:{}";}}s:14:"com_categories";O:8:"stdClass":1:{s:10:"categories";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:9:"extension";s:11:"com_content";}}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"160";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:22:"olexandr1603@gmail.com";s:8:"password";s:65:"af24f5b981fd4970758eaae9bd61473b:ZZYnmgxVRGDtXuIjVsGnqb3txg13WVSL";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-06-04 10:13:18";s:13:"lastvisitDate";s:19:"2014-06-09 13:54:29";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"b3cc4f3b5fdc7726f30f980395a2b48a";s:19:"session.timer.start";i:1402349908;s:18:"session.timer.last";i:1402362403;s:17:"session.timer.now";i:1402362403;}', 160, 'admin', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_template_styles`
--

CREATE TABLE IF NOT EXISTS `dj53b_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `dj53b_template_styles`
--

INSERT INTO `dj53b_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'untitled', 0, '0', 'Untitled — за замовчуванням', '{}'),
(8, 'frln', 0, '0', 'frln — за замовчуванням', '[]'),
(9, 'dwsffsdf', 0, '0', 'frln1', '{"siteTitle":"","siteSlogan":""}'),
(13, '5', 0, '1', '5 — за замовчуванням', '[]'),
(14, '6', 0, '0', '6 — за замовчуванням', '[]'),
(15, '7', 0, '0', '7 — за замовчуванням', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_updates`
--

CREATE TABLE IF NOT EXISTS `dj53b_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=69 ;

--
-- Дамп данных таблицы `dj53b_updates`
--

INSERT INTO `dj53b_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.20', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 3, 10005, 0, 'Українська локалізація Joomla!', '<div style=""><img src="http://joomla-ua.org/update/lang/uk-ua.png" align="right" border="0" style="float: right; padding-left: 5px;" width="140" /><h2 style="padding: 0 0 8px 0; margin: 0; font-weight: normal;">Український пакет локалізації Joomla!</h2><strong style="color: green;">Оновлення до версії 2.5.18.16 від 27.02.2014 готове для встановлення!</strong><div style="background: #fff; width: 57%; border: 1px solid #ccc; padding: 9px; margin: 6px 0;">Зробіть пожертвування для розвитку української локалізації:<br /><br /><strong>WebMoney:</strong> Z162084860012 або R371967759323</div><span style="font-size: 85%;">2009-2014 &copy; Joomla! Україна. Всі права захищено!</span></div>', 'pkg_uk-UA', 'package', '', 0, '2.5.18.16', '', 'http://joomla-ua.org/update/lang/joomla/update-2.5.18.16.xml', ''),
(3, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(4, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(5, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(6, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(7, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(8, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(9, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(10, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(11, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(12, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(13, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(14, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(34, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(35, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(36, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(37, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(38, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(39, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(40, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(41, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(42, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(43, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(44, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(45, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(46, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(47, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(48, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(49, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(50, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(51, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(52, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(53, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(54, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(55, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(56, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(57, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(58, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(59, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(60, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(61, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(62, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(63, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(64, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(65, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(66, 5, 10018, 0, 'Multithumb', 'Multithumb plugin', 'multithumb', 'plugin', 'content', 0, '3.6.0', '', 'http://joomla.rjews.net/multithumb.xml', 'http://joomla.rjews.net/bk-multithumb'),
(67, 6, 0, 0, 'Vinaora Nivo Slider', '', 'mod_vt_nivo_slider', 'module', '', 1, '2.5.30', '', 'http://update.vinaora.com/joomla/mod_vt_nivo_slider.xml', 'http://vinaora.com/'),
(68, 8, 0, 0, 'ARTIO Booking', 'Booking and reservation component.', 'com_booking', 'component', '', 0, '2.2.9', '', 'http://www.artio.net/joomla-updates/list/com_booking2.xml', 'http://www.artio.net/joomla-extensions/booking-and-reservation');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_update_categories`
--

CREATE TABLE IF NOT EXISTS `dj53b_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_update_sites`
--

CREATE TABLE IF NOT EXISTS `dj53b_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `dj53b_update_sites`
--

INSERT INTO `dj53b_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1402276321),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1402313637),
(3, 'Ukrainian language (uk-UA)', 'collection', 'http://joomla-ua.org/update/lang/joomla25.xml', 1, 1402359524),
(4, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1402359524),
(5, 'Joomla.Rjews.Net', 'extension', 'http://joomla.rjews.net/multithumb.xml', 0, 1402355859),
(6, 'Vinaora Update Server', 'extension', 'http://update.vinaora.com/joomla/mod_vt_nivo_slider.xml', 1, 1402359524),
(7, 'Foxcontact update site', 'extension', 'http://www.fox.ra.it/phocadownload/foxcontact.xml', 1, 1402359524),
(8, 'ARTIO Booking Updates', 'extension', 'http://www.artio.net/joomla-updates/list/com_booking2.xml', 1, 1402358249);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `dj53b_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `dj53b_update_sites_extensions`
--

INSERT INTO `dj53b_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 10005),
(4, 10005),
(5, 10018),
(6, 10019),
(7, 10021),
(8, 10046);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_usergroups`
--

CREATE TABLE IF NOT EXISTS `dj53b_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `dj53b_usergroups`
--

INSERT INTO `dj53b_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_users`
--

CREATE TABLE IF NOT EXISTS `dj53b_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

--
-- Дамп данных таблицы `dj53b_users`
--

INSERT INTO `dj53b_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(160, 'Super User', 'admin', 'olexandr1603@gmail.com', 'af24f5b981fd4970758eaae9bd61473b:ZZYnmgxVRGDtXuIjVsGnqb3txg13WVSL', 'deprecated', 0, 1, '2014-06-04 10:13:18', '2014-06-09 21:38:29', '0', '', '0000-00-00 00:00:00', 0),
(161, 'test', 'test', 'gov1603@gmail.com', 'a1403ab411b83bcb2beb2a1b5ece850a:tycJpRwXorhMcDNToqv2IkwBDbS9TWBE', '', 0, 0, '2014-06-09 13:50:39', '2014-06-09 14:14:52', '', '{}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_user_notes`
--

CREATE TABLE IF NOT EXISTS `dj53b_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_user_profiles`
--

CREATE TABLE IF NOT EXISTS `dj53b_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `dj53b_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dj53b_user_usergroup_map`
--

INSERT INTO `dj53b_user_usergroup_map` (`user_id`, `group_id`) VALUES
(160, 8),
(161, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_viewlevels`
--

CREATE TABLE IF NOT EXISTS `dj53b_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `dj53b_viewlevels`
--

INSERT INTO `dj53b_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `dj53b_weblinks`
--

CREATE TABLE IF NOT EXISTS `dj53b_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
