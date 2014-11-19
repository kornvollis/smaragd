-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2014 at 04:53 PM
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
  `old_price` int(11) DEFAULT NULL,
  `profit_key` float NOT NULL DEFAULT '1',
  `category_id` int(6) DEFAULT NULL,
  `isFeatured` tinyint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL,
  `created_at` varchar(20) NOT NULL,
  `updated_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=142 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `description`, `price`, `old_price`, `profit_key`, `category_id`, `isFeatured`, `display`, `created_at`, `updated_at`) VALUES
(20, '', 'Kuplungcsatlakozó', 'Különböző méretekben', 0, NULL, 1.2, 1343, 0, 0, '', '2014-05-21 14:07:17'),
(21, '', 'Külsőmenetes Kuplungcsatlakozó', '4411 1/2”\r\n4410 3/4”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(22, '4430', 'Kuplungcsatlakozó', '', 169, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:48:42'),
(23, '4435/1', 'Y elágazó 3 kuplung csatlakozóval és 2 db elzáróval', '', 1220, 2200, 1.2, 1343, 0, 0, '', '2014-11-19 13:28:19'),
(24, '4437', 'Y elágazó 1 gyorscsatlakozóval és 2 kuplung csatlakozóval', '', 832, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:18'),
(25, '', 'Gyorscsatlakozó', '4450 1/2”\r\n4455 3/4”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(26, '', 'Stoppos Gyorscsatlakozó', '4451 1/2”\r\n4456 3/4”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(27, '', 'Átalakító', '4425 1/2”\r\n4426 3/4”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(28, '', 'Tömlővéges T elágazó', '4489 1/2”\r\n4490 3/4”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(29, '4491', 'Tömlővéges és 2 kuplungos T elágazó', 'Méret: 3/4”', 782, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:39'),
(30, '4320', 'Elzárható csatlakozó', '', 448, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:00'),
(31, '', 'Tömlő összekötő', '4480 1/2”\r\n4481 3/4”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(32, '4485', 'Tömlő összekötő', 'Méret: 1/2” x 3/4”', 359, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:22'),
(33, '4428', 'Csatlakozókészlet', 'Méret: 1/2”', 1220, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:46'),
(34, '4492', 'T elágazó 2 elzáróval', '', 1787, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:58'),
(35, '4520', 'T elágazó 3 elzáróval', '', 2353, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:51:21'),
(36, '4493', 'T elágazó 1 elzáróval', '', 1458, NULL, 1.2, 1343, 0, 0, '', '2014-05-29 09:51:36'),
(37, '', 'Csatlakozó - belső menetes', '4470 1/2 x 3/4”\r\n4472 1/2 x 1/2”\r\n4473 1/2 x 1”\r\n4474 3/4 x 1/2”\r\n4475 3/4 x 3/4”\r\n4477 3/4 x 1”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(38, '', 'Csatlakozó - külső menetes', '4471 3/4 x 1/2”\r\n4476 3/4 x 3/4”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(39, '', 'Csatlakozó - külső menetes kuplung csatlakozós', '4460 3/4”\r\n4461 1/2”', 0, NULL, 1.2, 1343, 0, 0, '', ''),
(40, '', 'Sugárcső', '4550 Kuplung csatlakozóval\r\n4552 1/2”-os tömlővéggel\r\n4553 3/4”-os tömlővéggel', 0, NULL, 1.2, 1344, 0, 0, '', ''),
(41, '', 'Locsolórózsa', '4560 állítható vízsugárral\r\n4555 szélesebb szórófejjel', 0, NULL, 1.2, 1344, 0, 0, '', ''),
(42, '', 'Pisztolyos szórófej', '4600 Kuplung csatlakozóval\r\n4602 1/2”-os tömlővéggel\r\n4603 3/4”-os tömlővéggel', 0, NULL, 1.2, 1344, 0, 0, '', ''),
(43, '4755/5', 'Multifunkciós elzárhatós négy állású locsolórózsa', '', 2141, NULL, 1.2, 1344, 0, 0, '', '2014-05-29 09:51:58'),
(44, '', 'Pisztolyos locsoló', '4605 kuplungos', 1371, NULL, 1.2, 1344, 0, 0, '', '2014-05-21 14:56:35'),
(45, '', 'Leszúrható locsoló 360 fokos', '4575 kupl. cs.\r\n4577 1/2”\r\n4578 3/4”', 0, NULL, 1.2, 1344, 0, 0, '', ''),
(46, '', 'Forgó locsoló', '4585 kupl. cs.\r\n4587 1/2”\r\n4588 3/4”', 0, NULL, 1.2, 1344, 0, 0, '', ''),
(48, '4595', 'Leszúrható szakaszos locsoló', '', 2461, NULL, 1.2, 1344, 0, 0, '', '2014-05-29 09:52:14'),
(49, '4785', 'Átfolyós forgós locsoló', '', 1441, NULL, 1.2, 1344, 0, 0, '', '2014-05-29 09:52:32'),
(50, '4616', 'Pisztolyos	locsoló szett', '', 2133, NULL, 1.2, 1344, 0, 0, '2014-05-29 09:55:42', '2014-05-29 12:59:32'),
(51, '4605/5', 'Multifunkciós pisztolyos négy állású	locsoló', '', 2384, NULL, 1.2, 1344, 0, 0, '2014-05-29 09:57:52', '2014-05-29 12:59:47'),
(52, '4630', 'Talpas 360 fokos locsoló', '', 2336, NULL, 1.2, 1344, 0, 0, '2014-05-29 09:59:50', '2014-05-29 13:00:18'),
(53, '4640', 'Talpas forgó locsoló', '', 2842, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:00:56', '2014-05-29 12:38:03'),
(54, '4650', 'Talpas szakaszos locsoló', '', 4040, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:02:23', '2014-05-29 13:00:34'),
(55, '4671', 'Locsoló háromlábú álvánnyal', '', 5879, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:08:44', '2014-05-29 12:39:12'),
(56, '4689', 'Billenős locsoló', '(4ATM, 220 m2 öntözésre alkalmas	13,5	m*15m)\r\n\r\nÁtfolyás 16 l / perc', 4776, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:15:08', '2014-05-29 12:39:48'),
(57, '4688', 'Billenős locsoló', '', 1579, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:17:01', '2014-05-29 12:45:00'),
(58, '', 'Süllyesztett locsoló', '', 0, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:19:01', '2014-05-29 10:19:01'),
(59, '', 'Gyorscsatlakozós locsolófej', '', 0, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:27:19', '2014-05-29 10:27:19'),
(60, '4510', 'Süllyesztett csatlakozó doboz', '', 3668, NULL, 1.2, 1344, 0, 0, '2014-05-29 10:29:32', '2014-05-29 12:55:25'),
(61, '', 'Maxi	kuplung csatlakozó', '', 0, NULL, 1.2, 1343, 0, 0, '2014-05-29 10:31:37', '2014-05-29 10:31:37'),
(62, '4457', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, NULL, 1.2, 1343, 0, 0, '2014-05-29 10:34:10', '2014-05-29 12:57:04'),
(63, '4458', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, NULL, 1.2, 1343, 0, 0, '2014-05-29 10:35:05', '2014-05-29 12:57:40'),
(64, '4459', 'Maxi	gyorscsatlakozó', 'Méret: 3/4”x1”		', 938, NULL, 1.2, 1343, 0, 0, '2014-05-29 10:36:08', '2014-05-29 12:58:04'),
(65, '4486', 'Maxi	tömlő összekötő', 'Méret: 3/4” x 1”	', 572, NULL, 1.2, 1343, 0, 0, '2014-05-29 10:37:15', '2014-05-29 12:58:27'),
(66, '4487', 'Maxi	tömlő összekötő', 'Méret: 1” x 1”', 602, NULL, 1.2, 1343, 0, 0, '2014-05-29 10:38:38', '2014-05-29 12:58:45'),
(67, '4432', 'Maxi	T-elágazó', 'Méret: 1''''', 270, 500, 1.2, 1343, 0, 0, '2014-05-29 10:39:39', '2014-05-29 12:59:16'),
(68, '', 'Tömítések', '', 0, NULL, 1.2, 1343, 0, 0, '2014-05-29 10:40:43', '2014-05-29 10:40:43'),
(69, '', 'Tömlőkocsi Siroflex', '', 0, NULL, 1.2, 1345, 0, 0, '2014-05-30 11:37:15', '2014-05-30 11:37:15'),
(70, 'AG311', 'Fém tömlőkocsi', '3/4” 50 m = 1/2” 80 m', 9381, NULL, 1.2, 1345, 0, 0, '2014-05-30 11:40:13', '2014-05-30 11:40:13'),
(71, 'AG317', 'Maxi fém tömlőkocsi', '3/4” 90 m = 1/2” 110 m', 15180, NULL, 1.2, 1345, 0, 0, '2014-05-30 11:41:40', '2014-05-30 11:41:40'),
(72, '', 'Fali tömlő tartó', '', 0, NULL, 1.2, 1345, 0, 0, '2014-05-30 11:49:39', '2014-05-30 11:49:39'),
(73, '4874', 'Tömlőkocsi összecsukható', '1/2” 50 m', 4397, NULL, 1.2, 1345, 0, 0, '2014-05-30 12:40:20', '2014-05-30 12:40:20'),
(74, '', 'Réz kuplung csatlakozó', '', 0, NULL, 1.2, 1346, 0, 0, '2014-05-30 12:43:40', '2014-05-30 12:43:40'),
(75, '', 'Réz gyorscsatlakozó', '', 0, NULL, 1.2, 1346, 0, 0, '2014-05-30 13:11:04', '2014-05-30 13:11:04'),
(76, '', 'Réz tömlőösszekötő', '', 0, NULL, 1.2, 1346, 0, 0, '2014-05-30 13:28:14', '2014-05-30 13:28:14'),
(77, '4430R', 'Réz kuplung csatlakoz', '', 357, NULL, 1.2, 1346, 0, 0, '2014-05-30 13:30:56', '2014-05-30 13:30:56'),
(78, '4550R', 'Kuplung csatlakozós réz szórófej', '', 1037, NULL, 1.2, 1346, 0, 0, '2014-05-30 13:31:50', '2014-05-30 13:31:50'),
(79, '', 'Réz tömlővég', '', 0, NULL, 1.2, 1346, 0, 0, '2014-05-30 13:33:50', '2014-05-30 13:33:50'),
(80, '4437/1R', 'Elzárható Y elágazó', '', 2094, NULL, 1.2, 1346, 0, 0, '2014-05-30 13:37:36', '2014-05-30 13:37:36'),
(81, '', 'Bajonett gyorscsatlakozó belső mentes', '', 0, NULL, 1.2, 1346, 0, 0, '2014-05-30 13:38:36', '2014-05-30 13:39:28'),
(82, '4650R', 'Rézfejes szakaszos locsoló háromlábú állvánnyal	', '', 4858, NULL, 1.2, 1347, 0, 0, '2014-06-03 13:05:51', '2014-06-03 13:05:51'),
(83, '4640R', 'Rézfejes kerekes forgólocsoló	12m*12m', '', 2552, NULL, 1.2, 1347, 0, 0, '2014-06-03 14:01:04', '2014-06-03 14:01:04'),
(84, '4595R', 'Rézfejes szakaszos locsoló leszúróval', '', 2154, NULL, 1.2, 1347, 0, 0, '2014-06-03 14:02:51', '2014-06-03 14:02:51'),
(85, '4695R', 'Rézfejes,	kerekes szakaszos locsoló', '', 2872, NULL, 1.2, 1347, 0, 0, '2014-06-03 14:04:01', '2014-06-03 14:04:01'),
(86, '4604', 'Fémfejes pisztolyos locsoló - hétfunkciós', '', 1588, NULL, 1.2, 1347, 0, 0, '2014-06-03 14:05:04', '2014-06-03 14:05:04'),
(87, '4605R', 'Fémfejes	pisztolyos	locsoló', '', 1497, NULL, 1.2, 1347, 0, 0, '2014-06-03 14:06:06', '2014-06-03 14:06:06'),
(88, 'HECHT 270', 'Kézi	szórókocsi', '27 literes tárolóval.', 8587, NULL, 1.2, 1348, 0, 0, '2014-06-03 14:07:49', '2014-06-03 14:08:57'),
(89, 'HECHT 229', 'Kézi	szórókocsi. 29 literes tárolóval', 'Gumikerekes', 17786, NULL, 1.2, 1348, 0, 0, '2014-06-03 14:10:10', '2014-06-03 14:10:10'),
(90, '3450', 'Frissítő szett', 'Nézze meg termékbemutató videónkat, szerelési útmutatóval!\r\n\r\n<a href="https://www.youtube.com/watch?v=-tcq3RSSyvo" target="_blank">ITT</a>', 4400, NULL, 1.2, 1349, 0, 0, '2014-06-03 14:12:28', '2014-06-03 14:26:20'),
(91, '22/01', 'Róma állókút (zöld)', 'Zöld színű', 36000, NULL, 1.2, 1350, 0, 0, '2014-06-05 13:16:39', '2014-07-09 14:24:46'),
(92, '22/02', 'Róma állókút (fehér)', 'Fehér színben', 36000, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:10:47', '2014-07-09 14:25:34'),
(93, '22/03', 'Róma állókút (fekete)', 'Fekete színben', 36000, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:11:49', '2014-07-09 14:25:55'),
(94, '22/05', 'Róma állókút (arany)', '"Kalapácslakk arany" színben', 38500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:17:14', '2014-07-09 14:26:24'),
(95, '22/06', 'Róma állókút (ezüst)', '"Kalapácslakk ezüst" színben', 38500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:19:03', '2014-07-09 14:27:19'),
(96, '22/07', 'Róma állókút (bronz)', '"Kalapácslakk bronz" színben', 38500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:20:18', '2014-07-09 14:27:56'),
(97, '22/09', 'Róma állókút (Sárga műkő)', 'Sárga műkő', 40500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:22:06', '2014-07-09 14:28:26'),
(98, '22/10', 'Róma állókút (Antikolt arany)', 'Antikolt arany', 40500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:23:25', '2014-07-09 14:28:51'),
(99, '22/11', 'Róma állókút (Antikolt ezüst)', 'Antikolt ezüst', 40500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:24:30', '2014-07-09 14:29:21'),
(100, '22/12', 'Róma állókút (Antikolt bronz)', 'Antikolt bronz', 40500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:26:12', '2014-07-09 14:30:06'),
(101, '22/13', 'Róma állókút (Antikolt zöld)', 'Antikolt zöld', 40500, NULL, 1.2, 1350, 0, 0, '2014-06-17 13:27:16', '2014-07-09 14:31:04'),
(102, '', 'Műanyag fonatú üvegballonok', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 10:20:14', '2014-07-04 10:20:14'),
(103, 'DAMA5', 'Dáma üveg, csattal', '', 785, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:23:09', '2014-07-04 12:23:09'),
(104, '', 'Vesszőfonatú demizson', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:26:10', '2014-07-04 12:26:10'),
(105, '18180', 'Hengeres dugó borosüveghez', '38 mm, szőlő mintás', 12, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:30:52', '2014-07-04 12:30:52'),
(106, '', 'Parafadugó demizsonhoz', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:31:33', '2014-07-04 12:31:33'),
(107, '19909', 'Parafadugók ( kúpos ) A osztályos', '100 db / csomag - 15x20 mm', 2700, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:36:48', '2014-07-04 12:37:44'),
(108, '17121', 'Kézi dugózó', '', 4754, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:39:37', '2014-07-04 12:39:37'),
(109, 'TGC', 'Állványos palackozó, fémpofás', '', 12595, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:40:45', '2014-07-04 12:40:45'),
(110, '17450', 'Állványos palackozó műanyag pofás', '', 10202, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:42:08', '2014-07-04 12:42:08'),
(111, 'TCA', 'Koronás kupak záró', '', 15438, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:44:47', '2014-07-04 12:44:47'),
(112, 'TC2T', 'Koronás kupak záró TC2T', '', 3717, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:46:32', '2014-07-04 12:46:32'),
(113, 'DMA', 'Kézi zúzó-bogyózó', '', 45482, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:47:59', '2014-07-04 12:47:59'),
(114, 'DMS', 'Motoros zúzó-bogyózó csúszógaratos', '', 78720, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:50:53', '2014-07-04 12:50:53'),
(115, 'DMC', 'Motoros zúzó-bogyózó csiga behúzóval', '', 80907, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:53:21', '2014-07-04 12:53:21'),
(116, 'DMCI', 'Motoros zúzó-bogyózó csiga behúzóval', 'inox kivitel', 153067, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:56:20', '2014-07-04 12:56:20'),
(117, 'PMN', 'Szőllő daráló 400 x 400 mm', '', 17275, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:58:33', '2014-07-04 12:58:33'),
(118, 'PP', 'Szőllő daráló 800 x 500 mm', '', 22741, NULL, 1.2, 1351, 0, 0, '2014-07-04 12:59:35', '2014-07-04 13:00:33'),
(119, 'PG', 'Szőllő daráló 950 x 600 mm', '', 27508, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:02:53', '2014-07-04 13:02:53'),
(120, 'PM', 'Szőllő daráló 950 x 600 mm - Motoros 220 V', '', 66912, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:03:56', '2014-07-04 13:03:56'),
(121, 'PIP', 'Gyümölcs daráló 430 x 360 mm', '', 46576, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:05:04', '2014-07-04 13:05:04'),
(122, 'PIPMO', 'Gyümölcs daráló 430 x 360 mm - Motoros 220 V', '', 85280, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:05:51', '2014-07-04 13:05:51'),
(123, 'PIG', 'Gyümölcs daráló 950 x 600 mm', '', 58384, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:06:56', '2014-07-04 13:06:56'),
(124, 'PIGMO', 'Gyümölcs daráló 950 x 600 mm - Motoros 220 V', '', 85280, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:15:44', '2014-07-04 13:15:44'),
(125, 'G20', 'Bor szivattyú 33 liter / perc, 20-as csatlakozóval', '', 16618, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:17:09', '2014-07-04 13:17:09'),
(126, 'G20I', 'Bor szivattyú, inox kivitelben, élelmiszeripari minősítéssel', '', 23616, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:19:43', '2014-07-04 13:19:43'),
(127, '', 'Borszűrő', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:22:34', '2014-07-04 13:22:34'),
(128, '', 'Vízprés', 'A gyümölcsprés alkalmas a különböző őrölt gyümölcsfajták, szőlő\r\npréselésével gyümölcslé / must kinyerésére, söprű préselésére,\r\nhálózati víznyomás segítségével. Az általános 2,5bar víznyomás\r\nelegendő a prés hatékony üzemeltetéséhez. A gép a korábban\r\nledarált gyümölcsöt a kosár falának nyomja. A darált gyümölcs\r\npréseléséhez szükséges munkát maga a víznyomás végzi.\r\nA membrán magas élettartamú anyagból készült.', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:30:42', '2014-07-04 13:31:04'),
(129, '', 'Szüretelő kádak', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:40:49', '2014-07-04 13:40:49'),
(130, 'RIALZO', 'Magasító, különböző méretekben RIALZO', '', 10496, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:44:27', '2014-07-04 13:44:27'),
(131, 'SCOLA', 'Üveg szárító, 81 férőhelyes', '', 2100, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:45:07', '2014-07-04 13:45:07'),
(132, '20/1S', 'Csap szüretelőkádhoz', '1''''', 2016, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:45:49', '2014-07-04 13:46:09'),
(133, '150S', 'Fogantyú szüretelőkádhoz', '', 1393, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:46:39', '2014-07-04 13:46:39'),
(134, '17S', 'Szűrő szüretelőkádhoz', '', 678, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:47:23', '2014-07-04 13:47:23'),
(135, '', 'Műanyag kanna csappal', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:48:12', '2014-07-04 13:48:12'),
(136, '', 'Műanyag tölcsér', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:49:58', '2014-07-04 13:49:58'),
(137, '', 'Műanyag hordó csappal', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:53:12', '2014-07-04 13:53:12'),
(138, '', 'Borcsap - fa', '', 0, NULL, 1.2, 1351, 0, 0, '2014-07-04 13:56:23', '2014-07-04 13:56:23'),
(140, '', 'Teszt obj', '', 0, NULL, 1.2, 1343, 0, 0, '2014-07-14 11:52:27', '2014-07-14 11:52:27'),
(141, '23/01', 'Vienna falikút zöld', '', 0, NULL, 1.2, 1352, 0, 0, '2014-07-14 12:04:23', '2014-07-14 12:10:05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
