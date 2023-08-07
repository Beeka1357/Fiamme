-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 02:53 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Bras', 'upload/category/1772670099956349.webp', 'bras', NULL, '2023-07-28 07:42:25'),
(2, 'Panties', 'upload/category/1772670122752987.webp', 'panties', NULL, NULL),
(3, 'Sportswear', 'upload/category/1772670157791554.webp', 'sportswear', NULL, NULL),
(4, 'Sets', 'upload/category/1772670217630592.webp', 'sets', NULL, NULL),
(5, 'New Arrivals', 'upload/category/1772670300057962.webp', 'new-arrivals', NULL, NULL),
(6, 'Offers', 'upload/category/1772670648843552.webp', 'offers', NULL, NULL),
(7, 'All Collection', 'upload/category/1772914897968109.webp', 'all-collection', NULL, '2023-07-31 00:33:23');

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
(5, '2023_06_02_053519_create_brands_table', 1),
(6, '2023_06_02_125015_create_categories_table', 1),
(7, '2023_06_03_092702_create_sub_categories_table', 1),
(8, '2023_06_03_100900_create_multi_imgs_table', 1),
(9, '2023_06_03_100944_create_products_table', 1),
(10, '2023_06_05_120140_create_sliders_table', 1),
(11, '2023_06_05_130748_create_banners_table', 1),
(12, '2023_06_13_054158_create_shoppingcart_table', 1),
(13, '2023_06_13_062639_create_wishlists_table', 1),
(14, '2023_06_13_090621_create_compares_table', 1),
(15, '2023_06_13_120616_create_coupons_table', 1),
(16, '2023_06_13_153643_create_ship_districts_table', 1),
(17, '2023_06_13_153844_create_ship_divisions_table', 1),
(18, '2023_06_13_153916_create_ship_states_table', 1),
(19, '2023_06_14_094000_create_orders_table', 1),
(20, '2023_06_14_094055_create_order_items_table', 1),
(21, '2023_06_16_123055_create_blog_categories', 1),
(22, '2023_06_16_123203_create_blog_posts', 1),
(23, '2023_06_17_142949_create_reviews_table', 1),
(24, '2023_06_20_111134_create_site_settings', 1),
(25, '2023_06_21_071939_create_seos_table', 1),
(26, '2023_07_13_052742_create_sub_sub_categories_table', 1),
(27, '2023_07_21_065411_create_product_by_colors_table', 1);

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
(11, 9, 'upload/products/multi-image/9/red/1772931390432304.jpg', '2023-07-31 04:55:38', NULL),
(12, 9, 'upload/products/multi-image/9/red/1772931397214944.jpg', '2023-07-31 04:55:45', NULL),
(13, 9, 'upload/products/multi-image/9/red/1772931405316788.jpg', '2023-07-31 04:55:55', NULL),
(14, 10, 'upload/products/multi-image/10/pink/1772932534956176.jpg', '2023-07-31 05:13:43', NULL),
(15, 10, 'upload/products/multi-image/10/pink/1772932535068012.jpg', '2023-07-31 05:13:43', NULL),
(16, 10, 'upload/products/multi-image/10/pink/1772932535171987.jpg', '2023-07-31 05:13:43', NULL),
(17, 11, 'upload/products/multi-image/11/red/1772934015751820.jpg', '2023-07-31 05:37:22', NULL),
(18, 11, 'upload/products/multi-image/11/red/1772934023123633.jpg', '2023-07-31 05:37:29', NULL),
(19, 11, 'upload/products/multi-image/11/red/1772934030009222.jpg', '2023-07-31 05:37:35', NULL),
(20, 12, 'upload/products/multi-image/12/pink/1772934295296530.jpg', '2023-07-31 05:41:42', NULL),
(21, 12, 'upload/products/multi-image/12/pink/1772934295415291.jpg', '2023-07-31 05:41:42', NULL),
(22, 12, 'upload/products/multi-image/12/pink/1772934295533552.jpg', '2023-07-31 05:41:42', NULL),
(23, 13, 'upload/products/multi-image/13/rose/1772935043438493.jpg', '2023-07-31 05:53:35', NULL),
(24, 13, 'upload/products/multi-image/13/rose/1772935043561529.jpg', '2023-07-31 05:53:35', NULL),
(25, 13, 'upload/products/multi-image/13/rose/1772935043674225.jpg', '2023-07-31 05:53:35', NULL),
(26, 14, 'upload/products/multi-image/14/black/1772941932138909.jpg', '2023-07-31 07:43:05', NULL),
(27, 14, 'upload/products/multi-image/14/black/1772941932367748.jpg', '2023-07-31 07:43:05', NULL),
(28, 15, 'upload/products/multi-image/15/red/1772943048871382.jpg', '2023-07-31 08:00:50', NULL),
(29, 15, 'upload/products/multi-image/15/red/1772943048954453.jpg', '2023-07-31 08:00:50', NULL),
(30, 16, 'upload/products/multi-image/16/black/1773003341112318.jpg', '2023-07-31 23:59:09', NULL),
(31, 16, 'upload/products/multi-image/16/black/1773003341412426.jpg', '2023-07-31 23:59:09', NULL),
(32, 16, 'upload/products/multi-image/16/black/1773003341652115.jpg', '2023-07-31 23:59:10', NULL),
(33, 17, 'upload/products/multi-image/17/crimson/1773003999655216.jpg', '2023-08-01 00:09:37', NULL),
(34, 17, 'upload/products/multi-image/17/crimson/1773003999936844.jpg', '2023-08-01 00:09:37', NULL),
(35, 17, 'upload/products/multi-image/17/crimson/1773004000200033.jpg', '2023-08-01 00:09:38', NULL),
(36, 17, 'upload/products/multi-image/17/crimson/1773004000519050.jpg', '2023-08-01 00:09:38', NULL),
(37, 18, 'upload/products/multi-image/18/black/1773004569917762.jpg', '2023-08-01 00:18:41', NULL),
(38, 18, 'upload/products/multi-image/18/black/1773004570015170.jpg', '2023-08-01 00:18:41', NULL),
(39, 18, 'upload/products/multi-image/18/black/1773004570106751.jpg', '2023-08-01 00:18:41', NULL),
(40, 18, 'upload/products/multi-image/18/black/1773004570320026.jpg', '2023-08-01 00:18:41', NULL),
(41, 19, 'upload/products/multi-image/19/red/1773005052669363.jpg', '2023-08-01 00:26:21', NULL),
(42, 19, 'upload/products/multi-image/19/red/1773005052763870.jpg', '2023-08-01 00:26:21', NULL),
(43, 19, 'upload/products/multi-image/19/red/1773005052852920.jpg', '2023-08-01 00:26:21', NULL),
(44, 19, 'upload/products/multi-image/19/red/1773005052944687.jpg', '2023-08-01 00:26:21', NULL),
(46, 21, 'upload/products/multi-image/21/cornsilk/1773005838734570.jpg', '2023-08-01 00:38:51', NULL),
(47, 21, 'upload/products/multi-image/21/cornsilk/1773005838832828.jpg', '2023-08-01 00:38:51', NULL),
(48, 21, 'upload/products/multi-image/21/cornsilk/1773005838923507.jpg', '2023-08-01 00:38:51', NULL),
(49, 21, 'upload/products/multi-image/21/cornsilk/1773005838997964.jpg', '2023-08-01 00:38:51', NULL),
(50, 21, 'upload/products/multi-image/21/cornsilk/1773005839091373.jpg', '2023-08-01 00:38:51', NULL);

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
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `adress`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 1, 'Test', 'test@gmail.com', '91123232332', 'noida', '120021', 'testing', 'Cash On Delivery', 'Cash On Delivery', NULL, 'inr', 80.00, NULL, 'EOS78452615', '07 August 2023', 'August', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deliverd', '2023-08-07 06:42:34', '2023-08-07 06:44:00');

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
(1, 1, 14, '2', 'black', '28', '1', 80.00, '2023-08-07 06:42:34', NULL);

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
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_tags` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `product_color_code` int(11) DEFAULT NULL,
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

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `group_code`, `product_color_code`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(11, NULL, 1, 1, 'Alisha', 'alisha', '01', '10', 'new product,top product', '28,30,32,34', 'red', '01', NULL, '100', '30', 'Alisha red padded seamless bra', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1772933978418933.jpg', '2', 1, 1, 1, 1, 1, '2023-07-31 05:37:15', NULL),
(12, NULL, 1, 1, 'Alisha', 'alisha', '01', '10', 'new product,top product', '28,30,32,34', 'hotpink', '01', NULL, '100', '40', 'Alisha red padded seamless bra', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1772934295021743.jpg', '2', 1, 1, 1, NULL, 1, '2023-07-31 06:01:05', '2023-07-31 06:01:05'),
(13, NULL, 1, 1, 'Alisha', 'alisha', '01', '10', 'new product', '28,30,32,34,36', 'pink', '01', NULL, '100', '40', 'Alisha Rose padded seamless bra', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1772935043213163.jpg', '2', 1, 1, 1, NULL, 1, '2023-07-31 06:00:50', '2023-07-31 06:00:50'),
(14, NULL, 1, 1, 'Alisha', 'alisha', '01', '9', 'top product', '28,30,32,34', 'black', '01', NULL, '100', '80', 'Alisha black padded seamless bra', '<p class=\"MsoNormal\"><strong style=\"mso-bidi-font-weight: normal;\"><u><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; line-height: 115%;\">Alisha</span></u></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1772941931627165.jpg', '2', NULL, NULL, 1, NULL, 1, '2023-08-01 00:13:16', '2023-08-07 06:44:00'),
(15, NULL, 4, 8, 'Saloni bra panty', 'saloni-bra-panty', '02', '10', 'new product,top product', '28,30,32,34,36', 'red', '02', NULL, '100', '70', 'Saloni bra panty set Red, maroon pink', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose</span></p>', 'upload/products/thambnail/1772943048616157.jpg', '2', 1, NULL, NULL, 1, 1, '2023-07-31 08:00:50', NULL),
(16, NULL, 1, 7, 'sport bra', 'sport-bra', '03', '10', 'new product,top product,featured product', '28,30,32,34,36', 'black', '03', NULL, '100', '80', 'sport bra black', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1773003340268982.jpg', '2', 1, 1, 1, 1, 1, '2023-07-31 23:59:09', NULL),
(17, NULL, 1, 2, 'lotus', 'lotus', '04', '10', 'new product,top product', '28,30,32,34,36', 'crimson', '04', NULL, '100', '70', 'lotus bras', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1773003999069734.jpg', '2', NULL, 1, NULL, NULL, 1, '2023-08-01 00:09:37', NULL),
(18, NULL, 1, 2, 'lotus2', 'lotus2', '04', '10', 'new product,top product', '28,30,32,34,36', 'black', '04', NULL, '100', '60', 'lotus 2nd product', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1773004569433005.jpg', '2', NULL, NULL, NULL, NULL, 1, '2023-08-01 00:18:41', NULL),
(19, NULL, 1, 2, 'lotus3', 'lotus3', '04', '10', 'new product,top product', '28,30,32,34,36', 'red', '04', NULL, '100', '70', 'lotus 3rd product', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1773005052508693.jpg', '2', NULL, NULL, NULL, NULL, 1, '2023-08-01 00:26:21', NULL),
(21, NULL, 1, 2, 'lotus3', 'lotus3', '04', '10', 'new product,top product', '28,30,32,34', 'cornsilk', '04', NULL, '100', '60', 'lotus3 cornsilk color bra', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; background: white;\">Fiamme Lingerie Padded multicolored Combo women seamless sponge padded combo multicolored everyday bra, 100% Brand New and High Quality premium fabric product which is Modern and having design. It is very comfortable to touch and wear. specially designed for girls Premium Quality . Designed to make a women look more young and ravishing. This is a perfect garment to make you look charming and cool. It is a perfect bra which gives you a stylist, , sensuous and western look. This range of bra is highly appreciated and demanded widely. Increase variety of wardrobe. Specially design for all purpose.</span></p>', 'upload/products/thambnail/1773005838568729.jpg', '2', NULL, NULL, NULL, NULL, 1, '2023-08-01 00:38:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_by_colors`
--

