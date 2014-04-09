-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2014 at 05:57 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1342 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `lft`, `rgt`) VALUES
(1337, 'barackos', 1, 2),
(1338, 'barackfavirag3', 3, 8),
(1339, 'barackfavirag4', 9, 10),
(1340, 'barackfavirag5', 4, 7),
(1341, 'barackfavirag89', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `netto_price`, `price`, `profit_key`, `category_id`, `isFeatured`) VALUES
(1, 'Kakaduuuu', 'Műanyag kancsóó Műanyag kancsóó Műanyag kancsóó Műanyag kancsóó Műanyag kancsóó', 5000, 45000, 5, 1337, 1),
(3, 'Virág cserép', 'Virág cserép különbözö méretekben', 630, 8000, 0, 1337, 1),
(6, 'Szuper kapa', 'Kapáláshoz, gyomláláshoz, levegőztetéshez, barázdahúzáshoz, egyengetéshez.', 2133, 2709, 0, -1, 1),
(7, 'Gyomkapa 32 cm', '16 cm-es munkaszélesség. Gyom egyszerű eltávolításához.', 3937, 5000, 0, 0, 1),
(8, 'Répakapa 18 cm', 'Gyomok kapálásához és gyomlálásához.', 2212, 2809, 0, 0, 0),
(9, 'Kerti kapa szívformájú', 'Kapáláshoz, gyomláláshoz, levegőztetéshez, barázdahúzáshoz, egyengetéshez.', 1181, 1500, 0, 0, 0),
(11, 'Combysystem Kiskapa egyenes, 3 tüskével', 'Egyenes lemez, három fog, munkaszélesség 6,5 cm. A talaj lazításához, levegőztetéséhez, gyomlálásához. Kiváló, minőségi acélból készült. Cserélhető nyéllel.', 1339, 1700, 0, 0, 0),
(12, 'Fém tömlőskocsi 60', 'Strapabíró fém kivitelű tömlőskocsi tömlő nélkül. 50m 1/2"-os tömlő vagy 35m 3/4"-os tömlő tárolására alkalmas.', 12728, 16165, 0, 0, 0),
(13, 'Comfort tömlőkocsi easyRoll', 'A tömlőskocsik limuzinja! Minden extrával ellátva: nagy kerekek a kényelmes mozgatás érdekében. Csigakerekes tömlővezető. Utáncsepegés gátló. Tömlővel, gyorscsatlakozóval,locsolóval szerelve.', 1339, 1700, 0, 0, 0),
(14, 'Comfort tömlőskocsi easyRoll plus', 'A tömlőskocsik limuzinja! Minden extrával ellátva: tekerőkar a készülék tetején elhelyezve, nagy kerekek a kényelmes mozgatás érdekében. Csigakerekes tömlővezető. Utáncsepegés gátló. Tömlővel, gyorscsatlakozóval,locsolóval szerelve.', 19573, 24858, 0, 0, 0),
(16, 'Színes locsoló', 'szuper müanyag locslo kannák', 15748, 20000, 0, 0, 0),
(17, 'Amerikai harmónikás slag', 'Szuper ', 7874, 10000, 0, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `path`) VALUES
(1, 1, 'Cserép', 'cserep.jpg'),
(2, 1, 'Kuki', 'kapa001.jpg'),
(3, 1, 'Kuki', 'kapa002.jpg'),
(6, 3, NULL, 'test.jpg'),
(7, 1, NULL, 'xKE07.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
