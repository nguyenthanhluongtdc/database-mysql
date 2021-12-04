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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tiêu đề',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'ID đơn hàng',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Địa chỉ',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung',
  `time_close` timestamp NOT NULL DEFAULT '2021-08-31 08:16:40' COMMENT 'Thời gian đáo hạn',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published' COMMENT 'published|pending|draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Danh sách hỏi giá rộng rãi';

--
-- Dumping data for table `pccc_app_ask_prices_widelys`
--

INSERT INTO `pccc_app_ask_prices_widelys` (`id`, `name`, `order_id`, `address`, `lat`, `lng`, `content`, `time_close`, `status`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(5, 'DEMO', 64, 'Đ. Võ Ngọc Dũng, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '10.8764003', '106.7912895', '<div>DEMO</div>', '2021-09-29 17:00:00', 'published', '2021-09-23 11:16:17', '2021-09-23 11:16:17', 'App\\Models\\User', 22232),
(22, 'DEMO NEWS', 71, 'Đ. Võ Ngọc Dũng, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '10.8764003', '106.7912895', '<div>DEMO NEWS</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 10:09:45', '2021-09-24 10:09:45', NULL, NULL),
(23, 'DEMO HỎI GIÁ RỘNG RÃI', 72, 'Sydney CBD, Woolloomooloo NSW 2011, Australia', '-33.8690615', '151.2194896', '<div>DEMO HỎI GIÁ RỘNG RÃI</div>', '2021-09-29 17:00:00', 'published', '2021-09-24 10:27:02', '2021-09-24 10:27:02', 'App\\Models\\User', 22232),
(24, 'DEMO CHỌN LỌC NHA CUNG CẤP', 73, 'Đ. Võ Ngọc Dũng, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '10.8764003', '106.7912895', '<div>DEMO CHỌN LỌC NHA CUNG CẤP</div>', '2021-09-29 17:37:00', 'published', '2021-09-24 10:36:52', '2021-09-24 10:36:52', 'App\\Models\\User', 22232),
(25, 'DEMO', 74, 'Đ. Võ Ngọc Dũng, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '10.8764003', '106.7912895', '<div>MAIL_MAILER=smtp<br>MAIL_HOST=smtp.mailtrap.io<br>MAIL_PORT=2525<br>MAIL_USERNAME=15ddf1398d9145<br>MAIL_PASSWORD=5361d36edd106a<br>MAIL_ENCRYPTION=tls</div>', '2021-09-29 17:00:00', 'published', '2021-09-24 11:25:06', '2021-09-24 11:25:06', 'App\\Models\\User', 22232),
(26, 'DEMO', 75, 'Đ. Võ Ngọc Dũng, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '10.8764003', '106.7912895', '<div>DEMO</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 11:29:41', '2021-09-24 11:29:41', 'App\\Models\\User', 22232),
(27, 'DEMO CHỌN LỌC', 76, '1 Đường Số 3, Đông Hoà, Thủ Đức, Thành phố Hồ Chí Minh, Vietnam', '10.8766045', '106.7925123', '<div>DEMO CHỌN LỌC</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 11:58:10', '2021-09-24 11:58:10', 'App\\Models\\User', 22232),
(28, 'DEMO A', 77, 'Đ. Võ Ngọc Dũng, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '10.8764003', '106.7912895', '<div>DEMO A</div>', '2021-09-29 17:00:00', 'hidden', '2021-09-24 09:01:48', '2021-09-24 09:01:48', 'App\\Models\\User', 22232),
(29, 'DEMO B', 78, 'Đ. Võ Ngọc Dũng, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '10.8764003', '106.7912895', '<div>DEMO B</div>', '2021-09-29 17:00:00', 'published', '2021-09-24 09:04:06', '2021-09-24 09:04:06', 'App\\Models\\User', 22232),
(30, 'Mua sản phẩm', 68, 'Sydney CBD, Woolloomooloo NSW 2011, Úc', '-33.8690615', '151.2194896', '<div>lorem</div>', '2021-09-25 02:15:00', 'hidden', '2021-09-24 22:50:08', '2021-09-24 22:50:08', 'App\\Models\\User', 15832),
(31, 'test', 63, '6 Cowper Wharf Roadway, Woolloomooloo NSW 2011, Úc', '-33.868602', '151.220472', '<div>lorem</div>', '2021-09-27 14:29:00', 'published', '2021-09-27 14:30:56', '2021-09-27 14:30:56', 'App\\Models\\User', 22232),
(32, 'test', 85, 'Sydney CBD, Woolloomooloo NSW 2011, Úc', '-33.8690615', '151.2194896', '<div>lorem</div>', '2021-09-27 14:32:00', 'published', '2021-09-27 14:33:39', '2021-09-27 14:33:39', 'App\\Models\\User', 22232),
(33, 'test', 98, 'Sydney CBD, Woolloomooloo NSW 2011, Úc', '-33.8690615', '151.2194896', '<p>lorem</p>', '2021-10-29 19:22:00', 'hidden', '2021-10-05 19:21:58', '2021-10-05 19:21:58', 'App\\Models\\User', 22232),
(34, 'test', 104, 'Phường Tân Thiện, Đồng Xoài, Bình Phước, Việt Nam', '11.5335022', '106.9146489', '<p>lorem</p>', '2021-10-30 03:01:00', 'hidden', '2021-10-06 03:03:04', '2021-10-06 03:03:04', 'App\\Models\\User', 22232);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='File đính kèm';

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
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Id user tạo bộ lọc tin',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên bộ lọc tin',
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Từ khóa',
  `date_start` datetime DEFAULT NULL COMMENT 'Thời gian tìm kiếm từ',
  `date_end` datetime DEFAULT NULL COMMENT 'Thời gian tìm kiếm đến',
  `bid_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Lĩnh vực',
  `bid_method` int(11) DEFAULT NULL COMMENT 'Hình thức',
  `guaranteed_money_from` int(11) DEFAULT NULL COMMENT 'Số tiền đảm bảo từ',
  `guaranteed_money_to` int(11) DEFAULT NULL COMMENT 'Số tiền đảm bảo đến',
  `bid_price_from` int(11) DEFAULT NULL COMMENT 'Giá mời thầu từ',
  `bid_price_to` int(11) DEFAULT NULL COMMENT 'Giá mời thầu đến',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bid_target` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Loại tin',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung bộ lọc',
  `email_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id của bảng email_bidding_news'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_bidding_filter_for_users`
--

INSERT INTO `pccc_app_bidding_filter_for_users` (`id`, `user_id`, `name`, `keyword`, `date_start`, `date_end`, `bid_type`, `bid_method`, `guaranteed_money_from`, `guaranteed_money_to`, `bid_price_from`, `bid_price_to`, `created_at`, `updated_at`, `bid_target`, `content`, `email_id`) VALUES
(10, 22232, 'Bộ lọc 1', '[\"adwadq\"]', NULL, NULL, '[3,2,1]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:36:09', '2021-05-31 12:05:24', '[\"bid-plan\",\"bid-shortlist\",\"bid-result\"]', 'Bộ lọc 1', 42),
(11, 22232, 'Bộ lọc 2', '[\"sadfas\"]', NULL, NULL, '[2]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:36:30', '2021-05-31 07:45:26', '[\"bid-pre-result\",\"bid-shortlist\"]', 'Bộ lọc 2', NULL),
(12, 22232, 'Bộ lọc 3', '[\"dwadwq\"]', NULL, NULL, '[3,2,1]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:36:51', '2021-05-31 07:36:51', '[\"bid-result\",\"bid-pre-result\",\"bid-shortlist\"]', 'Bộ lọc 3', NULL),
(13, 22232, 'Bộ lọc 4', '[\"afwqq\"]', NULL, NULL, '[]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:45:41', '2021-05-31 12:05:24', '[]', 'Bộ lọc 4', NULL),
(14, 22232, 'Bộ lọc 5', '[\"vdsvw\"]', NULL, NULL, '[]', -1, NULL, NULL, NULL, NULL, '2021-05-31 07:45:54', '2021-05-31 12:05:24', '[]', 'Bộ lọc 5', 41);

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news`
--

CREATE TABLE `pccc_app_bidding_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id loại tin đấu thầu',
  `bid_type` int(11) DEFAULT NULL COMMENT 'Lĩnh vực',
  `bid_method` int(11) DEFAULT NULL COMMENT 'Hình thức',
  `aujusted_limited` int(11) DEFAULT NULL COMMENT 'Nguồn vốn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bid_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Số TBMT hoặc số KHLCNT',
  `bid_turn_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `time_bid_closing` datetime DEFAULT NULL COMMENT 'Thời gian đóng thầu',
  `time_posting` datetime DEFAULT NULL COMMENT 'Thời điểm đăng tải',
  `date_of_approval` datetime DEFAULT NULL COMMENT 'Ngày phê duyệt',
  `time_to_open_pq` datetime DEFAULT NULL COMMENT 'Thời điểm mở sơ tuyển',
  `bid_extend_type` int(11) DEFAULT NULL COMMENT 'Loại thông báo gia hạn(1) hoặc đính chính(2)',
  `is_related` int(11) DEFAULT NULL COMMENT 'là tin liên quan(1) hoặc không liên quan(0)',
  `shortlist_status` int(11) DEFAULT NULL COMMENT 'Trạng thái của danh sách ngắn (0: đã hủy, 1: đã công khai)',
  `bid_opening_time` datetime DEFAULT NULL COMMENT 'Thời điểm mở thầu của kết quả mở thầu điện tử và kết quả lựa chọn nhà thầu',
  `time_of_completion` datetime DEFAULT NULL COMMENT 'Thời điểm hoàn thành của kết quả mở thầu điện tử và kết quả lựa chọn nhà thầu',
  `open_result_status` enum('bid_cancel','yet_bid_open','bid_open_complete','open_hskt_complete','open_hstc_complete','complete_gd_hsdt','complete_gd_hskt') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hủy thầu'
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
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id loại tin đấu thầu',
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
  `file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'tên file',
  `link_muasamcong` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'link file muasamcong.mpi.gov.vn',
  `media_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id liên kết tới bảng bảng app_medias',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_big_file` int(11) DEFAULT NULL COMMENT 'là file lớn(1) hoặc không (null)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news_follow`
--

CREATE TABLE `pccc_app_bidding_news_follow` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id loại tin đấu thầu',
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id loại tin đấu thầu',
  `bid_number` int(11) NOT NULL COMMENT 'Số TBMT hoặc số KHLCNT, số TBMQT, số TBMST...',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Id user theo dõi',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_news_joint_ventures`
--

CREATE TABLE `pccc_app_bidding_news_joint_ventures` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `type_id` int(10) UNSIGNED NOT NULL COMMENT 'Id loại tin đấu thầu',
  `joint_venture_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên liên danh',
  `job_company_profile_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id công ty',
  `joint_venture_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id công ty liên danh',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_bid_open_complete`
--

CREATE TABLE `pccc_app_bidding_open_result_bid_open_complete` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên nhà thầu',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tỉ lệ giảm giá (%)',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu sau giảm giá (VND)',
  `effect_hsdt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hiệu lực HSDT ',
  `bid_guarantee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bảo đảm dự thầu',
  `effect_bddt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hiệu lực BĐDT (ngày)',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời gian thực hiện hợp đồng',
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
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `ratings` int(10) UNSIGNED NOT NULL COMMENT 'Xếp hạng',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên nhà thầu',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tỉ lệ giảm giá (%)',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu sau giảm giá (VND)',
  `time_of_attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời điểm dự thầu',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluation_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá đánh giá',
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên người đại diện',
  `result` int(11) DEFAULT 0 COMMENT 'Kết quả trúng thầu(1)/trượt(0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_complete_gd_hskt`
--

CREATE TABLE `pccc_app_bidding_open_result_complete_gd_hskt` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên nhà thầu',
  `scores` int(11) DEFAULT NULL COMMENT 'Điểm số',
  `show` int(11) DEFAULT NULL COMMENT 'Ẩn/Hiện (0/1)',
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
  `parent_status` enum('bid_cancel','yet_bid_open','bid_open_complete','open_hskt_complete','open_hstc_complete','complete_gd_hsdt','complete_gd_hskt') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hủy thầu',
  `job_company_profile_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Id công ty',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_joint_venture` int(11) DEFAULT NULL COMMENT 'Là liên danh hay không'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_open_result_open_hskt_complete`
--

CREATE TABLE `pccc_app_bidding_open_result_open_hskt_complete` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên nhà thầu',
  `effect_hsdxkt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hiệu lực HSĐXKT',
  `effect_bd_dt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hiệu lực BĐ DT',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời gian thực hiện hợp đồng',
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
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên nhà thầu',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tỉ lệ giảm giá (%)',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu sau giảm giá (VND)',
  `effect_hsdxtc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hiệu lực HSĐXTC',
  `value_bd_dt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá Trị BĐ DT (VND)',
  `effect_bd_dt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hiệu lực BĐ DT',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời gian thực hiện hợp đồng',
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
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `lcnt_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Lĩnh vực LCNT',
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên gói thầu',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá gói thầu (VND)',
  `capital_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chi tiết nguồn vốn',
  `form_of_lcnt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hình thức LCNT',
  `lcnt_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Phương thức LCNT',
  `time_start_lcnt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời gian bắt đầu tổ chức LCNT',
  `contract_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Loại hợp đồng',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời gian thực hiện hợp đồng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `execution_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Địa điểm thực hiện gói thầu',
  `number_tbml_tbmst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số TBMT/TBMST đã tạo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_pq_attached_files`
--

CREATE TABLE `pccc_app_bidding_pq_attached_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `text_type_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên loại văn bản',
  `attached_file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên file đính kèm',
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
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `joint_venture_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên liên danh',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên công ty',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Địa chỉ',
  `country_or_territory_of_bidders` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nước hoặc vùng lãnh thổ nơi nhà thầu đăng ký hoạt động',
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
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên nhà thầu',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu',
  `discount_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tỉ lệ giảm giá (%)',
  `technical_score` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Điểm kỹ thuật',
  `price_review` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá đánh giá',
  `bid_price_after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá dự thầu sau giảm giá (không tính các khoản tạm tính và dự phòng nếu có) (VND)',
  `winning_bid_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giá trúng thầu',
  `duration_of_contract` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời gian thực hiện hợp đồng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_result_goods`
--

CREATE TABLE `pccc_app_bidding_result_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `goods_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên hàng hóa',
  `marks_labels_of_products` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ký hiệu nhãn, mác của sản phẩm',
  `mass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Khối lượng mời thầu',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Đơn vị',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mô tả hàng hóa',
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Xuất xứ',
  `unit_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Đơn giá dự thầu(VNĐ)',
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ghi chú',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_bidding_shortlist_contractors`
--

CREATE TABLE `pccc_app_bidding_shortlist_contractors` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL COMMENT 'Id tin đấu thầu',
  `number_dkkd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số ĐKKD',
  `name_partnership` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên liên danh',
  `contractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên nhà thầu',
  `contractor_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Địa chỉ nhà thầu',
  `register_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nơi NT đăng ký hoạt động',
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
(1, 'bid-plan', 'Kế hoạch lựa chọn nhà thầu', 'ke-hoach-lua-chon-nha-thau', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(2, 'bid-pq', 'Thông báo mời sơ tuyển/ mời quan tâm', 'thong-bao-moi-so-tuyen-moi-quan-tam', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(3, 'bid', 'Thông báo mời thầu', 'thong-bao-moi-thau', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(4, 'bid-extend', 'Thông báo gia hạn/ đính chính', 'thong-bao-gia-han-dinh-chinh', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(5, 'bid-shortlist', 'Danh sách ngắn', 'danh-sach-ngan', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(6, 'bid-pre-result', 'Kết quả sơ tuyển', 'ket-qua-so-tuyen', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(7, 'bid-open-result', 'Kết quả mở thầu điện tử', 'ket-qua-mo-thau-dien-tu', '2021-04-07 04:13:50', '2021-04-07 04:13:50'),
(8, 'bid-result', 'Kết quả lựa chọn nhà thầu', 'ket-qua-lua-chon-nha-thau', '2021-04-07 04:13:50', '2021-04-07 04:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_billing_informations`
--

CREATE TABLE `pccc_app_billing_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên công ty/Tổ chức',
  `company_address` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ công ty/Tổ chức',
  `tax_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mã số thuế công ty/Tổ chức',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên người liên hệ',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Số điện thoại người liên hệ',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ email nhận hóa đơn điện tử',
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Id bảng transactions',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_billing_informations`
--

INSERT INTO `pccc_app_billing_informations` (`id`, `company_name`, `company_address`, `tax_code`, `name`, `phone`, `email`, `transaction_id`, `created_at`, `updated_at`) VALUES
(4, 'Cty TNHH MTV Hưng Thịnh Phát', '76a', '11112222', 'Mã Hưng', '0344242679', 'mavanhung679@gmail.com', 557, '2021-08-17 23:24:59', '2021-08-17 23:24:59'),
(5, 'Cty Cổ Phần ABC', '123', '4953696969', 'Mã Hưng', '0344242679', 'mavanhung679@gmail.com', 558, '2021-08-17 23:26:22', '2021-08-17 23:26:22');

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
(1, 'Tất cả ngành nghề', 'tat-ca-nganh-nghe', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(2, 'An toàn lao động', 'an-toan-lao-dong', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(3, 'Bác sĩ', 'bac-si', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(4, 'Bán hàng', 'ban-hang', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(5, 'Bảo hiểm', 'bao-hiem', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(6, 'Bất động sản', 'bat-dong-san', '2020-06-30 10:26:20', '2020-06-30 10:26:20'),
(7, 'Biên phiên dịch', 'bien-phien-dich', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(8, 'Cấp quản lý điều hành', 'cap-quan-ly-dieu-hanh', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(9, 'Chứng khoán', 'chung-khoan', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(10, 'Cơ khí', 'co-khi', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(11, 'Công nghệ cao', 'cong-nghe-cao', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(12, 'Dầu khí', 'dau-khi', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(13, 'Dịch vụ khách hàng', 'dich-vu-khach-hang', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(14, 'Dược sĩ', 'duoc-si', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(15, 'Giáo dục & Đạo tạo', 'giao-duc-dao-tao', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(16, 'Hàng không du lịch', 'hang-khong-du-lich', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(17, 'IT - Phần mềm', 'it-phan-mem', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(18, 'IT -Phần cứng', 'it-phan-cung', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(19, 'Kế toán / Kiểm toán', 'ke-toan-kiem-toan', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(20, 'Kỹ sư', 'ky-su', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(21, 'Ngân hàng', 'ngan-hang', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(22, 'May mặc', 'may-mac', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(23, 'Nông lâm nghiệm', 'nong-lam-nghiem', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(24, 'Thủy sản', 'thuy-san', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(25, 'Xây dựng', 'xay-dung', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(26, 'Tư vấn bảo hiểm', 'tu-van-bao-hiem', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(27, 'Chăm sóc khách hàng', 'cham-soc-khach-hang', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(28, 'Kĩ thuật ứng dụng', 'ki-thuat-ung-dung', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(29, 'Bảo vệ/Vệ sĩ/An ninh', 'bao-veve-sian-ninh', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(30, 'Bưu chính viễn thông', 'buu-chinh-vien-thong', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(31, 'Công nghệ thông tin', 'cong-nghe-thong-tin', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(32, 'Du lịch/Nhà hàng/Khách sạn', 'du-lichnha-hangkhach-san', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(33, 'Dược hóa chất/Sinh hóa', 'duoc-hoa-chatsinh-hoa', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(34, 'Làm đẹp/Thể lực/Spa', 'lam-depthe-lucspa', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(35, 'Luật/Pháp lý', 'luatphap-ly', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(36, 'Môi trường/Xử lí chất thải', 'moi-truongxu-li-chat-thai', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(37, 'Mỹ phẩm/Thời trang/Trang sức', 'my-phamthoi-trangtrang-suc', '2020-06-30 10:26:21', '2020-06-30 10:26:21'),
(38, 'Nghệ thuật/Điện ảnh xxx 123', 'nghe-thuatdien-anh', '2020-06-30 10:26:21', '2020-06-30 13:35:51');

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
  `office_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã cơ quan',
  `investor_is_approved` tinyint(1) DEFAULT 0 COMMENT 'Nếu bằng 1 là bên bên mời thầu',
  `contractor_violation` tinyint(1) DEFAULT 0 COMMENT 'Nếu bằng 1 là tổ chức cá nhân vi phạm',
  `contractor` tinyint(1) DEFAULT 0 COMMENT 'Nếu bằng 1 là nhà thầu được phê duyệt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pccc_app_company_alias`
--

INSERT INTO `pccc_app_company_alias` (`id`, `job_company_profile_id`, `company_name`, `tax_code`, `created_at`, `updated_at`, `office_code`, `investor_is_approved`, `contractor_violation`, `contractor`) VALUES
(1100, 57288, 'HỘ KINH DOANH CỬA HÀNG THIẾT BỊ Y TẾ THIỆN LAN', '8048733070', '2021-05-22 11:14:53', '2021-05-22 11:14:53', NULL, 0, 0, 1),
(1101, 57289, 'CÔNG TY TNHH THƯƠNG MẠI - DỊCH VỤ - TƯ VẤN XÂY DỰNG 368', '6300343256', '2021-05-22 11:14:53', '2021-05-22 11:14:53', NULL, 0, 0, 1),
(1102, 57290, 'CÔNG TY TNHH SRINAM', '0402087360', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1103, 57291, 'CÔNG TY CỔ PHẦN BABU VIỆT NAM', '0107678704', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1104, 57292, 'DOANH NGHIỆP TƯ NHÂN CHÍNH PHÁT', '3500798135', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1105, 57293, 'CÔNG TY TNHH MTV TAGCO ANH SƠN', '2901949189', '2021-05-22 11:14:54', '2021-05-22 11:14:54', NULL, 0, 0, 1),
(1106, 57294, 'CÔNG TY TNHH AGROPEST VIET NAM', '1801655673', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1107, 57295, 'CÔNG TY TNHH AN PHÚC 116', '5200900769', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1108, 57296, 'CÔNG TY TNHH T&T RETAIL', '0108252605', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1109, 57297, 'CÔNG TY TNHH GIẢI PHÁP CÔNG NGHỆ TND', '0315901294', '2021-05-22 11:14:55', '2021-05-22 11:14:55', NULL, 0, 0, 1),
(1110, 57298, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN MỘT THÀNH VIÊN NAM HOÀNG THỊNH', '5400361585', '2021-05-22 11:14:57', '2021-05-22 11:14:57', NULL, 0, 0, 1),
(1111, 57299, 'Hộ Kinh Doanh Nguyễn Hữu Trung', '5702078006', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1112, 57300, 'CÔNG TY TNHH KỸ THUẬT TRIỂN PHÁT', '0400963679', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1113, 57301, 'CÔNG TY CỔ PHẦN DỊCH VỤ VÀ THƯƠNG MẠI TỔNG HỢP VIỆT HOÀNG', '0102155147', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1114, 57302, 'CÔNG TY TNHH XỬ LÝ NỀN MÓNG VÀ XÂY DỰNG GÒ CÔNG', '1201579452', '2021-05-22 11:14:58', '2021-05-22 11:14:58', NULL, 0, 0, 1),
(1115, 57303, 'CÔNG TY TNHH MỘT THÀNH VIÊN XÂY DỰNG LONG GIA BẢO', '3702132884', '2021-05-22 11:14:59', '2021-05-22 11:14:59', NULL, 0, 0, 1),
(1116, 57304, 'CÔNG TY CỔ PHẦN DỊCH VỤ VỆ SINH MÔI TRƯỜNG ĐÔ THỊ', '0102569317', '2021-05-22 11:14:59', '2021-05-22 11:14:59', NULL, 0, 0, 1),
(1117, 57305, 'CÔNG TY TNHH DỊCH VỤ THƯƠNG MẠI VÀ ĐẦU TƯ BẢO AN', '0106473366', '2021-05-22 11:14:59', '2021-05-22 11:14:59', NULL, 0, 0, 1),
(1118, 57306, 'CÔNG TY TNHH XÂY DỰNG DÂN DỤNG BẢO KHÔI', '1702225380', '2021-05-22 11:15:00', '2021-05-22 11:15:00', NULL, 0, 0, 1),
(1119, 57307, 'CÔNG TY TNHH THƯƠNG MẠI CÔNG NGHỆ ND-TECH', '0107796271', '2021-05-22 11:15:00', '2021-05-22 11:15:00', NULL, 0, 0, 1),
(1120, 57308, 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ THIẾT BỊ TẦM NHÌN', '1801690533', '2021-05-22 11:15:02', '2021-05-22 11:15:02', NULL, 0, 0, 1),
(1121, 57309, 'CÔNG TY CỔ PHẦN KỸ THUẬT VÀ DỊCH VỤ MINH KHANG', '0107541146', '2021-05-22 11:15:02', '2021-05-22 11:15:02', NULL, 0, 0, 1),
(1122, 57310, 'CÔNG TY CỔ PHẦN TẬP ĐOÀN ĐẦU TƯ PHÚC HƯNG', '2802936767', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1123, 57311, 'CÔNG TY CỔ PHẦN QUẢNG CÁO DGM ASIA', '0314269629', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1124, 57312, 'CÔNG TY TNHH MTV THIÊN LONG', '6200110378', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1125, 57313, 'CÔNG TY TNHH QUANG VINH E.M.I', '3702546652', '2021-05-22 11:15:03', '2021-05-22 11:15:03', NULL, 0, 0, 1),
(1126, 57314, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN XÂY DỰNG CHUNG HUỆ', '5400366840', '2021-05-22 11:15:04', '2021-05-22 11:15:04', NULL, 0, 0, 1),
(1127, 57315, 'CÔNG TY TNHH TƯ VẤN XÂY DỰNG CÁC DỰ ÁN QUỐC TẾ', '0106425965', '2021-05-22 11:15:04', '2021-05-22 11:15:04', NULL, 0, 0, 1),
(1128, 57316, 'Văn Phòng Phẩm Sài Gòn', '0301877475', '2021-05-22 11:15:04', '2021-05-22 11:15:04', NULL, 0, 0, 1),
(1129, 57317, 'CÔNG TY CỔ PHẦN CÔNG NGHỆ XANH', '0200644989', '2021-05-22 11:15:05', '2021-05-22 11:15:05', NULL, 0, 0, 1),
(1130, 57318, 'CÔNG TY TNHH TƯ VẤN THIẾT KẾ GIA HUY', '3801218860', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1131, 57319, 'CÔNG TY TNHH TDB HÀ NỘI', '0106863817', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1132, 57320, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN MỘT THÀNH VIÊN TRẦN THỌ', '5400306979', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1133, 57321, 'CÔNG TY TNHH CƠ KHÍ XÂY DỰNG VÀ THƯƠNG MẠI DUY HIẾU', '2700913464', '2021-05-22 11:15:07', '2021-05-22 11:15:07', NULL, 0, 0, 1),
(1134, 57322, 'CÔNG TY TNHH MTV XÂY DỰNG THÁI SƠN TÂY BẮC', '5500546999', '2021-05-22 11:15:08', '2021-05-22 11:15:08', NULL, 0, 0, 1),
(1135, 57323, 'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ THƯƠNG MẠI VẠN TÙNG', '0106514929', '2021-05-22 11:15:08', '2021-05-22 11:15:08', NULL, 0, 0, 1),
(1136, 57324, 'CÔNG TY TNHH QUỐC TẾ HEGATEK', '0106817761', '2021-05-22 11:15:09', '2021-05-22 11:15:09', NULL, 0, 0, 1),
(1137, 57325, 'CÔNG TY CƠ GIỚI VÀ XÂY DỰNG HÒA BÌNH (TNHH)', '0800006554', '2021-05-22 11:15:09', '2021-05-22 11:15:09', NULL, 0, 0, 1),
(1138, 57326, 'CÔNG TY TNHH SẢN XUẤT VÀ THƯƠNG MẠI SÂM VIỆT NAM', '2400892894', '2021-05-22 11:15:09', '2021-05-22 11:15:09', NULL, 0, 0, 1),
(1139, 57327, 'CÔNG TY TNHH MỘT THÀNH VIÊN MINH VIỆT GIA LAI', '5901164926', '2021-05-22 11:15:10', '2021-05-22 11:15:10', NULL, 0, 0, 1),
(1140, 57328, 'CÔNG TY TNHH MỘT THÀNH VIÊN QUANG VINH KON TUM', '6101174282', '2021-05-22 11:15:11', '2021-05-22 11:15:11', NULL, 0, 0, 1),
(1141, 57329, 'TRUNG TÂM LƯU TRỮ LỊCH SỬ TỈNH YÊN BÁI', '5200894804', '2021-05-22 11:15:12', '2021-05-22 11:15:12', NULL, 0, 0, 1),
(1142, 57330, 'CÔNG TY TNHH MỘT THÀNH VIÊN ĐẦU TƯ XÂY DỰNG AN KHÔI LÂM ĐỒNG', '5801427610', '2021-05-22 11:15:12', '2021-05-22 11:15:12', NULL, 0, 0, 1),
(1143, 57331, 'CÔNG TY TNHH QUẢN LÝ XÂY DỰNG HƯNG THỊNH', '0314643354', '2021-05-22 11:15:12', '2021-05-22 11:15:12', NULL, 0, 0, 1),
(1144, 231918, 'CÔNG TY TNHH MTV XÂY DỰNG VÀ THƯƠNG MẠI THANH BÌNH', '5300793020', '2021-05-22 11:17:28', '2021-05-22 11:17:28', NULL, 0, 0, 1),
(1145, 231919, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN MỘT THÀNH VIÊN NÔNG NGHIỆP XANH 886 KIÊN GIANG', '1702225366', '2021-05-22 11:17:28', '2021-05-22 11:17:28', NULL, 0, 0, 1),
(1146, 231920, 'CÔNG TY TNHH NỘI THẤT GIA VIỆT', '0302895653', '2021-05-22 11:17:29', '2021-05-22 11:17:29', NULL, 0, 0, 1),
(1147, 231921, 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG DỊCH VỤ THƯƠNG MẠI QMT', '0310897326', '2021-05-22 11:17:29', '2021-05-22 11:17:29', NULL, 0, 0, 1),
(1148, 231922, 'CÔNG TY TNHH XÂY DỰNG VÀ DỊCH VỤ TỔNG HỢP TUẤN ANH', '0109317767', '2021-05-22 11:17:29', '2021-05-22 11:17:29', NULL, 0, 0, 1),
(1149, 231923, 'CÔNG TY TNHH MỘT THÀNH VIÊN VI TÍNH NGUYÊN LONG', '5901095729', '2021-05-22 11:17:30', '2021-05-22 11:17:30', NULL, 0, 0, 1),
(1150, 196664, 'Trường Đại học Vinh', '2900466502', '2021-05-22 11:17:30', '2021-05-22 11:17:30', NULL, 0, 0, 1),
(1151, 231924, 'CÔNG TY TNHH THƯƠNG MẠI VÀ TƯ VẤN THIẾT KẾ HOÀNG NGUYÊN', '0314990069', '2021-05-22 11:17:31', '2021-05-22 11:17:31', NULL, 0, 0, 1),
(1152, 231925, 'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY DỰNG THÀNH CÔNG 886', '1702222252', '2021-05-22 11:17:31', '2021-05-22 11:17:31', NULL, 0, 0, 1),
(1153, 231926, 'CÔNG TY CỔ PHẦN KỸ THUẬT VÀ CÔNG NGHỆ G6T', '0108970388', '2021-05-22 11:17:32', '2021-05-22 11:17:32', NULL, 0, 0, 1),
(1154, 231927, 'Công ty cổ phần xây dựng Hoàng Phong Long Biên', '0108588316', '2021-05-22 11:17:34', '2021-05-22 11:17:34', NULL, 0, 0, 1),
(1155, 231928, 'CÔNG TY TNHH TƯ VẤN THIẾT KẾ VÀ XÂY DỰNG ĐỨC TÍN', '4201744006', '2021-05-22 11:17:34', '2021-05-22 11:17:34', NULL, 0, 0, 1),
(1156, 231929, 'CÔNG TY CỔ PHẦN THƯƠNG MẠI TLX', '0109157175', '2021-05-22 11:17:35', '2021-05-22 11:17:35', NULL, 0, 0, 1),
(1157, 231930, 'CÔNG TY TNHH TM DV KỸ THUẬT KHÁNH AN PHÚ', '4201888329', '2021-05-22 11:17:35', '2021-05-22 11:17:35', NULL, 0, 0, 1),
(1158, 231931, 'Cửa hàng máy tính Bàn Văn Hiền', '8116558951', '2021-05-22 11:17:36', '2021-05-22 11:17:36', NULL, 0, 0, 1),
(1159, 231932, 'CÔNG TY TNHH ĐẦU TƯ XÂY LẮP VÀ THƯƠNG MẠI PHÚ AN NGUYÊN', '0109573182', '2021-05-22 11:17:36', '2021-05-22 11:17:36', NULL, 0, 0, 1),
(1160, 231933, 'CÔNG TY TNHH HAVIPHARM', '0108080836', '2021-05-22 11:17:37', '2021-05-22 11:17:37', NULL, 0, 0, 1),
(1161, 231934, 'CÔNG TY CỔ PHẦN ĐẦU TƯ CÔNG NGHỆ VÀ DỊCH VỤ HÀ NỘI', '0105843945', '2021-05-22 11:17:37', '2021-05-22 11:17:37', NULL, 0, 0, 1),
(1162, 231935, 'CÔNG TY CỔ PHẦN THƯƠNG MẠI DƯỢC PHẨM TUỆ GIA', '4601261860', '2021-05-22 11:17:38', '2021-05-22 11:17:38', NULL, 0, 0, 1),
(1163, 231936, 'CÔNG TY CỔ PHẦN ĐÀO TẠO SỬA CHỮA Ô TÔ VÀ THƯƠNG MẠI TỔNG HỢP THÁI THỊNH', '0108487822', '2021-05-22 11:17:38', '2021-05-22 11:17:38', NULL, 0, 0, 1),
(1164, 231937, 'CÔNG TY CP THƯƠNG MẠI VÀ DỊCH VỤ QUẢNG CÁO NGHỆ AN', '2901804962', '2021-05-22 11:17:40', '2021-05-22 11:17:40', NULL, 0, 0, 1),
(1165, 231938, 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ CAT TECH VIỆT NAM', '0108678841', '2021-05-22 11:17:41', '2021-05-22 11:17:41', NULL, 0, 0, 1),
(1166, 231939, 'CÔNG TY TNHH KHOÁNG SẢN HÒA BÌNH NINH THUẬN', '4500622373', '2021-05-22 11:17:41', '2021-05-22 11:17:41', NULL, 0, 0, 1),
(1167, 231940, 'CÔNG TY CỔ PHẦN XÂY DỰNG THƯƠNG MẠI VÀ DỊCH VỤ PHÁT AN', '0106182247', '2021-05-22 11:17:41', '2021-05-22 11:17:41', NULL, 0, 0, 1),
(1168, 231941, 'CÔNG TY TNHH MTV NGUYÊN QUÂN', '6400431587', '2021-05-22 11:17:42', '2021-05-22 11:17:42', NULL, 0, 0, 1),
(1169, 231942, 'CÔNG TY CỔ PHẦN XUẤT NHẬP KHẨU RAU QUẢ I', '0100113920', '2021-05-22 11:17:42', '2021-05-22 11:17:42', NULL, 0, 0, 1),
(1170, 231943, 'CÔNG TY TNHH VĂN MINH SỐ', '2400811408', '2021-05-22 11:17:43', '2021-05-22 11:17:43', NULL, 0, 0, 1),
(1171, 231944, 'CÔNG TY CỔ PHẦN VINATEA KIM ANH', '0107409074', '2021-05-22 11:17:43', '2021-05-22 11:17:43', NULL, 0, 0, 1),
(1172, 231945, 'CÔNG TY TNHH MỘT THÀNH VIÊN QUẢNG CÁO VIỆT THIỆN', '4800923815', '2021-05-22 11:17:44', '2021-05-22 11:17:44', NULL, 0, 0, 1),
(1173, 231946, 'Công ty TNHH Lavie', '51002200040', '2021-05-22 11:17:44', '2021-05-22 11:17:44', NULL, 0, 0, 1),
(1174, 231947, 'CÔNG TY TNHH KỸ THUẬT XÂY DỰNG NGUYÊN DƯƠNG', '0311399891', '2021-05-22 11:17:46', '2021-05-22 11:17:46', NULL, 0, 0, 1),
(1175, 231948, 'CÔNG TY TNHH GIẢI PHÁP CÔNG NGHỆ NHẬT VIỆT', '0109587467', '2021-05-22 11:17:47', '2021-05-22 11:17:47', NULL, 0, 0, 1),
(1176, 231949, 'CÔNG TY TNHH MỘT THÀNH VIÊN THƯƠNG MẠI SẢN XUẤT KHÁNH CHI', '3801183953', '2021-05-22 11:17:47', '2021-05-22 11:17:47', NULL, 0, 0, 1),
(1177, 231950, 'CÔNG TY CP XÂY DỰNG VÀ KIỂM ĐỊNH HÀ NỘI', '2802538519', '2021-05-22 11:17:48', '2021-05-22 11:17:48', NULL, 0, 0, 1),
(1178, 231951, 'CÔNG TY TNHH THIẾT BỊ PCCC MINH CƯỜNG', '3603723290', '2021-05-22 11:17:48', '2021-05-22 11:17:48', NULL, 0, 0, 1),
(1179, 231952, 'CÔNG TY CỔ PHẦN BỆNH VIỆN SÀI GÒN - PHAN RANG', '4500455605', '2021-05-22 11:17:49', '2021-05-22 11:17:49', NULL, 0, 0, 1),
(1180, 231953, 'CÔNG TY TNHH COMPOSITE HOÀNG HÀ', '0108879160', '2021-05-22 11:17:49', '2021-05-22 11:17:49', NULL, 0, 0, 1),
(1181, 231954, 'CÔNG TY TNHH XÂY DỰNG VÀ DỊCH VỤ KỸ THUẬT PCCC ĐÔNG DƯƠNG', '0108484620', '2021-05-22 11:17:50', '2021-05-22 11:17:50', NULL, 0, 0, 1),
(1182, 231955, 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ KỸ THUẬT MTS', '0314195529', '2021-05-22 11:17:50', '2021-05-22 11:17:50', NULL, 0, 0, 1),
(1183, 231956, 'CÔNG TY TNHH KỸ THUẬT SỐ PHƯƠNG BẮC', '0108946995', '2021-05-22 11:17:50', '2021-05-22 11:17:50', NULL, 0, 0, 1),
(1184, 231957, 'CÔNG TY CỔ PHẦN THƯƠNG MẠI TỔNG HỢP ĐẠI DUYÊN HẢI', '0200578165', '2021-05-22 11:17:52', '2021-05-22 11:17:52', NULL, 0, 0, 1),
(1185, 231958, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN MAY SONG NGỌC', '0302017338', '2021-05-22 11:17:53', '2021-05-22 11:17:53', NULL, 0, 0, 1),
(1186, 231959, 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI TRUYỀN THÔNG SÁU THÁNG CHÍN', '0316789126', '2021-05-22 11:17:53', '2021-05-22 11:17:53', NULL, 0, 0, 1),
(1187, 231960, 'CÔNG TY TNHH LAKSANA', '1801498438', '2021-05-22 11:17:54', '2021-05-22 11:17:54', NULL, 0, 0, 1),
(1188, 231961, 'CÔNG TY TNHH DỊCH VỤ DU LỊCH PHƯƠNG HƯỚNG', '0107446492', '2021-05-22 11:17:54', '2021-05-22 11:17:54', NULL, 0, 0, 1),
(1189, 231962, 'CÔNG TY TNHH NGỌC ĐIỂM', '4101593314', '2021-05-22 11:17:55', '2021-05-22 11:17:55', NULL, 0, 0, 1),
(1190, 231963, 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ SẢN XUẤT BÌNH AN AN', '3603687677', '2021-05-22 11:17:55', '2021-05-22 11:17:55', NULL, 0, 0, 1),
(1191, 231964, 'CÔNG TY TNHH THƯƠNG MẠI VÀ ĐẦU TƯ XÂY DỰNG NAM HƯNG', '0108914288', '2021-05-22 11:17:56', '2021-05-22 11:17:56', NULL, 0, 0, 1),
(1192, 231965, 'CÔNG TY TNHH TƯ VẤN VÀ ĐẦU TƯ XÂY DỰNG 988', '2400858082', '2021-05-22 11:17:56', '2021-05-22 11:17:56', NULL, 0, 0, 1),
(1193, 231966, 'CỬA HÀNG CÔNG BINH', '578002983', '2021-05-22 11:17:57', '2021-05-22 11:17:57', NULL, 0, 0, 1),
(1194, 231967, 'CÔNG TY TNHH ĐẦU TƯ VÀ CÔNG NGHỆ ALPHA', '0108292862', '2021-05-22 11:17:59', '2021-05-22 11:17:59', NULL, 0, 0, 1),
(1195, 231968, 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ THƯƠNG MẠI QUANG ĐẠT', '4700280409', '2021-05-22 11:17:59', '2021-05-22 11:17:59', NULL, 0, 0, 1),
(1196, 231969, 'CÔNG TY TNHH XÂY DỰNG NGUYỆT PHƯƠNG', '2200736143', '2021-05-22 11:18:00', '2021-05-22 11:18:00', NULL, 0, 0, 1),
(1197, 231970, 'CÔNG TY TNHH ĐẦU TƯ THƯƠNG MẠI QUẢNG CÁO VÀ NỘI THẤT TÂM AN PHÁT', '0108363584', '2021-05-22 11:18:00', '2021-05-22 11:18:00', NULL, 0, 0, 1),
(1198, 231971, 'CÔNG TY CỔ PHẦN TƯ VẤN KHẢO SÁT VÀ XỬ LÝ NỀN MÓNG CÔNG TRÌNH', '5700602591', '2021-05-22 11:18:00', '2021-05-22 11:18:00', NULL, 0, 0, 1),
(1199, 231972, 'CÔNG TY CỔ PHẦN THƯƠNG MẠI DỊCH VỤ XÂY LẮP VIỆT PHÚ', '0311733320', '2021-05-22 11:18:01', '2021-05-22 11:18:01', NULL, 0, 0, 1),
(1200, 231973, 'CÔNG TY TNHH XÂY DỰNG ĐẠI KIẾN MINH', '0315702098', '2021-05-22 11:18:01', '2021-05-22 11:18:01', NULL, 0, 0, 1),
(1201, 231974, 'CÔNG TY TNHH CÔNG NGHỆ MỚI GOLDEN EYES', '0107450668', '2021-05-22 11:18:02', '2021-05-22 11:18:02', NULL, 0, 0, 1),
(1202, 231975, 'CÔNG TY TNHH XÂY DỰNG QUỐC MẠNH', '1602141754', '2021-05-22 11:18:02', '2021-05-22 11:18:02', NULL, 0, 0, 1),
(1203, 231976, 'CÔNG TY CỔ PHẦN JIVC', '0102399369', '2021-05-22 11:18:03', '2021-05-22 11:18:03', NULL, 0, 0, 1),
(1204, 231977, 'CÔNG TY TNHH TƯ VẤN & ĐTXD BẮC TRUNG BỘ', '2901885400', '2021-05-22 11:18:05', '2021-05-22 11:18:05', NULL, 0, 0, 1),
(1205, 231978, 'CÔNG TY TNHH TOÀN LINH PHÁT', '0313088732', '2021-05-22 11:18:05', '2021-05-22 11:18:05', NULL, 0, 0, 1),
(1206, 231979, 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ ĐẠT HOÀN ANH', '0106098429', '2021-05-22 11:18:06', '2021-05-22 11:18:06', NULL, 0, 0, 1),
(1207, 231980, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN MBH VIỆT NAM', '0315204141', '2021-05-22 11:18:06', '2021-05-22 11:18:06', NULL, 0, 0, 1),
(1208, 231981, 'CÔNG TY TNHH THƯƠNG MẠI QUỐC TẾ VÀ DỊCH VỤ TỔNG HỢP VIỆT NHẬT', '0108069399', '2021-05-22 11:18:07', '2021-05-22 11:18:07', NULL, 0, 0, 1),
(1209, 231982, 'CÔNG TY TNHH CAS MEDIA', '0109263991', '2021-05-22 11:18:07', '2021-05-22 11:18:07', NULL, 0, 0, 1),
(1210, 231983, 'CÔNG TY TNHH CƠ ĐIỆN LẠNH E&C', '3702510889', '2021-05-22 11:18:08', '2021-05-22 11:18:08', NULL, 0, 0, 1),
(1211, 231984, 'CÔNG TY CỔ PHẦN UV', '0305110871', '2021-05-22 11:18:08', '2021-05-22 11:18:08', NULL, 0, 0, 1),
(1212, 231985, 'CÔNG TY CỔ PHẦN PHÁT TRIỂN THƯƠNG MẠI TÍN PHÁT', '0108390210', '2021-05-22 11:18:08', '2021-05-22 11:18:08', NULL, 0, 0, 1),
(1213, 231986, 'CÔNG TY TNHH SƠN TRƯỜNG XUÂN', '4001092177', '2021-05-22 11:18:09', '2021-05-22 11:18:09', NULL, 0, 0, 1),
(1214, 231987, 'CÔNG TY TNHH GREEN PRODUCTS VIỆT NAM', '0316804046', '2021-05-22 11:18:11', '2021-05-22 11:18:11', NULL, 0, 0, 1),
(1215, 231988, 'CÔNG TY CP TƯ VẤN XÂY DỰNG TỔNG HỢP HÒA PHÁT', '3002031993', '2021-05-22 11:18:11', '2021-05-22 11:18:11', NULL, 0, 0, 1),
(1216, 231989, 'CÔNG TY CỔ PHẦN TẬP ĐOÀN ĐẦU TƯ XÂY DỰNG NAM SÔNG HỒNG', '0104215708', '2021-05-22 11:18:12', '2021-05-22 11:18:12', NULL, 0, 0, 1),
(1217, 231990, 'CÔNG TY TNHH ĐẦU TƯ VÀ PHÁT TRIỂN MINH QUÂN', '2400811197', '2021-05-22 11:18:12', '2021-05-22 11:18:12', NULL, 0, 0, 1),
(1218, 231991, 'CÔNG TY TNHH TƯ VẤN ĐẦU TƯ VÀ THƯƠNG MẠI QUỐC TẾ AN HƯNG', '0108127925', '2021-05-22 11:18:13', '2021-05-22 11:18:13', NULL, 0, 0, 1),
(1219, 231992, 'CÔNG TY TNHH QUANG NGUYEN ART', '5400481794', '2021-05-22 11:18:13', '2021-05-22 11:18:13', NULL, 0, 0, 1),
(1220, 231993, 'CÔNG TY TNHH ĐẦU TƯ XÂY DỰNG VÀ PHÁT TRIỂN THƯƠNG MẠI VĨNH PHÚC', '2500654597', '2021-05-22 11:18:14', '2021-05-22 11:18:14', NULL, 0, 0, 1),
(1221, 231994, 'CÔNG TY TNHH DỊCH VỤ CÔNG NGHỆ THÀNH ĐẠT PHÁT', '0107747789', '2021-05-22 11:18:14', '2021-05-22 11:18:14', NULL, 0, 0, 1),
(1222, 231995, 'CÔNG TY TNHH TƯ VẤN XÂY DỰNG CÔNG TRÌNH ĐẠI QUANG', '3702631989', '2021-05-22 11:18:15', '2021-05-22 11:18:15', NULL, 0, 0, 1),
(1223, 231996, 'CÔNG TY TNHH MTV PCCC ANH TÂM', '2001295078', '2021-05-22 11:18:15', '2021-05-22 11:18:15', NULL, 0, 0, 1),
(1224, 231997, 'CÔNG TY TNHH CÂY XANH, DỪA BA NGỌN THÀNH THÀNH TÀI', '1301070919', '2021-05-22 11:18:17', '2021-05-22 11:18:17', NULL, 0, 0, 1),
(1225, 231998, 'CÔNG TY TNHH SƠN HẠ LONG', '0313168988', '2021-05-22 11:18:17', '2021-05-22 11:18:17', NULL, 0, 0, 1),
(1226, 231999, 'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ DỊCH VỤ KỸ THUẬT DBM', '0104280048', '2021-05-22 11:18:18', '2021-05-22 11:18:18', NULL, 0, 0, 1),
(1227, 232000, 'CÔNG TY CỔ PHẦN SANG-A ARCHITECTS & PARTNER', '0106342765', '2021-05-22 11:18:18', '2021-05-22 11:18:18', NULL, 0, 0, 1),
(1228, 232001, 'CÔNG TY TNHH TƯ VẤN VÀ XÂY LẮP NAM SƠN', '0107777462', '2021-05-22 11:18:19', '2021-05-22 11:18:19', NULL, 0, 0, 1),
(1229, 232002, 'CÔNG TY TNHH MỘT THÀNH VIÊN SẢN XUẤT KINH DOANH QUẢNG CÁO NỤ CƯỜI VIỆT', '0311870711', '2021-05-22 11:18:19', '2021-05-22 11:18:19', NULL, 0, 0, 1),
(1230, 232003, 'HỘ KINH DOANH TỔNG HỢP NGUYỄN CÔNG TRỰC', '5900708972', '2021-05-22 11:18:20', '2021-05-22 11:18:20', NULL, 0, 0, 1),
(1231, 232004, 'CÔNG TY TNHH THỦY SẢN SÔNG LÔ', '2600926131', '2021-05-22 11:18:20', '2021-05-22 11:18:20', NULL, 0, 0, 1),
(1232, 232005, 'CÔNG TY TNHH THƯƠNG MẠI - DỊCH VỤ HOÀNG PHÚC', '3501535354', '2021-05-22 11:18:21', '2021-05-22 11:18:21', NULL, 0, 0, 1),
(1233, 232006, 'CÔNG TY TNHH CDM VIỆT NAM', '0109545883', '2021-05-22 11:18:21', '2021-05-22 11:18:21', NULL, 0, 0, 1),
(1234, 232007, 'CÔNG TY TNHH ĐẦU TƯ VÀ XÂY DỰNG CÔNG TRÌNH HÀ AN', '0316629556', '2021-05-22 11:18:23', '2021-05-22 11:18:23', NULL, 0, 0, 1),
(1235, 232008, 'CÔNG TY TNHH ANDASHUN AMAZING LOGISTICS (VIỆT NAM)', '0315699328', '2021-05-22 11:18:24', '2021-05-22 11:18:24', NULL, 0, 0, 1),
(1236, 232009, 'CÔNG TY CỔ PHẦN CÔNG NGHỆ AZ ONE VIỆT NAM', '0108189329', '2021-05-22 11:18:24', '2021-05-22 11:18:24', NULL, 0, 0, 1),
(1237, 232010, 'CÔNG TY TNHH TÀI NGUYÊN MÔI TRƯỜNG XÂY DỰNG ĐIỆN CÔNG NGHỆ SIPOLY', '4001203271', '2021-05-22 11:18:24', '2021-05-22 11:18:24', NULL, 0, 0, 1),
(1238, 232011, 'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN XÂY DỰNG GIA HƯNG', '4101576904', '2021-05-22 11:18:25', '2021-05-22 11:18:25', NULL, 0, 0, 1),
(1239, 232012, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN QUẢNG CÁO HOÀNG KHIÊM', '3502348597', '2021-05-22 11:18:25', '2021-05-22 11:18:25', NULL, 0, 0, 1),
(1240, 231907, 'CÔNG TY TNHH XÂY DỰNG VÀ THƯƠNG MẠI VẬN TẢI PHƯƠNG LINH', '2500297962', '2021-05-22 11:18:30', '2021-05-22 11:18:30', NULL, 0, 0, 1),
(1241, 231896, 'Công ty TNHH MTV Chăn nuôi Quốc Trung', '3301610477', '2021-05-22 11:18:35', '2021-05-22 11:18:35', NULL, 0, 0, 1),
(1242, 231899, 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ XÂY DỰNG MAX WAVE', '2400884981', '2021-05-22 11:18:36', '2021-05-22 11:18:36', NULL, 0, 0, 1),
(1243, 231905, 'CÔNG TY CỔ PHẦN DOANH NÔNG', '0109431269', '2021-05-22 11:19:18', '2021-05-22 11:19:18', NULL, 0, 0, 1),
(1244, 231906, 'CÔNG TY TNHH MÔI TRƯỜNG TÂN HƯNG PHÁT', '0901056262', '2021-05-22 11:19:39', '2021-05-22 11:19:39', NULL, 0, 0, 1),
(1245, 231898, 'CÔNG TY CỔ PHẦN DỊCH VỤ VÀ GIẢI PHÁP CÔNG NGHIỆP VIỆT NAM', '0104092654', '2021-05-22 11:19:55', '2021-05-22 11:19:55', NULL, 0, 0, 1),
(1246, 195573, 'CÔNG TY TNHH MTV VÀ DV THANH BẢO HÀ', '3901218818', '2021-05-22 11:20:41', '2021-05-22 11:20:41', NULL, 0, 0, 1),
(1247, 195574, 'CÔNG TY TNHH ĐẦU TƯ VÀ XÂY DỰNG ĐỨC THẮNG HÀ TRUNG', '2802911804', '2021-05-22 11:20:43', '2021-05-22 11:20:43', NULL, 0, 0, 1),
(1248, 195575, 'CÔNG TY CỔ PHẦN FILCO VIỆT NAM', '0109199873', '2021-05-22 11:20:43', '2021-05-22 11:20:43', NULL, 0, 0, 1),
(1249, 195576, 'CÔNG TY CỔ PHẦN PACS VIỆT NAM', '0106598460', '2021-05-22 11:20:44', '2021-05-22 11:20:44', NULL, 0, 0, 1),
(1250, 195577, 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ VẬN TẢI TÙNG ANH', '0104598514', '2021-05-22 11:20:44', '2021-05-22 11:20:44', NULL, 0, 0, 1),
(1251, 195578, 'CÔNG TY TNHH SX TM HIỆP HƯNG', '1201645345', '2021-05-22 11:20:45', '2021-05-22 11:20:45', NULL, 0, 0, 1),
(1252, 195579, 'CÔNG TY TNHH TƯ VẤN XÂY DỰNG TCON', '6001667559', '2021-05-22 11:20:45', '2021-05-22 11:20:45', NULL, 0, 0, 1),
(1253, 195580, 'CÔNG TY TNHH XÂY DỰNG T&T HÀ NAM', '0700843894', '2021-05-22 11:20:45', '2021-05-22 11:20:45', NULL, 0, 0, 1),
(1254, 195581, 'CÔNG TY CỔ PHẦN THIẾT BỊ PHÒNG CHÁY CHỮA CHÁY V.H.T', '0310674457', '2021-05-22 11:20:46', '2021-05-22 11:20:46', NULL, 0, 0, 1),
(1255, 195582, 'CÔNG TY TNHH QUẢN LÝ KHÁCH SẠN T&T', '0108131696', '2021-05-22 11:20:46', '2021-05-22 11:20:46', NULL, 0, 0, 1),
(1256, 195583, 'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN XUẤT NHẬP KHẨU VẠN THÀNH', '0316657560', '2021-05-22 11:20:47', '2021-05-22 11:20:47', NULL, 0, 0, 1),
(1257, 195584, 'CÔNG TY TNHH NAM VIỆT ĐẮK NÔNG', '6400328420', '2021-05-22 11:20:49', '2021-05-22 11:20:49', NULL, 0, 0, 1),
(1258, 195585, 'CÔNG TY TNHH XÂY DỰNG VÀ VẬN TẢI NGUYỄN VINH', '1201471434', '2021-05-22 11:20:49', '2021-05-22 11:20:49', NULL, 0, 0, 1),
(1259, 195586, 'CÔNG TY TNHH CHÂU ANH CÁT', '6001718891', '2021-05-22 11:20:50', '2021-05-22 11:20:50', NULL, 0, 0, 1),
(1260, 195587, 'CÔNG TY CỔ PHẦN PHÁT TRIỂN THƯƠNG MẠI VÀ DỊCH VỤ TRƯỜNG SINH', '2700842703', '2021-05-22 11:20:50', '2021-05-22 11:20:50', NULL, 0, 0, 1),
(1261, 195588, 'CÔNG TY TNHH NÔNG LÂM NGHIỆP THANH BÌNH', '0200720830', '2021-05-22 11:20:50', '2021-05-22 11:20:50', NULL, 0, 0, 1),
(1262, 195589, 'CÔNG TY TNHH THƯƠNG MẠI VÀ XÂY LẮP NAM YÊN', '0304364545', '2021-05-22 11:20:51', '2021-05-22 11:20:51', NULL, 0, 0, 1),
(1263, 195590, 'Công ty TNHH xây dựng và thương mại Ngân Hằng Phát', '2802538565', '2021-05-22 11:20:51', '2021-05-22 11:20:51', NULL, 0, 0, 1),
(1264, 195591, 'CÔNG TY TNHH ĐẦU TƯ VÀ XÂY DỰNG TỔNG HỢP AN THÀNH', '4101492027', '2021-05-22 11:20:52', '2021-05-22 11:20:52', NULL, 0, 0, 1),
(1265, 195592, 'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN XÂY DỰNG THANH HÒA', '0700848067', '2021-05-22 11:20:52', '2021-05-22 11:20:52', NULL, 0, 0, 1),
(1266, 195593, 'CÔNG TY TNHH IN ẤN BAO BÌ HƯNG PHÁT', '3702792383', '2021-05-22 11:20:52', '2021-05-22 11:20:52', NULL, 0, 0, 1),
(1267, 195594, 'CÔNG TY CỔ PHẦN ĐẦU TƯ MEC VIỆT NAM', '0107604050', '2021-05-22 11:20:54', '2021-05-22 11:20:54', NULL, 0, 0, 1),
(1268, 195595, 'CÔNG TY TNHH KỸ THUẬT ĐIỆN TỰ ĐỘNG SECO', '0313640463', '2021-05-22 11:20:55', '2021-05-22 11:20:55', NULL, 0, 0, 1),
(1269, 195596, 'CÔNG TY TNHH TỔNG HỢP HUY HẠNH', '3801250374', '2021-05-22 11:20:55', '2021-05-22 11:20:55', NULL, 0, 0, 1),
(1270, 195597, 'VIỆN CÔNG NGHỆ VÀ SỨC KHỎE', '0108767883', '2021-05-22 11:20:55', '2021-05-22 11:20:55', NULL, 0, 0, 1),
(1271, 195598, 'CÔNG TY TNHH MTV ĐỨC HOÀN', '6200105385', '2021-05-22 11:20:56', '2021-05-22 11:20:56', NULL, 0, 0, 1),
(1272, 195599, 'CÔNG TY TNHH HD 181 QUỐC KHÁNH', '4601562931', '2021-05-22 11:20:56', '2021-05-22 11:20:56', NULL, 0, 0, 1),
(1273, 195600, 'CÔNG TY CỔ PHẦN TƯ VẤN VÀ XÂY LẮP CƯỜNG THÀNH', '0106666103', '2021-05-22 11:20:57', '2021-05-22 11:20:57', NULL, 0, 0, 1),
(1274, 195601, 'CÔNG TY TNHH TRUYỀN THÔNG VÀ THƯƠNG MẠI GITI VIỆT NAM', '0108965966', '2021-05-22 11:20:57', '2021-05-22 11:20:57', NULL, 0, 0, 1),
(1275, 195602, 'Trung tâm Cá giống Hải Đức', '8318337401', '2021-05-22 11:20:57', '2021-05-22 11:20:57', NULL, 0, 0, 1),
(1276, 195603, 'CÔNG TY CỔ PHẦN CÔNG NGHỆ VÀ GIẢI PHÁP GIÁO DỤC EDUSO', '0108768439', '2021-05-22 11:20:58', '2021-05-22 11:20:58', NULL, 0, 0, 1),
(1277, 195604, 'CÔNG TY CỔ PHẦN DỊCH VỤ & KỸ THUẬT ETP VIỆT NAM', '0108205161', '2021-05-22 11:21:00', '2021-05-22 11:21:00', NULL, 0, 0, 1),
(1278, 195605, 'CÔNG TY TNHH THỜI TRANG LEVADO VIỆT NAM', '0109257596', '2021-05-22 11:21:00', '2021-05-22 11:21:00', NULL, 0, 0, 1),
(1279, 195606, 'CÔNG TY TNHH TMDV ANH NGUYÊN PHÁT', '3702606076', '2021-05-22 11:21:01', '2021-05-22 11:21:01', NULL, 0, 0, 1),
(1280, 195607, 'CÔNG TY CỔ PHẦN DƯỢC - SÂM QUẢNG NAM', '4001216792', '2021-05-22 11:21:01', '2021-05-22 11:21:01', NULL, 0, 0, 1),
(1281, 195608, 'CÔNG TY TNHH TƯ VẤN THIẾT KẾ VÀ XÂY DỰNG HME VIỆT NAM', '0106877231', '2021-05-22 11:21:02', '2021-05-22 11:21:02', NULL, 0, 0, 1),
(1282, 195609, 'CÔNG TY CỔ PHẦN TẬP ĐOÀN DUBAI', '0107616183', '2021-05-22 11:21:02', '2021-05-22 11:21:02', NULL, 0, 0, 1),
(1283, 195610, 'CÔNG TY TNHH SẢN XUẤT VÀ THƯƠNG MẠI XÂY DỰNG THÀNH PHÁT.', '0108525524', '2021-05-22 11:21:03', '2021-05-22 11:21:03', NULL, 0, 0, 1),
(1284, 195611, 'DƯƠNG THỊ HẠNH', '2700891764', '2021-05-22 11:21:03', '2021-05-22 11:21:03', NULL, 0, 0, 1),
(1285, 195612, 'CÔNG TY CỔ PHẦN TƯ VẤN VÀ ĐẦU TƯ XÂY DỰNG ĐIỆN 6', '0106702182', '2021-05-22 11:21:03', '2021-05-22 11:21:03', NULL, 0, 0, 1),
(1286, 195613, 'CÔNG TY TNHH THƯƠNG MẠI , DỊCH VỤ VÀ XÂY DỰNG GIA NHẬT', '4201661529', '2021-05-22 11:21:05', '2021-05-22 11:21:05', NULL, 0, 0, 1),
(1287, 195614, 'CÔNG TY TNHH ĐẦU TƯ THƯƠNG MẠI TÂN THÀNH CHÂU', '3502373057', '2021-05-22 11:21:06', '2021-05-22 11:21:06', NULL, 0, 0, 1),
(1288, 195615, 'CÔNG TY TNHH THƯƠNG MẠI - DỊCH VỤ KỸ THUẬT ĐẠI TÍN', '0309367123', '2021-05-22 11:21:06', '2021-05-22 11:21:06', NULL, 0, 0, 1),
(1289, 195616, 'CÔNG TY TNHH MTV VẬN TẢI 179', '3002027411', '2021-05-22 11:21:07', '2021-05-22 11:21:07', NULL, 0, 0, 1),
(1290, 195617, 'CÔNG TY TNHH XÂY DỰNG THƯƠNG MẠI LÊ PHÁT', '0106677602', '2021-05-22 11:21:07', '2021-05-22 11:21:07', NULL, 0, 0, 1),
(1291, 195618, 'Hộ kinh doanh Tạ Thị Điệp', '81910211644', '2021-05-22 11:21:07', '2021-05-22 11:21:07', NULL, 0, 0, 1),
(1292, 195619, 'CÔNG TY CP PHẦN MỀM DIỆT VIRUS BKAV', '0108182242', '2021-05-22 11:21:08', '2021-05-22 11:21:08', NULL, 0, 0, 1),
(1293, 195620, 'CÔNG TY TNHH TV XD TRƯỜNG PHÁT', '2200792860', '2021-05-22 11:21:08', '2021-05-22 11:21:08', NULL, 0, 0, 1),
(1294, 195621, 'CÔNG TY TNHH XUẤT NHẬP KHẨU THIÊN HÀ THÀNH', '4900789218', '2021-05-22 11:21:08', '2021-05-22 11:21:08', NULL, 0, 0, 1),
(1295, 195622, 'DOANH NGHIỆP TƯ NHÂN NAM TƯ.', '3200467157', '2021-05-22 11:21:09', '2021-05-22 11:21:09', NULL, 0, 0, 1),
(1296, 195623, 'CÔNG TY TNHH ĐẦU TƯ XÂY DỰNG VÀ THƯƠNG MẠI DỊCH VỤ SƠN TIẾN', '0107954778', '2021-05-22 11:21:11', '2021-05-22 11:21:11', NULL, 0, 0, 1),
(1297, 195624, 'CÔNG TY TNHH DỊCH VỤ VẬN TẢI XĂNG DẦU TIỀN GIANG', '1201453957', '2021-05-22 11:21:11', '2021-05-22 11:21:11', NULL, 0, 0, 1),
(1298, 195625, 'CÔNG TY CỔ PHẦN XUẤT NHẬP KHẨU RAU QUẢ', '0300691220', '2021-05-22 11:21:12', '2021-05-22 11:21:12', NULL, 0, 0, 1),
(1299, 195626, 'CÔNG TY TNHH ĐỨC MINH YB', '5200910929', '2021-05-22 11:21:12', '2021-05-22 11:21:12', NULL, 0, 0, 1),
(1300, 195627, 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ MÁY TÍNH TRẦN NGUYỄN', '0309183398', '2021-05-22 11:21:12', '2021-05-22 11:21:12', NULL, 0, 0, 1),
(1301, 195628, 'CÔNG TY TNHH XÂY DỰNG VÀ PHÁT TRIỂN HẠ TẦNG ÁNH DƯƠNG', '0101287694', '2021-05-22 11:21:13', '2021-05-22 11:21:13', NULL, 0, 0, 1),
(1302, 195629, 'CÔNG TY TNHH ĐẦU TƯ THƯƠNG MẠI VÀ DỊCH VỤ GIA MINH', '2700873250', '2021-05-22 11:21:13', '2021-05-22 11:21:13', NULL, 0, 0, 1),
(1303, 231901, 'CÔNG TY TNHH MTV MICRO PRECISION CALIBRATION VIỆT NAM', '0311586524', '2021-05-22 11:21:19', '2021-05-22 11:21:19', NULL, 0, 0, 1),
(1304, 231902, 'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI & VẬN TẢI TRẦN ANH', '0201770538', '2021-05-22 11:21:49', '2021-05-22 11:21:49', NULL, 0, 0, 1),
(1305, 231903, 'DOANH NGHIỆP TƯ NHÂN XUÂN THẮNG', '5200432239', '2021-05-22 11:21:56', '2021-05-22 11:21:56', NULL, 0, 0, 1),
(1306, 231900, 'CÔNG TY CỔ PHẦN GIẢI PHÁP VĂN PHÒNG S-OFFICE', '0108914961', '2021-05-22 11:22:02', '2021-05-22 11:22:02', NULL, 0, 0, 1),
(1307, 57286, 'CÔNG TY TNHH TÂN AN BẢO', '1800669426', '2021-05-22 11:22:37', '2021-05-22 11:22:37', NULL, 0, 0, 1),
(1308, 57287, 'CƠ SỞ VI TÍNH KẾ PHONG', '3800366129', '2021-05-22 11:22:37', '2021-05-22 11:22:37', NULL, 0, 0, 1),
(1309, 200970, 'VIETTEL KHÁNH HÒA', '0100109106066', '2021-05-22 11:22:38', '2021-05-22 11:22:38', 'Z105468', 1, 0, 0),
(1310, 199691, 'Công ty CP Đầu tư Phát triển Công nghệ Bia – Rượu – NGK Hà Nội', '0102104745', '2021-05-22 11:22:39', '2021-05-22 11:22:39', 'Z105474', 1, 0, 0),
(1311, 195678, 'Văn phòng Điều phối Chương trình xây dựng Nông thôn mới Thanh Hóa', '2801879273', '2021-05-22 11:22:39', '2021-05-22 11:22:39', 'Z105478', 1, 0, 0),
(1312, 220815, 'Phòng Giáo dục và Đào tạo Lương Sơn', '5400320606', '2021-05-22 11:22:40', '2021-05-22 11:22:40', 'Z105499', 1, 0, 0),
(1313, 225820, 'Trung tâm Văn hóa tỉnh Nghệ An', '2900641352', '2021-05-22 11:22:41', '2021-05-22 11:22:41', 'Z105494', 1, 0, 0),
(1314, 202386, 'Trung tâm Y tế thành phố Lai Châu', '6200017234006', '2021-05-22 11:22:41', '2021-05-22 11:22:41', 'Z105497', 1, 0, 0),
(1315, 213036, 'NGÂN HÀNG TMCP ĐẦU TƯ VÀ PHÁT TRIỂN VIỆT NAM CHI NHÁNH TRÀ VINH', '0100150619062', '2021-05-22 11:22:42', '2021-05-22 11:22:42', 'Z105504', 1, 0, 0),
(1316, 232339, 'Phòng Giáo dục và Đào tạo quận Cẩm Lệ', '0401285948', '2021-05-22 11:22:42', '2021-05-22 11:22:42', 'Z105505', 1, 0, 0),
(1317, 221690, 'Nhà xuất bản Phụ nữ Việt Nam', '0100111200', '2021-05-22 11:22:43', '2021-05-22 11:22:43', 'Z105454', 1, 0, 0),
(1318, 207552, 'ỦY BAN NHÂN DÂN XÃ NGHĨA SƠN', '0600148590', '2021-05-22 11:22:45', '2021-05-22 11:22:45', 'Z105300', 1, 0, 0),
(1319, 196853, 'ĐOÀN NGHỆ THUẬT KHMER ÁNH BÌNH MINH', '2100190911', '2021-05-22 11:22:46', '2021-05-22 11:22:46', 'Z105311', 1, 0, 0),
(1320, 204202, 'Bến xe khách tỉnh Lai Châu', '6200002742', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105317', 1, 0, 0),
(1321, 196486, 'Ban quản lý chợ và đô thị huyện Cái Nước', '2000786732', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105321', 1, 0, 0),
(1322, 197380, 'Công ty Cổ phần RYNAN Technologies Vietnam', '2100592145', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105323', 1, 0, 0),
(1323, 203892, 'Văn phòng Ủy ban nhân dân tỉnh Trà Vinh', '2100390660', '2021-05-22 11:22:47', '2021-05-22 11:22:47', 'Z105324', 1, 0, 0),
(1324, 232364, 'CÔNG TY CỔ PHẦN TƯ VẤN ĐẦU TƯ THƯƠNG MẠI XÂY DỰNG TÂN MINH ĐỨC', '3603804327', '2021-05-22 11:22:48', '2021-05-22 11:22:48', 'Z105330', 1, 0, 0),
(1325, 228726, 'CÔNG TY TNHH TƯ VẤN THIẾT KẾ VÀ QUY HOẠCH XÂY DỰNG B.M.T', '6000434093', '2021-05-22 11:22:49', '2021-05-22 11:22:49', 'Z105344', 1, 0, 0),
(1326, 207479, 'Trung Tâm Huấn luyện và Thi đấu Thể dục Thể Thao Trà Vinh', '2100190911010', '2021-05-22 11:22:50', '2021-05-22 11:22:50', 'Z105346', 1, 0, 0),
(1327, 210348, 'Ủy ban nhân dân Phường 11 Quận 8', '0301463629', '2021-05-22 11:22:51', '2021-05-22 11:22:51', 'Z105361', 1, 0, 0),
(1328, 218997, 'TRUNG TÂM ĐÀO TẠO KỸ THUẬT NGHIỆP VỤ GTVT QUẢNG NGÃI', '4300754693001', '2021-05-22 11:22:53', '2021-05-22 11:22:53', 'Z105378', 1, 0, 0),
(1329, 196117, 'Trường THCS Bàn Giản', '2500400377', '2021-05-22 11:22:53', '2021-05-22 11:22:53', 'Z105379', 1, 0, 0),
(1330, 114914, 'Công ty cổ phần tư vấn và chuyển giao công nghệ xây dựng Hà Nam', '0700243992', '2021-05-22 11:22:54', '2021-05-22 11:22:54', 'Z105394', 1, 0, 0),
(1331, 225625, 'Sở Giáo dục và Đào tạo tỉnh Bắc Kạn', '4700219683', '2021-05-22 11:22:54', '2021-05-22 11:22:54', 'Z105396', 1, 0, 0),
(1332, 212652, 'Cảng vụ Hàng hải Thừa Thiên Huế', '3300269335', '2021-05-22 11:22:55', '2021-05-22 11:22:55', 'Z105420', 1, 0, 0),
(1333, 209659, 'TRUNG TÂM Y TẾ HUYỆN VĨNH LỢI', '1900413266', '2021-05-22 11:22:55', '2021-05-22 11:22:55', 'Z105416', 1, 0, 0),
(1334, 220248, 'Chi cục Kiểm lâm tỉnh Quảng Trị', '3200283093', '2021-05-22 11:22:55', '2021-05-22 11:22:55', 'Z105417', 1, 0, 0),
(1335, 198600, 'Trường THCS Thạnh Mỹ Tây', '1600688830', '2021-05-22 11:22:56', '2021-05-22 11:22:56', 'Z105430', 1, 0, 0),
(1336, 219653, 'Trường Đại học Tài chính Kế toán', '4300401923', '2021-05-22 11:22:58', '2021-05-22 11:22:58', 'Z105437', 1, 0, 0),
(1337, 210550, 'Ngân hàng TMCP công thương Việt Nam chi nhánh Bắc Hà Nội', '0100111948077', '2021-05-22 11:22:59', '2021-05-22 11:22:59', 'Z105446', 1, 0, 0),
(1338, 222100, 'Công ty TNHH Một thành viên Khai thác Thủy lợi An Giang', '1601228667', '2021-05-22 11:22:59', '2021-05-22 11:22:59', 'Z105451', 1, 0, 0),
(1339, 227752, 'Công ty Cổ phần Phà An Giang', '1600110119', '2021-05-22 11:23:00', '2021-05-22 11:23:00', 'Z105455', 1, 0, 0),
(1340, 195686, 'Ủy ban nhân dân xã Dương Quang', '0103459885', '2021-05-22 11:23:00', '2021-05-22 11:23:00', 'Z105456', 1, 0, 0),
(1341, 209130, 'Sư đoàn 367', '0716590000000', '2021-05-22 11:23:00', '2021-05-22 11:23:00', 'Z105460', 1, 0, 0),
(1342, 216358, 'Phòng giao dịch Ngân hàng Chính sách xã hội huyên Hà Quảng, Tỉnh Cao Bằng', '0100695387028', '2021-05-22 11:23:01', '2021-05-22 11:23:01', 'Z105352', 1, 0, 0),
(1343, 195632, 'Ban quản lý rừng đặc dụng-phòng hộ ven biển', '1900450638', '2021-05-22 11:23:03', '2021-05-22 11:23:03', 'Z105299', 1, 0, 0),
(1344, 195633, 'Trung tâm dịch vụ nông nghiệp thị xã Nghi Sơn', '2802815434', '2021-05-22 11:23:03', '2021-05-22 11:23:03', 'Z104906', 1, 0, 0),
(1345, 195634, 'UỶ BAN NHÂN DÂN XÃ MƯỜNG THAN', '5300144562', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z104712', 1, 0, 0),
(1346, 195635, 'Văn phòng HĐND và UBND thị xã Sa Pa', '5300319766', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105285', 1, 0, 0),
(1347, 195636, 'Ban Tôn giáo Chính Phủ', '1052380000000', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105238', 1, 0, 0),
(1348, 195637, 'Trung tâm phát triển lâm nông nghiệp Vĩnh Phúc', '1052330000000', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105233', 1, 0, 0),
(1349, 195638, 'Ủy ban nhân dân xã Hòa Sơn', '1052440000000', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z105244', 1, 0, 0),
(1350, 195639, 'CÔNG TY TNHH NAM THÔNG BẢO', '0304198457', '2021-05-22 11:23:04', '2021-05-22 11:23:04', 'Z100424', 1, 0, 0),
(1351, 195640, 'Thư viện Quảng Nam', '4000932708', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105187', 1, 0, 0),
(1352, 195641, 'Phòng Kinh tế quận Hải Châu', '0400259286', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105158', 1, 0, 0),
(1353, 195642, 'CÔNG TY TNHH TÍN NGHĨA VIỆT', '0700843816', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105164', 1, 0, 0),
(1354, 57295, 'Công ty TNHH An Phúc 116', '5200900769', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105168', 1, 0, 0),
(1355, 195643, 'UBND xã Yên Dương', '1051700000000', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105170', 1, 0, 0),
(1356, 195644, 'Công ty TNHH phát triển khoa học công nghệ Linh Lộc', '3001738807', '2021-05-22 11:23:05', '2021-05-22 11:23:05', 'Z105171', 1, 0, 0),
(1357, 195645, 'Ủy ban nhân dân xã Cát Trinh', '4100269234', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105173', 1, 0, 0),
(1358, 195646, 'Trung tâm Môi trường và Đô thị huyện Triệu Phong', '3200599509', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105176', 1, 0, 0),
(1359, 195647, 'Huyện ủy Cẩm Xuyên', '1051770000000', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105177', 1, 0, 0),
(1360, 195648, 'Trung tâm Dạy nghề và Đào tạo lái xe thuộc Trường Đại học Cảnh sát nhân dân', '0310942240', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105179', 1, 0, 0),
(1361, 57331, 'CÔNG TY TNHH QUẢN LÝ XÂY DỰNG HƯNG THỊNH', '0314643354', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105180', 1, 0, 0),
(1362, 195649, 'ĐÀI TRUYỀN THANH TRUYỀN HÌNH TỈNH PHÚ THỌ', '2600539213', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105184', 1, 0, 0),
(1363, 57353, 'CÔNG TY TNHH MTV TƯ VẤN - ĐẦU TƯ - XÂY DỰNG NHD', '2100596460', '2021-05-22 11:23:06', '2021-05-22 11:23:06', 'Z105186', 1, 0, 0),
(1364, 195650, 'Ủy ban nhân dân xã Kon Đào', '6100138965', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105190', 1, 0, 0),
(1365, 195651, 'Công ty TNHH Công nghệ sinh học xanh Nhật Lan', '0108038305', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105191', 1, 0, 0),
(1366, 195652, 'Trường mầm non Xuân Thái', '2801235769', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105193', 1, 0, 0),
(1367, 195653, 'Trường mầm non Cán Khê', '2801237364', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105194', 1, 0, 0),
(1368, 195654, 'Trung tâm Dịch vụ- Kỹ thuật Nông nghiệp huyện Tân Yên', '2400855719', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105195', 1, 0, 0),
(1369, 195655, 'Trường tiểu học Thanh Tân 2', '2801235582', '2021-05-22 11:23:07', '2021-05-22 11:23:07', 'Z105196', 1, 0, 0),
(1370, 195656, 'Ủy ban nhân dân thị trấn Prao', '4000291596', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105197', 1, 0, 0),
(1371, 195657, 'TRUNG TÂM PHÁP Y TỈNH BẮC KẠN', '4700119671011', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105205', 1, 0, 0),
(1372, 195658, 'Trung tâm Đào tạo và Sát hạch lái xe cơ giới đường bộ', '5300132694001', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105206', 1, 0, 0),
(1373, 195659, 'UBND phường Hoà Mạc, thị xã Duy Tiên, tỉnh Hà Nam', '1052080000000', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105208', 1, 0, 0),
(1374, 195660, 'Trường mẫu giáo An Thạnh Trung', '1600824402', '2021-05-22 11:23:08', '2021-05-22 11:23:08', 'Z105219', 1, 0, 0),
(1375, 195661, 'UBND phường Đông Sơn, thành phố Thanh Hóa', '2800773108', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105215', 1, 0, 0),
(1376, 195662, 'Công ty CP Vận Tải Xăng dầu VITACO', '0300545501', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105216', 1, 0, 0),
(1377, 195663, 'Phòng Nội vụ huyện Nguyên Bình, tỉnh Cao Bằng', '4800176063', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105218', 1, 0, 0),
(1378, 195664, 'Cục Quản lý khai thác biển và hải đảo', '1052200000000', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105220', 1, 0, 0),
(1379, 195665, 'Liên hiệp các Hội Khoa học và Kỹ thuật tỉnh Ninh Bình', '1052210000000', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105221', 1, 0, 0),
(1380, 195666, 'Phòng Lao động Thương binh và Xã hội huyện Củ Chi', '0307268286', '2021-05-22 11:23:09', '2021-05-22 11:23:09', 'Z105222', 1, 0, 0),
(1381, 189565, 'Công ty Cổ phần tư vấn xây dựng và quản lý dự án Lâm Giang', '0106028936', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105226', 1, 0, 0),
(1382, 195667, 'Công ty cổ phần thương mại và xây dựng Đại Việt', '0700842812', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105229', 1, 0, 0),
(1383, 57437, 'Công ty TNHH kiến trúc xây dựng Phú H?', '2601057861', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105230', 1, 0, 0),
(1384, 195668, 'VIỆN KIỂM SÁT NHÂN DÂN HUYỆN TAM BÌNH', '1500628605', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105235', 1, 0, 0),
(1385, 195669, 'Tiểu học Ngọc Thanh A', '2500314583', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105236', 1, 0, 0),
(1386, 91328, 'Công ty Cổ phần Giải pháp KYC', '0108273669', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105241', 1, 0, 0),
(1387, 195670, 'Trung tâm y tế huyện Văn Lâm', '0900453387', '2021-05-22 11:23:10', '2021-05-22 11:23:10', 'Z105242', 1, 0, 0),
(1388, 195671, 'TRUNG TÂM Y TẾ HUYỆN SÔNG HINH', '4401031210', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105243', 1, 0, 0),
(1389, 195672, 'KHÁCH SẠN THIÊN HỒNG', '0300625210014', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105245', 1, 0, 0),
(1390, 195673, 'Bảo tàng tỉnh Gia Lai', '1052460000000', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105246', 1, 0, 0),
(1391, 195674, 'Phòng Giáo dục và Đào tạo huyện Hoài Đức', '0104009014', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105247', 1, 0, 0),
(1392, 79019, 'CÔNG TY TRÁCH NHIỆM HỮU HẠN MỘT THÀNH VIÊN CÔNG TRÌNH ĐÔ THỊ KON TUM', '6101266208', '2021-05-22 11:23:11', '2021-05-22 11:23:11', 'Z105248', 1, 0, 0),
(1393, 195675, 'Ủy ban nhân dân xã Kim Đông', '1052520000000', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105252', 1, 0, 0),
(1394, 195676, 'Trường Chính Trị tỉnh Đắk Lắk', '6000391393', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105253', 1, 0, 0),
(1395, 195677, 'Chi cục Thuế khu vực Hồng Bàng An Dương', '0201990886', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105256', 1, 0, 0),
(1396, 195678, 'Văn phòng Điều phối Chương trình Xây dựng Nông thôn mới tỉnh Thanh Hóa', '2801879273', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105257', 1, 0, 0),
(1397, 195580, 'Công ty TNHH Xây dựng T&T Hà Nam', '0700843894', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105259', 1, 0, 0),
(1398, 195672, 'KHÁCH SẠN THIÊN HỒNG', '0300625210014', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105267', 1, 0, 0),
(1399, 114914, 'Công ty cổ phần tư vấn và chuyển giao công nghệ xây dựng Hà Nam', '0700243992', '2021-05-22 11:23:12', '2021-05-22 11:23:12', 'Z105260', 1, 0, 0),
(1400, 195679, 'TRUNG TÂM NUÔI BIỂN CÔNG NGHỆ CAO', '2300195025', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105261', 1, 0, 0),
(1401, 195680, 'PHÒNG GIÁO DỤC VÀ ĐÀO TẠO HUYỆN CAM LỘ', '3200393057', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105265', 1, 0, 0),
(1402, 68238, 'CÔNG TY TƯ VẤN THIẾT KẾ VÀ GIÁM SÁT CÔNG TRÌNH PHÚ CHÂU', '3301673935', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105269', 1, 0, 0),
(1403, 195681, 'Công ty trách nhiệm hữu hạn một thành viên khai thác công trình thủy lợi Nghĩa Hưng', '0600021481', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105272', 1, 0, 0),
(1404, 195682, 'Trung tâm dịch vụ nông nghiệp huyện Thường Xuân', '2801335308', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105274', 1, 0, 0),
(1405, 195683, 'UBND xã Khánh Công', '1052750000000', '2021-05-22 11:23:13', '2021-05-22 11:23:13', 'Z105275', 1, 0, 0),
(1406, 195684, 'Công Ty TNHH Thương Mại Và Dịch Vụ Ánh Khang', '2400851601', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105276', 1, 0, 0),
(1407, 195685, 'Tòa án nhân dân huyện Lương Sơn', '1052790000000', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105279', 1, 0, 0),
(1408, 195686, 'Uỷ ban nhân dân xã Dương Quang', '0103459885', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105278', 1, 0, 0),
(1409, 195687, 'Viện Nghiên cứu và Đào tạo Việt Anh', '0401615988', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105280', 1, 0, 0),
(1410, 71141, 'Phân Viện khoa học An toàn Vệ sinh Lao động và Bảo vệ môi trường miền Nam', '0307903026', '2021-05-22 11:23:14', '2021-05-22 11:23:14', 'Z105287', 1, 0, 0),
(1411, 195688, 'Trung tâm Tin học tỉnh An Giang', '1600688887', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105290', 1, 0, 0),
(1412, 195689, 'Công ty cổ phần Phân phối – Bán lẻ VNF1', '0102773175', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105289', 1, 0, 0),
(1413, 59556, 'Công ty TNHH Trần Hoàng Yên Bái', '5200918692', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105291', 1, 0, 0),
(1414, 126420, 'CÔNG TY CỔ PHẦN XÂY DỰNG KO TO', '0102008657', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105292', 1, 0, 0),
(1415, 195690, 'Uỷ ban nhân dân xã Mường Mít', '6200064673', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105294', 1, 0, 0),
(1416, 195691, 'Phòng Nội vụ quận Hải Châu', '0401300307', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105297', 1, 0, 0),
(1417, 95604, 'Công ty TNHH Sở hữu trí tuệ Havip', '0101737819', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105185', 1, 0, 0),
(1418, 195692, 'Trung tâm Lưu trữ lịch sử', '2400430360004', '2021-05-22 11:23:15', '2021-05-22 11:23:15', 'Z105188', 1, 0, 0),
(1419, 195693, 'Công ty cổ phần tập đoàn Long Phương', '2300224741', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105237', 1, 0, 0),
(1420, 195694, 'Trung tâm Văn hóa Thông tin và Thể Thao Sơn Tây', '0107808537', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105112', 1, 0, 0),
(1421, 195695, 'Nhà hát Đài Tiếng nói Việt Nam', '1050280000000', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105028', 1, 0, 0),
(1422, 195696, 'PHÒNG GIAO DỊCH NGÂN HÀNG CHÍNH SÁCH XÃ HỘI HUYỆN THUẬN BẮC', '0100695387040', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z104719', 1, 0, 0),
(1423, 195697, 'Cơ quan Đại diện Văn Phòng Bộ Tài chính tại Thành phố Hồ Chí Minh', '1051530000000', '2021-05-22 11:23:16', '2021-05-22 11:23:16', 'Z105153', 1, 0, 0),
(1424, 195698, 'Cục Quản trị T.78', '1049260000000', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z104926', 1, 0, 0),
(1425, 195699, 'Nhà hát Nghệ thuật Hát Bội', '0302795930', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105181', 1, 0, 0),
(1426, 195700, 'Trung tâm giống nông nghiệp Bạc Liêu', '1900129696', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105250', 1, 0, 0),
(1427, 195701, 'Phòng văn hóa và Thông tin', '5500274449', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105227', 1, 0, 0),
(1428, 195702, 'Công ty trách nhiệm hữu hạn tư vấn và đầu tư xây dựng ART DECO', '0109041029', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105189', 1, 0, 0),
(1429, 195649, 'ĐÀI TRUYỀN THANH TRUYỀN HÌNH HUYỆN YÊN LẬP', '2600539213', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105213', 1, 0, 0),
(1430, 195703, 'ỦY BAN NHÂN DÂN PHƯỜNG PHÚC DIỄN', '0106507978', '2021-05-22 11:23:17', '2021-05-22 11:23:17', 'Z105167', 1, 0, 0),
(1431, 195704, 'Công ty TNHH Tư vấn Thiết kế Xây dựng Vĩnh Thanh', '1801230448', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z104514', 1, 0, 0),
(1432, 195705, 'CÔNG TY TNHH XÂY DỰNG H.T ĐẮK LẮK', '6001370050', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105174', 1, 0, 0),
(1433, 195706, 'Trường tiểu học Phú Nhuận', '2801235568', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105198', 1, 0, 0),
(1434, 195707, 'Trường THPT Châu Thành', '1700954638', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105202', 1, 0, 0),
(1435, 195708, 'CÔNG TY CỔ PHẦN H&T GROUP VIỆT NAM', '0109243459', '2021-05-22 11:23:18', '2021-05-22 11:23:18', 'Z105143', 1, 0, 0),
(1436, 195709, 'Trường THCS Liễn Sơn', '2500652776', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104728', 1, 0, 0),
(1437, 195710, 'Ủy ban nhân dân xã Hùng Sơn', '1049140000000', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104914', 1, 0, 0),
(1438, 195711, 'UBND huyện Kim Thành', '1049950000000', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104995', 1, 0, 0),
(1439, 195712, 'BAN QUẢN LÝ DỰ ÁN KIẾN TRÚC CHI NHÁNH TỔNG CÔNG TY HẠ TẦNG MẠNG', '0106884817003', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z100138', 1, 0, 0),
(1440, 195713, 'Công ty TNHH Đầu tư Cầu Mỹ Lợi', '1201465247', '2021-05-22 11:23:19', '2021-05-22 11:23:19', 'Z104761', 1, 0, 0),
(1441, 195714, 'Cục Cơ yếu Đảng Chính quyền', '1051750000000', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105175', 1, 0, 0),
(1442, 195715, 'CÔNG TY TNHH MỘT THÀNH VIÊN NÔNG LÂM NGHIỆP HƯƠNG CÁT', '3301633805', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z104600', 1, 0, 0),
(1443, 195716, 'Phòng Tư pháp thị xã Phổ Yên', '4600676051', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105109', 1, 0, 0),
(1444, 195717, 'Ban quản lý dự án nâng cấp, cải tạo nghĩa trang Liệt sỹ trung tâm huyện Tiền Hải.', '1050910000000', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105091', 1, 0, 0),
(1445, 195718, 'Ban quản lý dự án đầu tư xây dựng mới các cống qua đường trên truyến đường ĐH.36 (đoạn từ xã Đông Cơ đi xã Đông Trung) huyện Tiền Hải', '1051480000000', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z105148', 1, 0, 0),
(1446, 195719, 'Trường Trung học phổ thông huyện Quỳnh Nhai', '5500382412', '2021-05-22 11:23:20', '2021-05-22 11:23:20', 'Z104905', 1, 0, 0),
(1447, 195720, 'Hội Nông dân thành phố Hải Phòng', '1048420000000', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z104842', 1, 0, 0),
(1448, 195721, 'CỤC QUẢN LÝ CÔNG NGHỆ/TỔNG CỤC CNQP', '1051600000000', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z105160', 1, 0, 0),
(1449, 195722, 'Trung tâm văn hóa, thông tin và thể thao quận Ngũ Hành Sơn', '0401299997', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z105029', 1, 0, 0),
(1450, 195723, 'CÔNG TY TNHH ĐẦU TƯ CÔNG NGHỆ SANA VIỆT NAM', '0316801422', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z104923', 1, 0, 0),
(1451, 195724, 'Ban quản lý Khu Bảo Tồn Thiên Nhiên Bình Châu Phước Bửu', '1048410000000', '2021-05-22 11:23:21', '2021-05-22 11:23:21', 'Z104841', 1, 0, 0),
(1452, 195725, 'ỦY BAN NHÂN DÂN THỊ TRẤN CAM LỘ, HUYỆN CAM LỘ, TỈNH QUẢNG TRỊ', '3900097876', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z104985', 1, 0, 0),
(1453, 195726, 'Công ty TNHH Tư vấn Xây dựng thương mại Tín Nghĩa', '3702570207', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105023', 1, 0, 0),
(1454, 195727, 'UBND xã Quảng Thạch', '2801291530', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105026', 1, 0, 0),
(1455, 195728, 'Ủy ban nhân dân xã Khánh Phú', '2700226126', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105030', 1, 0, 0),
(1456, 195729, 'Vườn quốc gia Cúc Phương', '2700201315', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105031', 1, 0, 0),
(1457, 195730, 'QUỸ PHÁT TRIỂN ĐẤT THÀNH PHỐ HỒ CHÍ MINH', '0313200381', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105032', 1, 0, 0),
(1458, 195731, 'Công ty TNHH tư vấn và xây dựng Thành Đông Hải Dương', '0801352645', '2021-05-22 11:23:22', '2021-05-22 11:23:22', 'Z105033', 1, 0, 0),
(1459, 195732, 'Trường Trung học phổ thông Mỹ Đức C', '0104096578', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105034', 1, 0, 0),
(1460, 195733, 'Cung văn hóa thanh thiếu nhi tỉnh Quảng Ninh', '5701245215', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105036', 1, 0, 0),
(1461, 195734, 'Trường Trung học phổ thông Chương Mỹ B', '0103993085', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105038', 1, 0, 0),
(1462, 195735, 'Trường Trung học phổ thông Ngô Thì Nhậm', '0103244015', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105039', 1, 0, 0),
(1463, 195736, 'Công ty TNHH kiểm toán và tư vấn Online', '0107595254', '2021-05-22 11:23:23', '2021-05-22 11:23:23', 'Z105048', 1, 0, 0),
(1464, 195737, 'Trường Trung học phổ thông Tân Dân', '0103815558', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105041', 1, 0, 0),
(1465, 195738, 'Trạm Khuyến nông Thành phố Buôn Ma Thuột', '6000928663', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105043', 1, 0, 0),
(1466, 195739, 'Ủy ban nhân dân xã Lai Thành, huyện Kim Sơn, tỉnh Ninh Bình', '1050460000000', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105046', 1, 0, 0);
INSERT INTO `pccc_app_company_alias` (`id`, `job_company_profile_id`, `company_name`, `tax_code`, `created_at`, `updated_at`, `office_code`, `investor_is_approved`, `contractor_violation`, `contractor`) VALUES
(1467, 195740, 'Phòng Quản lý đô thị Thành Phố Phú Quốc', '1701258915', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105019', 1, 0, 0),
(1468, 195741, 'Trường THPT Lê Quý Đôn', '1050450000000', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105045', 1, 0, 0),
(1469, 195742, 'Cục Quản lý kỹ thuật nghiệp vụ mật mã', '1050510000000', '2021-05-22 11:23:24', '2021-05-22 11:23:24', 'Z105051', 1, 0, 0),
(1470, 195743, 'Trung tâm Công nghệ thông tin và Truyền thông', '0601184312', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105052', 1, 0, 0),
(1471, 195744, 'Công ty TNHH MTV Hồng Phúc TV', '2100666693', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105060', 1, 0, 0),
(1472, 195745, 'Phòng tài nguyên và môi trường huyện Nam Giang', '1050740000000', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105074', 1, 0, 0),
(1473, 195679, 'TRUNG TÂM NUÔI BIỂN CÔNG NGHỆ CAO', '2300195025', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105053', 1, 0, 0),
(1474, 195743, 'Trung tâm Công nghệ thông tin và Truyền thông', '0601184312', '2021-05-22 11:23:25', '2021-05-22 11:23:25', 'Z105056', 1, 0, 0),
(1475, 195746, 'BQL các chợ Quận Hải Châu', '0402059973', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105064', 1, 0, 0),
(1476, 195747, 'Công ty cổ phần Thương mại và Xây dựng Trường Khang', '0106320803', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105066', 1, 0, 0),
(1477, 195705, 'CÔNG TY TNHH XÂY DỰNG H.T ĐẮK LẮK', '6001370050', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105070', 1, 0, 0),
(1478, 195748, 'CÔNG TY TNHH TƯ VẤN ĐẦU TƯ THIÊN BÌNH', '2802934696', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105078', 1, 0, 0),
(1479, 195749, 'NGÂN HÀNG TMCP CÔNG THƯƠNG VIỆT NAM CHI NHÁNH TÂY ĐÔ', '0100111948', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105080', 1, 0, 0),
(1480, 195750, 'ỦY BAN NHÂN DÂN PHƯỜNG THU THỦY', '1050810000000', '2021-05-22 11:23:26', '2021-05-22 11:23:26', 'Z105081', 1, 0, 0),
(1481, 195751, 'Ủy ban nhân dân xã Thanh Hương', '0700434411', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105050', 1, 0, 0),
(1482, 195752, 'Công ty trách nhiệm hữu hạn tư vấn và xây dựng Đức Trang', '2901930452', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105077', 1, 0, 0),
(1483, 195753, 'Cục Kỹ thuật/Binh chủng Đặc công', '1050840000000', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105084', 1, 0, 0),
(1484, 195754, 'Ủy ban nhân dân phường Lộc Hòa', '0600144162', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105024', 1, 0, 0),
(1485, 195755, 'Công ty cổ phần tư vần công nghệ xây dựng petrolimex', '0104025168', '2021-05-22 11:23:27', '2021-05-22 11:23:27', 'Z105008', 1, 0, 0),
(1486, 195756, 'Bệnh viện Phục Hồi Chức Năng Nghệ An', '2900326199', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z104732', 1, 0, 0),
(1487, 195757, 'Ủy ban nhân dân xã Vân Trường, huyện Tiền Hải, tỉnh Thái Bình', '1050870000000', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105087', 1, 0, 0),
(1488, 195758, 'Kho kỹ thuật tổng hợp 102/ Cục kỹ thuật/ Bộ Tư lệnh Bộ đội Biên phòng', '1050860000000', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105086', 1, 0, 0),
(1489, 195759, 'CÔNG TY TNHH TVTK VÀ ĐTXD MIỀN TRUNG', '3101092281', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105088', 1, 0, 0),
(1490, 195760, 'Phòng Tài nguyên và Môi trường huyện Đan Phượng', '1050890000000', '2021-05-22 11:23:28', '2021-05-22 11:23:28', 'Z105089', 1, 0, 0),
(1491, 195761, 'CÔNG TY TNHH MỘT THÀNH VIÊN BCA - THĂNG LONG', '0100110856', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105093', 1, 0, 0),
(1492, 195762, 'Công ty cổ phần Xuất nhập khẩu Hàng không', '0100107934', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105094', 1, 0, 0),
(1493, 195763, 'Trung tâm Văn hóa Thể thao huyện Tiên Du', '2300369338', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105095', 1, 0, 0),
(1494, 195764, 'Trường mầm non Xuân Hòa', '2500399403', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105090', 1, 0, 0),
(1495, 195765, 'Hội liên hiệp phụ nữ tinh Lâm Đồng', '5800785846', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105096', 1, 0, 0),
(1496, 195766, 'Trường Trung học phổ thông Thanh Oai B', '0103158542', '2021-05-22 11:23:29', '2021-05-22 11:23:29', 'Z105101', 1, 0, 0),
(1497, 195767, 'Ủy ban nhân dân xã Phước Bình', '1051140000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105114', 1, 0, 0),
(1498, 195768, 'Văn phòng HĐND và UBND huyện Sông Mã', '5500372125', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105103', 1, 0, 0),
(1499, 195769, 'Phòng Kinh tế và Hạ tầng', '1051050000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105105', 1, 0, 0),
(1500, 195770, 'Tiểu đoàn 1, Trung đoàn Cảnh sát cơ động Trung Bộ', '1051060000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105106', 1, 0, 0),
(1501, 195771, 'Trung đoàn Cảnh sát bảo vệ mục tiêu cơ quan đại diện Ngoại giao', '1051100000000', '2021-05-22 11:23:30', '2021-05-22 11:23:30', 'Z105110', 1, 0, 0),
(1502, 195772, 'Trung tâm dịch vụ nông nghiệp huyện Thiệu Hóa', '2801297998', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105111', 1, 0, 0),
(1503, 195773, 'Ban Dân tộc tỉnh Nghệ An', '2901619286', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105113', 1, 0, 0),
(1504, 195774, 'Trường Trung học phổ thông Vân Tảo', '0104015882', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105115', 1, 0, 0),
(1505, 195775, 'TRƯỜNG MẦM NON NGỌC LIÊN', '0800511187', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105121', 1, 0, 0),
(1506, 195776, 'Sở Tư pháp', '1900174603', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105125', 1, 0, 0),
(1507, 195777, 'CÔNG TY TNHH XÂY DỰNG VÀ ĐO ĐẠC BẢN ĐỒ AN PHÚC', '0315120999', '2021-05-22 11:23:31', '2021-05-22 11:23:31', 'Z105126', 1, 0, 0),
(1508, 195778, 'Chi cục Thủy sản Trà Vinh', '2100386777008', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105127', 1, 0, 0),
(1509, 195779, 'Phòng Kinh tế và Hạ tầng huyện Hải Hậu', '0600143384', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105128', 1, 0, 0),
(1510, 195780, 'Trung tâm phát triển quỹ đất huyện Tràng Định, tỉnh Lạng Sơn', '4900785284', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105129', 1, 0, 0),
(1511, 195781, 'CÔNG TY TNHH MTV TÀI NGUYÊN VÀ MÔI TRƯỜNG MIỀN NAM', '0310370603', '2021-05-22 11:23:32', '2021-05-22 11:23:32', 'Z105130', 1, 0, 0),
(1512, 195782, 'Đảng ủy Các cơ quan tỉnh Bắc Kạn', '4700184737', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105131', 1, 0, 0),
(1513, 195783, 'Liên hiệp các Hội Khoa học và Kỹ thuật tỉnh Ninh Bình', '1051340000000', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105134', 1, 0, 0),
(1514, 195784, 'Phòng Văn hóa và Thông tin quận Hà Đông', '0103822280', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105139', 1, 0, 0),
(1515, 195785, 'Trung tâm Dịch vụ nông nghiệp huyện Đông Sơn', '2801256173', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105135', 1, 0, 0),
(1516, 195786, 'Chi cục trồng trọt và bảo vệ thực vật Khánh Hòa', '4200324369', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105136', 1, 0, 0),
(1517, 195787, 'Ủy ban nhân dân xã Khánh Vân', '2700226038', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105140', 1, 0, 0),
(1518, 195788, 'NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN CÔNG THƯƠNG VIỆT NAM - CHI NHÁNH BẾN TRE', '0100111948038', '2021-05-22 11:23:33', '2021-05-22 11:23:33', 'Z105141', 1, 0, 0),
(1519, 195789, 'Văn phòng HĐND và UBND huyện Mỹ Đức', '1051440000000', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105144', 1, 0, 0),
(1520, 195790, 'Trung Tâm Phát Triển Quỹ Đất Thành Phố Bắc Ninh', '2300780019', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105147', 1, 0, 0),
(1521, 195791, 'Công ty TNHH Tư vấn Xây dựng và Thương mại Đất Nghệ', '2902062470', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105142', 1, 0, 0),
(1522, 195792, 'Sở Công thương tỉnh Lâm Đồng', '5800569443', '2021-05-22 11:23:34', '2021-05-22 11:23:34', 'Z105145', 1, 0, 0),
(1523, 195793, 'TRUNG TÂM PHỤC VỤ HÀNH CHÍNH CÔNG TỈNH AN GIANG', '1601204666004', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105149', 1, 0, 0),
(1524, 195794, 'Công ty TNHH Trường Thuỷ tỉnh Điện Biên', '5600268086', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105150', 1, 0, 0),
(1525, 195795, 'Ban Quản lý Khu nông nghiệp ứng dụng công nghệ cao phát triển tôm tỉnh Bạc Liêu', '0779140000000', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105155', 1, 0, 0),
(1526, 195796, 'Công ty TNHH Đầu tư xây dựng Vinasa', '2802812867', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105159', 1, 0, 0),
(1527, 195797, 'Văn phòng HĐND&UBND huyện Tây Giang', '4000597457', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105161', 1, 0, 0),
(1528, 195798, 'Phòng Văn hóa và Thông tin huyện Cam Lộ', '3200400755', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105163', 1, 0, 0),
(1529, 195799, 'UBND xã Hưng Đạo', '1050730000000', '2021-05-22 11:23:35', '2021-05-22 11:23:35', 'Z105073', 1, 0, 0),
(1530, 195800, 'Ngân hàng TMCP Đầu tư và phát triển Việt Nam Chi nhánh Bắc Ninh', '0100150619001', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104743', 1, 0, 0),
(1531, 195801, 'Trường Trung Học Cơ Sở Hùng Vương', '2500313413', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104925', 1, 0, 0),
(1532, 195802, 'Sở Nội vụ tỉnh Lào cai', '5300203289', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z105017', 1, 0, 0),
(1533, 195803, 'Tiểu đoàn cảnh sát đặc nhiệm số 3', '1049430000000', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104943', 1, 0, 0),
(1534, 195804, 'Cục Cửa khẩu Bộ đội Biên phòng', '1048650000000', '2021-05-22 11:23:36', '2021-05-22 11:23:36', 'Z104865', 1, 0, 0),
(1535, 195805, 'Phòng Nội vụ huyện Thường Tín', '1050720000000', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105072', 1, 0, 0),
(1536, 195806, 'TRUNG TÂM NUÔI BIỂN CÔNG NGHỆ CAO', '2300195025010', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105054', 1, 0, 0),
(1537, 195807, 'Toà án nhân dân huyện Bác Ái', '4500393821', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z104319', 1, 0, 0),
(1538, 195808, 'Công ty Cổ phần Giao nhận Kho vận Ngoại thương Việt Nam', '0300648264', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105027', 1, 0, 0),
(1539, 195809, 'Trung tâm y tế thành phố Lào Cai', '1048310000000', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z104831', 1, 0, 0),
(1540, 195810, 'Ủy ban nhân dân xã Cẩm Vân', '1050250000000', '2021-05-22 11:23:37', '2021-05-22 11:23:37', 'Z105025', 1, 0, 0),
(1541, 195811, 'BAN QUẢN LÝ KHU DU LỊCH SINH THÁI HÀM RỒNG THỊ XÃ SA PA', '5300724098', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z105137', 1, 0, 0),
(1542, 195812, 'CÔNG TY TNHH CÔNG NGHỆ ĐẦU TƯ PHÁT TRIỂN PNM', '0316812142', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z105035', 1, 0, 0),
(1543, 195813, 'Bệnh viện lao và bệnh viện phổi tỉnh Kiên Giang', '1702139572', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z104887', 1, 0, 0),
(1544, 195814, 'BAN QUẢN LÝ CHỢ TÂN CHÁNH HIỆP', '0309237413', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z104710', 1, 0, 0),
(1545, 195815, 'M2-BAN CƠ YẾU CHÍNH PHỦ', '0100110782', '2021-05-22 11:23:38', '2021-05-22 11:23:38', 'Z104939', 1, 0, 0),
(1546, 195816, 'KHO K854/ CỤC QUÂN KHÍ/ TỔNG CỤC KỸ THUẬT', '0909650000000', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104891', 1, 0, 0),
(1547, 195817, 'Viện kiểm sát nhân dân huyện Yên Thế, tỉnh Bắc Giang', '2400481213', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104827', 1, 0, 0),
(1548, 195818, 'Trại giam Ninh Khánh', '1048560000000', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104856', 1, 0, 0),
(1549, 195819, 'Trung tâm dịch vụ nông nghiệp huyện Thạch Thành, tỉnh Thanh Hóa', '2802798274', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z104637', 1, 0, 0),
(1550, 195820, 'Trung tâm Xúc tiến và Tư vấn đầu tư', '0700617140', '2021-05-22 11:23:39', '2021-05-22 11:23:39', 'Z103511', 1, 0, 0),
(1551, 195821, 'TRUNG TÂM GIẢI PHÁP QUẢN TRỊ DOANH NGHIỆP-CHI NHÁNH CÔNG TY CÔNG NGHỆ THÔNG TIN VNPT', '0108212803007', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104543', 1, 0, 0),
(1552, 195822, 'CÔNG TY TNHH TƯ VẤN THIẾT KẾ XÂY DỰNG PHƯƠNG ĐĂNG', '0316751179', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104907', 1, 0, 0),
(1553, 195823, 'TOÀ ÁN NHÂN DÂN THÀNH PHỐ THỦ ĐỨC', '0316762438', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104443', 1, 0, 0),
(1554, 195824, 'Ban quản lý xây dựng các công trình xã Sơn Tình, huyện Cẩm Khê', '1049760000000', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104976', 1, 0, 0),
(1555, 195825, 'HỢP TÁC XÃ DỊCH VỤ SẢN XUẤT NÔNG LÂM NGHIỆP TÂN TIẾN', '5000841530', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104949', 1, 0, 0),
(1556, 195826, 'Trạm Kiểm tra tải trọng xe lưu động tỉnh Thái Nguyên', '4600202414001', '2021-05-22 11:23:40', '2021-05-22 11:23:40', 'Z104900', 1, 0, 0),
(1557, 195827, 'CÔNG TY CỔ PHẦN ĐẦU TƯ PHÁT TRIỂN SHT', '5701985146', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104837', 1, 0, 0),
(1558, 195828, 'Tiểu đoàn SCTH 51/ Cục Kỹ thuật/ Quân đoàn 2', '1048600000000', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104860', 1, 0, 0),
(1559, 195829, 'Phòng văn hóa và thông tin thị xã Phổ Yên', '4600676012', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104978', 1, 0, 0),
(1560, 195830, 'Công ty TNHH Đầu Tư Phát Triển Hạ tầng An Bình', '0700844055', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104722', 1, 0, 0),
(1561, 195831, 'Trung tâm dịch vụ huyện Như Thanh', '2801237396', '2021-05-22 11:23:41', '2021-05-22 11:23:41', 'Z104321', 1, 0, 0),
(1562, 195832, 'Cục Chính trị - Bộ Tư lệnh Hoá học', '1049340000000', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104934', 1, 0, 0),
(1563, 195833, 'Công ty TNHH NTH Ngô Gia', '3502418766', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104959', 1, 0, 0),
(1564, 195834, 'Công ty CP Tư Vấn và Xây Dựng NACO', '2901948072', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104953', 1, 0, 0),
(1565, 195835, 'Trung tâm Thông tin Xúc tiến Du lịch Bình Thuận', '3400887705', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104960', 1, 0, 0),
(1566, 195836, 'Trạm Đo lường chất lượng', '0766770000000', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104965', 1, 0, 0),
(1567, 195837, 'TRUNG TÂM ĐĂNG KIỂM PHƯƠNG TIỆN GIAO THÔNG VẬN TẢI TUYÊN QUANG', '5000222322', '2021-05-22 11:23:42', '2021-05-22 11:23:42', 'Z104977', 1, 0, 0),
(1568, 195838, 'Trung tâm bồi dưỡng chính trị huyện Chư Prông, tỉnh Gia Lai', '5900623824', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104331', 1, 0, 0),
(1569, 195839, 'Trung tâm Y tế huyện Văn Chấn', '5200902068', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104966', 1, 0, 0),
(1570, 195840, 'Phòng Tài nguyên và Môi trường huyện Bắc Trà My', '4000309405', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104973', 1, 0, 0),
(1571, 195841, 'Công ty TNHH MTV Thiên Vạn Tường', '2200690812', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104979', 1, 0, 0),
(1572, 195842, 'TRUNG TÂM BẢO ĐẢM KỸ THUẬT', '1049810000000', '2021-05-22 11:23:43', '2021-05-22 11:23:43', 'Z104981', 1, 0, 0),
(1573, 195843, 'Trung tâm ứng dụng Khoa học Công nghệ và Tiêu chuẩn đo lường chất lượng Bắc Kạn', '4700119738005', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104982', 1, 0, 0),
(1574, 195819, 'Trung tâm dịch vụ nông nghiệp huyện Thạch Thành', '2802798274', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104988', 1, 0, 0),
(1575, 195844, 'Ban chỉ huy quân sự huyện Vĩnh Tường', '1049900000000', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104990', 1, 0, 0),
(1576, 195845, 'UBND thị trấn Đình Cả', '4600730277', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104984', 1, 0, 0),
(1577, 195846, 'Viện kiểm sát nhân dân Quận Tân Phú, Thành phố Hồ Chí Minh', '1049860000000', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104986', 1, 0, 0),
(1578, 195847, 'Tòa án nhân dân huyện Si Ma Cai', '1049870000000', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104987', 1, 0, 0),
(1579, 195848, 'Văn phòng Ban chỉ đạo Chương trình Giảm nghèo bền vững Thành phố', '0306569474', '2021-05-22 11:23:44', '2021-05-22 11:23:44', 'Z104992', 1, 0, 0),
(1580, 195849, 'VIỆN KHOA HỌC CÔNG NGHỆ MẬT MÃ', '1049940000000', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104994', 1, 0, 0),
(1581, 195850, 'Trung tâm Phát triển hạ tầng Khu kinh tế.', '1049960000000', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104996', 1, 0, 0),
(1582, 195851, 'Uỷ ban nhân dân xã Hiền Lương', '2600201128', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104998', 1, 0, 0),
(1583, 195852, 'PHÒNG NÔNG NGHIỆP VÀ PHÁT TRIỂN NÔNG THÔN HUYỆN KHOÁI CHÂU', '1050020000000', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z105002', 1, 0, 0),
(1584, 195853, 'Văn phòng tỉnh ủy Ninh Thuận', '4500233306', '2021-05-22 11:23:45', '2021-05-22 11:23:45', 'Z104968', 1, 0, 0),
(1585, 195854, 'Trường Phổ thông dân lập HERMANN GMEINER', '0102070623', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z104999', 1, 0, 0),
(1586, 195855, 'Đảng ủy phường Đại Mỗ', '1050000000000', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105000', 1, 0, 0),
(1587, 195856, 'Trường Chính trị tỉnh Bình Định', '4100541585', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105007', 1, 0, 0),
(1588, 195857, 'Chi cục Tiêu chuẩn Đo lường Chất lượng', '2400212186', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105013', 1, 0, 0),
(1589, 195858, 'Chi nhánh Ngân hàng chính sách xã hội tỉnh Hưng Yên', '0100695387', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105015', 1, 0, 0),
(1590, 195859, 'Cục Chính trị Quân khu 9', '1050160000000', '2021-05-22 11:23:46', '2021-05-22 11:23:46', 'Z105016', 1, 0, 0),
(1591, 195860, 'Ủy ban nhân dân xã An Hòa Thịnh, huyện Hương Sơn, tỉnh Hà Tĩnh', '1050180000000', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z105018', 1, 0, 0),
(1592, 195861, 'Toà án nhân dân thị xã Phổ Yên, tỉnh Thái Nguyên', '4601138810', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z105022', 1, 0, 0),
(1593, 195862, 'Trung tâm Dịch vụ kỹ thuật nông nghiệp huyện Ba Chẽ', '5701798925', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z104721', 1, 0, 0),
(1594, 195863, 'Ủy Ban Nhân Dân Xã Chí Công', '3400516644', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z104371', 1, 0, 0),
(1595, 195864, 'Ủy Ban Nhân Dân Thị Trấn Phan Rí Cửa', '3400516771', '2021-05-22 11:23:47', '2021-05-22 11:23:47', 'Z104323', 1, 0, 0),
(1596, 195865, 'Trường Đại học Kiên Giang', '1701979716', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104736', 1, 0, 0),
(1597, 195866, 'VĂN PHÒNG BAN CƠ YẾU CHÍNH PHỦ', '1049800000000', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104980', 1, 0, 0),
(1598, 195867, 'Công ty TNHH Đầu tư và Tư vấn APEC Thăng Long', '0105958953', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104765', 1, 0, 0),
(1599, 195868, 'Trạm Khuyến nông huyện Hoài Đức', '1044450000000', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104445', 1, 0, 0),
(1600, 195869, 'Trường THPT Nà Giàng, huyện Hà Quảng', '4800229734', '2021-05-22 11:23:48', '2021-05-22 11:23:48', 'Z104725', 1, 0, 0),
(1601, 195870, 'Trường THPT Tông Lệnh', '5500408445', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z103213', 1, 0, 0),
(1602, 195871, 'PHÒNG GIAO DỊCH NGÂN HÀNG CHÍNH SÁCH XÃ HỌI HUYỆN CHỢ GẠO', '0100695387061', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104708', 1, 0, 0),
(1603, 195872, 'ỦY BAN NHÂN DÂN XÃ TÂY TIẾN', '1000228912', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104749', 1, 0, 0),
(1604, 195873, 'Chi cục Trồng trọt và Bảo vệ thực vật tỉnh Lạng Sơn', '4900511798', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104614', 1, 0, 0),
(1605, 195874, 'ủy ban nhân dân xã Cẩm Sơn', '1047310000000', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z104731', 1, 0, 0),
(1606, 195875, 'Tổ chức tài chính vi mô trách nhiệm hữu hạn một thành viên cho người lao động nghèo tự tạo việc làm Chi nhánh Quận 10', '0305140259011', '2021-05-22 11:23:49', '2021-05-22 11:23:49', 'Z102762', 1, 0, 0),
(1607, 195876, 'Tổ chức tài chính vi mô trách nhiệm hữu hạn một thành viên cho người lao động nghèo tự tạo việc làm Chi nhánh Đông Sài Gòn', '0305140259013', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104455', 1, 0, 0),
(1608, 195877, 'CÔNG TY CỔ PHẦN TƯ VẤN VÀ DỊCH VỤ BẢO HIỂM ANT', '0109490105', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z103661', 1, 0, 0),
(1609, 195878, 'Phòng Lao động Thương binh và Xã hội quận Hải Châu, thành phố Đà Nẵng', '0400259303', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104833', 1, 0, 0),
(1610, 195879, 'Phòng Quản lý đô thị quận Hải An', '1045090000000', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104509', 1, 0, 0),
(1611, 195880, 'Công ty trách nhiệm hữu hạn xây dựng Hồng Đức TH', '2802486973', '2021-05-22 11:23:50', '2021-05-22 11:23:50', 'Z104817', 1, 0, 0),
(1612, 195881, 'ỦY BAN NHÂN DÂN PHƯỜNG HÀM RỒNG', '5300777283', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104861', 1, 0, 0),
(1613, 195882, 'ủy ban nhân dân xã Thạch Khê', '1046040000000', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104604', 1, 0, 0),
(1614, 195883, 'Công ty TNHH Tư vấn Kiến trúc Miền Trung', '0400259896', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104796', 1, 0, 0),
(1615, 195884, 'Cục Chính trị BTL Thông tin liên lạc', '1047700000000', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104770', 1, 0, 0),
(1616, 195885, 'CÔNG TY CỔ PHẦN THƯƠNG MẠI VÀ XÂY DỰNG TRƯỜNG SA', '4000752416', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z104969', 1, 0, 0),
(1617, 195886, 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG THÀNH CÔNG - CHI NHÁNH HÒA VANG', '0400509338002', '2021-05-22 11:23:51', '2021-05-22 11:23:51', 'Z103917', 1, 0, 0),
(1618, 195887, 'TRUNG TÂM KỸ THUẬT HỖ TRỢ PHÁT TRIỂN CÔNG NGHIỆP KHU VỰC PHÍA NAM', '0316325332', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104249', 1, 0, 0),
(1619, 195888, 'NGÂN HÀNG NÔNG NGHIỆP VÀ PHÁT TRIỂN NÔNG THÔN VIỆT NAM CHI NHÁNH HUYỆN GIA LỘC HẢI DƯƠNG', '0100686174112', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104975', 1, 0, 0),
(1620, 195889, 'Trường THCS Bắc Bình', '2500396610', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104677', 1, 0, 0),
(1621, 195890, 'Công ty cổ phần cấp thoát nước số I Vĩnh Phúc', '2500155742', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104716', 1, 0, 0),
(1622, 195891, 'Công Ty Tnhh Tư Vấn Và Đầu Tư Xây Dựng Phước Thịnh', '3502349897', '2021-05-22 11:23:52', '2021-05-22 11:23:52', 'Z104387', 1, 0, 0),
(1623, 195892, 'BQLDA \"Lồng ghép chống chịu BĐKH và bảo vệ môi trường để phát triển các đô thị xanh loại II\"', '0109353973', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104699', 1, 0, 0),
(1624, 195893, 'Công ty TNHH Gia Phú Hào', '2100646873', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104802', 1, 0, 0),
(1625, 195894, 'Trường trung học phổ thông Bình Thạnh', '3900807024', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104803', 1, 0, 0),
(1626, 195895, 'Trung tâm Da liễu', '0200906352', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104804', 1, 0, 0),
(1627, 195896, 'Công ty TNHH tư vấn đầu tư xây dựng Việt Hưng - An Thành', '0900860791', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104805', 1, 0, 0),
(1628, 195897, 'Chi cục Dân số - KHHGĐ tỉnh Điện Biên', '5600211315', '2021-05-22 11:23:53', '2021-05-22 11:23:53', 'Z104806', 1, 0, 0),
(1629, 195898, 'CÔNG TY TNHH ADB NGUYÊN LINH', '1702227194', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104811', 1, 0, 0),
(1630, 195899, 'TRUNG TÂM GIÁM ĐỊNH Y KHOA TỈNH ĐIỆN BIÊN', '5600189596', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104812', 1, 0, 0),
(1631, 195900, 'Công ty Cổ Phần OSEA', '0316015940', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104816', 1, 0, 0),
(1632, 195901, 'Công ty TNHH tư vấn xây dựng Minh Quân Cao Bằng', '4800888342', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104819', 1, 0, 0),
(1633, 195902, 'Trường MGCL Sơn Ca', '4000414512', '2021-05-22 11:23:54', '2021-05-22 11:23:54', 'Z104821', 1, 0, 0),
(1634, 195903, 'BAN QUẢN LÝ CHỢ CỐC LẾU', '5300133056', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104824', 1, 0, 0),
(1635, 195904, 'CÔNG TY CP CAO SU SƠN LA', '5500287991', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104825', 1, 0, 0),
(1636, 195905, 'Phòng Tư pháp huyện Mường Tè', '1048320000000', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104832', 1, 0, 0),
(1637, 195906, 'Sở Tư pháp tỉnh Sóc Trăng', '2200174737', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104834', 1, 0, 0),
(1638, 195907, 'Bệnh viện Phục hồi chức năng tỉnh Nam Định', '0600555885', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104839', 1, 0, 0),
(1639, 195883, 'Công ty TNHH Tư vấn Kiến trúc Miền Trung', '0400259896', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104835', 1, 0, 0),
(1640, 195908, 'Ủy ban nhân dân xã Thanh Thủy, Thị xã Nghi Sơn, tỉnh Thanh Hóa', '1048360000000', '2021-05-22 11:23:55', '2021-05-22 11:23:55', 'Z104836', 1, 0, 0),
(1641, 195909, 'Thanh Tra tỉnh Kon Tum', '6100349148', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104844', 1, 0, 0),
(1642, 195910, 'Lữ đoàn 434/Quân đoàn 4', '1048550000000', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104855', 1, 0, 0),
(1643, 195911, 'Trung tâm Dịch vụ kỹ thuật nông nghiệp thành phố Hạ Long', '5701800370', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104866', 1, 0, 0),
(1644, 195912, 'CHI CỤC TRỒNG TRỌT VÀ BẢO VỆ THỰC VẬT TỈNH BÀ RỊA VŨNG TÀU', '3500340232', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104847', 1, 0, 0),
(1645, 195913, 'Ban quản lý Quảng nam Thử nghiệm', '1048490000000', '2021-05-22 11:23:56', '2021-05-22 11:23:56', 'Z104849', 1, 0, 0),
(1646, 195914, 'Lữ đoàn 550/Quân đoàn 4', '1048570000000', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104857', 1, 0, 0),
(1647, 195793, 'Trung tâm Phục vụ hành chính công tỉnh An Giang', '1601204666004', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104863', 1, 0, 0),
(1648, 195819, 'Trung tâm dịch vụ nông nghiệp huyện Thạch Thành', '2802798274', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104869', 1, 0, 0),
(1649, 195915, 'Viện Sinh học Nông nghiệp', '0101619572001', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104872', 1, 0, 0),
(1650, 195916, 'Cục Năng lượng nguyên tử', '1048730000000', '2021-05-22 11:23:57', '2021-05-22 11:23:57', 'Z104873', 1, 0, 0),
(1651, 195917, 'CÔNG TY TNHH MTV ĐIỆN LẠNH HOÀNG NGUYÊN', '3301475027', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104874', 1, 0, 0),
(1652, 195918, 'Trường trung học cơ sở thị trấn Yên Cát, huyện Như Xuân', '1048700000000', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104870', 1, 0, 0),
(1653, 195919, 'CÔNG TY TNHH TƯ VẤN VÀ QUẢN LÝ XÂY DỰNG TOÀN TÂM', '0316773408', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104871', 1, 0, 0),
(1654, 195920, 'Báo Kinh tế và Đô thị', '0100820140', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104875', 1, 0, 0),
(1655, 195921, 'Sở Tư pháp tỉnh Quảng Ngãi', '4300227129', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104876', 1, 0, 0),
(1656, 195922, 'CHI NHÁNH TỔNG CÔNG TY THƯƠNG MẠI SÀI GÒN - TNHH MỘT THÀNH VIÊN - TRUNG TÂM ĐIỀU HÀNH CỬA HÀNG TIỆN LỢI SATRA (SATRAFOODS', '0300100037025', '2021-05-22 11:23:58', '2021-05-22 11:23:58', 'Z104877', 1, 0, 0),
(1657, 195923, 'Công ty TNHH Tư vấn Xây dựng Kiến Việt', '3801250670', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104880', 1, 0, 0),
(1658, 195924, 'Cơ sở Điều trị, cai nghiện ma túy tỉnh Đắk Lắk', '6000923601', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104883', 1, 0, 0),
(1659, 195925, 'TỔNG CÔNG TY XÂY DỰNG HÀ NỘI-CTCP', '0100106338', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104879', 1, 0, 0),
(1660, 195926, 'Công ty TNHH TVXD HD', '3101091506', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104888', 1, 0, 0),
(1661, 195927, 'Chi nhánh Hồ Chí Minh - Tổng công ty truyền hình cáp Việt Nam', '0105929285018', '2021-05-22 11:23:59', '2021-05-22 11:23:59', 'Z104884', 1, 0, 0),
(1662, 195928, 'Phòng Nội vụ huyện Chiêm Hóa', '1048890000000', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104889', 1, 0, 0),
(1663, 195929, 'Phòng Lao động Thương binh và Xã hội huyện Mường Tè', '6200026408', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104890', 1, 0, 0),
(1664, 195930, 'Công ty cổ phần Tư vấn Thiết kế và Dịch vụ đầu tư', '0100100505', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104892', 1, 0, 0),
(1665, 195931, 'TRUNG TÂM GIỐNG THỦY SẢN GIA LAI', '5900478285007', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104895', 1, 0, 0),
(1666, 195932, 'Trường THCS Xuân Hòa, huyện Như Xuân', '1049080000000', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104908', 1, 0, 0),
(1667, 195933, 'PHÒNG TÀI NGUYÊN VÀ MÔI TRƯỜNG HUYỆN AN MINH', '1701269603', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104896', 1, 0, 0),
(1668, 195934, 'Trường THPT Chiềng Khương', '5500373908', '2021-05-22 11:24:00', '2021-05-22 11:24:00', 'Z104899', 1, 0, 0),
(1669, 195935, 'Phòng Lao động – Thương Binh Và Xã Hội Quận 6, TP.HCM', '0308491368', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104904', 1, 0, 0),
(1670, 195936, 'Phòng Nội vụ huyện Hạ Hòa', '2600845210', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104913', 1, 0, 0),
(1671, 195937, 'Trung tâm Văn hóa thành phố Cần Thơ', '1800668510', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104915', 1, 0, 0),
(1672, 195938, 'Trung tâm kỹ thuật viễn thông', '0100786933', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104917', 1, 0, 0),
(1673, 195939, 'Trung tâm Giáo dục Nghề nghiệp - Giáo dục Thường xuyên huyện Như Xuân', '1049180000000', '2021-05-22 11:24:01', '2021-05-22 11:24:01', 'Z104918', 1, 0, 0),
(1674, 195940, 'Uỷ ban nhân dân xã Trực Đạo', '0600145039', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104919', 1, 0, 0),
(1675, 195941, 'Công an thành phố Bắc Ninh', '2300125941', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104920', 1, 0, 0),
(1676, 195942, 'Công ty TNHH Nông lâm nghiệp và môi trường Hưng Thịnh', '4601527101', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104921', 1, 0, 0),
(1677, 195943, 'TRUNG TÂM Y TẾ HUYỆN AN LÃO', '1049220000000', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104922', 1, 0, 0),
(1678, 195944, 'TẠP CHÍ NGÂN HÀNG', '0101476892', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104928', 1, 0, 0),
(1679, 195945, 'Trường THCS Ngọc Mỹ', '2500399361', '2021-05-22 11:24:02', '2021-05-22 11:24:02', 'Z104929', 1, 0, 0),
(1680, 195946, 'Công ty cổ phần tư vấn, đầu tư và xây dựng Nam Sơn', '0109586262', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104942', 1, 0, 0),
(1681, 195947, 'Hợp tác xã thanh long Tầm Vu', '1100857294', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104932', 1, 0, 0),
(1682, 195948, 'Phòng Nông nghiệp và Phát triển Nông thôn huyện Thanh H?', '1049350000000', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104935', 1, 0, 0),
(1683, 195949, 'Bộ Tham mưu binh chủng hoá học', '1049360000000', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104936', 1, 0, 0),
(1684, 195950, 'Kho K896', '1049370000000', '2021-05-22 11:24:03', '2021-05-22 11:24:03', 'Z104937', 1, 0, 0),
(1685, 195951, 'Công ty TNHH tư vấn và xây dựng Tuấn Phong', '0700631635', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104944', 1, 0, 0),
(1686, 195952, 'Trung tâm hiến máu nhân đạo Thành phố Hồ Chí Minh', '0309378710', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104945', 1, 0, 0),
(1687, 195953, 'Công ty TNHH Tư vấn xây dựng Hải Hưng', '3101084361', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104950', 1, 0, 0),
(1688, 195954, 'Công ty TNHH tư vấn xây dựng Nam Hoàng', '3101098477', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104951', 1, 0, 0),
(1689, 195955, 'Công ty TNHH Kiến trúc và xây dựng Phúc Nguyên', '3502452661', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104952', 1, 0, 0),
(1690, 195956, 'Quỹ đầu tư phát triển tỉnh Hòa Bình', '5400482396', '2021-05-22 11:24:04', '2021-05-22 11:24:04', 'Z104703', 1, 0, 0),
(1691, 195957, 'Ban quản lý xây dựng cơ bản huyện Tân Lạc, tỉnh Hòa Bình', '5400319632', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104838', 1, 0, 0),
(1692, 195958, 'Công ty TNHH Dược thảo Hoàng Thành', '0102284946', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104571', 1, 0, 0),
(1693, 195959, 'Trung tâm Kỹ thuật Nông nghiệp thị xã Điện Bàn', '4001139530', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104464', 1, 0, 0),
(1694, 195960, 'CÔNG TY TNHH VẠN AN TẤN', '4001224955', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104773', 1, 0, 0),
(1695, 195961, 'TRƯỜNG MẦM NON NGỌC LAN', '0401301597', '2021-05-22 11:24:05', '2021-05-22 11:24:05', 'Z104818', 1, 0, 0),
(1696, 195962, 'TRUNG TÂM TIN HỌC', '4109000014', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104810', 1, 0, 0),
(1697, 195963, 'Trung tâm Y tế huyện Cát Tiên', '5800227023', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104517', 1, 0, 0),
(1698, 195964, 'Trường THPT Hải An', '0201248593', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104852', 1, 0, 0),
(1699, 195965, 'Phòng Quản lý Đô thị thành phố Châu Đốc', '1046120000000', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104612', 1, 0, 0),
(1700, 195966, 'Trường THCS Thị Trấn Lập Thạch', '2500398167', '2021-05-22 11:24:06', '2021-05-22 11:24:06', 'Z104602', 1, 0, 0),
(1701, 195967, 'Trường Tiểu học và Trung học cơ sở Hà Sen', '0200989912', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104686', 1, 0, 0),
(1702, 195968, 'Trung tâm Khuyến công và Tư vấn phát triển công nghiệp', '3300344462', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104682', 1, 0, 0),
(1703, 195969, 'Lữ đoàn 201 - Binh chủng Tăng Thiết giáp', '1049030000000', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104903', 1, 0, 0),
(1704, 195970, 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ TƯ VẤN TRÍ VIỆT', '0109166370', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104726', 1, 0, 0),
(1705, 195971, 'Bệnh Viện K', '0100960469', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104687', 1, 0, 0),
(1706, 195972, 'CÔNG TY TNHH THƯƠNG MẠI TRANG TRẠI VIỆT', '0306002036', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104886', 1, 0, 0),
(1707, 195973, 'Phòng Tài nguyên và Môi trường thị xã Đông Hòa, tỉnh Phú Yên', '4400648561', '2021-05-22 11:24:07', '2021-05-22 11:24:07', 'Z104715', 1, 0, 0),
(1708, 195974, 'Trung tâm Dịch vụ việc làm tỉnh Cà Mau', '2000396080', '2021-05-22 11:24:08', '2021-05-22 11:24:08', 'Z104711', 1, 0, 0),
(1709, 195975, 'Phòng Kinh tế và Hạ tầng huyện Xuân Trường, tỉnh Nam Định', '0600659524', '2021-05-22 11:24:08', '2021-05-22 11:24:08', 'Z104750', 1, 0, 0),
(1710, 195976, 'Ủy ban nhân dân xã Đông Vinh', '2801256310', '2021-05-22 11:24:08', '2021-05-22 11:24:08', 'Z104652', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pccc_app_company_career`
--

CREATE TABLE `pccc_app_company_career` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_company_profile_id` int(10) UNSIGNED NOT NULL COMMENT 'Id công ty',
  `career_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tên ngành nghề',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
