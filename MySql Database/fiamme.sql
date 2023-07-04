-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 02:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiamme`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_url`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'Fiamme Lingerie', 'Fiamme Lingerie', 'upload/banner/1768034411374276.jpg', NULL, '2023-06-07 03:40:09'),
(4, 'Fiamme Lingerie', 'Fiamme Lingerie', 'upload/banner/1768034453552393.jpg', NULL, NULL),
(5, 'Fiamme Lingerie', 'Fiamme Lingerie', 'upload/banner/1768034479455436.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name` varchar(255) NOT NULL,
  `blog_category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category_name`, `blog_category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Clothing', 'clothing', '2023-06-16 07:17:21', NULL),
(2, 'test1', 'test1', '2023-06-16 07:21:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_short_description` text NOT NULL,
  `post_long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title`, `post_slug`, `post_image`, `post_short_description`, `post_long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alisha2', 'alisha2', 'upload/blog/1768865342438386.jpg', 'Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra.', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', '2023-06-16 07:40:35', '2023-06-16 07:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `brand_slug`, `created_at`, `updated_at`) VALUES
(1, 'Alisha', 'upload/brand/1767943646405499.jpg', 'alisha', NULL, '2023-06-06 03:37:28'),
(13, 'ALX', 'upload/brand/1767943799259155.jpeg', 'alx', NULL, '2023-06-06 03:39:54'),
(14, 'Cat-1', 'upload/brand/1767943874896403.jpg', 'cat-1', NULL, '2023-06-06 03:41:06'),
(15, 'Cat-2', 'upload/brand/1767943937810769.jpg', 'cat-2', NULL, '2023-06-06 03:42:06'),
(16, 'Central Lastic', 'upload/brand/1767944019333385.jpg', 'central-lastic', NULL, '2023-06-06 03:43:24'),
(17, 'Dream', 'upload/brand/1767944087898303.JPG', 'dream', NULL, '2023-06-06 03:44:29'),
(18, 'Ghazal', 'upload/brand/1767944184824156.jpeg', 'ghazal', NULL, '2023-06-06 03:46:01'),
(19, 'julie', 'upload/brand/1768025877217648.jpg', 'julie', NULL, NULL),
(20, 'merry-set', 'upload/brand/1768026143262840.JPG', 'merry-set', NULL, NULL),
(21, 'mistyfee', 'upload/brand/1768026207595396.jpg', 'mistyfee', NULL, NULL),
(22, 'Sporty-1', 'upload/brand/1768130875769288.jpg', 'sporty-1', NULL, NULL),
(23, 'Sorty-2', 'upload/brand/1768131053088916.jpg', 'sorty-2', NULL, NULL),
(24, 'Sponge padded', 'upload/brand/1768133325614211.jpg', 'sponge-padded', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `category_slug`, `created_at`, `updated_at`) VALUES
(18, 'Woman Clothing', 'upload/category/1768027731701755.jpg', 'woman-clothing', NULL, NULL),
(19, 'Woman Lingerie', 'upload/category/1768118001991356.png', 'woman-lingerie', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 14, 21, '2023-06-13 04:21:36', NULL),
(4, 14, 20, '2023-06-13 04:47:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ZCZCSD', 10, '2023-06-15', 1, '2023-06-13 07:44:00', '2023-06-13 07:44:00'),
(2, 'SDSAA2342VCV', 40, '2023-06-17', 1, '2023-06-13 07:45:12', NULL),
(3, 'ABCDEFR', 24, '2023-06-29', 1, '2023-06-21 23:53:26', '2023-06-21 23:53:26'),
(4, 'ADIDCC12', 100, '2023-06-22', 1, '2023-06-19 03:48:24', NULL),
(5, 'AAASASAS', 50, '2023-07-20', 1, '2023-07-03 04:56:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_02_053519_create_brands_table', 2),
(6, '2023_06_02_125015_create_categories_table', 3),
(7, '2023_06_03_092702_create_sub_categories_table', 4),
(8, '2023_06_03_100900_create_multi_imgs_table', 5),
(9, '2023_06_03_100944_create_products_table', 5),
(10, '2023_06_05_120140_create_sliders_table', 6),
(11, '2023_06_05_130748_create_banners_table', 7),
(12, '2023_06_13_054158_create_shoppingcart_table', 8),
(13, '2023_06_13_062639_create_wishlists_table', 9),
(14, '2023_06_13_090621_create_compares_table', 10),
(18, '2023_06_13_120616_create_coupons_table', 11),
(19, '2023_06_13_153643_create_ship_districts_table', 12),
(20, '2023_06_13_153844_create_ship_divisions_table', 12),
(21, '2023_06_13_153916_create_ship_states_table', 12),
(22, '2023_06_14_094000_create_orders_table', 13),
(23, '2023_06_14_094055_create_order_items_table', 13),
(24, '2023_06_16_123055_create_blog_categories', 14),
(25, '2023_06_16_123203_create_blog_posts', 14),
(26, '2023_06_17_142949_create_reviews_table', 15),
(27, '2023_06_20_111134_create_site_settings', 16),
(28, '2023_06_21_071939_create_seos_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(22, 14, 'upload/products/multi-image/1768021837975437.jpg', '2023-06-07 00:20:24', NULL),
(23, 14, 'upload/products/multi-image/1768021844817242.jpg', '2023-06-07 00:20:30', NULL),
(24, 14, 'upload/products/multi-image/1768021851640148.jpg', '2023-06-07 00:20:37', NULL),
(25, 14, 'upload/products/multi-image/1768021858484385.jpg', '2023-06-07 00:20:43', NULL),
(26, 14, 'upload/products/multi-image/1768021865290934.jpg', '2023-06-07 00:20:46', NULL),
(27, 15, 'upload/products/multi-image/1768022312729795.jpg', '2023-06-07 00:27:52', NULL),
(28, 15, 'upload/products/multi-image/1768022314336879.jpg', '2023-06-07 00:27:53', NULL),
(29, 15, 'upload/products/multi-image/1768022315955525.jpg', '2023-06-07 00:27:55', NULL),
(30, 16, 'upload/products/multi-image/1768022782129281.jpg', '2023-06-07 00:35:24', NULL),
(31, 16, 'upload/products/multi-image/1768022788935619.jpg', '2023-06-07 00:35:31', NULL),
(32, 16, 'upload/products/multi-image/1768022795773591.jpg', '2023-06-07 00:35:38', NULL),
(33, 16, 'upload/products/multi-image/1768022803132448.jpg', '2023-06-07 00:35:49', NULL),
(34, 17, 'upload/products/multi-image/1768023142485434.jpg', '2023-06-07 00:41:08', NULL),
(35, 17, 'upload/products/multi-image/1768023149649829.jpg', '2023-06-07 00:41:15', NULL),
(36, 17, 'upload/products/multi-image/1768023156482086.jpg', '2023-06-07 00:41:21', NULL),
(37, 17, 'upload/products/multi-image/1768023163261620.jpg', '2023-06-07 00:41:28', NULL),
(38, 17, 'upload/products/multi-image/1768023170129100.jpg', '2023-06-07 00:41:37', NULL),
(39, 18, 'upload/products/multi-image/1768024039807367.jpg', '2023-06-07 00:55:22', NULL),
(40, 18, 'upload/products/multi-image/1768024044903156.jpg', '2023-06-07 00:55:28', NULL),
(41, 18, 'upload/products/multi-image/1768024051288960.jpg', '2023-06-07 00:55:32', NULL),
(42, 19, 'upload/products/multi-image/1768024386392051.JPG', '2023-06-07 01:00:48', NULL),
(43, 19, 'upload/products/multi-image/1768024386723505.JPG', '2023-06-07 01:00:48', NULL),
(44, 19, 'upload/products/multi-image/1768024387052924.JPG', '2023-06-07 01:00:49', NULL),
(45, 19, 'upload/products/multi-image/1768024387437476.JPG', '2023-06-07 01:00:49', NULL),
(46, 19, 'upload/products/multi-image/1768024387786115.JPG', '2023-06-07 01:00:49', NULL),
(47, 20, 'upload/products/multi-image/1768025727937508.jpeg', '2023-06-07 01:22:07', NULL),
(48, 20, 'upload/products/multi-image/1768025728121345.jpeg', '2023-06-07 01:22:07', NULL),
(49, 20, 'upload/products/multi-image/1768025728295417.jpeg', '2023-06-07 01:22:08', NULL),
(50, 20, 'upload/products/multi-image/1768025728490968.jpeg', '2023-06-07 01:22:08', NULL),
(51, 21, 'upload/products/multi-image/1768026378277141.jpg', '2023-06-07 01:32:34', NULL),
(52, 21, 'upload/products/multi-image/1768026385420381.jpg', '2023-06-07 01:32:41', NULL),
(53, 21, 'upload/products/multi-image/1768026392587030.jpg', '2023-06-07 01:32:48', NULL),
(54, 22, 'upload/products/multi-image/1768026624933429.JPG', '2023-06-07 01:36:23', NULL),
(55, 22, 'upload/products/multi-image/1768026625340511.JPG', '2023-06-07 01:36:23', NULL),
(56, 22, 'upload/products/multi-image/1768026625690146.JPG', '2023-06-07 01:36:24', NULL),
(57, 22, 'upload/products/multi-image/1768026626084425.JPG', '2023-06-07 01:36:24', NULL),
(58, 23, 'upload/products/multi-image/1768026891669685.jpg', '2023-06-07 01:40:39', NULL),
(59, 23, 'upload/products/multi-image/1768026893849134.jpg', '2023-06-07 01:40:41', NULL),
(60, 23, 'upload/products/multi-image/1768026896082067.jpg', '2023-06-07 01:40:43', NULL),
(61, 23, 'upload/products/multi-image/1768026898237041.jpg', '2023-06-07 01:40:45', NULL),
(62, 24, 'upload/products/multi-image/1768118280114947.jpg', '2023-06-08 01:53:19', NULL),
(63, 24, 'upload/products/multi-image/1768118288273353.jpg', '2023-06-08 01:53:27', NULL),
(64, 24, 'upload/products/multi-image/1768118296520760.jpg', '2023-06-08 01:53:35', NULL),
(65, 24, 'upload/products/multi-image/1768118305053216.jpg', '2023-06-08 01:53:44', NULL),
(66, 24, 'upload/products/multi-image/1768118313615578.jpg', '2023-06-08 01:53:52', NULL),
(67, 25, 'upload/products/multi-image/1768132177270912.jpg', '2023-06-08 05:34:07', NULL),
(68, 25, 'upload/products/multi-image/1768132179460495.jpg', '2023-06-08 05:34:09', NULL),
(69, 25, 'upload/products/multi-image/1768132181583581.jpg', '2023-06-08 05:34:11', NULL),
(70, 25, 'upload/products/multi-image/1768132183664831.jpg', '2023-06-08 05:34:13', NULL),
(71, 26, 'upload/products/multi-image/1768133085235038.jpg', '2023-06-08 05:48:38', NULL),
(72, 26, 'upload/products/multi-image/1768133092868349.jpg', '2023-06-08 05:48:45', NULL),
(73, 26, 'upload/products/multi-image/1768133100519143.jpg', '2023-06-08 05:48:53', NULL),
(74, 26, 'upload/products/multi-image/1768133108490991.jpg', '2023-06-08 05:49:00', NULL),
(75, 27, 'upload/products/multi-image/1768133578041693.jpg', '2023-06-08 05:56:28', NULL),
(76, 27, 'upload/products/multi-image/1768133585246354.jpg', '2023-06-08 05:56:35', NULL),
(77, 27, 'upload/products/multi-image/1768133592467758.jpg', '2023-06-08 05:56:41', NULL),
(78, 27, 'upload/products/multi-image/1768133599599797.jpg', '2023-06-08 05:56:48', NULL),
(79, 27, 'upload/products/multi-image/1768133606761411.jpg', '2023-06-08 05:56:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_month` varchar(255) NOT NULL,
  `order_year` varchar(255) NOT NULL,
  `confirmed_date` varchar(255) DEFAULT NULL,
  `processing_date` varchar(255) DEFAULT NULL,
  `picked_date` varchar(255) DEFAULT NULL,
  `shipped_date` varchar(255) DEFAULT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `cancel_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `return_order` varchar(255) DEFAULT '0',
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `adress`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `return_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, 3, 3, 2, 'user', 'user@gmail.com', '12121212', 'noida', '123123', NULL, 'card_1NIsFhALc6pn5BvMBCebuy5n', 'Stripe', 'txn_3NIsFiALc6pn5BvM1dAZY6dR', 'usd', 160.00, '6489aa0900dd6', 'EOS71410055', '14 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '16 June 2023', 'Not Interested', '2', 'deliverd', '2023-06-14 06:22:42', '2023-06-16 00:26:36'),
(2, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '303030', 'testing', 'card_1NIsQuALc6pn5BvMUQJhrDpG', 'Stripe', 'txn_3NIsQvALc6pn5BvM08Al5j78', 'usd', 20.00, '6489acc08c91f', 'EOS53745875', '14 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-14 06:34:17', NULL),
(3, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '121212', 'testing', 'card_1NIsX9ALc6pn5BvMUv45CRkx', 'Stripe', 'txn_3NIsXAALc6pn5BvM1lFdHEiW', 'inr', 60.00, '6489ae42e2f93', 'EOS96522171', '14 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-14 06:40:44', NULL),
(4, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '122121', 'Testing for Cash Delivery', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 9.00, NULL, 'EOS37111121', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-14 23:48:59', NULL),
(5, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '121212', 'testing purpose', 'card_1NJ9e5ALc6pn5BvM7jhq9r3E', 'Stripe', 'txn_3NJ9e6ALc6pn5BvM0kmSQRo1', 'usd', 54.00, '648aaf3609b53', 'EOS96210804', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-15 00:57:03', NULL),
(6, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '111111', 'testing', 'card_1NJAMLALc6pn5BvMUAtJnCgI', 'Stripe', 'txn_3NJAMMALc6pn5BvM2wyIL4AV', 'usd', 30.00, '648ab9edcdb0a', 'EOS86554204', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-15 01:42:50', NULL),
(7, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '121212', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'usd', 30.00, NULL, 'EOS61984369', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-15 01:44:44', NULL),
(8, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '121212', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 0.00, NULL, 'EOS63239241', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-15 01:46:16', NULL),
(9, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '121212', 'cod', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 27.00, NULL, 'EOS23750490', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'deliverd', '2023-06-15 01:47:57', '2023-06-15 12:44:31'),
(10, 14, 3, 3, 2, 'user', 'user@gmail.com', '12121212', 'noida', '121212', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 6.00, NULL, 'EOS99989284', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'deliverd', '2023-06-15 04:41:49', '2023-06-15 12:30:15'),
(11, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '1211111', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 30.00, NULL, 'EOS36375714', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'deliverd', '2023-06-15 04:47:12', NULL),
(12, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '000000', 'new testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 65.00, NULL, 'EOS76017084', '15 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '16 June 2023', 'wrong product', '2', 'deliverd', '2023-06-15 12:47:23', '2023-06-16 00:24:51'),
(13, 14, 2, 2, 1, 'user', 'user@gmail.com', '12121212', 'noida', '111111', 'new testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 30.00, NULL, 'EOS45731040', '16 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '16 June 2023', 'no reason', '2', 'deliverd', '2023-06-16 01:31:19', '2023-06-16 01:40:50'),
(14, 16, 2, 2, 1, 'Akash', 'akash@gmail.com', '987654321', 'noida', '010101', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 36.00, NULL, 'EOS97507694', '16 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '16 June 2023', 'not buy', '2', 'deliverd', '2023-06-16 06:00:20', '2023-06-16 06:06:20'),
(15, 16, 2, 2, 1, 'Akash', 'akash@gmail.com', '010101010', 'noida', '120012', 'TEst purpose', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 0.00, NULL, 'EOS91357114', '19 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '19 June 2023', 'not valid', '2', 'deliverd', '2023-06-19 03:49:28', '2023-06-19 04:19:25'),
(16, 16, 2, 2, 1, 'Akash', 'akash@gmail.com', '987654321', 'noida', '121212', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 0.00, NULL, 'EOS43835745', '20 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-06-20 06:48:38', NULL),
(17, 16, 2, 2, 1, 'Akash', 'akash@gmail.com', '987654321', 'noida', '121212', 'testing for size', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 60.00, NULL, 'EOS27962997', '21 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '21 June 2023', 'not buying', '2', 'deliverd', '2023-06-21 03:19:48', '2023-06-21 04:21:33'),
(18, 16, 2, 2, 1, 'Akash', 'akash@gmail.com', '987654321', 'noida', '12121212', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 23.00, NULL, 'EOS61006400', '22 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '22 June 2023', 'not interest', '2', 'deliverd', '2023-06-22 00:04:38', '2023-06-22 00:10:16'),
(19, 16, 2, 2, 1, 'Akash', 'akash@gmail.com', '987654321', 'noida', '111111', 'test', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 30.00, NULL, 'EOS14906263', '03 July 2023', 'July', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'deliverd', '2023-07-03 04:18:54', '2023-07-03 04:21:43'),
(20, 16, 2, 2, 1, 'Akash', 'akash@gmail.com', '987654321', 'noida', '121212', 'for testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 90.00, NULL, 'EOS70958229', '04 July 2023', 'July', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'pending', '2023-07-04 00:41:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `vendor_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 16, NULL, 'Red', 'Small', '4', 30.00, '2023-06-14 06:22:42', NULL),
(2, 1, 15, NULL, 'Red', 'Small', '1', 10.00, '2023-06-14 06:22:42', NULL),
(3, 1, 16, NULL, 'Red', 'Small', '1', 30.00, '2023-06-14 06:22:42', NULL),
(4, 2, 15, '2', 'Red', 'Small', '2', 10.00, '2023-06-14 06:34:17', NULL),
(5, 3, 16, '2', 'Red', 'Small', '2', 30.00, '2023-06-14 06:40:44', NULL),
(6, 4, 15, '2', 'Red', 'Small', '1', 10.00, '2023-06-14 23:48:59', NULL),
(7, 5, 16, '2', 'Red', 'Small', '2', 30.00, '2023-06-15 00:57:07', NULL),
(8, 6, 16, '2', 'Red', 'Small', '1', 30.00, '2023-06-15 01:42:56', NULL),
(9, 7, 16, '2', 'Red', 'Small', '1', 30.00, '2023-06-15 01:44:48', NULL),
(10, 9, 17, '2', 'Red', 'Small', '1', 30.00, '2023-06-15 01:47:57', NULL),
(11, 10, 15, '2', 'Red', 'Small', '1', 10.00, '2023-06-15 04:41:49', NULL),
(12, 11, 16, '2', 'Red', 'Small', '1', 30.00, '2023-06-15 04:47:12', NULL),
(13, 12, 23, '2', 'Red', 'Small', '1', 65.00, '2023-06-15 12:47:23', NULL),
(14, 13, 16, '2', 'Red', 'Small', '1', 30.00, '2023-06-16 01:31:19', NULL),
(15, 14, 16, '2', 'Red', 'Small', '2', 30.00, '2023-06-16 06:00:20', NULL),
(16, 15, 14, '2', 'Blue', 'Midium', '5', 30.00, '2023-06-19 03:49:28', NULL),
(17, 16, 16, '2', '--Choose Color--', '--Choose Size--', '1', 30.00, '2023-06-20 06:48:38', NULL),
(18, 17, 17, '2', 'Blue', 'Midium', '2', 30.00, '2023-06-21 03:19:48', NULL),
(19, 18, 17, '2', 'Red', 'Midium', '1', 30.00, '2023-06-22 00:04:38', NULL),
(20, 19, 16, '2', 'Red', 'Small', '1', 30.00, '2023-07-03 04:18:54', NULL),
(21, 20, 14, '2', 'Red', 'Small', '3', 30.00, '2023-07-04 00:41:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_tags` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp` text NOT NULL,
  `long_descp` text NOT NULL,
  `product_thambnail` varchar(255) NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, 3, 2, 'Alisha', 'alisha', '112', '0', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '30', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768021831013146.jpg', '2', NULL, NULL, NULL, NULL, 1, '2023-06-07 00:32:30', '2023-06-19 03:50:46'),
(15, 13, 4, 3, 'ALX', 'alx', '12', '5', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '50', '10', 'Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">ALX</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768022311085936.jpg', '2', 1, 1, 1, 1, 1, '2023-06-07 00:27:50', NULL),
(16, 14, 9, 4, 'Cat-1', 'cat-1', 'a1', '4', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '30', 'Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768022775248601.jpg', '2', 1, 1, 1, 1, 1, '2023-06-07 00:35:18', '2023-07-03 04:21:43'),
(17, 15, 16, 15, 'Cat-2', 'cat-2', 'a1', '1', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '30', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768023135607843.jpg', '2', 1, 1, 1, 1, 1, '2023-06-07 00:41:01', '2023-06-22 00:06:52'),
(18, 16, 18, 5, 'Central Lastic', 'central-lastic', '12', '10', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '30', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768024034392202.jpg', '2', 1, 1, 1, 1, 1, '2023-06-07 00:55:17', NULL),
(19, 17, 18, 6, 'Dream', 'dream', '10', '10', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '50', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768024386003782.JPG', '2', 1, 1, 1, 1, 1, '2023-06-07 01:00:48', NULL),
(20, 18, 18, 7, 'Ghazal', 'ghazal', 'a1', '5', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '40', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768025727748910.jpeg', '2', 1, 1, 1, 1, 1, '2023-06-07 01:22:07', NULL),
(21, 19, 18, 8, 'Julie', 'julie', '12', '4', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '60', '23', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768026369920180.jpg', '2', 1, 1, 1, 1, 1, '2023-06-07 01:32:27', NULL),
(22, 20, 18, 9, 'Merry set', 'merry-set', 'a12', '5', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '70', '15', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768026624581698.JPG', '2', 1, 1, 1, 1, 1, '2023-06-07 01:36:22', NULL),
(23, 21, 18, 17, 'Mistyfee', 'mistyfee', 'a1', '10', 'new product,top product', 'Small,Midium,Large ,XL', 'Red,Blue,Black,green', '110', '65', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768026889441157.jpg', '2', 1, 1, 1, NULL, 1, '2023-06-07 23:27:31', '2023-06-07 23:27:31'),
(24, 1, 19, 18, 'pari-1', 'pari-1', 'a1', '5', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '40', 'asdad', '<p>Hello, World!</p>', 'upload/products/thambnail/1768118270636899.jpg', '2', 1, 1, 1, 1, 1, '2023-06-08 01:53:12', NULL),
(25, 22, 19, 18, 'Sporty-1', 'sporty-1', '1sq', '10', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '10', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design.', '<p class=\"MsoNormal\"><strong><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design.</span><strong><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"><span style=\"font-size: 11pt;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design.</span>&nbsp;</span></p>', 'upload/products/thambnail/1768132174793399.jpg', '2', 1, 1, 1, 1, 1, '2023-06-08 05:34:05', NULL),
(26, 23, 19, 18, 'Sporty-2', 'sporty-2', 'qas11', '10', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '120', '64', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768133076216934.jpg', '2', 1, 1, 1, 1, 1, '2023-06-08 05:48:31', NULL),
(27, 24, 19, 18, 'Sponge padded', 'sponge-padded', 'asa223', '10', 'new product,top product,best product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '34', 'Alisha\r\nFiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing.', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1768133570721772.jpg', '2', 1, 1, 1, NULL, 1, '2023-06-09 02:01:13', '2023-06-09 02:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `rating`, `status`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 15, 16, 'good productasfsfsfsfsfsdfsdf', '3', '0', 2, '2023-06-17 09:20:44', NULL),
(2, 15, 16, 'very good productsdsgdhrjtkyllu;ulu', '5', '0', 2, '2023-06-17 09:26:15', NULL),
(3, 15, 16, 'testing for comment', '4', '1', 2, '2023-06-17 09:37:08', '2023-06-17 10:40:11'),
(5, 17, 16, 'Cat-2 testing review', '5', '1', 2, '2023-06-17 10:37:02', '2023-06-17 10:37:31'),
(6, 14, 16, 'testing purpose', '4', '1', 2, '2023-06-19 03:41:58', '2023-06-19 03:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(2, 2, 'noida', NULL, '2023-06-14 00:35:33'),
(3, 3, 'Naya Bash', NULL, '2023-06-14 00:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(2, 'sector-15', NULL, '2023-06-14 00:35:15'),
(3, 'sector-16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'uttar pradash', NULL, NULL),
(2, 3, 3, 'U.P.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `support_phone`, `phone_one`, `email`, `company_address`, `facebook`, `twitter`, `youtube`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1769295531058329.webp', '1900 - 8888', '(+91) - 540-025-124553', 'sale@Fiamme.com', 'Noida', 'https://www.facebook.com/', 'https://twitter.com/i/flow/login', 'https://youtube.com/', '© 2023, FIAMME All rights reserved', NULL, '2023-06-21 01:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `short_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'RIYA', 'Heavy Padded Seamless \'N, Hook(Super Pc)', 'upload/slider/1767932264073040.jpg', NULL, '2023-06-06 00:36:34'),
(3, 'ALEX', 'Backless Seamless (Super PC Soft)', 'upload/slider/1767930522071440.jpg', NULL, '2023-06-06 00:32:48'),
(4, 'CATE', 'Seamless Light Padded \"N\" hook (Super PC)', 'upload/slider/1767933251918451.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(17, 18, 'woman-clothing', 'woman-clothing', NULL, NULL),
(18, 19, 'woman-lingerie', 'woman-lingerie', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `vendor_join` varchar(255) DEFAULT NULL,
  `vendor_short_info` text DEFAULT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `last_seen` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `vendor_join`, `vendor_short_info`, `role`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$5TXnWeTCye9eMCG9sjRtrunrCcnKO1eIyt6hVO7v19sDvqIKdbLau', '202305311927avatar-11.png', '12112112212', 'noida', NULL, NULL, 'admin', 'active', '2023-07-04 04:34:21', NULL, NULL, '2023-07-03 23:04:21'),
(2, 'Akash', 'vendor', 'vendor@gmail.com', NULL, '$2y$10$RzJMqpP8rUawnIC/8CCKxepY.A3RfzQT1c9BEvcAdbXL6vs4R83wG', '202306051127avatar-1.png', '121212121212', 'noida', '2023', 'testing', 'vendor', 'active', NULL, NULL, NULL, '2023-06-05 05:57:51'),
(3, 'Test', 'test', 'test@gmail.com', NULL, '$2y$10$HHGQvZdoJssKENkdWwtu5.vk8ndQaYgBqIwyUwGxvaOqBuVfWOM/y', '202306051100avatar-1.png', '1222232222', 'noida', NULL, NULL, 'user', 'active', '2023-06-16 11:14:26', NULL, NULL, '2023-06-16 05:44:26'),
(4, 'Francis Paucek', NULL, 'ulockman@example.com', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'q6ki9uUatf', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(5, 'Violet Barrows', NULL, 'quentin.sanford@example.net', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'VflQ0O2vzJ', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(6, 'Alyson Renner', NULL, 'feest.perry@example.com', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'wk8edVLBU4', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(7, 'Samantha Pfannerstill Sr.', NULL, 'marco57@example.net', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'IEbEKTi3SJ', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(8, 'Zander Leuschke', NULL, 'glubowitz@example.com', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'oFMlWsFp3C', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(9, 'Ford Kiehn', NULL, 'al.shields@example.net', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, '1xEV9gYq3N', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(10, 'Grant Emmerich', NULL, 'bernardo58@example.org', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'kmrTYS6uKj', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(11, 'Jarret Welch', NULL, 'rritchie@example.net', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'FNPtG2OsPS', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(12, 'Arne Thiel', NULL, 'eliseo88@example.net', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, 'XpcrAviH1F', '2023-05-31 05:52:19', '2023-05-31 05:52:19'),
(13, 'Oda Dicki I', NULL, 'schultz.johanna@example.com', '2023-05-31 05:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, '0fGSo9lf4R', '2023-05-31 05:52:20', '2023-05-31 05:52:20'),
(14, 'user', 'user', 'user@gmail.com', NULL, '$2y$10$TLn3M6cT7V4wVW6QQSbRbOFI4uHpAlCgpnoIc2tnXoq7eV1JsmMze', '202306150914avatar-13.png', '12121212', 'noida', NULL, NULL, 'user', 'active', '2023-06-16 10:54:36', NULL, '2023-06-01 00:27:33', '2023-06-16 05:24:36'),
(15, 'tech shop', 'tech', 'tech@gmail.com', NULL, '$2y$10$i3ybmanf9IBdlyZYpyTI0.0.G3hgtBrOv6BPKZ8WBQ47s7Lt7WN4y', '202306031856avatar-1.png', '1212121212', 'india', '2023', 'noisaddd', 'vendor', 'inactive', NULL, NULL, NULL, '2023-06-03 13:26:51'),
(16, 'Akash', 'akash', 'akash@gmail.com', NULL, '$2y$10$5fZXUKNd8K9cG3i2CDpET.GXMI1zekr/27XKCaoGte4jolGReZy7S', '202306171601avatar-1.png', '987654321', 'noida', NULL, NULL, 'user', 'active', '2023-07-04 08:54:09', NULL, '2023-06-16 05:50:20', '2023-07-04 03:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 14, 14, '2023-06-13 01:41:44', NULL),
(4, 14, 16, '2023-06-13 04:56:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
