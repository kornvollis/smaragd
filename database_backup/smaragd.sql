-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2014 at 03:55 PM
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
USE `b2704`;

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
(1343, 'Csatlakozók, elágazók', 1, 2),
(1344, 'Szórófejek', 3, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `description`, `price`, `profit_key`, `category_id`, `isFeatured`, `created_at`, `updated_at`) VALUES
(20, '', 'Kuplungcsatlakozó', 'Különböző méretekben', 0, 1.2, 1343, 0, '', '2014-05-21 14:07:17'),
(21, '', 'Külsőmenetes Kuplungcsatlakozó', '4411 1/2”\r\n4410 3/4”', 0, 1.2, 1343, 0, '', ''),
(22, '4430', 'Kuplungcsatlakozó', '', 169, 1.2, 1343, 0, '', '2014-05-29 09:48:42'),
(23, '4435/1', 'Y elágazó 3 kuplung csatlakozóval és 2 db elzáróval', '', 1220, 1.2, 1343, 0, '', '2014-05-29 09:49:01'),
(24, '4437', 'Y elágazó 1 gyorscsatlakozóval és 2 kuplung csatlakozóval', '', 832, 1.2, 1343, 0, '', '2014-05-29 09:49:18'),
(25, '', 'Gyorscsatlakozó', '4450 1/2”\r\n4455 3/4”', 0, 1.2, 1343, 0, '', ''),
(26, '', 'Stoppos Gyorscsatlakozó', '4451 1/2”\r\n4456 3/4”', 0, 1.2, 1343, 0, '', ''),
(27, '', 'Átalakító', '4425 1/2”\r\n4426 3/4”', 0, 1.2, 1343, 0, '', ''),
(28, '', 'Tömlővéges T elágazó', '4489 1/2”\r\n4490 3/4”', 0, 1.2, 1343, 0, '', ''),
(29, '4491', 'Tömlővéges és 2 kuplungos T elágazó', 'Méret: 3/4”', 782, 1.2, 1343, 0, '', '2014-05-29 09:49:39'),
(30, '4320', 'Elzárható csatlakozó', '', 448, 1.2, 1343, 0, '', '2014-05-29 09:50:00'),
(31, '', 'Tömlő összekötő', '4480 1/2”\r\n4481 3/4”', 0, 1.2, 1343, 0, '', ''),
(32, '4485', 'Tömlő összekötő', 'Méret: 1/2” x 3/4”', 359, 1.2, 1343, 0, '', '2014-05-29 09:50:22'),
(33, '4428', 'Csatlakozókészlet', 'Méret: 1/2”', 1220, 1.2, 1343, 0, '', '2014-05-29 09:50:46'),
(34, '4492', 'T elágazó 2 elzáróval', '', 1787, 1.2, 1343, 0, '', '2014-05-29 09:50:58'),
(35, '4520', 'T elágazó 3 elzáróval', '', 2353, 1.2, 1343, 0, '', '2014-05-29 09:51:21'),
(36, '4493', 'T elágazó 1 elzáróval', '', 1458, 1.2, 1343, 0, '', '2014-05-29 09:51:36'),
(37, '', 'Csatlakozó - belső menetes', '4470 1/2 x 3/4”\r\n4472 1/2 x 1/2”\r\n4473 1/2 x 1”\r\n4474 3/4 x 1/2”\r\n4475 3/4 x 3/4”\r\n4477 3/4 x 1”', 0, 1.2, 1343, 0, '', ''),
(38, '', 'Csatlakozó - külső menetes', '4471 3/4 x 1/2”\r\n4476 3/4 x 3/4”', 0, 1.2, 1343, 0, '', ''),
(39, '', 'Csatlakozó - külső menetes kuplung csatlakozós', '4460 3/4”\r\n4461 1/2”', 0, 1.2, 1343, 0, '', ''),
(40, '', 'Sugárcső', '4550 Kuplung csatlakozóval\r\n4552 1/2”-os tömlővéggel\r\n4553 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, '', ''),
(41, '', 'Locsolórózsa', '4560 állítható vízsugárral\r\n4555 szélesebb szórófejjel', 0, 1.2, 1344, 0, '', ''),
(42, '', 'Pisztolyos szórófej', '4600 Kuplung csatlakozóval\r\n4602 1/2”-os tömlővéggel\r\n4603 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, '', ''),
(43, '4755/5', 'Multifunkciós elzárhatós négy állású locsolórózsa', '', 2141, 1.2, 1344, 0, '', '2014-05-29 09:51:58'),
(44, '', 'Pisztolyos locsoló', '4605 kuplungos', 1371, 1.2, 1344, 0, '', '2014-05-21 14:56:35'),
(45, '', 'Leszúrható locsoló 360 fokos', '4575 kupl. cs.\r\n4577 1/2”\r\n4578 3/4”', 0, 1.2, 1344, 0, '', ''),
(46, '', 'Forgó locsoló', '4585 kupl. cs.\r\n4587 1/2”\r\n4588 3/4”', 0, 1.2, 1344, 0, '', ''),
(48, '4595', 'Leszúrható szakaszos locsoló', '', 2461, 1.2, 1344, 0, '', '2014-05-29 09:52:14'),
(49, '4785', 'Átfolyós forgós locsoló', '', 1441, 1.2, 1344, 0, '', '2014-05-29 09:52:32'),
(50, '4616', 'Pisztolyos	locsoló szett', '', 2133, 1.2, 1344, 0, '2014-05-29 09:55:42', '2014-05-29 12:59:32'),
(51, '4605/5', 'Multifunkciós pisztolyos négy állású	locsoló', '', 2384, 1.2, 1344, 0, '2014-05-29 09:57:52', '2014-05-29 12:59:47'),
(52, '4630', 'Talpas 360 fokos locsoló', '', 2336, 1.2, 1344, 0, '2014-05-29 09:59:50', '2014-05-29 13:00:18'),
(53, '4640', 'Talpas forgó locsoló', '', 2842, 1.2, 1344, 0, '2014-05-29 10:00:56', '2014-05-29 12:38:03'),
(54, '4650', 'Talpas szakaszos locsoló', '', 4040, 1.2, 1344, 0, '2014-05-29 10:02:23', '2014-05-29 13:00:34'),
(55, '4671', 'Locsoló háromlábú álvánnyal', '', 5879, 1.2, 1344, 0, '2014-05-29 10:08:44', '2014-05-29 12:39:12'),
(56, '4689', 'Billenős locsoló', '(4ATM, 220 m2 öntözésre alkalmas	13,5	m*15m)\r\n\r\nÁtfolyás 16 l / perc', 4776, 1.2, 1344, 0, '2014-05-29 10:15:08', '2014-05-29 12:39:48'),
(57, '4688', 'Billenős locsoló', '', 1579, 1.2, 1344, 0, '2014-05-29 10:17:01', '2014-05-29 12:45:00'),
(58, '', 'Süllyesztett locsoló', '', 0, 1.2, 1344, 0, '2014-05-29 10:19:01', '2014-05-29 10:19:01'),
(59, '', 'Gyorscsatlakozós locsolófej', '', 0, 1.2, 1344, 0, '2014-05-29 10:27:19', '2014-05-29 10:27:19'),
(60, '4510', 'Süllyesztett csatlakozó doboz', '', 3668, 1.2, 1344, 0, '2014-05-29 10:29:32', '2014-05-29 12:55:25'),
(61, '', 'Maxi	kuplung csatlakozó', '', 0, 1.2, 1343, 0, '2014-05-29 10:31:37', '2014-05-29 10:31:37'),
(62, '4457', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, 1.2, 1343, 0, '2014-05-29 10:34:10', '2014-05-29 12:57:04'),
(63, '4458', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, 1.2, 1343, 0, '2014-05-29 10:35:05', '2014-05-29 12:57:40'),
(64, '4459', 'Maxi	gyorscsatlakozó', 'Méret: 3/4”x1”		', 938, 1.2, 1343, 0, '2014-05-29 10:36:08', '2014-05-29 12:58:04'),
(65, '4486', 'Maxi	tömlő összekötő', 'Méret: 3/4” x 1”	', 572, 1.2, 1343, 0, '2014-05-29 10:37:15', '2014-05-29 12:58:27'),
(66, '4487', 'Maxi	tömlő összekötő', 'Méret: 1” x 1”', 602, 1.2, 1343, 0, '2014-05-29 10:38:38', '2014-05-29 12:58:45'),
(67, '4432', 'Maxi	T-elágazó', 'Méret: 1''''', 270, 1.2, 1343, 0, '2014-05-29 10:39:39', '2014-05-29 12:59:16'),
(68, '', 'Tömítések', '', 0, 1.2, 1343, 0, '2014-05-29 10:40:43', '2014-05-29 10:40:43');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

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
(67, 68, NULL, 'pan_page75_image77.png', '2014-05-29 10:40:59', '2014-05-29 10:40:59');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

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
(58, 68, 'Szűrős tömítés 1/2''''', '4951', 67, 67, '2014-05-29 10:42:58', '2014-05-29 12:53:17');

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
