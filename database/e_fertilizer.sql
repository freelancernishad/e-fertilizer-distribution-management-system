-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 12:07 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_fertilizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` float DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `price`, `product_quantity`, `type`, `created_at`, `updated_at`) VALUES
(5, 'c4', NULL, 0, NULL, '2022-05-07 09:43:44', '2022-05-07 09:43:44'),
(6, 'c5', NULL, 0, NULL, '2022-05-07 09:43:45', '2022-05-07 09:43:45'),
(7, 'c6', NULL, 0, NULL, '2022-05-07 09:43:48', '2022-05-07 09:43:48'),
(8, 'c7', NULL, 0, NULL, '2022-05-07 09:43:52', '2022-05-07 09:43:52'),
(9, 'c8', NULL, 0, NULL, '2022-05-07 09:43:55', '2022-05-07 09:43:55'),
(10, 'c9', NULL, 0, NULL, '2022-05-07 09:43:58', '2022-05-07 09:43:58'),
(11, 'c10.', NULL, 0, NULL, '2022-05-07 09:44:01', '2022-05-07 09:44:01'),
(12, 'c10', NULL, 0, NULL, '2022-05-07 09:44:02', '2022-05-07 09:44:02'),
(13, 'c11', NULL, 0, NULL, '2022-05-07 09:44:06', '2022-05-07 09:44:06'),
(14, 'c12', NULL, 0, NULL, '2022-05-07 09:44:09', '2022-05-07 09:44:09'),
(15, 'c13', NULL, 0, NULL, '2022-05-07 09:44:11', '2022-05-07 09:44:11'),
(16, 'c14', NULL, 0, NULL, '2022-05-07 09:44:14', '2022-05-07 09:44:14'),
(17, 'bish', NULL, 0, NULL, '2022-06-13 09:04:42', '2022-06-13 09:04:42'),
(18, 'sdf', NULL, 0, NULL, '2022-06-20 07:37:44', '2022-06-20 07:37:44'),
(19, 'product1', NULL, 0, NULL, '2022-06-20 07:38:22', '2022-06-20 07:38:22'),
(20, 'uria', '1000', 50.5, NULL, '2022-08-25 17:05:36', '2022-08-25 17:05:36'),
(21, 'উরিয়া', '10000', 102.8, 'বস্তা', '2022-08-28 05:10:10', '2022-09-01 06:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nidNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mouja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `union` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landArea` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `created_at`, `updated_at`, `nidNo`, `fatherName`, `vill`, `wordNo`, `Block`, `mouja`, `union`, `thana`, `district`, `landArea`) VALUES
(1, 'Md Nishad Hossain cu', 'tmscedu2019@gmail.com', '01909756552', 'Baneshorpara, Tepriganj, Debiganj, Panchagarh', 'backend/customer/1651898903.jpeg', '2022-05-07 04:48:23', '2022-05-07 04:48:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Nishad Hossain', 'freelancernishad123@gmail.com', '01909756553', 'Baneshorpara, Tepriganj, Debiganj, Panchagarh', 'backend/customer/1652115202.jpeg', '2022-05-09 16:53:22', '2022-05-09 16:53:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Freelancer Nishad', 'Local', '+8801909756552', 'Baneshorpara, Tepriganj, Debiganj, Panchagarh', NULL, '2022-07-17 15:34:23', '2022-07-17 15:34:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'নাম2', 'Local', '01909756552', NULL, 'http://localhost:8000/backend/customer/1661670305____80721.png', '2022-08-28 06:44:36', '2022-08-28 07:05:05', '4679761312648', 'পিতার নাম', 'গ্রাম', 'ওয়ার্ড নং', 'ব্লক নং', 'মৌজা', 'ইউনিয়ন', 'উপজেলা', 'জেলা', 'জমির পরিমাণ');

-- --------------------------------------------------------

--
-- Table structure for table `custom_order_details`
--

CREATE TABLE `custom_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_order_details`
--

INSERT INTO `custom_order_details` (`id`, `order_id`, `product_name`, `product_quantity`, `product_quantity_type`, `product_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(39, 18, 'p1', '5', 'কেজি', '20', '100', NULL, NULL),
(40, 18, 'p2', '15', 'কেজি', '10', '150', NULL, NULL),
(41, 28, 'Name', '5', 'কেজি', '10', '50', NULL, NULL),
(42, 42, 'uria', '5', 'বস্তা', '1000', '5000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `duepayments`
--

CREATE TABLE `duepayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duepayments`
--

INSERT INTO `duepayments` (`id`, `customer_id`, `order_id`, `payment_amount`, `payBy`, `pay_date`, `pay_month`, `pay_year`, `created_at`, `updated_at`) VALUES
(19, 2, 16, '10', 'Hand Cash', '14/06/2022', 'June', '2022', '2022-06-14 12:25:39', '2022-06-14 12:25:39'),
(20, 2, 16, '1', 'Hand Cash', '14/06/2022', 'June', '2022', '2022-06-14 12:27:20', '2022-06-14 12:27:20'),
(22, 1, 18, '50', 'Hand Cash', '20/06/2022', 'June', '2022', '2022-06-20 10:22:14', '2022-06-20 10:22:14'),
(23, 2, 27, '5', 'Hand Cash', '22/06/2022', 'June', '2022', '2022-06-22 06:21:57', '2022-06-22 06:21:57'),
(24, 2, 27, '1', 'Hand Cash', '22/06/2022', 'June', '2022', '2022-06-22 06:28:31', '2022-06-22 06:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double(8,2) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `salary`, `photo`, `nid`, `joining_date`, `created_at`, `updated_at`) VALUES
(1, 'Md Nishad Hossain', 'tmscedu2019@gmail.com', '+8801909756552', 'Baneshorpara, Tepriganj, Debiganj, Panchagarh', 20000.00, 'backend/employee/1651898746.jpeg', '21542555555', '2022-05-07', '2022-05-07 04:45:46', '2022-05-07 04:45:46'),
(2, 'Md Nishad Hossain4', 'freelancernishad123@gmail.com', '+8801909756554', 'Baneshorpara, Tepriganj, Debiganj, Panchagarh', 11.00, NULL, '456456', '2022-05-18', '2022-05-16 06:56:39', '2022-05-16 06:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `details`, `amount`, `expense_date`, `created_at`, `updated_at`) VALUES
(1, 'gdg', '10', '2022-05-19', '2022-05-19 03:35:28', '2022-05-19 03:35:28'),
(2, 'gfhgh', '6', '2022-06-29', '2022-06-29 08:42:56', '2022-06-29 08:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Invoices` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `orderId`, `customer_name`, `customer_id`, `totalAmount`, `address`, `date`, `type`, `Invoices`, `total_amount`, `created_at`, `updated_at`) VALUES
(13, '123', 'নাম2', '4', '60000', NULL, '2022-08-29', 'কেনা', '[{\"name\":\"\\u0989\\u09b0\\u09bf\\u09df\\u09be\",\"weight_quantity\":\"5\",\"price\":\"10000\"},{\"name\":\"uria\",\"weight_quantity\":\"10\",\"price\":\"1000\"}]', '60000', '2022-08-29 17:47:07', '2022-08-29 17:47:07'),
(14, '456', 'নাম2', '4', '100000', 'গ্রাম, ইউনিয়ন, উপজেলা, জেলা', '2022-08-30', 'কেনা', '[{\"name\":\"\\u0989\\u09b0\\u09bf\\u09df\\u09be\",\"weight_quantity\":\"10\",\"price\":\"10000\"}]', '100000', '2022-08-29 18:32:46', '2022-08-29 18:32:46'),
(15, NULL, 'Freelancer Nishad', '3', '100000', ', , , ', '2022-08-30', 'কেনা', '[{\"name\":\"\\u0989\\u09b0\\u09bf\\u09df\\u09be\",\"weight_quantity\":\"10\",\"price\":\"10000\"}]', '100000', '2022-08-30 07:15:31', '2022-08-30 07:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_25_202239_create_employees_table', 1),
(5, '2020_09_29_204653_create_suppliers_table', 1),
(6, '2020_09_29_214249_create_categories_table', 1),
(7, '2020_09_30_144042_create_products_table', 1),
(8, '2020_09_30_211814_create_expenses_table', 1),
(9, '2020_10_02_093726_create_salaries_table', 1),
(10, '2020_10_02_202045_create_customers_table', 1),
(11, '2020_10_03_191534_create_pos_table', 1),
(12, '2020_10_04_105052_create_extra_table', 1),
(13, '2020_10_04_194336_create_orders_table', 1),
(14, '2020_10_04_194547_create_order_details_table', 1),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(18, '2016_06_01_000004_create_oauth_clients_table', 2),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(21, '2022_05_15_120650_create_duepayments_table', 3),
(22, '2022_06_15_132454_create_invoices_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('020d21a403140e44cf8b795c12717196ba8e0f2059386ebf4a46e996d620e2f2de3104aaf21193ce', 3, 3, 'accessToken', '[]', 0, '2022-06-13 09:00:30', '2022-06-13 09:00:30', '2023-06-13 15:00:30'),
('0212ff71d6dbeef8e592f286126617370bdbe7260dfa361a86040e39d403601dc190b3db19e048c8', 3, 3, 'accessToken', '[]', 0, '2022-08-27 16:48:36', '2022-08-27 16:48:36', '2023-08-27 22:48:36'),
('0809c33ab4ed1fcea0fd19601022777e9bbbd91850e6fe370059bf5a37ffc463eb4bbb3cb4ad7a66', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:54:27', '2022-06-26 04:54:27', '2023-06-26 10:54:27'),
('0fa3c16a38fc53ad8f8d3771e5aae2502cefbcc277a79305d801a00b2230ed87d827d4fcd140beea', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:51:46', '2022-06-26 04:51:46', '2023-06-26 10:51:46'),
('1221fee4a65a8437558e3fec2655d468efcbd65a06c0deff22b0b51a630e33211da34873f5a31a96', 3, 3, 'accessToken', '[]', 0, '2022-08-27 18:34:20', '2022-08-27 18:34:20', '2023-08-28 00:34:20'),
('12b7631d8a7f94e47e1b8f18b3323c30d3637ca6f6af49dc0ff221728f7b039d087247cbb39d6a73', 3, 3, 'accessToken', '[]', 0, '2022-05-10 15:19:00', '2022-05-10 15:19:00', '2023-05-10 21:19:00'),
('17e3aa1691e92931ef8d235e525403be41cc4c504e4a529af19016ba5e05aa345e72beb74f929593', 3, 3, 'accessToken', '[]', 0, '2022-05-10 15:19:22', '2022-05-10 15:19:22', '2023-05-10 21:19:22'),
('1c69551be92a09a6fcbea40144aa20552337423237e2ca75f54f1683c2776da14d3ffb64ffe9ddbf', 3, 3, 'accessToken', '[]', 0, '2022-06-13 09:00:30', '2022-06-13 09:00:30', '2023-06-13 15:00:30'),
('1d898d494251ed9777d777bb9819e23f57318526f16ccaf30befd607fbbad94a31a970bad23e8a81', 3, 3, 'accessToken', '[]', 0, '2022-05-10 15:19:22', '2022-05-10 15:19:22', '2023-05-10 21:19:22'),
('1f7748f80407bb24438edc9024cfc2d58ce2884ddcb49704ca7eb4ae8ec7d01ce0a03ab9bec7d0fe', 3, 3, 'accessToken', '[]', 0, '2022-05-09 17:51:56', '2022-05-09 17:51:56', '2023-05-09 23:51:56'),
('231bba60a72862842156e330b32f34d0635799c82e97e559a918793b6d46f9bde7f2bff1a2e8499a', 3, 3, 'accessToken', '[]', 0, '2022-07-18 05:03:13', '2022-07-18 05:03:13', '2023-07-18 11:03:13'),
('23a6ac90695d1e76ef670ea971d3a82b0e78fa18be1fbc590af293b0dccb6c270637c8cac546ba0b', 3, 3, 'accessToken', '[]', 0, '2022-06-20 03:13:09', '2022-06-20 03:13:09', '2023-06-20 09:13:09'),
('2641d7fcd93b456e4382c716f0bcfd579e3f2d02d33d67ded7a79ef26b9bf360f71406bfd99f47ad', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:40:14', '2022-06-26 04:40:14', '2023-06-26 10:40:14'),
('2a0086967cea70693f5c1a3d1cc4edbe6e69dfba78e59a62ba4c68dd82997f8dad7e95c063a7bbf1', 3, 3, 'accessToken', '[]', 0, '2022-05-10 16:21:29', '2022-05-10 16:21:29', '2023-05-10 22:21:29'),
('2ed3ca8375f2fa577113b46aa9d9b3fd7ae9b04eba780f91e723c1e1ab901648b0a011cd25a08572', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:54:27', '2022-06-26 04:54:27', '2023-06-26 10:54:27'),
('3d96f631f52b979cfda9988a38e7d8e0a664886c8e2386bd8192297a300c9b850df852b875e65697', 3, 3, 'accessToken', '[]', 0, '2022-07-17 15:18:44', '2022-07-17 15:18:44', '2023-07-17 21:18:44'),
('45da066dba301aefdf155020a5e38049f86eddaa27295c5bcc48b70ec46ecf1163cf191528d0e877', 3, 3, 'accessToken', '[]', 0, '2022-05-10 16:21:29', '2022-05-10 16:21:29', '2023-05-10 22:21:29'),
('48ae9f8f54a71a9ae0563739033260c5ae730804431bbd807c6ee12ad9cc119a5c6a223bc93e5b3d', 3, 3, 'accessToken', '[]', 0, '2022-05-09 18:31:05', '2022-05-09 18:31:05', '2023-05-10 00:31:05'),
('4c0f8066d298d7f8853041c8a1a3bc921d811e6bcab48be3830111b7adc0e93e2d78fcd9582a646f', 3, 3, 'accessToken', '[]', 0, '2022-07-17 15:18:45', '2022-07-17 15:18:45', '2023-07-17 21:18:45'),
('4e1e2ff738fba8a954f1ecc116e846b368e96185d5f8e2398869f9ba74785e42208667c82d94dedf', 3, 3, 'accessToken', '[]', 0, '2022-06-25 16:29:17', '2022-06-25 16:29:17', '2023-06-25 22:29:17'),
('50a54f84e182d1f386e9e6d11cf5b6c8a1845ded276361cf272ee5096de7e8f2fbb314a18ce08133', 3, 3, 'accessToken', '[]', 0, '2022-06-25 16:35:16', '2022-06-25 16:35:16', '2023-06-25 22:35:16'),
('59dd29a406dd820b976d0316ebe30c448802c82597c6061645de60e8b415f8b55e001444624bbfe1', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:53:48', '2022-06-26 04:53:48', '2023-06-26 10:53:48'),
('5adb93a841a0ccc5e5a727ec582e64d3e688756586e001dae78b22c8398b24d5731396120d8afbea', 3, 3, 'accessToken', '[]', 0, '2022-06-26 05:00:47', '2022-06-26 05:00:47', '2023-06-26 11:00:47'),
('5c184184ac0c2d3754bce21e3ba61e6de41cb661742f7b48307ab993a6c153b1d59a270075e30959', 3, 3, 'accessToken', '[]', 0, '2022-05-09 18:31:10', '2022-05-09 18:31:10', '2023-05-10 00:31:10'),
('617d53445dbb8201a007257af365d6e7aa616f7814e4932b0c1c11a5c0b452e465ead7b7cc767f9e', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:58:01', '2022-06-26 04:58:01', '2023-06-26 10:58:01'),
('69964aa91754e8cb0008aac2ee9802aa364aae36f9c3833763ba1ee547f4b333112150dc539956eb', 3, 3, 'accessToken', '[]', 0, '2022-06-25 16:29:18', '2022-06-25 16:29:18', '2023-06-25 22:29:18'),
('7234cfc4cb2953fc37116954d5bb3cf215c083bb56498bc2617bd660e9106a9adaf444f46827e635', 3, 3, 'accessToken', '[]', 0, '2022-06-25 16:35:16', '2022-06-25 16:35:16', '2023-06-25 22:35:16'),
('766710ed82bc0d7ee3d55931cce1cf590510326d10eb9704b85abaee065cdb88e51911f577dc9a29', 3, 3, 'accessToken', '[]', 0, '2022-06-23 16:58:22', '2022-06-23 16:58:22', '2023-06-23 22:58:22'),
('7a7e7052b7551edb6e61caf4a0f06cba5de9b559ea81ea4ca1436cd5ed3e3cb691cca310205fcc18', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:56:03', '2022-06-26 04:56:03', '2023-06-26 10:56:03'),
('7c71da33cc08fbe167155e8ca6c032b0962f10fc26f370dded5759b331325e03fe37e05a52f96261', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:56:03', '2022-06-26 04:56:03', '2023-06-26 10:56:03'),
('8bba37d6ee46d954ed9ca9075d9b5d636b35436ff6ddfe49769000d0790219a530f03a3c1b279b9b', 3, 3, 'accessToken', '[]', 0, '2022-06-23 16:58:21', '2022-06-23 16:58:21', '2023-06-23 22:58:21'),
('8dc3024db01940e1cb904ffd88eec8ab2c92811fe065d8ee604f8fc29cad307e889876627fc34d39', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:52:50', '2022-06-26 04:52:50', '2023-06-26 10:52:50'),
('8f17017465aa6862717a69b365fe222547418c55345c083088740b8229969e325d1b4c8ebd5e8af9', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:53:48', '2022-06-26 04:53:48', '2023-06-26 10:53:48'),
('901d33ce9527c4089b4db8773a26e30b66a9a931ddc114103cc3295cd70a83b6fea38a6913052aa5', 3, 3, 'accessToken', '[]', 0, '2022-08-27 16:48:36', '2022-08-27 16:48:36', '2023-08-27 22:48:36'),
('9108b1939d33660b162c8b76ae2e6433edf4d6652c0325964365dbedb67b572967d35775dd6f9091', 3, 3, 'accessToken', '[]', 0, '2022-06-13 08:55:50', '2022-06-13 08:55:50', '2023-06-13 14:55:50'),
('94b6f3f4438ee10deb0d95532006d4a60cdc95f513701662cdeb163600b67d18dc1274f85ff14497', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:51:46', '2022-06-26 04:51:46', '2023-06-26 10:51:46'),
('966e30ea737a0e27a2a71a87b3dec3bd2e6618a1dc94072f03f5fd9a5208e39ae291982d1934263c', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:40:14', '2022-06-26 04:40:14', '2023-06-26 10:40:14'),
('a2d141dda6ad54f6815bcf6f29f82d059c590db843ab48df8a04da0d80dc033e9d70dd1ae15b92eb', 3, 3, 'accessToken', '[]', 0, '2022-06-26 05:00:47', '2022-06-26 05:00:47', '2023-06-26 11:00:47'),
('a499a092b24ad6b2ee3ee85241b209f0c8803f269d01c1ae2be8c2459080327549cfae9d138ff496', 3, 3, 'accessToken', '[]', 0, '2022-08-27 18:34:20', '2022-08-27 18:34:20', '2023-08-28 00:34:20'),
('a6f7e5b28e04e81a6833f5ca2319a2e11cebad5ec632d48b199502546869e8608e3a6f729af49da6', 3, 3, 'accessToken', '[]', 0, '2022-06-20 07:17:38', '2022-06-20 07:17:38', '2023-06-20 13:17:38'),
('b48905d0c95177a05f230e5cce48d3511c511d81c4ccc5e0943f7fb193069d96b99d4ab6bae19938', 3, 3, 'accessToken', '[]', 0, '2022-05-09 18:46:16', '2022-05-09 18:46:16', '2023-05-10 00:46:16'),
('b7a21de6da51a0d6ad85b6310f05cfb90fe31117303461a9f30fd16889c9d86da20baaf469140239', 3, 3, 'accessToken', '[]', 0, '2022-06-13 08:55:50', '2022-06-13 08:55:50', '2023-06-13 14:55:50'),
('bc3d4da9ec2f3f968f603aa75864ebd5a0886449f02a850eff9da15f49b776ec064e214c18cc0ffc', 3, 3, 'accessToken', '[]', 0, '2022-06-20 07:17:39', '2022-06-20 07:17:39', '2023-06-20 13:17:39'),
('d7265e2da414ec11e051545b5de528a1f4aaa952d16805ac8ca8d8951dba66f0415dd936fdee8b1f', 3, 3, 'accessToken', '[]', 0, '2022-06-23 17:03:06', '2022-06-23 17:03:06', '2023-06-23 23:03:06'),
('dacffafaae0cadaa10d5b709fb9c6fe7451cb2bd3bec144b36555110b82c0ec7eeae54f303eb21cf', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:58:01', '2022-06-26 04:58:01', '2023-06-26 10:58:01'),
('e912a88a2a7cc42081996f36c016adfecdba91f4f9b9ad4c863e95a33caabca2a6ab963be5bc6938', 3, 3, 'accessToken', '[]', 0, '2022-06-23 17:03:06', '2022-06-23 17:03:06', '2023-06-23 23:03:06'),
('ec84868d3d54c0f91da31729cc3200b524d75047dd044cd00ac258c8e261fee71e40be27a022a01b', 3, 3, 'accessToken', '[]', 0, '2022-06-20 03:13:09', '2022-06-20 03:13:09', '2023-06-20 09:13:09'),
('ed9e2f05d18cdd40becddfcf265599d264ff57919e2d025e2386082a9a4018333f0a7c98d448861d', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:52:50', '2022-06-26 04:52:50', '2023-06-26 10:52:50'),
('ef84316ab52dacd64aa72ec7ceb0d261c50cb87a97bc911ea5ceb86f4896f3f164fa9245509f2c35', 1, 1, 'accessToken', '[]', 0, '2022-05-09 17:49:37', '2022-05-09 17:49:37', '2023-05-09 23:49:37'),
('f0bb22572bf84c100e4c20b99281c618b477766580c75deb937d396ac2a262a44f21f95876de1bd6', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:58:10', '2022-06-26 04:58:10', '2023-06-26 10:58:10'),
('fb611219f70e02b53774bebede72c68db5396bef83cd4c8b7fd64131ef8ebe37723a3a4f2b4f5a67', 3, 3, 'accessToken', '[]', 0, '2022-07-18 05:03:13', '2022-07-18 05:03:13', '2023-07-18 11:03:13'),
('fe1192e846f840f4a4b03973883fd2b21523bdf394cc09cefaa7eb0e87d840b4112337fad8c259e9', 3, 3, 'accessToken', '[]', 0, '2022-06-26 04:58:10', '2022-06-26 04:58:10', '2023-06-26 10:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel8.2 Personal Access Client', 'gsOxvzM3apLHqIUjpZ9U7RZTbZFyyzcM9hnB86uf', NULL, 'http://localhost', 1, 0, 0, '2022-05-09 17:46:35', '2022-05-09 17:46:35'),
(2, NULL, 'Laravel8.2 Personal Access Client', 'yt627NWiYq2OLmzxgMOGhilni83ogPZV5Zc85RJD', NULL, 'http://localhost', 1, 0, 0, '2022-05-09 17:50:55', '2022-05-09 17:50:55'),
(3, NULL, 'Laravel8.2 Personal Access Client', '5FBGE0uVvp0DyPZ5L7Xe8xgu9r1D0JjUfybfNuRm', NULL, 'http://localhost', 1, 0, 0, '2022-05-09 17:51:00', '2022-05-09 17:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-09 17:46:35', '2022-05-09 17:46:35'),
(2, 2, '2022-05-09 17:50:55', '2022-05-09 17:50:55'),
(3, 3, '2022-05-09 17:51:00', '2022-05-09 17:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `customer_id`, `qty`, `sub_total`, `vat`, `total`, `pay`, `due`, `payBy`, `memo`, `order_date`, `order_month`, `order_year`, `created_at`, `updated_at`) VALUES
(37, '1', 1, '2', '23', NULL, NULL, '23', '0', 'Cheque', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(38, '00002', 1, '1', '11', NULL, NULL, '11', '0', 'Cheque', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(39, '3', 2, '1', '11', NULL, NULL, '11', '0', 'Hand Cash', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(40, '44441', 2, '2', '23', NULL, NULL, '23', '0', 'Cheque', 'memo2', '15/07/2022', 'July', '2022', NULL, NULL),
(41, '44442', 2, '7000', '77000', NULL, NULL, '30', '76970', 'Cheque', 'memo2', '17/07/2022', 'July', '2022', NULL, NULL),
(42, '44443', 3, '0', '5000', NULL, NULL, '5000', '0', 'Cheque', 'memo2', '25/08/2022', 'August', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_quantity`, `buying_price`, `product_price`, `sub_total`, `created_at`, `updated_at`) VALUES
(41, 19, 5, '1', '11', '11', '11', NULL, NULL),
(42, 20, 4, '1', '11', '12', '12', NULL, NULL),
(43, 20, 5, '1', '11', '11', '11', NULL, NULL),
(44, 27, 4, '4', '11', '12', '36', NULL, NULL),
(45, 29, 5, '1', '11', '11', '11', NULL, NULL),
(46, 29, 4, '1', '11', '12', '12', NULL, NULL),
(47, 30, 5, '1', '11', '11', '11', NULL, NULL),
(48, 31, 4, '4', '11', '12', '36', NULL, NULL),
(49, 32, 5, '1', '11', '11', '11', NULL, NULL),
(50, 33, 5, '1', '11', '11', '11', NULL, NULL),
(51, 33, 4, '1', '11', '12', '12', NULL, NULL),
(52, 34, 5, '400', '11', '11', '4400', NULL, NULL),
(53, 34, 4, '50', '11', '12', '600', NULL, NULL),
(54, 35, 4, '5', '11', '12', '60', NULL, NULL),
(55, 36, 5, '1', '11', '11', '11', NULL, NULL),
(56, 37, 5, '1', '11', '11', '11', NULL, NULL),
(57, 37, 4, '1', '11', '12', '12', NULL, NULL),
(58, 38, 5, '1', '11', '11', '11', NULL, NULL),
(59, 39, 5, '1', '11', '11', '11', NULL, NULL),
(60, 40, 5, '1', '11', '11', '11', NULL, NULL),
(61, 40, 4, '1', '11', '12', '12', NULL, NULL),
(62, 41, 5, '7000', '11', '11', '77000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `buying_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memoNong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `root` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `product_name`, `memoNong`, `product_code`, `root`, `buying_price`, `selling_price`, `buying_date`, `expired_date`, `image`, `product_quantity`, `type`, `created_at`, `updated_at`) VALUES
(4, 19, 1, 'product1', NULL, '10000000', 'kkk', '11', '12', '2022-06-01', '2022-07-08', NULL, '9942', NULL, '2022-06-20 15:58:10', '2022-06-29 08:37:20'),
(5, 19, 1, 'product3', NULL, '10000001', NULL, '11', '11', '2022-06-20', '2022-07-08', NULL, '-6407', NULL, '2022-06-20 16:01:42', '2022-06-29 08:37:26'),
(6, 21, NULL, NULL, '4565', NULL, NULL, NULL, NULL, '2022-08-28', NULL, NULL, '1000', 'কেজি', '2022-08-28 05:46:44', '2022-08-28 05:46:44'),
(7, 21, NULL, NULL, '4565', NULL, NULL, NULL, NULL, '2022-08-28', NULL, NULL, '1000', 'বস্তা', '2022-08-28 05:50:57', '2022-08-28 05:50:57'),
(8, 21, NULL, NULL, '12345', NULL, NULL, NULL, NULL, '2022-08-28', NULL, NULL, '100', 'বস্তা', '2022-08-28 16:06:53', '2022-08-28 16:06:53'),
(9, 21, NULL, NULL, '1123', NULL, NULL, NULL, NULL, '2022-09-01', NULL, NULL, '100', 'কেজি', '2022-09-01 05:51:39', '2022-09-01 05:51:39'),
(10, 21, NULL, NULL, '4545', NULL, NULL, NULL, NULL, '2022-09-01', NULL, NULL, '30', 'কেজি', '2022-09-01 05:54:23', '2022-09-01 05:54:23'),
(11, 21, NULL, NULL, 'h', NULL, NULL, NULL, NULL, '2022-09-01', NULL, NULL, '10', 'কেজি', '2022-09-01 06:03:56', '2022-09-01 06:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `employee_id`, `amount`, `salary_date`, `salary_month`, `salary_year`, `created_at`, `updated_at`) VALUES
(1, 1, '20000', '07/05/2022', 'January', '2022', NULL, NULL),
(2, 1, '20000', '07/05/2022', 'February', '2022', NULL, NULL),
(3, 2, '11', '24/06/2022', 'June', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `photo`, `shopName`, `created_at`, `updated_at`) VALUES
(1, 'Md Nishad Hossainss', 'tmscedu2019@gmail.com', '+8801909756552', 'Baneshorpara, Tepriganj, Debiganj, Panchagarh', 'backend/supplier/1651898804.jpeg', '11', '2022-05-07 04:46:45', '2022-05-07 04:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dillerId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bazarName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unioun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Distric` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'diller',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `dillerId`, `name`, `Mobile`, `bazarName`, `unioun`, `thana`, `Distric`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Md Nishad Hossain', 'প্রতিষ্ঠানের নাম', 'বাজারের নাম', 'ইউনিয়ন', 'উপজেলা', 'জেলা', 'tmscedu2019@gmail.com', 'diller', NULL, '$2y$10$PTraPAGMTeDVAp5dKdVNhu2rboFMcE9uat8NVyzb0jV/dK2akWPBa', NULL, NULL, '2022-08-28 04:46:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_order_details`
--
ALTER TABLE `custom_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duepayments`
--
ALTER TABLE `duepayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_order_details`
--
ALTER TABLE `custom_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `duepayments`
--
ALTER TABLE `duepayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
