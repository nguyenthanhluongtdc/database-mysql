-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2021 at 09:04 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_giaxd`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `name` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `number_id` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_analytics`
--

CREATE TABLE `pccc_analytics` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_ad_products`
--

CREATE TABLE `pccc_app_ad_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Id of product',
  `discount_rate` double(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Discount Rate (Percent)',
  `store_id` int(10) UNSIGNED NOT NULL COMMENT 'Id of Store Selling Product',
  `cpp` double(8,2) NOT NULL DEFAULT 0.00 COMMENT 'CPP - Cost per Point',
  `on_sale_date` datetime NOT NULL DEFAULT '2021-02-02 11:46:30' COMMENT 'On-sale date',
  `ad_obj` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Advertising objectives / Category',
  `expiration_date` datetime NOT NULL DEFAULT '2021-02-09 11:46:30' COMMENT 'Expiration date for Ads, Defalut 1 week out of date',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_ad_products`
--

INSERT INTO `pccc_app_ad_products` (`id`, `product_id`, `discount_rate`, `store_id`, `cpp`, `on_sale_date`, `ad_obj`, `expiration_date`, `created_at`, `updated_at`) VALUES
(1, 889, 0.00, 8, 0.00, '2021-02-02 11:46:30', 'adasaasdasdsasda', '2021-02-09 11:46:30', '2021-02-02 05:46:16', '2021-02-02 05:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_ask_prices_widelys`
--

CREATE TABLE `pccc_app_ask_prices_widelys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ti??u ?????',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'ID ????n h??ng',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????a ch???',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'N???i dung',
  `time_close` timestamp NOT NULL DEFAULT '2021-08-31 08:16:40' COMMENT 'Th???i gian ????o h???n',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published' COMMENT 'published|pending|draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Danh s??ch h???i gi?? r???ng r??i';

--
-- Dumping data for table `pccc_app_ask_prices_widelys`
--

INSERT INTO `pccc_app_ask_prices_widelys` (`id`, `name`, `order_id`, `address`, `lat`, `lng`, `content`, `time_close`, `status`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(5, 'DEMO', 64, '??. V?? Ng???c D??ng, ????ng Ho??, D?? An, B??nh D????ng, Vietnam', '10.8764003', '106.7912895', '<div>DEMO</div>', '2021-09-29 17:00:00', 'published', '2021-09-23 11:16:17', '2021-09-23 11:16:17', 'App\\Models\\User', 22232),
(22, 'DEMO NEWS', 71, '??. V?? Ng???c D??ng, ????ng Ho??, D?? An, B??nh D????ng, Vietnam', '10.8764003', '106.7912895', '<div>DEMO NEWS</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 10:09:45', '2021-09-24 10:09:45', NULL, NULL),
(23, 'DEMO H???I GI?? R???NG R??I', 72, 'Sydney CBD, Woolloomooloo NSW 2011, Australia', '-33.8690615', '151.2194896', '<div>DEMO H???I GI?? R???NG R??I</div>', '2021-09-29 17:00:00', 'published', '2021-09-24 10:27:02', '2021-09-24 10:27:02', 'App\\Models\\User', 22232),
(24, 'DEMO CH???N L???C NHA CUNG C???P', 73, '??. V?? Ng???c D??ng, ????ng Ho??, D?? An, B??nh D????ng, Vietnam', '10.8764003', '106.7912895', '<div>DEMO CH???N L???C NHA CUNG C???P</div>', '2021-09-29 17:37:00', 'published', '2021-09-24 10:36:52', '2021-09-24 10:36:52', 'App\\Models\\User', 22232),
(25, 'DEMO', 74, '??. V?? Ng???c D??ng, ????ng Ho??, D?? An, B??nh D????ng, Vietnam', '10.8764003', '106.7912895', '<div>MAIL_MAILER=smtp<br>MAIL_HOST=smtp.mailtrap.io<br>MAIL_PORT=2525<br>MAIL_USERNAME=15ddf1398d9145<br>MAIL_PASSWORD=5361d36edd106a<br>MAIL_ENCRYPTION=tls</div>', '2021-09-29 17:00:00', 'published', '2021-09-24 11:25:06', '2021-09-24 11:25:06', 'App\\Models\\User', 22232),
(26, 'DEMO', 75, '??. V?? Ng???c D??ng, ????ng Ho??, D?? An, B??nh D????ng, Vietnam', '10.8764003', '106.7912895', '<div>DEMO</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 11:29:41', '2021-09-24 11:29:41', 'App\\Models\\User', 22232),
(27, 'DEMO CH???N L???C', 76, '1 ???????ng S??? 3, ????ng Ho??, Th??? ?????c, Th??nh ph??? H??? Ch?? Minh, Vietnam', '10.8766045', '106.7925123', '<div>DEMO CH???N L???C</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 11:58:10', '2021-09-24 11:58:10', 'App\\Models\\User', 22232),
(28, 'DEMO A', 77, '??. V?? Ng???c D??ng, ????ng Ho??, D?? An, B??nh D????ng, Vietnam', '10.8764003', '106.7912895', '<div>DEMO A</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 09:01:48', '2021-09-24 09:01:48', 'App\\Models\\User', 22232),
(29, 'DEMO B', 78, '??. V?? Ng???c D??ng, ????ng Ho??, D?? An, B??nh D????ng, Vietnam', '10.8764003', '106.7912895', '<div>DEMO B</div>', '2021-09-29 17:00:00', 'published', '2021-09-24 09:04:06', '2021-09-24 09:04:06', 'App\\Models\\User', 22232),
(30, 'Mua s???n ph???m', 68, 'Sydney CBD, Woolloomooloo NSW 2011, ??c', '-33.8690615', '151.2194896', '<div>lorem</div>', '2021-09-25 02:15:00', 'hidden', '2021-09-24 22:50:08', '2021-09-24 22:50:08', 'App\\Models\\User', 15832),
(31, 'test', 63, '6 Cowper Wharf Roadway, Woolloomooloo NSW 2011, ??c', '-33.868602', '151.220472', '<div>lorem</div>', '2021-09-27 14:29:00', 'published', '2021-09-27 14:30:56', '2021-09-27 14:30:56', 'App\\Models\\User', 22232),
(32, 'test', 85, 'Sydney CBD, Woolloomooloo NSW 2011, ??c', '-33.8690615', '151.2194896', '<div>lorem</div>', '2021-09-27 14:32:00', 'published', '2021-09-27 14:33:39', '2021-09-27 14:33:39', 'App\\Models\\User', 22232),
(33, 'test', 98, 'Sydney CBD, Woolloomooloo NSW 2011, ??c', '-33.8690615', '151.2194896', '<p>lorem</p>', '2021-10-29 19:22:00', 'hidden', '2021-10-05 19:21:58', '2021-10-05 19:21:58', 'App\\Models\\User', 22232),
(34, 'test', 104, 'Ph?????ng T??n Thi???n, ?????ng Xo??i, B??nh Ph?????c, Vi???t Nam', '11.5335022', '106.9146489', '<p>lorem</p>', '2021-10-30 03:01:00', 'hidden', '2021-10-06 03:03:04', '2021-10-06 03:03:04', 'App\\Models\\User', 22232);

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_attachments`
--

CREATE TABLE `pccc_app_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL COMMENT 'ID media',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='File ????nh k??m';

--
-- Dumping data for table `pccc_app_attachments`
--

INSERT INTO `pccc_app_attachments` (`id`, `object_type`, `object_id`, `media_id`, `created_at`, `updated_at`) VALUES
(93, 'Platform\\FindSuppliers\\Models\\Order', 47, 12104, '2021-09-21 03:26:08', '2021-09-21 03:26:08'),
(94, 'Platform\\FindSuppliers\\Models\\Order', 48, 12105, '2021-09-21 03:38:48', '2021-09-21 03:38:48'),
(95, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 18, 12106, '2021-09-21 03:39:35', '2021-09-21 03:39:35'),
(96, 'Platform\\FindSuppliers\\Models\\Order', 50, 12107, '2021-09-21 03:56:35', '2021-09-21 03:56:35'),
(97, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 19, 12108, '2021-09-21 07:27:18', '2021-09-21 07:27:18'),
(98, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 20, 12109, '2021-09-21 04:03:07', '2021-09-21 04:03:07'),
(99, 'Platform\\FindSuppliers\\Models\\Order', 53, 12110, '2021-09-21 09:35:03', '2021-09-21 09:35:03'),
(100, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 41, 12112, '2021-09-21 13:35:56', '2021-09-21 13:35:56'),
(101, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 41, 12113, '2021-09-21 13:35:56', '2021-09-21 13:35:56'),
(102, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 41, 12114, '2021-09-21 13:35:56', '2021-09-21 13:35:56'),
(103, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 41, 12115, '2021-09-21 13:35:56', '2021-09-21 13:35:56'),
(104, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 41, 12116, '2021-09-21 13:35:56', '2021-09-21 13:35:56'),
(105, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 41, 12117, '2021-09-21 13:35:56', '2021-09-21 13:35:56'),
(106, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 21, 12118, '2021-09-21 14:25:40', '2021-09-21 14:25:40'),
(107, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 2, 12120, '2021-09-23 08:47:47', '2021-09-23 08:47:47'),
(108, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 3, 11968, '2021-09-23 09:33:54', '2021-09-23 09:33:54'),
(109, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 4, 12122, '2021-09-23 11:12:45', '2021-09-23 11:12:45'),
(110, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 5, 12123, '2021-09-23 11:16:17', '2021-09-23 11:16:17'),
(112, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 23, 12126, '2021-09-24 10:27:02', '2021-09-24 10:27:02'),
(113, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 25, 12129, '2021-09-24 11:25:06', '2021-09-24 11:25:06'),
(114, 'Platform\\FindSuppliers\\Models\\AskPricesWidely', 29, 12132, '2021-09-24 09:04:06', '2021-09-24 09:04:06'),
(115, 'Platform\\FindSuppliers\\Models\\Order', 80, 12139, '2021-09-24 23:50:25', '2021-09-24 23:50:25'),
(118, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 42, 12197, '2021-09-27 14:10:03', '2021-09-27 14:10:03'),
(120, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 42, 12199, '2021-09-27 14:12:01', '2021-09-27 14:12:01'),
(121, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12212, '2021-09-29 09:23:09', '2021-09-29 09:23:09'),
(122, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12213, '2021-09-29 09:23:09', '2021-09-29 09:23:09'),
(123, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12214, '2021-09-29 09:23:09', '2021-09-29 09:23:09'),
(124, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12215, '2021-09-29 09:23:09', '2021-09-29 09:23:09'),
(125, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12216, '2021-09-29 09:23:09', '2021-09-29 09:23:09'),
(126, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12217, '2021-09-29 09:23:09', '2021-09-29 09:23:09'),
(127, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12218, '2021-09-29 09:23:09', '2021-09-29 09:23:09'),
(128, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12219, '2021-09-29 09:23:10', '2021-09-29 09:23:10'),
(129, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 44, 12220, '2021-09-29 09:23:10', '2021-09-29 09:23:10'),
(130, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12229, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(131, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12230, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(132, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12231, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(133, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12232, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(134, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12233, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(135, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12234, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(136, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12235, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(137, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12236, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(138, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12237, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(139, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 45, 12238, '2021-10-05 14:56:21', '2021-10-05 14:56:21'),
(140, 'Platform\\FindSuppliers\\Models\\Order', 100, 12241, '2021-10-05 15:39:20', '2021-10-05 15:39:20'),
(141, 'Platform\\FindSuppliers\\Models\\Order', 102, 12242, '2021-10-05 16:02:38', '2021-10-05 16:02:38'),
(142, 'Platform\\FindSuppliers\\Models\\Order', 98, 12243, '2021-10-05 18:41:43', '2021-10-05 18:41:43'),
(143, 'Platform\\FindSuppliers\\Models\\Order', 98, 12244, '2021-10-05 18:42:57', '2021-10-05 18:42:57'),
(144, 'Platform\\FindSuppliers\\Models\\Order', 104, 12245, '2021-10-05 18:44:51', '2021-10-05 18:44:51'),
(145, 'Platform\\FindSuppliers\\Models\\Order', 99, 12249, '2021-10-05 19:37:45', '2021-10-05 19:37:45'),
(146, 'Platform\\FindSuppliers\\Models\\Order', 105, 12250, '2021-10-05 19:38:59', '2021-10-05 19:38:59'),
(147, 'Platform\\FindSuppliers\\Models\\Order', 104, 12252, '2021-10-06 03:01:27', '2021-10-06 03:01:27'),
(148, 'Platform\\FindSuppliers\\Models\\Order', 112, 12254, '2021-10-12 03:51:40', '2021-10-12 03:51:40'),
(149, 'Platform\\FindSuppliers\\Models\\Order', 115, 12255, '2021-10-12 04:01:07', '2021-10-12 04:01:07'),
(150, 'Platform\\FindSuppliers\\Models\\OfferCompetitivePrice', 46, 12261, '2021-10-13 09:17:29', '2021-10-13 09:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_banner_settings`
--

CREATE TABLE `pccc_app_banner_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_banner_settings`
--

INSERT INTO `pccc_app_banner_settings` (`id`, `media_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 2345, 'banner-search-taxcode', '2021-03-17 10:18:54', '2021-03-19 04:58:38'),
(2, 2347, 'banner-company-register', '2021-03-17 10:33:01', '2021-03-19 05:02:52'),
(4, 2428, 'banner-bidding', '2021-04-18 06:57:43', '2021-04-19 02:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_filter_for_users`
--

CREATE TABLE `pccc_app_bidding_filter_for_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Id user t???o b??? l???c tin',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'T??n b??? l???c tin',
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??? kh??a',
  `date_start` datetime DEFAULT NULL COMMENT 'Th???i gian t??m ki???m t???',
  `date_end` datetime DEFAULT NULL COMMENT 'Th???i gian t??m ki???m ?????n',
  `bid_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'L??nh v???c',
  `bid_method` int(11) DEFAULT NULL COMMENT 'H??nh th???c',
  `guaranteed_money_from` int(11) DEFAULT NULL COMMENT 'S??? ti???n ?????m b???o t???',
  `guaranteed_money_to` int(11) DEFAULT NULL COMMENT 'S??? ti???n ?????m b???o ?????n',
  `bid_price_from` int(11) DEFAULT NULL COMMENT 'Gi?? m???i th???u t???',
  `bid_price_to` int(11) DEFAULT NULL COMMENT 'Gi?? m???i th???u ?????n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bid_target` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Lo???i tin',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'N???i dung b??? l???c',
  `email_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id c???a b???ng email_bidding_news'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_bidding_filter_for_users`
--

INSERT INTO `pccc_app_bidding_filter_for_users` (`id`, `user_id`, `name`, `keyword`, `date_start`, `date_end`, `bid_type`, `bid_method`, `guaranteed_money_from`, `guaranteed_money_to`, `bid_price_from`, `bid_price_to`, `created_at`, `updated_at`, `bid_target`, `content`, `email_id`) VALUES
(10, 22232, 'B??? l???c 1', '[\"adwadq\"]', NULL, NULL, '[3,2,1]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:36:09', '2021-05-31 12:05:24', '[\"bid-plan\",\"bid-shortlist\",\"bid-result\"]', 'B??? l???c 1', 42),
(11, 22232, 'B??? l???c 2', '[\"sadfas\"]', NULL, NULL, '[2]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:36:30', '2021-05-31 07:45:26', '[\"bid-pre-result\",\"bid-shortlist\"]', 'B??? l???c 2', NULL),
(12, 22232, 'B??? l???c 3', '[\"dwadwq\"]', NULL, NULL, '[3,2,1]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:36:51', '2021-05-31 07:36:51', '[\"bid-result\",\"bid-pre-result\",\"bid-shortlist\"]', 'B??? l???c 3', NULL),
(13, 22232, 'B??? l???c 4', '[\"afwqq\"]', NULL, NULL, '[]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:45:41', '2021-05-31 12:05:24', '[]', 'B??? l???c 4', NULL),
(14, 22232, 'B??? l???c 5', '[\"vdsvw\"]', NULL, NULL, '[]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:45:54', '2021-05-31 12:05:24', '[]', 'B??? l???c 5', 41);

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news`
--

CREATE TABLE `pccc_app_bidding_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id lo???i tin ?????u th???u',
  `bid_type` int(11) DEFAULT NULL COMMENT 'L??nh v???c',
  `bid_method` int(11) DEFAULT NULL COMMENT 'H??nh th???c',
  `aujusted_limited` int(11) DEFAULT NULL COMMENT 'Ngu???n v???n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bid_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'S??? TBMT ho???c s??? KHLCNT',
  `bid_turn_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `time_bid_closing` datetime DEFAULT NULL COMMENT 'Th???i gian ????ng th???u',
  `time_posting` datetime DEFAULT NULL COMMENT 'Th???i ??i???m ????ng t???i',
  `date_of_approval` datetime DEFAULT NULL COMMENT 'Ng??y ph?? duy???t',
  `time_to_open_pq` datetime DEFAULT NULL COMMENT 'Th???i ??i???m m??? s?? tuy???n',
  `bid_extend_type` int(11) DEFAULT NULL COMMENT 'Lo???i th??ng b??o gia h???n(1) ho???c ????nh ch??nh(2)',
  `is_related` int(11) DEFAULT NULL COMMENT 'l?? tin li??n quan(1) ho???c kh??ng li??n quan(0)',
  `shortlist_status` int(11) DEFAULT NULL COMMENT 'Tr???ng th??i c???a danh s??ch ng???n (0: ???? h???y, 1: ???? c??ng khai)',
  `bid_opening_time` datetime DEFAULT NULL COMMENT 'Th???i ??i???m m??? th???u c???a k???t qu??? m??? th???u ??i???n t??? v?? k???t qu??? l???a ch???n nh?? th???u',
  `time_of_completion` datetime DEFAULT NULL COMMENT 'Th???i ??i???m ho??n th??nh c???a k???t qu??? m??? th???u ??i???n t??? v?? k???t qu??? l???a ch???n nh?? th???u',
  `open_result_status` enum('bid_cancel','yet_bid_open','bid_open_complete','open_hskt_complete','open_hstc_complete','complete_gd_hsdt','complete_gd_hskt') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'H???y th???u'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news_details`
--

CREATE TABLE `pccc_app_bidding_news_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id lo???i tin ?????u th???u',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news_files`
--

CREATE TABLE `pccc_app_bidding_news_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 't??n file',
  `link_muasamcong` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'link file muasamcong.mpi.gov.vn',
  `media_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id li??n k???t t???i b???ng b???ng app_medias',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_big_file` int(11) DEFAULT NULL COMMENT 'l?? file l???n(1) ho???c kh??ng (null)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news_follow`
--

CREATE TABLE `pccc_app_bidding_news_follow` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id lo???i tin ?????u th???u',
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id lo???i tin ?????u th???u',
  `bid_number` int(11) NOT NULL COMMENT 'S??? TBMT ho???c s??? KHLCNT, s??? TBMQT, s??? TBMST...',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Id user theo d??i',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news_joint_ventures`
--

CREATE TABLE `pccc_app_bidding_news_joint_ventures` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id lo???i tin ?????u th???u',
  `joint_venture_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n li??n danh',
  `job_company_profile_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id c??ng ty',
  `joint_venture_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id c??ng ty li??n danh',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_bid_open_complete`
--

CREATE TABLE `pccc_app_bidding_open_result_bid_open_complete` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n nh?? th???u',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??? l??? gi???m gi?? (%)',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u sau gi???m gi?? (VND)',
  `effect_hsdt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hi???u l???c HSDT ',
  `bid_guarantee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B???o ?????m d??? th???u',
  `effect_bddt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hi???u l???c B??DT (ng??y)',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Th???i gian th???c hi???n h???p ?????ng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_complete_gd_hsdt`
--

CREATE TABLE `pccc_app_bidding_open_result_complete_gd_hsdt` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `ratings` int(10) UNSIGNED NOT NULL COMMENT 'X???p h???ng',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n nh?? th???u',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??? l??? gi???m gi?? (%)',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u sau gi???m gi?? (VND)',
  `time_of_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Th???i ??i???m d??? th???u',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluation_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? ????nh gi??',
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n ng?????i ?????i di???n',
  `result` int(11) DEFAULT 0 COMMENT 'K???t qu??? tr??ng th???u(1)/tr?????t(0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_complete_gd_hskt`
--

CREATE TABLE `pccc_app_bidding_open_result_complete_gd_hskt` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n nh?? th???u',
  `scores` int(11) DEFAULT NULL COMMENT '??i???m s???',
  `show` int(11) DEFAULT NULL COMMENT '???n/Hi???n (0/1)',
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_contractor`
--

CREATE TABLE `pccc_app_bidding_open_result_contractor` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `parent_status` enum('bid_cancel','yet_bid_open','bid_open_complete','open_hskt_complete','open_hstc_complete','complete_gd_hsdt','complete_gd_hskt') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'H???y th???u',
  `job_company_profile_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Id c??ng ty',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_joint_venture` int(11) DEFAULT NULL COMMENT 'L?? li??n danh hay kh??ng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_open_hskt_complete`
--

CREATE TABLE `pccc_app_bidding_open_result_open_hskt_complete` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n nh?? th???u',
  `effect_hsdxkt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hi???u l???c HS??XKT',
  `effect_bd_dt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hi???u l???c B?? DT',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Th???i gian th???c hi???n h???p ?????ng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_open_hstc_complete`
--

CREATE TABLE `pccc_app_bidding_open_result_open_hstc_complete` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n nh?? th???u',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??? l??? gi???m gi?? (%)',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u sau gi???m gi?? (VND)',
  `effect_hsdxtc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hi???u l???c HS??XTC',
  `value_bd_dt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? Tr??? B?? DT (VND)',
  `effect_bd_dt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hi???u l???c B?? DT',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Th???i gian th???c hi???n h???p ?????ng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_plan_package`
--

CREATE TABLE `pccc_app_bidding_plan_package` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `lcnt_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'L??nh v???c LCNT',
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n g??i th???u',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? g??i th???u (VND)',
  `capital_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chi ti???t ngu???n v???n',
  `form_of_lcnt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'H??nh th???c LCNT',
  `lcnt_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ph????ng th???c LCNT',
  `time_start_lcnt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Th???i gian b???t ?????u t??? ch???c LCNT',
  `contract_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Lo???i h???p ?????ng',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Th???i gian th???c hi???n h???p ?????ng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `execution_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????a ??i???m th???c hi???n g??i th???u',
  `number_tbml_tbmst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? TBMT/TBMST ???? t???o'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_pq_attached_files`
--

CREATE TABLE `pccc_app_bidding_pq_attached_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `text_type_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n lo???i v??n b???n',
  `attached_file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n file ????nh k??m',
  `download` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Download',
  `input` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Input',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_pre_result_contractor`
--

CREATE TABLE `pccc_app_bidding_pre_result_contractor` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `joint_venture_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n li??n danh',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n c??ng ty',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????a ch???',
  `country_or_territory_of_bidders` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'N?????c ho???c v??ng l??nh th??? n??i nh?? th???u ????ng k?? ho???t ?????ng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_result_contractor`
--

CREATE TABLE `pccc_app_bidding_result_contractor` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n nh?? th???u',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??? l??? gi???m gi?? (%)',
  `technical_score` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??i???m k??? thu???t',
  `price_review` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? ????nh gi??',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? d??? th???u sau gi???m gi?? (kh??ng t??nh c??c kho???n t???m t??nh v?? d??? ph??ng n???u c??) (VND)',
  `winning_bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gi?? tr??ng th???u',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Th???i gian th???c hi???n h???p ?????ng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_result_goods`
--

CREATE TABLE `pccc_app_bidding_result_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `goods_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n h??ng h??a',
  `marks_labels_of_products` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'K?? hi???u nh??n, m??c c???a s???n ph???m',
  `mass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kh???i l?????ng m???i th???u',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????n v???',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'M?? t??? h??ng h??a',
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Xu???t x???',
  `unit_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????n gi?? d??? th???u(VN??)',
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ghi ch??',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_shortlist_contractors`
--

CREATE TABLE `pccc_app_bidding_shortlist_contractors` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin ?????u th???u',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??KKD',
  `name_partnership` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n li??n danh',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n nh?? th???u',
  `contractor_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????a ch??? nh?? th???u',
  `register_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'N??i NT ????ng k?? ho???t ?????ng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_types`
--

CREATE TABLE `pccc_app_bidding_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_bidding_types`
--

INSERT INTO `pccc_app_bidding_types` (`id`, `key`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'bid-plan', 'K??? ho???ch l???a ch???n nh?? th???u', 'ke-hoach-lua-chon-nha-thau', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(2, 'bid-pq', 'Th??ng b??o m???i s?? tuy???n/ m???i quan t??m', 'thong-bao-moi-so-tuyen-moi-quan-tam', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(3, 'bid', 'Th??ng b??o m???i th???u', 'thong-bao-moi-thau', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(4, 'bid-extend', 'Th??ng b??o gia h???n/ ????nh ch??nh', 'thong-bao-gia-han-dinh-chinh', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(5, 'bid-shortlist', 'Danh s??ch ng???n', 'danh-sach-ngan', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(6, 'bid-pre-result', 'K???t qu??? s?? tuy???n', 'ket-qua-so-tuyen', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(7, 'bid-open-result', 'K???t qu??? m??? th???u ??i???n t???', 'ket-qua-mo-thau-dien-tu', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(8, 'bid-result', 'K???t qu??? l???a ch???n nh?? th???u', 'ket-qua-lua-chon-nha-thau', '2021-04-07 04:13:50', '2021-04-07 04:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_billing_informations`
--

CREATE TABLE `pccc_app_billing_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'T??n c??ng ty/T??? ch???c',
  `company_address` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????a ch??? c??ng ty/T??? ch???c',
  `tax_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'M?? s??? thu??? c??ng ty/T??? ch???c',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'T??n ng?????i li??n h???',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S??? ??i???n tho???i ng?????i li??n h???',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????a ch??? email nh???n h??a ????n ??i???n t???',
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Id b???ng transactions',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_billing_informations`
--

INSERT INTO `pccc_app_billing_informations` (`id`, `company_name`, `company_address`, `tax_code`, `name`, `phone`, `email`, `transaction_id`, `created_at`, `updated_at`) VALUES
(4, 'Cty TNHH MTV H??ng Th???nh Ph??t', '76a', '11112222', 'M?? H??ng', '0344242679', 'mavanhung679@gmail.com', 557, '2021-08-17 23:24:59', '2021-08-17 23:24:59'),
(5, 'Cty C??? Ph???n ABC', '123', '4953696969', 'M?? H??ng', '0344242679', 'mavanhung679@gmail.com', 558, '2021-08-17 23:26:22', '2021-08-17 23:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_careers`
--

CREATE TABLE `pccc_app_careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_careers`
--

INSERT INTO `pccc_app_careers` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'T???t c??? ng??nh ngh???', 'tat-ca-nganh-nghe', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(2, 'An to??n lao ?????ng', 'an-toan-lao-dong', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(3, 'B??c s??', 'bac-si', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(4, 'B??n h??ng', 'ban-hang', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(5, 'B???o hi???m', 'bao-hiem', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(6, 'B???t ?????ng s???n', 'bat-dong-san', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(7, 'Bi??n phi??n d???ch', 'bien-phien-dich', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(8, 'C???p qu???n l?? ??i???u h??nh', 'cap-quan-ly-dieu-hanh', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(9, 'Ch???ng kho??n', 'chung-khoan', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(10, 'C?? kh??', 'co-khi', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(11, 'C??ng ngh??? cao', 'cong-nghe-cao', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(12, 'D???u kh??', 'dau-khi', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(13, 'D???ch v??? kh??ch h??ng', 'dich-vu-khach-hang', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(14, 'D?????c s??', 'duoc-si', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(15, 'Gi??o d???c & ?????o t???o', 'giao-duc-dao-tao', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(16, 'H??ng kh??ng du l???ch', 'hang-khong-du-lich', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(17, 'IT - Ph???n m???m', 'it-phan-mem', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(18, 'IT -Ph???n c???ng', 'it-phan-cung', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(19, 'K??? to??n / Ki???m to??n', 'ke-toan-kiem-toan', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(20, 'K??? s??', 'ky-su', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(21, 'Ng??n h??ng', 'ngan-hang', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(22, 'May m???c', 'may-mac', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(23, 'N??ng l??m nghi???m', 'nong-lam-nghiem', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(24, 'Th???y s???n', 'thuy-san', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(25, 'X??y d???ng', 'xay-dung', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(26, 'T?? v???n b???o hi???m', 'tu-van-bao-hiem', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(27, 'Ch??m s??c kh??ch h??ng', 'cham-soc-khach-hang', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(28, 'K?? thu???t ???ng d???ng', 'ki-thuat-ung-dung', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(29, 'B???o v???/V??? s??/An ninh', 'bao-veve-sian-ninh', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(30, 'B??u ch??nh vi???n th??ng', 'buu-chinh-vien-thong', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(31, 'C??ng ngh??? th??ng tin', 'cong-nghe-thong-tin', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(32, 'Du l???ch/Nh?? h??ng/Kh??ch s???n', 'du-lichnha-hangkhach-san', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(33, 'D?????c h??a ch???t/Sinh h??a', 'duoc-hoa-chatsinh-hoa', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(34, 'L??m ?????p/Th??? l???c/Spa', 'lam-depthe-lucspa', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(35, 'Lu???t/Ph??p l??', 'luatphap-ly', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(36, 'M??i tr?????ng/X??? l?? ch???t th???i', 'moi-truongxu-li-chat-thai', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(37, 'M??? ph???m/Th???i trang/Trang s???c', 'my-phamthoi-trangtrang-suc', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(38, 'Ngh??? thu???t/??i???n ???nh xxx 123', 'nghe-thuatdien-anh', '2020-06-30 10:26:21', '2020-06-30 13:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_care_company`
--

CREATE TABLE `pccc_app_care_company` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_chain_split`
--

CREATE TABLE `pccc_app_chain_split` (
  `id` int(10) UNSIGNED NOT NULL,
  `modelable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelable_id` bigint(20) UNSIGNED NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `results` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_chain_split_descriptions`
--

CREATE TABLE `pccc_app_chain_split_descriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `modelable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelable_id` bigint(20) UNSIGNED NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `results` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_company_alias`
--

CREATE TABLE `pccc_app_company_alias` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_company_profile_id` int(10) UNSIGNED DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `office_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'M?? c?? quan',
  `investor_is_approved` tinyint(1) DEFAULT 0 COMMENT 'N???u b???ng 1 l?? b??n b??n m???i th???u',
  `contractor_violation` tinyint(1) DEFAULT 0 COMMENT 'N???u b???ng 1 l?? t??? ch???c c?? nh??n vi ph???m',
  `contractor` tinyint(1) DEFAULT 0 COMMENT 'N???u b???ng 1 l?? nh?? th???u ???????c ph?? duy???t'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_company_alias`
--

INSERT INTO `pccc_app_company_alias` (`id`, `job_company_profile_id`, `company_name`, `tax_code`, `created_at`, `updated_at`, `office_code`, `investor_is_approved`, `contractor_violation`, `contractor`) VALUES
(1100, 57288, 'H??? KINH DOANH C???A H??NG THI???T B??? Y T??? THI???N LAN', '8048733070', '2021-05-22 11:14:53', '2021-05-22 11:14:53', NULL, 0, 0, 1),
(1101, 57289, 'C??NG TY TNHH TH????NG M???I - D???CH V??? - T?? V???N X??Y D???NG 368', '6300343256', '2021-05-22 11:14:53', '2021-05-22 11:14:53', NULL, 0, 0, 1),
(1102, 57290, 'C??NG TY TNHH SRINAM', '0402087360', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1103, 57291, 'C??NG TY C??? PH???N BABU VI???T NAM', '0107678704', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1104, 57292, 'DOANH NGHI???P T?? NH??N CH??NH PH??T', '3500798135', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1105, 57293, 'C??NG TY TNHH MTV TAGCO ANH S??N', '2901949189', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1106, 57294, 'C??NG TY TNHH AGROPEST VIET NAM', '1801655673', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1107, 57295, 'C??NG TY TNHH AN PH??C 116', '5200900769', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1108, 57296, 'C??NG TY TNHH T&T RETAIL', '0108252605', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1109, 57297, 'C??NG TY TNHH GI???I PH??P C??NG NGH??? TND', '0315901294', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1110, 57298, 'C??NG TY TR??CH NHI???M H???U H???N M???T TH??NH VI??N NAM HO??NG TH???NH', '5400361585', '2021-05-22 11:14:57', '2021-05-22 11:14:57', NULL, 0, 0, 1),
(1111, 57299, 'H??? Kinh Doanh Nguy???n H???u Trung', '5702078006', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1112, 57300, 'C??NG TY TNHH K??? THU???T TRI???N PH??T', '0400963679', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1113, 57301, 'C??NG TY C??? PH???N D???CH V??? V?? TH????NG M???I T???NG H???P VI???T HO??NG', '0102155147', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1114, 57302, 'C??NG TY TNHH X??? L?? N???N M??NG V?? X??Y D???NG G?? C??NG', '1201579452', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1115, 57303, 'C??NG TY TNHH M???T TH??NH VI??N X??Y D???NG LONG GIA B???O', '3702132884', '2021-05-22 11:14:59', '2021-05-22 11:14:59', NULL, 0, 0, 1),
(1116, 57304, 'C??NG TY C??? PH???N D???CH V??? V??? SINH M??I TR?????NG ???? TH???', '0102569317', '2021-05-22 11:14:59', '2021-05-22 11:14:59', NULL, 0, 0, 1),
(1117, 57305, 'C??NG TY TNHH D???CH V??? TH????NG M???I V?? ?????U T?? B???O AN', '0106473366', '2021-05-22 11:14:59', '2021-05-22 11:14:59', NULL, 0, 0, 1),
(1118, 57306, 'C??NG TY TNHH X??Y D???NG D??N D???NG B???O KH??I', '1702225380', '2021-05-22 11:15:00', '2021-05-22 11:15:00', NULL, 0, 0, 1),
(1119, 57307, 'C??NG TY TNHH TH????NG M???I C??NG NGH??? ND-TECH', '0107796271', '2021-05-22 11:15:00', '2021-05-22 11:15:00', NULL, 0, 0, 1),
(1120, 57308, 'C??NG TY C??? PH???N ?????U T?? V?? THI???T B??? T???M NH??N', '1801690533', '2021-05-22 11:15:02', '2021-05-22 11:15:02', NULL, 0, 0, 1),
(1121, 57309, 'C??NG TY C??? PH???N K??? THU???T V?? D???CH V??? MINH KHANG', '0107541146', '2021-05-22 11:15:02', '2021-05-22 11:15:02', NULL, 0, 0, 1),
(1122, 57310, 'C??NG TY C??? PH???N T???P ??O??N ?????U T?? PH??C H??NG', '2802936767', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1123, 57311, 'C??NG TY C??? PH???N QU???NG C??O DGM ASIA', '0314269629', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1124, 57312, 'C??NG TY TNHH MTV THI??N LONG', '6200110378', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1125, 57313, 'C??NG TY TNHH QUANG VINH E.M.I', '3702546652', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1126, 57314, 'C??NG TY TR??CH NHI???M H???U H???N X??Y D???NG CHUNG HU???', '5400366840', '2021-05-22 11:15:04', '2021-05-22 11:15:04', NULL, 0, 0, 1),
(1127, 57315, 'C??NG TY TNHH T?? V???N X??Y D???NG C??C D??? ??N QU???C T???', '0106425965', '2021-05-22 11:15:04', '2021-05-22 11:15:04', NULL, 0, 0, 1),
(1128, 57316, 'V??n Ph??ng Ph???m S??i G??n', '0301877475', '2021-05-22 11:15:04', '2021-05-22 11:15:04', NULL, 0, 0, 1),
(1129, 57317, 'C??NG TY C??? PH???N C??NG NGH??? XANH', '0200644989', '2021-05-22 11:15:05', '2021-05-22 11:15:05', NULL, 0, 0, 1),
(1130, 57318, 'C??NG TY TNHH T?? V???N THI???T K??? GIA HUY', '3801218860', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1131, 57319, 'C??NG TY TNHH TDB H?? N???I', '0106863817', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1132, 57320, 'C??NG TY TR??CH NHI???M H???U H???N M???T TH??NH VI??N TR???N TH???', '5400306979', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1133, 57321, 'C??NG TY TNHH C?? KH?? X??Y D???NG V?? TH????NG M???I DUY HI???U', '2700913464', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1134, 57322, 'C??NG TY TNHH MTV X??Y D???NG TH??I S??N T??Y B???C', '5500546999', '2021-05-22 11:15:08', '2021-05-22 11:15:08', NULL, 0, 0, 1),
(1135, 57323, 'C??NG TY C??? PH???N X??Y D???NG V?? TH????NG M???I V???N T??NG', '0106514929', '2021-05-22 11:15:08', '2021-05-22 11:15:08', NULL, 0, 0, 1),
(1136, 57324, 'C??NG TY TNHH QU???C T??? HEGATEK', '0106817761', '2021-05-22 11:15:09', '2021-05-22 11:15:09', NULL, 0, 0, 1),
(1137, 57325, 'C??NG TY C?? GI???I V?? X??Y D???NG H??A B??NH (TNHH)', '0800006554', '2021-05-22 11:15:09', '2021-05-22 11:15:09', NULL, 0, 0, 1),
(1138, 57326, 'C??NG TY TNHH S???N XU???T V?? TH????NG M???I S??M VI???T NAM', '2400892894', '2021-05-22 11:15:09', '2021-05-22 11:15:09', NULL, 0, 0, 1),
(1139, 57327, 'C??NG TY TNHH M???T TH??NH VI??N MINH VI???T GIA LAI', '5901164926', '2021-05-22 11:15:10', '2021-05-22 11:15:10', NULL, 0, 0, 1),
(1140, 57328, 'C??NG TY TNHH M???T TH??NH VI??N QUANG VINH KON TUM', '6101174282', '2021-05-22 11:15:11', '2021-05-22 11:15:11', NULL, 0, 0, 1),
(1141, 57329, 'TRUNG T??M L??U TR??? L???CH S??? T???NH Y??N B??I', '5200894804', '2021-05-22 11:15:12', '2021-05-22 11:15:12', NULL, 0, 0, 1),
(1142, 57330, 'C??NG TY TNHH M???T TH??NH VI??N ?????U T?? X??Y D???NG AN KH??I L??M ?????NG', '5801427610', '2021-05-22 11:15:12', '2021-05-22 11:15:12', NULL, 0, 0, 1),
(1143, 57331, 'C??NG TY TNHH QU???N L?? X??Y D???NG H??NG TH???NH', '0314643354', '2021-05-22 11:15:12', '2021-05-22 11:15:12', NULL, 0, 0, 1),
(1144, 231918, 'C??NG TY TNHH MTV X??Y D???NG V?? TH????NG M???I THANH B??NH', '5300793020', '2021-05-22 11:17:28', '2021-05-22 11:17:28', NULL, 0, 0, 1),
(1145, 231919, 'C??NG TY TR??CH NHI???M H???U H???N M???T TH??NH VI??N N??NG NGHI???P XANH 886 KI??N GIANG', '1702225366', '2021-05-22 11:17:28', '2021-05-22 11:17:28', NULL, 0, 0, 1),
(1146, 231920, 'C??NG TY TNHH N???I TH???T GIA VI???T', '0302895653', '2021-05-22 11:17:29', '2021-05-22 11:17:29', NULL, 0, 0, 1),
(1147, 231921, 'C??NG TY C??? PH???N T?? V???N X??Y D???NG D???CH V??? TH????NG M???I QMT', '0310897326', '2021-05-22 11:17:29', '2021-05-22 11:17:29', NULL, 0, 0, 1),
(1148, 231922, 'C??NG TY TNHH X??Y D???NG V?? D???CH V??? T???NG H???P TU???N ANH', '0109317767', '2021-05-22 11:17:29', '2021-05-22 11:17:29', NULL, 0, 0, 1),
(1149, 231923, 'C??NG TY TNHH M???T TH??NH VI??N VI T??NH NGUY??N LONG', '5901095729', '2021-05-22 11:17:30', '2021-05-22 11:17:30', NULL, 0, 0, 1),
(1150, 196664, 'Tr?????ng ?????i h???c Vinh', '2900466502', '2021-05-22 11:17:30', '2021-05-22 11:17:30', NULL, 0, 0, 1),
(1151, 231924, 'C??NG TY TNHH TH????NG M???I V?? T?? V???N THI???T K??? HO??NG NGUY??N', '0314990069', '2021-05-22 11:17:31', '2021-05-22 11:17:31', NULL, 0, 0, 1),
(1152, 231925, 'C??NG TY C??? PH???N ?????U T?? X??Y D???NG TH??NH C??NG 886', '1702222252', '2021-05-22 11:17:31', '2021-05-22 11:17:31', NULL, 0, 0, 1),
(1153, 231926, 'C??NG TY C??? PH???N K??? THU???T V?? C??NG NGH??? G6T', '0108970388', '2021-05-22 11:17:32', '2021-05-22 11:17:32', NULL, 0, 0, 1),
(1154, 231927, 'C??ng ty c??? ph???n x??y d???ng Ho??ng Phong Long Bi??n', '0108588316', '2021-05-22 11:17:34', '2021-05-22 11:17:34', NULL, 0, 0, 1),
(1155, 231928, 'C??NG TY TNHH T?? V???N THI???T K??? V?? X??Y D???NG ?????C T??N', '4201744006', '2021-05-22 11:17:34', '2021-05-22 11:17:34', NULL, 0, 0, 1),
(1156, 231929, 'C??NG TY C??? PH???N TH????NG M???I TLX', '0109157175', '2021-05-22 11:17:35', '2021-05-22 11:17:35', NULL, 0, 0, 1),
(1157, 231930, 'C??NG TY TNHH TM DV K??? THU???T KH??NH AN PH??', '4201888329', '2021-05-22 11:17:35', '2021-05-22 11:17:35', NULL, 0, 0, 1),
(1158, 231931, 'C???a h??ng m??y t??nh B??n V??n Hi???n', '8116558951', '2021-05-22 11:17:36', '2021-05-22 11:17:36', NULL, 0, 0, 1),
(1159, 231932, 'C??NG TY TNHH ?????U T?? X??Y L???P V?? TH????NG M???I PH?? AN NGUY??N', '0109573182', '2021-05-22 11:17:36', '2021-05-22 11:17:36', NULL, 0, 0, 1),
(1160, 231933, 'C??NG TY TNHH HAVIPHARM', '0108080836', '2021-05-22 11:17:37', '2021-05-22 11:17:37', NULL, 0, 0, 1),
(1161, 231934, 'C??NG TY C??? PH???N ?????U T?? C??NG NGH??? V?? D???CH V??? H?? N???I', '0105843945', '2021-05-22 11:17:37', '2021-05-22 11:17:37', NULL, 0, 0, 1),
(1162, 231935, 'C??NG TY C??? PH???N TH????NG M???I D?????C PH???M TU??? GIA', '4601261860', '2021-05-22 11:17:38', '2021-05-22 11:17:38', NULL, 0, 0, 1),
(1163, 231936, 'C??NG TY C??? PH???N ????O T???O S???A CH???A ?? T?? V?? TH????NG M???I T???NG H???P TH??I TH???NH', '0108487822', '2021-05-22 11:17:38', '2021-05-22 11:17:38', NULL, 0, 0, 1),
(1164, 231937, 'C??NG TY CP TH????NG M???I V?? D???CH V??? QU???NG C??O NGH??? AN', '2901804962', '2021-05-22 11:17:40', '2021-05-22 11:17:40', NULL, 0, 0, 1),
(1165, 231938, 'C??NG TY TNHH TH????NG M???I V?? D???CH V??? CAT TECH VI???T NAM', '0108678841', '2021-05-22 11:17:41', '2021-05-22 11:17:41', NULL, 0, 0, 1),
(1166, 231939, 'C??NG TY TNHH KHO??NG S???N H??A B??NH NINH THU???N', '4500622373', '2021-05-22 11:17:41', '2021-05-22 11:17:41', NULL, 0, 0, 1),
(1167, 231940, 'C??NG TY C??? PH???N X??Y D???NG TH????NG M???I V?? D???CH V??? PH??T AN', '0106182247', '2021-05-22 11:17:41', '2021-05-22 11:17:41', NULL, 0, 0, 1),
(1168, 231941, 'C??NG TY TNHH MTV NGUY??N QU??N', '6400431587', '2021-05-22 11:17:42', '2021-05-22 11:17:42', NULL, 0, 0, 1),
(1169, 231942, 'C??NG TY C??? PH???N XU???T NH???P KH???U RAU QU??? I', '0100113920', '2021-05-22 11:17:42', '2021-05-22 11:17:42', NULL, 0, 0, 1),
(1170, 231943, 'C??NG TY TNHH V??N MINH S???', '2400811408', '2021-05-22 11:17:43', '2021-05-22 11:17:43', NULL, 0, 0, 1),
(1171, 231944, 'C??NG TY C??? PH???N VINATEA KIM ANH', '0107409074', '2021-05-22 11:17:43', '2021-05-22 11:17:43', NULL, 0, 0, 1),
(1172, 231945, 'C??NG TY TNHH M???T TH??NH VI??N QU???NG C??O VI???T THI???N', '4800923815', '2021-05-22 11:17:44', '2021-05-22 11:17:44', NULL, 0, 0, 1),
(1173, 231946, 'C??ng ty TNHH Lavie', '51002200040', '2021-05-22 11:17:44', '2021-05-22 11:17:44', NULL, 0, 0, 1),
(1174, 231947, 'C??NG TY TNHH K??? THU???T X??Y D???NG NGUY??N D????NG', '0311399891', '2021-05-22 11:17:46', '2021-05-22 11:17:46', NULL, 0, 0, 1),
(1175, 231948, 'C??NG TY TNHH GI???I PH??P C??NG NGH??? NH???T VI???T', '0109587467', '2021-05-22 11:17:47', '2021-05-22 11:17:47', NULL, 0, 0, 1),
(1176, 231949, 'C??NG TY TNHH M???T TH??NH VI??N TH????NG M???I S???N XU???T KH??NH CHI', '3801183953', '2021-05-22 11:17:47', '2021-05-22 11:17:47', NULL, 0, 0, 1),
(1177, 231950, 'C??NG TY CP X??Y D???NG V?? KI???M ?????NH H?? N???I', '2802538519', '2021-05-22 11:17:48', '2021-05-22 11:17:48', NULL, 0, 0, 1),
(1178, 231951, 'C??NG TY TNHH THI???T B??? PCCC MINH C?????NG', '3603723290', '2021-05-22 11:17:48', '2021-05-22 11:17:48', NULL, 0, 0, 1),
(1179, 231952, 'C??NG TY C??? PH???N B???NH VI???N S??I G??N - PHAN RANG', '4500455605', '2021-05-22 11:17:49', '2021-05-22 11:17:49', NULL, 0, 0, 1),
(1180, 231953, 'C??NG TY TNHH COMPOSITE HO??NG H??', '0108879160', '2021-05-22 11:17:49', '2021-05-22 11:17:49', NULL, 0, 0, 1),
(1181, 231954, 'C??NG TY TNHH X??Y D???NG V?? D???CH V??? K??? THU???T PCCC ????NG D????NG', '0108484620', '2021-05-22 11:17:50', '2021-05-22 11:17:50', NULL, 0, 0, 1),
(1182, 231955, 'C??NG TY TNHH TH????NG M???I D???CH V??? K??? THU???T MTS', '0314195529', '2021-05-22 11:17:50', '2021-05-22 11:17:50', NULL, 0, 0, 1),
(1183, 231956, 'C??NG TY TNHH K??? THU???T S??? PH????NG B???C', '0108946995', '2021-05-22 11:17:50', '2021-05-22 11:17:50', NULL, 0, 0, 1),
(1184, 231957, 'C??NG TY C??? PH???N TH????NG M???I T???NG H???P ?????I DUY??N H???I', '0200578165', '2021-05-22 11:17:52', '2021-05-22 11:17:52', NULL, 0, 0, 1),
(1185, 231958, 'C??NG TY TR??CH NHI???M H???U H???N MAY SONG NG???C', '0302017338', '2021-05-22 11:17:53', '2021-05-22 11:17:53', NULL, 0, 0, 1),
(1186, 231959, 'C??NG TY TNHH S???N XU???T TH????NG M???I TRUY???N TH??NG S??U TH??NG CH??N', '0316789126', '2021-05-22 11:17:53', '2021-05-22 11:17:53', NULL, 0, 0, 1),
(1187, 231960, 'C??NG TY TNHH LAKSANA', '1801498438', '2021-05-22 11:17:54', '2021-05-22 11:17:54', NULL, 0, 0, 1),
(1188, 231961, 'C??NG TY TNHH D???CH V??? DU L???CH PH????NG H?????NG', '0107446492', '2021-05-22 11:17:54', '2021-05-22 11:17:54', NULL, 0, 0, 1),
(1189, 231962, 'C??NG TY TNHH NG???C ??I???M', '4101593314', '2021-05-22 11:17:55', '2021-05-22 11:17:55', NULL, 0, 0, 1),
(1190, 231963, 'C??NG TY TNHH TH????NG M???I D???CH V??? S???N XU???T B??NH AN AN', '3603687677', '2021-05-22 11:17:55', '2021-05-22 11:17:55', NULL, 0, 0, 1),
(1191, 231964, 'C??NG TY TNHH TH????NG M???I V?? ?????U T?? X??Y D???NG NAM H??NG', '0108914288', '2021-05-22 11:17:56', '2021-05-22 11:17:56', NULL, 0, 0, 1),
(1192, 231965, 'C??NG TY TNHH T?? V???N V?? ?????U T?? X??Y D???NG 988', '2400858082', '2021-05-22 11:17:56', '2021-05-22 11:17:56', NULL, 0, 0, 1),
(1193, 231966, 'C???A H??NG C??NG BINH', '578002983', '2021-05-22 11:17:57', '2021-05-22 11:17:57', NULL, 0, 0, 1),
(1194, 231967, 'C??NG TY TNHH ?????U T?? V?? C??NG NGH??? ALPHA', '0108292862', '2021-05-22 11:17:59', '2021-05-22 11:17:59', NULL, 0, 0, 1),
(1195, 231968, 'C??NG TY C??? PH???N ?????U T?? V?? TH????NG M???I QUANG ?????T', '4700280409', '2021-05-22 11:17:59', '2021-05-22 11:17:59', NULL, 0, 0, 1),
(1196, 231969, 'C??NG TY TNHH X??Y D???NG NGUY???T PH????NG', '2200736143', '2021-05-22 11:18:00', '2021-05-22 11:18:00', NULL, 0, 0, 1),
(1197, 231970, 'C??NG TY TNHH ?????U T?? TH????NG M???I QU???NG C??O V?? N???I TH???T T??M AN PH??T', '0108363584', '2021-05-22 11:18:00', '2021-05-22 11:18:00', NULL, 0, 0, 1),
(1198, 231971, 'C??NG TY C??? PH???N T?? V???N KH???O S??T V?? X??? L?? N???N M??NG C??NG TR??NH', '5700602591', '2021-05-22 11:18:00', '2021-05-22 11:18:00', NULL, 0, 0, 1),
(1199, 231972, 'C??NG TY C??? PH???N TH????NG M???I D???CH V??? X??Y L???P VI???T PH??', '0311733320', '2021-05-22 11:18:01', '2021-05-22 11:18:01', NULL, 0, 0, 1),
(1200, 231973, 'C??NG TY TNHH X??Y D???NG ?????I KI???N MINH', '0315702098', '2021-05-22 11:18:01', '2021-05-22 11:18:01', NULL, 0, 0, 1),
(1201, 231974, 'C??NG TY TNHH C??NG NGH??? M???I GOLDEN EYES', '0107450668', '2021-05-22 11:18:02', '2021-05-22 11:18:02', NULL, 0, 0, 1),
(1202, 231975, 'C??NG TY TNHH X??Y D???NG QU???C M???NH', '1602141754', '2021-05-22 11:18:02', '2021-05-22 11:18:02', NULL, 0, 0, 1),
(1203, 231976, 'C??NG TY C??? PH???N JIVC', '0102399369', '2021-05-22 11:18:03', '2021-05-22 11:18:03', NULL, 0, 0, 1),
(1204, 231977, 'C??NG TY TNHH T?? V???N & ??TXD B???C TRUNG B???', '2901885400', '2021-05-22 11:18:05', '2021-05-22 11:18:05', NULL, 0, 0, 1),
(1205, 231978, 'C??NG TY TNHH TO??N LINH PH??T', '0313088732', '2021-05-22 11:18:05', '2021-05-22 11:18:05', NULL, 0, 0, 1),
(1206, 231979, 'C??NG TY TNHH TH????NG M???I V?? D???CH V??? ?????T HO??N ANH', '0106098429', '2021-05-22 11:18:06', '2021-05-22 11:18:06', NULL, 0, 0, 1),
(1207, 231980, 'C??NG TY TR??CH NHI???M H???U H???N MBH VI???T NAM', '0315204141', '2021-05-22 11:18:06', '2021-05-22 11:18:06', NULL, 0, 0, 1),
(1208, 231981, 'C??NG TY TNHH TH????NG M???I QU???C T??? V?? D???CH V??? T???NG H???P VI???T NH???T', '0108069399', '2021-05-22 11:18:07', '2021-05-22 11:18:07', NULL, 0, 0, 1),
(1209, 231982, 'C??NG TY TNHH CAS MEDIA', '0109263991', '2021-05-22 11:18:07', '2021-05-22 11:18:07', NULL, 0, 0, 1),
(1210, 231983, 'C??NG TY TNHH C?? ??I???N L???NH E&C', '3702510889', '2021-05-22 11:18:08', '2021-05-22 11:18:08', NULL, 0, 0, 1),
(1211, 231984, 'C??NG TY C??? PH???N UV', '0305110871', '2021-05-22 11:18:08', '2021-05-22 11:18:08', NULL, 0, 0, 1),
(1212, 231985, 'C??NG TY C??? PH???N PH??T TRI???N TH????NG M???I T??N PH??T', '0108390210', '2021-05-22 11:18:08', '2021-05-22 11:18:08', NULL, 0, 0, 1),
(1213, 231986, 'C??NG TY TNHH S??N TR?????NG XU??N', '4001092177', '2021-05-22 11:18:09', '2021-05-22 11:18:09', NULL, 0, 0, 1),
(1214, 231987, 'C??NG TY TNHH GREEN PRODUCTS VI???T NAM', '0316804046', '2021-05-22 11:18:11', '2021-05-22 11:18:11', NULL, 0, 0, 1),
(1215, 231988, 'C??NG TY CP T?? V???N X??Y D???NG T???NG H???P H??A PH??T', '3002031993', '2021-05-22 11:18:11', '2021-05-22 11:18:11', NULL, 0, 0, 1),
(1216, 231989, 'C??NG TY C??? PH???N T???P ??O??N ?????U T?? X??Y D???NG NAM S??NG H???NG', '0104215708', '2021-05-22 11:18:12', '2021-05-22 11:18:12', NULL, 0, 0, 1),
(1217, 231990, 'C??NG TY TNHH ?????U T?? V?? PH??T TRI???N MINH QU??N', '2400811197', '2021-05-22 11:18:12', '2021-05-22 11:18:12', NULL, 0, 0, 1),
(1218, 231991, 'C??NG TY TNHH T?? V???N ?????U T?? V?? TH????NG M???I QU???C T??? AN H??NG', '0108127925', '2021-05-22 11:18:13', '2021-05-22 11:18:13', NULL, 0, 0, 1),
(1219, 231992, 'C??NG TY TNHH QUANG NGUYEN ART', '5400481794', '2021-05-22 11:18:13', '2021-05-22 11:18:13', NULL, 0, 0, 1),
(1220, 231993, 'C??NG TY TNHH ?????U T?? X??Y D???NG V?? PH??T TRI???N TH????NG M???I V??NH PH??C', '2500654597', '2021-05-22 11:18:14', '2021-05-22 11:18:14', NULL, 0, 0, 1),
(1221, 231994, 'C??NG TY TNHH D???CH V??? C??NG NGH??? TH??NH ?????T PH??T', '0107747789', '2021-05-22 11:18:14', '2021-05-22 11:18:14', NULL, 0, 0, 1),
(1222, 231995, 'C??NG TY TNHH T?? V???N X??Y D???NG C??NG TR??NH ?????I QUANG', '3702631989', '2021-05-22 11:18:15', '2021-05-22 11:18:15', NULL, 0, 0, 1),
(1223, 231996, 'C??NG TY TNHH MTV PCCC ANH T??M', '2001295078', '2021-05-22 11:18:15', '2021-05-22 11:18:15', NULL, 0, 0, 1),
(1224, 231997, 'C??NG TY TNHH C??Y XANH, D???A BA NG???N TH??NH TH??NH T??I', '1301070919', '2021-05-22 11:18:17', '2021-05-22 11:18:17', NULL, 0, 0, 1),
(1225, 231998, 'C??NG TY TNHH S??N H??? LONG', '0313168988', '2021-05-22 11:18:17', '2021-05-22 11:18:17', NULL, 0, 0, 1),
(1226, 231999, 'C??NG TY C??? PH???N TH????NG M???I V?? D???CH V??? K??? THU???T DBM', '0104280048', '2021-05-22 11:18:18', '2021-05-22 11:18:18', NULL, 0, 0, 1),
(1227, 232000, 'C??NG TY C??? PH???N SANG-A ARCHITECTS & PARTNER', '0106342765', '2021-05-22 11:18:18', '2021-05-22 11:18:18', NULL, 0, 0, 1),
(1228, 232001, 'C??NG TY TNHH T?? V???N V?? X??Y L???P NAM S??N', '0107777462', '2021-05-22 11:18:19', '2021-05-22 11:18:19', NULL, 0, 0, 1),
(1229, 232002, 'C??NG TY TNHH M???T TH??NH VI??N S???N XU???T KINH DOANH QU???NG C??O N??? C?????I VI???T', '0311870711', '2021-05-22 11:18:19', '2021-05-22 11:18:19', NULL, 0, 0, 1),
(1230, 232003, 'H??? KINH DOANH T???NG H???P NGUY???N C??NG TR???C', '5900708972', '2021-05-22 11:18:20', '2021-05-22 11:18:20', NULL, 0, 0, 1),
(1231, 232004, 'C??NG TY TNHH TH???Y S???N S??NG L??', '2600926131', '2021-05-22 11:18:20', '2021-05-22 11:18:20', NULL, 0, 0, 1),
(1232, 232005, 'C??NG TY TNHH TH????NG M???I - D???CH V??? HO??NG PH??C', '3501535354', '2021-05-22 11:18:21', '2021-05-22 11:18:21', NULL, 0, 0, 1),
(1233, 232006, 'C??NG TY TNHH CDM VI???T NAM', '0109545883', '2021-05-22 11:18:21', '2021-05-22 11:18:21', NULL, 0, 0, 1),
(1234, 232007, 'C??NG TY TNHH ?????U T?? V?? X??Y D???NG C??NG TR??NH H?? AN', '0316629556', '2021-05-22 11:18:23', '2021-05-22 11:18:23', NULL, 0, 0, 1),
(1235, 232008, 'C??NG TY TNHH ANDASHUN AMAZING LOGISTICS (VI???T NAM)', '0315699328', '2021-05-22 11:18:24', '2021-05-22 11:18:24', NULL, 0, 0, 1),
(1236, 232009, 'C??NG TY C??? PH???N C??NG NGH??? AZ ONE VI???T NAM', '0108189329', '2021-05-22 11:18:24', '2021-05-22 11:18:24', NULL, 0, 0, 1),
(1237, 232010, 'C??NG TY TNHH T??I NGUY??N M??I TR?????NG X??Y D???NG ??I???N C??NG NGH??? SIPOLY', '4001203271', '2021-05-22 11:18:24', '2021-05-22 11:18:24', NULL, 0, 0, 1),
(1238, 232011, 'C??NG TY TNHH ?????U T?? PH??T TRI???N X??Y D???NG GIA H??NG', '4101576904', '2021-05-22 11:18:25', '2021-05-22 11:18:25', NULL, 0, 0, 1),
(1239, 232012, 'C??NG TY TR??CH NHI???M H???U H???N QU???NG C??O HO??NG KHI??M', '3502348597', '2021-05-22 11:18:25', '2021-05-22 11:18:25', NULL, 0, 0, 1),
(1240, 231907, 'C??NG TY TNHH X??Y D???NG V?? TH????NG M???I V???N T???I PH????NG LINH', '2500297962', '2021-05-22 11:18:30', '2021-05-22 11:18:30', NULL, 0, 0, 1),
(1241, 231896, 'C??ng ty TNHH MTV Ch??n nu??i Qu???c Trung', '3301610477', '2021-05-22 11:18:35', '2021-05-22 11:18:35', NULL, 0, 0, 1),
(1242, 231899, 'C??NG TY C??? PH???N ?????U T?? V?? X??Y D???NG MAX WAVE', '2400884981', '2021-05-22 11:18:36', '2021-05-22 11:18:36', NULL, 0, 0, 1),
(1243, 231905, 'C??NG TY C??? PH???N DOANH N??NG', '0109431269', '2021-05-22 11:19:18', '2021-05-22 11:19:18', NULL, 0, 0, 1),
(1244, 231906, 'C??NG TY TNHH M??I TR?????NG T??N H??NG PH??T', '0901056262', '2021-05-22 11:19:39', '2021-05-22 11:19:39', NULL, 0, 0, 1),
(1245, 231898, 'C??NG TY C??? PH???N D???CH V??? V?? GI???I PH??P C??NG NGHI???P VI???T NAM', '0104092654', '2021-05-22 11:19:55', '2021-05-22 11:19:55', NULL, 0, 0, 1),
(1246, 195573, 'C??NG TY TNHH MTV V?? DV THANH B???O H??', '3901218818', '2021-05-22 11:20:41', '2021-05-22 11:20:41', NULL, 0, 0, 1),
(1247, 195574, 'C??NG TY TNHH ?????U T?? V?? X??Y D???NG ?????C TH???NG H?? TRUNG', '2802911804', '2021-05-22 11:20:43', '2021-05-22 11:20:43', NULL, 0, 0, 1),
(1248, 195575, 'C??NG TY C??? PH???N FILCO VI???T NAM', '0109199873', '2021-05-22 11:20:43', '2021-05-22 11:20:43', NULL, 0, 0, 1),
(1249, 195576, 'C??NG TY C??? PH???N PACS VI???T NAM', '0106598460', '2021-05-22 11:20:44', '2021-05-22 11:20:44', NULL, 0, 0, 1),
(1250, 195577, 'C??NG TY TNHH TH????NG M???I D???CH V??? V???N T???I T??NG ANH', '0104598514', '2021-05-22 11:20:44', '2021-05-22 11:20:44', NULL, 0, 0, 1),
(1251, 195578, 'C??NG TY TNHH SX TM HI???P H??NG', '1201645345', '2021-05-22 11:20:45', '2021-05-22 11:20:45', NULL, 0, 0, 1),
(1252, 195579, 'C??NG TY TNHH T?? V???N X??Y D???NG TCON', '6001667559', '2021-05-22 11:20:45', '2021-05-22 11:20:45', NULL, 0, 0, 1),
(1253, 195580, 'C??NG TY TNHH X??Y D???NG T&T H?? NAM', '0700843894', '2021-05-22 11:20:45', '2021-05-22 11:20:45', NULL, 0, 0, 1),
(1254, 195581, 'C??NG TY C??? PH???N THI???T B??? PH??NG CH??Y CH???A CH??Y V.H.T', '0310674457', '2021-05-22 11:20:46', '2021-05-22 11:20:46', NULL, 0, 0, 1),
(1255, 195582, 'C??NG TY TNHH QU???N L?? KH??CH S???N T&T', '0108131696', '2021-05-22 11:20:46', '2021-05-22 11:20:46', NULL, 0, 0, 1),
(1256, 195583, 'C??NG TY TNHH ?????U T?? PH??T TRI???N XU???T NH???P KH???U V???N TH??NH', '0316657560', '2021-05-22 11:20:47', '2021-05-22 11:20:47', NULL, 0, 0, 1),
(1257, 195584, 'C??NG TY TNHH NAM VI???T ?????K N??NG', '6400328420', '2021-05-22 11:20:49', '2021-05-22 11:20:49', NULL, 0, 0, 1),
(1258, 195585, 'C??NG TY TNHH X??Y D???NG V?? V???N T???I NGUY???N VINH', '1201471434', '2021-05-22 11:20:49', '2021-05-22 11:20:49', NULL, 0, 0, 1),
(1259, 195586, 'C??NG TY TNHH CH??U ANH C??T', '6001718891', '2021-05-22 11:20:50', '2021-05-22 11:20:50', NULL, 0, 0, 1),
(1260, 195587, 'C??NG TY C??? PH???N PH??T TRI???N TH????NG M???I V?? D???CH V??? TR?????NG SINH', '2700842703', '2021-05-22 11:20:50', '2021-05-22 11:20:50', NULL, 0, 0, 1),
(1261, 195588, 'C??NG TY TNHH N??NG L??M NGHI???P THANH B??NH', '0200720830', '2021-05-22 11:20:50', '2021-05-22 11:20:50', NULL, 0, 0, 1),
(1262, 195589, 'C??NG TY TNHH TH????NG M???I V?? X??Y L???P NAM Y??N', '0304364545', '2021-05-22 11:20:51', '2021-05-22 11:20:51', NULL, 0, 0, 1),
(1263, 195590, 'C??ng ty TNHH x??y d???ng v?? th????ng m???i Ng??n H???ng Ph??t', '2802538565', '2021-05-22 11:20:51', '2021-05-22 11:20:51', NULL, 0, 0, 1),
(1264, 195591, 'C??NG TY TNHH ?????U T?? V?? X??Y D???NG T???NG H???P AN TH??NH', '4101492027', '2021-05-22 11:20:52', '2021-05-22 11:20:52', NULL, 0, 0, 1),
(1265, 195592, 'C??NG TY TNHH ?????U T?? PH??T TRI???N X??Y D???NG THANH H??A', '0700848067', '2021-05-22 11:20:52', '2021-05-22 11:20:52', NULL, 0, 0, 1),
(1266, 195593, 'C??NG TY TNHH IN ???N BAO B?? H??NG PH??T', '3702792383', '2021-05-22 11:20:52', '2021-05-22 11:20:52', NULL, 0, 0, 1),
(1267, 195594, 'C??NG TY C??? PH???N ?????U T?? MEC VI???T NAM', '0107604050', '2021-05-22 11:20:54', '2021-05-22 11:20:54', NULL, 0, 0, 1),
(1268, 195595, 'C??NG TY TNHH K??? THU???T ??I???N T??? ?????NG SECO', '0313640463', '2021-05-22 11:20:55', '2021-05-22 11:20:55', NULL, 0, 0, 1),
(1269, 195596, 'C??NG TY TNHH T???NG H???P HUY H???NH', '3801250374', '2021-05-22 11:20:55', '2021-05-22 11:20:55', NULL, 0, 0, 1),
(1270, 195597, 'VI???N C??NG NGH??? V?? S???C KH???E', '0108767883', '2021-05-22 11:20:55', '2021-05-22 11:20:55', NULL, 0, 0, 1),
(1271, 195598, 'C??NG TY TNHH MTV ?????C HO??N', '6200105385', '2021-05-22 11:20:56', '2021-05-22 11:20:56', NULL, 0, 0, 1),
(1272, 195599, 'C??NG TY TNHH HD 181 QU???C KH??NH', '4601562931', '2021-05-22 11:20:56', '2021-05-22 11:20:56', NULL, 0, 0, 1),
(1273, 195600, 'C??NG TY C??? PH???N T?? V???N V?? X??Y L???P C?????NG TH??NH', '0106666103', '2021-05-22 11:20:57', '2021-05-22 11:20:57', NULL, 0, 0, 1),
(1274, 195601, 'C??NG TY TNHH TRUY???N TH??NG V?? TH????NG M???I GITI VI???T NAM', '0108965966', '2021-05-22 11:20:57', '2021-05-22 11:20:57', NULL, 0, 0, 1),
(1275, 195602, 'Trung t??m C?? gi???ng H???i ?????c', '8318337401', '2021-05-22 11:20:57', '2021-05-22 11:20:57', NULL, 0, 0, 1),
(1276, 195603, 'C??NG TY C??? PH???N C??NG NGH??? V?? GI???I PH??P GI??O D???C EDUSO', '0108768439', '2021-05-22 11:20:58', '2021-05-22 11:20:58', NULL, 0, 0, 1),
(1277, 195604, 'C??NG TY C??? PH???N D???CH V??? & K??? THU???T ETP VI???T NAM', '0108205161', '2021-05-22 11:21:00', '2021-05-22 11:21:00', NULL, 0, 0, 1),
(1278, 195605, 'C??NG TY TNHH TH???I TRANG LEVADO VI???T NAM', '0109257596', '2021-05-22 11:21:00', '2021-05-22 11:21:00', NULL, 0, 0, 1),
(1279, 195606, 'C??NG TY TNHH TMDV ANH NGUY??N PH??T', '3702606076', '2021-05-22 11:21:01', '2021-05-22 11:21:01', NULL, 0, 0, 1),
(1280, 195607, 'C??NG TY C??? PH???N D?????C - S??M QU???NG NAM', '4001216792', '2021-05-22 11:21:01', '2021-05-22 11:21:01', NULL, 0, 0, 1),
(1281, 195608, 'C??NG TY TNHH T?? V???N THI???T K??? V?? X??Y D???NG HME VI???T NAM', '0106877231', '2021-05-22 11:21:02', '2021-05-22 11:21:02', NULL, 0, 0, 1),
(1282, 195609, 'C??NG TY C??? PH???N T???P ??O??N DUBAI', '0107616183', '2021-05-22 11:21:02', '2021-05-22 11:21:02', NULL, 0, 0, 1),
(1283, 195610, 'C??NG TY TNHH S???N XU???T V?? TH????NG M???I X??Y D???NG TH??NH PH??T.', '0108525524', '2021-05-22 11:21:03', '2021-05-22 11:21:03', NULL, 0, 0, 1),
(1284, 195611, 'D????NG TH??? H???NH', '2700891764', '2021-05-22 11:21:03', '2021-05-22 11:21:03', NULL, 0, 0, 1),
(1285, 195612, 'C??NG TY C??? PH???N T?? V???N V?? ?????U T?? X??Y D???NG ??I???N 6', '0106702182', '2021-05-22 11:21:03', '2021-05-22 11:21:03', NULL, 0, 0, 1),
(1286, 195613, 'C??NG TY TNHH TH????NG M???I , D???CH V??? V?? X??Y D???NG GIA NH???T', '4201661529', '2021-05-22 11:21:05', '2021-05-22 11:21:05', NULL, 0, 0, 1),
(1287, 195614, 'C??NG TY TNHH ?????U T?? TH????NG M???I T??N TH??NH CH??U', '3502373057', '2021-05-22 11:21:06', '2021-05-22 11:21:06', NULL, 0, 0, 1),
(1288, 195615, 'C??NG TY TNHH TH????NG M???I - D???CH V??? K??? THU???T ?????I T??N', '0309367123', '2021-05-22 11:21:06', '2021-05-22 11:21:06', NULL, 0, 0, 1),
(1289, 195616, 'C??NG TY TNHH MTV V???N T???I 179', '3002027411', '2021-05-22 11:21:07', '2021-05-22 11:21:07', NULL, 0, 0, 1),
(1290, 195617, 'C??NG TY TNHH X??Y D???NG TH????NG M???I L?? PH??T', '0106677602', '2021-05-22 11:21:07', '2021-05-22 11:21:07', NULL, 0, 0, 1),
(1291, 195618, 'H??? kinh doanh T??? Th??? ??i???p', '81910211644', '2021-05-22 11:21:07', '2021-05-22 11:21:07', NULL, 0, 0, 1),
(1292, 195619, 'C??NG TY CP PH???N M???M DI???T VIRUS BKAV', '0108182242', '2021-05-22 11:21:08', '2021-05-22 11:21:08', NULL, 0, 0, 1),
(1293, 195620, 'C??NG TY TNHH TV XD TR?????NG PH??T', '2200792860', '2021-05-22 11:21:08', '2021-05-22 11:21:08', NULL, 0, 0, 1),
(1294, 195621, 'C??NG TY TNHH XU???T NH???P KH???U THI??N H?? TH??NH', '4900789218', '2021-05-22 11:21:08', '2021-05-22 11:21:08', NULL, 0, 0, 1),
(1295, 195622, 'DOANH NGHI???P T?? NH??N NAM T??.', '3200467157', '2021-05-22 11:21:09', '2021-05-22 11:21:09', NULL, 0, 0, 1),
(1296, 195623, 'C??NG TY TNHH ?????U T?? X??Y D???NG V?? TH????NG M???I D???CH V??? S??N TI???N', '0107954778', '2021-05-22 11:21:11', '2021-05-22 11:21:11', NULL, 0, 0, 1),
(1297, 195624, 'C??NG TY TNHH D???CH V??? V???N T???I X??NG D???U TI???N GIANG', '1201453957', '2021-05-22 11:21:11', '2021-05-22 11:21:11', NULL, 0, 0, 1),
(1298, 195625, 'C??NG TY C??? PH???N XU???T NH???P KH???U RAU QU???', '0300691220', '2021-05-22 11:21:12', '2021-05-22 11:21:12', NULL, 0, 0, 1),
(1299, 195626, 'C??NG TY TNHH ?????C MINH YB', '5200910929', '2021-05-22 11:21:12', '2021-05-22 11:21:12', NULL, 0, 0, 1),
(1300, 195627, 'C??NG TY TNHH TH????NG M???I D???CH V??? M??Y T??NH TR???N NGUY???N', '0309183398', '2021-05-22 11:21:12', '2021-05-22 11:21:12', NULL, 0, 0, 1),
(1301, 195628, 'C??NG TY TNHH X??Y D???NG V?? PH??T TRI???N H??? T???NG ??NH D????NG', '0101287694', '2021-05-22 11:21:13', '2021-05-22 11:21:13', NULL, 0, 0, 1),
(1302, 195629, 'C??NG TY TNHH ?????U T?? TH????NG M???I V?? D???CH V??? GIA MINH', '2700873250', '2021-05-22 11:21:13', '2021-05-22 11:21:13', NULL, 0, 0, 1),
(1303, 231901, 'C??NG TY TNHH MTV MICRO PRECISION CALIBRATION VI???T NAM', '0311586524', '2021-05-22 11:21:19', '2021-05-22 11:21:19', NULL, 0, 0, 1),
(1304, 231902, 'C??NG TY C??? PH???N ?????U T?? TH????NG M???I & V???N T???I TR???N ANH', '0201770538', '2021-05-22 11:21:49', '2021-05-22 11:21:49', NULL, 0, 0, 1),
(1305, 231903, 'DOANH NGHI???P T?? NH??N XU??N TH???NG', '5200432239', '2021-05-22 11:21:56', '2021-05-22 11:21:56', NULL, 0, 0, 1),
(1306, 231900, 'C??NG TY C??? PH???N GI???I PH??P V??N PH??NG S-OFFICE', '0108914961', '2021-05-22 11:22:02', '2021-05-22 11:22:02', NULL, 0, 0, 1),
(1307, 57286, 'C??NG TY TNHH T??N AN B???O', '1800669426', '2021-05-22 11:22:37', '2021-05-22 11:22:37', NULL, 0, 0, 1),
(1308, 57287, 'C?? S??? VI T??NH K??? PHONG', '3800366129', '2021-05-22 11:22:37', '2021-05-22 11:22:37', NULL, 0, 0, 1),
(1309, 200970, 'VIETTEL KH??NH H??A', '0100109106066', '2021-05-22 11:22:38', '2021-05-22 11:22:38', 'Z105468', 1, 0, 0),
(1310, 199691, 'C??ng ty CP ?????u t?? Ph??t tri???n C??ng ngh??? Bia ??? R?????u ??? NGK H?? N???i', '0102104745', '2021-05-22 11:22:39', '2021-05-22 11:22:39', 'Z105474', 1, 0, 0),
(1311, 195678, 'V??n ph??ng ??i???u ph???i Ch????ng tr??nh x??y d???ng N??ng th??n m???i Thanh H??a', '2801879273', '2021-05-22 11:22:39', '2021-05-22 11:22:39', 'Z105478', 1, 0, 0),
(1312, 220815, 'Ph??ng Gi??o d???c v?? ????o t???o L????ng S??n', '5400320606', '2021-05-22 11:22:40', '2021-05-22 11:22:40', 'Z105499', 1, 0, 0),
(1313, 225820, 'Trung t??m V??n h??a t???nh Ngh??? An', '2900641352', '2021-05-22 11:22:41', '2021-05-22 11:22:41', 'Z105494', 1, 0, 0),
(1314, 202386, 'Trung t??m Y t??? th??nh ph??? Lai Ch??u', '6200017234006', '2021-05-22 11:22:41', '2021-05-22 11:22:41', 'Z105497', 1, 0, 0),
(1315, 213036, 'NG??N H??NG TMCP ?????U T?? V?? PH??T TRI???N VI???T NAM CHI NH??NH TR?? VINH', '0100150619062', '2021-05-22 11:22:42', '2021-05-22 11:22:42', 'Z105504', 1, 0, 0),
(1316, 232339, 'Ph??ng Gi??o d???c v?? ????o t???o qu???n C???m L???', '0401285948', '2021-05-22 11:22:42', '2021-05-22 11:22:42', 'Z105505', 1, 0, 0),
(1317, 221690, 'Nh?? xu???t b???n Ph??? n??? Vi???t Nam', '0100111200', '2021-05-22 11:22:43', '2021-05-22 11:22:43', 'Z105454', 1, 0, 0),
(1318, 207552, '???Y BAN NH??N D??N X?? NGH??A S??N', '0600148590', '2021-05-22 11:22:45', '2021-05-22 11:22:45', 'Z105300', 1, 0, 0),
(1319, 196853, '??O??N NGH??? THU???T KHMER ??NH B??NH MINH', '2100190911', '2021-05-22 11:22:46', '2021-05-22 11:22:46', 'Z105311', 1, 0, 0),
(1320, 204202, 'B???n xe kh??ch t???nh Lai Ch??u', '6200002742', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105317', 1, 0, 0),
(1321, 196486, 'Ban qu???n l?? ch??? v?? ???? th??? huy???n C??i N?????c', '2000786732', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105321', 1, 0, 0),
(1322, 197380, 'C??ng ty C??? ph???n RYNAN Technologies Vietnam', '2100592145', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105323', 1, 0, 0),
(1323, 203892, 'V??n ph??ng ???y ban nh??n d??n t???nh Tr?? Vinh', '2100390660', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105324', 1, 0, 0),
(1324, 232364, 'C??NG TY C??? PH???N T?? V???N ?????U T?? TH????NG M???I X??Y D???NG T??N MINH ?????C', '3603804327', '2021-05-22 11:22:48', '2021-05-22 11:22:48', 'Z105330', 1, 0, 0),
(1325, 228726, 'C??NG TY TNHH T?? V???N THI???T K??? V?? QUY HO???CH X??Y D???NG B.M.T', '6000434093', '2021-05-22 11:22:49', '2021-05-22 11:22:49', 'Z105344', 1, 0, 0),
(1326, 207479, 'Trung T??m Hu???n luy???n v?? Thi ?????u Th??? d???c Th??? Thao Tr?? Vinh', '2100190911010', '2021-05-22 11:22:50', '2021-05-22 11:22:50', 'Z105346', 1, 0, 0),
(1327, 210348, '???y ban nh??n d??n Ph?????ng 11 Qu???n 8', '0301463629', '2021-05-22 11:22:51', '2021-05-22 11:22:51', 'Z105361', 1, 0, 0),
(1328, 218997, 'TRUNG T??M ????O T???O K??? THU???T NGHI???P V??? GTVT QU???NG NG??I', '4300754693001', '2021-05-22 11:22:53', '2021-05-22 11:22:53', 'Z105378', 1, 0, 0),
(1329, 196117, 'Tr?????ng THCS B??n Gi???n', '2500400377', '2021-05-22 11:22:53', '2021-05-22 11:22:53', 'Z105379', 1, 0, 0),
(1330, 114914, 'C??ng ty c??? ph???n t?? v???n v?? chuy???n giao c??ng ngh??? x??y d???ng H?? Nam', '0700243992', '2021-05-22 11:22:54', '2021-05-22 11:22:54', 'Z105394', 1, 0, 0),
(1331, 225625, 'S??? Gi??o d???c v?? ????o t???o t???nh B???c K???n', '4700219683', '2021-05-22 11:22:54', '2021-05-22 11:22:54', 'Z105396', 1, 0, 0),
(1332, 212652, 'C???ng v??? H??ng h???i Th???a Thi??n Hu???', '3300269335', '2021-05-22 11:22:55', '2021-05-22 11:22:55', 'Z105420', 1, 0, 0),
(1333, 209659, 'TRUNG T??M Y T??? HUY???N V??NH L???I', '1900413266', '2021-05-22 11:22:55', '2021-05-22 11:22:55', 'Z105416', 1, 0, 0),
(1334, 220248, 'Chi c???c Ki???m l??m t???nh Qu???ng Tr???', '3200283093', '2021-05-22 11:22:55', '2021-05-22 11:22:55', 'Z105417', 1, 0, 0),
(1335, 198600, 'Tr?????ng THCS Th???nh M??? T??y', '1600688830', '2021-05-22 11:22:56', '2021-05-22 11:22:56', 'Z105430', 1, 0, 0),
(1336, 219653, 'Tr?????ng ?????i h???c T??i ch??nh K??? to??n', '4300401923', '2021-05-22 11:22:58', '2021-05-22 11:22:58', 'Z105437', 1, 0, 0),
(1337, 210550, 'Ng??n h??ng TMCP c??ng th????ng Vi???t Nam chi nh??nh B???c H?? N???i', '0100111948077', '2021-05-22 11:22:59', '2021-05-22 11:22:59', 'Z105446', 1, 0, 0),
(1338, 222100, 'C??ng ty TNHH M???t th??nh vi??n Khai th??c Th???y l???i An Giang', '1601228667', '2021-05-22 11:22:59', '2021-05-22 11:22:59', 'Z105451', 1, 0, 0),
(1339, 227752, 'C??ng ty C??? ph???n Ph?? An Giang', '1600110119', '2021-05-22 11:23:00', '2021-05-22 11:23:00', 'Z105455', 1, 0, 0),
(1340, 195686, '???y ban nh??n d??n x?? D????ng Quang', '0103459885', '2021-05-22 11:23:00', '2021-05-22 11:23:00', 'Z105456', 1, 0, 0),
(1341, 209130, 'S?? ??o??n 367', '0716590000000', '2021-05-22 11:23:00', '2021-05-22 11:23:00', 'Z105460', 1, 0, 0),
(1342, 216358, 'Ph??ng giao d???ch Ng??n h??ng Ch??nh s??ch x?? h???i huy??n H?? Qu???ng, T???nh Cao B???ng', '0100695387028', '2021-05-22 11:23:01', '2021-05-22 11:23:01', 'Z105352', 1, 0, 0),
(1343, 195632, 'Ban qu???n l?? r???ng ?????c d???ng-ph??ng h??? ven bi???n', '1900450638', '2021-05-22 11:23:03', '2021-05-22 11:23:03', 'Z105299', 1, 0, 0),
(1344, 195633, 'Trung t??m d???ch v??? n??ng nghi???p th??? x?? Nghi S??n', '2802815434', '2021-05-22 11:23:03', '2021-05-22 11:23:03', 'Z104906', 1, 0, 0),
(1345, 195634, 'U??? BAN NH??N D??N X?? M?????NG THAN', '5300144562', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z104712', 1, 0, 0),
(1346, 195635, 'V??n ph??ng H??ND v?? UBND th??? x?? Sa Pa', '5300319766', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105285', 1, 0, 0),
(1347, 195636, 'Ban T??n gi??o Ch??nh Ph???', '1052380000000', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105238', 1, 0, 0),
(1348, 195637, 'Trung t??m ph??t tri???n l??m n??ng nghi???p V??nh Ph??c', '1052330000000', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105233', 1, 0, 0),
(1349, 195638, '???y ban nh??n d??n x?? H??a S??n', '1052440000000', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105244', 1, 0, 0),
(1350, 195639, 'C??NG TY TNHH NAM TH??NG B???O', '0304198457', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z100424', 1, 0, 0),
(1351, 195640, 'Th?? vi???n Qu???ng Nam', '4000932708', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105187', 1, 0, 0),
(1352, 195641, 'Ph??ng Kinh t??? qu???n H???i Ch??u', '0400259286', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105158', 1, 0, 0),
(1353, 195642, 'C??NG TY TNHH T??N NGH??A VI???T', '0700843816', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105164', 1, 0, 0),
(1354, 57295, 'C??ng ty TNHH An Ph??c 116', '5200900769', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105168', 1, 0, 0),
(1355, 195643, 'UBND x?? Y??n D????ng', '1051700000000', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105170', 1, 0, 0),
(1356, 195644, 'C??ng ty TNHH ph??t tri???n khoa h???c c??ng ngh??? Linh L???c', '3001738807', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105171', 1, 0, 0),
(1357, 195645, '???y ban nh??n d??n x?? C??t Trinh', '4100269234', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105173', 1, 0, 0),
(1358, 195646, 'Trung t??m M??i tr?????ng v?? ???? th??? huy???n Tri???u Phong', '3200599509', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105176', 1, 0, 0),
(1359, 195647, 'Huy???n ???y C???m Xuy??n', '1051770000000', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105177', 1, 0, 0),
(1360, 195648, 'Trung t??m D???y ngh??? v?? ????o t???o l??i xe thu???c Tr?????ng ?????i h???c C???nh s??t nh??n d??n', '0310942240', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105179', 1, 0, 0),
(1361, 57331, 'C??NG TY TNHH QU???N L?? X??Y D???NG H??NG TH???NH', '0314643354', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105180', 1, 0, 0),
(1362, 195649, '????I TRUY???N THANH TRUY???N H??NH T???NH PH?? TH???', '2600539213', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105184', 1, 0, 0),
(1363, 57353, 'C??NG TY TNHH MTV T?? V???N - ?????U T?? - X??Y D???NG NHD', '2100596460', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105186', 1, 0, 0),
(1364, 195650, '???y ban nh??n d??n x?? Kon ????o', '6100138965', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105190', 1, 0, 0),
(1365, 195651, 'C??ng ty TNHH C??ng ngh??? sinh h???c xanh Nh???t Lan', '0108038305', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105191', 1, 0, 0),
(1366, 195652, 'Tr?????ng m???m non Xu??n Th??i', '2801235769', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105193', 1, 0, 0),
(1367, 195653, 'Tr?????ng m???m non C??n Kh??', '2801237364', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105194', 1, 0, 0),
(1368, 195654, 'Trung t??m D???ch v???- K??? thu???t N??ng nghi???p huy???n T??n Y??n', '2400855719', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105195', 1, 0, 0),
(1369, 195655, 'Tr?????ng ti???u h???c Thanh T??n 2', '2801235582', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105196', 1, 0, 0),
(1370, 195656, '???y ban nh??n d??n th??? tr???n Prao', '4000291596', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105197', 1, 0, 0),
(1371, 195657, 'TRUNG T??M PH??P Y T???NH B???C K???N', '4700119671011', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105205', 1, 0, 0),
(1372, 195658, 'Trung t??m ????o t???o v?? S??t h???ch l??i xe c?? gi???i ???????ng b???', '5300132694001', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105206', 1, 0, 0),
(1373, 195659, 'UBND ph?????ng Ho?? M???c, th??? x?? Duy Ti??n, t???nh H?? Nam', '1052080000000', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105208', 1, 0, 0),
(1374, 195660, 'Tr?????ng m???u gi??o An Th???nh Trung', '1600824402', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105219', 1, 0, 0),
(1375, 195661, 'UBND ph?????ng ????ng S??n, th??nh ph??? Thanh H??a', '2800773108', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105215', 1, 0, 0),
(1376, 195662, 'C??ng ty CP V???n T???i X??ng d???u VITACO', '0300545501', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105216', 1, 0, 0),
(1377, 195663, 'Ph??ng N???i v??? huy???n Nguy??n B??nh, t???nh Cao B???ng', '4800176063', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105218', 1, 0, 0),
(1378, 195664, 'C???c Qu???n l?? khai th??c bi???n v?? h???i ?????o', '1052200000000', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105220', 1, 0, 0),
(1379, 195665, 'Li??n hi???p c??c H???i Khoa h???c v?? K??? thu???t t???nh Ninh B??nh', '1052210000000', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105221', 1, 0, 0),
(1380, 195666, 'Ph??ng Lao ?????ng Th????ng binh v?? X?? h???i huy???n C??? Chi', '0307268286', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105222', 1, 0, 0),
(1381, 189565, 'C??ng ty C??? ph???n t?? v???n x??y d???ng v?? qu???n l?? d??? ??n L??m Giang', '0106028936', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105226', 1, 0, 0),
(1382, 195667, 'C??ng ty c??? ph???n th????ng m???i v?? x??y d???ng ?????i Vi???t', '0700842812', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105229', 1, 0, 0),
(1383, 57437, 'C??ng ty TNHH ki???n tr??c x??y d???ng Ph?? H?', '2601057861', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105230', 1, 0, 0),
(1384, 195668, 'VI???N KI???M S??T NH??N D??N HUY???N TAM B??NH', '1500628605', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105235', 1, 0, 0),
(1385, 195669, 'Ti???u h???c Ng???c Thanh A', '2500314583', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105236', 1, 0, 0),
(1386, 91328, 'C??ng ty C??? ph???n Gi???i ph??p KYC', '0108273669', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105241', 1, 0, 0),
(1387, 195670, 'Trung t??m y t??? huy???n V??n L??m', '0900453387', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105242', 1, 0, 0),
(1388, 195671, 'TRUNG T??M Y T??? HUY???N S??NG HINH', '4401031210', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105243', 1, 0, 0),
(1389, 195672, 'KH??CH S???N THI??N H???NG', '0300625210014', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105245', 1, 0, 0),
(1390, 195673, 'B???o t??ng t???nh Gia Lai', '1052460000000', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105246', 1, 0, 0),
(1391, 195674, 'Pho??ng Gia??o du??c va?? ??a??o ta??o huy????n Hoa??i ??????c', '0104009014', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105247', 1, 0, 0),
(1392, 79019, 'C??NG TY TR??CH NHI???M H???U H???N M???T TH??NH VI??N C??NG TR??NH ???? TH??? KON TUM', '6101266208', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105248', 1, 0, 0),
(1393, 195675, '???y ban nh??n d??n x?? Kim ????ng', '1052520000000', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105252', 1, 0, 0),
(1394, 195676, 'Tr?????ng Ch??nh Tr??? t???nh ?????k L???k', '6000391393', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105253', 1, 0, 0),
(1395, 195677, 'Chi c???c Thu??? khu v???c H???ng B??ng An D????ng', '0201990886', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105256', 1, 0, 0),
(1396, 195678, 'V??n ph??ng ??i???u ph???i Ch????ng tr??nh X??y d???ng N??ng th??n m???i t???nh Thanh H??a', '2801879273', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105257', 1, 0, 0),
(1397, 195580, 'C??ng ty TNHH X??y d???ng T&T H?? Nam', '0700843894', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105259', 1, 0, 0),
(1398, 195672, 'KH??CH S???N THI??N H???NG', '0300625210014', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105267', 1, 0, 0),
(1399, 114914, 'C??ng ty c??? ph???n t?? v???n v?? chuy???n giao c??ng ngh??? x??y d???ng H?? Nam', '0700243992', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105260', 1, 0, 0),
(1400, 195679, 'TRUNG T??M NU??I BI???N C??NG NGH??? CAO', '2300195025', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105261', 1, 0, 0),
(1401, 195680, 'PH??NG GI??O D???C V?? ????O T???O HUY???N CAM L???', '3200393057', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105265', 1, 0, 0),
(1402, 68238, 'C??NG TY T?? V???N THI???T K??? V?? GI??M S??T C??NG TR??NH PH?? CH??U', '3301673935', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105269', 1, 0, 0),
(1403, 195681, 'C??ng ty tr??ch nhi???m h???u h???n m???t th??nh vi??n khai th??c c??ng tr??nh th???y l???i Ngh??a H??ng', '0600021481', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105272', 1, 0, 0),
(1404, 195682, 'Trung t??m d???ch v??? n??ng nghi???p huy???n Th?????ng Xu??n', '2801335308', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105274', 1, 0, 0),
(1405, 195683, 'UBND x?? Kh??nh C??ng', '1052750000000', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105275', 1, 0, 0),
(1406, 195684, 'C??ng Ty TNHH Th????ng M???i V?? D???ch V??? ??nh Khang', '2400851601', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105276', 1, 0, 0),
(1407, 195685, 'T??a ??n nh??n d??n huy???n L????ng S??n', '1052790000000', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105279', 1, 0, 0),
(1408, 195686, 'U??? ban nh??n d??n x?? D????ng Quang', '0103459885', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105278', 1, 0, 0),
(1409, 195687, 'Vi???n Nghi??n c???u v?? ????o t???o Vi???t Anh', '0401615988', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105280', 1, 0, 0),
(1410, 71141, 'Ph??n Vi???n khoa h???c An to??n V??? sinh Lao ?????ng v?? B???o v??? m??i tr?????ng mi???n Nam', '0307903026', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105287', 1, 0, 0),
(1411, 195688, 'Trung t??m Tin h???c t???nh An Giang', '1600688887', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105290', 1, 0, 0),
(1412, 195689, 'C??ng ty c??? ph???n Ph??n ph???i ??? B??n l??? VNF1', '0102773175', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105289', 1, 0, 0),
(1413, 59556, 'C??ng ty TNHH Tr???n Ho??ng Y??n B??i', '5200918692', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105291', 1, 0, 0),
(1414, 126420, 'C??NG TY C??? PH???N X??Y D???NG KO TO', '0102008657', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105292', 1, 0, 0),
(1415, 195690, 'U??? ban nh??n d??n x?? M?????ng M??t', '6200064673', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105294', 1, 0, 0),
(1416, 195691, 'Ph??ng N???i v??? qu???n H???i Ch??u', '0401300307', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105297', 1, 0, 0),
(1417, 95604, 'C??ng ty TNHH S??? h???u tr?? tu??? Havip', '0101737819', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105185', 1, 0, 0),
(1418, 195692, 'Trung t??m L??u tr??? l???ch s???', '2400430360004', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105188', 1, 0, 0),
(1419, 195693, 'C??ng ty c??? ph???n t???p ??o??n Long Ph????ng', '2300224741', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105237', 1, 0, 0),
(1420, 195694, 'Trung t??m V??n h??a Th??ng tin v?? Th??? Thao S??n T??y', '0107808537', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105112', 1, 0, 0),
(1421, 195695, 'Nh?? h??t ????i Ti???ng n??i Vi???t Nam', '1050280000000', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105028', 1, 0, 0),
(1422, 195696, 'PH??NG GIAO D???CH NG??N H??NG CH??NH S??CH X?? H???I HUY???N THU???N B???C', '0100695387040', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z104719', 1, 0, 0),
(1423, 195697, 'C?? quan ?????i di???n V??n Ph??ng B??? T??i ch??nh t???i Th??nh ph??? H??? Ch?? Minh', '1051530000000', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105153', 1, 0, 0),
(1424, 195698, 'C???c Qu???n tr??? T.78', '1049260000000', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z104926', 1, 0, 0),
(1425, 195699, 'Nh?? h??t Ngh??? thu???t H??t B???i', '0302795930', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105181', 1, 0, 0),
(1426, 195700, 'Trung t??m gi???ng n??ng nghi???p B???c Li??u', '1900129696', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105250', 1, 0, 0),
(1427, 195701, 'Ph??ng v??n h??a v?? Th??ng tin', '5500274449', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105227', 1, 0, 0),
(1428, 195702, 'C??ng ty tr??ch nhi???m h???u h???n t?? v???n v?? ?????u t?? x??y d???ng ART DECO', '0109041029', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105189', 1, 0, 0),
(1429, 195649, '????I TRUY???N THANH TRUY???N H??NH HUY???N Y??N L???P', '2600539213', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105213', 1, 0, 0),
(1430, 195703, '???Y BAN NH??N D??N PH?????NG PH??C DI???N', '0106507978', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105167', 1, 0, 0),
(1431, 195704, 'C??ng ty TNHH T?? v????n Thi????t k???? X??y d????ng Vi??nh Thanh', '1801230448', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z104514', 1, 0, 0),
(1432, 195705, 'C??NG TY TNHH X??Y D???NG H.T ?????K L???K', '6001370050', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105174', 1, 0, 0),
(1433, 195706, 'Tr?????ng ti???u h???c Ph?? Nhu???n', '2801235568', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105198', 1, 0, 0),
(1434, 195707, 'Tr?????ng THPT Ch??u Th??nh', '1700954638', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105202', 1, 0, 0),
(1435, 195708, 'C??NG TY C??? PH???N H&T GROUP VI???T NAM', '0109243459', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105143', 1, 0, 0),
(1436, 195709, 'Tr?????ng THCS Li???n S??n', '2500652776', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104728', 1, 0, 0),
(1437, 195710, '???y ban nh??n d??n x?? H??ng S??n', '1049140000000', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104914', 1, 0, 0),
(1438, 195711, 'UBND huy???n Kim Th??nh', '1049950000000', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104995', 1, 0, 0),
(1439, 195712, 'BAN QU???N L?? D??? ??N KI???N TR??C CHI NH??NH T???NG C??NG TY H??? T???NG M???NG', '0106884817003', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z100138', 1, 0, 0),
(1440, 195713, 'C??ng ty TNHH ?????u t?? C???u M??? L???i', '1201465247', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104761', 1, 0, 0),
(1441, 195714, 'C???c C?? y???u ?????ng Ch??nh quy???n', '1051750000000', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105175', 1, 0, 0),
(1442, 195715, 'C??NG TY TNHH M???T TH??NH VI??N N??NG L??M NGHI???P H????NG C??T', '3301633805', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z104600', 1, 0, 0),
(1443, 195716, 'Ph??ng T?? ph??p th??? x?? Ph??? Y??n', '4600676051', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105109', 1, 0, 0),
(1444, 195717, 'Ban qu???n l?? d??? ??n n??ng c???p, c???i t???o ngh??a trang Li???t s??? trung t??m huy???n Ti???n H???i.', '1050910000000', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105091', 1, 0, 0),
(1445, 195718, 'Ban qu???n l?? d??? ??n ?????u t?? x??y d???ng m???i c??c c???ng qua ???????ng tr??n truy???n ???????ng ??H.36 (??o???n t??? x?? ????ng C?? ??i x?? ????ng Trung) huy???n Ti???n H???i', '1051480000000', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105148', 1, 0, 0),
(1446, 195719, 'Tr?????ng Trung h???c ph??? th??ng huy???n Qu???nh Nhai', '5500382412', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z104905', 1, 0, 0),
(1447, 195720, 'H???i N??ng d??n th??nh ph??? H???i Ph??ng', '1048420000000', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z104842', 1, 0, 0),
(1448, 195721, 'C???C QU???N L?? C??NG NGH???/T???NG C???C CNQP', '1051600000000', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z105160', 1, 0, 0),
(1449, 195722, 'Trung t??m v??n h??a, th??ng tin v?? th??? thao qu???n Ng?? H??nh S??n', '0401299997', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z105029', 1, 0, 0),
(1450, 195723, 'C??NG TY TNHH ?????U T?? C??NG NGH??? SANA VI???T NAM', '0316801422', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z104923', 1, 0, 0),
(1451, 195724, 'Ban qu???n l?? Khu B???o T???n Thi??n Nhi??n B??nh Ch??u Ph?????c B???u', '1048410000000', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z104841', 1, 0, 0),
(1452, 195725, '???Y BAN NH??N D??N TH??? TR???N CAM L???, HUY???N CAM L???, T???NH QU???NG TR???', '3900097876', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z104985', 1, 0, 0),
(1453, 195726, 'C??ng ty TNHH T?? v???n X??y d???ng th????ng m???i T??n Ngh??a', '3702570207', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105023', 1, 0, 0),
(1454, 195727, 'UBND x?? Qu???ng Th???ch', '2801291530', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105026', 1, 0, 0),
(1455, 195728, '???y ban nh??n d??n x?? Kh??nh Ph??', '2700226126', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105030', 1, 0, 0),
(1456, 195729, 'V?????n qu???c gia C??c Ph????ng', '2700201315', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105031', 1, 0, 0),
(1457, 195730, 'QU??? PH??T TRI???N ?????T TH??NH PH??? H??? CH?? MINH', '0313200381', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105032', 1, 0, 0),
(1458, 195731, 'C??ng ty TNHH t?? v???n v?? x??y d???ng Th??nh ????ng H???i D????ng', '0801352645', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105033', 1, 0, 0),
(1459, 195732, 'Tr?????ng Trung h???c ph??? th??ng M??? ?????c C', '0104096578', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105034', 1, 0, 0),
(1460, 195733, 'Cung v??n h??a thanh thi???u nhi t???nh Qu???ng Ninh', '5701245215', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105036', 1, 0, 0),
(1461, 195734, 'Tr?????ng Trung h???c ph??? th??ng Ch????ng M??? B', '0103993085', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105038', 1, 0, 0),
(1462, 195735, 'Tr?????ng Trung h???c ph??? th??ng Ng?? Th?? Nh???m', '0103244015', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105039', 1, 0, 0),
(1463, 195736, 'C??ng ty TNHH ki???m to??n v?? t?? v???n Online', '0107595254', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105048', 1, 0, 0),
(1464, 195737, 'Tr?????ng Trung h???c ph??? th??ng T??n D??n', '0103815558', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105041', 1, 0, 0),
(1465, 195738, 'Tr???m Khuy???n n??ng Th??nh ph??? Bu??n Ma Thu???t', '6000928663', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105043', 1, 0, 0),
(1466, 195739, '???y ban nh??n d??n x?? Lai Th??nh, huy???n Kim S??n, t???nh Ninh B??nh', '1050460000000', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105046', 1, 0, 0);
INSERT INTO `pccc_app_company_alias` (`id`, `job_company_profile_id`, `company_name`, `tax_code`, `created_at`, `updated_at`, `office_code`, `investor_is_approved`, `contractor_violation`, `contractor`) VALUES
(1467, 195740, 'Ph??ng Qu???n l?? ???? th??? Th??nh Ph??? Ph?? Qu???c', '1701258915', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105019', 1, 0, 0),
(1468, 195741, 'Tr?????ng THPT L?? Qu?? ????n', '1050450000000', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105045', 1, 0, 0),
(1469, 195742, 'C???c Qu???n l?? k??? thu???t nghi???p v??? m???t m??', '1050510000000', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105051', 1, 0, 0),
(1470, 195743, 'Trung t??m C??ng ngh??? th??ng tin v?? Truy???n th??ng', '0601184312', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105052', 1, 0, 0),
(1471, 195744, 'C??ng ty TNHH MTV H???ng Ph??c TV', '2100666693', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105060', 1, 0, 0),
(1472, 195745, 'Ph??ng t??i nguy??n v?? m??i tr?????ng huy???n Nam Giang', '1050740000000', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105074', 1, 0, 0),
(1473, 195679, 'TRUNG T??M NU??I BI???N C??NG NGH??? CAO', '2300195025', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105053', 1, 0, 0),
(1474, 195743, 'Trung t??m C??ng ngh??? th??ng tin v?? Truy???n th??ng', '0601184312', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105056', 1, 0, 0),
(1475, 195746, 'BQL c??c ch??? Qu???n H???i Ch??u', '0402059973', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105064', 1, 0, 0),
(1476, 195747, 'C??ng ty c??? ph???n Th????ng m???i v?? X??y d???ng Tr?????ng Khang', '0106320803', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105066', 1, 0, 0),
(1477, 195705, 'C??NG TY TNHH X??Y D???NG H.T ?????K L???K', '6001370050', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105070', 1, 0, 0),
(1478, 195748, 'C??NG TY TNHH T?? V???N ?????U T?? THI??N B??NH', '2802934696', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105078', 1, 0, 0),
(1479, 195749, 'NG??N H??NG TMCP C??NG TH????NG VI???T NAM CHI NH??NH T??Y ????', '0100111948', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105080', 1, 0, 0),
(1480, 195750, '???Y BAN NH??N D??N PH?????NG THU TH???Y', '1050810000000', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105081', 1, 0, 0),
(1481, 195751, '???y ban nh??n d??n x?? Thanh H????ng', '0700434411', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105050', 1, 0, 0),
(1482, 195752, 'C??ng ty tr??ch nhi???m h???u h???n t?? v???n v?? x??y d???ng ?????c Trang', '2901930452', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105077', 1, 0, 0),
(1483, 195753, 'C???c K??? thu???t/Binh ch???ng ?????c c??ng', '1050840000000', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105084', 1, 0, 0),
(1484, 195754, '???y ban nh??n d??n ph?????ng L???c H??a', '0600144162', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105024', 1, 0, 0),
(1485, 195755, 'C??ng ty c??? ph???n t?? v???n c??ng ngh??? x??y d???ng petrolimex', '0104025168', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105008', 1, 0, 0),
(1486, 195756, 'B???nh vi???n Ph???c H???i Ch???c N??ng Ngh??? An', '2900326199', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z104732', 1, 0, 0),
(1487, 195757, '???y ban nh??n d??n x?? V??n Tr?????ng, huy???n Ti???n H???i, t???nh Th??i B??nh', '1050870000000', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105087', 1, 0, 0),
(1488, 195758, 'Kho k??? thu???t t???ng h???p 102/ C???c k??? thu???t/ B??? T?? l???nh B??? ?????i Bi??n ph??ng', '1050860000000', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105086', 1, 0, 0),
(1489, 195759, 'C??NG TY TNHH TVTK V?? ??TXD MI???N TRUNG', '3101092281', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105088', 1, 0, 0),
(1490, 195760, 'Ph??ng T??i nguy??n v?? M??i tr?????ng huy???n ??an Ph?????ng', '1050890000000', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105089', 1, 0, 0),
(1491, 195761, 'C??NG TY TNHH M???T TH??NH VI??N BCA - TH??NG LONG', '0100110856', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105093', 1, 0, 0),
(1492, 195762, 'C??ng ty c??? ph???n Xu???t nh???p kh???u H??ng kh??ng', '0100107934', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105094', 1, 0, 0),
(1493, 195763, 'Trung t??m V??n h??a Th??? thao huy???n Ti??n Du', '2300369338', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105095', 1, 0, 0),
(1494, 195764, 'Tr?????ng m???m non Xu??n H??a', '2500399403', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105090', 1, 0, 0),
(1495, 195765, 'H????i li??n hi????p phu?? n???? tinh L??m ??????ng', '5800785846', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105096', 1, 0, 0),
(1496, 195766, 'Tr?????ng Trung h???c ph??? th??ng Thanh Oai B', '0103158542', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105101', 1, 0, 0),
(1497, 195767, '???y ban nh??n d??n x?? Ph?????c B??nh', '1051140000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105114', 1, 0, 0),
(1498, 195768, 'V??n ph??ng H??ND v?? UBND huy???n S??ng M??', '5500372125', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105103', 1, 0, 0),
(1499, 195769, 'Ph??ng Kinh t??? v?? H??? t???ng', '1051050000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105105', 1, 0, 0),
(1500, 195770, 'Ti???u ??o??n 1, Trung ??o??n C???nh s??t c?? ?????ng Trung B???', '1051060000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105106', 1, 0, 0),
(1501, 195771, 'Trung ??o??n C???nh s??t b???o v??? m???c ti??u c?? quan ?????i di???n Ngo???i giao', '1051100000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105110', 1, 0, 0),
(1502, 195772, 'Trung t??m d???ch v??? n??ng nghi???p huy???n Thi???u H??a', '2801297998', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105111', 1, 0, 0),
(1503, 195773, 'Ban D??n t???c t???nh Ngh??? An', '2901619286', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105113', 1, 0, 0),
(1504, 195774, 'Tr?????ng Trung h???c ph??? th??ng V??n T???o', '0104015882', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105115', 1, 0, 0),
(1505, 195775, 'TR?????NG M???M NON NG???C LI??N', '0800511187', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105121', 1, 0, 0),
(1506, 195776, 'S??? T?? ph??p', '1900174603', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105125', 1, 0, 0),
(1507, 195777, 'C??NG TY TNHH X??Y D???NG V?? ??O ?????C B???N ????? AN PH??C', '0315120999', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105126', 1, 0, 0),
(1508, 195778, 'Chi c???c Th???y s???n Tr?? Vinh', '2100386777008', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105127', 1, 0, 0),
(1509, 195779, 'Ph??ng Kinh t??? v?? H??? t???ng huy???n H???i H???u', '0600143384', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105128', 1, 0, 0),
(1510, 195780, 'Trung t??m ph??t tri???n qu??? ?????t huy???n Tr??ng ?????nh, t???nh L???ng S??n', '4900785284', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105129', 1, 0, 0),
(1511, 195781, 'C??NG TY TNHH MTV T??I NGUY??N V?? M??I TR?????NG MI???N NAM', '0310370603', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105130', 1, 0, 0),
(1512, 195782, '?????ng ???y C??c c?? quan t???nh B???c K???n', '4700184737', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105131', 1, 0, 0),
(1513, 195783, 'Li??n hi???p c??c H???i Khoa h???c v?? K??? thu???t t???nh Ninh B??nh', '1051340000000', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105134', 1, 0, 0),
(1514, 195784, 'Ph??ng V??n h??a v?? Th??ng tin qu???n H?? ????ng', '0103822280', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105139', 1, 0, 0),
(1515, 195785, 'Trung t??m D???ch v??? n??ng nghi???p huy???n ????ng S??n', '2801256173', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105135', 1, 0, 0),
(1516, 195786, 'Chi c???c tr???ng tr???t v?? b???o v??? th???c v???t Kh??nh H??a', '4200324369', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105136', 1, 0, 0),
(1517, 195787, '???y ban nh??n d??n x?? Kh??nh V??n', '2700226038', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105140', 1, 0, 0),
(1518, 195788, 'NG??N H??NG TH????NG M???I C??? PH???N C??NG TH????NG VI???T NAM - CHI NH??NH B???N TRE', '0100111948038', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105141', 1, 0, 0),
(1519, 195789, 'V??n ph??ng H??ND v?? UBND huy???n M??? ?????c', '1051440000000', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105144', 1, 0, 0),
(1520, 195790, 'Trung T??m Pha??t Tri????n Quy?? ??????t Tha??nh Ph???? B????c Ninh', '2300780019', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105147', 1, 0, 0),
(1521, 195791, 'C??ng ty TNHH T?? v???n X??y d???ng v?? Th????ng m???i ?????t Ngh???', '2902062470', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105142', 1, 0, 0),
(1522, 195792, 'S??? C??ng th????ng t???nh L??m ?????ng', '5800569443', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105145', 1, 0, 0),
(1523, 195793, 'TRUNG T??M PH???C V??? H??NH CH??NH C??NG T???NH AN GIANG', '1601204666004', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105149', 1, 0, 0),
(1524, 195794, 'C??ng ty TNHH Tr?????ng Thu??? t???nh ??i???n Bi??n', '5600268086', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105150', 1, 0, 0),
(1525, 195795, 'Ban Qu???n l?? Khu n??ng nghi???p ???ng d???ng c??ng ngh??? cao ph??t tri???n t??m t???nh B???c Li??u', '0779140000000', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105155', 1, 0, 0),
(1526, 195796, 'C??ng ty TNHH ?????u t?? x??y d???ng Vinasa', '2802812867', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105159', 1, 0, 0),
(1527, 195797, 'V??n ph??ng H??ND&UBND huy???n T??y Giang', '4000597457', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105161', 1, 0, 0),
(1528, 195798, 'Ph??ng V??n h??a v?? Th??ng tin huy???n Cam L???', '3200400755', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105163', 1, 0, 0),
(1529, 195799, 'UBND x?? H??ng ?????o', '1050730000000', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105073', 1, 0, 0),
(1530, 195800, 'Ng??n h??ng TMCP ?????u t?? v?? ph??t tri???n Vi???t Nam Chi nh??nh B???c Ninh', '0100150619001', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104743', 1, 0, 0),
(1531, 195801, 'Tr?????ng Trung H???c C?? S??? H??ng V????ng', '2500313413', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104925', 1, 0, 0),
(1532, 195802, 'S??? N???i v??? t???nh L??o cai', '5300203289', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z105017', 1, 0, 0),
(1533, 195803, 'Ti???u ??o??n c???nh s??t ?????c nhi???m s??? 3', '1049430000000', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104943', 1, 0, 0),
(1534, 195804, 'C???c C???a kh???u B??? ?????i Bi??n ph??ng', '1048650000000', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104865', 1, 0, 0),
(1535, 195805, 'Ph??ng N???i v??? huy???n Th?????ng T??n', '1050720000000', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105072', 1, 0, 0),
(1536, 195806, 'TRUNG T??M NU??I BI???N C??NG NGH??? CAO', '2300195025010', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105054', 1, 0, 0),
(1537, 195807, 'To?? ??n nh??n d??n huy???n B??c ??i', '4500393821', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z104319', 1, 0, 0),
(1538, 195808, 'C??ng ty C??? ph???n Giao nh???n Kho v???n Ngo???i th????ng Vi???t Nam', '0300648264', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105027', 1, 0, 0),
(1539, 195809, 'Trung t??m y t??? th??nh ph??? L??o Cai', '1048310000000', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z104831', 1, 0, 0),
(1540, 195810, '???y ban nh??n d??n x?? C???m V??n', '1050250000000', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105025', 1, 0, 0),
(1541, 195811, 'BAN QU???N L?? KHU DU L???CH SINH TH??I H??M R???NG TH??? X?? SA PA', '5300724098', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z105137', 1, 0, 0),
(1542, 195812, 'C??NG TY TNHH C??NG NGH??? ?????U T?? PH??T TRI???N PNM', '0316812142', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z105035', 1, 0, 0),
(1543, 195813, 'B???nh vi???n lao v?? b???nh vi???n ph???i t???nh Ki??n Giang', '1702139572', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z104887', 1, 0, 0),
(1544, 195814, 'BAN QU???N L?? CH??? T??N CH??NH HI???P', '0309237413', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z104710', 1, 0, 0),
(1545, 195815, 'M2-BAN C?? Y???U CH??NH PH???', '0100110782', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z104939', 1, 0, 0),
(1546, 195816, 'KHO K854/ C???C QU??N KH??/ T???NG C???C K??? THU???T', '0909650000000', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104891', 1, 0, 0),
(1547, 195817, 'Vi???n ki???m s??t nh??n d??n huy???n Y??n Th???, t???nh B???c Giang', '2400481213', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104827', 1, 0, 0),
(1548, 195818, 'Tr???i giam Ninh Kh??nh', '1048560000000', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104856', 1, 0, 0),
(1549, 195819, 'Trung t??m d???ch v??? n??ng nghi???p huy???n Th???ch Th??nh, t???nh Thanh H??a', '2802798274', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104637', 1, 0, 0),
(1550, 195820, 'Trung t??m X??c ti???n v?? T?? v???n ?????u t??', '0700617140', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z103511', 1, 0, 0),
(1551, 195821, 'TRUNG T??M GI???I PH??P QU???N TR??? DOANH NGHI???P-CHI NH??NH C??NG TY C??NG NGH??? TH??NG TIN VNPT', '0108212803007', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104543', 1, 0, 0),
(1552, 195822, 'C??NG TY TNHH T?? V???N THI???T K??? X??Y D???NG PH????NG ????NG', '0316751179', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104907', 1, 0, 0),
(1553, 195823, 'TO?? ??N NH??N D??N TH??NH PH??? TH??? ?????C', '0316762438', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104443', 1, 0, 0),
(1554, 195824, 'Ban qu???n l?? x??y d???ng c??c c??ng tr??nh x?? S??n T??nh, huy???n C???m Kh??', '1049760000000', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104976', 1, 0, 0),
(1555, 195825, 'H???P T??C X?? D???CH V??? S???N XU???T N??NG L??M NGHI???P T??N TI???N', '5000841530', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104949', 1, 0, 0),
(1556, 195826, 'Tr???m Ki???m tra t???i tr???ng xe l??u ?????ng t???nh Th??i Nguy??n', '4600202414001', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104900', 1, 0, 0),
(1557, 195827, 'C??NG TY C??? PH???N ?????U T?? PH??T TRI???N SHT', '5701985146', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104837', 1, 0, 0),
(1558, 195828, 'Ti???u ??o??n SCTH 51/ C???c K??? thu???t/ Qu??n ??o??n 2', '1048600000000', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104860', 1, 0, 0),
(1559, 195829, 'Ph??ng v??n h??a v?? th??ng tin th??? x?? Ph??? Y??n', '4600676012', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104978', 1, 0, 0),
(1560, 195830, 'C??ng ty TNHH ?????u T?? Ph??t Tri???n H??? t???ng An B??nh', '0700844055', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104722', 1, 0, 0),
(1561, 195831, 'Trung t??m d???ch v??? huy???n Nh?? Thanh', '2801237396', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104321', 1, 0, 0),
(1562, 195832, 'C???c Ch??nh tr??? - B??? T?? l???nh Ho?? h???c', '1049340000000', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104934', 1, 0, 0),
(1563, 195833, 'C??ng ty TNHH NTH Ng?? Gia', '3502418766', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104959', 1, 0, 0),
(1564, 195834, 'C??ng ty CP T?? V???n v?? X??y D???ng NACO', '2901948072', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104953', 1, 0, 0),
(1565, 195835, 'Trung t??m Th??ng tin X??c ti???n Du l???ch B??nh Thu???n', '3400887705', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104960', 1, 0, 0),
(1566, 195836, 'Tr???m ??o l?????ng ch???t l?????ng', '0766770000000', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104965', 1, 0, 0),
(1567, 195837, 'TRUNG T??M ????NG KI???M PH????NG TI???N GIAO TH??NG V???N T???I TUY??N QUANG', '5000222322', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104977', 1, 0, 0),
(1568, 195838, 'Trung t??m b???i d?????ng ch??nh tr??? huy???n Ch?? Pr??ng, t???nh Gia Lai', '5900623824', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104331', 1, 0, 0),
(1569, 195839, 'Trung t??m Y t??? huy???n V??n Ch???n', '5200902068', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104966', 1, 0, 0),
(1570, 195840, 'Ph??ng T??i nguy??n v?? M??i tr?????ng huy???n B???c Tr?? My', '4000309405', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104973', 1, 0, 0),
(1571, 195841, 'C??ng ty TNHH MTV Thi??n V???n T?????ng', '2200690812', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104979', 1, 0, 0),
(1572, 195842, 'TRUNG T??M B???O ?????M K??? THU???T', '1049810000000', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104981', 1, 0, 0),
(1573, 195843, 'Trung t??m ???ng d???ng Khoa h???c C??ng ngh??? v?? Ti??u chu???n ??o l?????ng ch???t l?????ng B???c K???n', '4700119738005', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104982', 1, 0, 0),
(1574, 195819, 'Trung t??m d???ch v??? n??ng nghi???p huy???n Th???ch Th??nh', '2802798274', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104988', 1, 0, 0),
(1575, 195844, 'Ban ch??? huy qu??n s??? huy???n V??nh T?????ng', '1049900000000', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104990', 1, 0, 0),
(1576, 195845, 'UBND th??? tr???n ????nh C???', '4600730277', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104984', 1, 0, 0),
(1577, 195846, 'Vi???n ki???m s??t nh??n d??n Qu???n T??n Ph??, Th??nh ph??? H??? Ch?? Minh', '1049860000000', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104986', 1, 0, 0),
(1578, 195847, 'T??a ??n nh??n d??n huy???n Si Ma Cai', '1049870000000', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104987', 1, 0, 0),
(1579, 195848, 'V??n ph??ng Ban ch??? ?????o Ch????ng tr??nh Gi???m ngh??o b???n v???ng Th??nh ph???', '0306569474', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104992', 1, 0, 0),
(1580, 195849, 'VI???N KHOA H???C C??NG NGH??? M???T M??', '1049940000000', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104994', 1, 0, 0),
(1581, 195850, 'Trung t??m Ph??t tri???n h??? t???ng Khu kinh t???.', '1049960000000', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104996', 1, 0, 0),
(1582, 195851, 'U??? ban nh??n d??n x?? Hi???n L????ng', '2600201128', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104998', 1, 0, 0),
(1583, 195852, 'PH??NG N??NG NGHI???P V?? PH??T TRI???N N??NG TH??N HUY???N KHO??I CH??U', '1050020000000', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z105002', 1, 0, 0),
(1584, 195853, 'V??n ph??ng t???nh ???y Ninh Thu???n', '4500233306', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104968', 1, 0, 0),
(1585, 195854, 'Tr?????ng Ph??? th??ng d??n l???p HERMANN GMEINER', '0102070623', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z104999', 1, 0, 0),
(1586, 195855, '?????ng ???y ph?????ng ?????i M???', '1050000000000', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105000', 1, 0, 0),
(1587, 195856, 'Tr?????ng Ch??nh tr??? t???nh B??nh ?????nh', '4100541585', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105007', 1, 0, 0),
(1588, 195857, 'Chi c???c Ti??u chu???n ??o l?????ng Ch???t l?????ng', '2400212186', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105013', 1, 0, 0),
(1589, 195858, 'Chi nh??nh Ng??n h??ng ch??nh s??ch x?? h???i t???nh H??ng Y??n', '0100695387', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105015', 1, 0, 0),
(1590, 195859, 'C???c Ch??nh tr??? Qu??n khu 9', '1050160000000', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105016', 1, 0, 0),
(1591, 195860, '???y ban nh??n d??n x?? An H??a Th???nh, huy???n H????ng S??n, t???nh H?? T??nh', '1050180000000', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z105018', 1, 0, 0),
(1592, 195861, 'To?? ??n nh??n d??n th??? x?? Ph??? Y??n, t???nh Th??i Nguy??n', '4601138810', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z105022', 1, 0, 0),
(1593, 195862, 'Trung t??m D???ch v??? k??? thu???t n??ng nghi???p huy???n Ba Ch???', '5701798925', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z104721', 1, 0, 0),
(1594, 195863, '???y Ban Nh??n D??n X?? Ch?? C??ng', '3400516644', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z104371', 1, 0, 0),
(1595, 195864, '???y Ban Nh??n D??n Th??? Tr???n Phan R?? C???a', '3400516771', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z104323', 1, 0, 0),
(1596, 195865, 'Tr?????ng ?????i h???c Ki??n Giang', '1701979716', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104736', 1, 0, 0),
(1597, 195866, 'V??N PH??NG BAN C?? Y???U CH??NH PH???', '1049800000000', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104980', 1, 0, 0),
(1598, 195867, 'C??ng ty TNHH ?????u t?? v?? T?? v???n APEC Th??ng Long', '0105958953', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104765', 1, 0, 0),
(1599, 195868, 'Tr???m Khuy???n n??ng huy???n Ho??i ?????c', '1044450000000', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104445', 1, 0, 0),
(1600, 195869, 'Tr?????ng THPT N?? Gi??ng, huy???n H?? Qu???ng', '4800229734', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104725', 1, 0, 0),
(1601, 195870, 'Tr??????ng THPT T??ng L???nh', '5500408445', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z103213', 1, 0, 0),
(1602, 195871, 'PH??NG GIAO D???CH NG??N H??NG CH??NH S??CH X?? H???I HUY???N CH??? G???O', '0100695387061', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104708', 1, 0, 0),
(1603, 195872, '???Y BAN NH??N D??N X?? T??Y TI???N', '1000228912', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104749', 1, 0, 0),
(1604, 195873, 'Chi c???c Tr???ng tr???t v?? B???o v??? th???c v???t t???nh L???ng S??n', '4900511798', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104614', 1, 0, 0),
(1605, 195874, '???y ban nh??n d??n x?? C???m S??n', '1047310000000', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104731', 1, 0, 0),
(1606, 195875, 'T??? ch???c t??i ch??nh vi m?? tr??ch nhi???m h???u h???n m???t th??nh vi??n cho ng?????i lao ?????ng ngh??o t??? t???o vi???c l??m Chi nh??nh Qu???n 10', '0305140259011', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z102762', 1, 0, 0),
(1607, 195876, 'T??? ch???c t??i ch??nh vi m?? tr??ch nhi???m h???u h???n m???t th??nh vi??n cho ng?????i lao ?????ng ngh??o t??? t???o vi???c l??m Chi nh??nh ????ng S??i G??n', '0305140259013', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104455', 1, 0, 0),
(1608, 195877, 'C??NG TY C??? PH???N T?? V???N V?? D???CH V??? B???O HI???M ANT', '0109490105', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z103661', 1, 0, 0),
(1609, 195878, 'Ph??ng Lao ?????ng Th????ng binh v?? X?? h???i qu???n H???i Ch??u, th??nh ph??? ???? N???ng', '0400259303', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104833', 1, 0, 0),
(1610, 195879, 'Ph??ng Qu???n l?? ???? th??? qu???n H???i An', '1045090000000', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104509', 1, 0, 0),
(1611, 195880, 'C??ng ty tr??ch nhi???m h???u h???n x??y d???ng H???ng ?????c TH', '2802486973', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104817', 1, 0, 0),
(1612, 195881, '???Y BAN NH??N D??N PH?????NG H??M R???NG', '5300777283', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104861', 1, 0, 0),
(1613, 195882, '???y ban nh??n d??n x?? Th???ch Kh??', '1046040000000', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104604', 1, 0, 0),
(1614, 195883, 'C??ng ty TNHH T?? v???n Ki???n tr??c Mi???n Trung', '0400259896', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104796', 1, 0, 0),
(1615, 195884, 'C???c Ch??nh tr??? BTL Th??ng tin li??n l???c', '1047700000000', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104770', 1, 0, 0),
(1616, 195885, 'C??NG TY C??? PH???N TH????NG M???I V?? X??Y D???NG TR?????NG SA', '4000752416', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104969', 1, 0, 0),
(1617, 195886, 'C??NG TY C??? PH???N T?? V???N X??Y D???NG TH??NH C??NG - CHI NH??NH H??A VANG', '0400509338002', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z103917', 1, 0, 0),
(1618, 195887, 'TRUNG T??M K??? THU???T H??? TR??? PH??T TRI???N C??NG NGHI???P KHU V???C PH??A NAM', '0316325332', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104249', 1, 0, 0),
(1619, 195888, 'NG??N H??NG N??NG NGHI???P V?? PH??T TRI???N N??NG TH??N VI???T NAM CHI NH??NH HUY???N GIA L???C H???I D????NG', '0100686174112', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104975', 1, 0, 0),
(1620, 195889, 'Tr?????ng THCS B???c B??nh', '2500396610', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104677', 1, 0, 0),
(1621, 195890, 'C??ng ty c??? ph???n c???p tho??t n?????c s??? I V??nh Ph??c', '2500155742', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104716', 1, 0, 0),
(1622, 195891, 'C??ng Ty Tnhh T?? V???n V?? ?????u T?? X??y D???ng Ph?????c Th???nh', '3502349897', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104387', 1, 0, 0),
(1623, 195892, 'BQLDA \"L???ng gh??p ch???ng ch???u B??KH v?? b???o v??? m??i tr?????ng ????? ph??t tri???n c??c ???? th??? xanh lo???i II\"', '0109353973', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104699', 1, 0, 0),
(1624, 195893, 'C??ng ty TNHH Gia Ph?? H??o', '2100646873', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104802', 1, 0, 0),
(1625, 195894, 'Tr?????ng trung h???c ph??? th??ng B??nh Th???nh', '3900807024', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104803', 1, 0, 0),
(1626, 195895, 'Trung t??m Da li???u', '0200906352', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104804', 1, 0, 0),
(1627, 195896, 'C??ng ty TNHH t?? v???n ?????u t?? x??y d???ng Vi???t H??ng - An Th??nh', '0900860791', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104805', 1, 0, 0),
(1628, 195897, 'Chi c???c D??n s??? - KHHG?? t???nh ??i???n Bi??n', '5600211315', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104806', 1, 0, 0),
(1629, 195898, 'C??NG TY TNHH ADB NGUY??N LINH', '1702227194', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104811', 1, 0, 0),
(1630, 195899, 'TRUNG T??M GI??M ?????NH Y KHOA T???NH ??I???N BI??N', '5600189596', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104812', 1, 0, 0),
(1631, 195900, 'C??ng ty C??? Ph???n OSEA', '0316015940', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104816', 1, 0, 0),
(1632, 195901, 'C??ng ty TNHH t?? v???n x??y d???ng Minh Qu??n Cao B???ng', '4800888342', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104819', 1, 0, 0),
(1633, 195902, 'Tr?????ng MGCL S??n Ca', '4000414512', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104821', 1, 0, 0),
(1634, 195903, 'BAN QU???N L?? CH??? C???C L???U', '5300133056', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104824', 1, 0, 0),
(1635, 195904, 'C??NG TY CP CAO SU S??N LA', '5500287991', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104825', 1, 0, 0),
(1636, 195905, 'Ph??ng T?? ph??p huy???n M?????ng T??', '1048320000000', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104832', 1, 0, 0),
(1637, 195906, 'S??? T?? ph??p t???nh S??c Tr??ng', '2200174737', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104834', 1, 0, 0),
(1638, 195907, 'B???nh vi???n Ph???c h???i ch???c n??ng t???nh Nam ?????nh', '0600555885', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104839', 1, 0, 0),
(1639, 195883, 'C??ng ty TNHH T?? v???n Ki???n tr??c Mi???n Trung', '0400259896', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104835', 1, 0, 0),
(1640, 195908, '???y ban nh??n d??n x?? Thanh Th???y, Th??? x?? Nghi S??n, t???nh Thanh H??a', '1048360000000', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104836', 1, 0, 0),
(1641, 195909, 'Thanh Tra t???nh Kon Tum', '6100349148', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104844', 1, 0, 0),
(1642, 195910, 'L??? ??o??n 434/Qu??n ??o??n 4', '1048550000000', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104855', 1, 0, 0),
(1643, 195911, 'Trung t??m D???ch v??? k??? thu???t n??ng nghi???p th??nh ph??? H??? Long', '5701800370', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104866', 1, 0, 0),
(1644, 195912, 'CHI C???C TR???NG TR???T V?? B???O V??? TH???C V???T T???NH B?? R???A V??NG T??U', '3500340232', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104847', 1, 0, 0),
(1645, 195913, 'Ban qu???n l?? Qu???ng nam Th??? nghi???m', '1048490000000', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104849', 1, 0, 0),
(1646, 195914, 'L??? ??o??n 550/Qu??n ??o??n 4', '1048570000000', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104857', 1, 0, 0),
(1647, 195793, 'Trung t??m Ph???c v??? h??nh ch??nh c??ng t???nh An Giang', '1601204666004', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104863', 1, 0, 0),
(1648, 195819, 'Trung t??m d???ch v??? n??ng nghi???p huy???n Th???ch Th??nh', '2802798274', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104869', 1, 0, 0),
(1649, 195915, 'Vi???n Sinh h???c N??ng nghi???p', '0101619572001', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104872', 1, 0, 0),
(1650, 195916, 'C???c N??ng l?????ng nguy??n t???', '1048730000000', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104873', 1, 0, 0),
(1651, 195917, 'C??NG TY TNHH MTV ??I???N L???NH HO??NG NGUY??N', '3301475027', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104874', 1, 0, 0),
(1652, 195918, 'Tr?????ng trung h???c c?? s??? th??? tr???n Y??n C??t, huy???n Nh?? Xu??n', '1048700000000', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104870', 1, 0, 0),
(1653, 195919, 'C??NG TY TNHH T?? V???N V?? QU???N L?? X??Y D???NG TO??N T??M', '0316773408', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104871', 1, 0, 0),
(1654, 195920, 'B??o Kinh t??? v?? ???? th???', '0100820140', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104875', 1, 0, 0),
(1655, 195921, 'S??? T?? ph??p t???nh Qu???ng Ng??i', '4300227129', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104876', 1, 0, 0),
(1656, 195922, 'CHI NH??NH T???NG C??NG TY TH????NG M???I S??I G??N - TNHH M???T TH??NH VI??N - TRUNG T??M ??I???U H??NH C???A H??NG TI???N L???I SATRA (SATRAFOODS', '0300100037025', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104877', 1, 0, 0),
(1657, 195923, 'C??ng ty TNHH T?? v???n X??y d???ng Ki???n Vi???t', '3801250670', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104880', 1, 0, 0),
(1658, 195924, 'C?? s??? ??i???u tr???, cai nghi???n ma t??y t???nh ?????k L???k', '6000923601', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104883', 1, 0, 0),
(1659, 195925, 'T???NG C??NG TY X??Y D???NG H?? N???I-CTCP', '0100106338', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104879', 1, 0, 0),
(1660, 195926, 'C??ng ty TNHH TVXD HD', '3101091506', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104888', 1, 0, 0),
(1661, 195927, 'Chi nh??nh H??? Ch?? Minh - T???ng c??ng ty truy???n h??nh c??p Vi???t Nam', '0105929285018', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104884', 1, 0, 0),
(1662, 195928, 'Ph??ng N???i v??? huy???n Chi??m H??a', '1048890000000', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104889', 1, 0, 0),
(1663, 195929, 'Ph??ng Lao ?????ng Th????ng binh v?? X?? h???i huy???n M?????ng T??', '6200026408', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104890', 1, 0, 0),
(1664, 195930, 'C??ng ty c??? ph???n T?? v???n Thi???t k??? v?? D???ch v??? ?????u t??', '0100100505', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104892', 1, 0, 0),
(1665, 195931, 'TRUNG T??M GI???NG TH???Y S???N GIA LAI', '5900478285007', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104895', 1, 0, 0),
(1666, 195932, 'Tr?????ng THCS Xu??n H??a, huy???n Nh?? Xu??n', '1049080000000', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104908', 1, 0, 0),
(1667, 195933, 'PH??NG T??I NGUY??N V?? M??I TR?????NG HUY???N AN MINH', '1701269603', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104896', 1, 0, 0),
(1668, 195934, 'Tr?????ng THPT Chi???ng Kh????ng', '5500373908', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104899', 1, 0, 0),
(1669, 195935, 'Ph??ng Lao ?????ng ??? Th????ng Binh V?? X?? H???i Qu???n 6, TP.HCM', '0308491368', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104904', 1, 0, 0),
(1670, 195936, 'Ph??ng N???i v??? huy???n H??? H??a', '2600845210', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104913', 1, 0, 0),
(1671, 195937, 'Trung t??m V??n h??a th??nh ph??? C???n Th??', '1800668510', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104915', 1, 0, 0),
(1672, 195938, 'Trung t??m k??? thu???t vi???n th??ng', '0100786933', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104917', 1, 0, 0),
(1673, 195939, 'Trung t??m Gi??o d???c Ngh??? nghi???p - Gi??o d???c Th?????ng xuy??n huy???n Nh?? Xu??n', '1049180000000', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104918', 1, 0, 0),
(1674, 195940, 'U??? ban nh??n d??n x?? Tr???c ?????o', '0600145039', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104919', 1, 0, 0),
(1675, 195941, 'C??ng an th??nh ph??? B???c Ninh', '2300125941', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104920', 1, 0, 0),
(1676, 195942, 'C??ng ty TNHH N??ng l??m nghi???p v?? m??i tr?????ng H??ng Th???nh', '4601527101', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104921', 1, 0, 0),
(1677, 195943, 'TRUNG T??M Y T??? HUY???N AN L??O', '1049220000000', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104922', 1, 0, 0),
(1678, 195944, 'T???P CH?? NG??N H??NG', '0101476892', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104928', 1, 0, 0),
(1679, 195945, 'Tr?????ng THCS Ng???c M???', '2500399361', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104929', 1, 0, 0),
(1680, 195946, 'C??ng ty c??? ph???n t?? v???n, ?????u t?? v?? x??y d???ng Nam S??n', '0109586262', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104942', 1, 0, 0),
(1681, 195947, 'H???p t??c x?? thanh long T???m Vu', '1100857294', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104932', 1, 0, 0),
(1682, 195948, 'Ph??ng N??ng nghi???p v?? Ph??t tri???n N??ng th??n huy???n Thanh H?', '1049350000000', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104935', 1, 0, 0),
(1683, 195949, 'B??? Tham m??u binh ch???ng ho?? h???c', '1049360000000', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104936', 1, 0, 0),
(1684, 195950, 'Kho K896', '1049370000000', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104937', 1, 0, 0),
(1685, 195951, 'C??ng ty TNHH t?? v???n v?? x??y d???ng Tu???n Phong', '0700631635', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104944', 1, 0, 0),
(1686, 195952, 'Trung t??m hi???n m??u nh??n ?????o Th??nh ph??? H??? Ch?? Minh', '0309378710', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104945', 1, 0, 0),
(1687, 195953, 'C??ng ty TNHH T?? v???n x??y d???ng H???i H??ng', '3101084361', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104950', 1, 0, 0),
(1688, 195954, 'C??ng ty TNHH t?? v???n x??y d???ng Nam Ho??ng', '3101098477', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104951', 1, 0, 0),
(1689, 195955, 'C??ng ty TNHH Ki???n tr??c v?? x??y d???ng Ph??c Nguy??n', '3502452661', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104952', 1, 0, 0),
(1690, 195956, 'Qu??? ?????u t?? ph??t tri???n t???nh H??a B??nh', '5400482396', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104703', 1, 0, 0),
(1691, 195957, 'Ban qu???n l?? x??y d???ng c?? b???n huy???n T??n L???c, t???nh H??a B??nh', '5400319632', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104838', 1, 0, 0),
(1692, 195958, 'C??ng ty TNHH D?????c th???o Ho??ng Th??nh', '0102284946', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104571', 1, 0, 0),
(1693, 195959, 'Trung t??m K??? thu???t N??ng nghi???p th??? x?? ??i???n B??n', '4001139530', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104464', 1, 0, 0),
(1694, 195960, 'C??NG TY TNHH V???N AN T???N', '4001224955', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104773', 1, 0, 0),
(1695, 195961, 'TR?????NG M???M NON NG???C LAN', '0401301597', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104818', 1, 0, 0),
(1696, 195962, 'TRUNG T??M TIN H???C', '4109000014', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104810', 1, 0, 0),
(1697, 195963, 'Trung t??m Y t??? huy???n C??t Ti??n', '5800227023', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104517', 1, 0, 0),
(1698, 195964, 'Tr?????ng THPT H???i An', '0201248593', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104852', 1, 0, 0),
(1699, 195965, 'Ph??ng Qu???n l?? ???? th??? th??nh ph??? Ch??u ?????c', '1046120000000', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104612', 1, 0, 0),
(1700, 195966, 'Tr?????ng THCS Th??? Tr???n L???p Th???ch', '2500398167', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104602', 1, 0, 0),
(1701, 195967, 'Tr?????ng Ti???u h???c v?? Trung h???c c?? s??? H?? Sen', '0200989912', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104686', 1, 0, 0),
(1702, 195968, 'Trung t??m Khuy???n c??ng v?? T?? v???n ph??t tri???n c??ng nghi???p', '3300344462', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104682', 1, 0, 0),
(1703, 195969, 'L??? ??o??n 201 - Binh ch???ng T??ng Thi???t gi??p', '1049030000000', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104903', 1, 0, 0),
(1704, 195970, 'C??NG TY C??? PH???N ?????U T?? V?? T?? V???N TR?? VI???T', '0109166370', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104726', 1, 0, 0),
(1705, 195971, 'B???nh Vi???n K', '0100960469', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104687', 1, 0, 0),
(1706, 195972, 'C??NG TY TNHH TH????NG M???I TRANG TR???I VI???T', '0306002036', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104886', 1, 0, 0),
(1707, 195973, 'Ph??ng T??i nguy??n v?? M??i tr?????ng th??? x?? ????ng H??a, t???nh Ph?? Y??n', '4400648561', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104715', 1, 0, 0),
(1708, 195974, 'Trung t??m D???ch v??? vi???c l??m t???nh C?? Mau', '2000396080', '2021-05-22 11:24:08', '2021-05-22 11:24:08', 'Z104711', 1, 0, 0),
(1709, 195975, 'Ph??ng Kinh t??? v?? H??? t???ng huy???n Xu??n Tr?????ng, t???nh Nam ?????nh', '0600659524', '2021-05-22 11:24:08', '2021-05-22 11:24:08', 'Z104750', 1, 0, 0),
(1710, 195976, '???y ban nh??n d??n x?? ????ng Vinh', '2801256310', '2021-05-22 11:24:08', '2021-05-22 11:24:08', 'Z104652', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_company_career`
--

CREATE TABLE `pccc_app_company_career` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_company_profile_id` int(10) UNSIGNED NOT NULL COMMENT 'Id c??ng ty',
  `career_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'T??n ng??nh ngh???',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
