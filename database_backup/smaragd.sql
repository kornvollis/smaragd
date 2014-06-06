-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2014 at 04:39 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pma_bookmark`
--

INSERT INTO `pma_bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'smaragd', 'root', 'xxx', 'SELECT * FROM `categories` \r\nWHERE parent_id = 1');

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=41 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(21, 'smaragd', 'product_images', 'product_id', '', '', '_', ''),
(10, 'smaragd', 'products', 'isFeatured', '', '', '_', ''),
(9, 'smaragd', 'products', 'category_id', '', '', '_', ''),
(13, 'smaragd', 'categories', 'category_id', '', '', '_', ''),
(15, 'smaragd', 'product_images', 'id', '', '', '_', ''),
(14, 'smaragd', 'categories', 'name', '', '', '_', ''),
(16, 'smaragd', 'product_images', 'name', '', '', '_', ''),
(17, 'smaragd', 'product_images', 'path', '', '', '_', ''),
(18, 'smaragd', 'categories', 'id', '', '', '_', ''),
(19, 'smaragd', 'categories', 'lft', '', '', '_', ''),
(20, 'smaragd', 'categories', 'rgt', '', '', '_', ''),
(23, 'smaragd', 'products', 'code', '', '', '_', ''),
(24, 'smaragd', 'product_options', 'id', '', '', '_', ''),
(25, 'smaragd', 'product_options', 'product_id', '', '', '_', ''),
(26, 'smaragd', 'product_options', 'code', '', '', '_', ''),
(27, 'smaragd', 'product_options', 'price', '', '', '_', ''),
(28, 'smaragd', 'product_options', 'picture', '', '', '_', ''),
(29, 'smaragd', 'product_options', 'product_image_id', '', '', '_', ''),
(30, 'smaragd', 'products', 'created_at', '', '', '_', ''),
(31, 'smaragd', 'products', 'updated_at', '', '', '_', ''),
(32, 'smaragd', 'product_options', 'description', '', '', '_', ''),
(33, 'smaragd', 'product_options', 'created_at', '', '', '_', ''),
(34, 'smaragd', 'product_options', 'updated_at', '', '', '_', ''),
(35, 'smaragd', 'product_images', 'created_at', '', '', '_', ''),
(36, 'smaragd', 'product_images', 'updated_at', '', '', '_', ''),
(37, 'smaragd', 'products', 'profit_key', '', '', '_', ''),
(38, 'smaragd', 'products', 'display', '', '', '_', ''),
(39, 'smaragd', 'categories', 'created_at', '', '', '_', ''),
(40, 'smaragd', 'categories', 'updated_at', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"smaragd","table":"product_options"},{"db":"smaragd","table":"products"},{"db":"smaragd","table":"categories"},{"db":"smaragd","table":"product_images"},{"db":"smaragd","table":"users"},{"db":"smaragd","table":"migrations"},{"db":"smaragd","table":"media"},{"db":"test","table":"categories"},{"db":"test","table":"migrations"},{"db":"phpmyadmin","table":"pma_column_info"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'smaragd', 'products', '{"sorted_col":"`products`.`price` ASC"}', '2014-05-21 15:41:38'),
('root', 'smaragd', 'categories', '{"sorted_col":"`categories`.`rgt` ASC"}', '2014-04-03 10:12:55'),
('root', 'smaragd', 'product_options', '{"CREATE_TIME":"2014-05-06 16:07:32","col_visib":["1","1","1","1","1","1"]}', '2014-06-05 13:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
--
-- Database: `smaragd`
--
CREATE DATABASE IF NOT EXISTS `smaragd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `smaragd`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`name`),
  UNIQUE KEY `category_2` (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1351 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `lft`, `rgt`, `created_at`, `updated_at`) VALUES
(1343, 'Csatlakozók, elágazók', 1, 2, '', ''),
(1344, 'Szórófejek', 3, 4, '', ''),
(1345, 'Tömlőtartók, tömlőkocsik', 5, 6, '2014-05-30 11:36:34', '2014-05-30 11:36:34'),
(1346, 'Réz csatlakozók', 7, 8, '2014-05-30 12:43:18', '2014-05-30 12:43:18'),
(1347, 'Locsolók', 9, 10, '2014-06-03 13:04:31', '2014-06-03 13:04:31'),
(1348, 'Szórókocsik', 11, 12, '2014-06-03 14:06:47', '2014-06-03 14:06:47'),
(1349, 'Frissítő szett', 13, 14, '2014-06-03 14:11:41', '2014-06-03 14:11:41'),
(1350, 'Díszkutak', 15, 16, '2014-06-05 13:15:41', '2014-06-05 13:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_04_28_105801_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `path`, `created_at`, `updated_at`) VALUES
(9, 20, NULL, 'pan_page75_image3.png', '', ''),
(10, 21, NULL, 'pan_page75_image4.png', '', ''),
(11, 22, NULL, 'pan_page75_image5.png', '', ''),
(12, 23, NULL, 'pan_page75_image12.jpg', '', ''),
(13, 24, NULL, 'pan_page75_image14.jpg', '', ''),
(14, 25, NULL, 'pan_page75_image6.png', '', ''),
(15, 26, NULL, 'pan_page75_image7.png', '', ''),
(16, 27, NULL, 'pan_page75_image8.png', '', ''),
(17, 28, NULL, 'pan_page75_image17.jpg', '', ''),
(18, 29, NULL, 'pan_page75_image18.png', '', ''),
(19, 30, NULL, 'pan_page75_image19.jpg', '', ''),
(21, 32, NULL, 'pan_page75_image10.jpg', '', ''),
(22, 31, NULL, 'pan_page75_image9.jpg', '', ''),
(23, 33, NULL, 'pan_page75_image21.png', '', ''),
(24, 34, NULL, 'pan_page75_image20.png', '', ''),
(25, 35, NULL, 'pan_page75_image15.jpg', '', ''),
(26, 36, NULL, 'pan_page75_image16.jpg', '', ''),
(27, 39, NULL, 'pan_page75_image25.jpg', '', ''),
(28, 37, NULL, 'pan_page75_image23.jpg', '', ''),
(29, 38, NULL, 'pan_page75_image24.jpg', '', ''),
(30, 40, NULL, 'pan_page75_image31.png', '', ''),
(31, 41, NULL, 'pan_page75_image33.png', '', ''),
(32, 41, NULL, 'pan_page75_image32.png', '', ''),
(33, 42, NULL, 'pan_page75_image40.png', '', ''),
(34, 43, NULL, 'pan_page75_image27.png', '', ''),
(35, 44, NULL, 'pan_page75_image28.jpg', '', ''),
(36, 45, NULL, 'pan_page75_image34.jpg', '', ''),
(37, 46, NULL, 'pan_page75_image35.jpg', '', ''),
(38, 48, NULL, 'pan_page75_image44.png', '', ''),
(41, 49, NULL, 'pan_page75_image37.jpg', '', ''),
(42, 50, NULL, 'pan_page75_image38.png', '2014-05-29 09:56:42', '2014-05-29 09:56:42'),
(43, 51, NULL, 'pan_page75_image39.png', '2014-05-29 09:58:19', '2014-05-29 09:58:19'),
(44, 51, NULL, 'pan_page75_image29.jpg', '2014-05-29 09:58:33', '2014-05-29 09:58:33'),
(45, 51, NULL, 'pan_page75_image30.jpg', '2014-05-29 09:58:41', '2014-05-29 09:58:41'),
(46, 52, NULL, 'pan_page75_image41.png', '2014-05-29 10:00:09', '2014-05-29 10:00:09'),
(47, 53, NULL, 'pan_page75_image42.png', '2014-05-29 10:01:35', '2014-05-29 10:01:35'),
(48, 54, NULL, 'pan_page75_image43.png', '2014-05-29 10:03:07', '2014-05-29 10:03:07'),
(49, 55, NULL, 'pan_page75_image53.jpg', '2014-05-29 10:10:44', '2014-05-29 10:10:44'),
(50, 55, NULL, 'pan_page75_image54.jpg', '2014-05-29 10:11:00', '2014-05-29 10:11:00'),
(51, 56, NULL, 'pan_page75_image52.png', '2014-05-29 10:16:11', '2014-05-29 10:16:11'),
(52, 57, NULL, 'pan_page75_image60.jpg', '2014-05-29 10:17:52', '2014-05-29 10:17:52'),
(53, 58, NULL, 'pan_page75_image55.jpg', '2014-05-29 10:19:52', '2014-05-29 10:19:52'),
(54, 58, NULL, 'pan_page75_image56.jpg', '2014-05-29 10:20:03', '2014-05-29 10:20:03'),
(55, 58, NULL, 'pan_page75_image55_table.jpg', '2014-05-29 10:24:20', '2014-05-29 10:24:20'),
(56, 59, NULL, 'pan_page75_image58.jpg', '2014-05-29 10:27:45', '2014-05-29 10:27:45'),
(57, 59, NULL, 'pan_page75_image58_table.jpg', '2014-05-29 10:28:35', '2014-05-29 10:28:35'),
(58, 60, NULL, 'pan_page75_image57.jpg', '2014-05-29 10:29:48', '2014-05-29 10:29:48'),
(59, 60, NULL, 'pan_page75_image59.jpg', '2014-05-29 10:30:05', '2014-05-29 10:30:05'),
(60, 61, NULL, 'pan_page75_image68.jpg', '2014-05-29 10:32:11', '2014-05-29 10:32:11'),
(61, 62, NULL, 'pan_page75_image69.jpg', '2014-05-29 10:34:23', '2014-05-29 10:34:23'),
(62, 63, NULL, 'pan_page75_image72.jpg', '2014-05-29 10:35:26', '2014-05-29 10:35:26'),
(63, 64, NULL, 'pan_page75_image74.jpg', '2014-05-29 10:36:28', '2014-05-29 10:36:28'),
(64, 65, NULL, 'pan_page75_image70.jpg', '2014-05-29 10:37:27', '2014-05-29 10:37:27'),
(65, 66, NULL, 'pan_page75_image73.jpg', '2014-05-29 10:38:51', '2014-05-29 10:38:51'),
(66, 67, NULL, 'pan_page75_image76.png', '2014-05-29 10:39:59', '2014-05-29 10:39:59'),
(67, 68, NULL, 'pan_page75_image77.png', '2014-05-29 10:40:59', '2014-05-29 10:40:59'),
(68, 69, NULL, 'pan_page75_image64.png', '2014-05-30 11:37:34', '2014-05-30 11:37:34'),
(69, 70, NULL, 'pan_page75_image65.png', '2014-05-30 11:40:28', '2014-05-30 11:40:28'),
(70, 71, NULL, 'pan_page75_image66.png', '2014-05-30 11:41:53', '2014-05-30 11:41:53'),
(71, 72, NULL, 'pan_page75_image63.jpg', '2014-05-30 12:05:47', '2014-05-30 12:05:47'),
(72, 73, NULL, 'pan_page75_image67.png', '2014-05-30 12:40:31', '2014-05-30 12:40:31'),
(73, 74, NULL, 'pan_page75_image82.png', '2014-05-30 13:08:25', '2014-05-30 13:08:25'),
(74, 75, NULL, 'pan_page75_image83.png', '2014-05-30 13:11:54', '2014-05-30 13:11:54'),
(75, 76, NULL, 'pan_page75_image84.png', '2014-05-30 13:29:10', '2014-05-30 13:29:10'),
(76, 77, NULL, 'pan_page75_image85.png', '2014-05-30 13:31:07', '2014-05-30 13:31:07'),
(77, 78, NULL, 'pan_page75_image86.png', '2014-05-30 13:32:03', '2014-05-30 13:32:03'),
(78, 79, NULL, 'pan_page75_image92.png', '2014-05-30 13:34:21', '2014-05-30 13:34:21'),
(79, 80, NULL, 'pan_page75_image79.jpg', '2014-05-30 13:37:54', '2014-05-30 13:37:54'),
(80, 81, NULL, 'pan_page75_image88.png', '2014-05-30 13:39:05', '2014-05-30 13:39:05'),
(81, 82, NULL, 'pan_page75_image340.jpg', '2014-06-03 13:06:23', '2014-06-03 13:06:23'),
(82, 82, NULL, 'pan_page75_image341.png', '2014-06-03 13:06:35', '2014-06-03 13:06:35'),
(83, 83, NULL, 'pan_page75_image338.jpg', '2014-06-03 14:02:02', '2014-06-03 14:02:02'),
(84, 84, NULL, 'pan_page75_image342.png', '2014-06-03 14:03:13', '2014-06-03 14:03:13'),
(85, 85, NULL, 'pan_page75_image339.jpg', '2014-06-03 14:04:11', '2014-06-03 14:04:11'),
(86, 86, NULL, 'pan_page75_image336.png', '2014-06-03 14:05:17', '2014-06-03 14:05:17'),
(87, 87, NULL, 'pan_page75_image337.png', '2014-06-03 14:06:14', '2014-06-03 14:06:14'),
(88, 88, NULL, 'pan_page75_image344.png', '2014-06-03 14:08:18', '2014-06-03 14:08:18'),
(89, 88, NULL, 'pan_page75_image345.png', '2014-06-03 14:08:28', '2014-06-03 14:08:28'),
(90, 89, NULL, 'pan_page75_image343.png', '2014-06-03 14:10:23', '2014-06-03 14:10:23'),
(91, 89, NULL, 'pan_page75_image346.png', '2014-06-03 14:10:30', '2014-06-03 14:10:30'),
(92, 90, NULL, 'pan_page75_image393.jpg', '2014-06-03 14:13:16', '2014-06-03 14:13:16'),
(93, 90, NULL, 'pan_page75_image394.jpg', '2014-06-03 14:13:22', '2014-06-03 14:13:22'),
(94, 90, NULL, 'pan_page75_image396.png', '2014-06-03 14:13:32', '2014-06-03 14:13:32'),
(95, 91, NULL, 'pan_page75_image1531.jpg', '2014-06-05 13:39:54', '2014-06-05 13:39:54'),
(96, 91, NULL, 'pan_page75_image1526.jpg', '2014-06-05 13:40:13', '2014-06-05 13:40:13'),
(97, 91, NULL, 'pan_page75_image1527.jpg', '2014-06-05 13:40:31', '2014-06-05 13:40:31'),
(98, 91, NULL, 'pan_page75_image1524.jpg', '2014-06-05 13:40:38', '2014-06-05 13:40:38'),
(99, 91, NULL, 'pan_page75_image1521.jpg', '2014-06-05 13:40:45', '2014-06-05 13:40:45'),
(100, 91, NULL, 'pan_page75_image1523.jpg', '2014-06-05 13:42:31', '2014-06-05 13:42:31'),
(101, 91, NULL, 'pan_page75_image1528.jpg', '2014-06-05 13:43:15', '2014-06-05 13:43:15'),
(102, 91, NULL, 'pan_page75_image1530.jpg', '2014-06-05 13:43:27', '2014-06-05 13:43:27'),
(103, 91, NULL, 'pan_page75_image1529.jpg', '2014-06-05 13:43:54', '2014-06-05 13:43:54'),
(104, 91, NULL, 'pan_page75_image1525.jpg', '2014-06-05 13:44:51', '2014-06-05 13:44:51'),
(105, 91, NULL, 'pan_page75_image1522.jpg', '2014-06-05 13:45:12', '2014-06-05 13:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE IF NOT EXISTS `product_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `product_image_id` int(11) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `product_id`, `description`, `code`, `price`, `product_image_id`, `created_at`, `updated_at`) VALUES
(1, 20, 'Méret: 1/2”', '4401', 109, 9, '', '2014-05-21 14:05:43'),
(3, 20, 'Méret: 3/4”', '4400', 109, 9, '2014-05-16 10:53:13', '2014-05-21 14:06:11'),
(7, 20, 'Méret: 1”', '4402', 131, 9, '2014-05-21 14:06:57', '2014-05-21 14:06:57'),
(8, 21, 'Méret: 1/2”', '4411', 109, 10, '2014-05-21 14:13:18', '2014-05-21 14:13:18'),
(9, 21, 'Méret: 3/4”', '4410', 109, 10, '2014-05-21 14:13:48', '2014-05-21 14:13:48'),
(10, 25, 'Méret: 1/2”', '4450', 411, 14, '2014-05-21 14:33:17', '2014-05-21 14:33:17'),
(11, 25, 'Méret: 3/4”', '4455', 472, 14, '2014-05-21 14:33:56', '2014-05-21 14:33:56'),
(12, 26, 'Méret 1/2”', '4451', 635, 15, '2014-05-21 14:35:21', '2014-05-21 14:35:21'),
(13, 26, 'Méret: 3/4"', '4456', 728, 15, '2014-05-21 14:35:46', '2014-05-21 14:35:46'),
(14, 27, 'Méret: 1/2"', '4425', 359, 16, '2014-05-21 14:36:53', '2014-05-21 14:36:53'),
(15, 27, 'Méret: 3/4"', '4426', 452, 16, '2014-05-21 14:37:25', '2014-05-21 14:37:25'),
(16, 28, 'Méret: 1/2"', '4489', 716, 17, '2014-05-21 14:38:05', '2014-05-21 14:38:46'),
(17, 28, 'Méret: 3/4"', '4490', 1008, 17, '2014-05-21 14:38:27', '2014-05-21 14:38:27'),
(18, 31, 'Méret: 1/2”', '4480', 293, 22, '2014-05-21 14:41:08', '2014-05-21 14:41:08'),
(19, 31, 'Méret: 3/4”', '4481', 433, 22, '2014-05-21 14:41:47', '2014-05-21 14:41:47'),
(20, 37, 'Méret: 1/2 x 3/4”', '4470', 207, 28, '2014-05-21 14:44:55', '2014-05-21 14:44:55'),
(21, 37, 'Méret: 1/2 x 1/2”', '4472', 207, 28, '2014-05-21 14:45:18', '2014-05-21 14:45:18'),
(22, 37, 'Méret: 1/2 x 1”', '4473', 239, 28, '2014-05-21 14:45:52', '2014-05-21 14:45:52'),
(23, 37, 'Méret: 3/4 x 1/2”', '4474', 269, 28, '2014-05-21 14:46:24', '2014-05-21 14:46:24'),
(24, 37, 'Méret: 3/4 x 3/4”', '4475', 269, 28, '2014-05-21 14:47:12', '2014-05-21 14:47:12'),
(25, 37, 'Méret: 3/4 x 1”', '4477', 269, 28, '2014-05-21 14:47:34', '2014-05-21 14:47:34'),
(26, 38, 'Méret: 3/4 x 1/2”', '4471', 207, 29, '2014-05-21 14:48:35', '2014-05-21 14:48:35'),
(27, 38, 'Méret: 3/4 x 3/4”', '4476', 269, 29, '2014-05-21 14:49:02', '2014-05-21 14:49:02'),
(28, 39, 'Méret: 3/4"', '4460', 330, 27, '2014-05-21 14:49:50', '2014-05-21 14:49:50'),
(29, 39, 'Méret: 1/2"', '4461', 330, 27, '2014-05-21 14:50:14', '2014-05-21 14:50:14'),
(30, 40, 'Kuplung csatlakozóval', '4550', 324, 30, '2014-05-21 14:51:33', '2014-05-21 14:51:33'),
(31, 40, '1/2”-os tömlővéggel', '4552', 429, 30, '2014-05-21 14:51:56', '2014-05-21 14:51:56'),
(32, 40, '3/4”-os tömlővéggel', '4553', 525, 30, '2014-05-21 14:52:14', '2014-05-21 14:52:14'),
(33, 41, 'állítható vízsugárral', '4560', 573, 31, '2014-05-21 14:53:18', '2014-05-21 14:53:18'),
(34, 41, 'szélesebb szórófejjel', '4555', 635, 32, '2014-05-21 14:53:38', '2014-05-21 14:53:38'),
(35, 42, 'Kuplung csatlakozóval', '4600', 1220, 33, '2014-05-21 14:54:18', '2014-05-21 14:54:18'),
(36, 42, '1/2”-os tömlővéggel', '4602', 1371, 33, '2014-05-21 14:54:34', '2014-05-21 14:54:34'),
(37, 42, '3/4”-os tömlővéggel', '4603', 1467, 33, '2014-05-21 14:54:50', '2014-05-21 14:54:50'),
(38, 45, 'kuplung csatlakozós', '4575', 798, 36, '2014-05-21 14:58:50', '2014-05-21 14:58:50'),
(39, 45, '1/2” -os tömlő csatlakozóval', '4577', 915, 36, '2014-05-21 14:59:51', '2014-05-21 14:59:51'),
(40, 45, '3/4” -os tömlő csatlakozóval', '4578', 1003, 36, '2014-05-21 15:00:16', '2014-05-21 15:00:16'),
(41, 46, 'kuplung csatlakozóval', '4585', 1341, 37, '2014-05-21 15:01:32', '2014-05-21 15:01:32'),
(42, 46, '1/2"-os tömlő csatlakozóval', '4587', 1488, 37, '2014-05-21 15:01:56', '2014-05-21 15:01:56'),
(43, 46, '3/4"-os tömlő csatlakozóval', '4588', 1575, 37, '2014-05-21 15:02:15', '2014-05-21 15:02:15'),
(44, 58, 'nyomásra	kiemelkedő süllyesztett szakaszos', '4592', 4880, 53, '2014-05-29 10:20:21', '2014-05-29 12:47:59'),
(45, 58, '90 °	nyomásra	kiemelkedő', '4572', 849, 53, '2014-05-29 10:20:53', '2014-05-29 12:48:12'),
(46, 58, '180 ° nyomásra kiemelkedő', '4573', 849, 53, '2014-05-29 10:21:46', '2014-05-29 12:48:21'),
(47, 58, '360 ° nyomásra kiemelkedő', '4574', 849, 53, '2014-05-29 10:22:04', '2014-05-29 12:48:44'),
(48, 59, '360 fokos', '4570', 730, 56, '2014-05-29 10:27:55', '2014-05-29 12:54:25'),
(49, 59, 'forgós', '4580', 1389, 56, '2014-05-29 10:28:07', '2014-05-29 12:54:34'),
(50, 59, 'szakaszos', '4590', 2397, 56, '2014-05-29 10:28:21', '2014-05-29 12:54:51'),
(51, 61, 'Méret: 1''''', '4403', 224, 60, '2014-05-29 10:32:26', '2014-05-29 12:56:21'),
(52, 61, 'Méret: 3/4''''', '4404', 224, 60, '2014-05-29 10:32:51', '2014-05-29 12:56:30'),
(53, 68, 'O- gyűrű	 ', '4955', 21, 67, '2014-05-29 10:41:17', '2014-05-29 12:52:15'),
(54, 68, 'tömítés 1/2''''', '4952', 21, 67, '2014-05-29 10:41:40', '2014-05-29 12:52:26'),
(55, 68, 'tömítés 3/4''''', '4953', 24, 67, '2014-05-29 10:41:57', '2014-05-29 12:52:42'),
(56, 68, 'tömítés 1''''', '4954', 32, 67, '2014-05-29 10:42:12', '2014-05-29 12:52:52'),
(57, 68, 'Szűrős tömítés 3/4''''', '4950', 67, 67, '2014-05-29 10:42:46', '2014-05-29 12:53:01'),
(58, 68, 'Szűrős tömítés 1/2''''', '4951', 67, 67, '2014-05-29 10:42:58', '2014-05-29 12:53:17'),
(59, 69, '1/2” 50 m = 3/4” 25 m', '4857', 6969, 68, '2014-05-30 11:38:28', '2014-05-30 11:38:28'),
(60, 69, '1/2” 90 m = 3/4” 50 m', '4867', 9999, 68, '2014-05-30 11:38:58', '2014-05-30 11:38:58'),
(63, 72, 'kék', 'AG 112 K', 598, 71, '2014-05-30 12:30:48', '2014-05-30 12:30:48'),
(64, 72, 'zöld', 'AG 112 Z', 598, 71, '2014-05-30 12:38:25', '2014-05-30 12:38:25'),
(65, 72, 'sárga', 'AG 112 S', 598, 71, '2014-05-30 12:38:39', '2014-05-30 12:38:39'),
(66, 72, 'narancs', 'AG 112 N', 598, 71, '2014-05-30 12:38:54', '2014-05-30 12:38:54'),
(67, 74, '1/2” belső menetes', '4401R', 369, 73, '2014-05-30 13:08:53', '2014-05-30 13:08:53'),
(68, 74, '3/4” belső menetes', '4400R', 399, 73, '2014-05-30 13:09:28', '2014-05-30 13:09:44'),
(69, 74, '1” belső menetes', '4402R', 495, 73, '2014-05-30 13:10:29', '2014-05-30 13:10:29'),
(72, 75, '1/2''''', '4450R', 855, 74, '2014-05-30 13:15:17', '2014-05-30 13:26:07'),
(73, 75, '1/2'''' stoppos', '4451R', 892, 74, '2014-05-30 13:26:32', '2014-05-30 13:26:32'),
(74, 75, '3/4''''', '4455R', 998, 74, '2014-05-30 13:27:00', '2014-05-30 13:27:00'),
(75, 75, '3/4'''' stoppos', '4456R', 1094, 74, '2014-05-30 13:27:27', '2014-05-30 13:27:27'),
(76, 76, '1/2''''', '4480R', 629, 75, '2014-05-30 13:29:35', '2014-05-30 13:30:08'),
(77, 76, '3/4''''', '4481R', 1054, 75, '2014-05-30 13:30:00', '2014-05-30 13:30:00'),
(78, 79, '1/2''''x12ø	bilnccsel ', '401212R', 469, 78, '2014-05-30 13:34:43', '2014-05-30 13:35:06'),
(79, 79, '3/4''''x12ø	bilnccsel', '403412R', 479, 78, '2014-05-30 13:35:39', '2014-05-30 13:35:39'),
(80, 79, '3/4''''x19ø	bilnccsel', '403419R', 577, 78, '2014-05-30 13:36:11', '2014-05-30 13:36:11'),
(81, 79, '1''''x19ø bilnccsel', '400119R', 740, 78, '2014-05-30 13:36:43', '2014-05-30 13:36:43'),
(82, 81, '3/4'''' belsőmentes', 'BAYON 3/4'''' BM', 721, 80, '2014-05-30 13:40:24', '2014-05-30 13:41:02'),
(83, 81, '1'''' belsőmentes', 'BAYON 1'''' BM', 768, 80, '2014-05-30 13:40:49', '2014-05-30 13:40:49'),
(84, 81, '5/4'''' belsőmentes', 'BAYON 5/4'''' BM', 1088, 80, '2014-05-30 13:47:30', '2014-05-30 13:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `profit_key` float NOT NULL DEFAULT '1',
  `category_id` int(6) DEFAULT NULL,
  `isFeatured` tinyint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL,
  `created_at` varchar(20) NOT NULL,
  `updated_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `description`, `price`, `profit_key`, `category_id`, `isFeatured`, `display`, `created_at`, `updated_at`) VALUES
(20, '', 'Kuplungcsatlakozó', 'Különböző méretekben', 0, 1.2, 1343, 0, 0, '', '2014-05-21 14:07:17'),
(21, '', 'Külsőmenetes Kuplungcsatlakozó', '4411 1/2”\r\n4410 3/4”', 0, 1.2, 1343, 0, 0, '', ''),
(22, '4430', 'Kuplungcsatlakozó', '', 169, 1.2, 1343, 0, 0, '', '2014-05-29 09:48:42'),
(23, '4435/1', 'Y elágazó 3 kuplung csatlakozóval és 2 db elzáróval', '', 1220, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:01'),
(24, '4437', 'Y elágazó 1 gyorscsatlakozóval és 2 kuplung csatlakozóval', '', 832, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:18'),
(25, '', 'Gyorscsatlakozó', '4450 1/2”\r\n4455 3/4”', 0, 1.2, 1343, 0, 0, '', ''),
(26, '', 'Stoppos Gyorscsatlakozó', '4451 1/2”\r\n4456 3/4”', 0, 1.2, 1343, 0, 0, '', ''),
(27, '', 'Átalakító', '4425 1/2”\r\n4426 3/4”', 0, 1.2, 1343, 0, 0, '', ''),
(28, '', 'Tömlővéges T elágazó', '4489 1/2”\r\n4490 3/4”', 0, 1.2, 1343, 0, 0, '', ''),
(29, '4491', 'Tömlővéges és 2 kuplungos T elágazó', 'Méret: 3/4”', 782, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:39'),
(30, '4320', 'Elzárható csatlakozó', '', 448, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:00'),
(31, '', 'Tömlő összekötő', '4480 1/2”\r\n4481 3/4”', 0, 1.2, 1343, 0, 0, '', ''),
(32, '4485', 'Tömlő összekötő', 'Méret: 1/2” x 3/4”', 359, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:22'),
(33, '4428', 'Csatlakozókészlet', 'Méret: 1/2”', 1220, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:46'),
(34, '4492', 'T elágazó 2 elzáróval', '', 1787, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:58'),
(35, '4520', 'T elágazó 3 elzáróval', '', 2353, 1.2, 1343, 0, 0, '', '2014-05-29 09:51:21'),
(36, '4493', 'T elágazó 1 elzáróval', '', 1458, 1.2, 1343, 0, 0, '', '2014-05-29 09:51:36'),
(37, '', 'Csatlakozó - belső menetes', '4470 1/2 x 3/4”\r\n4472 1/2 x 1/2”\r\n4473 1/2 x 1”\r\n4474 3/4 x 1/2”\r\n4475 3/4 x 3/4”\r\n4477 3/4 x 1”', 0, 1.2, 1343, 0, 0, '', ''),
(38, '', 'Csatlakozó - külső menetes', '4471 3/4 x 1/2”\r\n4476 3/4 x 3/4”', 0, 1.2, 1343, 0, 0, '', ''),
(39, '', 'Csatlakozó - külső menetes kuplung csatlakozós', '4460 3/4”\r\n4461 1/2”', 0, 1.2, 1343, 0, 0, '', ''),
(40, '', 'Sugárcső', '4550 Kuplung csatlakozóval\r\n4552 1/2”-os tömlővéggel\r\n4553 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, 0, '', ''),
(41, '', 'Locsolórózsa', '4560 állítható vízsugárral\r\n4555 szélesebb szórófejjel', 0, 1.2, 1344, 0, 0, '', ''),
(42, '', 'Pisztolyos szórófej', '4600 Kuplung csatlakozóval\r\n4602 1/2”-os tömlővéggel\r\n4603 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, 0, '', ''),
(43, '4755/5', 'Multifunkciós elzárhatós négy állású locsolórózsa', '', 2141, 1.2, 1344, 0, 0, '', '2014-05-29 09:51:58'),
(44, '', 'Pisztolyos locsoló', '4605 kuplungos', 1371, 1.2, 1344, 0, 0, '', '2014-05-21 14:56:35'),
(45, '', 'Leszúrható locsoló 360 fokos', '4575 kupl. cs.\r\n4577 1/2”\r\n4578 3/4”', 0, 1.2, 1344, 0, 0, '', ''),
(46, '', 'Forgó locsoló', '4585 kupl. cs.\r\n4587 1/2”\r\n4588 3/4”', 0, 1.2, 1344, 0, 0, '', ''),
(48, '4595', 'Leszúrható szakaszos locsoló', '', 2461, 1.2, 1344, 0, 0, '', '2014-05-29 09:52:14'),
(49, '4785', 'Átfolyós forgós locsoló', '', 1441, 1.2, 1344, 0, 0, '', '2014-05-29 09:52:32'),
(50, '4616', 'Pisztolyos	locsoló szett', '', 2133, 1.2, 1344, 0, 0, '2014-05-29 09:55:42', '2014-05-29 12:59:32'),
(51, '4605/5', 'Multifunkciós pisztolyos négy állású	locsoló', '', 2384, 1.2, 1344, 0, 0, '2014-05-29 09:57:52', '2014-05-29 12:59:47'),
(52, '4630', 'Talpas 360 fokos locsoló', '', 2336, 1.2, 1344, 0, 0, '2014-05-29 09:59:50', '2014-05-29 13:00:18'),
(53, '4640', 'Talpas forgó locsoló', '', 2842, 1.2, 1344, 0, 0, '2014-05-29 10:00:56', '2014-05-29 12:38:03'),
(54, '4650', 'Talpas szakaszos locsoló', '', 4040, 1.2, 1344, 0, 0, '2014-05-29 10:02:23', '2014-05-29 13:00:34'),
(55, '4671', 'Locsoló háromlábú álvánnyal', '', 5879, 1.2, 1344, 0, 0, '2014-05-29 10:08:44', '2014-05-29 12:39:12'),
(56, '4689', 'Billenős locsoló', '(4ATM, 220 m2 öntözésre alkalmas	13,5	m*15m)\r\n\r\nÁtfolyás 16 l / perc', 4776, 1.2, 1344, 0, 0, '2014-05-29 10:15:08', '2014-05-29 12:39:48'),
(57, '4688', 'Billenős locsoló', '', 1579, 1.2, 1344, 0, 0, '2014-05-29 10:17:01', '2014-05-29 12:45:00'),
(58, '', 'Süllyesztett locsoló', '', 0, 1.2, 1344, 0, 0, '2014-05-29 10:19:01', '2014-05-29 10:19:01'),
(59, '', 'Gyorscsatlakozós locsolófej', '', 0, 1.2, 1344, 0, 0, '2014-05-29 10:27:19', '2014-05-29 10:27:19'),
(60, '4510', 'Süllyesztett csatlakozó doboz', '', 3668, 1.2, 1344, 0, 0, '2014-05-29 10:29:32', '2014-05-29 12:55:25'),
(61, '', 'Maxi	kuplung csatlakozó', '', 0, 1.2, 1343, 0, 0, '2014-05-29 10:31:37', '2014-05-29 10:31:37'),
(62, '4457', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, 1.2, 1343, 0, 0, '2014-05-29 10:34:10', '2014-05-29 12:57:04'),
(63, '4458', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, 1.2, 1343, 0, 0, '2014-05-29 10:35:05', '2014-05-29 12:57:40'),
(64, '4459', 'Maxi	gyorscsatlakozó', 'Méret: 3/4”x1”		', 938, 1.2, 1343, 0, 0, '2014-05-29 10:36:08', '2014-05-29 12:58:04'),
(65, '4486', 'Maxi	tömlő összekötő', 'Méret: 3/4” x 1”	', 572, 1.2, 1343, 0, 0, '2014-05-29 10:37:15', '2014-05-29 12:58:27'),
(66, '4487', 'Maxi	tömlő összekötő', 'Méret: 1” x 1”', 602, 1.2, 1343, 0, 0, '2014-05-29 10:38:38', '2014-05-29 12:58:45'),
(67, '4432', 'Maxi	T-elágazó', 'Méret: 1''''', 270, 1.2, 1343, 0, 0, '2014-05-29 10:39:39', '2014-05-29 12:59:16'),
(68, '', 'Tömítések', '', 0, 1.2, 1343, 0, 0, '2014-05-29 10:40:43', '2014-05-29 10:40:43'),
(69, '', 'Tömlőkocsi Siroflex', '', 0, 1.2, 1345, 0, 0, '2014-05-30 11:37:15', '2014-05-30 11:37:15'),
(70, 'AG311', 'Fém tömlőkocsi', '3/4” 50 m = 1/2” 80 m', 9381, 1.2, 1345, 0, 0, '2014-05-30 11:40:13', '2014-05-30 11:40:13'),
(71, 'AG317', 'Maxi fém tömlőkocsi', '3/4” 90 m = 1/2” 110 m', 15180, 1.2, 1345, 0, 0, '2014-05-30 11:41:40', '2014-05-30 11:41:40'),
(72, '', 'Fali tömlő tartó', '', 0, 1.2, 1345, 0, 0, '2014-05-30 11:49:39', '2014-05-30 11:49:39'),
(73, '4874', 'Tömlőkocsi összecsukható', '1/2” 50 m', 4397, 1.2, 1345, 0, 0, '2014-05-30 12:40:20', '2014-05-30 12:40:20'),
(74, '', 'Réz kuplung csatlakozó', '', 0, 1.2, 1346, 0, 0, '2014-05-30 12:43:40', '2014-05-30 12:43:40'),
(75, '', 'Réz gyorscsatlakozó', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:11:04', '2014-05-30 13:11:04'),
(76, '', 'Réz tömlőösszekötő', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:28:14', '2014-05-30 13:28:14'),
(77, '4430R', 'Réz kuplung csatlakoz', '', 357, 1.2, 1346, 0, 0, '2014-05-30 13:30:56', '2014-05-30 13:30:56'),
(78, '4550R', 'Kuplung csatlakozós réz szórófej', '', 1037, 1.2, 1346, 0, 0, '2014-05-30 13:31:50', '2014-05-30 13:31:50'),
(79, '', 'Réz tömlővég', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:33:50', '2014-05-30 13:33:50'),
(80, '4437/1R', 'Elzárható Y elágazó', '', 2094, 1.2, 1346, 0, 0, '2014-05-30 13:37:36', '2014-05-30 13:37:36'),
(81, '', 'Bajonett gyorscsatlakozó belső mentes', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:38:36', '2014-05-30 13:39:28'),
(82, '4650R', 'Rézfejes szakaszos locsoló háromlábú állvánnyal	', '', 4858, 1.2, 1347, 0, 0, '2014-06-03 13:05:51', '2014-06-03 13:05:51'),
(83, '4640R', 'Rézfejes kerekes forgólocsoló	12m*12m', '', 2552, 1.2, 1347, 0, 0, '2014-06-03 14:01:04', '2014-06-03 14:01:04'),
(84, '4595R', 'Rézfejes szakaszos locsoló leszúróval', '', 2154, 1.2, 1347, 0, 0, '2014-06-03 14:02:51', '2014-06-03 14:02:51'),
(85, '4695R', 'Rézfejes,	kerekes szakaszos locsoló', '', 2872, 1.2, 1347, 0, 0, '2014-06-03 14:04:01', '2014-06-03 14:04:01'),
(86, '4604', 'Fémfejes pisztolyos locsoló - hétfunkciós', '', 1588, 1.2, 1347, 0, 0, '2014-06-03 14:05:04', '2014-06-03 14:05:04'),
(87, '4605R', 'Fémfejes	pisztolyos	locsoló', '', 1497, 1.2, 1347, 0, 0, '2014-06-03 14:06:06', '2014-06-03 14:06:06'),
(88, 'HECHT 270', 'Kézi	szórókocsi', '27 literes tárolóval.', 8587, 1.2, 1348, 0, 0, '2014-06-03 14:07:49', '2014-06-03 14:08:57'),
(89, 'HECHT 229', 'Kézi	szórókocsi. 29 literes tárolóval', 'Gumikerekes', 17786, 1.2, 1348, 0, 0, '2014-06-03 14:10:10', '2014-06-03 14:10:10'),
(90, '3450', 'Frissítő szett', 'Nézze meg termékbemutató videónkat, szerelési útmutatóval!\r\n\r\n<a href="https://www.youtube.com/watch?v=-tcq3RSSyvo" target="_blank">ITT</a>', 4400, 1.2, 1349, 0, 0, '2014-06-03 14:12:28', '2014-06-03 14:26:20'),
(91, '', 'Róma állókút', '', 0, 1.2, 1350, 0, 0, '2014-06-05 13:16:39', '2014-06-05 13:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(320) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'smaragd@admin.hu', '$2y$10$aS5Le26L1kR4iFtc3C4PcOOQL0Eqzd0v3Dqhd4MFgcxFJqaknJwOi', '2014-04-28 09:00:45', '2014-04-28 09:00:45');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  UNIQUE KEY `category` (`name`),
  UNIQUE KEY `category_2` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `lft`, `rgt`) VALUES
(0, 'Root', 1, 10),
(0, 'Root2', 11, 14),
(0, 'Root3', 15, 16),
(0, 'Sub1', 2, 3),
(0, 'Sub2', 4, 9),
(666, 'Sub2Sub1', 5, 6),
(0, 'Sub2Sub2', 7, 8),
(0, 'xxx', 12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  `netto_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `profit_key` int(11) NOT NULL,
  `category_id` int(6) DEFAULT NULL,
  `isFeatured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Database: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