CREATE TABLE `product_by_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_by_color` varchar(255) NOT NULL,
  `product_by_thambnail` varchar(255) NOT NULL,
  `product_by_multiImgs` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 'Noida', NULL, NULL);

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
(1, 'Sector - 2', NULL, '2023-08-07 06:42:03');

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
(1, 1, 1, 'Uttar Pradash', NULL, NULL);

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
(1, 'upload/logo/logo.webp', '9899154826', '8178495342', 'support@fiamme.com', '12A/60, Lane No. 2, Vijay Mohalla Maujpur delhi 53', 'frontend/assets/imgs/theme/icons/icon-facebook-white.svg', 'frontend/assets/imgs/theme/icons/icon-twitter-white.svg', 'frontend/assets/imgs/theme/icons/icon-instagram-white.svg', 'Fiamme All Reserved', NULL, '2023-08-07 00:39:15');

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
(1, 'a', 'a', 'upload/slider/1772912651599115.webp', NULL, NULL),
(2, 'b', 'b', 'upload/slider/1772912668719887.webp', NULL, NULL),
(3, 'c', 'c', 'upload/slider/1772912686287869.webp', NULL, NULL);

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
(1, 1, 'Alisha', 'alisha', NULL, NULL),
(2, 1, 'Alex', 'alex', NULL, NULL),
(3, 1, 'Double straps (blouse)', 'double-straps-(blouse)', NULL, NULL),
(4, 1, 'Julie', 'julie', NULL, NULL),
(5, 1, 'Sponge padded bra', 'sponge-padded-bra', NULL, NULL),
(6, 1, 'Mistyfee', 'mistyfee', NULL, NULL),
(7, 1, 'Sporty1', 'sporty1', NULL, NULL),
(8, 4, 'Saloni', 'saloni', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `subsubcategory_name` varchar(255) NOT NULL,
  `subsubcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `subsubcategory_name`, `subsubcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'alisha', 'alisha', NULL, NULL);

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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$E3GryOcUxFfImU8dfwfDx.kwlEPxA/VaoQqyM1VHx2H9VVqy6IL2C', '202307310526202305301832avatar-1.png', NULL, NULL, 'admin', 'active', '2023-08-07 12:42:55', NULL, NULL, '2023-08-07 07:12:55'),
(2, 'Akash', 'vendor', 'vendor@gmail.com', NULL, '$2y$10$H6hPHBB3dtrlAXzqpYhqOOxmxzsx404TM8CJ6h9kNgjc1RJFJCUNm', NULL, NULL, NULL, 'vendor', 'active', NULL, NULL, NULL, NULL),
(3, 'Test', 'test', 'test@gmail.com', NULL, '$2y$10$dQUyeVSBAyYd0XOkkqIPTuZ9KCm72RFr0F94rEUWEC/0E8aOpjkcC', '202307310605202306051115avatar-11.png', '91123232332', 'noida', 'user', 'active', '2023-08-07 12:49:01', NULL, NULL, '2023-08-07 07:19:01'),
(4, 'Bettie Reinger', NULL, 'fwiza@example.net', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'BMsLReXHyX', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(5, 'Watson Farrell', NULL, 'irving16@example.com', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'GAcXX9DMei', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(6, 'Ms. Yasmine Boyer', NULL, 'herminio.rippin@example.org', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'thWC3GVjki', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(7, 'Dr. Hipolito Moore II', NULL, 'pswaniawski@example.org', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'E6PRVhJlB9', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(8, 'Adrianna Feest PhD', NULL, 'uortiz@example.org', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'IkCCSyfYgy', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(9, 'Larissa Armstrong', NULL, 'aleen04@example.com', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'yaVI69BK9l', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(10, 'Johan Medhurst', NULL, 'ykohler@example.net', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'VdWYewIPaK', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(11, 'Mr. Derek West IV', NULL, 'lkirlin@example.net', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'AinD37QKuI', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(12, 'Magali Gusikowski', NULL, 'dickinson.malachi@example.org', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'VqvSCVYyKP', '2023-07-28 07:26:25', '2023-07-28 07:26:25'),
(13, 'Edgar Romaguera', NULL, 'bauch.stella@example.org', '2023-07-28 07:26:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'user', 'active', NULL, 'NDhzaHHtMs', '2023-07-28 07:26:25', '2023-07-28 07:26:25');

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
-- Indexes for table `product_by_colors`
--
ALTER TABLE `product_by_colors`
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
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_by_colors`
--
ALTER TABLE `product_by_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
