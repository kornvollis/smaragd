-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: 81.2.194.146
-- Generation Time: Dec 02, 2014 at 04:05 PM
-- Server version: 5.5.37
-- PHP Version: 5.2.8
-- 
-- Database: `u624090393_main`
-- 
CREATE DATABASE `u624090393_main` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE u624090393_main;

-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1352 DEFAULT CHARSET=utf8 AUTO_INCREMENT=1352 ;

-- 
-- Dumping data for table `categories`
-- 

INSERT INTO `categories` VALUES (1343, 'Csatlakozók, elágazók', 1, 2, '', '');
INSERT INTO `categories` VALUES (1344, 'Szórófejek', 3, 4, '', '');
INSERT INTO `categories` VALUES (1345, 'Tömlőtartók, tömlőkocsik', 5, 6, '2014-05-30 11:36:34', '2014-05-30 11:36:34');
INSERT INTO `categories` VALUES (1346, 'Réz csatlakozók', 7, 8, '2014-05-30 12:43:18', '2014-05-30 12:43:18');
INSERT INTO `categories` VALUES (1347, 'Locsolók', 9, 10, '2014-06-03 13:04:31', '2014-06-03 13:04:31');
INSERT INTO `categories` VALUES (1348, 'Szórókocsik', 11, 12, '2014-06-03 14:06:47', '2014-06-03 14:06:47');
INSERT INTO `categories` VALUES (1349, 'Frissítő szett', 13, 14, '2014-06-03 14:11:41', '2014-06-03 14:11:41');
INSERT INTO `categories` VALUES (1350, 'Díszkutak', 15, 16, '2014-06-05 13:15:41', '2014-06-05 13:15:41');
INSERT INTO `categories` VALUES (1351, 'Borászati kellékek', 17, 18, '2014-07-04 10:19:17', '2014-07-04 10:19:17');

-- --------------------------------------------------------

-- 
-- Table structure for table `migrations`
-- 

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `migrations`
-- 

