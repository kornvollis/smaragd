-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2014 at 04:56 PM
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
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `netto_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `profit_key` int(11) NOT NULL,
  `category_id` int(6) DEFAULT NULL,
  `isFeatured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `netto_price`, `price`, `profit_key`, `category_id`, `isFeatured`) VALUES
(20, 'Kuplungcsatlakozó', '4401 1/2”\r\n4400 3/4”\r\n4402 1”', 0, 0, 0, 1343, 0),
(21, 'Külsőmenetes Kuplungcsatlakozó', '4411 1/2”\r\n4410 3/4”', 0, 0, 0, 1343, 0),
(22, 'Kuplungcsatlakozó', '4430', 0, 0, 0, 1343, 0),
(23, 'Y elágazó 3 kuplung csatlakozóval és 2 db elzáróval', '4435/1', 0, 0, 0, 1343, 0),
(24, 'Y elágazó 1 gyorscsatlakozóval és 2 kuplung csatlakozóval', '4437', 0, 0, 0, 1343, 0),
(25, 'Gyorscsatlakozó', '4450 1/2”\r\n4455 3/4”', 0, 0, 0, 1343, 0),
(26, 'Stoppos Gyorscsatlakozó', '4451 1/2”\r\n4456 3/4”', 0, 0, 0, 1343, 0),
(27, 'Átalakító', '4425 1/2”\r\n4426 3/4”', 0, 0, 0, 1343, 0),
(28, 'Tömlővéges T elágazó', '4489 1/2”\r\n4490 3/4”', 0, 0, 0, 1343, 0),
(29, 'Tömlővéges és 2 kuplungos T elágazó', '4491 3/4”', 0, 0, 0, 1343, 0),
(30, 'Elzárható csatlakozó', '4320', 0, 0, 0, 1343, 0),
(31, 'Tömlő összekötő', '4480 1/2”\r\n4481 3/4”', 0, 0, 0, 1343, 0),
(32, 'Tömlő összekötő', '4485 1/2” x 3/4”', 0, 0, 0, 1343, 0),
(33, 'Csatlakozókészlet', '4428 1/2”', 0, 0, 0, 1343, 0),
(34, 'T elágazó 2 elzáróval', '4492', 0, 0, 0, 1343, 0),
(35, 'T elágazó 3 elzáróval', '4520', 0, 0, 0, 1343, 0),
(36, 'T elágazó 1 elzáróval', '4493', 0, 0, 0, 1343, 0),
(37, 'Csatlakozó - belső menetes', '4470 1/2 x 3/4”\r\n4472 1/2 x 1/2”\r\n4473 1/2 x 1”\r\n4474 3/4 x 1/2”\r\n4475 3/4 x 3/4”\r\n4477 3/4 x 1”', 0, 0, 0, 1343, 0),
(38, 'Csatlakozó - külső menetes', '4471 3/4 x 1/2”\r\n4476 3/4 x 3/4”', 0, 0, 0, 1343, 0),
(39, 'Csatlakozó - külső menetes kuplung csatlakozós', '4460 3/4”\r\n4461 1/2”', 0, 0, 0, 1343, 0),
(40, 'Sugárcső', '4550 Kuplung csatlakozóval\r\n4552 1/2”-os tömlővéggel\r\n4553 3/4”-os tömlővéggel', 0, 0, 0, 1344, 0),
(41, 'Locsolórózsa', '4560 állítható vízsugárral\r\n4555 szélesebb szórófejjel', 0, 0, 0, 1344, 0),
(42, 'Pisztolyos szórófej', '4600 Kuplung csatlakozóval\r\n4602 1/2”-os tömlővéggel\r\n4603 3/4”-os tömlővéggel', 0, 0, 0, 1344, 0),
(43, 'Multifunkciós elzárhatós négy állású locsolórózsa', '4755/5', 0, 0, 0, 1344, 0),
(44, 'Pisztolyos locsoló', '4605 kuplungos', 0, 0, 0, 1344, 0),
(45, 'Leszúrható locsoló 360 fokos', '4575 kupl. cs.\r\n4577 1/2”\r\n4578 3/4”', 0, 0, 0, 1344, 0),
(46, 'Forgó locsoló', '4585 kupl. cs.\r\n4587 1/2”\r\n4588 3/4”', 0, 0, 0, 1344, 0),
(48, 'Leszúrható szakaszos locsoló', '4595', 0, 0, 0, 1344, 0),
(49, 'Átfolyós forgós locsoló', '4785', 0, 0, 0, 1344, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `path`) VALUES
(1, 1, 'Cserép', 'cserep.jpg'),
(2, 1, 'Kuki', 'kapa001.jpg'),
(3, 1, 'Kuki', 'kapa002.jpg'),
(6, 3, NULL, 'test.jpg'),
(7, 1, NULL, 'xKE07.jpg'),
(8, 18, NULL, 'cic.jpg'),
(9, 20, NULL, 'pan_page75_image3.png'),
(10, 21, NULL, 'pan_page75_image4.png'),
(11, 22, NULL, 'pan_page75_image5.png'),
(12, 23, NULL, 'pan_page75_image12.jpg'),
(13, 24, NULL, 'pan_page75_image14.jpg'),
(14, 25, NULL, 'pan_page75_image6.png'),
(15, 26, NULL, 'pan_page75_image7.png'),
(16, 27, NULL, 'pan_page75_image8.png'),
(17, 28, NULL, 'pan_page75_image17.jpg'),
(18, 29, NULL, 'pan_page75_image18.png'),
(19, 30, NULL, 'pan_page75_image19.jpg'),
(21, 32, NULL, 'pan_page75_image10.jpg'),
(22, 31, NULL, 'pan_page75_image9.jpg'),
(23, 33, NULL, 'pan_page75_image21.png'),
(24, 34, NULL, 'pan_page75_image20.png'),
(25, 35, NULL, 'pan_page75_image15.jpg'),
(26, 36, NULL, 'pan_page75_image16.jpg'),
(27, 39, NULL, 'pan_page75_image25.jpg'),
(28, 37, NULL, 'pan_page75_image23.jpg'),
(29, 38, NULL, 'pan_page75_image24.jpg'),
(30, 40, NULL, 'pan_page75_image31.png'),
(31, 41, NULL, 'pan_page75_image33.png'),
(32, 41, NULL, 'pan_page75_image32.png'),
(33, 42, NULL, 'pan_page75_image40.png'),
(34, 43, NULL, 'pan_page75_image27.png'),
(35, 44, NULL, 'pan_page75_image28.jpg'),
(36, 45, NULL, 'pan_page75_image34.jpg'),
(37, 46, NULL, 'pan_page75_image35.jpg'),
(38, 48, NULL, 'pan_page75_image44.png'),
(41, 49, NULL, 'pan_page75_image37.jpg');

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
(1, 'Chris Sevilleja', 'sevilayha', 'chris@scotch.io', '$2y$10$Nibp1wg2wRBQkd7qoK.VdOnFmg6CJ4/cMHaU8OgNr60YFaMLoCVk6', '2014-04-28 09:00:45', '2014-04-28 09:00:45');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
