-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2014 at 06:02 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`name`),
  UNIQUE KEY `category_2` (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1345 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `lft`, `rgt`) VALUES
(1342, 'Locsolók', 1, 6),
(1343, 'Csatlakozók, elágazók', 2, 3),
(1344, 'Szórófejek', 4, 5);

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
  `created_at` varchar(20) NOT NULL,
  `updated_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `description`, `price`, `profit_key`, `category_id`, `isFeatured`, `created_at`, `updated_at`) VALUES
(20, '', 'Kuplungcsatlakozó', 'Különböző méretekben', 0, 1.2, 1343, 0, '', '2014-05-21 14:07:17'),
(21, '', 'Külsőmenetes Kuplungcsatlakozó', '4411 1/2”\r\n4410 3/4”', 0, 1.2, 1343, 0, '', ''),
(22, '', 'Kuplungcsatlakozó', '4430', 169, 1.2, 1343, 0, '', '2014-05-21 14:14:40'),
(23, '', 'Y elágazó 3 kuplung csatlakozóval és 2 db elzáróval', '4435/1', 1220, 1.2, 1343, 0, '', '2014-05-21 14:16:08'),
(24, '', 'Y elágazó 1 gyorscsatlakozóval és 2 kuplung csatlakozóval', '4437', 832, 1.2, 1343, 0, '', '2014-05-21 14:32:37'),
(25, '', 'Gyorscsatlakozó', '4450 1/2”\r\n4455 3/4”', 0, 1.2, 1343, 0, '', ''),
(26, '', 'Stoppos Gyorscsatlakozó', '4451 1/2”\r\n4456 3/4”', 0, 1.2, 1343, 0, '', ''),
(27, '', 'Átalakító', '4425 1/2”\r\n4426 3/4”', 0, 1.2, 1343, 0, '', ''),
(28, '', 'Tömlővéges T elágazó', '4489 1/2”\r\n4490 3/4”', 0, 1.2, 1343, 0, '', ''),
(29, '', 'Tömlővéges és 2 kuplungos T elágazó', '4491 3/4”', 782, 1.2, 1343, 0, '', '2014-05-21 14:39:41'),
(30, '', 'Elzárható csatlakozó', '4320', 448, 1.2, 1343, 0, '', '2014-05-21 14:40:01'),
(31, '', 'Tömlő összekötő', '4480 1/2”\r\n4481 3/4”', 0, 1.2, 1343, 0, '', ''),
(32, '', 'Tömlő összekötő', '4485 1/2” x 3/4”', 359, 1.2, 1343, 0, '', '2014-05-21 14:42:07'),
(33, '', 'Csatlakozókészlet', '4428 1/2”', 1220, 1.2, 1343, 0, '', '2014-05-21 14:42:27'),
(34, '', 'T elágazó 2 elzáróval', '4492', 1787, 1.2, 1343, 0, '', '2014-05-21 14:43:19'),
(35, '', 'T elágazó 3 elzáróval', '4520', 2353, 1.2, 1343, 0, '', '2014-05-21 14:43:44'),
(36, '', 'T elágazó 1 elzáróval', '4493', 1458, 1.2, 1343, 0, '', '2014-05-21 14:44:18'),
(37, '', 'Csatlakozó - belső menetes', '4470 1/2 x 3/4”\r\n4472 1/2 x 1/2”\r\n4473 1/2 x 1”\r\n4474 3/4 x 1/2”\r\n4475 3/4 x 3/4”\r\n4477 3/4 x 1”', 0, 1.2, 1343, 0, '', ''),
(38, '', 'Csatlakozó - külső menetes', '4471 3/4 x 1/2”\r\n4476 3/4 x 3/4”', 0, 1.2, 1343, 0, '', ''),
(39, '', 'Csatlakozó - külső menetes kuplung csatlakozós', '4460 3/4”\r\n4461 1/2”', 0, 1.2, 1343, 0, '', ''),
(40, '', 'Sugárcső', '4550 Kuplung csatlakozóval\r\n4552 1/2”-os tömlővéggel\r\n4553 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, '', ''),
(41, '', 'Locsolórózsa', '4560 állítható vízsugárral\r\n4555 szélesebb szórófejjel', 0, 1.2, 1344, 0, '', ''),
(42, '', 'Pisztolyos szórófej', '4600 Kuplung csatlakozóval\r\n4602 1/2”-os tömlővéggel\r\n4603 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, '', ''),
(43, '', 'Multifunkciós elzárhatós négy állású locsolórózsa', '4755/5', 2141, 1.2, 1344, 0, '', '2014-05-21 14:56:07'),
(44, '', 'Pisztolyos locsoló', '4605 kuplungos', 1371, 1.2, 1344, 0, '', '2014-05-21 14:56:35'),
(45, '', 'Leszúrható locsoló 360 fokos', '4575 kupl. cs.\r\n4577 1/2”\r\n4578 3/4”', 0, 1.2, 1344, 0, '', ''),
(46, '', 'Forgó locsoló', '4585 kupl. cs.\r\n4587 1/2”\r\n4588 3/4”', 0, 1.2, 1344, 0, '', ''),
(48, '', 'Leszúrható szakaszos locsoló', '4595', 2461, 1.2, 1344, 0, '', '2014-05-21 15:02:58'),
(49, '', 'Átfolyós forgós locsoló', '4785', 1441, 1.2, 1344, 0, '', '2014-05-21 15:03:14');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

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
(42, 20, NULL, 'cic.jpg', '2014-05-16 11:08:25', '2014-05-16 11:08:25'),
(43, 20, NULL, 'cic2.jpg', '2014-05-16 11:08:42', '2014-05-16 11:08:42');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

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
(43, 46, '3/4"-os tömlő csatlakozóval', '4588', 1575, 37, '2014-05-21 15:02:15', '2014-05-21 15:02:15');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
