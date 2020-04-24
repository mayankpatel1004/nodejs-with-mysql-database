-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2020 at 12:37 AM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloudswiftsolutions_com_18042020`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT 'activities',
  `status_action` varchar(25) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `record_id` int(11) NOT NULL DEFAULT '0',
  `record_name` varchar(255) DEFAULT NULL,
  `record_column` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_name` varchar(255) DEFAULT NULL,
  `note1` varchar(255) DEFAULT NULL,
  `note2` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_pin` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `guest_customer` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1=registration during guest order',
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_question_id` int(11) NOT NULL DEFAULT '0',
  `security_answer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_on_listing` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `show_action_checkbox` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `web_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'users',
  `wallet_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `blocked` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `deleted_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `cart_id` bigint(11) NOT NULL,
  `cart_sub_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) DEFAULT NULL,
  `is_customer` enum('Y','N') NOT NULL DEFAULT 'N',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_address_1` varchar(255) DEFAULT NULL,
  `billing_address_2` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state_id` int(11) NOT NULL DEFAULT '0',
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_country_id` int(11) NOT NULL DEFAULT '0',
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_zipcode` varchar(255) DEFAULT NULL,
  `billing_contact` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_address_1` varchar(255) DEFAULT NULL,
  `shipping_address_2` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_state_id` int(11) NOT NULL DEFAULT '0',
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_country_id` int(11) NOT NULL DEFAULT '0',
  `shipping_zipcode` varchar(255) DEFAULT NULL,
  `shipping_contact` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `item_coupon_type` varchar(255) DEFAULT NULL,
  `currancy` varchar(10) DEFAULT NULL,
  `cashback_amount_applied` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_amount_applied` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cashback_wallet_amount_used` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_ordered_quantity` int(11) NOT NULL DEFAULT '0',
  `total_items_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_items_tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_items_shipping_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ip_address` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `shipping_type` varchar(255) DEFAULT NULL,
  `shipping_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_notes` text,
  `device` varchar(255) DEFAULT '1.0',
  `device_id` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `browser_name` varchar(255) DEFAULT NULL,
  `user_agent` varchar(1024) DEFAULT NULL,
  `browser_version` varchar(100) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `browser_pattern` varchar(255) DEFAULT NULL,
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_cart`
--

INSERT INTO `ec_cart` (`cart_id`, `cart_sub_id`, `session_id`, `is_customer`, `customer_id`, `customer_name`, `order_status`, `billing_first_name`, `billing_last_name`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_state_id`, `billing_state`, `billing_country_id`, `billing_country`, `billing_zipcode`, `billing_contact`, `billing_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_state_id`, `shipping_state`, `shipping_country`, `shipping_country_id`, `shipping_zipcode`, `shipping_contact`, `shipping_email`, `coupon_code`, `coupon_type`, `item_coupon_type`, `currancy`, `cashback_amount_applied`, `coupon_amount_applied`, `cashback_wallet_amount_used`, `total_ordered_quantity`, `total_items_amount`, `total_items_tax_amount`, `total_items_shipping_amount`, `order_total`, `ip_address`, `payment_type`, `shipping_type`, `shipping_amount`, `order_notes`, `device`, `device_id`, `device_type`, `browser_name`, `user_agent`, `browser_version`, `platform`, `browser_pattern`, `site_id`, `created_at`, `updated_at`, `expire_at`) VALUES
(1, 0, 'pkaqlt6f9hai6og5favh2oih1d', 'N', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '$', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '0.00', '0.00', '::1', NULL, NULL, '0.00', NULL, '1.0', NULL, 'SYSTEM', 'Google Chrome', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/79.0.3945.79 Chrome/79.0.3945.79 Safari/537.36', '79.0.3945.79', 'linux', '#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#', 0, '2020-04-14 17:53:08', '2020-04-14 12:23:08', '2020-04-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart_product`
--

CREATE TABLE `ec_cart_product` (
  `cart_product_id` bigint(11) NOT NULL,
  `cart_id` int(11) NOT NULL DEFAULT '0',
  `cart_sub_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_price_id` int(11) NOT NULL DEFAULT '0',
  `item_name` varchar(255) DEFAULT NULL,
  `item_alias` varchar(255) DEFAULT NULL,
  `ordered_quantity` int(11) NOT NULL DEFAULT '0',
  `product_attribute_1` varchar(255) DEFAULT NULL,
  `product_attribute_2` varchar(255) DEFAULT NULL,
  `product_attribute_3` varchar(255) DEFAULT NULL,
  `product_option_1` varchar(255) DEFAULT NULL,
  `product_option_2` varchar(255) DEFAULT NULL,
  `product_option_3` varchar(255) DEFAULT NULL,
  `product_option_4` varchar(255) DEFAULT NULL,
  `product_option_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_option_price_display` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currancy` varchar(255) DEFAULT NULL,
  `item_tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_shipping_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_default_price` enum('Y','N') NOT NULL DEFAULT 'Y',
  `product_quantity` int(11) NOT NULL DEFAULT '0',
  `special_price_from_date` date DEFAULT NULL,
  `special_price_to_date` date DEFAULT NULL,
  `item_price_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_shipping_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `final_item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cashback_credit_transaction`
--

CREATE TABLE `ec_cashback_credit_transaction` (
  `cashbackcredit_transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `cashback_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cashback_transaction`
--

CREATE TABLE `ec_cashback_transaction` (
  `cashback_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `currancy` varchar(10) DEFAULT NULL,
  `cashback_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `item_coupon_type` varchar(255) DEFAULT NULL,
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_coupon`
--

CREATE TABLE `ec_coupon` (
  `coupon_id` int(11) NOT NULL,
  `item_type` int(11) DEFAULT NULL,
  `coupon_code_type` int(11) NOT NULL DEFAULT '0',
  `specific_use_id` int(11) NOT NULL DEFAULT '0',
  `coupon_title` varchar(255) DEFAULT NULL,
  `coupon_alias` varchar(255) DEFAULT NULL,
  `coupon_description` text,
  `coupon_terms_conditions` text,
  `order_calculation_required` enum('Y','N') NOT NULL DEFAULT 'N',
  `minimum_order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_item_type` varchar(255) DEFAULT NULL,
  `coupon_item_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(255) DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `currancy` varchar(20) DEFAULT NULL,
  `coupon_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_amount_maximum` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_per_customer` int(11) DEFAULT NULL,
  `created_user_id` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `site_id` tinyint(4) DEFAULT NULL,
  `item_type_alias` varchar(255) DEFAULT NULL,
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_date` datetime DEFAULT NULL,
  `deleted_user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order`
--

CREATE TABLE `ec_order` (
  `order_id` bigint(11) NOT NULL,
  `order_id_unique` varchar(255) DEFAULT NULL,
  `cart_id` int(11) NOT NULL DEFAULT '0',
  `cart_sub_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) DEFAULT NULL,
  `is_customer` enum('Y','N') NOT NULL DEFAULT 'N',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_address_1` varchar(255) DEFAULT NULL,
  `billing_address_2` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state_id` int(11) NOT NULL DEFAULT '0',
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_country_id` int(11) NOT NULL DEFAULT '0',
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_zipcode` varchar(255) DEFAULT NULL,
  `billing_contact` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_address_1` varchar(255) DEFAULT NULL,
  `shipping_address_2` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_state_id` int(11) NOT NULL DEFAULT '0',
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_country_id` int(11) NOT NULL DEFAULT '0',
  `shipping_zipcode` varchar(255) DEFAULT NULL,
  `shipping_contact` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `item_coupon_type` varchar(255) DEFAULT NULL,
  `currancy` varchar(10) DEFAULT NULL,
  `cashback_amount_applied` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_amount_applied` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cashback_wallet_amount_used` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_ordered_quantity` int(11) NOT NULL DEFAULT '0',
  `total_items_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_items_tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_items_shipping_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ip_address` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `shipping_type` varchar(255) DEFAULT NULL,
  `shipping_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_notes` text,
  `device` varchar(255) DEFAULT '1.0',
  `device_id` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `browser_name` varchar(255) DEFAULT NULL,
  `user_agent` varchar(1024) DEFAULT NULL,
  `browser_version` varchar(100) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `browser_pattern` varchar(255) DEFAULT NULL,
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_at` datetime DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `cashback_credited` enum('Y','N') NOT NULL DEFAULT 'N',
  `cashback_credited_user_id` int(11) NOT NULL DEFAULT '0',
  `cashback_credited_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_payment_details`
--

CREATE TABLE `ec_order_payment_details` (
  `order_payment_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `order_key` varchar(255) DEFAULT NULL,
  `order_value` varchar(255) DEFAULT NULL,
  `payment_gateway_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_products`
--

CREATE TABLE `ec_order_products` (
  `order_product_id` bigint(11) NOT NULL,
  `cart_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `cart_sub_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_price_id` int(11) NOT NULL DEFAULT '0',
  `item_name` varchar(255) DEFAULT NULL,
  `item_alias` varchar(255) DEFAULT NULL,
  `ordered_quantity` int(11) NOT NULL DEFAULT '0',
  `product_attribute_1` varchar(255) DEFAULT NULL,
  `product_attribute_2` varchar(255) DEFAULT NULL,
  `product_attribute_3` varchar(255) DEFAULT NULL,
  `product_option_1` varchar(255) DEFAULT NULL,
  `product_option_2` varchar(255) DEFAULT NULL,
  `product_option_3` varchar(255) DEFAULT NULL,
  `product_option_4` varchar(255) DEFAULT NULL,
  `product_option_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_option_price_display` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currancy` varchar(255) DEFAULT NULL,
  `item_tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_shipping_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_default_price` enum('Y','N') NOT NULL DEFAULT 'Y',
  `product_quantity` int(11) NOT NULL DEFAULT '0',
  `special_price_from_date` date DEFAULT NULL,
  `special_price_to_date` date DEFAULT NULL,
  `item_price_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_shipping_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `final_item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_status`
--

CREATE TABLE `ec_order_status` (
  `order_status_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `updated_status` varchar(255) DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `updated_by_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `item_id` bigint(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_title` varchar(255) DEFAULT NULL,
  `item_alias` varchar(255) DEFAULT NULL,
  `parent_item_id` int(11) NOT NULL DEFAULT '0',
  `item_type_alias` varchar(255) DEFAULT NULL,
  `item_section_alias` varchar(255) DEFAULT NULL,
  `item_category_alias` varchar(255) DEFAULT NULL,
  `item_tags_alias` varchar(255) DEFAULT NULL,
  `item_format_alias` varchar(255) DEFAULT NULL,
  `item_template_name` varchar(255) DEFAULT NULL,
  `item_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_download_product` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_free_product` enum('Y','N') NOT NULL DEFAULT 'N',
  `in_stock` enum('Y','N') NOT NULL DEFAULT 'Y',
  `currancy` varchar(20) DEFAULT NULL,
  `item_shipping_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `comment_count` int(11) NOT NULL DEFAULT '0',
  `item_description` text,
  `item_short_description` varchar(1024) DEFAULT NULL,
  `item_terms_conditions` varchar(1024) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `publish_month` int(11) NOT NULL DEFAULT '0',
  `publish_year` int(11) NOT NULL DEFAULT '0',
  `publish_date` date DEFAULT NULL,
  `publish_end_date` date DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `file1` varchar(255) DEFAULT NULL,
  `file2` varchar(255) DEFAULT NULL,
  `file3` varchar(255) DEFAULT NULL,
  `total_visit` int(11) DEFAULT '0',
  `internal_link` varchar(255) DEFAULT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `is_featured` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_home` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_sidebar` enum('Y','N') NOT NULL DEFAULT 'N',
  `top_ranked` enum('Y','N') NOT NULL DEFAULT 'N',
  `highest_rated` enum('Y','N') NOT NULL DEFAULT 'N',
  `most_viewed` enum('Y','N') NOT NULL DEFAULT 'N',
  `related_products` varchar(255) DEFAULT NULL,
  `total_sold` int(11) NOT NULL DEFAULT '0',
  `item_css_class` varchar(255) DEFAULT NULL,
  `display_on_sitemap` enum('Y','N') NOT NULL DEFAULT 'N',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `deleted_user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`item_id`, `user_id`, `item_title`, `item_alias`, `parent_item_id`, `item_type_alias`, `item_section_alias`, `item_category_alias`, `item_tags_alias`, `item_format_alias`, `item_template_name`, `item_weight`, `is_download_product`, `is_free_product`, `in_stock`, `currancy`, `item_shipping_price`, `comment_count`, `item_description`, `item_short_description`, `item_terms_conditions`, `meta_title`, `meta_description`, `publish_month`, `publish_year`, `publish_date`, `publish_end_date`, `user_name`, `file1`, `file2`, `file3`, `total_visit`, `internal_link`, `external_link`, `is_featured`, `is_home`, `is_sidebar`, `top_ranked`, `highest_rated`, `most_viewed`, `related_products`, `total_sold`, `item_css_class`, `display_on_sitemap`, `display_order`, `display_status`, `deleted_status`, `site_id`, `deleted_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Configurable Product', 'configurable-product', 0, 'products', NULL, 'laptop', NULL, NULL, NULL, '10.00', 'N', 'N', 'Y', '$', '0.00', 0, '11', NULL, '11', '11', '11', 4, 2020, '2020-04-01', '2030-04-06', 'Super Administrator', 'product_1_1586190338_purifier-water-plant.jpg', NULL, NULL, 0, NULL, NULL, 'Y', 'Y', 'N', 'N', 'N', 'N', NULL, 0, NULL, 'Y', 0, 'Y', 'N', 0, 0, '2020-04-06 09:53:43', '2020-04-06 16:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_price`
--

CREATE TABLE `ec_product_price` (
  `product_price_id` bigint(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_attribute_1` varchar(255) DEFAULT NULL,
  `product_attribute_2` varchar(255) DEFAULT NULL,
  `product_attribute_3` varchar(255) DEFAULT NULL,
  `product_option_1` varchar(255) DEFAULT NULL,
  `product_option_2` varchar(255) DEFAULT NULL,
  `product_option_3` varchar(255) DEFAULT NULL,
  `product_option_4` int(11) NOT NULL DEFAULT '0',
  `product_option_price` decimal(10,2) DEFAULT NULL,
  `product_option_price_display` decimal(10,2) DEFAULT NULL,
  `currancy` varchar(255) DEFAULT NULL,
  `item_tax_amount` decimal(10,2) DEFAULT '0.00',
  `min_quantity_notification` tinyint(4) NOT NULL DEFAULT '0',
  `item_shipping_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_default_price` enum('Y','N') NOT NULL DEFAULT 'N',
  `product_quantity` int(11) NOT NULL DEFAULT '0',
  `special_price_from_date` date DEFAULT NULL,
  `special_price_to_date` date DEFAULT NULL,
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `site_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_product_price`
--

INSERT INTO `ec_product_price` (`product_price_id`, `item_id`, `user_id`, `product_attribute_1`, `product_attribute_2`, `product_attribute_3`, `product_option_1`, `product_option_2`, `product_option_3`, `product_option_4`, `product_option_price`, `product_option_price_display`, `currancy`, `item_tax_amount`, `min_quantity_notification`, `item_shipping_amount`, `is_default_price`, `product_quantity`, `special_price_from_date`, `special_price_to_date`, `display_status`, `deleted_status`, `site_id`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, '11.00', '11.00', '$', '11.00', 11, '11.00', 'Y', 1, NULL, NULL, 'Y', 'N', 0),
(2, 1, 0, 'Color', 'Size', NULL, 'Green', 'Small', NULL, 0, '22.00', '22.00', '$', '22.00', 22, '22.00', 'N', 22, NULL, NULL, 'Y', 'N', 0),
(3, 1, 0, 'Color', 'Size', NULL, 'Red', 'Medium', NULL, 0, '33.00', '33.00', '$', '33.00', 33, '33.00', 'N', 33, NULL, NULL, 'Y', 'N', 0),
(4, 1, 0, 'Color', 'Size', NULL, 'Black', 'Medium', NULL, 0, '44.00', '44.00', '$', '44.00', 44, '44.00', 'N', 44, NULL, NULL, 'Y', 'N', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_reviews`
--

CREATE TABLE `ec_product_reviews` (
  `product_review_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_alias` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `ratings` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_text` text,
  `display_status` enum('Y','N','P') NOT NULL DEFAULT 'P',
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_date` date DEFAULT NULL,
  `deleted_user_id` int(11) NOT NULL DEFAULT '0',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_specifications`
--

CREATE TABLE `ec_product_specifications` (
  `product_specification_id` bigint(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_alias` varchar(255) DEFAULT NULL,
  `specification_title` varchar(255) DEFAULT NULL,
  `specification_value` varchar(255) DEFAULT NULL,
  `specification_type` varchar(255) DEFAULT NULL,
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec_product_specifications`
--

INSERT INTO `ec_product_specifications` (`product_specification_id`, `item_id`, `item_alias`, `specification_title`, `specification_value`, `specification_type`, `site_id`, `display_status`, `deleted_status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '/var/www/html/cloudswiftsolutions_com/uploads/products/', 'ps_0_1586190338_rice-suppliers-3', 'additional', 0, 'Y', 'N', NULL, '2020-04-06 16:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wishlist`
--

CREATE TABLE `ec_wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `forms_id` int(11) NOT NULL,
  `item_type` varchar(255) DEFAULT 'contact',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `ip_address` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `file1` varchar(255) DEFAULT NULL,
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N','P') NOT NULL DEFAULT 'P',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_dispatched`
--

CREATE TABLE `inv_dispatched` (
  `dispatched_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `item_size` int(11) NOT NULL,
  `total_items` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_partial` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `item_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taken_by` int(11) NOT NULL DEFAULT '0',
  `taken_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_inventories`
--

CREATE TABLE `inv_inventories` (
  `inventory_id` int(11) NOT NULL,
  `item_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_alias` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `item_size` int(11) NOT NULL DEFAULT '0' COMMENT 'Size = How much litre,meter,number',
  `total_item_size` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_item` decimal(10,2) NOT NULL DEFAULT '0.00',
  `overall_item_total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'When same item arrive multiple times',
  `item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_price_with_quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_partial` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `item_description` text CHARACTER SET utf8mb4,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_consumable` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `display_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `deleted_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_inventories_activities`
--

CREATE TABLE `inv_inventories_activities` (
  `inventories_activities_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL DEFAULT '0',
  `item_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_size` int(11) NOT NULL DEFAULT '0' COMMENT 'Size = How much litre,meter,number',
  `total_item_size` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_items` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Items added or substract',
  `total_items_before_entry` int(11) NOT NULL DEFAULT '0',
  `total_price_with_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_partial` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `item_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `taken_by` int(11) NOT NULL DEFAULT '0',
  `taken_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Taken By / Return By',
  `created_by` int(11) DEFAULT '0',
  `created_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_alias` varchar(255) DEFAULT NULL,
  `item_parent` int(11) NOT NULL DEFAULT '0',
  `item_type` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_description` longtext,
  `item_shortdescription` text,
  `guest_item` enum('Y','N') NOT NULL DEFAULT 'N',
  `snippets_code` text,
  `meta_title_length` int(100) DEFAULT NULL,
  `meta_description_length` int(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `file1` varchar(255) DEFAULT NULL,
  `file2` varchar(255) DEFAULT NULL,
  `file3` varchar(255) DEFAULT NULL,
  `external_url` varchar(255) DEFAULT NULL,
  `controller` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT 'index',
  `robots` varchar(50) DEFAULT 'NOINDEX, NOFOLLOW',
  `published_at` date DEFAULT NULL,
  `published_end_at` date DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `html_sitemap` enum('Y','N') NOT NULL DEFAULT 'N',
  `html_sitemap_order` int(11) NOT NULL DEFAULT '0',
  `admin_module` enum('Y','N') NOT NULL DEFAULT 'N',
  `custom_view` varchar(255) DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Triggers `items`
--
DELIMITER $$
CREATE TRIGGER `Item_Delete_Log` BEFORE DELETE ON `items` FOR EACH ROW BEGIN
DECLARE username varchar(255);
SELECT users.name INTO username from users WHERE id = OLD.user_id;
INSERT INTO `item_logs`(`item_id`, `change_date`, `user_id`, `user_name`, `action`) VALUES (OLD.item_id,CURRENT_TIMESTAMP,OLD.user_id,username,'DELETE');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Item_Logs` AFTER INSERT ON `items` FOR EACH ROW BEGIN
DECLARE username varchar(255);
SELECT users.name INTO username from users WHERE id = NEW.user_id;
INSERT INTO `item_logs`(`item_id`, `change_date`, `user_id`, `user_name`, `action`) VALUES (NEW.item_id,CURRENT_TIMESTAMP,NEW.user_id,username,'INSERT');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Item_Update_Log` BEFORE UPDATE ON `items` FOR EACH ROW BEGIN
DECLARE username varchar(255);
SELECT users.name INTO username from users WHERE id = NEW.user_id;
INSERT INTO `item_logs`(`item_id`, `change_date`, `user_id`, `user_name`, `action`) VALUES (NEW.item_id,CURRENT_TIMESTAMP,NEW.user_id,username,'UPDATE');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `item_logs`
--

CREATE TABLE `item_logs` (
  `item_log_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `change_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') DEFAULT 'N',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_meta`
--

CREATE TABLE `item_meta` (
  `item_meta_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text,
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_meta`
--

INSERT INTO `item_meta` (`item_meta_id`, `item_id`, `meta_key`, `meta_value`, `site_id`, `display_order`, `display_status`, `deleted_status`, `created_at`, `updated_at`) VALUES
(1, 351, 'gallery', '351_gallery_0_1570461364_1247118501.jpg', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:16:04'),
(2, 351, 'gallery', '351_gallery_1_1570461364_images (2).jpg', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:16:04'),
(3, 351, 'gallery', '351_gallery_0_1570461948_Fashion_genuine_leather_belts_for_men.jpg', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:25:48'),
(4, 351, 'gallery', '351_gallery_1_1570461948_images (1).jpg', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:25:48'),
(5, 351, 'gallery', '351_gallery_2_1570461948_images (3).jpg', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:25:48'),
(6, 351, 'gallery', '351_gallery_3_1570461948_images (6).jpg', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:25:48'),
(7, 351, 'gallery', '351_gallery_0_1570462119_MenBelts.gif', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:28:39'),
(8, 351, 'gallery', '351_gallery_1_1570462119_images.jpg', 0, 0, 'Y', 'N', NULL, '2019-10-07 15:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `item_section`
--

CREATE TABLE `item_section` (
  `item_section_id` int(11) NOT NULL,
  `item_section_parent_id` int(11) NOT NULL DEFAULT '0',
  `section_title` varchar(255) DEFAULT NULL,
  `section_alias` varchar(255) DEFAULT NULL,
  `item_alias` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `description` text,
  `default_value` varchar(255) DEFAULT NULL,
  `attachment1` varchar(255) DEFAULT NULL,
  `attachment2` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `display_order` int(11) DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) DEFAULT NULL,
  `frontend_backend` varchar(30) DEFAULT 'backend',
  `platform` varchar(255) DEFAULT NULL,
  `browser_name` varchar(255) DEFAULT NULL,
  `browser_version` varchar(255) DEFAULT NULL,
  `user_agent` text,
  `device_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `isp` varchar(255) DEFAULT NULL,
  `country_code` varchar(4) DEFAULT NULL,
  `lat` varchar(30) DEFAULT NULL,
  `lng` varchar(30) DEFAULT NULL,
  `organization` varchar(50) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `region_name` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `browsername` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'default',
  `media_extension` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) DEFAULT NULL,
  `item_alias` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) NOT NULL DEFAULT 'role',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `display_on_listing` enum('Y','N') NOT NULL DEFAULT 'Y',
  `show_action_checkbox` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_access`
--

CREATE TABLE `role_access` (
  `role_access_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT '0',
  `module_id` int(11) DEFAULT '0',
  `grant_add` enum('Y','N') NOT NULL DEFAULT 'N',
  `grant_edit` enum('Y','N') NOT NULL DEFAULT 'N',
  `grant_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  `grant_view` enum('Y','N') NOT NULL DEFAULT 'N',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `month` varchar(5) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `notified` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `month`, `year`, `notified`) VALUES
(1, '11', '2019', 'Y'),
(2, '12', '2019', 'Y'),
(3, '01', '2020', 'Y'),
(4, '02', '2020', 'Y'),
(5, '03', '2020', 'Y'),
(6, '04', '2020', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `config_id` int(11) NOT NULL,
  `config_title` varchar(1024) DEFAULT NULL,
  `config_name` varchar(1024) DEFAULT NULL,
  `config_value` text,
  `input_type` varchar(15) DEFAULT NULL,
  `size` int(11) NOT NULL DEFAULT '100',
  `maxlength` int(11) NOT NULL DEFAULT '100',
  `input_type_title` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT 'textbox',
  `required` enum('Y','N','O') DEFAULT 'O',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `comments` varchar(255) DEFAULT NULL,
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `additional` varchar(100) DEFAULT NULL,
  `display_on_dashboard` enum('Y','N') NOT NULL DEFAULT 'N',
  `display_on_third_party` enum('Y','N') NOT NULL DEFAULT 'N',
  `site_config_parent_id` tinyint(4) NOT NULL DEFAULT '0',
  `site_id` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `root_user_only` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`config_id`, `config_title`, `config_name`, `config_value`, `input_type`, `size`, `maxlength`, `input_type_title`, `class`, `required`, `display_order`, `comments`, `display_status`, `additional`, `display_on_dashboard`, `display_on_third_party`, `site_config_parent_id`, `site_id`, `deleted_status`, `root_user_only`, `created_at`, `updated_at`) VALUES
(1, 'Application Title', 'FRONT_APPLICATION_TITLE', 'Native App development | Website development Company Vadodara', 'text', 100, 100, 'Please enter your application name for display on frontend side as title', 'form-control', 'Y', 1, NULL, 'Y', NULL, 'Y', 'Y', 1, 0, 'N', 'N', '2019-04-11 18:30:00', '2020-01-22 12:52:15'),
(2, 'Records per page', 'FRONT_RECORD_PER_PAGE', '16', 'select', 100, 60, 'Records per page', 'form-control', 'Y', 5, '8@=16@=24@=32@=40@=80', 'Y', NULL, 'Y', 'Y', 1, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(7, 'Maintenance Mode', 'SITE_CONSTRUCTION', 'No', 'select', 100, 60, 'Site Under Construction Status', 'form-control', 'Y', 12, 'Yes@=No', 'Y', NULL, 'Y', 'N', 1, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-11-06 13:36:26'),
(8, 'Default Timezone', 'FRONT_DEFAULT_TIMEZONE', 'Asia/Kolkata', 'select', 100, 60, 'Default Timezone', 'form-control', 'Y', 13, 'America/Chicago@=Asia/Kolkata@=Europe/London@=Australia/Perth', 'Y', NULL, 'Y', 'Y', 1, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(9, 'Backend application Title', 'BACKEND_APPLICATION_TITLE', 'Cloudswift :: Administrator', 'text', 100, 60, 'Application Title', 'form-control', 'Y', 14, NULL, 'Y', NULL, 'Y', 'N', 2, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 12:38:57'),
(14, 'Meta Description', 'FRONT_META_DESCRIPTION', 'Web development company , Web design company , laravel development company, php development company , native application company Vadodara , India', 'text', 100, 60, 'Meta Description', 'form-control', 'Y', 1, NULL, 'Y', NULL, 'N', 'N', 1, 0, 'N', 'N', '2019-04-11 18:30:00', '2020-01-22 12:52:15'),
(15, 'Default Robots', 'FRONT_DEFAULT_ROBOTS', 'INDEX,FOLLOW', 'select', 100, 60, 'Default Robots', 'form-control', 'Y', 25, 'INDEX,FOLLOW@=NOINDEX@=NOFOLLOW@=NOINDEX,NOFOLLOW', 'Y', NULL, 'Y', 'Y', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-17 13:36:12'),
(16, 'Google Tag Manager (javascript code)', 'FRONT_GOOGLE_TAG_MANAGER', '<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-150266819-1\"></script>\r\n      <script>\r\n        window.dataLayer = window.dataLayer || [];\r\n        function gtag(){dataLayer.push(arguments);}\r\n        gtag(\'js\', new Date());\r\n\r\n        gtag(\'config\', \'UA-150266819-1\');\r\n      </script>', 'textarea', 100, 6000, 'Google tag manager', 'form-control', 'N', 26, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2020-04-06 08:57:47'),
(17, 'Opengraph Title', 'OGTITLE', 'Cloudswift Og Title', 'text', 100, 60, 'Opengraph Title', 'form-control', 'N', 35, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 12:38:57'),
(18, 'Opengraph Description', 'OGDESCRIPTION', 'Cloudswift Og Description', 'text', 100, 60, 'Opengraph Description', 'form-control', 'N', 36, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 12:38:57'),
(19, 'Opengraph URL', 'OGURL', 'http://www.cloudswiftsolutions.com/', 'text', 100, 60, 'Opengraph URL', 'form-control', 'N', 37, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 12:38:57'),
(20, 'Opengraph Image', 'OGIMAGE', '', 'text', 100, 60, 'Opengraph Image', 'form-control', 'N', 38, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(21, 'Opengraph Type', 'OGTYPE', '', 'text', 100, 60, 'Opengraph Type', 'form-control', 'N', 39, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(22, 'Opengraph Admin (fb:admin)', 'FBADMINS', '', 'text', 100, 60, 'Opengraph Admin (fb:admin)', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(23, 'Author URL', 'GOOGLE_AUTHOR_URL', 'http://www.cloudswiftsolutions.com/', 'text', 100, 60, 'Author URL', 'form-control', 'Y', 41, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 12:38:57'),
(25, 'Memory Limit', 'MEMORY_LIMIT', '512M', 'select', 100, 60, 'Memory Limit', 'form-control', 'Y', 43, '64M@=128M@=256M@=512M', 'Y', NULL, 'N', 'N', 4, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(26, 'Post Max Size', 'POST_MAX_SIZE', '16M', 'select', 100, 60, 'Post Max Size', 'form-control', 'Y', 44, '2M@=8M@=16M', 'Y', NULL, 'N', 'N', 4, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(36, 'Enable Page Visitors Log', 'PAGE_VISITOR_LOGS', 'Yes', 'select', 100, 60, 'Enable Page Visitors Log', 'form-control', 'Y', 62, 'Yes@=No', 'Y', NULL, 'N', 'N', 6, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(37, 'Enable Login Logs', 'ENABLE_LOGIN_LOGS', 'Yes', 'select', 100, 60, 'Enable Login Logs', 'form-control', 'Y', 63, 'Yes@=No', 'Y', NULL, 'N', 'N', 6, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(38, 'Company Name', 'COMPANY_NAME', 'Cloudswift Solutions Pvt. Ltd.', 'text', 100, 60, 'Company Name', 'form-control', 'Y', 64, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-11-08 03:56:19'),
(39, 'Company Address', 'COMPANY_ADDRESS1', 'Sama, Near Chanikya crossing', 'text', 100, 60, 'Company Address', 'form-control', 'Y', 65, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(40, 'Company Address 2', 'COMPANY_ADDRESS2', '', 'text', 100, 60, 'Company Address 2', 'form-control', 'Y', 66, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(41, 'City', 'COMPANY_CITY', 'Vadodara', 'text', 100, 60, 'City', 'form-control', 'Y', 67, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(42, 'State', 'COMPANY_STATE', 'GJ', 'text', 100, 60, 'State', 'form-control', 'Y', 68, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(43, 'Country', 'COMPANY_COUNTRY', 'INN', 'text', 100, 60, 'Country', 'form-control', 'Y', 69, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(44, 'Zipcode', 'COMPANY_ZIPCODE', '390009', 'text', 100, 60, 'Zipcode', 'form-control', 'Y', 70, 'max six digits', 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(45, 'Contact Number', 'COMPANY_CONTACT_NUMBER', '111-222-3333', 'text', 100, 60, 'Contact Number', 'form-control', 'Y', 71, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(46, 'Website', 'COMPANY_WEBSITE', 'https://www.cloudswiftsolutions.com', 'text', 100, 60, 'Website', 'form-control', 'Y', 73, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 13:28:17'),
(47, 'Contact us email address', 'COMPANY_EMAIL', 'dailytask@cloudswiftsolutions.com	', 'email', 100, 60, 'Contact us email address', 'form-control', 'Y', 74, NULL, 'Y', NULL, 'N', 'Y', 8, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-11-19 01:44:30'),
(48, 'Contact us person name', 'COMPANY_CONTACT_PERSON', 'Cloud Swift', 'text', 100, 60, 'Contact us person name', 'form-control', 'Y', 75, NULL, 'Y', NULL, 'N', 'Y', 8, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-11-19 01:44:30'),
(49, 'Show Meta Details', 'SHOW_META_DETAILS', 'Yes', 'select', 100, 5, 'Please select option', 'form-control', 'Y', 82, 'Yes@=No', 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(50, 'Google Map Iframe', 'GOOGLE_MAP_IFRAME', '', 'textarea', 200, 60, 'Google Map', 'form-control', '', 86, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:54:46'),
(52, 'Master Password', 'MASTER_PASSWORD', 'mayankpatel104', 'text', 100, 60, 'Master Password', 'form-control', 'Y', 44, NULL, 'Y', NULL, 'N', 'N', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-25 02:44:56'),
(53, 'Allow Sending emails', 'ALLOW_SENDING_EMAIL', 'Yes', 'select', 100, 5, 'Allow to send email throughout site? If no, not a single email will execute in this project.', 'form-control', 'Y', 82, 'Yes@=No', 'Y', NULL, 'N', 'N', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(65, 'Display Errors on Site', 'DISPLAY_ERRORS', 'No', 'select', 100, 60, 'Display Errors on Site', 'form-control', 'Y', 42, 'Yes@=No', 'Y', NULL, 'Y', 'N', 4, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(66, 'Order email address', 'ORDER_EMAIL', 'dailytask@cloudswiftsolutions.com	', 'email', 100, 60, 'order email address', 'form-control', 'Y', 74, NULL, 'Y', NULL, 'N', 'N', 8, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-11-19 01:45:14'),
(67, 'Order email name', 'ORDER_CONTACT_PERSON', 'Cloud Swift Solutions', 'text', 100, 60, 'order person name', 'form-control', 'Y', 75, NULL, 'Y', NULL, 'N', 'N', 8, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-11-19 01:44:30'),
(68, 'Frontend Theme', 'FRONT_THEME', 'site2', 'select', 100, 60, 'Frontend Theme', 'form-control', 'Y', 5, 'site2@=site1@=site3', 'Y', NULL, 'N', 'N', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(69, 'Google site key', 'FRONT_GOOGLE_SITE_KEY', '6LfbFHYUAAAAANNxi4D-eaPSaFtlQaiP8zOR6S78', 'text', 100, 6000, 'Google site key', 'form-control', 'N', 2, NULL, 'Y', NULL, 'Y', 'Y', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(70, 'Google secret key', 'FRONT_GOOGLE_SECRET_KEY', '6LfbFHYUAAAAADqttM_6QvPQ-CT9tRYuQltDKtvZ', 'text', 100, 6000, 'Google secret key', 'form-control', 'N', 2, NULL, 'Y', NULL, 'Y', 'Y', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(73, 'API site key', 'API_SITE_KEY', '2Xbs2GyPQ2UXPvE3u5CRGpdQASSeA4yz', 'text', 100, 6000, 'API site key', 'form-control', 'N', 2, NULL, 'Y', NULL, 'N', 'Y', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(74, 'API secret key', 'API_SECRET_KEY', 'gFefAewjc7BPaHthxLSNWjKhyRaNQUdp', 'text', 100, 6000, 'API secret key', 'form-control', 'N', 2, NULL, 'Y', NULL, 'N', 'Y', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(75, 'From email address', 'FROM_EMAIL_ADDRESS', 'connect@cloudswiftsolutions.com', 'email', 100, 60, 'from email address', 'form-control', 'Y', 74, NULL, 'Y', NULL, 'N', 'Y', 8, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-11-19 01:45:14'),
(76, 'Backend Logo title display', 'BACKEND_LOGO_TITLE_DISPLAY', 'Administrator', 'text', 100, 60, 'backend_logo_title_display', 'form-control', 'Y', 8, '', 'Y', NULL, 'N', 'Y', 2, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(77, 'Allow comment on front-end side', 'ALLOW_COMMENT_ON_FRONT', 'Yes', 'select', 100, 60, 'Allow comment on front-end side', 'form-control', 'Y', 8, 'Yes@=No', 'Y', NULL, 'N', 'N', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(78, 'Default Avtar', 'DEFAULT_AVTAR', '1569337428_1894536072.jpg', 'file', 100, 60, 'Default avtar for admin', 'form-control input_file', 'N', 55, NULL, 'Y', NULL, 'N', 'N', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 15:03:48'),
(79, 'Sitemap options', 'SITEMAP_DISPLAY_OPTIONS', 'items', 'select', 100, 60, 'select options to show on sitemap.', 'form-control', 'Y', 5, 'items@=blog@=links@=embed', 'Y', NULL, 'N', 'N', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(80, 'Content to display before close head tag', 'CONTENT_BEFORE_END_HEAD_TAG', NULL, 'textarea', 100, 6000, 'Please enter content that will appear before end of head tag.', 'form-control', 'N', 26, NULL, 'Y', NULL, 'N', 'Y', 9, 0, 'Y', 'N', '2019-04-11 18:30:00', '2019-04-12 04:07:09'),
(81, 'Content to display after body tag', 'CONTENT_AFTER_BODY_TAG', '', 'textarea', 100, 6000, 'Please enter content that will appear after open body tag', 'form-control', 'N', 26, NULL, 'Y', NULL, 'N', 'Y', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:54:46'),
(82, 'Content to display on footer of site', 'CONTENT_ON_FOOTER', '', 'textarea', 100, 6000, 'Please enter content that will appear on footer of site.', 'form-control', 'N', 26, NULL, 'Y', NULL, 'N', 'Y', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:54:46'),
(83, 'Content to display before end of body tag', 'CONTENT_BEFORE_BODY_TAG', '', 'textarea', 100, 6000, 'Please enter content that will before close of body tag.', 'form-control', 'N', 26, NULL, 'Y', NULL, 'N', 'Y', 9, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:54:46'),
(86, 'Script after begin head tag', 'AFTER_HEAD_TAG', '', 'text', 100, 60, 'After head tag javacript script', 'form-control', 'N', 39, NULL, 'Y', NULL, 'N', 'Y', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(88, 'Application json script', 'APPLICATION_JSON_SCRIPT', '', 'textarea', 100, 6000, 'Application json script', 'form-control', 'N', 26, NULL, 'Y', NULL, 'N', 'Y', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:54:46'),
(89, 'Opengraph Sitename', 'OGSITENAME', 'Cloudswift Og Sitename', 'text', 100, 60, 'Opengraph Sitename', 'form-control', 'N', 35, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 12:38:57'),
(90, 'Opengraph Locale', 'OGLOCALE', 'en_US', 'text', 100, 60, 'Opengraph Locale', 'form-control', 'N', 35, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(91, 'Opengraph AppID (fb:appid)', 'FBAPP_ID', '1234567789', 'text', 100, 60, 'Opengraph App ID(fb:app_id)', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(92, 'Schema sharing name', 'SCHEMA_ITEMSCOPE', '', 'text', 100, 60, 'Schema for Sharing on LinkedIn, Google+ and Pinterest (Item scope)', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(93, 'Schema Item title', 'SCHEMA_ITEMTITLE', '', 'text', 100, 60, 'Schema for Sharing on LinkedIn, Google+ and Pinterest (Item Title)', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(94, 'Schema Item description', 'SCHEMA_ITEMDESCRIPTION', '', 'text', 100, 60, 'Schema for Sharing on LinkedIn, Google+ and Pinterest (Item Description)', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:13:53'),
(95, 'Schema Item Image', 'SITE_ITEMIMAGE', NULL, 'file', 100, 60, 'Schema for Sharing on LinkedIn, Google+ and Pinterest (Item Image)', 'form-control input_file', 'N', 56, NULL, 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(96, 'Google Tag Manager (noscript)', 'FRONT_GOOGLE_TAG_MANAGER_NOSCRIPT', '', 'textarea', 100, 6000, 'Google Tag Manager (noscript)', 'form-control', 'N', 26, NULL, 'Y', NULL, 'N', 'Y', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-09-24 14:54:46'),
(97, 'Upload Max Size', 'UPLOAD_MAX_FILESIZE', '2M', 'select', 100, 60, 'Upload Max Size', 'form-control', 'Y', 44, '2M@=8M@=16M@=24M', 'Y', NULL, 'N', 'N', 4, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(98, 'Maximum execution time', 'MAX_EXECUTION_TIME', '60', 'select', 100, 60, 'Maximum Execution Time', 'form-control', 'Y', 44, '30@=60@=180@=360@=0', 'Y', NULL, 'N', 'N', 4, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(100, 'Show sitemap html page', 'SITEMAP_HTML', 'Yes', 'select', 100, 60, 'Sitemap HTML', 'form-control', 'Y', 5, 'Yes@=No', 'Y', NULL, 'Y', 'N', 1, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(101, 'Show sitemap xml', 'SITEMAP_XML', 'Yes', 'select', 100, 60, 'Sitemap XML', 'form-control', 'Y', 5, 'Yes@=No', 'Y', NULL, 'Y', 'N', 1, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(102, 'Facebook', 'FACEBOOK_URL', 'https://www.facebook.com/cloudswiftsolutions/', 'text', 100, 60, 'Please enter your facebook page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 13:28:52'),
(103, 'Twitter', 'TWITTER_URL', 'https://twitter.com/cloudswiftsolutions', 'text', 100, 60, 'Please enter your twitter page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 13:29:00'),
(104, 'Linkedin', 'LINKEDIN_URL', 'https://www.linkedin.com/company/cloudswiftsolutions/', 'text', 100, 60, 'Please enter your Linkedin page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 13:29:06'),
(105, 'G Plus', 'GPLUS_URL', 'https://www.plus.google.com', 'text', 100, 60, 'Please enter your Google Plus page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(106, 'Pinterest', 'PINTEREST_URL', 'https://www.pinterest.com', 'text', 100, 60, 'Please enter your Pinterest page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(107, 'Instagram', 'INSTAGRAM_URL', 'https://www.instagram.com/cloudswiftsolutions/', 'text', 100, 60, 'Please enter your Instagram page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 13:29:15'),
(108, 'Flickr', 'FLICKR_URL', 'https://www.flickr.com', 'text', 100, 60, 'Please enter your Flickr page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(109, 'Stack Overflow', 'STACKOVERFLOW_URL', 'https://www.stackoverflow.com', 'text', 100, 60, 'Please enter your Stack overflow page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(110, 'Mailchimp List ID', 'MAILCHIMP_LIST_ID', '5f5ff7a12c', 'text', 100, 60, 'Please enter your mailchimp list id', 'form-control', 'N', 41, NULL, 'Y', NULL, 'N', 'Y', 11, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(111, 'Mailchimp API Key', 'MAILCHIMP_API_KEY', 'a784b57bd25fa17045751353c5e7e079-us19', 'text', 100, 60, 'Please enter your mailchimp api key', 'form-control', 'N', 41, NULL, 'Y', NULL, 'N', 'N', 11, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(112, 'Allow addthis', 'ADDTHIS_ALLOW', 'Yes', 'select', 100, 60, 'Allow addthis', 'form-control', 'Y', 13, 'Yes@=No', 'Y', NULL, 'N', 'N', 3, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(195, 'Cash on delivery', 'CASH_ON_DELIVERY', 'Y', 'select', 100, 60, 'Please select option', 'form-control', 'Y', 5, 'Y@=N', 'Y', NULL, 'N', 'N', 14, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(196, 'Cheque Payment', 'CHEQUE_PAYMENT', 'Y', 'select', 100, 60, 'Please select option', 'form-control', 'Y', 5, 'Y@=N', 'Y', NULL, 'N', 'N', 14, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(197, 'Allow to sent email to admin for contact,feedback,etc.', 'ALLOW_CONTACT_EMAIL', 'Y', 'select', 100, 60, 'Please select option', 'form-control', 'Y', 5, 'Y@=N', 'Y', NULL, 'Y', 'N', 8, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(202, 'Enable Keywords Logs', 'ENABLE_KEYWORDS_LOGS', 'Yes', 'select', 100, 60, 'Enable keywords Logs', 'form-control', 'Y', 63, 'Yes@=No', 'Y', NULL, 'N', 'N', 6, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(205, 'Copyright Text', 'COPYRIGHT_TEXT', '© 2019 Cloudswift. All rights Reserved.', 'text', 100, 100, 'Please enter the copyright slogan', 'form-control', 'Y', 1, NULL, 'Y', NULL, 'N', 'Y', 1, 0, 'Y', 'N', '2019-04-11 18:30:00', '2019-04-12 04:08:56'),
(207, 'Client ID', 'GOOGLE_LOGIN_CLIENT_ID', '370898672859-s6c79nde0d67t43lvigfk4g366mv7aac.apps.googleusercontent.com', 'text', 100, 100, 'Please enter client id of google account', 'form-control', 'Y', 1, NULL, 'Y', NULL, 'N', 'N', 16, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(208, 'Client Secret', 'GOOGLE_LOGIN_CLIENT_SECRET', 'zEJgYxJ5Gon8QUcBp9UxGOE1', 'text', 100, 100, 'Please enter client secret of google account', 'form-control', 'Y', 1, NULL, 'Y', NULL, 'N', 'N', 16, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(209, 'Application name on google login screen', 'APPLICATEION_NAME_GOOGLE_LOGIN_SCREEN', 'Login to Cloudswift.com', 'text', 100, 100, 'Please enter application name which will shown on google login screen', 'form-control', 'Y', 1, NULL, 'Y', NULL, 'N', 'N', 16, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(210, 'Paytm Checkout', 'PAYTMCHECKOUT', 'Y', 'select', 100, 60, 'Please select option', 'form-control', 'Y', 5, 'Y@=N', 'Y', NULL, 'N', 'N', 14, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(211, 'Application Name', 'FRONT_APPLICATION_NAME', 'Cloudswift Solutions', 'text', 100, 100, 'Please enter your application name for display on frontend side as name', 'form-control', 'Y', 1, NULL, 'Y', NULL, 'Y', 'Y', 1, 0, 'N', 'N', '2019-04-12 00:00:00', '2019-10-14 18:52:59'),
(213, 'Company Latitude', 'COMPANY_LATITUDE', '22.345441', 'text', 100, 60, 'Latitude', 'form-control', 'Y', 73, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-12 00:00:00', '2019-10-14 18:58:17'),
(214, 'Company Longitude', 'COMPANY_LONGITUDE', '73.189240', 'text', 100, 60, 'Longitude', 'form-control', 'Y', 73, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-12 00:00:00', '2019-10-14 18:58:17'),
(215, 'Company Opening Hours', 'COMPANY_OPENING_HOURS', 'Mo, Tu, We, Th, Fr, Sa, su 09.30:00-18:30', 'text', 100, 60, 'Opening Hours', 'form-control', 'Y', 73, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-12 00:00:00', '2019-10-14 18:58:17'),
(216, 'Company Contact Type', 'COMPANY_CONTACT_TYPE', 'Application development', 'text', 100, 60, 'Contact Type', 'form-control', 'Y', 73, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-12 00:00:00', '2019-10-14 18:58:17'),
(217, 'Company Available Language', 'COMPANY_AVAILABLE_LANGUAGE', '', 'text', 100, 60, 'Contact Available Language', 'form-control', 'Y', 73, NULL, 'Y', NULL, 'N', 'Y', 7, 0, 'N', 'N', '2019-04-12 00:00:00', '2020-04-06 08:39:37'),
(218, 'Tumblr', 'TUMBLR_URL', 'https://www.tumblr.com/blog/cloudswiftsolutions', 'text', 100, 60, 'Please enter your Tumblr page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-04-12 03:15:59'),
(219, 'Blogger', 'BLOGGER_URL', 'https://cloudswiftsolutions.blogspot.com', 'text', 100, 60, 'Please enter your blogger page url', 'form-control', 'N', 40, NULL, 'Y', NULL, 'N', 'Y', 10, 0, 'N', 'N', '2019-04-11 18:30:00', '2019-10-14 13:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `site_config_parent`
--

CREATE TABLE `site_config_parent` (
  `site_config_parent_id` int(10) UNSIGNED NOT NULL,
  `site_config_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `display_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `deleted_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `root_user_only` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_config_parent`
--

INSERT INTO `site_config_parent` (`site_config_parent_id`, `site_config_title`, `display_order`, `display_status`, `class`, `site_id`, `deleted_status`, `root_user_only`, `created_at`, `updated_at`) VALUES
(1, 'Frontend Settings', 1, 'Y', 'collapseOne', 0, 'N', 'N', NULL, NULL),
(2, 'Backend Settings', 2, 'Y', 'collapseTwo', 0, 'N', 'N', NULL, NULL),
(3, 'SEO Settings', 3, 'Y', 'collapseThree', 0, 'N', 'N', NULL, NULL),
(4, 'Security Settings', 4, 'Y', 'collapseFour', 0, 'N', 'Y', NULL, NULL),
(6, 'Logs Settings', 6, 'Y', 'collapseSix', 0, 'N', 'N', NULL, NULL),
(7, 'Site Details', 7, 'Y', 'collapseSeven', 0, 'N', 'N', NULL, NULL),
(8, 'Email Settings', 8, 'Y', 'collapseEight', 0, 'N', 'N', NULL, NULL),
(9, 'Privacy Settings', 9, 'Y', 'collapseNine', 0, 'N', 'Y', NULL, NULL),
(10, 'Follow Us', 10, 'Y', 'collapseTen', 0, 'N', 'Y', NULL, NULL),
(11, 'Mailchimp', 11, 'Y', 'collapseEleven', 0, 'N', 'Y', NULL, NULL),
(14, 'Payment Methods', 14, 'Y', 'collapseFourteen', 0, 'N', 'Y', NULL, NULL),
(16, 'Login With Google', 16, 'Y', 'login_with_google', 0, 'N', 'Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_request`
--

CREATE TABLE `site_request` (
  `site_request_id` int(11) NOT NULL,
  `request` longtext,
  `request_url` varchar(1024) DEFAULT NULL,
  `response` longtext,
  `table_name` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comment1` text,
  `comment2` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_request`
--

INSERT INTO `site_request` (`site_request_id`, `request`, `request_url`, `response`, `table_name`, `action`, `device`, `user_id`, `comment1`, `comment2`, `created_at`, `updated_at`) VALUES
(1, 'a:2:{s:13:\"email_address\";s:25:\"mayank.patel104@gmail.com\";s:8:\"password\";s:10:\"Mayank@203\";}', NULL, 'a:6:{s:5:\"token\";s:48:\"MS1tYXlhbmsucGF0ZWwxMDRAZ21haWwuY29tLTEtU3VwZXI=\";s:7:\"success\";i:1;s:5:\"error\";i:0;s:6:\"status\";i:200;s:7:\"message\";s:30:\"You are successfully logged in\";s:6:\"values\";a:35:{s:2:\"id\";s:1:\"1\";s:8:\"user_pin\";s:1:\"0\";s:4:\"name\";N;s:10:\"first_name\";s:5:\"Super\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:25:\"mayank.patel104@gmail.com\";s:8:\"password\";s:16:\"TWF5YW5rQDIwMw==\";s:10:\"birth_date\";s:10:\"1987-04-10\";s:7:\"role_id\";s:1:\"1\";s:12:\"access_token\";s:0:\"\";s:20:\"security_question_id\";s:1:\"3\";s:15:\"security_answer\";s:5:\"Parul\";s:13:\"user_address1\";s:15:\"134 Demo street\";s:13:\"user_address2\";s:1:\"2\";s:9:\"user_city\";s:8:\"Vadodara\";s:10:\"user_state\";s:2:\"GJ\";s:12:\"user_zipcode\";s:6:\"299999\";s:12:\"user_country\";s:2:\"IN\";s:14:\"contact_number\";s:12:\"222992999992\";s:18:\"display_on_listing\";s:1:\"N\";s:20:\"show_action_checkbox\";s:1:\"Y\";s:9:\"api_token\";N;s:9:\"item_type\";s:5:\"users\";s:13:\"display_order\";s:1:\"0\";s:14:\"display_status\";s:1:\"Y\";s:12:\"fail_attempt\";s:1:\"0\";s:7:\"blocked\";s:1:\"N\";s:6:\"device\";s:7:\"website\";s:9:\"device_id\";s:7:\"windows\";s:14:\"deleted_status\";s:1:\"N\";s:10:\"deleted_by\";s:1:\"0\";s:15:\"deleted_by_name\";s:0:\"\";s:12:\"deleted_time\";s:19:\"2019-10-11 07:01:49\";s:10:\"created_at\";s:19:\"2019-01-19 07:57:37\";s:10:\"updated_at\";s:19:\"2019-11-20 16:37:48\";}}', 'users', 'loginaction', NULL, 1, NULL, NULL, '2020-04-06 21:01:40', '2020-04-06 15:31:40'),
(2, 'a:17:{s:8:\"products\";a:18:{s:10:\"created_at\";s:19:\"2020-04-06 09:08:31\";s:10:\"item_alias\";s:11:\"allproducts\";s:15:\"item_type_alias\";s:8:\"products\";s:10:\"item_title\";s:5:\"Shirt\";s:19:\"item_category_alias\";s:12:\"t-shirt,pant\";s:11:\"item_weight\";s:6:\"100.00\";s:8:\"in_stock\";s:1:\"Y\";s:11:\"is_featured\";s:1:\"Y\";s:7:\"is_home\";s:1:\"Y\";s:14:\"display_status\";s:1:\"Y\";s:18:\"display_on_sitemap\";s:1:\"Y\";s:10:\"meta_title\";s:16:\"Shirt Meta Title\";s:12:\"publish_date\";s:10:\"2020-04-06\";s:16:\"meta_description\";s:24:\"Testing meta description\";s:21:\"item_terms_conditions\";s:28:\"Testing terms and conditions\";s:16:\"item_description\";s:19:\"Testing description\";s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:19:\"Super Administrator\";}s:9:\"item_type\";s:8:\"products\";s:7:\"item_id\";s:1:\"0\";s:12:\"productprice\";a:7:{s:20:\"product_option_price\";s:3:\"200\";s:16:\"is_default_price\";s:1:\"Y\";s:28:\"product_option_price_display\";s:3:\"240\";s:15:\"item_tax_amount\";s:2:\"20\";s:20:\"item_shipping_amount\";s:2:\"10\";s:16:\"product_quantity\";s:2:\"20\";s:25:\"min_quantity_notification\";s:1:\"5\";}s:22:\"product_option_price_1\";a:3:{i:0;s:3:\"210\";i:1;s:3:\"220\";i:2;s:3:\"211\";}s:18:\"is_default_price_1\";a:3:{i:0;s:1:\"N\";i:1;s:1:\"N\";i:2;s:1:\"N\";}s:30:\"product_option_price_display_1\";a:3:{i:0;s:3:\"220\";i:1;s:3:\"230\";i:2;s:3:\"221\";}s:17:\"item_tax_amount_1\";a:3:{i:0;s:2:\"20\";i:1;s:2:\"11\";i:2;s:2:\"11\";}s:22:\"item_shipping_amount_1\";a:3:{i:0;s:2:\"10\";i:1;s:2:\"12\";i:2;s:2:\"10\";}s:18:\"product_quantity_1\";a:3:{i:0;s:2:\"20\";i:1;s:2:\"20\";i:2;s:2:\"20\";}s:27:\"min_quantity_notification_1\";a:3:{i:0;s:1:\"8\";i:1;s:1:\"9\";i:2;s:1:\"9\";}s:19:\"product_attribute_1\";a:3:{i:0;s:5:\"Color\";i:1;s:5:\"Color\";i:2;s:5:\"Color\";}s:16:\"product_option_1\";a:3:{i:0;s:5:\"Green\";i:1;s:4:\"Blue\";i:2;s:5:\"Green\";}s:19:\"product_attribute_2\";a:3:{i:0;s:4:\"Size\";i:1;s:4:\"Size\";i:2;s:4:\"Size\";}s:16:\"product_option_2\";a:3:{i:0;s:5:\"Small\";i:1;s:6:\"Medium\";i:2;s:6:\"Medium\";}s:19:\"specification_title\";a:3:{i:0;s:5:\"Color\";i:1;s:4:\"Size\";i:2;s:5:\"Brand\";}s:19:\"specification_value\";a:3:{i:0;s:1:\"3\";i:1;s:1:\"3\";i:2;s:7:\"Raymond\";}}', NULL, 'a:4:{s:7:\"success\";i:1;s:5:\"error\";i:0;s:7:\"message\";s:112:\"SQLSTATE[HY000]: General error: 1366 Incorrect integer value: \'\' for column \'min_quantity_notification\' at row 1\";s:6:\"values\";a:0:{}}', 'ec_products', 'Insert', NULL, 1, NULL, NULL, '2020-04-06 21:27:52', '2020-04-06 15:57:52'),
(3, 'a:15:{s:8:\"products\";a:19:{s:10:\"created_at\";s:19:\"2020-04-06 09:32:36\";s:10:\"item_alias\";s:11:\"allproducts\";s:15:\"item_type_alias\";s:8:\"products\";s:10:\"item_title\";s:4:\"Demo\";s:19:\"item_category_alias\";s:6:\"laptop\";s:11:\"item_weight\";s:5:\"10.00\";s:8:\"in_stock\";s:1:\"Y\";s:11:\"is_featured\";s:1:\"Y\";s:7:\"is_home\";s:1:\"Y\";s:14:\"display_status\";s:1:\"Y\";s:18:\"display_on_sitemap\";s:1:\"Y\";s:16:\"related_products\";s:5:\"shirt\";s:10:\"meta_title\";s:2:\"11\";s:12:\"publish_date\";s:10:\"2000-04-06\";s:16:\"meta_description\";s:3:\"111\";s:21:\"item_terms_conditions\";s:2:\"11\";s:16:\"item_description\";s:2:\"11\";s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:19:\"Super Administrator\";}s:9:\"item_type\";s:8:\"products\";s:7:\"item_id\";s:1:\"0\";s:12:\"productprice\";a:7:{s:20:\"product_option_price\";s:2:\"11\";s:16:\"is_default_price\";s:1:\"Y\";s:28:\"product_option_price_display\";s:2:\"11\";s:15:\"item_tax_amount\";s:2:\"11\";s:20:\"item_shipping_amount\";s:2:\"11\";s:16:\"product_quantity\";s:2:\"11\";s:25:\"min_quantity_notification\";s:2:\"11\";}s:22:\"product_option_price_1\";a:1:{i:0;s:2:\"22\";}s:18:\"is_default_price_1\";a:1:{i:0;s:1:\"N\";}s:30:\"product_option_price_display_1\";a:1:{i:0;s:2:\"22\";}s:17:\"item_tax_amount_1\";a:1:{i:0;s:2:\"22\";}s:22:\"item_shipping_amount_1\";a:1:{i:0;s:2:\"22\";}s:18:\"product_quantity_1\";a:1:{i:0;s:2:\"22\";}s:27:\"min_quantity_notification_1\";a:1:{i:0;s:2:\"22\";}s:19:\"product_attribute_1\";a:1:{i:0;s:5:\"Color\";}s:16:\"product_option_1\";a:1:{i:0;s:5:\"Black\";}s:19:\"product_attribute_2\";a:1:{i:0;s:4:\"Size\";}s:16:\"product_option_2\";a:1:{i:0;s:6:\"Medium\";}}', NULL, 'a:4:{s:7:\"success\";i:1;s:5:\"error\";i:0;s:7:\"message\";s:112:\"SQLSTATE[HY000]: General error: 1366 Incorrect integer value: \'\' for column \'min_quantity_notification\' at row 1\";s:6:\"values\";a:0:{}}', 'ec_products', 'Insert', NULL, 1, NULL, NULL, '2020-04-06 21:34:45', '2020-04-06 16:04:45'),
(4, 'a:15:{s:8:\"products\";a:19:{s:10:\"created_at\";s:19:\"2020-04-06 09:42:01\";s:10:\"item_alias\";s:11:\"allproducts\";s:15:\"item_type_alias\";s:8:\"products\";s:10:\"item_title\";s:2:\"11\";s:19:\"item_category_alias\";s:6:\"laptop\";s:11:\"item_weight\";s:5:\"10.00\";s:8:\"in_stock\";s:1:\"Y\";s:11:\"is_featured\";s:1:\"Y\";s:7:\"is_home\";s:1:\"Y\";s:14:\"display_status\";s:1:\"Y\";s:18:\"display_on_sitemap\";s:1:\"Y\";s:16:\"related_products\";s:4:\"demo\";s:10:\"meta_title\";s:2:\"11\";s:12:\"publish_date\";s:10:\"2020-04-11\";s:16:\"meta_description\";s:2:\"11\";s:21:\"item_terms_conditions\";s:2:\"11\";s:16:\"item_description\";s:2:\"11\";s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:19:\"Super Administrator\";}s:9:\"item_type\";s:8:\"products\";s:7:\"item_id\";s:1:\"0\";s:12:\"productprice\";a:7:{s:20:\"product_option_price\";s:2:\"11\";s:16:\"is_default_price\";s:1:\"Y\";s:28:\"product_option_price_display\";s:2:\"11\";s:15:\"item_tax_amount\";s:2:\"11\";s:20:\"item_shipping_amount\";s:2:\"11\";s:16:\"product_quantity\";s:2:\"11\";s:25:\"min_quantity_notification\";s:2:\"11\";}s:22:\"product_option_price_1\";a:2:{i:0;s:2:\"22\";i:1;s:2:\"33\";}s:18:\"is_default_price_1\";a:2:{i:0;s:1:\"N\";i:1;s:1:\"N\";}s:30:\"product_option_price_display_1\";a:2:{i:0;s:2:\"22\";i:1;s:2:\"33\";}s:17:\"item_tax_amount_1\";a:2:{i:0;s:2:\"22\";i:1;s:2:\"33\";}s:22:\"item_shipping_amount_1\";a:2:{i:0;s:2:\"22\";i:1;s:2:\"33\";}s:18:\"product_quantity_1\";a:2:{i:0;s:2:\"22\";i:1;s:2:\"33\";}s:27:\"min_quantity_notification_1\";a:2:{i:0;s:2:\"22\";i:1;s:2:\"33\";}s:19:\"product_attribute_1\";a:2:{i:0;s:5:\"Color\";i:1;s:5:\"Color\";}s:16:\"product_option_1\";a:2:{i:0;s:5:\"Green\";i:1;s:5:\"Black\";}s:19:\"product_attribute_2\";a:2:{i:0;s:4:\"Size\";i:1;s:4:\"Size\";}s:16:\"product_option_2\";a:2:{i:0;s:6:\"Medium\";i:1;s:5:\"Small\";}}', NULL, 'a:4:{s:7:\"success\";i:1;s:5:\"error\";i:0;s:7:\"message\";s:112:\"SQLSTATE[HY000]: General error: 1366 Incorrect integer value: \'\' for column \'min_quantity_notification\' at row 1\";s:6:\"values\";a:0:{}}', 'ec_products', 'Insert', NULL, 1, NULL, NULL, '2020-04-06 21:43:17', '2020-04-06 16:13:17'),
(5, 'a:15:{s:8:\"products\";a:19:{s:10:\"created_at\";s:19:\"2020-04-06 09:44:56\";s:10:\"item_alias\";s:11:\"allproducts\";s:15:\"item_type_alias\";s:8:\"products\";s:10:\"item_title\";s:2:\"11\";s:19:\"item_category_alias\";s:6:\"laptop\";s:11:\"item_weight\";s:7:\"1110.00\";s:8:\"in_stock\";s:1:\"Y\";s:11:\"is_featured\";s:1:\"Y\";s:7:\"is_home\";s:1:\"Y\";s:14:\"display_status\";s:1:\"Y\";s:18:\"display_on_sitemap\";s:1:\"Y\";s:16:\"related_products\";s:5:\"shirt\";s:10:\"meta_title\";s:2:\"11\";s:12:\"publish_date\";s:10:\"2020-04-06\";s:16:\"meta_description\";s:2:\"11\";s:21:\"item_terms_conditions\";s:2:\"11\";s:16:\"item_description\";s:2:\"11\";s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:19:\"Super Administrator\";}s:9:\"item_type\";s:8:\"products\";s:7:\"item_id\";s:1:\"0\";s:12:\"productprice\";a:7:{s:20:\"product_option_price\";s:2:\"11\";s:16:\"is_default_price\";s:1:\"Y\";s:28:\"product_option_price_display\";s:2:\"11\";s:15:\"item_tax_amount\";s:2:\"11\";s:20:\"item_shipping_amount\";s:3:\"111\";s:16:\"product_quantity\";s:4:\"1111\";s:25:\"min_quantity_notification\";s:3:\"111\";}s:22:\"product_option_price_1\";a:2:{i:0;s:2:\"11\";i:1;s:2:\"22\";}s:18:\"is_default_price_1\";a:2:{i:0;s:1:\"N\";i:1;s:1:\"N\";}s:30:\"product_option_price_display_1\";a:2:{i:0;s:2:\"11\";i:1;s:2:\"22\";}s:17:\"item_tax_amount_1\";a:2:{i:0;s:2:\"11\";i:1;s:2:\"22\";}s:22:\"item_shipping_amount_1\";a:2:{i:0;s:2:\"11\";i:1;s:2:\"22\";}s:18:\"product_quantity_1\";a:2:{i:0;s:2:\"11\";i:1;s:2:\"22\";}s:27:\"min_quantity_notification_1\";a:2:{i:0;s:2:\"11\";i:1;s:2:\"22\";}s:19:\"product_attribute_1\";a:2:{i:0;s:5:\"color\";i:1;s:5:\"color\";}s:16:\"product_option_1\";a:2:{i:0;s:5:\"green\";i:1;s:4:\"blue\";}s:19:\"product_attribute_2\";a:2:{i:0;s:4:\"size\";i:1;s:4:\"size\";}s:16:\"product_option_2\";a:2:{i:0;s:5:\"small\";i:1;s:6:\"medium\";}}', NULL, 'a:4:{s:7:\"success\";i:1;s:5:\"error\";i:0;s:7:\"message\";s:31:\"Your record successfully saved.\";s:6:\"values\";a:0:{}}', 'ec_products', 'Insert', NULL, 1, NULL, NULL, '2020-04-06 21:49:53', '2020-04-06 16:19:53'),
(6, 'a:15:{s:8:\"products\";a:18:{s:10:\"created_at\";s:19:\"2020-04-06 09:53:43\";s:10:\"item_alias\";s:11:\"allproducts\";s:15:\"item_type_alias\";s:8:\"products\";s:10:\"item_title\";s:20:\"Configurable Product\";s:19:\"item_category_alias\";s:6:\"laptop\";s:11:\"item_weight\";s:5:\"10.00\";s:8:\"in_stock\";s:1:\"Y\";s:11:\"is_featured\";s:1:\"Y\";s:7:\"is_home\";s:1:\"Y\";s:14:\"display_status\";s:1:\"Y\";s:18:\"display_on_sitemap\";s:1:\"Y\";s:10:\"meta_title\";s:2:\"11\";s:12:\"publish_date\";s:10:\"2020-04-01\";s:16:\"meta_description\";s:2:\"11\";s:21:\"item_terms_conditions\";s:2:\"11\";s:16:\"item_description\";s:2:\"11\";s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:19:\"Super Administrator\";}s:9:\"item_type\";s:8:\"products\";s:7:\"item_id\";s:1:\"0\";s:12:\"productprice\";a:7:{s:20:\"product_option_price\";s:2:\"11\";s:16:\"is_default_price\";s:1:\"Y\";s:28:\"product_option_price_display\";s:2:\"11\";s:15:\"item_tax_amount\";s:2:\"11\";s:20:\"item_shipping_amount\";s:2:\"11\";s:16:\"product_quantity\";s:1:\"1\";s:25:\"min_quantity_notification\";s:2:\"11\";}s:22:\"product_option_price_1\";a:3:{i:0;s:2:\"22\";i:1;s:2:\"33\";i:2;s:2:\"44\";}s:18:\"is_default_price_1\";a:3:{i:0;s:1:\"N\";i:1;s:1:\"N\";i:2;s:1:\"N\";}s:30:\"product_option_price_display_1\";a:3:{i:0;s:2:\"22\";i:1;s:2:\"33\";i:2;s:2:\"44\";}s:17:\"item_tax_amount_1\";a:3:{i:0;s:2:\"22\";i:1;s:2:\"33\";i:2;s:2:\"44\";}s:22:\"item_shipping_amount_1\";a:3:{i:0;s:2:\"22\";i:1;s:2:\"33\";i:2;s:2:\"44\";}s:18:\"product_quantity_1\";a:3:{i:0;s:2:\"22\";i:1;s:2:\"33\";i:2;s:2:\"44\";}s:27:\"min_quantity_notification_1\";a:3:{i:0;s:2:\"22\";i:1;s:2:\"33\";i:2;s:2:\"44\";}s:19:\"product_attribute_1\";a:3:{i:0;s:5:\"Color\";i:1;s:5:\"Color\";i:2;s:5:\"Color\";}s:16:\"product_option_1\";a:3:{i:0;s:5:\"Green\";i:1;s:3:\"Red\";i:2;s:5:\"Black\";}s:19:\"product_attribute_2\";a:3:{i:0;s:4:\"Size\";i:1;s:4:\"Size\";i:2;s:4:\"Size\";}s:16:\"product_option_2\";a:3:{i:0;s:5:\"Small\";i:1;s:6:\"Medium\";i:2;s:6:\"Medium\";}}', NULL, 'a:4:{s:7:\"success\";i:1;s:5:\"error\";i:0;s:7:\"message\";s:31:\"Your record successfully saved.\";s:6:\"values\";a:0:{}}', 'ec_products', 'Insert', NULL, 1, NULL, NULL, '2020-04-06 21:55:38', '2020-04-06 16:25:38'),
(7, 'a:2:{s:13:\"email_address\";s:25:\"mayank.patel104@gmail.com\";s:8:\"password\";s:10:\"Mayank@203\";}', NULL, 'a:6:{s:5:\"token\";s:48:\"MS1tYXlhbmsucGF0ZWwxMDRAZ21haWwuY29tLTEtU3VwZXI=\";s:7:\"success\";i:1;s:5:\"error\";i:0;s:6:\"status\";i:200;s:7:\"message\";s:30:\"You are successfully logged in\";s:6:\"values\";a:35:{s:2:\"id\";s:1:\"1\";s:8:\"user_pin\";s:1:\"0\";s:4:\"name\";N;s:10:\"first_name\";s:5:\"Super\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:25:\"mayank.patel104@gmail.com\";s:8:\"password\";s:16:\"TWF5YW5rQDIwMw==\";s:10:\"birth_date\";s:10:\"1987-04-10\";s:7:\"role_id\";s:1:\"1\";s:12:\"access_token\";s:0:\"\";s:20:\"security_question_id\";s:1:\"3\";s:15:\"security_answer\";s:5:\"Parul\";s:13:\"user_address1\";s:15:\"134 Demo street\";s:13:\"user_address2\";s:1:\"2\";s:9:\"user_city\";s:8:\"Vadodara\";s:10:\"user_state\";s:2:\"GJ\";s:12:\"user_zipcode\";s:6:\"299999\";s:12:\"user_country\";s:2:\"IN\";s:14:\"contact_number\";s:12:\"222992999992\";s:18:\"display_on_listing\";s:1:\"N\";s:20:\"show_action_checkbox\";s:1:\"Y\";s:9:\"api_token\";N;s:9:\"item_type\";s:5:\"users\";s:13:\"display_order\";s:1:\"0\";s:14:\"display_status\";s:1:\"Y\";s:12:\"fail_attempt\";s:1:\"0\";s:7:\"blocked\";s:1:\"N\";s:6:\"device\";s:7:\"website\";s:9:\"device_id\";s:7:\"windows\";s:14:\"deleted_status\";s:1:\"N\";s:10:\"deleted_by\";s:1:\"0\";s:15:\"deleted_by_name\";s:0:\"\";s:12:\"deleted_time\";s:19:\"2019-10-11 07:01:49\";s:10:\"created_at\";s:19:\"2019-01-19 07:57:37\";s:10:\"updated_at\";s:19:\"2019-11-20 16:37:48\";}}', 'users', 'loginaction', NULL, 1, NULL, NULL, '2020-04-09 16:52:10', '2020-04-09 11:22:10'),
(8, 'a:2:{s:13:\"email_address\";s:25:\"mayank.patel104@gmail.com\";s:8:\"password\";s:10:\"Mayank@203\";}', NULL, 'a:6:{s:5:\"token\";s:48:\"MS1tYXlhbmsucGF0ZWwxMDRAZ21haWwuY29tLTEtU3VwZXI=\";s:7:\"success\";i:1;s:5:\"error\";i:0;s:6:\"status\";i:200;s:7:\"message\";s:30:\"You are successfully logged in\";s:6:\"values\";a:35:{s:2:\"id\";s:1:\"1\";s:8:\"user_pin\";s:1:\"0\";s:4:\"name\";N;s:10:\"first_name\";s:5:\"Super\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:25:\"mayank.patel104@gmail.com\";s:8:\"password\";s:16:\"TWF5YW5rQDIwMw==\";s:10:\"birth_date\";s:10:\"1987-04-10\";s:7:\"role_id\";s:1:\"1\";s:12:\"access_token\";s:0:\"\";s:20:\"security_question_id\";s:1:\"3\";s:15:\"security_answer\";s:5:\"Parul\";s:13:\"user_address1\";s:15:\"134 Demo street\";s:13:\"user_address2\";s:1:\"2\";s:9:\"user_city\";s:8:\"Vadodara\";s:10:\"user_state\";s:2:\"GJ\";s:12:\"user_zipcode\";s:6:\"299999\";s:12:\"user_country\";s:2:\"IN\";s:14:\"contact_number\";s:12:\"222992999992\";s:18:\"display_on_listing\";s:1:\"N\";s:20:\"show_action_checkbox\";s:1:\"Y\";s:9:\"api_token\";N;s:9:\"item_type\";s:5:\"users\";s:13:\"display_order\";s:1:\"0\";s:14:\"display_status\";s:1:\"Y\";s:12:\"fail_attempt\";s:1:\"0\";s:7:\"blocked\";s:1:\"N\";s:6:\"device\";s:7:\"website\";s:9:\"device_id\";s:7:\"windows\";s:14:\"deleted_status\";s:1:\"N\";s:10:\"deleted_by\";s:1:\"0\";s:15:\"deleted_by_name\";s:0:\"\";s:12:\"deleted_time\";s:19:\"2019-10-11 07:01:49\";s:10:\"created_at\";s:19:\"2019-01-19 07:57:37\";s:10:\"updated_at\";s:19:\"2019-11-20 16:37:48\";}}', 'users', 'loginaction', NULL, 1, NULL, NULL, '2020-04-09 18:36:15', '2020-04-09 13:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `subscriber_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `item_type` varchar(60) NOT NULL DEFAULT 'newsletter',
  `contact` varchar(20) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `cellphone1` varchar(15) DEFAULT NULL,
  `cellphone2` varchar(15) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `last_email_sent` datetime DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_email_logs`
--

CREATE TABLE `subscriber_email_logs` (
  `id` int(11) NOT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `subject` varchar(1024) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber_email_logs`
--

INSERT INTO `subscriber_email_logs` (`id`, `email_to`, `subject`, `message`, `created_at`) VALUES
(1, 'dailytask@cloudswiftsolutions.com', 'Software Consultant = Mayank Consultant - Cloudswift Solutions', 'Hello dailytask@cloudswiftsolutions.com,<br /><p>Please see our details</p><p><br></p><br />Best Regards,<br />Cloudswift Solutions<br /><a href=\'mailto:connect@cloudswiftsolutions.com\'>connect@cloudswiftsolutions.com</a><br />', '2019-11-28 04:58:58'),
(2, 'mayank.patel@live.in', 'Software Consultant = Mayank Consultant - Cloudswift Solutions', 'Hello mayank.patel@live.in,<br /><p>Please see our details</p><p><br></p><br />Best Regards,<br />Cloudswift Solutions<br /><a href=\'mailto:connect@cloudswiftsolutions.com\'>connect@cloudswiftsolutions.com</a><br />', '2019-11-28 04:59:03'),
(3, 'mayank.patel@hotmail.co.in', 'Software Consultant = Mayank Consultant - Cloudswift Solutions', 'Hello mayank.patel@hotmail.co.in,<br /><p>Please see our details</p><p><br></p><br />Best Regards,<br />Cloudswift Solutions<br /><a href=\'mailto:connect@cloudswiftsolutions.com\'>connect@cloudswiftsolutions.com</a><br />', '2019-11-28 04:59:09'),
(4, 'mayank.patel@msn.com', 'Software Consultant = Mayank Consultant - Cloudswift Solutions', 'Hello mayank.patel@msn.com,<br /><p>Please see our details</p><p><br></p><br />Best Regards,<br />Cloudswift Solutions<br /><a href=\'mailto:connect@cloudswiftsolutions.com\'>connect@cloudswiftsolutions.com</a><br />', '2019-11-28 04:59:14'),
(5, 'mayank@yopmail.com', 'This is for subject tagline cloudswift - Cloudswift Solutions', '<p>fsdff</p><br />Best Regards,<br />Cloudswift Solutions<br /><a href=\'mailto:connect@cloudswiftsolutions.com\'>connect@cloudswiftsolutions.com</a><br />', '2019-11-28 05:00:40'),
(6, 'maulika@yopmail.com', 'Toolcrib docx - Cloudswift Solutions', '<p><b>J3LLO</b></p><h2><b><br></b></h2><br />Best Regards,<br />Cloudswift Solutions<br /><a href=\'mailto:connect@cloudswiftsolutions.com\'>connect@cloudswiftsolutions.com</a><br />', '2019-12-07 06:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `summary_id` int(11) NOT NULL,
  `summary_type` varchar(255) DEFAULT NULL,
  `summary_title` varchar(255) DEFAULT NULL,
  `summary_value` varchar(255) DEFAULT NULL,
  `summary_note` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`summary_id`, `summary_type`, `summary_title`, `summary_value`, `summary_note`) VALUES
(1, 'currentmonthcityvisitors', 'Ahmedabad', '3', NULL),
(2, 'currentmonthcityvisitors', 'Ashburn', '7', NULL),
(3, 'currentmonthcityvisitors', 'Mountain View', '7', NULL),
(4, 'currentyearcityvisitors', 'Ahmedabad', '3', NULL),
(5, 'currentyearcityvisitors', 'Ashburn', '7', NULL),
(6, 'currentyearcityvisitors', 'Mountain View', '7', NULL),
(7, 'currentmonthcountryvisitors', 'India', '3', NULL),
(8, 'currentmonthcountryvisitors', 'United States', '14', NULL),
(9, 'currentyearcountryvisitors', 'India', '3', NULL),
(10, 'currentyearcountryvisitors', 'United States', '14', NULL),
(11, 'currentyearemployeeleave', 'Mrugesh Rana', '01/01/2020 04/12/2019', 'Going for tour'),
(12, 'currentyearemployeeleave', 'Maulika Vasava', '09/01/2020 10/01/2020', 'Need leave for 2 days'),
(13, 'employeewisependingtasks', 'Maulika Vasava', '1', ''),
(14, 'employeewisependingtasks', 'Mayank Patel', '32', ''),
(15, 'statuswisependingtasks', 'In Progress', '10', ''),
(16, 'statuswisependingtasks', 'To Do', '23', ''),
(17, 'projectwisependingtasks', 'cloudswiftsolutions.com', '14', ''),
(18, 'projectwisependingtasks', 'Digital Marketing', '9', ''),
(19, 'projectwisependingtasks', 'Server Maintenance', '1', ''),
(20, 'projectwisependingtasks', 'Freshnpurewateruk', '6', ''),
(21, 'projectwisependingtasks', 'Texas-fsg', '1', ''),
(22, 'projectwisependingtasks', 'Genesis Enterprise', '1', ''),
(23, 'projectwisependingtasks', 'Comfeeni com', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `item_type` varchar(255) NOT NULL DEFAULT 'projects',
  `task_status` varchar(25) DEFAULT NULL,
  `task_priority` varchar(25) DEFAULT NULL,
  `task_name` varchar(1024) DEFAULT NULL,
  `task_description` text,
  `assign_to` int(11) NOT NULL DEFAULT '0',
  `assign_by` int(11) NOT NULL DEFAULT '0',
  `milestone` varchar(255) DEFAULT NULL,
  `estimate_hours` decimal(10,2) NOT NULL DEFAULT '0.00',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `project_id`, `client_id`, `item_type`, `task_status`, `task_priority`, `task_name`, `task_description`, `assign_to`, `assign_by`, `milestone`, `estimate_hours`, `start_date`, `end_date`, `attachment`, `deleted_status`, `deleted_by`, `deleted_by_name`, `deleted_time`, `created_at`, `updated_at`) VALUES
(1, 23, 15, 'tasks', 'Done', 'Normal', 'To Research on Cronjob', '<p>Please do some research on 3 times a day cronjob.</p>', 3, 1, 'Initial', '0.00', '2019-11-07', '2019-11-15', NULL, 'N', 0, NULL, NULL, '2019-11-07 12:00:56', '2019-11-19 14:01:49'),
(2, 23, 15, 'tasks', 'Done', 'Normal', 'Quantity Issue on Issue page', '<p>To fixed issue</p>', 4, 1, 'Client Changes', '0.00', '2019-11-09', '2019-11-12', NULL, 'N', 0, NULL, NULL, '2019-11-07 12:02:06', '2019-11-25 04:57:25'),
(3, 23, 15, 'tasks', 'Done', 'Trival', 'To create offline Documentation', '<p>Please do this task once each tasks will complete</p>', 8, 1, 'Requirement Completed', '0.00', '2019-11-20', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-07 12:03:15', '2019-11-25 04:57:25'),
(4, 25, 24, 'tasks', 'Done', 'Trival', 'Research on JQuery', '<p>To research on specific work......</p>', 6, 1, 'Initial', '100.00', '2019-11-07', '2019-12-07', '4_1_1573137717_adminlogo.png', 'N', 0, NULL, NULL, '2019-11-07 02:41:00', '2019-11-19 14:08:06'),
(5, 25, 24, 'tasks', 'Done', 'Trival', 'Study Laravel Framework', '<p>Study of laravel project</p>', 2, 1, 'Initial', '25.00', '2019-11-06', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-07 02:42:27', '2019-11-19 14:08:06'),
(6, 25, 24, 'tasks', 'Done', 'Trival', 'Learning', '<p>To start learning of new framework</p>', 7, 4, 'Initial', '30.00', '2019-11-12', '2019-11-20', NULL, 'N', 0, NULL, NULL, '2019-11-14 03:15:54', '2019-11-19 14:08:06'),
(7, 25, 15, 'tasks', 'Done', 'Normal', 'Hardware Issue', '<p>To solve hardware issue</p>', 7, 1, 'Initial', '20.00', '2019-11-12', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-14 03:16:52', '2019-11-19 14:08:06'),
(8, 25, 24, 'tasks', 'Done', 'Trival', 'Discussion of common project', '<p>Discussion about requirement of project</p>', 8, 4, 'Revision', '20.00', '2019-11-06', '2019-11-12', NULL, 'N', 0, NULL, NULL, '2019-11-14 03:17:43', '2019-11-19 14:08:06'),
(9, 25, 24, 'tasks', 'Done', 'Trival', 'Outside for personal work', '<p>Enter hours fro going outside</p>', 7, 7, 'Initial', '20.00', '2019-11-05', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-14 03:18:47', '2019-11-19 14:01:27'),
(10, 16, 13, 'tasks', 'Done', 'Higher', 'Do some minor changes', '<p>Please start work on this</p>', 4, 9, 'Revision', '39.00', '2019-11-18', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-17 12:59:20', '2019-11-19 14:09:29'),
(11, 16, 13, 'tasks', 'Done', 'Blocker', 'To work on checkout section', '<p>To work on this as top priority</p>', 8, 10, 'Revision', '10.00', '2019-11-20', '2019-11-25', NULL, 'N', 0, NULL, NULL, '2019-11-17 01:00:22', '2019-11-26 03:04:09'),
(12, 33, 24, 'tasks', 'In Progress', 'Higher', 'To create Social Networking Connection', '<p>To work on sending client notifications</p>', 8, 1, 'Initial', '100.00', '2019-11-18', '2020-05-31', NULL, 'N', 0, NULL, NULL, '2019-11-18 02:37:59', '2019-11-18 02:39:05'),
(13, 31, 24, 'tasks', 'Done', 'Higher', 'Cloudswift Portal Work', '<p>To work on development</p>', 8, 1, 'Initial', '200.00', '2019-11-18', '2020-06-30', NULL, 'N', 0, NULL, NULL, '2019-11-18 02:39:21', '2019-11-19 03:18:52'),
(14, 22, 15, 'tasks', 'Done', 'Trival', 'NHSRCL Hostel Room Booking', '<p>Please start work on this</p>', 8, 1, 'Requirement Completed', '30.00', '2019-11-20', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-18 07:24:26', '2019-11-19 14:02:04'),
(15, 33, 24, 'tasks', 'In Progress', 'Higher', 'Share your card to social networking sites', '<p>Please start work on this</p>', 8, 1, 'Revision', '30.00', '2019-11-05', '2020-03-19', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:06:00', '2019-11-19 02:06:38'),
(16, 33, 24, 'tasks', 'In Progress', 'Trival', 'Research or study digital marketing', '<p>Worked on this task</p>', 8, 1, 'Revision', '40.00', '2019-11-27', '2020-07-03', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:06:40', '2019-11-19 02:07:18'),
(17, 32, 24, 'tasks', 'Done', 'Trival', 'Full day leave', '<p>Please enter your leave hours into this project</p>', 8, 1, 'Initial', '1000.00', '2019-11-12', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:07:51', '2019-11-19 14:07:31'),
(18, 32, 24, 'tasks', 'Done', 'Higher', 'Half Day Leave', '<p>Half Day Leave</p>', 8, 1, 'Client Changes', '1000.00', '2019-11-19', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:08:37', '2019-11-19 14:07:31'),
(19, 32, 24, 'tasks', 'Done', 'Higher', 'Partial Hours Leave', '<p>Partial leave</p>', 8, 1, 'Client Changes', '300.00', '2019-11-12', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:09:16', '2019-11-19 14:00:23'),
(20, 31, 24, 'tasks', 'Done', 'Trival', 'Portal Work', '<p>Worked on portal</p>', 8, 1, 'Revision', '100.00', '2019-11-13', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:10:07', '2019-11-20 02:23:35'),
(21, 31, 24, 'tasks', 'Done', 'Higher', 'Data Entries on Portal', '<p>Done data entry on portal</p>', 8, 1, 'Revision', '100.00', '2019-11-12', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:10:50', '2019-11-20 02:23:35'),
(22, 31, 24, 'tasks', 'Done', 'Trival', 'Unit Testing on portal', '<p>Start work on this</p>', 8, 1, 'Client Changes', '199.00', '2019-11-12', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:11:38', '2019-11-20 02:23:35'),
(23, 28, 30, 'tasks', 'Done', 'Normal', 'Worked on fixing email issue on domainracer.com website', '<p>Work on this</p>', 8, 1, 'Revision', '100.00', '2019-11-19', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:12:23', '2019-11-19 14:07:45'),
(24, 28, 30, 'tasks', 'Done', 'Higher', 'Discussion with Client', '<p>Client Discussion</p>', 8, 1, 'Client Changes', '100.00', '2019-11-13', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:13:05', '2019-11-19 14:07:45'),
(25, 28, 30, 'tasks', 'Done', 'Blocker', 'Client office visit', '<p>Client office visit</p>', 8, 1, 'Client Changes', '30.00', '2019-11-12', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:13:55', '2019-11-19 14:00:38'),
(26, 27, 26, 'tasks', 'Done', 'Trival', 'Worked on development of website', 'Worked on this website', 8, 1, 'Client Changes', '100.00', '2019-11-13', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:14:38', '2019-11-19 14:07:56'),
(27, 27, 26, 'tasks', 'Done', 'Trival', 'Learning/Study of laravel framework', '<p>Learning of laravel</p>', 8, 1, 'Client Changes', '100.00', '2019-11-12', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:15:24', '2019-11-19 14:07:56'),
(28, 27, 26, 'tasks', 'Done', 'Blocker', 'Worked on Contact email issue', '<p>Fixed issue on contact email sending with email attachment</p>', 8, 1, 'Revision', '30.00', '2019-11-20', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:16:10', '2019-11-19 14:00:58'),
(29, 22, 15, 'tasks', 'Done', 'Trival', 'Worked on fixing server issue', '<p>Worked with hemal pandya for fixing issues</p>', 8, 1, 'Revision', '19.00', '2019-11-13', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:17:22', '2019-11-25 04:57:25'),
(30, 21, 18, 'tasks', 'Done', 'Higher', 'Worked on create backend server', '<p>Worked on create backend side&nbsp;</p>', 8, 1, 'Revision', '100.00', '2019-11-12', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:18:19', '2019-11-19 14:08:30'),
(31, 21, 18, 'tasks', 'Done', 'Trival', 'Worked on development of front-end', '<p>Worked on frontend side</p>', 8, 1, 'Client Changes', '100.00', '2019-11-06', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:18:57', '2019-11-19 14:08:30'),
(32, 21, 18, 'tasks', 'Done', 'Higher', 'Integration of paytm payment gateway.', '<p>Worked on paytm integration</p>', 8, 1, 'Revision', '100.00', '2019-11-12', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:19:31', '2019-11-19 14:08:30'),
(33, 21, 18, 'tasks', 'Done', 'Higher', 'Client communication', '<p>Discussion with client</p>', 8, 1, 'Revision', '100.00', '2019-11-13', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:20:15', '2019-11-19 14:02:19'),
(34, 20, 19, 'tasks', 'Done', 'Trival', 'Client Meetings', '<p>Discussion and meeting with client</p>', 8, 1, 'Revision', '100.00', '2019-11-12', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:20:50', '2019-11-19 14:08:44'),
(35, 20, 19, 'tasks', 'Done', 'Trival', 'Development', '<p>Done front and backend side development</p>', 8, 1, 'Client Changes', '100.00', '2019-11-12', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:21:27', '2019-11-19 14:08:44'),
(36, 20, 19, 'tasks', 'Done', 'Trival', 'Unit Testing', '<p>Done unit testing</p>', 8, 1, 'Revision', '100.00', '2019-11-05', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:22:04', '2019-11-19 14:08:44'),
(37, 20, 19, 'tasks', 'Done', 'Trival', 'Mobile Application Development', '<p>Mobile application development</p>', 8, 1, 'Client Changes', '100.00', '2019-11-05', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:22:39', '2019-11-19 14:03:00'),
(38, 17, 14, 'tasks', 'Done', 'Higher', 'Discussion with Amit Solanki', '<p>Discussion with Amit Solanki about requirement and design issues</p>', 8, 1, 'Revision', '10.00', '2019-11-12', '2019-11-29', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:23:20', '2019-11-25 04:57:25'),
(39, 17, 14, 'tasks', 'Done', 'Trival', 'Worked on front-end side', '<p>Worked on front-end side for development</p>', 8, 1, 'Client Changes', '100.00', '2019-11-19', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:24:18', '2019-11-19 14:08:56'),
(40, 17, 14, 'tasks', 'Done', 'Blocker', 'Worked on Backend side customization', '<p>Worked on customization of backend side</p>', 8, 1, 'Revision', '100.00', '2019-11-12', '2019-11-20', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:24:57', '2019-11-19 14:03:20'),
(41, 17, 14, 'tasks', 'Done', 'Trival', 'Meeting with client', '<p>Meeting with client</p>', 8, 1, 'Client Changes', '20.00', '2019-11-06', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:25:43', '2020-01-08 01:42:50'),
(42, 16, 13, 'tasks', 'Done', 'Trival', 'Discussion with Client', '<p>Discussion with Client</p>', 8, 1, 'Revision', '10.00', '2019-11-05', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:26:41', '2019-11-25 04:57:25'),
(43, 16, 13, 'tasks', 'Done', 'Trival', 'Paytm Integration', '<p>Paytm Integration</p>', 8, 1, 'Client Changes', '100.00', '2019-11-13', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:27:17', '2019-11-19 14:09:29'),
(44, 16, 13, 'tasks', 'Done', 'Blocker', 'Front-end Development', '<p>Worked on front-end development of project<br></p>', 8, 1, 'Client Changes', '150.00', '2019-11-13', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:27:56', '2019-11-19 14:09:29'),
(45, 16, 13, 'tasks', 'Done', 'Trival', 'Backend Development', '<p>Worked on backend side gaudairy</p>', 8, 1, 'Client Changes', '30.00', '2019-11-20', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:28:39', '2019-11-19 14:03:44'),
(46, 31, 24, 'tasks', 'Done', 'Higher', 'Allow forgot password email to customer', '<p>Right now i am allowing to send forgot password email even user is blocked.</p><p>It should not allow to send email to anyone.</p><p>If any user blocked and he/she do forgot password -> it should show your account is inactive please contact administrator</p>', 8, 1, 'Revision', '10.00', '2019-11-20', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:44:59', '2019-11-19 08:39:18'),
(47, 31, 24, 'tasks', 'Done', 'Higher', 'Dashboard shows deleted timecard entries', '<p>Dashboard should not allow to show deleted entries. Please remove from dashboard and everywhere.</p>', 8, 1, 'Client Changes', '5.00', '2019-11-05', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 02:50:36', '2019-11-19 07:56:00'),
(48, 31, 24, 'tasks', 'Done', 'Blocker', 'Create web services for all modules', '<p>Create this as soon as possible</p>', 8, 1, 'Revision', '20.00', '2019-11-05', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 03:17:39', '2019-11-20 12:08:22'),
(49, 31, 24, 'tasks', 'Done', 'Normal', 'Bug of max post size', 'To be fixed<p></p>', 8, 1, 'Initial', '20.00', '2019-11-05', '2019-11-28', 'task_49_1_1574143912_rooms.txt', 'N', 0, NULL, NULL, '2019-11-19 05:40:38', '2019-11-20 02:23:35'),
(50, 25, 24, 'tasks', 'Done', 'Normal', 'Learning of docker', '<p>Learning of docker</p>', 8, 1, 'Requirement Completed', '20.00', '2019-11-21', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 01:40:50', '2020-01-08 01:42:59'),
(51, 31, 24, 'tasks', 'Done', 'Blocker', 'Task comments not working on individual project timecard', '<p>Please start work on this</p>', 8, 1, 'Requirement Completed', '10.00', '2019-11-20', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-19 01:44:48', '2019-11-20 02:46:10'),
(76, 31, 24, 'tasks', 'To Do', 'Normal', 'Admin should allow to access from Surat and Vadodara only', '<p>Please do this carefully as this is our security concern</p>', 8, 1, 'Initial', '3.50', '2019-11-25', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-25 05:52:49', '2019-11-25 05:53:56'),
(52, 31, 24, 'tasks', 'T', 'Blocker', 'Create dashboard notification those applied leave', '<p>Create feature on dashboard</p>', 8, 1, 'Initial', '10.00', '2019-11-27', '2019-11-28', NULL, 'Y', 8, 'Mayank Patel', '2019-11-25 12:27:52', '2019-11-19 02:15:37', '2019-11-25 12:27:52'),
(53, 31, 24, 'tasks', 'Done', 'Higher', 'Allow edit timecard functionality', '<p>On timecard listing, place edit functionality</p><p><br></p><p>Pop up should get open on clicking edit button where user can edit their hour and description and save their data</p>', 8, 1, 'Client Changes', '10.00', '2019-11-27', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:13:20', '2019-11-20 02:02:15'),
(54, 31, 24, 'tasks', 'Done', 'Blocker', 'In employee dashboard, done tasks showing', '<p>On employee dashboard done task should not showing. Rest is fine</p>', 8, 1, 'Revision', '5.00', '2019-11-26', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:16:28', '2019-11-20 01:17:06'),
(55, 31, 24, 'tasks', 'Done', 'Blocker', 'On task management there should be filter of status drop-down', '<p>There must be all status drop-down on task listing page.</p><p><br></p><p>User should allow to filter their records by selection of Filter</p>', 8, 1, 'Initial', '3.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:18:09', '2019-11-20 03:01:01'),
(56, 31, 24, 'tasks', 'T', 'Blocker', 'Only one insert and update query', 'Please remove all insert and update query from module and create common functiona for insert and update and call this from throughout site', 8, 1, 'Client Changes', '10.00', '2019-11-20', '2019-11-27', NULL, 'Y', 1, 'Super Administrator', '2019-11-25 04:55:11', '2019-11-19 10:20:20', '2019-11-25 04:55:11'),
(57, 31, 24, 'tasks', 'To Do', 'Normal', 'Error on query logs', '<p>If there is any error on mysql query it should get log to specific file</p><p><br></p><p>So that if customer or user face any query during operation, developer will get error from that file</p>', 8, 1, 'Revision', '6.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:22:09', '2019-11-19 22:24:05'),
(58, 31, 24, 'tasks', 'Done', 'Blocker', 'Cloudswift logo with various dimensions to be create', '<p>Create cloudswift logo with multiple dimensions to place over Google my business, site logo, share on social media and other places</p>', 8, 1, 'Revision', '10.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:39:09', '2019-11-23 09:21:25'),
(59, 31, 24, 'tasks', 'To Do', 'Blocker', 'HTML template creation', '<p>Create HTML template for create logo , banner and other templates where we can share our data with specific header and footers</p>', 8, 1, 'Requirement Completed', '10.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:40:44', '2019-11-19 22:42:26'),
(60, 31, 24, 'tasks', 'Done', 'Higher', 'Place some HTML template on live server ', '<p>Upload and create domain for some nice HTML template and link their template on cloudswift domain</p>', 8, 1, 'Client Changes', '10.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:45:31', '2019-11-26 02:20:12'),
(61, 31, 24, 'tasks', 'Done', 'Blocker', 'Create Google sheet for payment details', '<p>Create Google sheet and theor payment received, pending payment and client details</p>', 8, 1, 'Initial', '10.00', '2019-11-20', '2019-11-26', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:49:22', '2019-11-25 04:54:47'),
(62, 31, 24, 'tasks', 'Done', 'Normal', 'Header on mobile is not looking good on mobile devices', '<p>Improve header on mobile devives for mobile view.</p><p><br></p><p>Right now name is breaking</p>', 8, 1, 'Requirement Completed', '5.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 10:50:54', '2019-11-29 06:40:13'),
(63, 31, 24, 'tasks', 'Done', 'Normal', 'Email template improve', '<p>Email template should have proper header logo and footer links color should be bootstrap primary colors</p>', 8, 1, 'Requirement Completed', '8.00', '2019-11-20', '2019-11-20', NULL, 'N', 0, NULL, NULL, '2019-11-19 11:13:33', '2019-11-20 01:08:43'),
(64, 31, 24, 'tasks', 'Done', 'Trival', 'Create drop-down of total number of records on task page', 'Place drop-down of number of records per page for task management', 8, 1, 'Revision', '10.00', '2019-11-20', '2019-11-22', NULL, 'N', 0, NULL, NULL, '2019-11-19 11:15:11', '2019-11-20 03:01:46'),
(65, 31, 24, 'tasks', 'Done', 'Normal', 'Convert pagination links to drop-down', '<p>Please convert pagination links to drop-down so that easy to navigate on any pages</p>', 8, 1, 'Revision', '8.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 11:17:11', '2019-11-20 07:39:01'),
(66, 31, 24, 'tasks', 'Done', 'Blocker', 'Create list of 1lac entries on activity table and export', '<p>Create an activity list ofb1 lac entries and export to PHP excel</p>', 8, 1, 'Revision', '8.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 11:28:59', '2019-11-23 09:20:01'),
(67, 31, 24, 'tasks', 'Done', 'Blocker', 'Some portal pages allow to access before login ', '<p>Please take care of this task</p>', 8, 1, 'Requirement Completed', '20.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 11:30:38', '2019-11-20 00:06:48'),
(68, 31, 24, 'tasks', 'Done', 'Blocker', 'Client unable to view their project tasks', '<p>Right now client unable to view their own project tasks.</p><p>It should shows their own tasks only</p>', 8, 1, 'Revision', '5.00', '2019-11-20', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-19 11:34:48', '2019-11-20 09:05:07'),
(69, 35, 15, 'tasks', 'Done', 'Higher', 'Good will theme ', '<p>To work on this task</p>', 8, 1, 'Initial', '10.00', '2019-11-20', '2019-11-20', NULL, 'N', 0, NULL, NULL, '2019-11-20 11:07:15', '2019-11-20 12:07:56'),
(70, 31, 24, 'tasks', 'Done', 'Blocker', 'Create API for Projects, Clients and Users', '<p>Please create api for list of sections by item_type</p><p><br></p><p>1) Clients</p><p>2) Projects</p><p>3) Users</p>', 8, 1, 'Client Changes', '20.00', '2019-11-21', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-21 03:06:40', '2019-11-25 12:26:34'),
(71, 31, 24, 'tasks', 'T', 'Blocker', 'Create API for Projects, Clients and Users', '<p>Please create api for list of sections by item_type</p><p><br></p><p>1) Clients</p><p>2) Projects</p><p>3) Users</p>', 8, 1, 'Client Changes', '20.00', '2019-11-21', '2019-11-28', NULL, 'Y', 8, 'Mayank Patel', '2019-11-21 03:09:06', '2019-11-21 03:06:40', '2019-11-21 03:09:06'),
(72, 31, 24, 'tasks', 'Done', 'Blocker', 'Monthly Credentials email', '<p>Need to create functionality , admin can receive database credentials email&nbsp;</p>', 8, 1, 'Initial', '22.00', '2019-11-22', '2019-11-27', NULL, 'N', 0, NULL, NULL, '2019-11-22 09:09:44', '2019-11-26 03:02:15'),
(73, 31, 24, 'tasks', 'T', 'Higher', 'To create email send newsletter on local machine', '<p>To create script on local machine that will allow you to send email from local machine via Gmail SMTP</p><p><br></p><p>Apart from this need to create collection of emails on subscriber database table to store&nbsp;</p>', 8, 1, 'Initial', '20.00', '2019-11-23', '2019-11-30', NULL, 'Y', 8, 'Mayank Patel', '2019-11-28 05:02:36', '2019-11-23 09:17:13', '2019-11-28 05:02:36'),
(74, 31, 24, 'tasks', 'Done', 'Normal', 'Create 3 trial login functionality on admin', '<p>Please do work as per mentioned for security</p>', 8, 1, 'Initial', '20.00', '2019-11-23', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-23 09:26:25', '2019-11-26 02:19:27'),
(75, 31, 24, 'tasks', 'Done', 'Higher', 'Apply this milestones', '<p>Set milestone like following</p><p><br></p><p>1) After complete clients functionality</p><p>2) unit testing</p><p>3) after clients feedback</p><p><br></p><p>And many other milestone</p>', 8, 1, 'Initial', '10.00', '2019-11-23', '2019-11-30', NULL, 'N', 0, NULL, NULL, '2019-11-23 09:28:28', '2019-11-25 12:21:08'),
(77, 31, 24, 'tasks', 'Done', 'Higher', 'Daily database backup email should get receive from backup server', '<p>Please fix as soon as possible</p>', 8, 1, 'Initial', '10.00', '2019-11-27', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-27 01:21:48', '2019-12-02 14:43:28'),
(78, 31, 34, 'tasks', 'Done', 'Normal', 'Sent newsletter email should get store on database', '<p>Please start as soon as possible</p>', 8, 1, 'Initial', '6.00', '2019-11-27', '2019-11-29', NULL, 'N', 0, NULL, NULL, '2019-11-27 01:23:25', '2019-11-28 05:01:49'),
(79, 31, 24, 'tasks', 'Done', 'Higher', 'Subscriber import keep email validation ', '<p>Please start work on this</p>', 1, 1, 'Requirement Completed', '3.00', '2019-11-27', '2019-11-28', NULL, 'N', 0, NULL, NULL, '2019-11-27 01:49:16', '2019-11-28 04:20:45'),
(80, 31, 24, 'tasks', 'Done', 'Normal', 'Update cloudswift logo and cover on Google my business', '<p>Please update cloudswift logo on Google my business and cover photo on Google my business account.</p>', 8, 1, 'Initial', '2.50', '2019-11-30', '2019-12-01', NULL, 'N', 0, NULL, NULL, '2019-11-29 04:26:52', '2019-12-02 14:42:57'),
(81, 31, 24, 'tasks', 'In Progress', 'Normal', 'Create functionality login with Google and Facebook', '<p>Please develop title functionlity</p>', 8, 1, 'Initial', '20.00', '2019-12-01', '2019-12-06', NULL, 'N', 0, NULL, NULL, '2019-11-30 06:25:58', '2019-11-30 18:27:06'),
(82, 31, 24, 'tasks', 'To Do', 'Normal', 'Inventory management', '<p>Create inventory management system&nbsp;</p><p><br></p><p>Inword</p><p>Current stock</p><p>Outward</p><p>Reports</p>', 8, 1, 'Initial', '30.00', '2019-12-01', '2019-12-07', NULL, 'N', 0, NULL, NULL, '2019-11-30 06:27:47', '2019-11-30 18:29:00'),
(83, 31, 24, 'tasks', 'To Do', 'Normal', 'Create post on Google my business', '<p>Create 3 posts on Google my business</p><p><br></p><p>1) our own internal CMS</p><p>2) E-commerce experts</p><p>3) Inventory management system</p><p>4) Online booking system&nbsp;</p>', 8, 1, 'Initial', '20.00', '2020-01-01', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2019-11-30 06:30:00', '2019-11-30 06:31:13'),
(84, 31, 24, 'tasks', 'Done', 'Normal', 'Google review minimum 20', '<p>Create reviews from various Google accounts</p>', 8, 1, 'Initial', '20.00', '2020-01-01', '2020-01-24', NULL, 'N', 0, NULL, NULL, '2019-11-30 06:32:19', '2020-01-07 14:24:01'),
(85, 31, 24, 'tasks', 'In Progress', 'Normal', 'Rich Snippets for individual CMS pages', '<p>To create rich Snippets and apply to throughout sites</p>', 8, 1, 'Client Changes', '20.00', '2020-01-03', '2020-01-08', NULL, 'N', 0, NULL, NULL, '2019-11-30 06:33:50', '2020-01-07 14:23:54'),
(86, 31, 24, 'tasks', 'In Progress', 'Normal', 'Offline submission of directories ', '<p>To register on various forums</p>', 8, 1, 'Initial', '6.00', '2020-01-01', '2020-01-04', NULL, 'N', 0, NULL, NULL, '2019-11-30 06:35:18', '2019-11-30 18:37:01'),
(87, 31, 24, 'tasks', 'To Do', 'Normal', 'On page and blog management, check SEO things', '<p>Check SEO of each pages are fine ? It should be 300 characters title&nbsp;</p><p>160 - 162 word maximum description</p><p>Robots are fine and other things</p>', 8, 1, 'Initial', '20.00', '2019-12-01', '2019-11-26', NULL, 'N', 0, NULL, NULL, '2019-12-01 01:42:38', '2019-12-01 01:45:24'),
(88, 31, 24, 'tasks', 'Done', 'Normal', 'Add Google reviews of company', '<p>Need at least 20 reviews and ratings of our websites&nbsp;</p>', 8, 1, 'Initial', '10.00', '2019-12-01', '2019-12-08', NULL, 'N', 0, NULL, NULL, '2019-12-01 01:48:02', '2020-01-07 14:23:43'),
(89, 31, 24, 'tasks', 'Done', 'Normal', 'Current month page visitors on admin dashboard', '<p>Please do</p><p>1) Current month visitors&nbsp;</p><p>2) Last month visitors</p><p>3) Current year visitors</p><p>4) current year visitors by country</p><p>5) Current month visitors by city</p><p>6) Current month visitors by country</p><p>7) current year visitors by city</p>', 8, 1, 'Initial', '20.00', '2019-12-01', '2019-12-20', NULL, 'N', 0, NULL, NULL, '2019-12-01 01:50:02', '2019-12-02 14:26:44'),
(90, 31, 24, 'tasks', 'To Do', 'Trival', 'Add some Angular, React questions and answers from quora', '<p>Please add some questions and answers from various forums</p>', 8, 1, 'Initial', '12.00', '2019-12-01', '2019-12-11', NULL, 'N', 0, NULL, NULL, '2019-12-01 02:04:48', '2019-12-01 02:05:59'),
(91, 25, 24, 'tasks', 'Done', 'Trival', 'System Issue', 'Enter hours for system issue hardware or software', 8, 1, 'Initial', '8.50', '2019-12-01', '2019-12-01', NULL, 'N', 0, NULL, NULL, '2019-12-01 11:53:41', '2020-01-08 01:42:33'),
(92, 36, 15, 'tasks', 'Done', 'Trival', 'CMS Development', '<p>To work on this CMS</p>', 8, 1, 'Revision', '20.00', '2019-12-02', '2019-12-04', NULL, 'N', 0, NULL, NULL, '2019-12-02 01:30:20', '2020-01-07 14:23:27'),
(93, 31, 24, 'tasks', 'Done', 'Higher', 'To show last month total hours employee wise', '<p>Please start work as soon as possible</p>', 8, 1, 'Initial', '20.00', '2019-12-03', '2019-12-05', NULL, 'N', 0, NULL, NULL, '2019-12-03 12:46:45', '2019-12-06 18:19:05'),
(94, 31, 24, 'tasks', 'Done', 'Normal', 'User should allow to edit timecard date', '<p>Please enhancement</p>', 8, 1, 'Initial', '10.00', '2019-12-03', '2019-12-11', NULL, 'N', 0, NULL, NULL, '2019-12-03 07:02:58', '2019-12-06 18:19:05'),
(95, 31, 24, 'tasks', 'Done', 'Normal', 'Admin dashboard should show last two months OT and LT hours', '<p>Please do it as soon as possible</p>', 8, 1, 'Revision', '3.00', '2019-12-03', '2019-12-12', NULL, 'N', 0, NULL, NULL, '2019-12-03 07:03:50', '2019-12-06 18:19:05'),
(96, 31, 34, 'tasks', 'Done', 'Normal', 'After succeed message only Ajax should call instead full page loading', '<p>Please do it for better development</p>', 8, 1, 'Initial', '8.00', '2019-12-06', '2019-12-08', NULL, 'N', 0, NULL, NULL, '2019-12-06 06:19:14', '2019-12-14 14:02:47'),
(97, 31, 24, 'tasks', 'In Progress', 'Normal', 'Login with Facebook, Google and Twitter', '<p>To do as Soon as possible</p>', 8, 1, 'Client Changes', '10.00', '2019-12-05', '2019-12-13', NULL, 'N', 0, NULL, NULL, '2019-12-06 06:20:37', '2019-12-06 18:21:50'),
(98, 23, 15, 'tasks', 'Done', 'Normal', 'Testing System', '<p>DO it fast</p>', 2, 2, 'Initial', '22.00', '2019-12-17', '2019-12-25', NULL, 'N', 0, NULL, NULL, '2019-12-07 07:09:07', '2020-01-08 01:42:03'),
(99, 38, 15, 'tasks', 'Done', 'Normal', 'Start Development', '<p>Please start work on this</p>', 8, 1, 'Initial', '20.00', '2019-12-01', '2019-12-31', NULL, 'N', 0, NULL, NULL, '2019-12-11 07:56:14', '2020-01-08 01:41:48'),
(100, 31, 24, 'tasks', 'Done', 'Higher', 'Yesterday Punching Report to be add into daily email', '<p>To do as per requirement</p>', 8, 1, 'Initial', '30.00', '2019-12-12', '2019-12-20', NULL, 'N', 0, NULL, NULL, '2019-12-12 03:33:09', '2019-12-14 14:02:16'),
(101, 31, 24, 'tasks', 'Done', 'Blocker', 'On task details page, tasks comment should display at top of accordion', '<p>On task details page, tasks comment should display at top of accordion<br></p>', 8, 1, 'Requirement Completed', '20.00', '2019-12-12', '2019-12-19', NULL, 'N', 0, NULL, NULL, '2019-12-12 03:38:42', '2019-12-14 14:02:16'),
(102, 31, 24, 'tasks', 'Done', 'Trival', 'Blog detail page, share and create datetime facility', '<p>To work on this task</p>', 8, 1, 'Initial', '10.00', '2019-12-12', '2019-12-26', NULL, 'N', 0, NULL, NULL, '2019-12-12 03:40:17', '2020-01-07 14:23:04'),
(103, 31, 24, 'tasks', 'Done', 'Normal', 'Status of task should change from listing page', '<p>Status dropdown should place and employee should change from listing page only</p>', 8, 1, 'Revision', '12.00', '2019-12-12', '2019-12-25', NULL, 'N', 0, NULL, NULL, '2019-12-12 03:42:06', '2019-12-14 14:02:16'),
(104, 31, 24, 'tasks', 'Done', 'Blocker', 'To create multiple banners based on our services', '<p>To create banners for home page sliders.</p><p>1) Banners like what exactly services we are providing to client</p><p>2) Which technologies we are utilizing for our work</p><p>3) Which opensources and tools we are using.</p><p>And other things</p>', 8, 1, 'Revision', '10.00', '2019-12-13', '2019-12-19', NULL, 'N', 0, NULL, NULL, '2019-12-12 03:48:35', '2019-12-14 14:02:16'),
(105, 31, 24, 'tasks', 'In Progress', 'Blocker', 'Json respond consistent with specific parameters', '<p>Create specific parameters response among all services</p><p><br></p><p>Like below</p><p>1) success flag</p><p>2) failure flag</p><p>3) Message</p><p>4) status code</p><p>5) values</p>', 6, 1, 'Initial', '20.00', '2019-12-13', '2019-12-25', NULL, 'N', 0, NULL, NULL, '2019-12-12 06:18:50', '2019-12-14 08:19:04'),
(106, 31, 24, 'tasks', 'To Do', 'Trival', 'Task Comment Delete API Not working', '<p>Please start work on this</p>', 8, 1, 'Client Changes', '20.00', '2019-12-11', '2019-12-12', NULL, 'N', 0, NULL, NULL, '2019-12-17 03:08:17', '2019-12-17 03:08:58'),
(107, 39, 24, 'tasks', 'Done', 'Normal', 'Angular Learning', '<p>To work on this.</p>', 8, 1, 'Client Changes', '30.00', '2019-12-11', '2020-01-04', NULL, 'N', 0, NULL, NULL, '2019-12-18 02:33:08', '2020-01-08 01:41:20'),
(108, 40, 24, 'tasks', 'Done', 'Normal', 'To Learn React Framework', '<p>To learn React Framework</p>', 8, 1, 'Initial', '40.00', '2019-12-11', '2020-01-04', NULL, 'N', 0, NULL, NULL, '2019-12-18 02:33:47', '2020-01-08 01:41:11'),
(109, 42, 15, 'tasks', 'Done', 'Normal', 'Implementation of HRMS', '<p>To work on&nbsp; this task</p>', 8, 1, 'Initial', '100.00', '2020-01-01', '2020-01-23', NULL, 'N', 0, NULL, NULL, '2020-01-02 05:32:21', '2020-01-08 01:41:28'),
(110, 41, 24, 'tasks', 'Done', 'Normal', 'Ionic Learning', '<p>Please start work on this as soon as possible</p>', 8, 1, 'Initial', '30.00', '2020-01-01', '2020-01-30', NULL, 'N', 0, NULL, NULL, '2020-01-02 05:35:16', '2020-01-08 01:41:34'),
(111, 33, 24, 'tasks', 'To Do', 'Normal', 'View facebook, twitter, Linkedin link to google my business results', '<p>Please do as soon as possible</p>', 8, 1, 'Revision', '20.00', '2020-01-01', '2020-01-30', NULL, 'N', 0, NULL, NULL, '2020-01-03 02:31:38', '2020-01-03 02:32:32'),
(112, 33, 24, 'tasks', 'To Do', 'Normal', 'Reviews from the web on google my business', '<p>See reference of sankhala info solutions on google my business page</p>', 8, 1, 'Requirement Completed', '20.00', '2020-01-01', '2020-01-16', NULL, 'N', 0, NULL, NULL, '2020-01-03 02:32:57', '2020-01-03 02:33:42'),
(113, 33, 24, 'tasks', 'To Do', 'Normal', 'View updates on google my business page', '<p></p>', 8, 1, 'Initial', '20.00', '2020-01-03', '2020-01-23', 'task_113_1_1578019137_sis.png', 'N', 0, NULL, NULL, '2020-01-03 02:34:34', '2020-01-03 02:38:57'),
(114, 33, 24, 'tasks', 'To Do', 'Normal', 'It should show \"people also search for\" on right side', '<p>Please start as soon as possible</p>', 8, 1, 'Initial', '20.00', '2020-01-03', '2020-01-31', 'task_114_1_1578019480_peoplealsosearchfor.png', 'N', 0, NULL, NULL, '2020-01-03 02:43:45', '2020-01-03 02:44:40');
INSERT INTO `task` (`task_id`, `project_id`, `client_id`, `item_type`, `task_status`, `task_priority`, `task_name`, `task_description`, `assign_to`, `assign_by`, `milestone`, `estimate_hours`, `start_date`, `end_date`, `attachment`, `deleted_status`, `deleted_by`, `deleted_by_name`, `deleted_time`, `created_at`, `updated_at`) VALUES
(115, 33, 24, 'tasks', 'To Do', 'Normal', 'Create structure of links like document', '<p>Please create structure like attachment</p><p><img src=\"data:image/png;base64,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', 8, 1, 'Initial', '20.00', '2020-01-03', '2020-01-31', 'task_115_1_1578019997_structure.png', 'N', 0, NULL, NULL, '2020-01-03 02:52:14', '2020-01-03 02:53:17');
INSERT INTO `task` (`task_id`, `project_id`, `client_id`, `item_type`, `task_status`, `task_priority`, `task_name`, `task_description`, `assign_to`, `assign_by`, `milestone`, `estimate_hours`, `start_date`, `end_date`, `attachment`, `deleted_status`, `deleted_by`, `deleted_by_name`, `deleted_time`, `created_at`, `updated_at`) VALUES
(116, 33, 24, 'tasks', 'Done', 'Normal', 'Add 2 columns word count for title and meta description to database', '<p>Please add 2 columns on item table for finding length of meta title and meta description</p>', 8, 1, 'Initial', '20.00', '2020-01-03', '2020-01-31', NULL, 'N', 0, NULL, NULL, '2020-01-03 03:04:14', '2020-01-07 14:16:38'),
(117, 31, 24, 'tasks', 'Done', 'Normal', 'Make projects category wise (Ourwork Page)', '<p>Please do work as soon as possible.</p>', 8, 1, 'Initial', '30.00', '2020-01-01', '2020-01-31', NULL, 'N', 0, NULL, NULL, '2020-01-06 11:44:39', '2020-01-07 07:42:13'),
(118, 31, 24, 'tasks', 'Done', 'Normal', 'Create canonical tags for each pages', '<p>Do it as soon as possible</p>', 8, 1, 'Revision', '20.00', '2020-01-01', '2020-01-31', NULL, 'N', 0, NULL, NULL, '2020-01-06 06:11:15', '2020-01-07 12:34:48'),
(119, 31, 24, 'tasks', 'Done', 'Blocker', 'Update flag of weekend on database while adding timecard', '<p>While adding hours, it need to specify current date is public holiday ? or weekend or settlement day.?</p>', 8, 1, 'Requirement Completed', '20.00', '2020-01-01', '2020-01-31', NULL, 'N', 0, NULL, NULL, '2020-01-07 02:31:29', '2020-01-08 01:31:59'),
(120, 31, 24, 'tasks', 'Done', 'Normal', 'Make canonical dynamic of site ', '<p>Make canonical facility on Backend side.</p><p><br></p><p>Add a drop-down of canonical tag for creating dynamic canonical&nbsp;</p>', 8, 1, 'Initial', '12.00', '2020-01-08', '2020-01-31', NULL, 'N', 0, NULL, NULL, '2020-01-07 05:39:24', '2020-01-08 00:49:32'),
(121, 31, 24, 'tasks', 'Done', 'Normal', 'Create a module name media management', '<p>Fields</p><p>Media title</p><p>Media description</p><p>Media image</p><p>Status</p><p>Created at</p><p><br></p>', 8, 1, 'Initial', '20.00', '2020-01-02', '2020-01-30', NULL, 'N', 0, NULL, NULL, '2020-01-07 06:42:53', '2020-01-16 04:37:12'),
(122, 33, 24, 'tasks', 'In Progress', 'Normal', 'Digital Marketing Learning', '<p>Digital marketing learning hours</p>', 8, 1, 'Client Changes', '20.00', '2020-01-01', '2020-01-22', NULL, 'N', 0, NULL, NULL, '2020-01-08 01:37:31', '2020-01-08 01:40:36'),
(123, 51, 15, 'tasks', 'Done', 'Normal', 'NAU Tasks', '<p>To add hours into this project</p>', 8, 1, 'Client Changes', '20.00', '2020-01-01', '2020-01-31', NULL, 'N', 0, NULL, NULL, '2020-01-08 01:38:55', '2020-01-08 01:40:23'),
(124, 54, 24, 'tasks', 'To Do', 'Normal', 'Server issue fixes', '<p>Please update server hours to this tasks</p>', 8, 1, 'Initial', '20.00', '2020-01-20', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2020-01-20 10:13:44', '2020-01-20 22:14:41'),
(125, 56, 55, 'tasks', 'To Do', 'Blocker', 'Setup project', '<p>To work on this task</p>', 8, 1, 'Initial', '20.00', '2020-01-18', '2020-01-22', NULL, 'N', 0, NULL, NULL, '2020-01-20 10:14:45', '2020-01-20 22:15:34'),
(126, 56, 55, 'tasks', 'To Do', 'Normal', 'Design work on this project', '<p>To start design work on this project</p>', 8, 1, 'Initial', '20.00', '2020-01-20', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2020-01-20 10:15:39', '2020-01-20 22:16:26'),
(127, 56, 55, 'tasks', 'To Do', 'Blocker', 'Development', '<p>To start development on this project</p>', 8, 1, 'Initial', '20.00', '2020-01-20', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2020-01-20 10:16:29', '2020-01-20 22:17:26'),
(128, 56, 55, 'tasks', 'To Do', 'Normal', 'Support after development', '<p>Support after development</p>', 8, 1, 'Initial', '20.00', '2020-01-20', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2020-01-20 10:17:36', '2020-01-20 22:18:19'),
(129, 56, 55, 'tasks', 'To Do', 'Normal', 'Maintenance work after support', '<p>Maintenance work after development</p>', 8, 1, 'Initial', '20.00', '2020-01-18', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2020-01-20 10:18:22', '2020-01-20 22:19:16'),
(130, 31, 24, 'tasks', 'In Progress', 'Trival', 'Registration on description Sites', '<p>Please register cloudswift solutions on </p><p><a href=\"https://www.glassdoor.co.in/Overview/Working-at-Sankhala-Info-Solutions-EI_IE1011579.11,34.htm\">https://www.glassdoor.co.in/Overview/Working-at-Sankhala-Info-Solutions-EI_IE1011579.11,34.htm</a><a href=\"https://www.glassdoor.co.in/Overview/Working-at-Sankhala-Info-Solutions-EI_IE1011579.11,34.htm\"></a></p><p><a href=\"https://www.indiamart.com/sankhala-info-sol/aboutus.html\">https://www.indiamart.com/sankhala-info-sol/aboutus.html</a><a href=\"https://www.indiamart.com/sankhala-info-sol/aboutus.html\"></a></p><p><a href=\"https://www.justdial.com/Surat/Sankhala-Info-Solutions-Passport-Office-Building-Near-Apple-Hospital-Udhana-Darwaja/0261PX261-X261-110212151614-R9F9_BZDET?utm_source=adwords&utm_medium=codered&utm_campaign=dsa_company&gclid=EAIaIQobChMIqvmU1YaX5wIVGDUrCh0CkQMhEAAYASAAEgJE3PD_BwE\">https://www.justdial.com/Surat/Sankhala-Info-Solutions-Passport-Office-Building-Near-Apple-Hospital-Udhana-Darwaja/0261PX261-X261-110212151614-R9F9_BZDET?utm_source=adwords&utm_medium=codered&utm_campaign=dsa_company&gclid=EAIaIQobChMIqvmU1YaX5wIVGDUrCh0CkQMhEAAYASAAEgJE3PD_BwE</a><a href=\"https://www.justdial.com/Surat/Sankhala-Info-Solutions-Passport-Office-Building-Near-Apple-Hospital-Udhana-Darwaja/0261PX261-X261-110212151614-R9F9_BZDET?utm_source=adwords&utm_medium=codered&utm_campaign=dsa_company&gclid=EAIaIQobChMIqvmU1YaX5wIVGDUrCh0CkQMhEAAYASAAEgJE3PD_BwE\"></a></p><p><a href=\"https://www.yelp.com/biz/sankhala-info-solutions-miami\">https://www.yelp.com/biz/sankhala-info-solutions-miami</a><br><br></p><p><a href=\"https://www.sulekha.com/sankhala-info-solutions-udhna-darwaja-char-rasta-surat-contact-address\">https://www.sulekha.com/sankhala-info-solutions-udhna-darwaja-char-rasta-surat-contact-address</a> <br></p><p><a href=\"https://www.indeed.co.in/cmp/Sankhala-Info-Solutions/reviews\">https://www.indeed.co.in/cmp/Sankhala-Info-Solutions/reviews</a><a href=\"https://www.indeed.co.in/cmp/Sankhala-Info-Solutions/reviews\"></a></p><p><a href=\"https://www.upwork.com/o/companies/~0119b76565dc611232/\">https://www.upwork.com/o/companies/~0119b76565dc611232/</a><a href=\"https://www.upwork.com/o/companies/~0119b76565dc611232/\"></a></p><p><a href=\"https://www.quora.com/profile/Sankhala-Info-Solutions-1\" style=\"font-size: 0.813rem; font-weight: initial; background-color: rgb(255, 255, 255);\">https://www.quora.com/profile/Sankhala-Info-Solutions-1</a><br></p><p><a href=\"https://www.quora.com/profile/Sankhala-Info-Solutions-1\"></a></p><p><a href=\"https://www.justdial.com/Surat/Sankhala-Info-Solutions-Udhana-Darwaja/0261PX261-X261-110212151614-R9F9_BZDET/photos\">https://www.justdial.com/Surat/Sankhala-Info-Solutions-Udhana-Darwaja/0261PX261-X261-110212151614-R9F9_BZDET/photos</a><a href=\"https://www.justdial.com/Surat/Sankhala-Info-Solutions-Udhana-Darwaja/0261PX261-X261-110212151614-R9F9_BZDET/photos\"></a></p><p><a href=\"https://www.softwaresuggest.com/services/sankhala-info-solutions\">https://www.softwaresuggest.com/services/sankhala-info-solutions</a><a href=\"https://www.softwaresuggest.com/services/sankhala-info-solutions\"></a></p><p><a href=\"https://www.softwaresuggest.com/services/sankhala-info-solutions\">https://www.softwaresuggest.com/services/sankhala-info-solutions</a><a href=\"https://www.softwaresuggest.com/services/sankhala-info-solutions\"></a></p><p><a href=\"https://www.placementindia.com/job-detail/magento-developer-jobs-in-surat-for-sankhala-info-solutions-861821.htm\">https://www.placementindia.com/job-detail/magento-developer-jobs-in-surat-for-sankhala-info-solutions-861821.htm</a><a href=\"https://www.placementindia.com/job-detail/magento-developer-jobs-in-surat-for-sankhala-info-solutions-861821.htm\"></a></p><p><a href=\"https://contractiq.com/company/sankhala-info-solutions\">https://contractiq.com/company/sankhala-info-solutions</a><a href=\"https://contractiq.com/company/sankhala-info-solutions\" style=\"font-size: 0.813rem; font-weight: initial; background-color: rgb(255, 255, 255);\"></a></p><p><a href=\"https://www.goodfirms.co/company/sankhala-info-solutions\">https://www.goodfirms.co/company/sankhala-info-solutions</a><br></p><p><a href=\"https://www.hirist.com/j/sankhala-info-solutions-wordpress-developer-0-4-yrs-152481.html?ref=googlejob\">https://www.hirist.com/j/sankhala-info-solutions-wordpress-developer-0-4-yrs-152481.html?ref=googlejob</a><br></p><p><br></p><p>In short need registration on following site link : </p><p><a href=\"https://www.seoaimpoint.com/top-100-local-business-listing-sites-in-india.php\">https://www.seoaimpoint.com/top-100-local-business-listing-sites-in-india.php</a></p><p><br><br></p><p><br><br></p>', 8, 1, 'Initial', '20.00', '2020-01-21', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2020-01-22 10:54:00', '2020-02-03 18:22:04'),
(132, 56, 55, 'tasks', 'To Do', 'Blocker', 'Add one page name custom label', '<p>To create one page called custom labels</p><p><br></p><p>Fields</p><p>Your name</p><p>Email address</p><p>Contact number</p><p>Label to be print</p><p>Sample of label as attachment if having</p>', 8, 1, 'Initial', '10.00', '2020-02-01', '2020-02-09', NULL, 'N', 0, NULL, NULL, '2020-02-21 09:19:15', '2020-02-21 21:21:05'),
(131, 31, 24, 'tasks', 'Done', 'Normal', 'Add Breadcrumb', '<p>Add breadcrumb throughout site</p>', 8, 1, 'Initial', '20.00', '2020-01-16', '2020-02-08', NULL, 'N', 0, NULL, NULL, '2020-01-22 02:52:37', '2020-01-27 04:50:35'),
(133, 59, 55, 'tasks', 'To Do', 'Normal', 'To work on developing area', '<p>To begin work on this as soon as possible</p>', 8, 1, 'Initial', '50.00', '2020-02-01', '2020-02-28', NULL, 'N', 0, NULL, NULL, '2020-02-21 09:55:54', '2020-02-21 21:56:48'),
(134, 58, 55, 'tasks', 'To Do', 'Blocker', 'To work on development area', '<p>To start work on this project as soon as possible</p>', 8, 1, 'Initial', '50.00', '2020-02-01', '2020-02-29', NULL, 'N', 0, NULL, NULL, '2020-02-21 09:56:51', '2020-02-21 21:57:48'),
(135, 60, 55, 'tasks', 'To Do', 'Normal', 'To work on this project ', '<p>To work on this project</p>', 8, 1, 'Initial', '200.00', '2020-02-12', '2020-06-06', NULL, 'N', 0, NULL, NULL, '2020-02-21 09:58:37', '2020-02-21 21:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `task_activity`
--

CREATE TABLE `task_activity` (
  `task_activity_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `task_name` varchar(255) DEFAULT NULL,
  `task_action` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_activity`
--

INSERT INTO `task_activity` (`task_activity_id`, `task_id`, `task_name`, `task_action`, `created_by`, `created_by_name`, `created_at`, `updated_at`) VALUES
(1, 6, 'Learning', 'Insert', 1, 'Mayank Patel', '2019-11-14 15:16:47', '2019-11-14 15:16:47'),
(2, 7, 'Hardware Issue', 'Insert', 1, 'Mayank Patel', '2019-11-14 15:17:37', '2019-11-14 15:17:37'),
(3, 8, 'Discussion of common project', 'Insert', 1, 'Mayank Patel', '2019-11-14 15:18:41', '2019-11-14 15:18:41'),
(4, 9, 'Outside for personal work', 'Insert', 1, 'Mayank Patel', '2019-11-14 15:19:31', '2019-11-14 15:19:31'),
(5, 9, 'Outside for personal work', 'Update', 1, 'Mayank Patel', '2019-11-14 15:22:18', '2019-11-14 15:22:18'),
(6, 9, 'Outside for personal work', 'Update', 1, 'Mayank Patel', '2019-11-14 15:22:21', '2019-11-14 15:22:21'),
(7, 7, 'Hardware Issue', 'Update', 1, 'Mayank Patel', '2019-11-14 15:22:51', '2019-11-14 15:22:51'),
(8, 6, 'Learning', 'Update', 1, 'Mayank Patel', '2019-11-14 15:23:05', '2019-11-14 15:23:05'),
(9, 4, 'Research on JQuery', 'Update', 1, 'Mayank Patel', '2019-11-14 15:23:30', '2019-11-14 15:23:30'),
(10, 2, 'Quantity Issue on Issue page', 'Update', 1, 'Mayank Patel', '2019-11-14 15:23:45', '2019-11-14 15:23:45'),
(11, 1, 'To Research on Cronjob', 'Update', 1, 'Mayank Patel', '2019-11-14 15:24:00', '2019-11-14 15:24:00'),
(12, 10, 'Outside for personal work', 'Timecard Added', 6, 'Maulika Vasava', '2019-11-14 15:40:28', '2019-11-14 15:40:28'),
(13, 8, 'Discussion of common project', 'Update', 1, 'Mayank Patel', '2019-11-14 15:54:15', '2019-11-14 15:54:15'),
(14, 3, 'To create offline Documentation', 'Update', 1, 'Mayank Patel', '2019-11-14 15:54:36', '2019-11-14 15:54:36'),
(15, 1, 'Outside for personal work', 'Insert', 1, 'Admin Role', '2019-11-15 13:34:05', '2019-11-15 13:34:05'),
(16, 2, 'Outside for personal work', 'Insert', 1, 'Admin Role', '2019-11-15 13:34:16', '2019-11-15 13:34:16'),
(17, 0, 'Outside for personal work', 'TaskComment Deleted', 1, 'Admin Role', '2019-11-15 13:34:25', '2019-11-15 13:34:25'),
(18, 10, 'Do some minor changes', 'Insert', 9, 'Amanpreet Singh Handa', '2019-11-17 13:00:18', '2019-11-17 13:00:18'),
(19, 11, 'To work on checkout section', 'Insert', 9, 'Amanpreet Singh Handa', '2019-11-17 13:01:03', '2019-11-17 13:01:03'),
(20, 12, 'To create Social Networking Connection', 'Insert', 1, 'Admin Role', '2019-11-18 02:39:05', '2019-11-18 02:39:05'),
(21, 13, 'Development', 'Insert', 1, 'Admin Role', '2019-11-18 02:40:22', '2019-11-18 02:40:22'),
(22, 13, 'Cloudswift Portal Work', 'Update', 1, 'Admin Role', '2019-11-18 02:40:38', '2019-11-18 02:40:38'),
(23, 13, 'Cloudswift Portal Work', 'Timecard Added', 1, 'Admin Role', '2019-11-18 02:41:03', '2019-11-18 02:41:03'),
(24, 13, 'Cloudswift Portal Work', 'Delete', 1, 'Admin Role', '2019-11-18 02:41:38', '2019-11-18 02:41:38'),
(25, 14, 'NHSRCL Hostel Room Booking', 'Insert', 1, 'Admin Role', '2019-11-18 07:25:19', '2019-11-18 07:25:19'),
(26, 20, 'To create Social Networking Connection', 'Delete', 8, 'Mayank Patel', '2019-11-19 01:47:56', '2019-11-19 01:47:56'),
(27, 15, 'Share your card to social networking sites', 'Insert', 1, 'Admin Role', '2019-11-19 02:06:38', '2019-11-19 02:06:38'),
(28, 16, 'Research or study digital marketing', 'Insert', 1, 'Admin Role', '2019-11-19 02:07:19', '2019-11-19 02:07:19'),
(29, 17, 'Full day leave', 'Insert', 1, 'Admin Role', '2019-11-19 02:08:34', '2019-11-19 02:08:34'),
(30, 18, 'Half Day Leave', 'Insert', 1, 'Admin Role', '2019-11-19 02:09:14', '2019-11-19 02:09:14'),
(31, 19, 'Partial Hours Leave', 'Insert', 1, 'Admin Role', '2019-11-19 02:09:59', '2019-11-19 02:09:59'),
(32, 20, 'Portal Work', 'Insert', 1, 'Admin Role', '2019-11-19 02:10:47', '2019-11-19 02:10:47'),
(33, 21, 'Data Entries on Portal', 'Insert', 1, 'Admin Role', '2019-11-19 02:11:33', '2019-11-19 02:11:33'),
(34, 22, 'Unit Testing on portal', 'Insert', 1, 'Admin Role', '2019-11-19 02:12:20', '2019-11-19 02:12:20'),
(35, 23, 'Worked on fixing email issue on domainracer.com website', 'Insert', 1, 'Admin Role', '2019-11-19 02:13:02', '2019-11-19 02:13:02'),
(36, 24, 'Discussion with Client', 'Insert', 1, 'Admin Role', '2019-11-19 02:13:45', '2019-11-19 02:13:45'),
(37, 25, 'Client office visit', 'Insert', 1, 'Admin Role', '2019-11-19 02:14:35', '2019-11-19 02:14:35'),
(38, 26, 'Worked on development of website', 'Insert', 1, 'Admin Role', '2019-11-19 02:15:21', '2019-11-19 02:15:21'),
(39, 27, 'Learning/Study of laravel framework', 'Insert', 1, 'Admin Role', '2019-11-19 02:16:08', '2019-11-19 02:16:08'),
(40, 28, 'Worked on Contact email issue', 'Insert', 1, 'Admin Role', '2019-11-19 02:17:19', '2019-11-19 02:17:19'),
(41, 29, 'Worked on fixing server issue', 'Insert', 1, 'Admin Role', '2019-11-19 02:18:17', '2019-11-19 02:18:17'),
(42, 30, 'Worked on create backend server', 'Insert', 1, 'Admin Role', '2019-11-19 02:18:53', '2019-11-19 02:18:53'),
(43, 31, 'Worked on development of front-end', 'Insert', 1, 'Admin Role', '2019-11-19 02:19:28', '2019-11-19 02:19:28'),
(44, 32, 'Integration of paytm payment gateway.', 'Insert', 1, 'Admin Role', '2019-11-19 02:20:10', '2019-11-19 02:20:10'),
(45, 33, 'Client communication', 'Insert', 1, 'Admin Role', '2019-11-19 02:20:45', '2019-11-19 02:20:45'),
(46, 34, 'Client Meetings', 'Insert', 1, 'Admin Role', '2019-11-19 02:21:23', '2019-11-19 02:21:23'),
(47, 35, 'Development', 'Insert', 1, 'Admin Role', '2019-11-19 02:22:01', '2019-11-19 02:22:01'),
(48, 36, 'Unit Testing', 'Insert', 1, 'Admin Role', '2019-11-19 02:22:37', '2019-11-19 02:22:37'),
(49, 37, 'Mobile Application Development', 'Insert', 1, 'Admin Role', '2019-11-19 02:23:18', '2019-11-19 02:23:18'),
(50, 38, 'Discussion with Amit Solanki', 'Insert', 1, 'Admin Role', '2019-11-19 02:24:13', '2019-11-19 02:24:13'),
(51, 39, 'Worked on front-end side', 'Insert', 1, 'Admin Role', '2019-11-19 02:24:52', '2019-11-19 02:24:52'),
(52, 40, 'Worked on Backend side customization', 'Insert', 1, 'Admin Role', '2019-11-19 02:25:40', '2019-11-19 02:25:40'),
(53, 41, 'Meeting with client', 'Insert', 1, 'Admin Role', '2019-11-19 02:26:33', '2019-11-19 02:26:33'),
(54, 42, 'Discussion with Client', 'Insert', 1, 'Admin Role', '2019-11-19 02:27:15', '2019-11-19 02:27:15'),
(55, 43, 'Paytm Integration', 'Insert', 1, 'Admin Role', '2019-11-19 02:27:54', '2019-11-19 02:27:54'),
(56, 44, 'Front-end Development', 'Insert', 1, 'Admin Role', '2019-11-19 02:28:36', '2019-11-19 02:28:36'),
(57, 45, 'Backend Development', 'Insert', 1, 'Admin Role', '2019-11-19 02:29:34', '2019-11-19 02:29:34'),
(58, 46, 'Allow forgot password email to customer', 'Insert', 1, 'Admin Role', '2019-11-19 02:47:05', '2019-11-19 02:47:05'),
(59, 47, 'Dashboard shows deleted timecard entries', 'Insert', 8, 'Mayank Patel', '2019-11-19 02:51:45', '2019-11-19 02:51:45'),
(60, 48, 'Create web services for all modules', 'Insert', 1, 'Admin Role', '2019-11-19 03:18:29', '2019-11-19 03:18:29'),
(61, 13, 'Cloudswift Portal Work', 'Update', 1, 'Admin Role', '2019-11-19 03:18:59', '2019-11-19 03:18:59'),
(62, 49, 'Bug of max post size', 'Insert', 8, 'Mayank Patel', '2019-11-19 05:47:39', '2019-11-19 05:47:39'),
(63, 49, 'Bug of max post size', 'Update', 8, 'Mayank Patel', '2019-11-19 05:48:53', '2019-11-19 05:48:53'),
(64, 49, 'Bug of max post size', 'Update', 8, 'Mayank Patel', '2019-11-19 06:11:36', '2019-11-19 06:11:36'),
(65, 49, 'Bug of max post size', 'Update', 8, 'Mayank Patel', '2019-11-19 06:11:52', '2019-11-19 06:11:52'),
(66, 47, 'Dashboard shows deleted timecard entries', 'Update - Done', 8, 'Mayank Patel', '2019-11-19 07:56:00', '2019-11-19 07:56:00'),
(67, 46, 'Allow forgot password email to customer', 'Update', 8, 'Mayank Patel', '2019-11-19 08:39:30', '2019-11-19 08:39:30'),
(68, 50, 'Learning of docker', 'Insert', 8, 'Mayank Patel', '2019-11-19 13:41:26', '2019-11-19 13:41:26'),
(69, 23, 'Learning of docker', 'Timecard Added', 8, 'Mayank Patel', '2019-11-19 13:42:11', '2019-11-19 13:42:11'),
(70, 3, 'Learning of docker', 'Insert', 8, 'Mayank Patel', '2019-11-19 13:42:22', '2019-11-19 13:42:22'),
(71, 4, 'Learning of docker', 'Insert', 8, 'Mayank Patel', '2019-11-19 13:43:11', '2019-11-19 13:43:11'),
(72, 23, 'Learning of docker', 'Timecard Deleted', 8, 'Mayank Patel', '2019-11-19 13:43:30', '2019-11-19 13:43:30'),
(73, 24, 'Learning of docker', 'Timecard Added', 8, 'Mayank Patel', '2019-11-19 13:43:52', '2019-11-19 13:43:52'),
(74, 5, 'Learning of docker', 'Insert', 8, 'Mayank Patel', '2019-11-19 13:44:06', '2019-11-19 13:44:06'),
(75, 25, 'Learning of docker', 'Timecard Added', 8, 'Mayank Patel', '2019-11-19 13:44:37', '2019-11-19 13:44:37'),
(76, 51, 'Task comments not working on individual project timecard', 'Insert', 8, 'Mayank Patel', '2019-11-19 13:45:44', '2019-11-19 13:45:44'),
(77, 51, 'Task comments not working on individual project timecard', 'Update', 8, 'Mayank Patel', '2019-11-19 13:45:58', '2019-11-19 13:45:58'),
(78, 19, 'Partial Hours Leave', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:00:23', '2019-11-19 14:00:23'),
(79, 18, 'Half Day Leave', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:00:23', '2019-11-19 14:00:23'),
(80, 17, 'Full day leave', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:00:23', '2019-11-19 14:00:23'),
(81, 25, 'Client office visit', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:00:38', '2019-11-19 14:00:38'),
(82, 24, 'Discussion with Client', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:00:38', '2019-11-19 14:00:38'),
(83, 23, 'Worked on fixing email issue on domainracer.com website', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:00:38', '2019-11-19 14:00:38'),
(84, 28, 'Worked on Contact email issue', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:00:58', '2019-11-19 14:00:58'),
(85, 27, 'Learning/Study of laravel framework', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:00:58', '2019-11-19 14:00:58'),
(86, 26, 'Worked on development of website', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:00:58', '2019-11-19 14:00:58'),
(87, 9, 'Outside for personal work', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:01:27', '2019-11-19 14:01:27'),
(88, 8, 'Discussion of common project', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:01:27', '2019-11-19 14:01:27'),
(89, 7, 'Hardware Issue', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:01:27', '2019-11-19 14:01:27'),
(90, 6, 'Learning', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:01:27', '2019-11-19 14:01:27'),
(91, 5, 'Study Laravel Framework', 'Update - Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:01:27', '2019-11-19 14:01:27'),
(92, 4, 'Research on JQuery', 'Update - Update - Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:01:27', '2019-11-19 14:01:27'),
(93, 1, 'To Research on Cronjob', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:01:49', '2019-11-19 14:01:49'),
(94, 14, 'NHSRCL Hostel Room Booking', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:02:04', '2019-11-19 14:02:04'),
(95, 33, 'Client communication', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:02:19', '2019-11-19 14:02:19'),
(96, 32, 'Integration of paytm payment gateway.', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:02:19', '2019-11-19 14:02:19'),
(97, 31, 'Worked on development of front-end', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:02:19', '2019-11-19 14:02:19'),
(98, 30, 'Worked on create backend server', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:02:19', '2019-11-19 14:02:19'),
(99, 37, 'Mobile Application Development', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:03:00', '2019-11-19 14:03:00'),
(100, 36, 'Unit Testing', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:03:00', '2019-11-19 14:03:00'),
(101, 35, 'Development', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:03:00', '2019-11-19 14:03:00'),
(102, 34, 'Client Meetings', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:03:00', '2019-11-19 14:03:00'),
(103, 40, 'Worked on Backend side customization', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:03:20', '2019-11-19 14:03:20'),
(104, 39, 'Worked on front-end side', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:03:20', '2019-11-19 14:03:20'),
(105, 45, 'Backend Development', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:03:44', '2019-11-19 14:03:44'),
(106, 44, 'Front-end Development', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:03:44', '2019-11-19 14:03:44'),
(107, 11, 'To work on checkout section', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:03:44', '2019-11-19 14:03:44'),
(108, 10, 'Do some minor changes', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:03:44', '2019-11-19 14:03:44'),
(109, 19, 'Partial Hours Leave', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:07:31', '2019-11-19 14:07:31'),
(110, 18, 'Half Day Leave', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:07:31', '2019-11-19 14:07:31'),
(111, 17, 'Full day leave', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:07:31', '2019-11-19 14:07:31'),
(112, 25, 'Client office visit', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:07:45', '2019-11-19 14:07:45'),
(113, 24, 'Discussion with Client', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:07:45', '2019-11-19 14:07:45'),
(114, 23, 'Worked on fixing email issue on domainracer.com website', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:07:45', '2019-11-19 14:07:45'),
(115, 28, 'Worked on Contact email issue', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:07:56', '2019-11-19 14:07:56'),
(116, 27, 'Learning/Study of laravel framework', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:07:56', '2019-11-19 14:07:56'),
(117, 26, 'Worked on development of website', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:07:56', '2019-11-19 14:07:56'),
(118, 9, 'Outside for personal work', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:08:06', '2019-11-19 14:08:06'),
(119, 8, 'Discussion of common project', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:06', '2019-11-19 14:08:06'),
(120, 7, 'Hardware Issue', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:06', '2019-11-19 14:08:06'),
(121, 6, 'Learning', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:06', '2019-11-19 14:08:06'),
(122, 5, 'Study Laravel Framework', 'Update - Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:06', '2019-11-19 14:08:06'),
(123, 4, 'Research on JQuery', 'Update - Update - Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:06', '2019-11-19 14:08:06'),
(124, 33, 'Client communication', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:08:30', '2019-11-19 14:08:30'),
(125, 32, 'Integration of paytm payment gateway.', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:30', '2019-11-19 14:08:30'),
(126, 31, 'Worked on development of front-end', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:30', '2019-11-19 14:08:30'),
(127, 30, 'Worked on create backend server', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:30', '2019-11-19 14:08:30'),
(128, 37, 'Mobile Application Development', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:08:44', '2019-11-19 14:08:44'),
(129, 36, 'Unit Testing', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:44', '2019-11-19 14:08:44'),
(130, 35, 'Development', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:44', '2019-11-19 14:08:44'),
(131, 34, 'Client Meetings', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:44', '2019-11-19 14:08:44'),
(132, 41, 'Meeting with client', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:08:56', '2019-11-19 14:08:56'),
(133, 40, 'Worked on Backend side customization', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:56', '2019-11-19 14:08:56'),
(134, 39, 'Worked on front-end side', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:56', '2019-11-19 14:08:56'),
(135, 38, 'Discussion with Amit Solanki', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:08:56', '2019-11-19 14:08:56'),
(136, 41, 'Meeting with client', 'Update - In Progress', 1, 'Admin Role', '2019-11-19 14:09:10', '2019-11-19 14:09:10'),
(137, 38, 'Discussion with Amit Solanki', 'Update - Update - In Progress', 1, 'Admin Role', '2019-11-19 14:09:10', '2019-11-19 14:09:10'),
(138, 45, 'Backend Development', 'Update - Done', 1, 'Admin Role', '2019-11-19 14:09:29', '2019-11-19 14:09:29'),
(139, 44, 'Front-end Development', 'Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:09:29', '2019-11-19 14:09:29'),
(140, 43, 'Paytm Integration', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:09:29', '2019-11-19 14:09:29'),
(141, 10, 'Do some minor changes', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-19 14:09:29', '2019-11-19 14:09:29'),
(142, 52, 'Create dashboard notification those applied leave', 'Insert', 1, 'Admin Role', '2019-11-19 14:17:52', '2019-11-19 14:17:52'),
(143, 53, 'Allow edit timecard functionality', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:15:12', '2019-11-19 22:15:12'),
(144, 54, 'In employee dashboard, done tasks showing', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:18:06', '2019-11-19 22:18:06'),
(145, 55, 'On task management there should be filter of status drop-down', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:20:11', '2019-11-19 22:20:11'),
(146, 56, 'Only one insert and update query', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:22:07', '2019-11-19 22:22:07'),
(147, 57, 'Error on query logs', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:24:05', '2019-11-19 22:24:05'),
(148, 58, 'Cloudswift logo with various dimensions to be create', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:40:33', '2019-11-19 22:40:33'),
(149, 59, 'HTML template creation', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:42:26', '2019-11-19 22:42:26'),
(150, 60, 'Place some HTML template on live server ', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:49:20', '2019-11-19 22:49:20'),
(151, 61, 'Create Google sheet for payment details', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:50:40', '2019-11-19 22:50:40'),
(152, 62, 'Header on mobile is not looking good on mobile devices', 'Insert', 8, 'Mayank Patel', '2019-11-19 22:52:28', '2019-11-19 22:52:28'),
(153, 63, 'Email template improve', 'Insert', 8, 'Mayank Patel', '2019-11-19 23:14:54', '2019-11-19 23:14:54'),
(154, 64, 'Create drop-down of total number of records on task page', 'Insert', 8, 'Mayank Patel', '2019-11-19 23:16:30', '2019-11-19 23:16:30'),
(155, 65, 'Convert pagination links to drop-down', 'Insert', 8, 'Mayank Patel', '2019-11-19 23:18:16', '2019-11-19 23:18:16'),
(156, 66, 'Create list of 1lac entries on activity table and export', 'Insert', 8, 'Mayank Patel', '2019-11-19 23:30:32', '2019-11-19 23:30:32'),
(157, 67, 'Some portal pages allow to access before login ', 'Insert', 8, 'Mayank Patel', '2019-11-19 23:31:39', '2019-11-19 23:31:39'),
(158, 68, 'Client unable to view their project tasks', 'Insert', 8, 'Mayank Patel', '2019-11-19 23:36:20', '2019-11-19 23:36:20'),
(159, 66, 'Create list of 1lac entries on activity table and export', 'Update', 8, 'Mayank Patel', '2019-11-19 23:53:48', '2019-11-19 23:53:48'),
(160, 64, 'Create drop-down of total number of records on task page', 'Update', 8, 'Mayank Patel', '2019-11-19 23:54:08', '2019-11-19 23:54:08'),
(161, 67, 'Some portal pages allow to access before login ', 'Update - Done', 8, 'Mayank Patel', '2019-11-20 00:06:48', '2019-11-20 00:06:48'),
(162, 63, 'Email template improve', 'Update - Done', 1, 'Admin Role', '2019-11-20 01:08:43', '2019-11-20 01:08:43'),
(163, 54, 'In employee dashboard, done tasks showing', 'Update - Done', 1, 'Admin Role', '2019-11-20 01:17:06', '2019-11-20 01:17:06'),
(164, 53, 'Allow edit timecard functionality', 'Update - Done', 1, 'Admin Role', '2019-11-20 02:02:15', '2019-11-20 02:02:15'),
(165, 50, 'Learning of docker', 'Update', 1, 'Admin Role', '2019-11-20 02:03:16', '2019-11-20 02:03:16'),
(166, 49, 'Bug of max post size', 'Update - Done', 1, 'Admin Role', '2019-11-20 02:23:35', '2019-11-20 02:23:35'),
(167, 22, 'Unit Testing on portal', 'Update - Update - Done', 1, 'Admin Role', '2019-11-20 02:23:35', '2019-11-20 02:23:35'),
(168, 21, 'Data Entries on Portal', 'Update - Update - Update - Done', 1, 'Admin Role', '2019-11-20 02:23:35', '2019-11-20 02:23:35'),
(169, 20, 'Portal Work', 'Update - Update - Update - Update - Done', 1, 'Admin Role', '2019-11-20 02:23:35', '2019-11-20 02:23:35'),
(170, 51, 'Task comments not working on individual project timecard', 'Update - Done', 1, 'Admin Role', '2019-11-20 02:46:10', '2019-11-20 02:46:10'),
(171, 55, 'On task management there should be filter of status drop-down', 'Update - Done', 1, 'Admin Role', '2019-11-20 03:01:01', '2019-11-20 03:01:01'),
(172, 64, 'Create drop-down of total number of records on task page', 'Update - Done', 1, 'Admin Role', '2019-11-20 03:01:46', '2019-11-20 03:01:46'),
(173, 65, 'Convert pagination links to drop-down', 'Update - Done', 8, 'Mayank Patel', '2019-11-20 07:39:01', '2019-11-20 07:39:01'),
(174, 68, 'Client unable to view their project tasks', 'Update - Done', 8, 'Mayank Patel', '2019-11-20 09:05:11', '2019-11-20 09:05:11'),
(175, 69, 'Good will theme ', 'Insert', 8, 'Mayank Patel', '2019-11-20 11:08:21', '2019-11-20 11:08:21'),
(176, 69, 'Good will theme ', 'Update - Done', 8, 'Mayank Patel', '2019-11-20 12:07:56', '2019-11-20 12:07:56'),
(177, 48, 'Create web services for all modules', 'Update - Done', 8, 'Mayank Patel', '2019-11-20 12:08:22', '2019-11-20 12:08:22'),
(178, 70, 'Create API for Projects, Clients and Users', 'Insert', 8, 'Mayank Patel', '2019-11-21 03:08:16', '2019-11-21 03:08:16'),
(179, 71, 'Create API for Projects, Clients and Users', 'Insert', 8, 'Mayank Patel', '2019-11-21 03:08:46', '2019-11-21 03:08:46'),
(180, 71, 'Create API for Projects, Clients and Users', 'Delete - T', 8, 'Mayank Patel', '2019-11-21 03:09:06', '2019-11-21 03:09:06'),
(181, 72, 'Monthly Credentials email', 'Insert', 8, 'Mayank Patel', '2019-11-22 09:10:53', '2019-11-22 09:10:53'),
(182, 73, 'To create email send newsletter on local machine', 'Insert', 8, 'Mayank Patel', '2019-11-23 09:19:31', '2019-11-23 09:19:31'),
(183, 66, 'Create list of 1lac entries on activity table and export', 'Update - Done', 8, 'Mayank Patel', '2019-11-23 09:20:01', '2019-11-23 09:20:01'),
(184, 56, 'Only one insert and update query', 'Update - Cancelled', 8, 'Mayank Patel', '2019-11-23 09:20:34', '2019-11-23 09:20:34'),
(185, 58, 'Cloudswift logo with various dimensions to be create', 'Update - Done', 8, 'Mayank Patel', '2019-11-23 09:21:25', '2019-11-23 09:21:25'),
(186, 74, 'Create 3 trial login functionality on admin', 'Insert', 0, '', '2019-11-23 09:27:53', '2019-11-23 09:27:53'),
(187, 75, 'Apply this milestones', 'Insert', 8, 'Mayank Patel', '2019-11-23 09:30:12', '2019-11-23 09:30:12'),
(188, 61, 'Create Google sheet for payment details', 'Update - Done', 1, 'Super Administrator', '2019-11-25 04:54:47', '2019-11-25 04:54:47'),
(189, 56, 'Only one insert and update query', 'Delete - T', 1, 'Super Administrator', '2019-11-25 04:55:11', '2019-11-25 04:55:11'),
(190, 42, 'Discussion with Client', 'Update - Done', 1, 'Super Administrator', '2019-11-25 04:57:25', '2019-11-25 04:57:25'),
(191, 38, 'Discussion with Amit Solanki', 'Update - Update - Done', 1, 'Super Administrator', '2019-11-25 04:57:25', '2019-11-25 04:57:25'),
(192, 29, 'Worked on fixing server issue', 'Update - Update - Update - Done', 1, 'Super Administrator', '2019-11-25 04:57:25', '2019-11-25 04:57:25'),
(193, 3, 'To create offline Documentation', 'Update - Update - Update - Update - Done', 1, 'Super Administrator', '2019-11-25 04:57:25', '2019-11-25 04:57:25'),
(194, 2, 'Quantity Issue on Issue page', 'Update - Update - Update - Update - Update - Done', 1, 'Super Administrator', '2019-11-25 04:57:25', '2019-11-25 04:57:25'),
(195, 11, 'To work on checkout section', 'Update - Bug', 1, 'Super Administrator', '2019-11-25 04:57:49', '2019-11-25 04:57:49'),
(196, 76, 'Admin should allow to access from Surat and Vadodara only', 'Insert', 8, 'Mayank Patel', '2019-11-25 05:53:56', '2019-11-25 05:53:56'),
(197, 75, 'Apply this milestones', 'Update - Done', 8, 'Mayank Patel', '2019-11-25 12:21:08', '2019-11-25 12:21:08'),
(198, 70, 'Create API for Projects, Clients and Users', 'Update - Done', 8, 'Mayank Patel', '2019-11-25 12:26:34', '2019-11-25 12:26:34'),
(199, 52, 'Create dashboard notification those applied leave', 'Delete - T', 8, 'Mayank Patel', '2019-11-25 12:27:52', '2019-11-25 12:27:52'),
(200, 74, 'Create 3 trial login functionality on admin', 'Update - Done', 8, 'Mayank Patel', '2019-11-26 02:19:27', '2019-11-26 02:19:27'),
(201, 60, 'Place some HTML template on live server ', 'Update - Done', 8, 'Mayank Patel', '2019-11-26 02:20:12', '2019-11-26 02:20:12'),
(202, 72, 'Monthly Credentials email', 'Update - Done', 8, 'Mayank Patel', '2019-11-26 03:02:15', '2019-11-26 03:02:15'),
(203, 11, 'To work on checkout section', 'Update - Done', 8, 'Mayank Patel', '2019-11-26 03:04:09', '2019-11-26 03:04:09'),
(204, 77, 'Daily database backup email should get receive from backup server', 'Insert', 8, 'Mayank Patel', '2019-11-27 01:23:20', '2019-11-27 01:23:20'),
(205, 78, 'Sent newsletter email should get store on database', 'Insert', 8, 'Mayank Patel', '2019-11-27 01:24:42', '2019-11-27 01:24:42'),
(206, 79, 'Subscriber import keep email validation ', 'Insert', 0, '', '2019-11-27 01:50:12', '2019-11-27 01:50:12'),
(207, 79, 'Subscriber import keep email validation ', 'Update - Done', 8, 'Mayank Patel', '2019-11-28 04:20:45', '2019-11-28 04:20:45'),
(208, 78, 'Sent newsletter email should get store on database', 'Update - Done', 8, 'Mayank Patel', '2019-11-28 05:01:49', '2019-11-28 05:01:49'),
(209, 73, 'To create email send newsletter on local machine', 'Delete - T', 8, 'Mayank Patel', '2019-11-28 05:02:36', '2019-11-28 05:02:36'),
(210, 62, 'Header on mobile is not looking good on mobile devices', 'Update - Done', 8, 'Mayank Patel', '2019-11-29 06:40:13', '2019-11-29 06:40:13'),
(211, 80, 'Update cloudswift logo and cover on Google my business', 'Insert', 8, 'Mayank Patel', '2019-11-29 16:28:19', '2019-11-29 16:28:19'),
(212, 81, 'Create functionality login with Google and Facebook', 'Insert', 8, 'Mayank Patel', '2019-11-30 18:27:06', '2019-11-30 18:27:06'),
(213, 82, 'Inventory management', 'Insert', 8, 'Mayank Patel', '2019-11-30 18:29:00', '2019-11-30 18:29:00'),
(214, 83, 'Create post on Google my business', 'Insert', 8, 'Mayank Patel', '2019-11-30 18:31:09', '2019-11-30 18:31:09'),
(215, 83, 'Create post on Google my business', 'Update', 8, 'Mayank Patel', '2019-11-30 18:32:08', '2019-11-30 18:32:08'),
(216, 84, 'Google review minimum 20', 'Insert', 8, 'Mayank Patel', '2019-11-30 18:33:38', '2019-11-30 18:33:38'),
(217, 85, 'Rich Snippets for individual CMS pages', 'Insert', 8, 'Mayank Patel', '2019-11-30 18:35:12', '2019-11-30 18:35:12'),
(218, 86, 'Offline submission of directories ', 'Insert', 8, 'Mayank Patel', '2019-11-30 18:37:01', '2019-11-30 18:37:01'),
(219, 87, 'On page and blog management, check SEO things', 'Insert', 8, 'Mayank Patel', '2019-12-01 01:45:24', '2019-12-01 01:45:24'),
(220, 88, 'Add Google reviews of company', 'Insert', 8, 'Mayank Patel', '2019-12-01 01:49:08', '2019-12-01 01:49:08'),
(221, 89, 'Current month page visitors on admin dashboard', 'Insert', 8, 'Mayank Patel', '2019-12-01 01:53:13', '2019-12-01 01:53:13'),
(222, 90, 'Add some Angular, React questions and answers from quora', 'Insert', 8, 'Mayank Patel', '2019-12-01 02:05:59', '2019-12-01 02:05:59'),
(223, 91, 'System Issue', 'Insert', 8, 'Mayank Patel', '2019-12-01 23:55:12', '2019-12-01 23:55:12'),
(224, 92, 'CMS Development', 'Insert', 8, 'Mayank Patel', '2019-12-02 13:31:08', '2019-12-02 13:31:08'),
(225, 89, 'Current month page visitors on admin dashboard', 'Update - Done', 8, 'Mayank Patel', '2019-12-02 14:26:44', '2019-12-02 14:26:44'),
(226, 80, 'Update cloudswift logo and cover on Google my business', 'Update - Done', 8, 'Mayank Patel', '2019-12-02 14:42:57', '2019-12-02 14:42:57'),
(227, 77, 'Daily database backup email should get receive from backup server', 'Update - Cancelled', 8, 'Mayank Patel', '2019-12-02 14:43:15', '2019-12-02 14:43:15'),
(228, 77, 'Daily database backup email should get receive from backup server', 'Update - Done', 8, 'Mayank Patel', '2019-12-02 14:43:28', '2019-12-02 14:43:28'),
(229, 93, 'To show last month total hours employee wise', 'Insert', 8, 'Mayank Patel', '2019-12-03 12:47:41', '2019-12-03 12:47:41'),
(230, 94, 'User should allow to edit timecard date', 'Insert', 8, 'Mayank Patel', '2019-12-03 19:03:47', '2019-12-03 19:03:47'),
(231, 95, 'Admin dashboard should show last two months OT and LT hours', 'Insert', 8, 'Mayank Patel', '2019-12-03 19:05:11', '2019-12-03 19:05:11'),
(232, 95, 'Admin dashboard should show last two months OT and LT hours', 'Update - Done', 8, 'Mayank Patel', '2019-12-06 18:19:05', '2019-12-06 18:19:05'),
(233, 94, 'User should allow to edit timecard date', 'Update - Update - Done', 8, 'Mayank Patel', '2019-12-06 18:19:05', '2019-12-06 18:19:05'),
(234, 93, 'To show last month total hours employee wise', 'Update - Update - Update - Done', 8, 'Mayank Patel', '2019-12-06 18:19:05', '2019-12-06 18:19:05'),
(235, 96, 'After succeed message only Ajax should call instead full page loading', 'Insert', 8, 'Mayank Patel', '2019-12-06 18:20:34', '2019-12-06 18:20:34'),
(236, 97, 'Login with Facebook, Google and Twitter', 'Insert', 8, 'Mayank Patel', '2019-12-06 18:21:50', '2019-12-06 18:21:50'),
(237, 98, 'Testing System', 'Insert', 1, 'Super Administrator', '2019-12-07 07:09:56', '2019-12-07 07:09:56'),
(238, 99, 'Start Development', 'Insert', 1, 'Super Administrator', '2019-12-11 07:56:50', '2019-12-11 07:56:50'),
(239, 100, 'Yesterday Punching Report', 'Insert', 1, 'Super Administrator', '2019-12-12 15:34:03', '2019-12-12 15:34:03'),
(240, 100, 'Yesterday Punching Report', 'Assign To - 6', 1, 'Super Administrator', '2019-12-12 15:34:14', '2019-12-12 15:34:14'),
(241, 100, 'Yesterday Punching Report', 'Assign To - 8', 1, 'Super Administrator', '2019-12-12 15:34:26', '2019-12-12 15:34:26'),
(242, 100, 'Yesterday Punching Report to be add into daily email', 'Update', 1, 'Super Administrator', '2019-12-12 15:37:38', '2019-12-12 15:37:38'),
(243, 6, 'Yesterday Punching Report to be add into daily email', 'Insert', 1, 'Super Administrator', '2019-12-12 15:38:10', '2019-12-12 15:38:10'),
(244, 101, 'On task details page, tasks comment should display at top of accordion', 'Insert', 1, 'Super Administrator', '2019-12-12 15:39:28', '2019-12-12 15:39:28'),
(245, 102, 'Blog detail page, share and create datetime facility', 'Insert', 1, 'Super Administrator', '2019-12-12 15:41:00', '2019-12-12 15:41:00'),
(246, 102, 'Blog detail page, share and create datetime facility', 'Assign To - 6', 1, 'Super Administrator', '2019-12-12 15:41:07', '2019-12-12 15:41:07'),
(247, 102, 'Blog detail page, share and create datetime facility', 'Assign To - 8', 1, 'Super Administrator', '2019-12-12 15:41:16', '2019-12-12 15:41:16'),
(248, 103, 'Status of task should change from listing page', 'Insert', 1, 'Super Administrator', '2019-12-12 15:43:08', '2019-12-12 15:43:08'),
(249, 104, 'To create multiple banners based on our services', 'Insert', 1, 'Super Administrator', '2019-12-12 15:49:56', '2019-12-12 15:49:56'),
(250, 105, 'Json respond consistent with specific parameters', 'Insert', 8, 'Mayank Patel', '2019-12-12 18:20:48', '2019-12-12 18:20:48'),
(251, 105, 'Json respond consistent with specific parameters', 'Assign To - 6', 1, 'Super Administrator', '2019-12-14 08:19:04', '2019-12-14 08:19:04'),
(252, 78, 'Json respond consistent with specific parameters', 'Timecard Added', 1, 'Super Administrator', '2019-12-14 08:19:36', '2019-12-14 08:19:36'),
(253, 7, 'Json respond consistent with specific parameters', 'Insert', 1, 'Super Administrator', '2019-12-14 08:20:15', '2019-12-14 08:20:15'),
(254, 104, 'To create multiple banners based on our services', 'Update - Done', 1, 'Super Administrator', '2019-12-14 14:02:16', '2019-12-14 14:02:16'),
(255, 103, 'Status of task should change from listing page', 'Update - Update - Done', 1, 'Super Administrator', '2019-12-14 14:02:16', '2019-12-14 14:02:16'),
(256, 101, 'On task details page, tasks comment should display at top of accordion', 'Update - Update - Update - Done', 1, 'Super Administrator', '2019-12-14 14:02:16', '2019-12-14 14:02:16'),
(257, 100, 'Yesterday Punching Report to be add into daily email', 'Update - Update - Update - Update - Done', 1, 'Super Administrator', '2019-12-14 14:02:16', '2019-12-14 14:02:16'),
(258, 106, 'Task Comment Delete API Not working', 'Insert', 1, 'Super Administrator', '2019-12-17 03:08:59', '2019-12-17 03:08:59'),
(259, 107, 'Angular Learning', 'Insert', 1, 'Super Administrator', '2019-12-18 14:33:44', '2019-12-18 14:33:44'),
(260, 108, 'To Learn React Framework', 'Insert', 1, 'Super Administrator', '2019-12-18 14:34:34', '2019-12-18 14:34:34'),
(261, 109, 'Implementation of HRMS', 'Insert', 1, 'Super Administrator', '2020-01-02 05:35:10', '2020-01-02 05:35:10'),
(262, 110, 'Ionic Learning', 'Insert', 1, 'Super Administrator', '2020-01-02 05:38:45', '2020-01-02 05:38:45'),
(263, 111, 'View facebook, twitter, Linkedin link to google my business results', 'Insert', 8, 'Mayank Patel', '2020-01-03 02:32:32', '2020-01-03 02:32:32'),
(264, 112, 'Reviews from the web on google my business', 'Insert', 8, 'Mayank Patel', '2020-01-03 02:33:42', '2020-01-03 02:33:42'),
(265, 113, 'View updates on google my business page', 'Insert', 8, 'Mayank Patel', '2020-01-03 02:35:24', '2020-01-03 02:35:24'),
(266, 113, 'View updates on google my business page', 'Update', 8, 'Mayank Patel', '2020-01-03 02:37:00', '2020-01-03 02:37:00'),
(267, 113, 'View updates on google my business page', 'Update', 8, 'Mayank Patel', '2020-01-03 02:38:57', '2020-01-03 02:38:57'),
(268, 114, 'It should show \"people also search for\" on right side', 'Insert', 8, 'Mayank Patel', '2020-01-03 02:44:40', '2020-01-03 02:44:40'),
(269, 115, 'Create structure of links like document', 'Insert', 8, 'Mayank Patel', '2020-01-03 02:53:17', '2020-01-03 02:53:17'),
(270, 116, 'Add 2 columns word count for title and meta description to database', 'Insert', 8, 'Mayank Patel', '2020-01-03 03:05:20', '2020-01-03 03:05:20'),
(271, 117, 'Make projects category wise', 'Insert', 1, 'Super Administrator', '2020-01-06 11:45:21', '2020-01-06 11:45:21'),
(272, 117, 'Make projects category wise (Ourwork Page)', 'Update', 1, 'Super Administrator', '2020-01-06 11:45:46', '2020-01-06 11:45:46'),
(273, 118, 'Create canonical tags for each pages', 'Insert', 8, 'Mayank Patel', '2020-01-06 18:12:24', '2020-01-06 18:12:24'),
(274, 119, 'Update flag of weekend on database while adding timecard', 'Insert', 8, 'Mayank Patel', '2020-01-07 14:32:48', '2020-01-07 14:32:48'),
(275, 120, 'Make canonical dynamic of site ', 'Insert', 8, 'Mayank Patel', '2020-01-07 17:40:49', '2020-01-07 17:40:49'),
(276, 121, 'Create a module name media management', 'Insert', 0, '', '2020-01-07 18:44:44', '2020-01-07 18:44:44'),
(277, 122, 'Digital Marketing Learning', 'Insert', 1, 'Super Administrator', '2020-01-08 01:38:09', '2020-01-08 01:38:09'),
(278, 123, 'NAU Tasks', 'Insert', 1, 'Super Administrator', '2020-01-08 01:39:35', '2020-01-08 01:39:35'),
(279, 124, 'Server issue fixes', 'Insert', 1, 'Super Administrator', '2020-01-20 22:14:41', '2020-01-20 22:14:41'),
(280, 125, 'Setup project', 'Insert', 1, 'Super Administrator', '2020-01-20 22:15:34', '2020-01-20 22:15:34'),
(281, 126, 'Design work on this project', 'Insert', 1, 'Super Administrator', '2020-01-20 22:16:27', '2020-01-20 22:16:27'),
(282, 127, 'Development', 'Insert', 1, 'Super Administrator', '2020-01-20 22:17:27', '2020-01-20 22:17:27'),
(283, 128, 'Support after development', 'Insert', 1, 'Super Administrator', '2020-01-20 22:18:20', '2020-01-20 22:18:20'),
(284, 129, 'Maintenance work after support', 'Insert', 1, 'Super Administrator', '2020-01-20 22:19:17', '2020-01-20 22:19:17'),
(285, 130, 'Registration on description Sites', 'Insert', 1, 'Super Administrator', '2020-01-22 11:00:19', '2020-01-22 11:00:19'),
(286, 130, 'Registration on description Sites', 'Update', 1, 'Super Administrator', '2020-01-22 11:00:39', '2020-01-22 11:00:39'),
(287, 130, 'Registration on description Sites', 'Update', 1, 'Super Administrator', '2020-01-22 11:04:59', '2020-01-22 11:04:59'),
(288, 130, 'Registration on description Sites', 'Update', 1, 'Super Administrator', '2020-01-22 11:05:34', '2020-01-22 11:05:34'),
(289, 131, 'Add Breadcrumb', 'Insert', 1, 'Super Administrator', '2020-01-22 14:53:13', '2020-01-22 14:53:13'),
(290, 130, 'Registration on description Sites', 'Update', 1, 'Super Administrator', '2020-01-27 04:53:47', '2020-01-27 04:53:47'),
(291, 130, 'Registration on description Sites', 'Priority - Trival', 8, 'Mayank Patel', '2020-02-03 18:22:04', '2020-02-03 18:22:04'),
(292, 132, 'Add one page name custom label', 'Insert', 8, 'Mayank Patel', '2020-02-21 21:21:05', '2020-02-21 21:21:05'),
(293, 133, 'To work on developing area', 'Insert', 1, 'Super Administrator', '2020-02-21 21:56:49', '2020-02-21 21:56:49'),
(294, 134, 'To work on development area', 'Insert', 1, 'Super Administrator', '2020-02-21 21:57:48', '2020-02-21 21:57:48'),
(295, 135, 'To work on this project ', 'Insert', 1, 'Super Administrator', '2020-02-21 21:59:24', '2020-02-21 21:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `task_comment_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `task_name` varchar(255) DEFAULT NULL,
  `comments` text,
  `commented_by` int(11) NOT NULL DEFAULT '0',
  `commented_by_name` varchar(255) DEFAULT NULL,
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(225) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_comments`
--

INSERT INTO `task_comments` (`task_comment_id`, `task_id`, `task_name`, `comments`, `commented_by`, `commented_by_name`, `deleted_status`, `deleted_by`, `deleted_by_name`, `deleted_time`, `created_at`, `updated_at`) VALUES
(1, 9, 'Outside for personal work', '<p>First comment</p>', 1, 'Admin Role', 'Y', 0, NULL, NULL, '2019-11-15 13:34:05', '2019-11-15 13:34:25'),
(2, 9, 'Outside for personal work', '<p>Second comment</p>', 1, 'Admin Role', 'N', 0, NULL, NULL, '2019-11-15 13:34:16', '2019-11-15 13:34:16'),
(3, 50, 'Learning of docker', '<p>Install docker for windows</p><p><br></p><p>https://hub.docker.com/</p><p>Docker Credentials : mayankpatelyopmail / Mayank@203</p><p>Download and install docker on windows</p><p><br></p><p>go to :</p><p>D:wamp64wwwdocker2</p><p>git clone https://github.com/mfieldhouse/docker-php-helloworld.git</p><p>D:wamp64wwwdockerdocker-php-helloworld&gt;docker build -t docker-php-helloworld .</p><p>docker run -p 83:80 docker-php-helloworld</p><p><br></p><p>docker container ls</p><p>docker stop e0a8f05a4a9b</p><div><br></div>', 8, 'Mayank Patel', 'N', 0, NULL, NULL, '2019-11-19 13:42:22', '2019-11-19 13:42:22'),
(4, 50, 'Learning of docker', '<p>Install docker for windows</p><p><br></p><p>https://hub.docker.com/</p><p>Docker Credentials : mayankpatelyopmail / Mayank@203</p><p>Download and install docker on windows</p><p><br></p><p>go to :</p><p>D:wamp64wwwdocker2</p><p>git clone https://github.com/mfieldhouse/docker-php-helloworld.git</p><p>D:wamp64wwwdockerdocker-php-helloworld&gt;docker build -t docker-php-helloworld .</p><p>docker run -p 83:80 docker-php-helloworld</p><p><br></p><p>docker container ls</p><p>docker stop e0a8f05a4a9b</p><div><br></div>', 8, 'Mayank Patel', 'N', 0, NULL, NULL, '2019-11-19 13:43:11', '2019-11-19 13:43:11'),
(5, 50, 'Learning of docker', '<p>Install docker for windows</p><p><br></p><p>https://hub.docker.com/</p><p>Docker Credentials : mayankpatelyopmail / Mayank@203</p><p>Download and install docker on windows</p><p><br></p><p>go to :</p><p>D:wamp64wwwdocker2</p><p>git clone https://github.com/mfieldhouse/docker-php-helloworld.git</p><p>D:wamp64wwwdockerdocker-php-helloworld&gt;docker build -t docker-php-helloworld .</p><p>docker run -p 83:80 docker-php-helloworld</p><p><br></p><p>docker container ls</p><p>docker stop e0a8f05a4a9b</p><div><br></div>', 8, 'Mayank Patel', 'N', 0, NULL, NULL, '2019-11-19 13:44:06', '2019-11-19 13:44:06'),
(6, 100, 'Yesterday Punching Report to be add into daily email', '<p>Task added. Now required to work from tomorrow</p>', 1, 'Super Administrator', 'N', 0, NULL, NULL, '2019-12-12 15:38:10', '2019-12-12 15:38:10'),
(7, 105, 'Json respond consistent with specific parameters', '<p>End of the day 3 steps has been done.</p><p>2 steps are pending.</p>', 1, 'Super Administrator', 'N', 0, NULL, NULL, '2019-12-14 08:20:15', '2019-12-14 08:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `timecard`
--

CREATE TABLE `timecard` (
  `timecard_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `task_name` varchar(255) DEFAULT NULL,
  `task_comment` text,
  `hours` decimal(10,2) DEFAULT '0.00',
  `is_weekend` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_publicholiday` enum('Y','N') NOT NULL DEFAULT 'N',
  `adjustment_day` enum('Y','N') NOT NULL DEFAULT 'Y',
  `adjustment_day_notes` text,
  `timecard_date` date DEFAULT NULL,
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timecard`
--

INSERT INTO `timecard` (`timecard_id`, `user_id`, `user_name`, `project_id`, `task_id`, `task_name`, `task_comment`, `hours`, `is_weekend`, `is_publicholiday`, `adjustment_day`, `adjustment_day_notes`, `timecard_date`, `deleted_status`, `deleted_by`, `deleted_by_name`, `deleted_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mayank Patel', 23, 3, 'To create offline Documentation', '<p>First date research                    </p>', '2.50', 'N', 'N', 'Y', NULL, '2019-11-07', 'N', 0, NULL, NULL, '2019-11-07 02:39:02', '2019-11-07 02:39:02'),
(2, 1, 'Mayank Patel', 25, 5, 'Study Laravel Framework', '<p>Done research on this task. Read documentation of intial development task</p>', '6.00', 'N', 'N', 'Y', NULL, '2019-11-07', 'N', 0, NULL, NULL, '2019-11-07 02:45:36', '2019-11-07 02:45:36'),
(3, 1, 'Mayank Patel', 25, 4, 'Research on JQuery', 'Worked on research of task', '3.40', 'N', 'N', 'Y', NULL, '2019-11-08', 'N', 0, NULL, NULL, '2019-11-08 11:58:20', '2019-11-08 12:00:47'),
(4, 3, 'Jashmit Vrushak', 25, 4, 'Research on JQuery', 'First day of office. ', '3.40', 'N', 'N', 'Y', NULL, '2019-11-08', 'N', 0, NULL, NULL, '2019-11-08 12:01:19', '2019-11-08 12:01:51'),
(5, 3, 'Jashmit Vrushak', 25, 5, 'Study Laravel Framework', 'Worked on laravel study framework', '3.50', 'N', 'N', 'Y', NULL, '2019-11-08', 'N', 0, NULL, NULL, '2019-11-08 12:01:55', '2019-11-08 12:02:14'),
(6, 2, 'Mrugesh Rana', 25, 4, 'Research on JQuery', 'Worked on research jquery for goyoukiyo project\r\n', '3.50', 'N', 'N', 'Y', NULL, '2019-11-14', 'N', 0, NULL, NULL, '2019-11-14 03:35:43', '2019-11-14 15:36:11'),
(7, 2, 'Mrugesh Rana', 25, 4, 'Research on JQuery', 'Worked on task for implement right panel', '4.50', 'N', 'N', 'Y', NULL, '2019-11-14', 'N', 0, NULL, NULL, '2019-11-14 03:36:14', '2019-11-14 15:36:35'),
(8, 6, 'Maulika Vasava', 23, 1, 'To Research on Cronjob', 'Worked on inventory part', '4.50', 'N', 'N', 'Y', NULL, '2019-11-14', 'N', 0, NULL, NULL, '2019-11-14 03:38:59', '2019-11-14 15:39:28'),
(9, 6, 'Maulika Vasava', 25, 4, 'Research on JQuery', 'Worked on research', '4.50', 'N', 'N', 'Y', NULL, '2019-11-14', 'N', 0, NULL, NULL, '2019-11-14 03:39:32', '2019-11-14 15:39:48'),
(10, 6, 'Maulika Vasava', 25, 9, 'Outside for personal work', '<p>Worked outside for 2 hours due to medicine for home</p>', '3.50', 'N', 'N', 'Y', NULL, '2019-11-14', 'N', 0, NULL, NULL, '2019-11-14 03:40:12', '2019-11-14 03:40:12'),
(11, 8, 'Mayank Patel', 25, 9, 'Outside for personal work', 'Internal framework study', '3.50', 'N', 'N', 'Y', NULL, '2019-11-14', 'N', 0, NULL, NULL, '2019-11-14 03:56:21', '2019-11-14 15:56:51'),
(12, 8, 'Mayank Patel', 25, 6, 'Learning', 'Worked on this framework', '4.50', 'N', 'N', 'Y', NULL, '2019-11-14', 'N', 0, NULL, NULL, '2019-11-14 03:56:54', '2019-11-14 15:57:13'),
(13, 1, 'Admin Role', 31, 13, 'Cloudswift Portal Work', '', '1.50', 'N', 'N', 'Y', NULL, '2019-11-18', 'Y', 1, 'Admin Role', '2019-11-18 02:41:38', '2019-11-18 02:40:43', '2019-11-18 02:41:38'),
(14, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on cloudswift portal work\r\n- Cronjob daily email sending of punch report', '1.50', 'N', 'N', 'Y', NULL, '2019-11-18', 'N', 0, NULL, NULL, '2019-11-18 02:41:58', '2019-11-18 02:42:29'),
(15, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on sending invitation of my linkedin connection', '0.30', 'N', 'N', 'Y', NULL, '2019-11-18', 'N', 0, NULL, NULL, '2019-11-18 02:42:33', '2019-11-18 02:42:58'),
(16, 8, 'Mayank Patel', 22, 14, 'NHSRCL Hostel Room Booking', 'Worked on fixing of task issue.', '2.25', 'N', 'N', 'Y', NULL, '2019-11-18', 'N', 0, NULL, NULL, '2019-11-18 07:25:43', '2019-11-18 07:26:05'),
(17, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on social connection linkedin', '0.75', 'N', 'N', 'Y', NULL, '2019-11-18', 'N', 0, NULL, NULL, '2019-11-18 07:26:11', '2019-11-18 07:26:48'),
(18, 8, 'Mayank Patel', 22, 14, 'NHSRCL Hostel Room Booking', 'Worked on fixing server issue on live server', '2.00', 'N', 'N', 'Y', NULL, '2019-11-18', 'N', 0, NULL, NULL, '2019-11-19 01:23:18', '2019-11-19 01:23:59'),
(19, 8, 'Mayank Patel', 22, 14, 'NHSRCL Hostel Room Booking', 'Done work on implement functionality on nhsrcl live server', '2.00', 'N', 'N', 'Y', NULL, '2019-11-18', 'N', 0, NULL, NULL, '2019-11-19 01:24:01', '2019-11-19 01:24:40'),
(20, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on sending LinkedIn Connections', '0.00', 'N', 'N', 'Y', NULL, '2019-11-19', 'Y', 8, 'Mayank Patel', '2019-11-19 01:47:56', '2019-11-19 01:24:43', '2019-11-19 01:47:56'),
(21, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'To create Social Networking Connection	', '0.40', 'N', 'N', 'Y', NULL, '2019-11-19', 'N', 0, NULL, NULL, '2019-11-19 01:48:00', '2019-11-19 01:48:13'),
(22, 8, 'Mayank Patel', 31, 21, 'Data Entries on Portal', 'Worked on create tasks for each projects', '1.25', 'N', 'N', 'Y', NULL, '2019-11-19', 'N', 0, NULL, NULL, '2019-11-19 02:49:36', '2019-11-19 02:50:08'),
(23, 8, 'Mayank Patel', 31, 50, 'Learning of docker', '<p>Install docker for windows</p><p><br></p><p>https://hub.docker.com/</p><p>Docker Credentials : mayankpatelyopmail / Mayank@203</p><p>Download and install docker on windows</p><p><br></p><p>go to :</p><p>D:\\wamp64\\www\\docker2</p><p>git clone https://github.com/mfieldhouse/docker-php-helloworld.git</p><p>D:\\wamp64\\www\\docker\\docker-php-helloworld&gt;docker build -t docker-php-helloworld .</p><p>docker run -p 83:80 docker-php-helloworld</p><p><br></p><p>docker container ls</p><p>docker stop e0a8f05a4a9b</p><div><br></div>', '2.00', 'N', 'N', 'Y', NULL, '2019-11-19', 'Y', 0, NULL, NULL, '2019-11-19 01:41:31', '2019-11-19 13:43:30'),
(24, 8, 'Mayank Patel', 31, 50, 'Learning of docker', 'Begin docker installation', '2.00', 'N', 'N', 'Y', NULL, '2019-11-19', 'N', 0, NULL, NULL, '2019-11-19 01:43:30', '2019-11-20 04:53:35'),
(25, 8, 'Mayank Patel', 31, 50, 'Learning of docker', 'Learning of docker fundamentals', '0.25', 'N', 'N', 'Y', NULL, '2019-11-19', 'N', 0, NULL, NULL, '2019-11-19 01:44:08', '2019-11-20 04:53:23'),
(26, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on update functionality\r\nFinding and fixing bugs', '2.50', 'N', 'N', 'Y', NULL, '2019-11-19', 'N', 0, NULL, NULL, '2019-11-19 02:12:57', '2019-11-19 14:13:21'),
(27, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Create some requirement tasks and fixes to be done on portal', '0.75', 'N', 'N', 'Y', NULL, '2019-11-20', 'N', 0, NULL, NULL, '2019-11-19 10:54:06', '2019-11-19 22:54:54'),
(28, 8, 'Mayank Patel', 31, 22, 'Unit Testing on portal', 'Bug fixes and enhancement based on tasks', '2.50', 'N', 'N', 'Y', NULL, '2019-11-20', 'N', 0, NULL, NULL, '2019-11-20 04:52:37', '2019-11-20 04:53:09'),
(29, 8, 'Mayank Patel', 35, 69, 'Good will theme ', 'Worked on theme analysis on this theme : http://goodwill.digiflux.io/', '3.00', 'N', 'N', 'Y', NULL, '2019-11-20', 'N', 0, NULL, NULL, '2019-11-20 11:08:32', '2019-11-20 11:09:02'),
(30, 8, 'Mayank Patel', 31, 22, 'Unit Testing on portal', 'Bug fixes and unit testing', '3.00', 'N', 'N', 'Y', NULL, '2019-11-20', 'N', 0, NULL, NULL, '2019-11-21 12:16:01', '2019-11-21 00:16:47'),
(31, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Linkedin connections', '0.25', 'N', 'N', 'Y', NULL, '2019-11-21', 'N', 0, NULL, NULL, '2019-11-21 02:11:04', '2019-11-21 02:11:25'),
(32, 8, 'Mayank Patel', 25, 50, 'Learning of docker', 'Learning of docker and working for Italy Client demonstrations', '7.50', 'N', 'N', 'Y', NULL, '2019-11-21', 'N', 0, NULL, NULL, '2019-11-22 02:47:41', '2019-11-22 02:48:29'),
(33, 8, 'Mayank Patel', 25, 50, 'Learning of docker', 'Learning docker for laravel', '4.50', 'N', 'N', 'Y', NULL, '2019-11-22', 'N', 0, NULL, NULL, '2019-11-23 05:09:54', '2019-11-23 05:10:28'),
(34, 8, 'Mayank Patel', 25, 5, 'Study Laravel Framework', 'Worked on integration of docker with laravel\r\nWorked on create Larvel CLI with docker for Italian client', '4.00', 'N', 'N', 'Y', NULL, '2019-11-22', 'N', 0, NULL, NULL, '2019-11-23 05:10:30', '2019-11-23 05:11:17'),
(35, 8, 'Mayank Patel', 17, 39, 'Worked on front-end side', 'Worked on client\'s changes\r\nhttps://docs.google.com/spreadsheets/d/1CZJ38BVXPJHlNWdb0Ar0gvkwI8QDokiTEM8NQDcDe_o/edit?ts=5dd7c67e#gid=0', '2.00', 'Y', 'N', 'Y', NULL, '2019-11-23', 'N', 0, NULL, NULL, '2019-11-23 05:11:20', '2020-01-08 01:33:14'),
(36, 8, 'Mayank Patel', 17, 39, 'Worked on front-end side', 'Worked on this project based on clients new sheet', '1.50', 'Y', 'N', 'Y', NULL, '2019-11-23', 'N', 0, NULL, NULL, '2019-11-23 09:16:16', '2020-01-08 01:33:14'),
(37, 8, 'Mayank Patel', 33, 16, 'Research or study digital marketing', 'Digital marketing videos watching', '3.00', 'Y', 'N', 'Y', NULL, '2019-11-23', 'N', 0, NULL, NULL, '2019-11-24 01:20:07', '2020-01-08 01:33:14'),
(38, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on sending connections', '0.50', 'Y', 'N', 'Y', NULL, '2019-11-23', 'N', 0, NULL, NULL, '2019-11-24 01:20:54', '2020-01-08 01:33:14'),
(39, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on sending LinkedIn Connections', '0.50', 'Y', 'N', 'Y', NULL, '2019-11-24', 'N', 0, NULL, NULL, '2019-11-24 01:21:22', '2020-01-08 01:33:14'),
(40, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Worked on creating HTML template for sharing on social networking site', '2.00', 'Y', 'N', 'Y', NULL, '2019-11-24', 'N', 0, NULL, NULL, '2019-11-24 02:06:43', '2020-01-08 01:33:14'),
(41, 8, 'Mayank Patel', 33, 16, 'Research or study digital marketing', 'Worked on sharing HTML templates to LinkedIn and Facebook pages', '2.00', 'Y', 'N', 'Y', NULL, '2019-11-24', 'N', 0, NULL, NULL, '2019-11-24 02:07:38', '2020-01-08 01:33:14'),
(42, 8, 'Mayank Patel', 31, 61, 'Create Google sheet for payment details', 'Worked on create google sheet and apply payments on respective sheets', '1.50', 'N', 'N', 'Y', NULL, '2019-11-25', 'N', 0, NULL, NULL, '2019-11-25 04:58:37', '2019-11-25 04:59:26'),
(43, 8, 'Mayank Patel', 22, 14, 'NHSRCL Hostel Room Booking', 'Worked on room booking new logic', '3.00', 'N', 'N', 'Y', NULL, '2019-11-25', 'N', 0, NULL, NULL, '2019-11-25 12:16:14', '2019-11-25 12:16:45'),
(44, 8, 'Mayank Patel', 35, 69, 'Good will theme ', 'Discussion with client and static html changes. Testing on website and mobile devices', '2.50', 'N', 'N', 'Y', NULL, '2019-11-25', 'N', 0, NULL, NULL, '2019-11-25 12:16:49', '2019-11-25 12:17:18'),
(45, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Posted jpg of framework to Instagram.', '0.50', 'N', 'N', 'Y', NULL, '2019-11-26', 'N', 0, NULL, NULL, '2019-11-25 10:46:50', '2019-11-25 22:47:34'),
(46, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on login 3 attempt failure section.', '1.25', 'N', 'N', 'Y', NULL, '2019-11-26', 'N', 0, NULL, NULL, '2019-11-26 02:18:38', '2019-11-26 02:19:07'),
(47, 8, 'Mayank Patel', 31, 72, 'Monthly Credentials email', 'Done task on live server', '1.00', 'N', 'N', 'Y', NULL, '2019-11-26', 'N', 0, NULL, NULL, '2019-11-26 03:00:54', '2019-11-26 03:01:31'),
(48, 8, 'Mayank Patel', 22, 14, 'NHSRCL Hostel Room Booking', 'Worked on analysis and discussion about inventory major changes by client', '4.00', 'N', 'N', 'Y', NULL, '2019-11-26', 'N', 0, NULL, NULL, '2019-11-27 01:20:41', '2019-11-27 01:21:36'),
(49, 8, 'Mayank Patel', 22, 14, 'NHSRCL Hostel Room Booking', 'Worked on new features inventory. Now allowing partial dispatched', '8.10', 'N', 'N', 'Y', NULL, '2019-11-27', 'N', 0, NULL, NULL, '2019-11-27 01:38:12', '2019-11-27 13:39:02'),
(50, 8, 'Mayank Patel', 22, 29, 'Worked on fixing server issue', 'Worked on nhsrcl inventory section', '8.10', 'N', 'N', 'Y', NULL, '2019-11-28', 'N', 0, NULL, NULL, '2019-11-28 03:06:15', '2019-11-28 03:06:45'),
(51, 8, 'Mayank Patel', 22, 14, 'NHSRCL Hostel Room Booking', 'Worked on inventory current stock ', '8.50', 'N', 'N', 'Y', NULL, '2019-11-29', 'N', 0, NULL, NULL, '2019-11-29 01:59:40', '2019-11-29 14:00:07'),
(52, 8, 'Mayank Patel', 25, 6, 'Learning', 'Worked on learning react J\'s and docker', '8.50', 'Y', 'N', 'Y', NULL, '2019-11-30', 'N', 0, NULL, NULL, '2019-11-30 05:19:28', '2020-01-08 01:33:14'),
(53, 8, 'Mayank Patel', 25, 91, 'System Issue', 'Worked on installation of Linux on my windows PC', '8.50', 'Y', 'N', 'Y', NULL, '2019-12-01', 'N', 0, NULL, NULL, '2019-12-01 11:55:25', '2020-01-08 01:33:14'),
(54, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on LinkedIn Connections sending', '0.50', 'N', 'N', 'Y', NULL, '2019-12-02', 'N', 0, NULL, NULL, '2019-12-01 11:56:21', '2019-12-01 23:57:15'),
(55, 8, 'Mayank Patel', 36, 92, 'CMS Development', 'Worked on cms Backend and Frontend Development', '8.00', 'N', 'N', 'Y', NULL, '2019-12-02', 'N', 0, NULL, NULL, '2019-12-02 01:31:17', '2019-12-02 13:31:51'),
(56, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Worked on google reviews and online connection sending.', '1.00', 'N', 'N', 'Y', NULL, '2019-12-02', 'N', 0, NULL, NULL, '2019-12-02 02:25:45', '2019-12-02 14:26:16'),
(57, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Worked with Jimmy for fullkit', '5.00', 'N', 'N', 'Y', NULL, '2019-12-03', 'N', 0, NULL, NULL, '2019-12-03 12:48:10', '2019-12-03 12:48:54'),
(58, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Worked on build logic with hemal Bhai ', '2.50', 'N', 'N', 'Y', NULL, '2019-12-03', 'N', 0, NULL, NULL, '2019-12-03 07:00:55', '2019-12-04 11:15:53'),
(59, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on LinkedIn marketing and Facebook marketing', '1.00', 'N', 'N', 'Y', NULL, '2019-12-03', 'N', 0, NULL, NULL, '2019-12-03 07:01:43', '2019-12-04 11:15:47'),
(60, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Worked to create logic for Inventory on full kit', '5.50', 'N', 'N', 'Y', NULL, '2019-12-04', 'N', 0, NULL, NULL, '2019-12-04 05:52:57', '2019-12-04 17:53:41'),
(61, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on LinkedIn Connections and firebase study', '2.00', 'N', 'N', 'Y', NULL, '2019-12-04', 'N', 0, NULL, NULL, '2019-12-04 05:53:47', '2019-12-04 17:54:21'),
(62, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Enhancement with hemal Bhai on foolkit', '2.50', 'N', 'N', 'Y', NULL, '2019-12-04', 'N', 0, NULL, NULL, '2019-12-04 05:54:38', '2019-12-04 17:55:12'),
(63, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Enhancement with hemal Bhai on foolkit', '2.50', 'N', 'N', 'Y', NULL, '2019-12-04', 'N', 0, NULL, NULL, '2019-12-04 05:54:38', '2019-12-04 17:55:12'),
(64, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked with team', '8.50', 'N', 'N', 'Y', NULL, '2019-12-05', 'N', 0, NULL, NULL, '2019-12-06 10:34:30', '2019-12-06 10:34:56'),
(65, 8, 'Mayank Patel', 22, 29, 'Worked on fixing server issue', 'Worked on issue on server.', '9.00', 'N', 'N', 'Y', NULL, '2019-12-06', 'N', 0, NULL, NULL, '2019-12-06 10:35:00', '2019-12-06 10:35:28'),
(66, 8, 'Mayank Patel', 38, 99, 'Start Development', 'Worked on this project for 3 hours.\r\nWorked on homepage manipulation', '3.00', 'N', 'N', 'Y', NULL, '2019-12-10', 'N', 0, NULL, NULL, '2019-12-11 07:56:52', '2019-12-11 07:57:18'),
(67, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on sending linkedin connection for generating leads', '0.50', 'N', 'N', 'Y', NULL, '2019-12-10', 'N', 0, NULL, NULL, '2019-12-11 07:57:22', '2019-12-11 07:57:48'),
(68, 8, 'Mayank Patel', 38, 99, 'Start Development', 'Worked on this project', '2.00', 'N', 'N', 'Y', NULL, '2019-12-11', 'N', 0, NULL, NULL, '2019-12-11 05:59:48', '2019-12-11 18:00:13'),
(69, 8, 'Mayank Patel', 23, 98, 'Testing System', 'Worked with team on lnt qc and foolkit', '6.00', 'N', 'N', 'Y', NULL, '2019-12-11', 'N', 0, NULL, NULL, '2019-12-11 06:00:17', '2019-12-11 18:01:24'),
(70, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Worked with hemal Bhai', '4.00', 'N', 'N', 'Y', NULL, '2019-12-11', 'N', 0, NULL, NULL, '2019-12-11 06:01:32', '2019-12-11 18:02:02'),
(71, 8, 'Mayank Patel', 23, 2, 'Quantity Issue on Issue page', 'Worked with hamalbhai about fullkit issue.\r\nLNT Visit ranoli for lnttoolcrib issues', '9.00', 'N', 'N', 'Y', NULL, '2019-12-12', 'N', 0, NULL, NULL, '2019-12-12 03:01:29', '2019-12-12 15:02:25'),
(72, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on sending linkedin connections', '0.75', 'N', 'N', 'Y', NULL, '2019-12-12', 'N', 0, NULL, NULL, '2019-12-12 03:02:34', '2019-12-12 15:03:00'),
(73, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Portal work and enhancement', '2.00', 'N', 'N', 'Y', NULL, '2019-12-12', 'N', 0, NULL, NULL, '2019-12-12 06:21:02', '2019-12-12 18:21:31'),
(74, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on this portal for logging errors on specific file', '1.50', 'N', 'N', 'Y', NULL, '2019-12-13', 'N', 0, NULL, NULL, '2019-12-13 03:19:52', '2019-12-13 03:20:20'),
(75, 8, 'Mayank Patel', 23, 2, 'Quantity Issue on Issue page', 'Worked on fixing desktop application.\r\nDiscussion and fixed problem.', '7.50', 'N', 'N', 'Y', NULL, '2019-12-13', 'N', 0, NULL, NULL, '2019-12-14 08:12:01', '2019-12-14 08:12:50'),
(76, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on this system for enhancement', '1.50', 'Y', 'N', 'Y', NULL, '2019-12-14', 'N', 0, NULL, NULL, '2019-12-14 08:13:12', '2020-01-08 01:33:14'),
(77, 8, 'Mayank Patel', 31, 20, 'Portal Work', 'Worked on UI/UX fixing', '2.50', 'Y', 'N', 'Y', NULL, '2019-12-14', 'N', 0, NULL, NULL, '2019-12-14 08:14:05', '2020-01-08 01:33:14'),
(78, 1, 'Super Administrator', 31, 105, 'Json respond consistent with specific parameters', '', '4.00', 'Y', 'N', 'Y', NULL, '2019-12-14', 'N', 0, NULL, NULL, '2019-12-14 08:19:10', '2020-01-08 01:33:14'),
(79, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on banners development\r\nAnalysis on social networking sites', '3.50', 'Y', 'N', 'Y', NULL, '2019-12-14', 'N', 0, NULL, NULL, '2019-12-14 02:22:59', '2020-01-08 01:33:14'),
(80, 8, 'Mayank Patel', 33, 16, 'Research or study digital marketing', 'Worked on digital marketing features\r\n- Optimization of scripts\r\n- Create banners of page.\r\n- create some icons for banners', '3.50', 'Y', 'N', 'Y', NULL, '2019-12-15', 'N', 0, NULL, NULL, '2019-12-15 02:27:04', '2020-01-08 01:33:14'),
(81, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'L&T Fulkit work', '6.00', 'N', 'N', 'Y', NULL, '2019-12-16', 'N', 0, NULL, NULL, '2019-12-17 02:12:51', '2019-12-17 02:13:22'),
(82, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on cloudswift api . Creating standards of api', '1.50', 'N', 'N', 'Y', NULL, '2019-12-16', 'N', 0, NULL, NULL, '2019-12-17 02:13:26', '2019-12-17 02:14:39'),
(83, 8, 'Mayank Patel', 33, 16, 'Research or study digital marketing', 'Worked on this thing', '1.00', 'N', 'N', 'Y', NULL, '2019-12-16', 'N', 0, NULL, NULL, '2019-12-17 02:14:01', '2019-12-17 02:14:24'),
(84, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on cloudswift portal work', '1.00', 'N', 'N', 'Y', NULL, '2019-12-17', 'N', 0, NULL, NULL, '2019-12-17 02:14:54', '2019-12-17 02:15:20'),
(85, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Worked on lnt fullkit project', '7.50', 'N', 'N', 'Y', NULL, '2019-12-17', 'N', 0, NULL, NULL, '2019-12-18 02:31:03', '2019-12-18 14:31:39'),
(86, 8, 'Mayank Patel', 39, 107, 'Angular Learning', 'Worked on angular about lazy loading issue', '2.00', 'N', 'N', 'Y', NULL, '2019-12-18', 'N', 0, NULL, NULL, '2019-12-18 02:34:42', '2019-12-18 14:35:09'),
(87, 8, 'Mayank Patel', 23, 3, 'To create offline Documentation', 'Worked on LNT Fullkit about home page fullkit issue.', '7.00', 'N', 'N', 'Y', NULL, '2019-12-18', 'N', 0, NULL, NULL, '2019-12-18 02:35:13', '2019-12-18 14:35:50'),
(88, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'NAU Visit Bharuch', '10.00', 'Y', 'N', 'Y', NULL, '2019-12-21', 'N', 0, NULL, NULL, '2019-12-22 05:28:22', '2020-01-08 01:33:14'),
(89, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked on student fees receipt\r\nStudent registration\r\nStudent reg. fields and export options', '3.00', 'Y', 'N', 'Y', NULL, '2019-12-22', 'N', 0, NULL, NULL, '2019-12-22 05:30:30', '2020-01-08 01:33:14'),
(90, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on sending social networking site', '0.75', 'N', 'N', 'Y', NULL, '2019-12-23', 'N', 0, NULL, NULL, '2019-12-23 03:36:36', '2019-12-23 03:37:01'),
(91, 8, 'Mayank Patel', 39, 107, 'Angular Learning', 'Worked on angular learning. All modules and component html placed.', '4.50', 'N', 'N', 'Y', NULL, '2019-12-23', 'N', 0, NULL, NULL, '2019-12-23 12:28:04', '2019-12-23 12:28:37'),
(92, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked on NAU Project.', '3.50', 'N', 'N', 'Y', NULL, '2019-12-23', 'N', 0, NULL, NULL, '2019-12-23 12:28:50', '2019-12-23 12:29:16'),
(93, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked on NAU project for completion', '9.00', 'N', 'N', 'Y', NULL, '2019-12-26', 'N', 0, NULL, NULL, '2019-12-28 02:49:38', '2019-12-28 02:50:05'),
(94, 8, 'Mayank Patel', 23, 2, 'Quantity Issue on Issue page', 'Worked on NAU project based on timeline', '9.00', 'N', 'N', 'Y', NULL, '2019-12-27', 'N', 0, NULL, NULL, '2019-12-28 02:50:09', '2019-12-28 02:50:38'),
(95, 8, 'Mayank Patel', 33, 16, 'Research or study digital marketing', 'Worked on SEO \r\nVideo watching \r\nBing and yandex webmaster tools and Google webmaster tools registration', '6.50', 'Y', 'N', 'Y', NULL, '2019-12-29', 'N', 0, NULL, NULL, '2019-12-29 12:56:07', '2020-01-08 01:33:14'),
(96, 8, 'Mayank Patel', 23, 98, 'Testing System', 'Client Visit to Bharuch', '3.50', 'N', 'N', 'Y', NULL, '2019-12-30', 'N', 0, NULL, NULL, '2019-12-31 01:59:14', '2019-12-31 01:59:42'),
(97, 8, 'Mayank Patel', 23, 98, 'Testing System', 'Discussed and worked on this system for further changes.', '2.50', 'N', 'N', 'Y', NULL, '2019-12-30', 'N', 0, NULL, NULL, '2019-12-31 01:59:47', '2019-12-31 02:00:20'),
(98, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Did work on social networking thing', '1.00', 'N', 'N', 'Y', NULL, '2019-12-30', 'N', 0, NULL, NULL, '2019-12-31 02:00:26', '2019-12-31 02:00:54'),
(99, 8, 'Mayank Patel', 31, 20, 'Portal Work', 'Portal design work for inventory management', '1.50', 'N', 'N', 'Y', NULL, '2019-12-30', 'N', 0, NULL, NULL, '2019-12-31 02:01:02', '2019-12-31 02:01:31'),
(100, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked on discussion of new project NHSRCL tour, leave , demodulation and other with Delhi madam', '6.00', 'N', 'N', 'Y', NULL, '2019-12-31', 'N', 0, NULL, NULL, '2019-12-31 04:27:37', '2019-12-31 16:28:45'),
(101, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on database implement for inventory ', '1.00', 'N', 'N', 'Y', NULL, '2019-12-31', 'N', 0, NULL, NULL, '2019-12-31 04:30:42', '2019-12-31 16:31:28'),
(102, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked on NHSRCL HRMS Portal for implementation of tour page.', '5.50', 'N', 'N', 'Y', NULL, '2020-01-01', 'N', 0, NULL, NULL, '2020-01-02 05:22:09', '2020-01-02 05:22:55'),
(103, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked on Agri Universe tasks', '2.50', 'N', 'N', 'Y', NULL, '2020-01-01', 'N', 0, NULL, NULL, '2020-01-02 05:22:58', '2020-01-02 05:23:23'),
(104, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on learning of React js and create UI of Tour Page', '6.00', 'N', 'N', 'Y', NULL, '2020-01-02', 'N', 0, NULL, NULL, '2020-01-03 02:29:50', '2020-01-03 02:30:30'),
(105, 8, 'Mayank Patel', 41, 110, 'Ionic Learning', 'Ionic learning', '2.00', 'N', 'N', 'Y', NULL, '2020-01-02', 'N', 0, NULL, NULL, '2020-01-03 02:30:33', '2020-01-03 02:30:58'),
(106, 8, 'Mayank Patel', 33, 16, 'Research or study digital marketing', 'Learn digital marketing tools with videos', '1.00', 'N', 'N', 'Y', NULL, '2020-01-02', 'N', 0, NULL, NULL, '2020-01-03 02:31:00', '2020-01-03 02:31:26'),
(107, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Learning of React and create page name Tour Page', '7.00', 'N', 'N', 'Y', NULL, '2020-01-03', 'N', 0, NULL, NULL, '2020-01-04 03:42:36', '2020-01-04 03:43:14'),
(108, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Digital marketing learning via videos and connection to contacts', '2.00', 'N', 'N', 'Y', NULL, '2020-01-03', 'N', 0, NULL, NULL, '2020-01-04 03:43:17', '2020-01-04 03:43:50'),
(109, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Udemy videos and learning of digital marketing', '1.00', 'Y', 'N', 'Y', NULL, '2020-01-04', 'N', 0, NULL, NULL, '2020-01-04 03:44:15', '2020-01-08 01:33:14'),
(110, 8, 'Mayank Patel', 23, 98, 'Testing System', 'Worked on nau for fixing issues based on telephonic conversation with aloksir and urvashi', '5.00', 'Y', 'N', 'Y', NULL, '2020-01-04', 'N', 0, NULL, NULL, '2020-01-04 12:44:42', '2020-01-08 01:33:14'),
(111, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on hrms system for update on tour request', '1.50', 'Y', 'N', 'Y', NULL, '2020-01-04', 'N', 0, NULL, NULL, '2020-01-04 12:45:52', '2020-01-08 01:33:14'),
(112, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Worked on View digital marketing videos and create todo list', '5.50', 'Y', 'N', 'Y', NULL, '2020-01-05', 'N', 0, NULL, NULL, '2020-01-07 12:05:33', '2020-01-08 01:33:14'),
(113, 8, 'Mayank Patel', 23, 1, 'To Research on Cronjob', 'Worked on updates and support for agri university', '11.00', 'N', 'N', 'Y', NULL, '2020-01-06', 'N', 0, NULL, NULL, '2020-01-07 12:06:20', '2020-01-07 12:06:54'),
(114, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on social networking connections', '1.00', 'N', 'N', 'Y', NULL, '2020-01-07', 'N', 0, NULL, NULL, '2020-01-07 12:06:59', '2020-01-07 12:07:20'),
(115, 8, 'Mayank Patel', 25, 7, 'Hardware Issue', 'Linux setup installations', '3.00', 'N', 'N', 'Y', NULL, '2020-01-07', 'N', 0, NULL, NULL, '2020-01-07 12:07:25', '2020-01-07 12:07:52'),
(116, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Agri university tasks.', '3.00', 'N', 'N', 'Y', NULL, '2020-01-07', 'N', 0, NULL, NULL, '2020-01-07 12:07:55', '2020-01-07 12:08:16'),
(117, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Our work page redesign.', '1.50', 'N', 'N', 'Y', NULL, '2020-01-07', 'N', 0, NULL, NULL, '2020-01-07 12:08:19', '2020-01-07 12:08:49'),
(118, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'SEO Learning', '1.00', 'N', 'N', 'Y', NULL, '2020-01-07', 'N', 0, NULL, NULL, '2020-01-07 02:27:17', '2020-01-07 14:27:34'),
(119, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on portal for creating media management and other SEO changes', '2.50', 'N', 'N', 'Y', NULL, '2020-01-08', 'N', 0, NULL, NULL, '2020-01-08 03:30:23', '2020-01-08 15:31:13'),
(120, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU tasks', '5.00', 'N', 'N', 'Y', NULL, '2020-01-08', 'N', 0, NULL, NULL, '2020-01-08 03:31:15', '2020-01-08 15:31:37'),
(121, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on hrms tasks', '2.00', 'N', 'N', 'Y', NULL, '2020-01-08', 'N', 0, NULL, NULL, '2020-01-08 03:31:39', '2020-01-08 15:32:08'),
(122, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on leave cronjob', '1.50', 'N', 'N', 'Y', NULL, '2020-01-08', 'N', 0, NULL, NULL, '2020-01-08 03:32:10', '2020-01-08 15:32:31'),
(123, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on HRMS system for react development', '10.00', 'N', 'N', 'Y', NULL, '2020-01-09', 'N', 0, NULL, NULL, '2020-01-11 03:05:37', '2020-01-11 03:06:13'),
(124, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Client visit', '10.00', 'N', 'N', 'Y', NULL, '2020-01-10', 'N', 0, NULL, NULL, '2020-01-11 03:06:17', '2020-01-11 03:06:38'),
(125, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Working on linkedin connections', '0.50', 'Y', 'N', 'Y', NULL, '2020-01-11', 'N', 0, NULL, NULL, '2020-01-11 03:06:50', '2020-01-11 03:07:15'),
(126, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on digital marketing', '3.00', 'Y', 'N', 'Y', NULL, '2020-01-11', 'N', 0, NULL, NULL, '2020-01-13 05:09:25', '2020-01-13 05:10:13'),
(127, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on HRMS system for tour and other validations', '4.00', 'Y', 'N', 'Y', NULL, '2020-01-11', 'N', 0, NULL, NULL, '2020-01-16 04:32:25', '2020-01-16 04:32:54'),
(128, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on enhancement', '4.50', 'Y', 'N', 'Y', NULL, '2020-01-11', 'N', 0, NULL, NULL, '2020-01-16 04:32:58', '2020-01-16 04:33:16'),
(129, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU Tasks', '5.00', 'N', 'N', 'Y', NULL, '2020-01-13', 'N', 0, NULL, NULL, '2020-01-16 04:33:23', '2020-01-16 04:33:45'),
(130, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on this tasks', '2.00', 'N', 'N', 'Y', NULL, '2020-01-13', 'N', 0, NULL, NULL, '2020-01-16 04:33:48', '2020-01-16 04:34:03'),
(131, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on HRMS tasks on weekend', '9.00', 'Y', 'N', 'Y', NULL, '2020-01-12', 'N', 0, NULL, NULL, '2020-01-16 04:34:06', '2020-01-16 04:34:27'),
(132, 8, 'Mayank Patel', 33, 15, 'Share your card to social networking sites', 'Worked on this task for enhancements', '3.50', 'N', 'N', 'Y', NULL, '2020-01-15', 'N', 0, NULL, NULL, '2020-01-16 04:34:49', '2020-01-16 04:35:24'),
(133, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Minor changes and support to Urvashi for fees receipt generation', '1.00', 'N', 'N', 'Y', NULL, '2020-01-16', 'N', 0, NULL, NULL, '2020-01-16 04:35:38', '2020-01-16 04:36:03'),
(134, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Workrd ', '8.00', 'N', 'N', 'Y', NULL, '2020-01-16', 'N', 0, NULL, NULL, '2020-01-17 02:03:59', '2020-01-17 02:04:23'),
(135, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on tour page', '6.00', 'N', 'N', 'Y', NULL, '2020-01-17', 'N', 0, NULL, NULL, '2020-01-17 05:10:24', '2020-01-17 17:10:51'),
(136, 8, 'Mayank Patel', 33, 122, 'Digital Marketing Learning', 'Worked on digital marketing create onpage and off page document', '2.00', 'N', 'N', 'Y', NULL, '2020-01-17', 'N', 0, NULL, NULL, '2020-01-17 05:11:28', '2020-01-17 17:12:24'),
(137, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'NAU tasks for support and fixes it', '1.00', 'N', 'N', 'Y', NULL, '2020-01-17', 'N', 0, NULL, NULL, '2020-01-17 05:12:30', '2020-01-17 17:13:07'),
(138, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on tour and MD dashboard', '8.50', 'Y', 'N', 'Y', NULL, '2020-01-18', 'N', 0, NULL, NULL, '2020-01-18 01:49:39', '2020-01-18 13:50:07'),
(139, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on this portal for implementing inventory system', '3.00', 'Y', 'N', 'Y', NULL, '2020-01-19', 'N', 0, NULL, NULL, '2020-01-20 05:09:07', '2020-01-20 05:09:36'),
(140, 8, 'Mayank Patel', 33, 122, 'Digital Marketing Learning', 'Worked on learning DM via youtube and other videos applications', '1.00', 'Y', 'N', 'Y', NULL, '2020-01-19', 'N', 0, NULL, NULL, '2020-01-20 05:09:43', '2020-01-20 05:10:25'),
(141, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on MD Dashboard section', '6.00', 'N', 'N', 'Y', NULL, '2020-01-20', 'N', 0, NULL, NULL, '2020-01-20 10:04:52', '2020-01-20 22:05:23'),
(142, 8, 'Mayank Patel', 25, 91, 'System Issue', 'Learn Linux things', '1.50', 'N', 'N', 'Y', NULL, '2020-01-20', 'N', 0, NULL, NULL, '2020-01-20 10:05:28', '2020-01-20 22:06:35'),
(143, 8, 'Mayank Patel', 54, 124, 'Server issue fixes', 'Chat support on hostinger', '1.00', 'N', 'N', 'Y', NULL, '2020-01-20', 'N', 0, NULL, NULL, '2020-01-20 10:20:22', '2020-01-20 22:21:00'),
(144, 8, 'Mayank Patel', 56, 125, 'Setup project', 'Worked on project setup on hostinger', '3.00', 'Y', 'N', 'Y', NULL, '2020-01-19', 'N', 0, NULL, NULL, '2020-01-20 10:21:16', '2020-01-20 22:21:56'),
(145, 8, 'Mayank Patel', 56, 125, 'Setup project', 'Discussion with client and purchase domain for 10 years', '2.00', 'N', 'N', 'Y', NULL, '2020-01-17', 'N', 0, NULL, NULL, '2020-01-20 10:22:28', '2020-01-20 22:23:01'),
(146, 8, 'Mayank Patel', 56, 125, 'Setup project', 'Worked on research of good and reliable hosting and booked for 2 years on hostinger', '2.50', 'Y', 'N', 'Y', NULL, '2020-01-18', 'N', 0, NULL, NULL, '2020-01-20 10:23:08', '2020-01-20 22:24:16'),
(147, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on this system', '6.00', 'N', 'N', 'Y', NULL, '2020-01-21', 'N', 0, NULL, NULL, '2020-01-21 03:35:55', '2020-01-21 15:36:18'),
(148, 8, 'Mayank Patel', 56, 127, 'Development', 'Worked on development of project.', '3.00', 'N', 'N', 'Y', NULL, '2020-01-21', 'N', 0, NULL, NULL, '2020-01-21 03:36:22', '2020-01-21 15:36:48'),
(149, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on portal work', '6.00', 'N', 'N', 'Y', NULL, '2020-01-22', 'N', 0, NULL, NULL, '2020-01-22 02:56:40', '2020-01-22 14:57:06'),
(150, 8, 'Mayank Patel', 33, 113, 'View updates on google my business page', 'digital marketing tasks', '3.50', 'N', 'N', 'Y', NULL, '2020-01-22', 'N', 0, NULL, NULL, '2020-01-22 02:57:09', '2020-01-22 14:57:40'),
(151, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Support', '2.50', 'N', 'N', 'Y', NULL, '2020-01-23', 'N', 0, NULL, NULL, '2020-01-23 06:10:52', '2020-01-23 18:11:11'),
(152, 8, 'Mayank Patel', 54, 124, 'Server issue fixes', 'Worked on this task for connecting remote database to workbench', '2.50', 'N', 'N', 'Y', NULL, '2020-01-23', 'N', 0, NULL, NULL, '2020-01-23 06:11:15', '2020-01-23 18:11:51'),
(153, 8, 'Mayank Patel', 31, 20, 'Portal Work', 'Worked on inventory management system', '3.00', 'N', 'N', 'Y', NULL, '2020-01-23', 'N', 0, NULL, NULL, '2020-01-23 06:11:53', '2020-01-23 18:12:17'),
(154, 8, 'Mayank Patel', 33, 115, 'Create structure of links like document', 'Learning about structure of links', '1.00', 'N', 'N', 'Y', NULL, '2020-01-23', 'N', 0, NULL, NULL, '2020-01-23 06:12:46', '2020-01-23 18:13:17'),
(155, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on inventory management', '2.00', 'N', 'N', 'Y', NULL, '2020-01-24', 'N', 0, NULL, NULL, '2020-01-24 04:52:00', '2020-01-24 04:52:20'),
(156, 8, 'Mayank Patel', 33, 122, 'Digital Marketing Learning', 'Worked on learning', '3.50', 'Y', 'N', 'Y', NULL, '2020-01-25', 'N', 0, NULL, NULL, '2020-01-30 02:52:00', '2020-01-30 02:52:33'),
(157, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on docs heart project', '9.00', 'N', 'N', 'Y', NULL, '2020-01-27', 'N', 0, NULL, NULL, '2020-01-30 02:52:36', '2020-01-30 02:53:32'),
(158, 8, 'Mayank Patel', 33, 122, 'Digital Marketing Learning', 'Worked on learning digital marketing', '2.00', 'N', 'N', 'Y', NULL, '2020-01-28', 'N', 0, NULL, NULL, '2020-01-30 02:53:46', '2020-01-30 02:54:18'),
(159, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on react J\'s ', '8.00', 'N', 'N', 'Y', NULL, '2020-01-28', 'N', 0, NULL, NULL, '2020-01-30 02:54:21', '2020-01-30 02:54:39'),
(160, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on inventory management system', '2.00', 'N', 'N', 'Y', NULL, '2020-01-29', 'N', 0, NULL, NULL, '2020-01-30 02:54:41', '2020-01-30 02:55:03'),
(161, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on docs heart project', '8.50', 'N', 'N', 'Y', NULL, '2020-01-29', 'N', 0, NULL, NULL, '2020-01-30 02:55:05', '2020-01-30 02:55:33'),
(162, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on backup of project databases', '1.00', 'N', 'N', 'Y', NULL, '2020-01-30', 'N', 0, NULL, NULL, '2020-01-30 02:55:45', '2020-01-30 02:56:18'),
(163, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on Heart Docs', '8.00', 'N', 'N', 'Y', NULL, '2020-01-30', 'N', 0, NULL, NULL, '2020-01-30 02:30:57', '2020-01-30 14:31:43'),
(164, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on inventory dispatch flow.', '0.75', 'N', 'N', 'Y', NULL, '2020-01-30', 'N', 0, NULL, NULL, '2020-01-30 02:31:49', '2020-01-30 14:32:34'),
(165, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on heartdocs project', '8.00', 'N', 'N', 'Y', NULL, '2020-01-31', 'N', 0, NULL, NULL, '2020-02-01 11:47:48', '2020-02-01 11:48:23'),
(166, 8, 'Mayank Patel', 56, 126, 'Design work on this project', 'Discussion with client and analysis about modifications', '2.00', 'N', 'N', 'Y', NULL, '2020-01-31', 'N', 0, NULL, NULL, '2020-02-01 11:48:50', '2020-02-01 11:49:29'),
(167, 8, 'Mayank Patel', 33, 115, 'Create structure of links like document', 'Worked on digital marketing', '3.00', 'Y', 'N', 'Y', NULL, '2020-02-01', 'N', 0, NULL, NULL, '2020-02-03 06:18:15', '2020-02-03 18:18:44'),
(168, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on design part of docs heart project', '2.50', 'N', 'N', 'Y', NULL, '2020-02-03', 'N', 0, NULL, NULL, '2020-02-03 06:18:47', '2020-02-03 18:19:21'),
(169, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Meeting at bharuch with aloksir', '6.00', 'N', 'N', 'Y', NULL, '2020-02-03', 'N', 0, NULL, NULL, '2020-02-03 06:19:23', '2020-02-03 18:19:47'),
(170, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on enhancement', '5.00', 'N', 'N', 'Y', NULL, '2020-02-04', 'N', 0, NULL, NULL, '2020-02-04 02:11:22', '2020-02-04 14:11:44'),
(171, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on dispatch, all activities and bug fixes tasks.', '4.00', 'N', 'N', 'Y', NULL, '2020-02-04', 'N', 0, NULL, NULL, '2020-02-04 02:11:48', '2020-02-04 14:12:14'),
(172, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Worked on returned items', '1.50', 'N', 'N', 'Y', NULL, '2020-02-06', 'N', 0, NULL, NULL, '2020-02-06 04:30:17', '2020-02-06 04:30:42'),
(173, 8, 'Mayank Patel', 17, 39, 'Worked on front-end side', 'Worked on client changes', '4.00', 'N', 'N', 'Y', NULL, '2020-02-05', 'N', 0, NULL, NULL, '2020-02-06 04:31:02', '2020-02-06 04:31:26'),
(174, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on nau support', '4.00', 'N', 'N', 'Y', NULL, '2020-02-05', 'N', 0, NULL, NULL, '2020-02-06 04:31:29', '2020-02-06 04:31:53'),
(175, 8, 'Mayank Patel', 33, 115, 'Create structure of links like document', 'Worked on structure Data', '0.75', 'N', 'N', 'Y', NULL, '2020-02-05', 'N', 0, NULL, NULL, '2020-02-06 04:32:41', '2020-02-06 04:33:15'),
(176, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU tasks based on requirement', '3.00', 'N', 'N', 'Y', NULL, '2020-02-07', 'N', 0, NULL, NULL, '2020-02-08 08:30:21', '2020-02-08 08:30:47'),
(177, 8, 'Mayank Patel', 54, 124, 'Server issue fixes', 'Learning about lampp installation on Linux mint and other important software', '6.00', 'N', 'N', 'Y', NULL, '2020-02-07', 'N', 0, NULL, NULL, '2020-02-08 08:30:51', '2020-02-08 08:31:31'),
(178, 8, 'Mayank Patel', 56, 128, 'Support after development', 'Discussion and minor changes', '3.00', 'Y', 'N', 'Y', NULL, '2020-02-08', 'N', 0, NULL, NULL, '2020-02-08 06:38:38', '2020-02-08 18:39:12'),
(179, 8, 'Mayank Patel', 54, 124, 'Server issue fixes', 'Installation of lamp on Linux mint', '2.00', 'Y', 'N', 'Y', NULL, '2020-02-08', 'N', 0, NULL, NULL, '2020-02-08 06:39:14', '2020-02-08 18:39:43'),
(180, 8, 'Mayank Patel', 31, 13, 'Cloudswift Portal Work', 'Bug fixes', '2.50', 'Y', 'N', 'Y', NULL, '2020-02-08', 'N', 0, NULL, NULL, '2020-02-08 06:39:45', '2020-02-08 18:40:13'),
(181, 8, 'Mayank Patel', 33, 122, 'Digital Marketing Learning', 'Worked on this task', '3.50', 'Y', 'N', 'Y', NULL, '2020-02-09', 'N', 0, NULL, NULL, '2020-02-12 06:03:15', '2020-02-12 06:03:36'),
(182, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU Tasks for enhancement', '8.00', 'N', 'N', 'Y', NULL, '2020-02-10', 'N', 0, NULL, NULL, '2020-02-12 06:03:40', '2020-02-12 06:04:09'),
(183, 8, 'Mayank Patel', 54, 124, 'Server issue fixes', 'Worked on linux server issues.', '2.50', 'N', 'N', 'Y', NULL, '2020-02-10', 'N', 0, NULL, NULL, '2020-02-12 06:04:12', '2020-02-12 06:04:38'),
(184, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU tasks for development on Training Research Extension tasks', '4.50', 'N', 'N', 'Y', NULL, '2020-02-11', 'N', 0, NULL, NULL, '2020-02-12 06:04:46', '2020-02-12 06:05:42'),
(185, 8, 'Mayank Patel', 17, 40, 'Worked on Backend side customization', 'Worked on this tasks', '2.50', 'N', 'N', 'Y', NULL, '2020-02-11', 'N', 0, NULL, NULL, '2020-02-12 06:05:45', '2020-02-12 06:06:07'),
(186, 8, 'Mayank Patel', 33, 115, 'Create structure of links like document', 'Learning about tasks', '2.00', 'N', 'N', 'Y', NULL, '2020-02-11', 'N', 0, NULL, NULL, '2020-02-12 06:06:10', '2020-02-12 06:06:37'),
(187, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on tre module', '8.50', 'N', 'N', 'Y', NULL, '2020-02-12', 'N', 0, NULL, NULL, '2020-02-21 09:51:38', '2020-02-21 21:52:22'),
(188, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on tre UI ux part', '9.00', 'N', 'N', 'Y', NULL, '2020-02-13', 'N', 0, NULL, NULL, '2020-02-21 09:52:25', '2020-02-21 21:52:54'),
(189, 8, 'Mayank Patel', 56, 126, 'Design work on this project', 'Worked on this project for development', '3.00', 'N', 'N', 'Y', NULL, '2020-02-13', 'N', 0, NULL, NULL, '2020-02-21 09:52:56', '2020-02-21 21:53:22'),
(190, 8, 'Mayank Patel', 58, 134, 'To work on development area', 'Worked on frontend area and completed project at initial end', '15.00', 'N', 'N', 'Y', NULL, '2020-02-14', 'N', 0, NULL, NULL, '2020-02-21 09:59:38', '2020-02-21 22:00:16'),
(191, 8, 'Mayank Patel', 58, 134, 'To work on development area', 'Worked on this project and begin SEO ', '12.00', 'Y', 'N', 'Y', NULL, '2020-02-15', 'N', 0, NULL, NULL, '2020-02-21 10:00:18', '2020-02-21 22:01:32'),
(192, 8, 'Mayank Patel', 58, 134, 'To work on development area', 'Worked on analysis and QA part', '4.00', 'Y', 'N', 'Y', NULL, '2020-02-15', 'N', 0, NULL, NULL, '2020-02-21 10:00:18', '2020-02-21 22:02:37'),
(193, 8, 'Mayank Patel', 59, 133, 'To work on developing area', 'Worked on this project for begin website', '14.50', 'Y', 'N', 'Y', NULL, '2020-02-16', 'N', 0, NULL, NULL, '2020-02-21 10:02:45', '2020-02-21 22:03:15'),
(194, 8, 'Mayank Patel', 59, 133, 'To work on developing area', 'Discussion with design team member and worked on SEO tasks', '4.00', 'Y', 'N', 'Y', NULL, '2020-02-16', 'N', 0, NULL, NULL, '2020-02-21 10:03:27', '2020-02-21 22:05:33'),
(195, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Tre work', '4.00', 'Y', 'N', 'Y', NULL, '2020-02-16', 'N', 0, NULL, NULL, '2020-02-21 10:04:21', '2020-02-21 22:04:43'),
(196, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'NAU tasks', '12.00', 'N', 'N', 'Y', NULL, '2020-02-17', 'N', 0, NULL, NULL, '2020-02-21 10:06:22', '2020-02-21 22:06:45'),
(197, 8, 'Mayank Patel', 56, 126, 'Design work on this project', 'Discussion and minor changes', '2.00', 'N', 'N', 'Y', NULL, '2020-02-17', 'N', 0, NULL, NULL, '2020-02-21 10:06:47', '2020-02-21 22:07:16'),
(198, 8, 'Mayank Patel', 60, 135, 'To work on this project ', 'Beginning work for this project', '6.50', 'N', 'N', 'Y', NULL, '2020-02-18', 'N', 0, NULL, NULL, '2020-02-21 10:07:29', '2020-02-21 22:08:17'),
(199, 8, 'Mayank Patel', 60, 135, 'To work on this project ', 'Setup server and domains', '6.00', 'N', 'N', 'Y', NULL, '2020-02-18', 'N', 0, NULL, NULL, '2020-02-21 10:08:25', '2020-02-21 22:08:59'),
(200, 8, 'Mayank Patel', 59, 133, 'To work on developing area', 'Worked on this area', '12.00', 'N', 'N', 'Y', NULL, '2020-02-19', 'N', 0, NULL, NULL, '2020-02-21 10:09:05', '2020-02-21 22:09:29'),
(201, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on this tasks', '8.50', 'N', 'N', 'Y', NULL, '2020-02-19', 'N', 0, NULL, NULL, '2020-02-21 10:09:45', '2020-02-21 22:10:19'),
(202, 8, 'Mayank Patel', 33, 12, 'To create Social Networking Connection', 'Worked on the task', '3.00', 'N', 'N', 'Y', NULL, '2020-02-19', 'N', 0, NULL, NULL, '2020-02-21 10:10:24', '2020-02-21 22:10:54'),
(203, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'NAU Tre work', '10.00', 'N', 'N', 'Y', NULL, '2020-02-20', 'N', 0, NULL, NULL, '2020-02-21 10:11:14', '2020-02-21 22:12:09'),
(204, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'NAU tasks', '10.00', 'N', 'N', 'Y', NULL, '2020-02-21', 'N', 0, NULL, NULL, '2020-02-21 10:12:11', '2020-02-21 22:12:32'),
(205, 19, 'Ekta Patel', 54, 124, 'Server issue fixes', 'Worked on server setup of freshnpurewateruk', '10.00', 'Y', 'N', 'Y', NULL, '2020-02-01', 'N', 0, NULL, NULL, '2020-02-21 10:25:38', '2020-02-21 22:26:23'),
(206, 19, 'Ekta Patel', 54, 124, 'Server issue fixes', 'Worked on this task for setting emails and other things for freshnpurewateruk', '12.00', 'N', 'N', 'Y', NULL, '2020-02-03', 'N', 0, NULL, NULL, '2020-02-21 10:26:25', '2020-02-21 22:27:50'),
(207, 19, 'Ekta Patel', 54, 124, 'Server issue fixes', 'Worked on create cronjob', '12.00', 'N', 'N', 'Y', NULL, '2020-02-04', 'N', 0, NULL, NULL, '2020-02-21 10:28:15', '2020-02-21 22:28:57'),
(208, 19, 'Ekta Patel', 54, 124, 'Server issue fixes', 'Working on cronjob', '4.50', 'Y', 'N', 'Y', NULL, '2020-02-09', 'N', 0, NULL, NULL, '2020-02-21 10:28:59', '2020-02-21 22:29:42'),
(209, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Nau work on tre', '10.00', 'N', 'N', 'Y', NULL, '2020-02-24', 'N', 0, NULL, NULL, '2020-02-26 06:19:04', '2020-02-26 06:20:18'),
(210, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU', '3.50', 'N', 'N', 'Y', NULL, '2020-02-25', 'N', 0, NULL, NULL, '2020-02-26 06:19:29', '2020-02-26 06:20:06'),
(211, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on Nau', '7.00', 'Y', 'N', 'Y', NULL, '2020-02-23', 'N', 0, NULL, NULL, '2020-02-26 06:20:22', '2020-02-26 06:21:09'),
(212, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU tasks', '8.00', 'N', 'N', 'Y', NULL, '2020-02-26', 'N', 0, NULL, NULL, '2020-02-27 07:39:46', '2020-02-27 07:40:08'),
(213, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU tasks', '3.00', 'N', 'N', 'Y', NULL, '2020-02-27', 'N', 0, NULL, NULL, '2020-02-27 07:40:11', '2020-02-27 07:40:47'),
(214, 8, 'Mayank Patel', 59, 133, 'To work on developing area', 'Worked on SEO things', '3.50', 'N', 'N', 'Y', NULL, '2020-02-28', 'N', 0, NULL, NULL, '2020-02-29 08:17:07', '2020-02-29 08:17:29'),
(215, 8, 'Mayank Patel', 42, 109, 'Implementation of HRMS', 'Worked on training enhancement', '7.00', 'N', 'N', 'Y', NULL, '2020-02-28', 'N', 0, NULL, NULL, '2020-02-29 08:17:37', '2020-02-29 08:18:15'),
(216, 8, 'Mayank Patel', 36, 92, 'CMS Development', 'Worked on design changes', '3.50', 'Y', 'N', 'Y', NULL, '2020-02-29', 'N', 0, NULL, NULL, '2020-02-29 08:18:20', '2020-02-29 08:18:52'),
(217, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU tasks', '8.50', 'N', 'N', 'Y', NULL, '2020-03-02', 'N', 0, NULL, NULL, '2020-03-05 01:03:46', '2020-03-05 01:04:11'),
(218, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Working on irada tasks', '9.00', 'N', 'N', 'Y', NULL, '2020-03-03', 'N', 0, NULL, NULL, '2020-03-05 01:04:15', '2020-03-05 01:04:56'),
(219, 8, 'Mayank Patel', 56, 127, 'Development', 'Worked on creating new page custom label water', '2.00', 'N', 'N', 'Y', NULL, '2020-03-04', 'N', 0, NULL, NULL, '2020-03-05 01:04:59', '2020-03-05 01:05:32'),
(220, 8, 'Mayank Patel', 60, 135, 'To work on this project ', 'Worked on this task for creating new project and set up in local machine', '2.50', 'N', 'N', 'Y', NULL, '2020-03-04', 'N', 0, NULL, NULL, '2020-03-05 01:05:35', '2020-03-05 01:06:32'),
(221, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on irada tasks', '6.50', 'N', 'N', 'Y', NULL, '2020-03-04', 'N', 0, NULL, NULL, '2020-03-05 01:06:35', '2020-03-05 01:07:00'),
(222, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on NAU tasks', '10.00', 'N', 'N', 'Y', NULL, '2020-03-05', 'N', 0, NULL, NULL, '2020-03-09 07:08:51', '2020-03-09 07:09:29'),
(223, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Worked on enhancement', '8.50', 'N', 'N', 'Y', NULL, '2020-03-06', 'N', 0, NULL, NULL, '2020-03-12 10:57:19', '2020-03-12 10:57:51'),
(224, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Client meeting at Bharuch', '8.50', 'Y', 'N', 'Y', NULL, '2020-03-07', 'N', 0, NULL, NULL, '2020-03-12 10:57:57', '2020-03-12 10:58:49'),
(225, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Irada tasks', '9.00', 'N', 'N', 'Y', NULL, '2020-03-09', 'N', 0, NULL, NULL, '2020-03-12 10:59:08', '2020-03-12 10:59:40'),
(226, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Irada work', '10.00', 'N', 'N', 'Y', NULL, '2020-03-11', 'N', 0, NULL, NULL, '2020-03-12 10:59:43', '2020-03-12 11:03:01'),
(227, 8, 'Mayank Patel', 51, 123, 'NAU Tasks', 'Irada foundation work and deployment on client server', '6.00', 'N', 'N', 'Y', NULL, '2020-03-12', 'N', 0, NULL, NULL, '2020-03-13 06:05:57', '2020-03-13 06:06:28'),
(228, 8, 'Mayank Patel', 60, 135, 'To work on this project ', 'Worked on confeeni task for creating build', '3.00', 'N', 'N', 'Y', NULL, '2020-03-12', 'N', 0, NULL, NULL, '2020-03-13 06:06:32', '2020-03-13 06:07:16'),
(229, 8, 'Mayank Patel', 59, 133, 'To work on developing area', 'Digital marketing work', '3.00', 'N', 'N', 'Y', NULL, '2020-03-13', 'N', 0, NULL, NULL, '2020-03-13 06:10:02', '2020-03-13 06:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `timecard_ot`
--

CREATE TABLE `timecard_ot` (
  `ot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `month` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `total_hours` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ot_date` datetime DEFAULT NULL,
  `ot_day` varchar(20) DEFAULT NULL,
  `ot_type` varchar(20) DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timecard_ot`
--

INSERT INTO `timecard_ot` (`ot_id`, `user_id`, `name`, `month`, `year`, `total_hours`, `ot_date`, `ot_day`, `ot_type`, `display_order`, `display_status`, `deleted_status`, `deleted_by`, `deleted_by_name`, `deleted_time`, `created_at`, `updated_at`) VALUES
(1, 8, 'Mayank Patel', 12, 2019, '1.00', '2019-12-02 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(2, 8, 'Mayank Patel', 12, 2019, '4.00', '2019-12-04 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(3, 8, 'Mayank Patel', 12, 2019, '0.50', '2019-12-06 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(4, 8, 'Mayank Patel', 12, 2019, '3.50', '2019-12-11 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(5, 8, 'Mayank Patel', 12, 2019, '3.25', '2019-12-12 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(6, 8, 'Mayank Patel', 12, 2019, '0.50', '2019-12-13 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(7, 8, 'Mayank Patel', 12, 2019, '0.50', '2019-12-18 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(8, 8, 'Mayank Patel', 12, 2019, '0.25', '2019-12-23 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(9, 8, 'Mayank Patel', 12, 2019, '0.50', '2019-12-26 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(10, 8, 'Mayank Patel', 12, 2019, '0.50', '2019-12-27 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(11, 8, 'Mayank Patel', 12, 2019, '5.00', '2019-12-10 00:00:00', 'Tuesday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(12, 8, 'Mayank Patel', 12, 2019, '1.50', '2019-12-31 00:00:00', 'Tuesday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(13, 8, 'Mayank Patel', 12, 2019, '8.50', '2019-12-01 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(14, 8, 'Mayank Patel', 12, 2019, '11.50', '2019-12-14 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(15, 8, 'Mayank Patel', 12, 2019, '3.50', '2019-12-15 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(16, 8, 'Mayank Patel', 12, 2019, '10.00', '2019-12-21 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(17, 8, 'Mayank Patel', 12, 2019, '3.00', '2019-12-22 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(18, 8, 'Mayank Patel', 12, 2019, '6.50', '2019-12-29 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-01-08 08:53:16'),
(19, 8, 'Mayank Patel', 1, 2020, '0.50', '2020-01-02 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(20, 8, 'Mayank Patel', 1, 2020, '0.50', '2020-01-03 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(21, 8, 'Mayank Patel', 1, 2020, '2.50', '2020-01-06 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(22, 8, 'Mayank Patel', 1, 2020, '1.00', '2020-01-07 00:00:00', 'Tuesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(23, 8, 'Mayank Patel', 1, 2020, '2.50', '2020-01-08 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(24, 8, 'Mayank Patel', 1, 2020, '1.50', '2020-01-09 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(25, 8, 'Mayank Patel', 1, 2020, '1.50', '2020-01-10 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(26, 8, 'Mayank Patel', 1, 2020, '0.50', '2020-01-16 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(27, 8, 'Mayank Patel', 1, 2020, '2.50', '2020-01-17 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(28, 8, 'Mayank Patel', 1, 2020, '0.50', '2020-01-21 00:00:00', 'Tuesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(29, 8, 'Mayank Patel', 1, 2020, '1.00', '2020-01-22 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(30, 8, 'Mayank Patel', 1, 2020, '0.50', '2020-01-23 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(31, 8, 'Mayank Patel', 1, 2020, '0.50', '2020-01-27 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(32, 8, 'Mayank Patel', 1, 2020, '1.50', '2020-01-28 00:00:00', 'Tuesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(33, 8, 'Mayank Patel', 1, 2020, '2.00', '2020-01-29 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(34, 8, 'Mayank Patel', 1, 2020, '1.25', '2020-01-30 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(35, 8, 'Mayank Patel', 1, 2020, '1.50', '2020-01-31 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(36, 8, 'Mayank Patel', 1, 2020, '1.50', '2020-01-13 00:00:00', 'Monday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(37, 8, 'Mayank Patel', 1, 2020, '5.00', '2020-01-15 00:00:00', 'Wednesday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(38, 8, 'Mayank Patel', 1, 2020, '6.50', '2020-01-24 00:00:00', 'Friday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(39, 8, 'Mayank Patel', 1, 2020, '7.50', '2020-01-04 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(40, 8, 'Mayank Patel', 1, 2020, '5.50', '2020-01-05 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(41, 8, 'Mayank Patel', 1, 2020, '12.00', '2020-01-11 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(42, 8, 'Mayank Patel', 1, 2020, '9.00', '2020-01-12 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(43, 8, 'Mayank Patel', 1, 2020, '11.00', '2020-01-18 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(44, 8, 'Mayank Patel', 1, 2020, '7.00', '2020-01-19 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(45, 8, 'Mayank Patel', 1, 2020, '3.50', '2020-01-25 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-02-04 05:04:18'),
(46, 8, 'Mayank Patel', 2, 2020, '12.00', '2020-02-03 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(47, 8, 'Mayank Patel', 2, 2020, '12.50', '2020-02-04 00:00:00', 'Tuesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(48, 8, 'Mayank Patel', 2, 2020, '0.25', '2020-02-05 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(49, 8, 'Mayank Patel', 2, 2020, '0.50', '2020-02-07 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(50, 8, 'Mayank Patel', 2, 2020, '2.00', '2020-02-10 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(51, 8, 'Mayank Patel', 2, 2020, '0.50', '2020-02-11 00:00:00', 'Tuesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(52, 8, 'Mayank Patel', 2, 2020, '3.50', '2020-02-13 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(53, 8, 'Mayank Patel', 2, 2020, '6.50', '2020-02-14 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(54, 8, 'Mayank Patel', 2, 2020, '5.50', '2020-02-17 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(55, 8, 'Mayank Patel', 2, 2020, '4.00', '2020-02-18 00:00:00', 'Tuesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(56, 8, 'Mayank Patel', 2, 2020, '15.00', '2020-02-19 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(57, 8, 'Mayank Patel', 2, 2020, '1.50', '2020-02-20 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(58, 8, 'Mayank Patel', 2, 2020, '1.50', '2020-02-21 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(59, 8, 'Mayank Patel', 2, 2020, '1.50', '2020-02-24 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(60, 8, 'Mayank Patel', 2, 2020, '2.00', '2020-02-28 00:00:00', 'Friday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(61, 8, 'Mayank Patel', 2, 2020, '7.00', '2020-02-06 00:00:00', 'Thursday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(62, 8, 'Mayank Patel', 2, 2020, '5.00', '2020-02-25 00:00:00', 'Tuesday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(63, 8, 'Mayank Patel', 2, 2020, '5.50', '2020-02-27 00:00:00', 'Thursday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(64, 8, 'Mayank Patel', 2, 2020, '13.00', '2020-02-01 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(65, 8, 'Mayank Patel', 2, 2020, '7.50', '2020-02-08 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(66, 8, 'Mayank Patel', 2, 2020, '8.00', '2020-02-09 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(67, 8, 'Mayank Patel', 2, 2020, '16.00', '2020-02-15 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(68, 8, 'Mayank Patel', 2, 2020, '22.50', '2020-02-16 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(69, 8, 'Mayank Patel', 2, 2020, '7.00', '2020-02-23 00:00:00', 'Sunday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(70, 8, 'Mayank Patel', 2, 2020, '3.50', '2020-02-29 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-03-01 13:56:00'),
(71, 8, 'Mayank Patel', 3, 2020, '0.50', '2020-03-03 00:00:00', 'Tuesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03'),
(72, 8, 'Mayank Patel', 3, 2020, '2.50', '2020-03-04 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03'),
(73, 8, 'Mayank Patel', 3, 2020, '1.50', '2020-03-05 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03'),
(74, 8, 'Mayank Patel', 3, 2020, '0.50', '2020-03-09 00:00:00', 'Monday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03'),
(75, 8, 'Mayank Patel', 3, 2020, '1.50', '2020-03-11 00:00:00', 'Wednesday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03'),
(76, 8, 'Mayank Patel', 3, 2020, '0.50', '2020-03-12 00:00:00', 'Thursday', 'OT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03'),
(77, 8, 'Mayank Patel', 3, 2020, '5.50', '2020-03-13 00:00:00', 'Friday', 'LT', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03'),
(78, 8, 'Mayank Patel', 3, 2020, '8.50', '2020-03-07 00:00:00', 'Saturday', 'WE', 0, 'Y', 'N', 0, NULL, NULL, NULL, '2020-04-01 09:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_pin` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_question_id` int(11) NOT NULL DEFAULT '0',
  `security_answer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_on_listing` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `show_action_checkbox` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'users',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `display_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `fail_attempt` tinyint(4) NOT NULL DEFAULT '0',
  `blocked` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'website',
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'windows',
  `deleted_status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_pin`, `name`, `first_name`, `last_name`, `email`, `password`, `birth_date`, `role_id`, `access_token`, `security_question_id`, `security_answer`, `user_address1`, `user_address2`, `user_city`, `user_state`, `user_zipcode`, `user_country`, `contact_number`, `display_on_listing`, `show_action_checkbox`, `api_token`, `item_type`, `display_order`, `display_status`, `fail_attempt`, `blocked`, `device`, `device_id`, `deleted_status`, `deleted_by`, `deleted_by_name`, `deleted_time`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Super', 'Administrator', 'mayank.patel104@gmail.com', 'TWF5YW5rQDIwMw==', '1987-04-10', 1, '', 3, 'Parul', '134 Demo street', '2', 'Vadodara', 'GJ', '299999', 'IN', '222992999992', 'N', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, '', '2019-10-11 07:01:49', '2019-01-19 02:27:37', '2019-11-20 11:07:48'),
(2, 0, NULL, 'Mrugesh', 'Rana', 'mrugeshdigiflux@yopmail.com', 'TWF5YW5rQDIwMw==', '1987-04-10', 3, 'bWF5YW5rcEB5b3BtYWlsLmNvbQ==.U2l0ZSBBZG1pbg==.2.1570242411', 2, 'vadodara', '123 Main street', 'new york', 'Vadodara', 'GJ', '390019', 'IN', '9898989898', 'Y', 'Y', NULL, 'users', 0, 'N', 0, 'N', 'website', 'windows', 'N', 0, '', '2019-10-11 07:21:21', '2019-01-19 06:37:39', '2019-11-08 03:08:41'),
(3, 0, NULL, 'Jashmit', 'Vrushak', 'jasmitdigiflux@yopmail.com', 'TWF5YW5rQDIwMw==', '1991-10-31', 3, NULL, 2, 'Vadodara', '123 Main street', 'new york', 'Vadodara', 'GJ', '390019', 'India', '09898989898', 'Y', 'Y', NULL, 'users', 0, 'N', 0, 'N', 'website', 'windows', 'N', 0, '', '2019-10-11 07:15:07', '2019-01-20 22:29:56', '2019-11-14 03:25:29'),
(4, 0, NULL, 'Hemal', 'Pandya', 'hemalp@yopmail.com', 'TWF5YW5rQDIwMw==', NULL, 2, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-08 03:11:25', NULL),
(5, 0, NULL, 'Chandra', 'Snacks', 'chandrasnacks@yahoo.com', 'TWF5YW5rQDIwMw==', NULL, 4, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-08 03:12:59', NULL),
(6, 0, NULL, 'Maulika', 'Vasava', 'maulikadigiflux@yopmail.com', 'TWF5YW5rQDIwMw==', NULL, 3, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'N', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-14 03:14:37', NULL),
(8, 0, NULL, 'Mayank', 'Patel', 'mayank@cloudswiftsolutions.com', 'TWF5YW5rQDIwMw==', NULL, 3, 'bWF5YW5rQHlvcG1haWwuY29t.TWF5YW5rIFBhdGVs.8.1574131455', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-14 03:52:03', NULL),
(7, 0, NULL, 'Internal', 'Work', 'internalworkdigiflux@yopmail.com', 'TWF5YW5rQDIwMw==', NULL, 3, 'aW50ZXJuYWx3b3JrQHlvcG1haWwuY29t.SW50ZXJuYWwgV29yaw==.7.1573744820', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-14 03:19:52', NULL),
(9, 0, NULL, 'Amanpreet Singh', 'Handa', 'info@gaudairy.com', 'TWF5YW5rQDIwMw==', NULL, 4, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-17 02:48:05', '2019-11-17 12:51:57'),
(10, 0, NULL, 'Hemal', 'Pandya', 'hemalpandya92@gmail.com', 'TWF5YW5rQDIwMw==', NULL, 4, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-08 03:12:59', NULL),
(11, 0, NULL, 'Jay', 'Vyas', 'mcw.help.center@gmail.com', 'TWF5YW5rQDIwMw==', NULL, 4, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-08 03:12:59', '2019-11-17 12:51:40'),
(12, 0, NULL, 'Mehul', 'Trivedi', 'info.thakarfertichems@gmail.com', 'TWF5YW5rQDIwMw==', NULL, 4, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-08 03:12:59', NULL),
(13, 0, NULL, 'Hiren', 'Patel', 'hirenpatel1931@gmail.com', 'TWF5YW5rQDIwMw==', NULL, 4, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-08 03:12:59', NULL),
(14, 0, NULL, 'Sanjana', 'Shah', 'shahsana2311@gmail.com', 'TWF5YW5rQDIwMw==', NULL, 4, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-08 03:12:59', NULL),
(15, 0, NULL, 'Internal', 'Client', 'internal@yopmail.com', 'TWF5YW5rQDIwMw==', NULL, 4, 'aW50ZXJuYWxAeW9wbWFpbC5jb20=.SW50ZXJuYWwgQ2xpZW50.15.1573967875', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-17 05:17:37', NULL),
(16, 0, NULL, 'Nirav', 'Vakal', 'sales@madhuexports.com', 'TWF5YW5rQDIwMw==', NULL, 4, 'c2FsZXNAbWFkaHVleHBvcnRzLmNvbQ==.TmlyYXYgVmFrYWw=.16.1573967954', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2019-11-17 05:18:52', NULL),
(17, 0, NULL, 'Bhargav', 'Dave', 'davebhargav9892@gmail.com', 'TWF5YW5rQDIwMw==', NULL, 4, 'ZGF2ZWJoYXJnYXY5ODkyQGdtYWlsLmNvbQ==.QmhhcmdhdiBEYXZl.17.1574130831', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'Y', 0, NULL, NULL, '2019-11-19 02:32:36', NULL),
(18, 0, NULL, 'Mehul Bhai', 'Freshnpurewateruk', 'mranaradhe@gmail.com', NULL, NULL, 4, 'bXJhbmFyYWRoZUBnbWFpbC5jb20=.TWVodWwgQmhhaSBGcmVzaG5wdXJld2F0ZXJ1aw==.18.1579558304', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2020-01-20 10:09:39', NULL),
(19, 0, NULL, 'Ekta', 'Patel', 'ekta318@yopmail.com', 'TWF5YW5rQDIwMw==', NULL, 3, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, '2020-02-21 10:21:31', '2020-02-21 22:23:13'),
(20, 0, 'Mayank', 'Super', 'Administrator', 'mayank.patel104@gmail.com', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, NULL, NULL),
(21, 0, 'Mayank', 'Super', 'Administrator', 'mayank.patel104@gmail.com', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, NULL, NULL),
(22, 0, 'Mayank', 'Super', 'Administrator', 'mayank.patel104@gmail.com', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, NULL, NULL),
(23, 0, 'Mayank', 'Super', 'Administrator', 'mayank.patel104@gmail.com', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, 'users', 0, 'Y', 0, 'N', 'website', 'windows', 'N', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_registration`
--

CREATE TABLE `website_registration` (
  `website_registration_id` int(11) NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `registered_date` date DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `expired_notification_date` date DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `client_contact` varchar(255) DEFAULT NULL,
  `client_registration_date` date DEFAULT NULL,
  `domain_registration_on` varchar(255) DEFAULT NULL,
  `our_domain_registration` enum('Y','N') NOT NULL DEFAULT 'N',
  `hosted_on` varchar(255) DEFAULT NULL,
  `our_hosting_registration` enum('Y','N') NOT NULL DEFAULT 'N',
  `cloudflare_registered` enum('Y','N') NOT NULL DEFAULT 'N',
  `description` text,
  `display_status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `deleted_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_registration`
--

INSERT INTO `website_registration` (`website_registration_id`, `website_name`, `website_url`, `registered_date`, `expired_date`, `expired_notification_date`, `client_name`, `client_email`, `client_contact`, `client_registration_date`, `domain_registration_on`, `our_domain_registration`, `hosted_on`, `our_hosting_registration`, `cloudflare_registered`, `description`, `display_status`, `deleted_status`, `created_at`, `updated_at`) VALUES
(1, 'Cloudswift Solutions', 'cloudswiftsolutions.com', '2020-03-02', '2029-11-10', '2029-10-10', 'Mayank Patel', 'mayank.patel104@gmail.com', '+91 9428455895', '2020-03-01', 'Namecheap', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(2, 'Genesis Enterprise', 'genesisenterprise.in', '2020-03-02', '2023-02-19', '2023-02-02', 'Mehul Rana', 'mranaradhe@gmail.com', '+1 281-683-6425', '2020-03-01', 'Namecheap', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(3, 'Fresh n pure water UK', 'freshnpurewateruk.com', '2020-03-02', '2030-01-17', '2029-12-17', 'Rumina Dariai', 'rumina.dariai@yahoo.com', '+44 777-603636', '2020-03-01', 'Namecheap', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(4, 'Comfeeni', 'comfeeni.com', '2020-03-02', '2021-05-02', '2021-03-02', 'Mehul Rana', 'mranaradhe@gmail.com', '+1 281-683-6425', '2020-03-01', 'GoDaddy', 'N', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(5, 'Param Exim', 'paramexim.com', '2020-03-02', '2020-03-02', '2020-03-02', 'Dhaval Patel', 'dhaval5959dj@gmail.com', '+91 9723364475', '2020-03-01', 'GoDaddy', 'Y', 'Hostinger', 'Y', 'N', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(6, 'JSK Automations', 'jskautomations.com', '2020-03-02', '2020-11-18', '2020-10-18', 'Sandeep Patel', 'sandeep36patel@gmail.com', '+91 7984613604', '2020-03-01', 'GoDaddy', 'Y', 'Hostinger', 'Y', 'N', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(7, 'Jaykrishna Software', 'jaykrishnasoftware.com', '2019-08-02', '2022-08-02', '2022-07-02', 'Hiren Patel', 'hirenpatel1931@gmail.com', '+91 9879618640', '2019-08-02', 'Hostinger', 'Y', 'Hostinger', 'Y', 'N', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(9, 'Thakar Fertilizers and Chemicals', 'thakarfertilizersandchemicals.com', '2019-05-20', '2021-05-20', '2021-04-20', 'Mehul Trivedi', 'mehul8314@gmail.com', '+91 6353002484', '2019-05-20', 'Hostinger', 'Y', 'Hostinger', 'Y', 'N', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(10, 'Mission4Fitness Com', 'mission4fitness.com', '2019-02-19', '2022-02-19', '2022-01-19', 'Vishal Tyagi', 'vishal_tyagi1008@yahoo.co.in', '+91 8800130725', '2019-02-19', 'Hostinger', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(11, 'Mission4Fitness In', 'mission4fitness.in', '2019-02-19', '2022-02-19', '2022-01-19', 'Vishal Tyagi', 'vishal_tyagi1008@yahoo.co.in', '+91 8800130725', '2019-02-19', 'Hostinger', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(12, 'Texas FSG', 'texas-fsg.com', '2020-02-06', '2023-02-06', '2023-01-06', 'Mehul Rana', 'mranaradhe@gmail.com', '+1 281-683-6425', '2023-02-06', 'Namecheap', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(13, 'Health N Hygiene', 'healthnhygiene.com', '2020-03-02', '2023-02-19', '2023-02-02', 'Mehul Rana', 'mranaradhe@gmail.com', '+1 281-683-6425', '2020-03-01', 'Namecheap', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(14, 'Beer Cocktail Delivery', 'beercocktaildelivery.com', '2020-02-06', '2023-02-06', '2023-01-06', 'Mehul Rana', 'mranaradhe@gmail.com', '+1 281-683-6425', '2023-02-06', 'Namecheap', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55'),
(15, 'Rex Liquor', 'rexliquor.com', '2020-02-06', '2023-02-06', '2023-01-06', 'Mehul Rana', 'mranaradhe@gmail.com', '+1 281-683-6425', '2023-02-06', 'Namecheap', 'Y', 'Hostinger', 'Y', 'Y', NULL, 'Y', 'N', '2020-03-02 09:01:55', '2020-03-02 03:31:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `ec_cart_product`
--
ALTER TABLE `ec_cart_product`
  ADD PRIMARY KEY (`cart_product_id`);

--
-- Indexes for table `ec_cashback_credit_transaction`
--
ALTER TABLE `ec_cashback_credit_transaction`
  ADD PRIMARY KEY (`cashbackcredit_transaction_id`);

--
-- Indexes for table `ec_cashback_transaction`
--
ALTER TABLE `ec_cashback_transaction`
  ADD PRIMARY KEY (`cashback_id`);

--
-- Indexes for table `ec_coupon`
--
ALTER TABLE `ec_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `ec_order`
--
ALTER TABLE `ec_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `ec_order_payment_details`
--
ALTER TABLE `ec_order_payment_details`
  ADD PRIMARY KEY (`order_payment_details_id`);

--
-- Indexes for table `ec_order_products`
--
ALTER TABLE `ec_order_products`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `ec_order_status`
--
ALTER TABLE `ec_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `ec_product_price`
--
ALTER TABLE `ec_product_price`
  ADD PRIMARY KEY (`product_price_id`);

--
-- Indexes for table `ec_product_reviews`
--
ALTER TABLE `ec_product_reviews`
  ADD PRIMARY KEY (`product_review_id`);

--
-- Indexes for table `ec_product_specifications`
--
ALTER TABLE `ec_product_specifications`
  ADD PRIMARY KEY (`product_specification_id`);

--
-- Indexes for table `ec_wishlist`
--
ALTER TABLE `ec_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`forms_id`);

--
-- Indexes for table `inv_dispatched`
--
ALTER TABLE `inv_dispatched`
  ADD PRIMARY KEY (`dispatched_id`);

--
-- Indexes for table `inv_inventories`
--
ALTER TABLE `inv_inventories`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `inv_inventories_activities`
--
ALTER TABLE `inv_inventories_activities`
  ADD PRIMARY KEY (`inventories_activities_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_logs`
--
ALTER TABLE `item_logs`
  ADD PRIMARY KEY (`item_log_id`);

--
-- Indexes for table `item_meta`
--
ALTER TABLE `item_meta`
  ADD PRIMARY KEY (`item_meta_id`);

--
-- Indexes for table `item_section`
--
ALTER TABLE `item_section`
  ADD PRIMARY KEY (`item_section_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_access`
--
ALTER TABLE `role_access`
  ADD PRIMARY KEY (`role_access_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `site_config_parent`
--
ALTER TABLE `site_config_parent`
  ADD PRIMARY KEY (`site_config_parent_id`);

--
-- Indexes for table `site_request`
--
ALTER TABLE `site_request`
  ADD PRIMARY KEY (`site_request_id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `subscriber_email_logs`
--
ALTER TABLE `subscriber_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `summary`
--
ALTER TABLE `summary`
  ADD PRIMARY KEY (`summary_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `task_activity`
--
ALTER TABLE `task_activity`
  ADD PRIMARY KEY (`task_activity_id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`task_comment_id`);

--
-- Indexes for table `timecard`
--
ALTER TABLE `timecard`
  ADD PRIMARY KEY (`timecard_id`);

--
-- Indexes for table `timecard_ot`
--
ALTER TABLE `timecard_ot`
  ADD PRIMARY KEY (`ot_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_registration`
--
ALTER TABLE `website_registration`
  ADD PRIMARY KEY (`website_registration_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_cart`
--
ALTER TABLE `ec_cart`
  MODIFY `cart_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ec_cart_product`
--
ALTER TABLE `ec_cart_product`
  MODIFY `cart_product_id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_cashback_credit_transaction`
--
ALTER TABLE `ec_cashback_credit_transaction`
  MODIFY `cashbackcredit_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_cashback_transaction`
--
ALTER TABLE `ec_cashback_transaction`
  MODIFY `cashback_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_coupon`
--
ALTER TABLE `ec_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_order`
--
ALTER TABLE `ec_order`
  MODIFY `order_id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_order_payment_details`
--
ALTER TABLE `ec_order_payment_details`
  MODIFY `order_payment_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_order_products`
--
ALTER TABLE `ec_order_products`
  MODIFY `order_product_id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_order_status`
--
ALTER TABLE `ec_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `item_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ec_product_price`
--
ALTER TABLE `ec_product_price`
  MODIFY `product_price_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ec_product_reviews`
--
ALTER TABLE `ec_product_reviews`
  MODIFY `product_review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec_product_specifications`
--
ALTER TABLE `ec_product_specifications`
  MODIFY `product_specification_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ec_wishlist`
--
ALTER TABLE `ec_wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `forms_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_dispatched`
--
ALTER TABLE `inv_dispatched`
  MODIFY `dispatched_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_inventories`
--
ALTER TABLE `inv_inventories`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inv_inventories_activities`
--
ALTER TABLE `inv_inventories_activities`
  MODIFY `inventories_activities_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_logs`
--
ALTER TABLE `item_logs`
  MODIFY `item_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_meta`
--
ALTER TABLE `item_meta`
  MODIFY `item_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `item_section`
--
ALTER TABLE `item_section`
  MODIFY `item_section_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_access`
--
ALTER TABLE `role_access`
  MODIFY `role_access_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `site_config`
--
ALTER TABLE `site_config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `site_config_parent`
--
ALTER TABLE `site_config_parent`
  MODIFY `site_config_parent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `site_request`
--
ALTER TABLE `site_request`
  MODIFY `site_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subscriber_email_logs`
--
ALTER TABLE `subscriber_email_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `summary`
--
ALTER TABLE `summary`
  MODIFY `summary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `task_activity`
--
ALTER TABLE `task_activity`
  MODIFY `task_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;
--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `task_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `timecard`
--
ALTER TABLE `timecard`
  MODIFY `timecard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `timecard_ot`
--
ALTER TABLE `timecard_ot`
  MODIFY `ot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `website_registration`
--
ALTER TABLE `website_registration`
  MODIFY `website_registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