INSERT INTO `migrations` VALUES ('2014_04_28_105801_create_users_table', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_images`
-- 

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

-- 
-- Dumping data for table `product_images`
-- 

INSERT INTO `product_images` VALUES (9, 20, NULL, 'pan_page75_image3.png', '', '');
INSERT INTO `product_images` VALUES (10, 21, NULL, 'pan_page75_image4.png', '', '');
INSERT INTO `product_images` VALUES (11, 22, NULL, 'pan_page75_image5.png', '', '');
INSERT INTO `product_images` VALUES (12, 23, NULL, 'pan_page75_image12.jpg', '', '');
INSERT INTO `product_images` VALUES (13, 24, NULL, 'pan_page75_image14.jpg', '', '');
INSERT INTO `product_images` VALUES (14, 25, NULL, 'pan_page75_image6.png', '', '');
INSERT INTO `product_images` VALUES (15, 26, NULL, 'pan_page75_image7.png', '', '');
INSERT INTO `product_images` VALUES (16, 27, NULL, 'pan_page75_image8.png', '', '');
INSERT INTO `product_images` VALUES (17, 28, NULL, 'pan_page75_image17.jpg', '', '');
INSERT INTO `product_images` VALUES (18, 29, NULL, 'pan_page75_image18.png', '', '');
INSERT INTO `product_images` VALUES (19, 30, NULL, 'pan_page75_image19.jpg', '', '');
INSERT INTO `product_images` VALUES (21, 32, NULL, 'pan_page75_image10.jpg', '', '');
INSERT INTO `product_images` VALUES (22, 31, NULL, 'pan_page75_image9.jpg', '', '');
INSERT INTO `product_images` VALUES (23, 33, NULL, 'pan_page75_image21.png', '', '');
INSERT INTO `product_images` VALUES (24, 34, NULL, 'pan_page75_image20.png', '', '');
INSERT INTO `product_images` VALUES (25, 35, NULL, 'pan_page75_image15.jpg', '', '');
INSERT INTO `product_images` VALUES (26, 36, NULL, 'pan_page75_image16.jpg', '', '');
INSERT INTO `product_images` VALUES (27, 39, NULL, 'pan_page75_image25.jpg', '', '');
INSERT INTO `product_images` VALUES (28, 37, NULL, 'pan_page75_image23.jpg', '', '');
INSERT INTO `product_images` VALUES (29, 38, NULL, 'pan_page75_image24.jpg', '', '');
INSERT INTO `product_images` VALUES (30, 40, NULL, 'pan_page75_image31.png', '', '');
INSERT INTO `product_images` VALUES (31, 41, NULL, 'pan_page75_image33.png', '', '');
INSERT INTO `product_images` VALUES (32, 41, NULL, 'pan_page75_image32.png', '', '');
INSERT INTO `product_images` VALUES (33, 42, NULL, 'pan_page75_image40.png', '', '');
INSERT INTO `product_images` VALUES (34, 43, NULL, 'pan_page75_image27.png', '', '');
INSERT INTO `product_images` VALUES (35, 44, NULL, 'pan_page75_image28.jpg', '', '');
INSERT INTO `product_images` VALUES (36, 45, NULL, 'pan_page75_image34.jpg', '', '');
INSERT INTO `product_images` VALUES (37, 46, NULL, 'pan_page75_image35.jpg', '', '');
INSERT INTO `product_images` VALUES (38, 48, NULL, 'pan_page75_image44.png', '', '');
INSERT INTO `product_images` VALUES (41, 49, NULL, 'pan_page75_image37.jpg', '', '');
INSERT INTO `product_images` VALUES (42, 50, NULL, 'pan_page75_image38.png', '2014-05-29 09:56:42', '2014-05-29 09:56:42');
INSERT INTO `product_images` VALUES (43, 51, NULL, 'pan_page75_image39.png', '2014-05-29 09:58:19', '2014-05-29 09:58:19');
INSERT INTO `product_images` VALUES (44, 51, NULL, 'pan_page75_image29.jpg', '2014-05-29 09:58:33', '2014-05-29 09:58:33');
INSERT INTO `product_images` VALUES (45, 51, NULL, 'pan_page75_image30.jpg', '2014-05-29 09:58:41', '2014-05-29 09:58:41');
INSERT INTO `product_images` VALUES (46, 52, NULL, 'pan_page75_image41.png', '2014-05-29 10:00:09', '2014-05-29 10:00:09');
INSERT INTO `product_images` VALUES (47, 53, NULL, 'pan_page75_image42.png', '2014-05-29 10:01:35', '2014-05-29 10:01:35');
INSERT INTO `product_images` VALUES (48, 54, NULL, 'pan_page75_image43.png', '2014-05-29 10:03:07', '2014-05-29 10:03:07');
INSERT INTO `product_images` VALUES (49, 55, NULL, 'pan_page75_image53.jpg', '2014-05-29 10:10:44', '2014-05-29 10:10:44');
INSERT INTO `product_images` VALUES (50, 55, NULL, 'pan_page75_image54.jpg', '2014-05-29 10:11:00', '2014-05-29 10:11:00');
INSERT INTO `product_images` VALUES (51, 56, NULL, 'pan_page75_image52.png', '2014-05-29 10:16:11', '2014-05-29 10:16:11');
INSERT INTO `product_images` VALUES (52, 57, NULL, 'pan_page75_image60.jpg', '2014-05-29 10:17:52', '2014-05-29 10:17:52');
INSERT INTO `product_images` VALUES (53, 58, NULL, 'pan_page75_image55.jpg', '2014-05-29 10:19:52', '2014-05-29 10:19:52');
INSERT INTO `product_images` VALUES (54, 58, NULL, 'pan_page75_image56.jpg', '2014-05-29 10:20:03', '2014-05-29 10:20:03');
INSERT INTO `product_images` VALUES (55, 58, NULL, 'pan_page75_image55_table.jpg', '2014-05-29 10:24:20', '2014-05-29 10:24:20');
INSERT INTO `product_images` VALUES (56, 59, NULL, 'pan_page75_image58.jpg', '2014-05-29 10:27:45', '2014-05-29 10:27:45');
INSERT INTO `product_images` VALUES (57, 59, NULL, 'pan_page75_image58_table.jpg', '2014-05-29 10:28:35', '2014-05-29 10:28:35');
INSERT INTO `product_images` VALUES (58, 60, NULL, 'pan_page75_image57.jpg', '2014-05-29 10:29:48', '2014-05-29 10:29:48');
INSERT INTO `product_images` VALUES (59, 60, NULL, 'pan_page75_image59.jpg', '2014-05-29 10:30:05', '2014-05-29 10:30:05');
INSERT INTO `product_images` VALUES (60, 61, NULL, 'pan_page75_image68.jpg', '2014-05-29 10:32:11', '2014-05-29 10:32:11');
INSERT INTO `product_images` VALUES (61, 62, NULL, 'pan_page75_image69.jpg', '2014-05-29 10:34:23', '2014-05-29 10:34:23');
INSERT INTO `product_images` VALUES (62, 63, NULL, 'pan_page75_image72.jpg', '2014-05-29 10:35:26', '2014-05-29 10:35:26');
INSERT INTO `product_images` VALUES (63, 64, NULL, 'pan_page75_image74.jpg', '2014-05-29 10:36:28', '2014-05-29 10:36:28');
INSERT INTO `product_images` VALUES (64, 65, NULL, 'pan_page75_image70.jpg', '2014-05-29 10:37:27', '2014-05-29 10:37:27');
INSERT INTO `product_images` VALUES (65, 66, NULL, 'pan_page75_image73.jpg', '2014-05-29 10:38:51', '2014-05-29 10:38:51');
INSERT INTO `product_images` VALUES (66, 67, NULL, 'pan_page75_image76.png', '2014-05-29 10:39:59', '2014-05-29 10:39:59');
INSERT INTO `product_images` VALUES (67, 68, NULL, 'pan_page75_image77.png', '2014-05-29 10:40:59', '2014-05-29 10:40:59');
INSERT INTO `product_images` VALUES (68, 69, NULL, 'pan_page75_image64.png', '2014-05-30 11:37:34', '2014-05-30 11:37:34');
INSERT INTO `product_images` VALUES (69, 70, NULL, 'pan_page75_image65.png', '2014-05-30 11:40:28', '2014-05-30 11:40:28');
INSERT INTO `product_images` VALUES (70, 71, NULL, 'pan_page75_image66.png', '2014-05-30 11:41:53', '2014-05-30 11:41:53');
INSERT INTO `product_images` VALUES (71, 72, NULL, 'pan_page75_image63.jpg', '2014-05-30 12:05:47', '2014-05-30 12:05:47');
INSERT INTO `product_images` VALUES (72, 73, NULL, 'pan_page75_image67.png', '2014-05-30 12:40:31', '2014-05-30 12:40:31');
INSERT INTO `product_images` VALUES (73, 74, NULL, 'pan_page75_image82.png', '2014-05-30 13:08:25', '2014-05-30 13:08:25');
INSERT INTO `product_images` VALUES (74, 75, NULL, 'pan_page75_image83.png', '2014-05-30 13:11:54', '2014-05-30 13:11:54');
INSERT INTO `product_images` VALUES (75, 76, NULL, 'pan_page75_image84.png', '2014-05-30 13:29:10', '2014-05-30 13:29:10');
INSERT INTO `product_images` VALUES (76, 77, NULL, 'pan_page75_image85.png', '2014-05-30 13:31:07', '2014-05-30 13:31:07');
INSERT INTO `product_images` VALUES (77, 78, NULL, 'pan_page75_image86.png', '2014-05-30 13:32:03', '2014-05-30 13:32:03');
INSERT INTO `product_images` VALUES (78, 79, NULL, 'pan_page75_image92.png', '2014-05-30 13:34:21', '2014-05-30 13:34:21');
INSERT INTO `product_images` VALUES (79, 80, NULL, 'pan_page75_image79.jpg', '2014-05-30 13:37:54', '2014-05-30 13:37:54');
INSERT INTO `product_images` VALUES (80, 81, NULL, 'pan_page75_image88.png', '2014-05-30 13:39:05', '2014-05-30 13:39:05');
INSERT INTO `product_images` VALUES (81, 82, NULL, 'pan_page75_image340.jpg', '2014-06-03 13:06:23', '2014-06-03 13:06:23');
INSERT INTO `product_images` VALUES (82, 82, NULL, 'pan_page75_image341.png', '2014-06-03 13:06:35', '2014-06-03 13:06:35');
INSERT INTO `product_images` VALUES (83, 83, NULL, 'pan_page75_image338.jpg', '2014-06-03 14:02:02', '2014-06-03 14:02:02');
INSERT INTO `product_images` VALUES (84, 84, NULL, 'pan_page75_image342.png', '2014-06-03 14:03:13', '2014-06-03 14:03:13');
INSERT INTO `product_images` VALUES (85, 85, NULL, 'pan_page75_image339.jpg', '2014-06-03 14:04:11', '2014-06-03 14:04:11');
INSERT INTO `product_images` VALUES (86, 86, NULL, 'pan_page75_image336.png', '2014-06-03 14:05:17', '2014-06-03 14:05:17');
INSERT INTO `product_images` VALUES (87, 87, NULL, 'pan_page75_image337.png', '2014-06-03 14:06:14', '2014-06-03 14:06:14');
INSERT INTO `product_images` VALUES (88, 88, NULL, 'pan_page75_image344.png', '2014-06-03 14:08:18', '2014-06-03 14:08:18');
INSERT INTO `product_images` VALUES (89, 88, NULL, 'pan_page75_image345.png', '2014-06-03 14:08:28', '2014-06-03 14:08:28');
INSERT INTO `product_images` VALUES (90, 89, NULL, 'pan_page75_image343.png', '2014-06-03 14:10:23', '2014-06-03 14:10:23');
INSERT INTO `product_images` VALUES (91, 89, NULL, 'pan_page75_image346.png', '2014-06-03 14:10:30', '2014-06-03 14:10:30');
INSERT INTO `product_images` VALUES (92, 90, NULL, 'pan_page75_image393.jpg', '2014-06-03 14:13:16', '2014-06-03 14:13:16');
INSERT INTO `product_images` VALUES (93, 90, NULL, 'pan_page75_image394.jpg', '2014-06-03 14:13:22', '2014-06-03 14:13:22');
INSERT INTO `product_images` VALUES (94, 90, NULL, 'pan_page75_image396.png', '2014-06-03 14:13:32', '2014-06-03 14:13:32');
INSERT INTO `product_images` VALUES (106, 91, NULL, 'pan_page75_image1531.jpg', '2014-06-10 13:43:34', '2014-06-10 13:43:34');
INSERT INTO `product_images` VALUES (107, 92, NULL, 'pan_page75_image1526.jpg', '2014-06-17 13:10:56', '2014-06-17 13:10:56');
INSERT INTO `product_images` VALUES (108, 93, NULL, 'pan_page75_image1527.jpg', '2014-06-17 13:12:59', '2014-06-17 13:12:59');
INSERT INTO `product_images` VALUES (109, 94, NULL, 'pan_page75_image1528.jpg', '2014-06-17 13:18:04', '2014-06-17 13:18:04');
INSERT INTO `product_images` VALUES (110, 95, NULL, 'pan_page75_image1530.jpg', '2014-06-17 13:19:22', '2014-06-17 13:19:22');
INSERT INTO `product_images` VALUES (111, 96, NULL, 'pan_page75_image1529.jpg', '2014-06-17 13:20:47', '2014-06-17 13:20:47');
INSERT INTO `product_images` VALUES (112, 97, NULL, 'pan_page75_image1524.jpg', '2014-06-17 13:22:26', '2014-06-17 13:22:26');
INSERT INTO `product_images` VALUES (113, 98, NULL, 'pan_page75_image1521.jpg', '2014-06-17 13:23:49', '2014-06-17 13:23:49');
INSERT INTO `product_images` VALUES (114, 99, NULL, 'pan_page75_image1523.jpg', '2014-06-17 13:24:39', '2014-06-17 13:24:39');
INSERT INTO `product_images` VALUES (115, 100, NULL, 'pan_page75_image1525.jpg', '2014-06-17 13:26:45', '2014-06-17 13:26:45');
INSERT INTO `product_images` VALUES (116, 101, NULL, 'pan_page75_image1522.jpg', '2014-06-17 13:27:24', '2014-06-17 13:27:24');
INSERT INTO `product_images` VALUES (117, 102, NULL, 'pan_page75_image866.jpg', '2014-07-04 11:41:34', '2014-07-04 11:41:34');
INSERT INTO `product_images` VALUES (118, 103, NULL, 'pan_page75_image865.png', '2014-07-04 12:25:29', '2014-07-04 12:25:29');
INSERT INTO `product_images` VALUES (119, 104, NULL, 'pan_page75_image867.jpg', '2014-07-04 12:26:23', '2014-07-04 12:26:23');
INSERT INTO `product_images` VALUES (120, 104, NULL, 'pan_page75_image868.jpg', '2014-07-04 12:26:32', '2014-07-04 12:26:32');
INSERT INTO `product_images` VALUES (121, 105, NULL, 'pan_page75_image871.png', '2014-07-04 12:31:02', '2014-07-04 12:31:02');
INSERT INTO `product_images` VALUES (122, 106, NULL, 'pan_page75_image869.jpg', '2014-07-04 12:34:42', '2014-07-04 12:34:42');
INSERT INTO `product_images` VALUES (123, 107, NULL, 'pan_page75_image870.jpg', '2014-07-04 12:38:19', '2014-07-04 12:38:19');
INSERT INTO `product_images` VALUES (124, 108, NULL, 'pan_page75_image873.jpg', '2014-07-04 12:39:52', '2014-07-04 12:39:52');
INSERT INTO `product_images` VALUES (125, 109, NULL, 'pan_page75_image872.png', '2014-07-04 12:41:00', '2014-07-04 12:41:00');
INSERT INTO `product_images` VALUES (126, 110, NULL, 'pan_page75_image874.png', '2014-07-04 12:42:18', '2014-07-04 12:42:18');
INSERT INTO `product_images` VALUES (127, 111, NULL, 'pan_page75_image875.jpg', '2014-07-04 12:45:08', '2014-07-04 12:45:08');
INSERT INTO `product_images` VALUES (128, 112, NULL, 'pan_page75_image876.jpg', '2014-07-04 12:46:40', '2014-07-04 12:46:40');
INSERT INTO `product_images` VALUES (129, 113, NULL, 'pan_page75_image958.jpg', '2014-07-04 12:49:15', '2014-07-04 12:49:15');
INSERT INTO `product_images` VALUES (130, 114, NULL, 'pan_page75_image959.jpg', '2014-07-04 12:52:07', '2014-07-04 12:52:07');
INSERT INTO `product_images` VALUES (131, 115, NULL, 'pan_page75_image959.jpg', '2014-07-04 12:53:42', '2014-07-04 12:53:42');
INSERT INTO `product_images` VALUES (132, 116, NULL, 'pan_page75_image961.jpg', '2014-07-04 12:57:26', '2014-07-04 12:57:26');
INSERT INTO `product_images` VALUES (133, 117, NULL, 'pan_page75_image962.png', '2014-07-04 12:58:43', '2014-07-04 12:58:43');
INSERT INTO `product_images` VALUES (134, 118, NULL, 'pan_page75_image963.png', '2014-07-04 13:00:19', '2014-07-04 13:00:19');
INSERT INTO `product_images` VALUES (135, 119, NULL, 'pan_page75_image964.png', '2014-07-04 13:03:17', '2014-07-04 13:03:17');
INSERT INTO `product_images` VALUES (136, 120, NULL, 'pan_page75_image965.png', '2014-07-04 13:04:03', '2014-07-04 13:04:03');
INSERT INTO `product_images` VALUES (137, 121, NULL, 'pan_page75_image1129.png', '2014-07-04 13:05:14', '2014-07-04 13:05:14');
INSERT INTO `product_images` VALUES (138, 122, NULL, 'pan_page75_image1130.png', '2014-07-04 13:06:05', '2014-07-04 13:06:05');
INSERT INTO `product_images` VALUES (139, 123, NULL, 'pan_page75_image1132.png', '2014-07-04 13:13:09', '2014-07-04 13:13:09');
INSERT INTO `product_images` VALUES (140, 124, NULL, 'pan_page75_image1131.jpg', '2014-07-04 13:16:20', '2014-07-04 13:16:20');
INSERT INTO `product_images` VALUES (141, 125, NULL, 'pan_page75_image1135.png', '2014-07-04 13:17:27', '2014-07-04 13:17:27');
INSERT INTO `product_images` VALUES (142, 126, NULL, 'pan_page75_image1136.png', '2014-07-04 13:20:46', '2014-07-04 13:20:46');
INSERT INTO `product_images` VALUES (143, 127, NULL, 'pan_page75_image1134.png', '2014-07-04 13:24:06', '2014-07-04 13:24:06');
INSERT INTO `product_images` VALUES (144, 128, NULL, 'pan_page75_image1285.png', '2014-07-04 13:32:33', '2014-07-04 13:32:33');
INSERT INTO `product_images` VALUES (145, 129, NULL, 'pan_page75_image1280.jpg', '2014-07-04 13:41:00', '2014-07-04 13:41:00');
INSERT INTO `product_images` VALUES (146, 130, NULL, 'pan_page75_image1278.png', '2014-07-04 13:44:36', '2014-07-04 13:44:36');
INSERT INTO `product_images` VALUES (147, 131, NULL, 'pan_page75_image1279.png', '2014-07-04 13:45:15', '2014-07-04 13:45:15');
INSERT INTO `product_images` VALUES (148, 132, NULL, 'pan_page75_image1282.jpg', '2014-07-04 13:45:58', '2014-07-04 13:45:58');
INSERT INTO `product_images` VALUES (149, 133, NULL, 'pan_page75_image1283.jpg', '2014-07-04 13:46:48', '2014-07-04 13:46:48');
INSERT INTO `product_images` VALUES (150, 134, NULL, 'pan_page75_image1281.jpg', '2014-07-04 13:47:43', '2014-07-04 13:47:43');
INSERT INTO `product_images` VALUES (151, 135, NULL, 'pan_page75_image1353.jpg', '2014-07-04 13:48:31', '2014-07-04 13:48:31');
INSERT INTO `product_images` VALUES (152, 136, NULL, 'pan_page75_image1350.jpg', '2014-07-04 13:50:08', '2014-07-04 13:50:08');
INSERT INTO `product_images` VALUES (153, 137, NULL, 'pan_page75_image1351.jpg', '2014-07-04 13:53:20', '2014-07-04 13:53:20');
INSERT INTO `product_images` VALUES (154, 138, NULL, 'pan_page75_image1347.png', '2014-07-04 13:56:46', '2014-07-04 13:56:46');

-- --------------------------------------------------------

-- 
-- Table structure for table `product_options`
-- 

CREATE TABLE `product_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `product_image_id` int(11) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 AUTO_INCREMENT=136 ;

-- 
-- Dumping data for table `product_options`
-- 

INSERT INTO `product_options` VALUES (1, 20, 'Méret: 1/2”', '4401', 109, 9, '', '2014-05-21 14:05:43');
INSERT INTO `product_options` VALUES (3, 20, 'Méret: 3/4”', '4400', 109, 9, '2014-05-16 10:53:13', '2014-05-21 14:06:11');
INSERT INTO `product_options` VALUES (7, 20, 'Méret: 1”', '4402', 131, 9, '2014-05-21 14:06:57', '2014-05-21 14:06:57');
INSERT INTO `product_options` VALUES (8, 21, 'Méret: 1/2”', '4411', 109, 10, '2014-05-21 14:13:18', '2014-05-21 14:13:18');
INSERT INTO `product_options` VALUES (9, 21, 'Méret: 3/4”', '4410', 109, 10, '2014-05-21 14:13:48', '2014-05-21 14:13:48');
INSERT INTO `product_options` VALUES (10, 25, 'Méret: 1/2”', '4450', 411, 14, '2014-05-21 14:33:17', '2014-05-21 14:33:17');
INSERT INTO `product_options` VALUES (11, 25, 'Méret: 3/4”', '4455', 472, 14, '2014-05-21 14:33:56', '2014-05-21 14:33:56');
INSERT INTO `product_options` VALUES (12, 26, 'Méret 1/2”', '4451', 635, 15, '2014-05-21 14:35:21', '2014-05-21 14:35:21');
INSERT INTO `product_options` VALUES (13, 26, 'Méret: 3/4"', '4456', 728, 15, '2014-05-21 14:35:46', '2014-05-21 14:35:46');
INSERT INTO `product_options` VALUES (14, 27, 'Méret: 1/2"', '4425', 359, 16, '2014-05-21 14:36:53', '2014-05-21 14:36:53');
INSERT INTO `product_options` VALUES (15, 27, 'Méret: 3/4"', '4426', 452, 16, '2014-05-21 14:37:25', '2014-05-21 14:37:25');
INSERT INTO `product_options` VALUES (16, 28, 'Méret: 1/2"', '4489', 716, 17, '2014-05-21 14:38:05', '2014-05-21 14:38:46');
INSERT INTO `product_options` VALUES (17, 28, 'Méret: 3/4"', '4490', 1008, 17, '2014-05-21 14:38:27', '2014-05-21 14:38:27');
INSERT INTO `product_options` VALUES (18, 31, 'Méret: 1/2”', '4480', 293, 22, '2014-05-21 14:41:08', '2014-05-21 14:41:08');
INSERT INTO `product_options` VALUES (19, 31, 'Méret: 3/4”', '4481', 433, 22, '2014-05-21 14:41:47', '2014-05-21 14:41:47');
INSERT INTO `product_options` VALUES (20, 37, 'Méret: 1/2 x 3/4”', '4470', 207, 28, '2014-05-21 14:44:55', '2014-05-21 14:44:55');
INSERT INTO `product_options` VALUES (21, 37, 'Méret: 1/2 x 1/2”', '4472', 207, 28, '2014-05-21 14:45:18', '2014-05-21 14:45:18');
INSERT INTO `product_options` VALUES (22, 37, 'Méret: 1/2 x 1”', '4473', 239, 28, '2014-05-21 14:45:52', '2014-05-21 14:45:52');
INSERT INTO `product_options` VALUES (23, 37, 'Méret: 3/4 x 1/2”', '4474', 269, 28, '2014-05-21 14:46:24', '2014-05-21 14:46:24');
INSERT INTO `product_options` VALUES (24, 37, 'Méret: 3/4 x 3/4”', '4475', 269, 28, '2014-05-21 14:47:12', '2014-05-21 14:47:12');
INSERT INTO `product_options` VALUES (25, 37, 'Méret: 3/4 x 1”', '4477', 269, 28, '2014-05-21 14:47:34', '2014-05-21 14:47:34');
INSERT INTO `product_options` VALUES (26, 38, 'Méret: 3/4 x 1/2”', '4471', 207, 29, '2014-05-21 14:48:35', '2014-05-21 14:48:35');
INSERT INTO `product_options` VALUES (27, 38, 'Méret: 3/4 x 3/4”', '4476', 269, 29, '2014-05-21 14:49:02', '2014-05-21 14:49:02');
INSERT INTO `product_options` VALUES (28, 39, 'Méret: 3/4"', '4460', 330, 27, '2014-05-21 14:49:50', '2014-05-21 14:49:50');
INSERT INTO `product_options` VALUES (29, 39, 'Méret: 1/2"', '4461', 330, 27, '2014-05-21 14:50:14', '2014-05-21 14:50:14');
INSERT INTO `product_options` VALUES (30, 40, 'Kuplung csatlakozóval', '4550', 324, 30, '2014-05-21 14:51:33', '2014-05-21 14:51:33');
INSERT INTO `product_options` VALUES (31, 40, '1/2”-os tömlővéggel', '4552', 429, 30, '2014-05-21 14:51:56', '2014-05-21 14:51:56');
INSERT INTO `product_options` VALUES (32, 40, '3/4”-os tömlővéggel', '4553', 525, 30, '2014-05-21 14:52:14', '2014-05-21 14:52:14');
INSERT INTO `product_options` VALUES (33, 41, 'állítható vízsugárral', '4560', 573, 31, '2014-05-21 14:53:18', '2014-05-21 14:53:18');
INSERT INTO `product_options` VALUES (34, 41, 'szélesebb szórófejjel', '4555', 635, 32, '2014-05-21 14:53:38', '2014-05-21 14:53:38');
INSERT INTO `product_options` VALUES (35, 42, 'Kuplung csatlakozóval', '4600', 1220, 33, '2014-05-21 14:54:18', '2014-05-21 14:54:18');
INSERT INTO `product_options` VALUES (36, 42, '1/2”-os tömlővéggel', '4602', 1371, 33, '2014-05-21 14:54:34', '2014-05-21 14:54:34');
INSERT INTO `product_options` VALUES (37, 42, '3/4”-os tömlővéggel', '4603', 1467, 33, '2014-05-21 14:54:50', '2014-05-21 14:54:50');
INSERT INTO `product_options` VALUES (38, 45, 'kuplung csatlakozós', '4575', 798, 36, '2014-05-21 14:58:50', '2014-05-21 14:58:50');
INSERT INTO `product_options` VALUES (39, 45, '1/2” -os tömlő csatlakozóval', '4577', 915, 36, '2014-05-21 14:59:51', '2014-05-21 14:59:51');
INSERT INTO `product_options` VALUES (40, 45, '3/4” -os tömlő csatlakozóval', '4578', 1003, 36, '2014-05-21 15:00:16', '2014-05-21 15:00:16');
INSERT INTO `product_options` VALUES (41, 46, 'kuplung csatlakozóval', '4585', 1341, 37, '2014-05-21 15:01:32', '2014-05-21 15:01:32');
INSERT INTO `product_options` VALUES (42, 46, '1/2"-os tömlő csatlakozóval', '4587', 1488, 37, '2014-05-21 15:01:56', '2014-05-21 15:01:56');
INSERT INTO `product_options` VALUES (43, 46, '3/4"-os tömlő csatlakozóval', '4588', 1575, 37, '2014-05-21 15:02:15', '2014-05-21 15:02:15');
INSERT INTO `product_options` VALUES (44, 58, 'nyomásra	kiemelkedő süllyesztett szakaszos', '4592', 4880, 53, '2014-05-29 10:20:21', '2014-05-29 12:47:59');
INSERT INTO `product_options` VALUES (45, 58, '90 °	nyomásra	kiemelkedő', '4572', 849, 53, '2014-05-29 10:20:53', '2014-05-29 12:48:12');
INSERT INTO `product_options` VALUES (46, 58, '180 ° nyomásra kiemelkedő', '4573', 849, 53, '2014-05-29 10:21:46', '2014-05-29 12:48:21');
INSERT INTO `product_options` VALUES (47, 58, '360 ° nyomásra kiemelkedő', '4574', 849, 53, '2014-05-29 10:22:04', '2014-05-29 12:48:44');
INSERT INTO `product_options` VALUES (48, 59, '360 fokos', '4570', 730, 56, '2014-05-29 10:27:55', '2014-05-29 12:54:25');
INSERT INTO `product_options` VALUES (49, 59, 'forgós', '4580', 1389, 56, '2014-05-29 10:28:07', '2014-05-29 12:54:34');
INSERT INTO `product_options` VALUES (50, 59, 'szakaszos', '4590', 2397, 56, '2014-05-29 10:28:21', '2014-05-29 12:54:51');
INSERT INTO `product_options` VALUES (51, 61, 'Méret: 1''''', '4403', 224, 60, '2014-05-29 10:32:26', '2014-05-29 12:56:21');
INSERT INTO `product_options` VALUES (52, 61, 'Méret: 3/4''''', '4404', 224, 60, '2014-05-29 10:32:51', '2014-05-29 12:56:30');
INSERT INTO `product_options` VALUES (53, 68, 'O- gyűrű	 ', '4955', 21, 67, '2014-05-29 10:41:17', '2014-05-29 12:52:15');
INSERT INTO `product_options` VALUES (54, 68, 'tömítés 1/2''''', '4952', 21, 67, '2014-05-29 10:41:40', '2014-05-29 12:52:26');
INSERT INTO `product_options` VALUES (55, 68, 'tömítés 3/4''''', '4953', 24, 67, '2014-05-29 10:41:57', '2014-05-29 12:52:42');
INSERT INTO `product_options` VALUES (56, 68, 'tömítés 1''''', '4954', 32, 67, '2014-05-29 10:42:12', '2014-05-29 12:52:52');
INSERT INTO `product_options` VALUES (57, 68, 'Szűrős tömítés 3/4''''', '4950', 67, 67, '2014-05-29 10:42:46', '2014-05-29 12:53:01');
INSERT INTO `product_options` VALUES (58, 68, 'Szűrős tömítés 1/2''''', '4951', 67, 67, '2014-05-29 10:42:58', '2014-05-29 12:53:17');
INSERT INTO `product_options` VALUES (59, 69, '1/2” 50 m = 3/4” 25 m', '4857', 6969, 68, '2014-05-30 11:38:28', '2014-05-30 11:38:28');
INSERT INTO `product_options` VALUES (60, 69, '1/2” 90 m = 3/4” 50 m', '4867', 9999, 68, '2014-05-30 11:38:58', '2014-05-30 11:38:58');
INSERT INTO `product_options` VALUES (63, 72, 'kék', 'AG 112 K', 598, 71, '2014-05-30 12:30:48', '2014-05-30 12:30:48');
INSERT INTO `product_options` VALUES (64, 72, 'zöld', 'AG 112 Z', 598, 71, '2014-05-30 12:38:25', '2014-05-30 12:38:25');
INSERT INTO `product_options` VALUES (65, 72, 'sárga', 'AG 112 S', 598, 71, '2014-05-30 12:38:39', '2014-05-30 12:38:39');
INSERT INTO `product_options` VALUES (66, 72, 'narancs', 'AG 112 N', 598, 71, '2014-05-30 12:38:54', '2014-05-30 12:38:54');
INSERT INTO `product_options` VALUES (67, 74, '1/2” belső menetes', '4401R', 369, 73, '2014-05-30 13:08:53', '2014-05-30 13:08:53');
INSERT INTO `product_options` VALUES (68, 74, '3/4” belső menetes', '4400R', 399, 73, '2014-05-30 13:09:28', '2014-05-30 13:09:44');
INSERT INTO `product_options` VALUES (69, 74, '1” belső menetes', '4402R', 495, 73, '2014-05-30 13:10:29', '2014-05-30 13:10:29');
INSERT INTO `product_options` VALUES (72, 75, '1/2''''', '4450R', 855, 74, '2014-05-30 13:15:17', '2014-05-30 13:26:07');
INSERT INTO `product_options` VALUES (73, 75, '1/2'''' stoppos', '4451R', 892, 74, '2014-05-30 13:26:32', '2014-05-30 13:26:32');
INSERT INTO `product_options` VALUES (74, 75, '3/4''''', '4455R', 998, 74, '2014-05-30 13:27:00', '2014-05-30 13:27:00');
INSERT INTO `product_options` VALUES (75, 75, '3/4'''' stoppos', '4456R', 1094, 74, '2014-05-30 13:27:27', '2014-05-30 13:27:27');
INSERT INTO `product_options` VALUES (76, 76, '1/2''''', '4480R', 629, 75, '2014-05-30 13:29:35', '2014-05-30 13:30:08');
INSERT INTO `product_options` VALUES (77, 76, '3/4''''', '4481R', 1054, 75, '2014-05-30 13:30:00', '2014-05-30 13:30:00');
INSERT INTO `product_options` VALUES (78, 79, '1/2''''x12ø	bilnccsel ', '401212R', 469, 78, '2014-05-30 13:34:43', '2014-05-30 13:35:06');
INSERT INTO `product_options` VALUES (79, 79, '3/4''''x12ø	bilnccsel', '403412R', 479, 78, '2014-05-30 13:35:39', '2014-05-30 13:35:39');
INSERT INTO `product_options` VALUES (80, 79, '3/4''''x19ø	bilnccsel', '403419R', 577, 78, '2014-05-30 13:36:11', '2014-05-30 13:36:11');
INSERT INTO `product_options` VALUES (81, 79, '1''''x19ø bilnccsel', '400119R', 740, 78, '2014-05-30 13:36:43', '2014-05-30 13:36:43');
INSERT INTO `product_options` VALUES (82, 81, '3/4'''' belsőmentes', 'BAYON 3/4'''' BM', 721, 80, '2014-05-30 13:40:24', '2014-05-30 13:41:02');
INSERT INTO `product_options` VALUES (83, 81, '1'''' belsőmentes', 'BAYON 1'''' BM', 768, 80, '2014-05-30 13:40:49', '2014-05-30 13:40:49');
INSERT INTO `product_options` VALUES (84, 81, '5/4'''' belsőmentes', 'BAYON 5/4'''' BM', 1088, 80, '2014-05-30 13:47:30', '2014-05-30 13:47:30');
INSERT INTO `product_options` VALUES (85, 102, '5L', 'D5', 1235, 117, '2014-07-04 11:42:37', '2014-07-04 11:42:37');
INSERT INTO `product_options` VALUES (86, 102, '10L', 'D10', 2490, 117, '2014-07-04 11:51:54', '2014-07-04 11:51:54');
INSERT INTO `product_options` VALUES (87, 102, '15L', 'D15', 3170, 117, '2014-07-04 11:52:11', '2014-07-04 11:52:11');
INSERT INTO `product_options` VALUES (88, 102, '20L', 'D20', 3970, 117, '2014-07-04 11:52:20', '2014-07-04 11:52:39');
INSERT INTO `product_options` VALUES (89, 102, '25L', 'D25', 4550, 117, '2014-07-04 11:53:00', '2014-07-04 11:53:00');
INSERT INTO `product_options` VALUES (90, 102, '34L', 'D34', 5400, 117, '2014-07-04 11:53:23', '2014-07-04 11:53:23');
INSERT INTO `product_options` VALUES (91, 102, '54L', 'D54', 6450, 117, '2014-07-04 11:53:44', '2014-07-04 11:53:44');
INSERT INTO `product_options` VALUES (92, 104, '1L', 'VD1', 1446, 120, '2014-07-04 12:27:14', '2014-07-04 12:27:14');
INSERT INTO `product_options` VALUES (93, 104, '2L', 'VD2', 2410, 119, '2014-07-04 12:27:38', '2014-07-04 12:27:38');
INSERT INTO `product_options` VALUES (94, 104, '5L', 'VD5', 3220, 119, '2014-07-04 12:28:12', '2014-07-04 12:28:12');
INSERT INTO `product_options` VALUES (95, 104, '10L', 'VD10', 6221, 119, '2014-07-04 12:28:41', '2014-07-04 12:28:41');
INSERT INTO `product_options` VALUES (96, 104, '15L', 'VD15', 7601, 119, '2014-07-04 12:28:58', '2014-07-04 12:28:58');
INSERT INTO `product_options` VALUES (99, 106, '35mm', '18020', 94, 122, '2014-07-04 12:35:07', '2014-07-04 12:35:07');
INSERT INTO `product_options` VALUES (100, 106, '45mm', '18040', 138, 122, '2014-07-04 12:35:24', '2014-07-04 12:35:24');
INSERT INTO `product_options` VALUES (101, 106, '55mm', '18060', 177, 122, '2014-07-04 12:35:35', '2014-07-04 12:35:35');
INSERT INTO `product_options` VALUES (103, 127, '6 lapos borszűrő szivattyúval', 'FCH6', 52043, 143, '2014-07-04 13:25:32', '2014-07-04 13:25:32');
INSERT INTO `product_options` VALUES (104, 127, '10 lapos borszűrő szivattyúval', 'FCH10', 56854, 143, '2014-07-04 13:26:03', '2014-07-04 13:26:03');
INSERT INTO `product_options` VALUES (105, 127, '6 lapos borszűrő szivattyú nélkül', 'FCH6SP', 56854, 143, '2014-07-04 13:26:32', '2014-07-04 13:26:32');
INSERT INTO `product_options` VALUES (106, 127, '10 lapos borszűrő szivattyú nélkül', 'FCH10SP', 41546, 143, '2014-07-04 13:27:04', '2014-07-04 13:27:04');
INSERT INTO `product_options` VALUES (107, 128, '20L', 'PEW20', 131200, 144, '2014-07-04 13:33:04', '2014-07-04 13:33:04');
INSERT INTO `product_options` VALUES (108, 128, '40L', 'PEW40', 164379, 144, '2014-07-04 13:38:19', '2014-07-04 13:38:19');
INSERT INTO `product_options` VALUES (109, 128, '80L', 'PEW80', 223040, 144, '2014-07-04 13:39:07', '2014-07-04 13:39:07');
INSERT INTO `product_options` VALUES (110, 129, '110 liter, átm. 80 cm, mag. 30 cm', '110S', 4984, 145, '2014-07-04 13:41:17', '2014-07-04 13:42:40');
INSERT INTO `product_options` VALUES (111, 129, '225 liter, átm. 86 cm, mag. 54 cm', '225S', 7046, 145, '2014-07-04 13:41:28', '2014-07-04 13:42:50');
INSERT INTO `product_options` VALUES (112, 129, '275 liter, átm. 110 cm, mag. 35 cm', '275S', 9938, 145, '2014-07-04 13:41:41', '2014-07-04 13:42:58');
INSERT INTO `product_options` VALUES (113, 129, '350 liter, átm. 95 cm, mag. 71 cm', '350S', 10504, 145, '2014-07-04 13:41:49', '2014-07-04 13:43:09');
INSERT INTO `product_options` VALUES (114, 129, '500 liter, átm. 104 cm, mag. 82 cm', '500S', 13563, 145, '2014-07-04 13:41:59', '2014-07-04 13:43:22');
INSERT INTO `product_options` VALUES (115, 129, '700 liter, átm. 115 cm, mag. 90 cm', '700S', 20739, 145, '2014-07-04 13:42:07', '2014-07-04 13:43:35');
INSERT INTO `product_options` VALUES (116, 129, '1000 liter, átm. 134 cm, mag. 95 cm', '1000S', 30614, 145, '2014-07-04 13:42:16', '2014-07-04 13:43:41');
INSERT INTO `product_options` VALUES (117, 135, '10 liter', 'MCS10', 1488, 151, '2014-07-04 13:48:50', '2014-07-04 13:48:50');
INSERT INTO `product_options` VALUES (118, 135, '20 liter', 'MCS20', 1856, 151, '2014-07-04 13:49:07', '2014-07-04 13:49:07');
INSERT INTO `product_options` VALUES (119, 136, '22 cm', 'MT22', 386, 152, '2014-07-04 13:50:30', '2014-07-04 13:50:30');
INSERT INTO `product_options` VALUES (120, 136, '26 cm', 'MT26', 507, 152, '2014-07-04 13:50:49', '2014-07-04 13:50:49');
INSERT INTO `product_options` VALUES (121, 136, '30 cm', 'MT30', 620, 152, '2014-07-04 13:51:16', '2014-07-04 13:51:16');
INSERT INTO `product_options` VALUES (122, 136, '35 cm', 'MT35', 958, 152, '2014-07-04 13:51:41', '2014-07-04 13:51:41');
INSERT INTO `product_options` VALUES (123, 136, 'szűrőbetét', 'MF', 345, 152, '2014-07-04 13:52:10', '2014-07-04 13:52:10');
INSERT INTO `product_options` VALUES (124, 136, 'szűrőbetét 22-es tölcsérhez', 'MF22', 345, 152, '2014-07-04 13:52:51', '2014-07-04 13:52:51');
INSERT INTO `product_options` VALUES (125, 137, '5 liter', 'MD5', 1839, 153, '2014-07-04 13:53:34', '2014-07-04 13:54:16');
INSERT INTO `product_options` VALUES (126, 137, '10 liter', 'MD10', 2284, 153, '2014-07-04 13:53:39', '2014-07-04 13:54:27');
INSERT INTO `product_options` VALUES (127, 137, '15 liter', 'MD15', 2738, 153, '2014-07-04 13:53:47', '2014-07-04 13:54:33');
INSERT INTO `product_options` VALUES (128, 137, '20 liter', 'MD20', 3264, 153, '2014-07-04 13:53:52', '2014-07-04 13:54:43');
INSERT INTO `product_options` VALUES (129, 137, '25 liter', 'MD25', 3928, 153, '2014-07-04 13:53:57', '2014-07-04 13:55:12');
INSERT INTO `product_options` VALUES (130, 137, '50 liter', 'MD50', 5581, 153, '2014-07-04 13:54:02', '2014-07-04 13:55:19');
INSERT INTO `product_options` VALUES (131, 138, '21 cm-es', '12120', 714, 154, '2014-07-04 13:57:18', '2014-07-09 14:22:30');
INSERT INTO `product_options` VALUES (132, 138, '23 cm-es', '12130', 734, 154, '2014-07-04 13:57:26', '2014-07-09 14:22:36');
INSERT INTO `product_options` VALUES (133, 138, '25 cm-es', '12140', 754, 154, '2014-07-04 13:58:04', '2014-07-09 14:22:39');
INSERT INTO `product_options` VALUES (134, 138, '27 cm-es', '12150', 775, 154, '2014-07-04 13:58:21', '2014-07-09 14:22:49');
INSERT INTO `product_options` VALUES (135, 138, '29 cm-es', '12110', 807, 154, '2014-07-04 13:58:32', '2014-07-09 14:23:02');

-- --------------------------------------------------------

-- 
-- Table structure for table `products`
-- 

CREATE TABLE `products` (
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 AUTO_INCREMENT=139 ;

-- 
-- Dumping data for table `products`
-- 

INSERT INTO `products` VALUES (20, '', 'Kuplungcsatlakozó', 'Különböző méretekben', 0, 1.2, 1343, 0, 0, '', '2014-05-21 14:07:17');
INSERT INTO `products` VALUES (21, '', 'Külsőmenetes Kuplungcsatlakozó', '4411 1/2”\r\n4410 3/4”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (22, '4430', 'Kuplungcsatlakozó', '', 169, 1.2, 1343, 0, 0, '', '2014-05-29 09:48:42');
INSERT INTO `products` VALUES (23, '4435/1', 'Y elágazó 3 kuplung csatlakozóval és 2 db elzáróval', '', 1220, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:01');
INSERT INTO `products` VALUES (24, '4437', 'Y elágazó 1 gyorscsatlakozóval és 2 kuplung csatlakozóval', '', 832, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:18');
INSERT INTO `products` VALUES (25, '', 'Gyorscsatlakozó', '4450 1/2”\r\n4455 3/4”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (26, '', 'Stoppos Gyorscsatlakozó', '4451 1/2”\r\n4456 3/4”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (27, '', 'Átalakító', '4425 1/2”\r\n4426 3/4”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (28, '', 'Tömlővéges T elágazó', '4489 1/2”\r\n4490 3/4”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (29, '4491', 'Tömlővéges és 2 kuplungos T elágazó', 'Méret: 3/4”', 782, 1.2, 1343, 0, 0, '', '2014-05-29 09:49:39');
INSERT INTO `products` VALUES (30, '4320', 'Elzárható csatlakozó', '', 448, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:00');
INSERT INTO `products` VALUES (31, '', 'Tömlő összekötő', '4480 1/2”\r\n4481 3/4”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (32, '4485', 'Tömlő összekötő', 'Méret: 1/2” x 3/4”', 359, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:22');
INSERT INTO `products` VALUES (33, '4428', 'Csatlakozókészlet', 'Méret: 1/2”', 1220, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:46');
INSERT INTO `products` VALUES (34, '4492', 'T elágazó 2 elzáróval', '', 1787, 1.2, 1343, 0, 0, '', '2014-05-29 09:50:58');
INSERT INTO `products` VALUES (35, '4520', 'T elágazó 3 elzáróval', '', 2353, 1.2, 1343, 0, 0, '', '2014-05-29 09:51:21');
INSERT INTO `products` VALUES (36, '4493', 'T elágazó 1 elzáróval', '', 1458, 1.2, 1343, 0, 0, '', '2014-05-29 09:51:36');
INSERT INTO `products` VALUES (37, '', 'Csatlakozó - belső menetes', '4470 1/2 x 3/4”\r\n4472 1/2 x 1/2”\r\n4473 1/2 x 1”\r\n4474 3/4 x 1/2”\r\n4475 3/4 x 3/4”\r\n4477 3/4 x 1”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (38, '', 'Csatlakozó - külső menetes', '4471 3/4 x 1/2”\r\n4476 3/4 x 3/4”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (39, '', 'Csatlakozó - külső menetes kuplung csatlakozós', '4460 3/4”\r\n4461 1/2”', 0, 1.2, 1343, 0, 0, '', '');
INSERT INTO `products` VALUES (40, '', 'Sugárcső', '4550 Kuplung csatlakozóval\r\n4552 1/2”-os tömlővéggel\r\n4553 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, 0, '', '');
INSERT INTO `products` VALUES (41, '', 'Locsolórózsa', '4560 állítható vízsugárral\r\n4555 szélesebb szórófejjel', 0, 1.2, 1344, 0, 0, '', '');
INSERT INTO `products` VALUES (42, '', 'Pisztolyos szórófej', '4600 Kuplung csatlakozóval\r\n4602 1/2”-os tömlővéggel\r\n4603 3/4”-os tömlővéggel', 0, 1.2, 1344, 0, 0, '', '');
INSERT INTO `products` VALUES (43, '4755/5', 'Multifunkciós elzárhatós négy állású locsolórózsa', '', 2141, 1.2, 1344, 0, 0, '', '2014-05-29 09:51:58');
INSERT INTO `products` VALUES (44, '', 'Pisztolyos locsoló', '4605 kuplungos', 1371, 1.2, 1344, 0, 0, '', '2014-05-21 14:56:35');
INSERT INTO `products` VALUES (45, '', 'Leszúrható locsoló 360 fokos', '4575 kupl. cs.\r\n4577 1/2”\r\n4578 3/4”', 0, 1.2, 1344, 0, 0, '', '');
INSERT INTO `products` VALUES (46, '', 'Forgó locsoló', '4585 kupl. cs.\r\n4587 1/2”\r\n4588 3/4”', 0, 1.2, 1344, 0, 0, '', '');
INSERT INTO `products` VALUES (48, '4595', 'Leszúrható szakaszos locsoló', '', 2461, 1.2, 1344, 0, 0, '', '2014-05-29 09:52:14');
INSERT INTO `products` VALUES (49, '4785', 'Átfolyós forgós locsoló', '', 1441, 1.2, 1344, 0, 0, '', '2014-05-29 09:52:32');
INSERT INTO `products` VALUES (50, '4616', 'Pisztolyos	locsoló szett', '', 2133, 1.2, 1344, 0, 0, '2014-05-29 09:55:42', '2014-05-29 12:59:32');
INSERT INTO `products` VALUES (51, '4605/5', 'Multifunkciós pisztolyos négy állású	locsoló', '', 2384, 1.2, 1344, 0, 0, '2014-05-29 09:57:52', '2014-05-29 12:59:47');
INSERT INTO `products` VALUES (52, '4630', 'Talpas 360 fokos locsoló', '', 2336, 1.2, 1344, 0, 0, '2014-05-29 09:59:50', '2014-05-29 13:00:18');
INSERT INTO `products` VALUES (53, '4640', 'Talpas forgó locsoló', '', 2842, 1.2, 1344, 0, 0, '2014-05-29 10:00:56', '2014-05-29 12:38:03');
INSERT INTO `products` VALUES (54, '4650', 'Talpas szakaszos locsoló', '', 4040, 1.2, 1344, 0, 0, '2014-05-29 10:02:23', '2014-05-29 13:00:34');
INSERT INTO `products` VALUES (55, '4671', 'Locsoló háromlábú álvánnyal', '', 5879, 1.2, 1344, 0, 0, '2014-05-29 10:08:44', '2014-05-29 12:39:12');
INSERT INTO `products` VALUES (56, '4689', 'Billenős locsoló', '(4ATM, 220 m2 öntözésre alkalmas	13,5	m*15m)\r\n\r\nÁtfolyás 16 l / perc', 4776, 1.2, 1344, 0, 0, '2014-05-29 10:15:08', '2014-05-29 12:39:48');
INSERT INTO `products` VALUES (57, '4688', 'Billenős locsoló', '', 1579, 1.2, 1344, 0, 0, '2014-05-29 10:17:01', '2014-05-29 12:45:00');
INSERT INTO `products` VALUES (58, '', 'Süllyesztett locsoló', '', 0, 1.2, 1344, 0, 0, '2014-05-29 10:19:01', '2014-05-29 10:19:01');
INSERT INTO `products` VALUES (59, '', 'Gyorscsatlakozós locsolófej', '', 0, 1.2, 1344, 0, 0, '2014-05-29 10:27:19', '2014-05-29 10:27:19');
INSERT INTO `products` VALUES (60, '4510', 'Süllyesztett csatlakozó doboz', '', 3668, 1.2, 1344, 0, 0, '2014-05-29 10:29:32', '2014-05-29 12:55:25');
INSERT INTO `products` VALUES (61, '', 'Maxi	kuplung csatlakozó', '', 0, 1.2, 1343, 0, 0, '2014-05-29 10:31:37', '2014-05-29 10:31:37');
INSERT INTO `products` VALUES (62, '4457', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, 1.2, 1343, 0, 0, '2014-05-29 10:34:10', '2014-05-29 12:57:04');
INSERT INTO `products` VALUES (63, '4458', 'Maxi	gyorscsatlakozó', 'Méret: 1''''', 938, 1.2, 1343, 0, 0, '2014-05-29 10:35:05', '2014-05-29 12:57:40');
INSERT INTO `products` VALUES (64, '4459', 'Maxi	gyorscsatlakozó', 'Méret: 3/4”x1”		', 938, 1.2, 1343, 0, 0, '2014-05-29 10:36:08', '2014-05-29 12:58:04');
INSERT INTO `products` VALUES (65, '4486', 'Maxi	tömlő összekötő', 'Méret: 3/4” x 1”	', 572, 1.2, 1343, 0, 0, '2014-05-29 10:37:15', '2014-05-29 12:58:27');
INSERT INTO `products` VALUES (66, '4487', 'Maxi	tömlő összekötő', 'Méret: 1” x 1”', 602, 1.2, 1343, 0, 0, '2014-05-29 10:38:38', '2014-05-29 12:58:45');
INSERT INTO `products` VALUES (67, '4432', 'Maxi	T-elágazó', 'Méret: 1''''', 270, 1.2, 1343, 0, 0, '2014-05-29 10:39:39', '2014-05-29 12:59:16');
INSERT INTO `products` VALUES (68, '', 'Tömítések', '', 0, 1.2, 1343, 0, 0, '2014-05-29 10:40:43', '2014-05-29 10:40:43');
INSERT INTO `products` VALUES (69, '', 'Tömlőkocsi Siroflex', '', 0, 1.2, 1345, 0, 0, '2014-05-30 11:37:15', '2014-05-30 11:37:15');
INSERT INTO `products` VALUES (70, 'AG311', 'Fém tömlőkocsi', '3/4” 50 m = 1/2” 80 m', 9381, 1.2, 1345, 0, 0, '2014-05-30 11:40:13', '2014-05-30 11:40:13');
INSERT INTO `products` VALUES (71, 'AG317', 'Maxi fém tömlőkocsi', '3/4” 90 m = 1/2” 110 m', 15180, 1.2, 1345, 0, 0, '2014-05-30 11:41:40', '2014-05-30 11:41:40');
INSERT INTO `products` VALUES (72, '', 'Fali tömlő tartó', '', 0, 1.2, 1345, 0, 0, '2014-05-30 11:49:39', '2014-05-30 11:49:39');
INSERT INTO `products` VALUES (73, '4874', 'Tömlőkocsi összecsukható', '1/2” 50 m', 4397, 1.2, 1345, 0, 0, '2014-05-30 12:40:20', '2014-05-30 12:40:20');
INSERT INTO `products` VALUES (74, '', 'Réz kuplung csatlakozó', '', 0, 1.2, 1346, 0, 0, '2014-05-30 12:43:40', '2014-05-30 12:43:40');
INSERT INTO `products` VALUES (75, '', 'Réz gyorscsatlakozó', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:11:04', '2014-05-30 13:11:04');
INSERT INTO `products` VALUES (76, '', 'Réz tömlőösszekötő', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:28:14', '2014-05-30 13:28:14');
INSERT INTO `products` VALUES (77, '4430R', 'Réz kuplung csatlakoz', '', 357, 1.2, 1346, 0, 0, '2014-05-30 13:30:56', '2014-05-30 13:30:56');
INSERT INTO `products` VALUES (78, '4550R', 'Kuplung csatlakozós réz szórófej', '', 1037, 1.2, 1346, 0, 0, '2014-05-30 13:31:50', '2014-05-30 13:31:50');
INSERT INTO `products` VALUES (79, '', 'Réz tömlővég', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:33:50', '2014-05-30 13:33:50');
INSERT INTO `products` VALUES (80, '4437/1R', 'Elzárható Y elágazó', '', 2094, 1.2, 1346, 0, 0, '2014-05-30 13:37:36', '2014-05-30 13:37:36');
INSERT INTO `products` VALUES (81, '', 'Bajonett gyorscsatlakozó belső mentes', '', 0, 1.2, 1346, 0, 0, '2014-05-30 13:38:36', '2014-05-30 13:39:28');
INSERT INTO `products` VALUES (82, '4650R', 'Rézfejes szakaszos locsoló háromlábú állvánnyal	', '', 4858, 1.2, 1347, 0, 0, '2014-06-03 13:05:51', '2014-06-03 13:05:51');
INSERT INTO `products` VALUES (83, '4640R', 'Rézfejes kerekes forgólocsoló	12m*12m', '', 2552, 1.2, 1347, 0, 0, '2014-06-03 14:01:04', '2014-06-03 14:01:04');
INSERT INTO `products` VALUES (84, '4595R', 'Rézfejes szakaszos locsoló leszúróval', '', 2154, 1.2, 1347, 0, 0, '2014-06-03 14:02:51', '2014-06-03 14:02:51');
INSERT INTO `products` VALUES (85, '4695R', 'Rézfejes,	kerekes szakaszos locsoló', '', 2872, 1.2, 1347, 0, 0, '2014-06-03 14:04:01', '2014-06-03 14:04:01');
INSERT INTO `products` VALUES (86, '4604', 'Fémfejes pisztolyos locsoló - hétfunkciós', '', 1588, 1.2, 1347, 0, 0, '2014-06-03 14:05:04', '2014-06-03 14:05:04');
INSERT INTO `products` VALUES (87, '4605R', 'Fémfejes	pisztolyos	locsoló', '', 1497, 1.2, 1347, 0, 0, '2014-06-03 14:06:06', '2014-06-03 14:06:06');
INSERT INTO `products` VALUES (88, 'HECHT 270', 'Kézi	szórókocsi', '27 literes tárolóval.', 8587, 1.2, 1348, 0, 0, '2014-06-03 14:07:49', '2014-06-03 14:08:57');
INSERT INTO `products` VALUES (89, 'HECHT 229', 'Kézi	szórókocsi. 29 literes tárolóval', 'Gumikerekes', 17786, 1.2, 1348, 0, 0, '2014-06-03 14:10:10', '2014-06-03 14:10:10');
INSERT INTO `products` VALUES (90, '3450', 'Frissítő szett', 'Nézze meg termékbemutató videónkat, szerelési útmutatóval!\r\n\r\n<a href="https://www.youtube.com/watch?v=-tcq3RSSyvo" target="_blank">ITT</a>', 4400, 1.2, 1349, 0, 0, '2014-06-03 14:12:28', '2014-06-03 14:26:20');
INSERT INTO `products` VALUES (91, '22/01', 'Róma állókút (zöld)', 'Zöld színű', 36000, 1.2, 1350, 0, 0, '2014-06-05 13:16:39', '2014-07-09 14:24:46');
INSERT INTO `products` VALUES (92, '22/02', 'Róma állókút (fehér)', 'Fehér színben', 36000, 1.2, 1350, 0, 0, '2014-06-17 13:10:47', '2014-07-09 14:25:34');
INSERT INTO `products` VALUES (93, '22/03', 'Róma állókút (fekete)', 'Fekete színben', 36000, 1.2, 1350, 0, 0, '2014-06-17 13:11:49', '2014-07-09 14:25:55');
INSERT INTO `products` VALUES (94, '22/05', 'Róma állókút (arany)', '"Kalapácslakk arany" színben', 38500, 1.2, 1350, 0, 0, '2014-06-17 13:17:14', '2014-07-09 14:26:24');
INSERT INTO `products` VALUES (95, '22/06', 'Róma állókút (ezüst)', '"Kalapácslakk ezüst" színben', 38500, 1.2, 1350, 0, 0, '2014-06-17 13:19:03', '2014-07-09 14:27:19');
INSERT INTO `products` VALUES (96, '22/07', 'Róma állókút (bronz)', '"Kalapácslakk bronz" színben', 38500, 1.2, 1350, 0, 0, '2014-06-17 13:20:18', '2014-07-09 14:27:56');
INSERT INTO `products` VALUES (97, '22/09', 'Róma állókút (Sárga műkő)', 'Sárga műkő', 40500, 1.2, 1350, 0, 0, '2014-06-17 13:22:06', '2014-07-09 14:28:26');
INSERT INTO `products` VALUES (98, '22/10', 'Róma állókút (Antikolt arany)', 'Antikolt arany', 40500, 1.2, 1350, 0, 0, '2014-06-17 13:23:25', '2014-07-09 14:28:51');
INSERT INTO `products` VALUES (99, '22/11', 'Róma állókút (Antikolt ezüst)', 'Antikolt ezüst', 40500, 1.2, 1350, 0, 0, '2014-06-17 13:24:30', '2014-07-09 14:29:21');
INSERT INTO `products` VALUES (100, '22/12', 'Róma állókút (Antikolt bronz)', 'Antikolt bronz', 40500, 1.2, 1350, 0, 0, '2014-06-17 13:26:12', '2014-07-09 14:30:06');
INSERT INTO `products` VALUES (101, '22/13', 'Róma állókút (Antikolt zöld)', 'Antikolt zöld', 40500, 1.2, 1350, 0, 0, '2014-06-17 13:27:16', '2014-07-09 14:31:04');
INSERT INTO `products` VALUES (102, '', 'Műanyag fonatú üvegballonok', '', 0, 1.2, 1351, 0, 0, '2014-07-04 10:20:14', '2014-07-04 10:20:14');
INSERT INTO `products` VALUES (103, 'DAMA5', 'Dáma üveg, csattal', '', 785, 1.2, 1351, 0, 0, '2014-07-04 12:23:09', '2014-07-04 12:23:09');
INSERT INTO `products` VALUES (104, '', 'Vesszőfonatú demizson', '', 0, 1.2, 1351, 0, 0, '2014-07-04 12:26:10', '2014-07-04 12:26:10');
INSERT INTO `products` VALUES (105, '18180', 'Hengeres dugó borosüveghez', '38 mm, szőlő mintás', 12, 1.2, 1351, 0, 0, '2014-07-04 12:30:52', '2014-07-04 12:30:52');
INSERT INTO `products` VALUES (106, '', 'Parafadugó demizsonhoz', '', 0, 1.2, 1351, 0, 0, '2014-07-04 12:31:33', '2014-07-04 12:31:33');
INSERT INTO `products` VALUES (107, '19909', 'Parafadugók ( kúpos ) A osztályos', '100 db / csomag - 15x20 mm', 2700, 1.2, 1351, 0, 0, '2014-07-04 12:36:48', '2014-07-04 12:37:44');
INSERT INTO `products` VALUES (108, '17121', 'Kézi dugózó', '', 4754, 1.2, 1351, 0, 0, '2014-07-04 12:39:37', '2014-07-04 12:39:37');
INSERT INTO `products` VALUES (109, 'TGC', 'Állványos palackozó, fémpofás', '', 12595, 1.2, 1351, 0, 0, '2014-07-04 12:40:45', '2014-07-04 12:40:45');
INSERT INTO `products` VALUES (110, '17450', 'Állványos palackozó műanyag pofás', '', 10202, 1.2, 1351, 0, 0, '2014-07-04 12:42:08', '2014-07-04 12:42:08');
INSERT INTO `products` VALUES (111, 'TCA', 'Koronás kupak záró', '', 15438, 1.2, 1351, 0, 0, '2014-07-04 12:44:47', '2014-07-04 12:44:47');
INSERT INTO `products` VALUES (112, 'TC2T', 'Koronás kupak záró TC2T', '', 3717, 1.2, 1351, 0, 0, '2014-07-04 12:46:32', '2014-07-04 12:46:32');
INSERT INTO `products` VALUES (113, 'DMA', 'Kézi zúzó-bogyózó', '', 45482, 1.2, 1351, 0, 0, '2014-07-04 12:47:59', '2014-07-04 12:47:59');
INSERT INTO `products` VALUES (114, 'DMS', 'Motoros zúzó-bogyózó csúszógaratos', '', 78720, 1.2, 1351, 0, 0, '2014-07-04 12:50:53', '2014-07-04 12:50:53');
INSERT INTO `products` VALUES (115, 'DMC', 'Motoros zúzó-bogyózó csiga behúzóval', '', 80907, 1.2, 1351, 0, 0, '2014-07-04 12:53:21', '2014-07-04 12:53:21');
INSERT INTO `products` VALUES (116, 'DMCI', 'Motoros zúzó-bogyózó csiga behúzóval', 'inox kivitel', 153067, 1.2, 1351, 0, 0, '2014-07-04 12:56:20', '2014-07-04 12:56:20');
INSERT INTO `products` VALUES (117, 'PMN', 'Szőllő daráló 400 x 400 mm', '', 17275, 1.2, 1351, 0, 0, '2014-07-04 12:58:33', '2014-07-04 12:58:33');
INSERT INTO `products` VALUES (118, 'PP', 'Szőllő daráló 800 x 500 mm', '', 22741, 1.2, 1351, 0, 0, '2014-07-04 12:59:35', '2014-07-04 13:00:33');
INSERT INTO `products` VALUES (119, 'PG', 'Szőllő daráló 950 x 600 mm', '', 27508, 1.2, 1351, 0, 0, '2014-07-04 13:02:53', '2014-07-04 13:02:53');
INSERT INTO `products` VALUES (120, 'PM', 'Szőllő daráló 950 x 600 mm - Motoros 220 V', '', 66912, 1.2, 1351, 0, 0, '2014-07-04 13:03:56', '2014-07-04 13:03:56');
INSERT INTO `products` VALUES (121, 'PIP', 'Gyümölcs daráló 430 x 360 mm', '', 46576, 1.2, 1351, 0, 0, '2014-07-04 13:05:04', '2014-07-04 13:05:04');
INSERT INTO `products` VALUES (122, 'PIPMO', 'Gyümölcs daráló 430 x 360 mm - Motoros 220 V', '', 85280, 1.2, 1351, 0, 0, '2014-07-04 13:05:51', '2014-07-04 13:05:51');
INSERT INTO `products` VALUES (123, 'PIG', 'Gyümölcs daráló 950 x 600 mm', '', 58384, 1.2, 1351, 0, 0, '2014-07-04 13:06:56', '2014-07-04 13:06:56');
INSERT INTO `products` VALUES (124, 'PIGMO', 'Gyümölcs daráló 950 x 600 mm - Motoros 220 V', '', 85280, 1.2, 1351, 0, 0, '2014-07-04 13:15:44', '2014-07-04 13:15:44');
INSERT INTO `products` VALUES (125, 'G20', 'Bor szivattyú 33 liter / perc, 20-as csatlakozóval', '', 16618, 1.2, 1351, 0, 0, '2014-07-04 13:17:09', '2014-07-04 13:17:09');
INSERT INTO `products` VALUES (126, 'G20I', 'Bor szivattyú, inox kivitelben, élelmiszeripari minősítéssel', '', 23616, 1.2, 1351, 0, 0, '2014-07-04 13:19:43', '2014-07-04 13:19:43');
INSERT INTO `products` VALUES (127, '', 'Borszűrő', '', 0, 1.2, 1351, 0, 0, '2014-07-04 13:22:34', '2014-07-04 13:22:34');
INSERT INTO `products` VALUES (128, '', 'Vízprés', 'A gyümölcsprés alkalmas a különböző őrölt gyümölcsfajták, szőlő\r\npréselésével gyümölcslé / must kinyerésére, söprű préselésére,\r\nhálózati víznyomás segítségével. Az általános 2,5bar víznyomás\r\nelegendő a prés hatékony üzemeltetéséhez. A gép a korábban\r\nledarált gyümölcsöt a kosár falának nyomja. A darált gyümölcs\r\npréseléséhez szükséges munkát maga a víznyomás végzi.\r\nA membrán magas élettartamú anyagból készült.', 0, 1.2, 1351, 0, 0, '2014-07-04 13:30:42', '2014-07-04 13:31:04');
INSERT INTO `products` VALUES (129, '', 'Szüretelő kádak', '', 0, 1.2, 1351, 0, 0, '2014-07-04 13:40:49', '2014-07-04 13:40:49');
INSERT INTO `products` VALUES (130, 'RIALZO', 'Magasító, különböző méretekben RIALZO', '', 10496, 1.2, 1351, 0, 0, '2014-07-04 13:44:27', '2014-07-04 13:44:27');
INSERT INTO `products` VALUES (131, 'SCOLA', 'Üveg szárító, 81 férőhelyes', '', 2100, 1.2, 1351, 0, 0, '2014-07-04 13:45:07', '2014-07-04 13:45:07');
INSERT INTO `products` VALUES (132, '20/1S', 'Csap szüretelőkádhoz', '1''''', 2016, 1.2, 1351, 0, 0, '2014-07-04 13:45:49', '2014-07-04 13:46:09');
INSERT INTO `products` VALUES (133, '150S', 'Fogantyú szüretelőkádhoz', '', 1393, 1.2, 1351, 0, 0, '2014-07-04 13:46:39', '2014-07-04 13:46:39');
INSERT INTO `products` VALUES (134, '17S', 'Szűrő szüretelőkádhoz', '', 678, 1.2, 1351, 0, 0, '2014-07-04 13:47:23', '2014-07-04 13:47:23');
INSERT INTO `products` VALUES (135, '', 'Műanyag kanna csappal', '', 0, 1.2, 1351, 0, 0, '2014-07-04 13:48:12', '2014-07-04 13:48:12');
INSERT INTO `products` VALUES (136, '', 'Műanyag tölcsér', '', 0, 1.2, 1351, 0, 0, '2014-07-04 13:49:58', '2014-07-04 13:49:58');
INSERT INTO `products` VALUES (137, '', 'Műanyag hordó csappal', '', 0, 1.2, 1351, 0, 0, '2014-07-04 13:53:12', '2014-07-04 13:53:12');
INSERT INTO `products` VALUES (138, '', 'Borcsap - fa', '', 0, 1.2, 1351, 0, 0, '2014-07-04 13:56:23', '2014-07-04 13:56:23');

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(320) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'Admin', 'admin', 'smaragd@admin.hu', '$2y$10$aS5Le26L1kR4iFtc3C4PcOOQL0Eqzd0v3Dqhd4MFgcxFJqaknJwOi', '2014-04-28 11:00:45', '2014-04-28 11:00:45');
