-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2023 at 05:31 PM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u7956454_mitra`
--
CREATE DATABASE IF NOT EXISTS `u7956454_mitra` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `u7956454_mitra`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(8, '123456789', 'Mitra HPL Account', 0, 0, NULL, 1, 1, '2023-02-26 01:14:23', '2023-02-26 01:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

DROP TABLE IF EXISTS `adjustments`;
CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

DROP TABLE IF EXISTS `billers`;
CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Cashier', NULL, 'Mitra HPL Abadi', NULL, 'cashier@cashier.com', '12345678', 'Jalan', 'Kota', 'Provinsi', '123456', 'Indonesia', 1, '2022-07-30 22:39:20', '2023-02-13 02:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Taco', '20230303084122.jpg', 1, '2022-07-30 22:14:43', '2023-03-02 18:41:22'),
(2, 'Huben', '20230303084207.jfif', 1, '2023-02-25 20:05:51', '2023-03-02 18:42:07'),
(3, 'Carta', '20230303084421.png', 1, '2023-03-02 18:44:21', '2023-03-02 18:44:21'),
(4, 'Aica', '20230303084533.png', 1, '2023-03-02 18:45:33', '2023-03-02 18:45:33'),
(5, 'Lem Fox', '20230303085024.jfif', 1, '2023-03-02 18:50:24', '2023-03-02 18:50:24'),
(6, 'Qbond', '20230303085138.png', 1, '2023-03-02 18:51:38', '2023-03-02 18:51:38'),
(7, 'Hafele', '20230303091221.png', 1, '2023-03-02 19:12:21', '2023-03-02 19:12:21'),
(8, 'Blum', '20230303091247.png', 1, '2023-03-02 19:12:31', '2023-03-02 19:12:47'),
(9, 'Non', NULL, 1, '2023-03-02 19:12:58', '2023-03-02 19:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

DROP TABLE IF EXISTS `cash_registers`;
CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Tacosheet', '20220731114240.jpg', NULL, 1, '2022-07-30 22:15:28', '2023-03-02 19:02:18'),
(2, 'Lem', NULL, NULL, 1, '2023-02-16 01:57:12', '2023-03-02 18:59:25'),
(3, 'HPL', NULL, NULL, 1, '2023-03-02 18:55:21', '2023-03-02 18:55:21'),
(4, 'Triplek', NULL, NULL, 1, '2023-03-02 18:58:42', '2023-03-02 18:58:42'),
(5, 'Vinyl', NULL, NULL, 1, '2023-03-02 19:00:57', '2023-03-02 19:00:57'),
(6, 'Edging', NULL, NULL, 1, '2023-03-02 19:01:48', '2023-03-02 19:01:48'),
(7, 'Sealent', NULL, NULL, 1, '2023-03-02 19:02:37', '2023-03-02 19:02:37'),
(8, 'Handle', NULL, NULL, 1, '2023-03-02 19:02:48', '2023-03-02 19:02:48'),
(9, 'Rel', NULL, NULL, 1, '2023-03-02 19:03:00', '2023-03-02 19:03:00'),
(10, 'Roda', NULL, NULL, 1, '2023-03-02 19:03:29', '2023-03-02 19:03:29'),
(11, 'Frame', NULL, NULL, 1, '2023-03-02 19:03:55', '2023-03-02 19:03:55'),
(12, 'Siku', NULL, NULL, 1, '2023-03-02 19:06:33', '2023-03-02 19:06:33'),
(13, 'Skrup', NULL, NULL, 1, '2023-03-02 19:06:50', '2023-03-02 19:06:50'),
(14, 'Bracket', NULL, NULL, 1, '2023-03-02 19:07:00', '2023-03-02 19:07:00'),
(15, 'Amplas', NULL, NULL, 1, '2023-03-02 19:07:30', '2023-03-02 19:07:30'),
(16, 'Kaki Sofa', NULL, NULL, 1, '2023-03-02 19:07:39', '2023-03-02 19:07:39'),
(17, 'Lakban', NULL, NULL, 1, '2023-03-02 19:08:09', '2023-03-02 19:08:09'),
(18, 'Kunci', NULL, NULL, 1, '2023-03-02 19:08:18', '2023-03-02 19:08:18'),
(19, 'Mesin', NULL, NULL, 1, '2023-03-02 19:08:40', '2023-03-02 19:08:40'),
(20, 'Lampu', NULL, NULL, 1, '2023-03-02 19:08:49', '2023-03-02 19:08:49'),
(21, 'Rak', NULL, NULL, 1, '2023-03-02 19:09:29', '2023-03-02 19:09:29'),
(22, 'Rumah Lampu', NULL, NULL, 1, '2023-03-02 19:09:43', '2023-03-02 19:09:43'),
(24, 'Acrylic', NULL, NULL, 1, '2023-03-09 01:54:02', '2023-03-09 01:54:02'),
(25, 'PVC Board', NULL, NULL, 1, '2023-03-09 01:54:14', '2023-03-09 01:54:14'),
(26, 'Vinil', NULL, NULL, 1, '2023-03-09 04:01:34', '2023-03-09 04:01:34'),
(27, 'Tiner', NULL, NULL, 1, '2023-03-09 05:56:14', '2023-03-09 05:56:14'),
(28, 'Sampolack', NULL, NULL, 1, '2023-03-09 06:17:21', '2023-03-09 06:17:21'),
(29, 'Mataruter', NULL, NULL, 1, '2023-03-09 06:26:08', '2023-03-09 06:26:08'),
(30, 'Matabor Beton', NULL, NULL, 1, '2023-03-09 06:27:33', '2023-03-09 06:27:33'),
(31, 'Mataruter Roda', NULL, NULL, 1, '2023-03-09 06:28:15', '2023-03-09 06:28:15'),
(32, 'Viser', NULL, NULL, 1, '2023-03-09 06:28:28', '2023-03-09 06:28:28'),
(33, 'Mata Gergaji', NULL, NULL, 1, '2023-03-09 07:05:09', '2023-03-09 07:05:09'),
(34, 'Mata Serkel Bosh', NULL, NULL, 1, '2023-03-09 07:05:39', '2023-03-09 07:05:39'),
(35, 'Mata Serkel Makita', NULL, NULL, 1, '2023-03-09 07:06:06', '2023-03-09 07:06:06'),
(36, 'Matabor Nachi', NULL, NULL, 1, '2023-03-09 07:06:38', '2023-03-09 07:06:38'),
(37, 'Minilat', NULL, NULL, 1, '2023-03-09 07:38:02', '2023-03-09 07:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', 1, '2020-10-31 22:22:58', '2020-10-31 22:34:55'),
(4, 'Rupiah', 'Rp', 1, '2023-02-10 17:08:52', '2023-02-10 17:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Budi', 'PT Suka Suka', NULL, '0812345678', NULL, 'Jalan', 'Kota', 'Provinsi', '12015', 'Indonesia', 8855, NULL, 1000000, 1, '2022-07-30 22:17:35', '2023-03-04 01:46:32'),
(2, 2, NULL, 'Guest', NULL, NULL, '0', NULL, '-', 'Tangerang', 'Banten', NULL, 'Indonesia', NULL, NULL, NULL, 1, '2023-03-03 08:45:04', '2023-03-03 08:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Perusahaan', '0', 1, '2022-07-30 22:16:54', '2023-02-26 01:15:55'),
(2, 'Pribadi', '0', 1, '2023-02-26 01:16:05', '2023-02-26 01:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_list` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plans`
--

DROP TABLE IF EXISTS `discount_plans`;
CREATE TABLE `discount_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_customers`
--

DROP TABLE IF EXISTS `discount_plan_customers`;
CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_discounts`
--

DROP TABLE IF EXISTS `discount_plan_discounts`;
CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dso_alerts`
--

DROP TABLE IF EXISTS `dso_alerts`;
CREATE TABLE `dso_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'Mitra HPL Abadi', 'logo-mitra.png', 0, '4', 'own', 'd-m-Y', 'Finicode', 'standard', 1, 'default.css', '2018-07-06 04:13:11', '2023-02-12 22:24:24', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

DROP TABLE IF EXISTS `gift_cards`;
CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

DROP TABLE IF EXISTS `gift_card_recharges`;
CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

DROP TABLE IF EXISTS `hrm_settings`;
CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '9:00am', '6:00pm', '2019-01-02 00:20:08', '2022-07-15 17:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'id', '2018-07-07 20:59:17', '2019-12-24 15:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `last_number`
--

DROP TABLE IF EXISTS `last_number`;
CREATE TABLE `last_number` (
  `id` int(11) NOT NULL,
  `invoice_type` varchar(18) DEFAULT NULL,
  `invoice_month` tinyint(2) DEFAULT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `last_number`
--

INSERT INTO `last_number` (`id`, `invoice_type`, `invoice_month`, `invoice_number`, `updated_at`) VALUES
(1, 'CV. HPL Indonesia', 3, 0, '2023-03-08 21:22:33'),
(2, 'Berkat Furniture', 1, 0, '2023-02-23 23:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(133, '2021_06_08_213007_create_reward_point_settings_table', 86),
(134, '2021_06_16_104155_add_points_to_customers_table', 87),
(135, '2021_06_17_101057_add_used_points_to_payments_table', 88),
(136, '2021_07_06_132716_add_variant_list_to_products_table', 89),
(137, '2021_09_27_161141_add_is_imei_to_products_table', 90),
(138, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 91),
(139, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 91),
(140, '2021_10_03_170652_add_imei_number_to_product_sales_table', 92),
(141, '2021_10_10_145214_add_imei_number_to_product_returns_table', 93),
(142, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 94),
(143, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 95),
(144, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 96),
(145, '2021_10_23_142451_add_is_approve_to_payments_table', 97),
(146, '2022_01_13_191242_create_discount_plans_table', 97),
(147, '2022_01_14_174318_create_discount_plan_customers_table', 97),
(148, '2022_01_14_202439_create_discounts_table', 98),
(149, '2022_01_16_153506_create_discount_plan_discounts_table', 98),
(150, '2022_02_05_174210_add_order_discount_type_and_value_to_sales_table', 99),
(154, '2022_05_26_195506_add_daily_sale_objective_to_products_table', 100),
(155, '2022_05_28_104209_create_dso_alerts_table', 101),
(156, '2022_06_01_112100_add_is_embeded_to_products_table', 102);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

DROP TABLE IF EXISTS `money_transfers`;
CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

DROP TABLE IF EXISTS `payment_with_cheque`;
CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

DROP TABLE IF EXISTS `payment_with_credit_card`;
CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

DROP TABLE IF EXISTS `payment_with_gift_card`;
CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

DROP TABLE IF EXISTS `payment_with_paypal`;
CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 06:00:09', '2018-06-03 06:00:09'),
(5, 'products-delete', 'web', '2018-06-04 03:54:22', '2018-06-04 03:54:22'),
(6, 'products-add', 'web', '2018-06-04 05:34:14', '2018-06-04 05:34:14'),
(7, 'products-index', 'web', '2018-06-04 08:34:27', '2018-06-04 08:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 13:03:19', '2018-06-04 13:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 13:12:25', '2018-06-04 13:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 14:47:36', '2018-06-04 14:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 14:47:36', '2018-06-04 14:47:36'),
(12, 'sales-index', 'web', '2018-06-04 15:49:08', '2018-06-04 15:49:08'),
(13, 'sales-add', 'web', '2018-06-04 15:49:52', '2018-06-04 15:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 15:49:52', '2018-06-04 15:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 15:49:53', '2018-06-04 15:49:53'),
(16, 'quotes-index', 'web', '2018-06-05 03:05:10', '2018-06-05 03:05:10'),
(17, 'quotes-add', 'web', '2018-06-05 03:05:10', '2018-06-05 03:05:10'),
(18, 'quotes-edit', 'web', '2018-06-05 03:05:10', '2018-06-05 03:05:10'),
(19, 'quotes-delete', 'web', '2018-06-05 03:05:10', '2018-06-05 03:05:10'),
(20, 'transfers-index', 'web', '2018-06-05 03:30:03', '2018-06-05 03:30:03'),
(21, 'transfers-add', 'web', '2018-06-05 03:30:03', '2018-06-05 03:30:03'),
(22, 'transfers-edit', 'web', '2018-06-05 03:30:03', '2018-06-05 03:30:03'),
(23, 'transfers-delete', 'web', '2018-06-05 03:30:03', '2018-06-05 03:30:03'),
(24, 'returns-index', 'web', '2018-06-05 03:50:24', '2018-06-05 03:50:24'),
(25, 'returns-add', 'web', '2018-06-05 03:50:24', '2018-06-05 03:50:24'),
(26, 'returns-edit', 'web', '2018-06-05 03:50:25', '2018-06-05 03:50:25'),
(27, 'returns-delete', 'web', '2018-06-05 03:50:25', '2018-06-05 03:50:25'),
(28, 'customers-index', 'web', '2018-06-05 04:15:54', '2018-06-05 04:15:54'),
(29, 'customers-add', 'web', '2018-06-05 04:15:55', '2018-06-05 04:15:55'),
(30, 'customers-edit', 'web', '2018-06-05 04:15:55', '2018-06-05 04:15:55'),
(31, 'customers-delete', 'web', '2018-06-05 04:15:55', '2018-06-05 04:15:55'),
(32, 'suppliers-index', 'web', '2018-06-05 04:40:12', '2018-06-05 04:40:12'),
(33, 'suppliers-add', 'web', '2018-06-05 04:40:12', '2018-06-05 04:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-05 04:40:12', '2018-06-05 04:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-05 04:40:12', '2018-06-05 04:40:12'),
(36, 'product-report', 'web', '2018-06-25 04:05:33', '2018-06-25 04:05:33'),
(37, 'purchase-report', 'web', '2018-06-25 04:24:56', '2018-06-25 04:24:56'),
(38, 'sale-report', 'web', '2018-06-25 04:33:13', '2018-06-25 04:33:13'),
(39, 'customer-report', 'web', '2018-06-25 04:36:51', '2018-06-25 04:36:51'),
(40, 'due-report', 'web', '2018-06-25 04:39:52', '2018-06-25 04:39:52'),
(41, 'users-index', 'web', '2018-06-25 05:00:10', '2018-06-25 05:00:10'),
(42, 'users-add', 'web', '2018-06-25 05:00:10', '2018-06-25 05:00:10'),
(43, 'users-edit', 'web', '2018-06-25 05:01:30', '2018-06-25 05:01:30'),
(44, 'users-delete', 'web', '2018-06-25 05:01:30', '2018-06-25 05:01:30'),
(45, 'profit-loss', 'web', '2018-07-15 02:50:05', '2018-07-15 02:50:05'),
(46, 'best-seller', 'web', '2018-07-15 03:01:38', '2018-07-15 03:01:38'),
(47, 'daily-sale', 'web', '2018-07-15 03:24:21', '2018-07-15 03:24:21'),
(48, 'monthly-sale', 'web', '2018-07-15 03:30:41', '2018-07-15 03:30:41'),
(49, 'daily-purchase', 'web', '2018-07-15 03:36:46', '2018-07-15 03:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-15 03:48:17', '2018-07-15 03:48:17'),
(51, 'payment-report', 'web', '2018-07-15 04:10:41', '2018-07-15 04:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-15 04:16:55', '2018-07-15 04:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-15 04:33:21', '2018-07-15 04:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 08:00:01', '2018-07-30 08:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 06:07:10', '2018-09-05 06:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 06:07:10', '2018-09-05 06:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 06:07:10', '2018-09-05 06:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 06:07:11', '2018-09-05 06:07:11'),
(59, 'general_setting', 'web', '2018-10-20 04:10:04', '2018-10-20 04:10:04'),
(60, 'mail_setting', 'web', '2018-10-20 04:10:04', '2018-10-20 04:10:04'),
(61, 'pos_setting', 'web', '2018-10-20 04:10:04', '2018-10-20 04:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 15:30:23', '2019-01-02 15:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-03 02:45:14', '2019-01-03 02:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-03 02:45:14', '2019-01-03 02:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-03 02:45:14', '2019-01-03 02:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-03 02:45:14', '2019-01-03 02:45:14'),
(67, 'account-index', 'web', '2019-01-03 03:06:13', '2019-01-03 03:06:13'),
(68, 'balance-sheet', 'web', '2019-01-03 03:06:14', '2019-01-03 03:06:14'),
(69, 'account-statement', 'web', '2019-01-03 03:06:14', '2019-01-03 03:06:14'),
(70, 'department', 'web', '2019-01-03 03:30:01', '2019-01-03 03:30:01'),
(71, 'attendance', 'web', '2019-01-03 03:30:01', '2019-01-03 03:30:01'),
(72, 'payroll', 'web', '2019-01-03 03:30:01', '2019-01-03 03:30:01'),
(73, 'employees-index', 'web', '2019-01-03 03:52:19', '2019-01-03 03:52:19'),
(74, 'employees-add', 'web', '2019-01-03 03:52:19', '2019-01-03 03:52:19'),
(75, 'employees-edit', 'web', '2019-01-03 03:52:19', '2019-01-03 03:52:19'),
(76, 'employees-delete', 'web', '2019-01-03 03:52:19', '2019-01-03 03:52:19'),
(77, 'user-report', 'web', '2019-01-16 11:48:18', '2019-01-16 11:48:18'),
(78, 'stock_count', 'web', '2019-02-17 15:32:01', '2019-02-17 15:32:01'),
(79, 'adjustment', 'web', '2019-02-17 15:32:02', '2019-02-17 15:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 10:18:03', '2019-02-22 10:18:03'),
(81, 'create_sms', 'web', '2019-02-22 10:18:03', '2019-02-22 10:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 10:02:19', '2019-03-07 10:02:19'),
(83, 'empty_database', 'web', '2019-03-07 10:02:19', '2019-03-07 10:02:19'),
(84, 'customer_group', 'web', '2019-03-07 10:37:15', '2019-03-07 10:37:15'),
(85, 'unit', 'web', '2019-03-07 10:37:15', '2019-03-07 10:37:15'),
(86, 'tax', 'web', '2019-03-07 10:37:15', '2019-03-07 10:37:15'),
(87, 'gift_card', 'web', '2019-03-07 11:29:38', '2019-03-07 11:29:38'),
(88, 'coupon', 'web', '2019-03-07 11:29:38', '2019-03-07 11:29:38'),
(89, 'holiday', 'web', '2019-10-19 13:57:15', '2019-10-19 13:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 11:00:23', '2019-10-22 11:00:23'),
(91, 'warehouse', 'web', '2020-02-26 11:47:32', '2020-02-26 11:47:32'),
(92, 'brand', 'web', '2020-02-26 11:59:59', '2020-02-26 11:59:59'),
(93, 'billers-index', 'web', '2020-02-26 12:11:15', '2020-02-26 12:11:15'),
(94, 'billers-add', 'web', '2020-02-26 12:11:15', '2020-02-26 12:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 12:11:15', '2020-02-26 12:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 12:11:15', '2020-02-26 12:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 10:41:48', '2020-03-02 10:41:48'),
(98, 'category', 'web', '2020-07-13 17:13:16', '2020-07-13 17:13:16'),
(99, 'delivery', 'web', '2020-07-13 17:13:16', '2020-07-13 17:13:16'),
(100, 'send_notification', 'web', '2020-10-31 11:21:31', '2020-10-31 11:21:31'),
(101, 'today_sale', 'web', '2020-10-31 11:57:04', '2020-10-31 11:57:04'),
(102, 'today_profit', 'web', '2020-10-31 11:57:04', '2020-10-31 11:57:04'),
(103, 'currency', 'web', '2020-11-09 05:23:11', '2020-11-09 05:23:11'),
(104, 'backup_database', 'web', '2020-11-15 05:16:55', '2020-11-15 05:16:55'),
(105, 'reward_point_setting', 'web', '2021-06-27 09:34:42', '2021-06-27 09:34:42'),
(106, 'revenue_profit_summary', 'web', '2022-02-08 18:57:21', '2022-02-08 18:57:21'),
(107, 'cash_flow', 'web', '2022-02-08 18:57:22', '2022-02-08 18:57:22'),
(108, 'monthly_summary', 'web', '2022-02-08 18:57:22', '2022-02-08 18:57:22'),
(109, 'yearly_report', 'web', '2022-02-08 18:57:22', '2022-02-08 18:57:22'),
(110, 'discount_plan', 'web', '2022-02-16 14:12:26', '2022-02-16 14:12:26'),
(111, 'discount', 'web', '2022-02-16 14:12:38', '2022-02-16 14:12:38'),
(112, 'product-expiry-report', 'web', '2022-03-30 10:39:20', '2022-03-30 10:39:20'),
(113, 'purchase-payment-index', 'web', '2022-06-05 19:12:27', '2022-06-05 19:12:27'),
(114, 'purchase-payment-add', 'web', '2022-06-05 19:12:28', '2022-06-05 19:12:28'),
(115, 'purchase-payment-edit', 'web', '2022-06-05 19:12:28', '2022-06-05 19:12:28'),
(116, 'purchase-payment-delete', 'web', '2022-06-05 19:12:28', '2022-06-05 19:12:28'),
(117, 'sale-payment-index', 'web', '2022-06-05 19:12:28', '2022-06-05 19:12:28'),
(118, 'sale-payment-add', 'web', '2022-06-05 19:12:28', '2022-06-05 19:12:28'),
(119, 'sale-payment-edit', 'web', '2022-06-05 19:12:28', '2022-06-05 19:12:28'),
(120, 'sale-payment-delete', 'web', '2022-06-05 19:12:28', '2022-06-05 19:12:28'),
(121, 'all_notification', 'web', '2022-06-05 19:12:29', '2022-06-05 19:12:29'),
(122, 'sale-report-chart', 'web', '2022-06-05 19:12:29', '2022-06-05 19:12:29'),
(123, 'dso-report', 'web', '2022-06-05 19:12:29', '2022-06-05 19:12:29'),
(124, 'supplier-due-report', 'web', '2023-02-13 08:38:38', '2023-02-13 08:38:38'),
(125, 'product_history', 'web', '2023-02-13 08:43:13', '2023-02-13 08:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

DROP TABLE IF EXISTS `pos_setting`;
CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 08:17:04', '2023-02-20 08:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_option` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `variant_option`, `variant_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Triplek MC 12 mm', 'T-MC12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 170000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-07-31 05:18:28', '2023-03-04 08:38:18'),
(2, 'Triplek MC 18 mm', 'T-MC18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 235000, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-07-31 09:38:57', '2023-03-09 04:06:11'),
(3, 'Triplek MC 15 mm', 'T-MC15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 202500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-02-26 03:08:42', '2023-03-03 02:18:41'),
(4, 'Triplek MC 9 mm', 'T-MC09', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 132500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-03 02:21:16', '2023-03-03 02:21:16'),
(5, 'Triplek MC 6 mm', 'T-MC06', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 90000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:00:35', '2023-03-09 01:00:35'),
(6, 'Triplek MC 4 mm', 'T-MC04', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 80000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:02:50', '2023-03-09 01:02:50'),
(7, 'Triplek MC 3 mm', 'T-MC03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 65000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:04:01', '2023-03-09 01:04:01'),
(8, 'Triplek Trimil DF 18mm', 'T-TDF18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 340500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:04:06', '2023-03-09 01:04:06'),
(9, 'Triplek BBCC 18 mm', 'T-BBCC18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 260000, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:05:45', '2023-03-09 03:41:42'),
(10, 'Triplek Trimil SF 18mm', 'T-TSF18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 283500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:05:57', '2023-03-09 01:05:57'),
(11, 'Triplek Trimil SF 15mm', 'T-TSF15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 243000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:07:00', '2023-03-09 01:07:00'),
(12, 'Triplek BBCC 15 mm', 'T-BBCC15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 225000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:07:03', '2023-03-09 01:07:03'),
(13, 'Triplek Trimil SF 12mm', 'T-TSF12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 211000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:07:59', '2023-03-09 01:07:59'),
(14, 'Triplek BBCC 12 mm', 'T-BBCC12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 182500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:08:21', '2023-03-09 01:08:21'),
(15, 'Triplek Trimil SF 9mm', 'T-TSF09', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 187500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:09:02', '2023-03-09 01:09:02'),
(16, 'Triplek BBCC 9 mm', 'T-BBCC09', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 155000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:09:46', '2023-03-09 01:09:46'),
(17, 'Triplek Trimil SF 6mm', 'T-TSF06', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:09:48', '2023-03-09 01:09:48'),
(18, 'Triplek Melaminto Daf 3mm', 'T-MD03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 131500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:12:29', '2023-03-09 01:12:29'),
(19, 'Triplek Full Meranti Papua 18mm', 'T-FMP18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 430000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:13:49', '2023-03-09 01:13:49'),
(20, 'Triplek Melaminto Kilat 3mm', 'T-MK03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 140000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:13:58', '2023-03-09 01:13:58'),
(21, 'Triplek Full Meranti Papua 15mm', 'T-FMP15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 350000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:14:34', '2023-03-09 01:14:34'),
(22, 'Triplek Full Meranti Papua 12mm', 'T-FMP12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 270000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:15:15', '2023-03-09 01:15:15'),
(23, 'Triplek Super Daf 3mm', 'T-SD03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 149500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:15:21', '2023-03-09 01:15:21'),
(24, 'Triplek Full Meranti Papua 9mm', 'T-FMP09', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:16:16', '2023-03-09 01:16:16'),
(25, 'Triplek Hitam Daf 3mm', 'T-HD03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 150000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:16:54', '2023-03-09 01:16:54'),
(26, 'Triplek BBCC Meranti Kalimantan 18mm', 'T-BMK18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 430000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:17:25', '2023-03-09 01:17:25'),
(27, 'Triplek Hitam Glossy 3mm', 'T-HG03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 150000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:18:02', '2023-03-09 01:18:02'),
(28, 'Triplek BBCC Meranti Kalimantan 15mm', 'T-BMK15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 350000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:18:21', '2023-03-09 01:22:02'),
(29, 'Triplek MDF Hijau 3mm', 'T-MDFH03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 66500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:19:20', '2023-03-09 01:32:43'),
(30, 'Triplek BBCC Meranti Kalimantan 12mm', 'T-BMK12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 270000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:19:38', '2023-03-09 01:21:42'),
(31, 'Triplek Blokmil SF 18mm', 'T-BSF18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 244000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:20:58', '2023-03-09 01:20:58'),
(32, 'Triplek BBCC Meranti Kalimantan 9mm', 'T-BMK09', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:21:10', '2023-03-09 01:21:10'),
(33, 'Triplek Blokmil SF 15mm', 'T-BSF15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 238500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:22:11', '2023-03-09 01:22:11'),
(34, 'Triplek Blokmil DF 18 mm', 'T-BDF18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 307500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:23:39', '2023-03-09 01:23:39'),
(35, 'Triplek Bloktik 18mm', 'T-BLTK18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 450000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:24:07', '2023-03-09 01:24:07'),
(36, 'Triplek Blokmil DF 15mm', 'T-BDF15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 300000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:24:46', '2023-03-09 01:24:46'),
(37, 'Triplek MDF Hijau 18mm', 'T-MDFH18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 345500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:28:03', '2023-03-09 01:28:03'),
(38, 'Triplek MDF Biasa 18mm', 'T-MDFB18', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 245000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:28:59', '2023-03-09 01:28:59'),
(39, 'Triplek MDF Hijau 15mm', 'T-MDFH15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 288000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:29:00', '2023-03-09 01:29:00'),
(40, 'Triplek MDF Hijau 12mm', 'T-MDFH12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 236000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:29:52', '2023-03-09 01:29:52'),
(41, 'Triplek MDF Biasa 15mm', 'T-MDFB15', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 198000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:30:05', '2023-03-09 01:30:05'),
(42, 'Triplek MDF Hijau 9mm', 'T-MDFH09', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 188500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:30:58', '2023-03-09 01:30:58'),
(43, 'Triplek MDF Hijau 6mm', 'T-MDFH06', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 135500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:30:58', '2023-03-09 01:33:36'),
(44, 'Triplek MDF Biasa 12mm', 'T-MDFB12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 166500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:31:55', '2023-03-09 01:31:55'),
(45, 'Triplek MDF Biasa 12mm', 'T-MDFB12', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 166500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:31:55', '2023-03-09 01:31:55'),
(46, 'Triplek MDF Biasa 9mm', 'T-MDFB009', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 133500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:33:27', '2023-03-09 01:33:27'),
(47, 'Triplek MDF Biasa 6mm', 'T-MDFB006', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 97500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:34:42', '2023-03-09 01:34:42'),
(48, 'Triplek MDF Biasa 3mm', 'T-MDFB003', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 54500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:37:34', '2023-03-09 01:37:34'),
(49, 'Triplek Teak Wood Jati 3mm', 'T-TWJ03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 215000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:39:41', '2023-03-09 01:39:41'),
(50, 'Triplek Mega Teak 3mm', 'T-MT03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 165000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:41:00', '2023-03-09 01:41:00'),
(51, 'Triplek Nyatoh 3mm', 'T-N03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 215000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:42:19', '2023-03-09 01:42:19'),
(52, 'Triplek Mega Nyatoh 3mm', 'T-MN03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 165000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:43:31', '2023-03-09 01:43:31'),
(53, 'Triplek Sungkai 3mm', 'T-S03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 235000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:44:41', '2023-03-09 01:44:41'),
(54, 'Triplek Mega Sungkai 3mm', 'T-MS03', 'standard', 'C128', 9, 4, 1, 1, 1, 0, 165000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:45:55', '2023-03-09 01:45:55'),
(55, 'Vinil Putih 2cm', 'V-P02', 'standard', 'C128', 9, 26, 11, 11, 11, 0, 25000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:51:57', '2023-03-09 04:03:01'),
(56, 'Vinil Putih 2,5cm', 'V-P2,5', 'standard', 'C128', 9, 26, 11, 11, 11, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:53:15', '2023-03-09 04:02:39'),
(57, 'Vinil Putih 4cm', 'V-P04', 'standard', 'C128', 9, 26, 11, 11, 11, 0, 40000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:54:42', '2023-03-09 04:03:28'),
(58, 'Vinil Putih 5cm', 'V-P05', 'standard', 'C128', 9, 26, 11, 11, 11, 0, 50000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:56:28', '2023-03-09 04:03:54'),
(59, 'Acrylic Susu 2mm', 'A-S02', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 500000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:57:44', '2023-03-09 01:57:44'),
(60, 'PVC Board 18mm', 'PVC-B18', 'standard', 'C128', 9, 25, 1, 1, 1, 0, 590000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:58:25', '2023-03-09 01:58:25'),
(61, 'Acrylic Susu 3mm', 'A-S03', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 650000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:58:36', '2023-03-09 01:58:36'),
(62, 'Acrylic Susu 5mm', 'A-S05', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 1125000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:59:14', '2023-03-09 01:59:14'),
(63, 'Acrylic Bening 2mm', 'A-B02', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 450000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 01:59:55', '2023-03-09 03:51:44'),
(64, 'PVC Board 15mm', 'PVC-B15', 'standard', 'C128', 9, 25, 1, 1, 1, 0, 510000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:00:02', '2023-03-09 02:00:02'),
(65, 'Acrylic Bening 3mm', 'A-B03', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 650000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:00:44', '2023-03-09 02:02:20'),
(66, 'PVC Board 12mm', 'PVC-B12', 'standard', 'C128', 9, 25, 1, 1, 1, 0, 410000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:01:10', '2023-03-09 02:01:10'),
(67, 'Acrylic Bening 5mm', 'A-B05', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 1050000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:02:07', '2023-03-09 02:02:07'),
(68, 'PVC Board 9mm', 'PVC-B09', 'standard', 'C128', 9, 25, 1, 1, 1, 0, 315000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:03:23', '2023-03-09 04:02:16'),
(69, 'Acrylic Hitam 2mm', 'A-H02', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 550000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:03:32', '2023-03-09 02:03:32'),
(70, 'Acrylic Hitam 3mm', 'A-H03', 'standard', 'C128', 9, 24, 1, 1, 1, 0, 750000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:05:26', '2023-03-09 02:05:26'),
(71, 'PVC Board 6mm', 'PVC-B06', 'standard', 'C128', 9, 25, 1, 1, 1, 0, 245000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 02:05:59', '2023-03-09 02:05:59'),
(72, 'Vinil Putih (B) 2cm', 'V-PB02', 'standard', 'C128', 9, 26, 1, 1, 1, 0, 125000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 04:06:52', '2023-03-09 04:57:46'),
(73, 'Vinil Putih 2cm (Roll besar)', 'V-PRB02', 'standard', 'C128', 9, 5, 12, 12, 12, 0, 125000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 04:56:02', '2023-03-09 04:56:02'),
(74, 'Vinil Putih 2,5cm (Roll Besar)', 'V-PRB2,5', 'standard', 'C128', 9, 5, 12, 12, 12, 0, 150000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:01:54', '2023-03-09 05:01:54'),
(75, 'Vinil Putih 4cm (Roll Besar)', 'V-PRB04', 'standard', 'C128', 9, 5, 12, 12, 12, 0, 200000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:03:43', '2023-03-09 05:03:43'),
(76, 'Vinil Putih 5cm (Roll Besar)', 'V-PRB05', 'standard', 'C128', 9, 5, 12, 12, 12, 0, 250000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:05:21', '2023-03-09 05:05:21'),
(77, 'Vinil Jati Roll', 'V-JR', 'standard', 'C128', 9, 5, 13, 13, 13, 0, 100000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:08:47', '2023-03-09 05:08:47'),
(78, 'Vinil Sungkai', 'V-SR', 'standard', 'C128', 9, 5, 13, 13, 13, 0, 100000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:11:26', '2023-03-09 05:11:26'),
(79, 'Vinil Mega Teak Roll', 'V-MTR', 'standard', 'C128', 9, 5, 13, 13, 13, 0, 100000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:12:45', '2023-03-09 05:12:45'),
(80, 'Vinil Nyantoh Roll', 'V-NR', 'standard', 'C128', 9, 5, 13, 13, 13, 0, 100000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:13:49', '2023-03-09 05:13:49'),
(81, 'Vinil Jati Kg', 'V-JKG', 'standard', 'C128', 9, 5, 8, 8, 8, 0, 235000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:17:56', '2023-03-09 05:17:56'),
(82, 'Vinil Nyantoh Kg', 'V-NKG', 'standard', 'C128', 9, 5, 12, 12, 12, 0, 235000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:19:20', '2023-03-09 05:19:20'),
(83, 'Vinil Sungkai Kg', 'V-SKG', 'standard', 'C128', 9, 5, 8, 8, 8, 0, 235000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:20:50', '2023-03-09 05:20:50'),
(84, 'Vinil Mega Teak Kg', 'V-MTKG', 'standard', 'C128', 9, 5, 8, 8, 8, 0, 235000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:22:36', '2023-03-09 05:22:36'),
(85, 'Vinil Mega Sungkai Kg', 'V-MSKG', 'standard', 'C128', 9, 5, 13, 13, 13, 0, 235000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:24:34', '2023-03-09 05:24:34'),
(86, 'Lem 168 (Galon)', 'L-168', 'standard', 'C128', 9, 2, 9, 9, 9, 0, 133000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:26:55', '2023-03-09 05:26:55'),
(87, 'Lem Fox Merah (Galon)', 'L-FMG', 'standard', 'C128', 5, 2, 9, 9, 9, 0, 165000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:28:21', '2023-03-09 05:35:23'),
(88, 'Lem Prima-D (Galon)', 'L-PDG', 'standard', 'C128', 9, 2, 9, 9, 9, 0, 170000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:30:17', '2023-03-09 05:30:17'),
(89, 'Lem Qibon (Galon)', 'L-QG', 'standard', 'C128', 6, 2, 9, 9, 9, 0, 105000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:31:34', '2023-03-09 05:34:48'),
(90, 'Lem Putih (Botol)', 'L-PB', 'standard', 'C128', 9, 2, 14, 14, 14, 0, 35000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:37:12', '2023-03-09 05:37:12'),
(91, 'Lem Putih (Bungkus)', 'L-PBKS', 'standard', 'C128', 9, 2, 5, 5, 5, 0, 23500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:38:36', '2023-03-09 05:38:36'),
(92, 'Lem Alteko', 'L-A8', 'standard', 'C128', 9, 2, 7, 7, 7, 0, 8000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:40:29', '2023-03-09 05:40:29'),
(93, 'Lem Superbon Ungu (Galon)', 'L-SUG', 'standard', 'C128', 9, 2, 9, 9, 9, 0, 142000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:43:28', '2023-03-09 05:43:28'),
(94, 'Lem Presto', 'L-P', 'standard', 'C128', 9, 2, 7, 7, 7, 0, 35000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:45:02', '2023-03-09 05:45:02'),
(95, 'Lem Fox Green (Blek)', 'L-FGB', 'standard', 'C128', 5, 2, 10, 10, 10, 0, 850000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:46:45', '2023-03-09 05:46:45'),
(96, 'Lem 168 Polos (Blek)', 'L-168PB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 505000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:48:12', '2023-03-09 05:48:12'),
(97, 'Lem 168 MR (Blek)', 'L-168MR', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 470000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:49:26', '2023-03-09 05:49:26'),
(98, 'Lem 168 KLM (BLEK)', 'L-168KLMB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 388000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:51:26', '2023-03-09 05:54:35'),
(99, 'Lem Fox Merah (Blek)', 'L-FMB', 'standard', 'C128', 5, 2, 10, 10, 10, 0, 772000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:56:04', '2023-03-09 05:56:04'),
(100, 'Tiner 1KG', 'TN-1KG', 'standard', 'C128', 9, 27, 8, 8, 8, 0, 40000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:57:25', '2023-03-09 05:57:25'),
(101, 'Lem Prima-D (Blek)', 'L-PDB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 785000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:57:26', '2023-03-09 05:57:26'),
(102, 'Lem Isamu Spray (Blek)', 'l-ISB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 665000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 05:58:44', '2023-03-09 05:58:44'),
(103, 'Lem Qibond Biru (Blek)', 'L-QBB', 'standard', 'C128', 6, 2, 10, 10, 10, 0, 425000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:00:04', '2023-03-09 06:00:04'),
(104, 'Lem Qibond Kuning (Blek)', 'L-QBKB', 'standard', 'C128', 6, 2, 10, 10, 10, 0, 455000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:01:18', '2023-03-09 06:01:18'),
(105, 'Lem Superbon Ungu (Blek)', 'L-SUB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 510000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:02:33', '2023-03-09 06:02:33'),
(106, 'Lem Superbon black (Blek)', 'L-SBB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 420000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:03:47', '2023-03-09 06:03:47'),
(107, 'Lem Putih (Blek)', 'L-PBL', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 275000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:06:08', '2023-03-09 06:06:08'),
(108, 'Lem Aikabon (Blek)', 'L-AKB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 480000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:07:57', '2023-03-09 06:07:57'),
(109, 'Lem Taco Biru (Blek)', 'L-TCB', 'standard', 'C128', 1, 2, 10, 10, 10, 0, 425000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:09:24', '2023-03-09 06:09:24'),
(110, 'Lem Taco Active (Blek)', 'L-TCAB', 'standard', 'C128', 1, 2, 10, 10, 10, 0, 465000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:10:23', '2023-03-09 06:10:23'),
(111, 'Lem Maestro (Blek)', 'L-MB', 'standard', 'C128', 9, 2, 10, 10, 10, 0, 470000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:11:32', '2023-03-09 06:11:32'),
(112, 'Tiner', 'TNR-G', 'standard', 'C128', 9, 27, 9, 9, 9, 0, 150000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:14:08', '2023-03-09 06:16:10'),
(113, 'Sampolack Kecil', 'SMPLCK-K', 'standard', 'C128', 9, 28, 15, 15, 15, 0, 52000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:23:58', '2023-03-09 06:23:58'),
(114, 'Sampolack Besar', 'SMPLCK-B', 'standard', 'C128', 9, 28, 16, 16, 16, 0, 167000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:25:01', '2023-03-09 06:25:01'),
(115, 'Mataruter 3mm', 'MTRT-3', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:30:36', '2023-03-09 06:42:35'),
(116, 'Mataruter 4mm', 'MTRT-4', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:32:32', '2023-03-09 06:43:57'),
(117, 'Mataruter 5mm', 'MTRT-5', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:34:56', '2023-03-09 06:44:22'),
(118, 'Mataruter 6mm', 'MTRT-6', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:36:24', '2023-03-09 06:44:47'),
(119, 'Mataruter 8mm', 'MTRT-8', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:37:26', '2023-03-09 06:45:18'),
(120, 'Mataruter 10mm', 'MTRT-10', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:38:24', '2023-03-09 06:41:37'),
(121, 'Mataruter 12mm', 'MTRT-12', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:39:22', '2023-03-09 06:42:05'),
(122, 'Mataruter Roda 6mm', 'MTRD-6', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 50000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:40:59', '2023-03-09 06:43:19'),
(123, 'Mataruter Roda 8mm', 'MTRD-8', 'standard', 'C128', 9, 31, 7, 7, 7, 0, 55000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:47:07', '2023-03-09 06:48:51'),
(124, 'Mataruter Roda 10mm', 'MTRD-10', 'standard', 'C128', 9, 31, 7, 7, 7, 0, 55000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:48:15', '2023-03-09 06:48:15'),
(125, 'Mataruter Roda 12mm', 'MTRD-12', 'standard', 'C128', 9, 29, 7, 7, 7, 0, 55000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:50:57', '2023-03-09 06:50:57'),
(126, 'Viser S6', 'VSR-S6', 'standard', 'C128', 9, 32, 7, 7, 7, 0, 7000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:53:03', '2023-03-09 06:53:03'),
(127, 'Viser S8', 'VSR-S8', 'standard', 'C128', 9, 32, 7, 7, 7, 0, 10000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:54:39', '2023-03-09 06:54:39'),
(128, 'Matabor Beton 3mm', 'MTB-BTN3', 'standard', 'C128', 9, 30, 7, 7, 7, 0, 19500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:56:01', '2023-03-09 06:56:01'),
(129, 'Matabor Beton 4mm', 'MTB-BTN4', 'standard', 'C128', 9, 30, 7, 7, 7, 0, 22500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:57:17', '2023-03-09 06:57:17'),
(130, 'Matabor Beton 5mm', 'MTB-BTN5', 'standard', 'C128', 9, 30, 7, 7, 7, 0, 25000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 06:59:18', '2023-03-09 06:59:18'),
(131, 'Matabor Beton 6mm', 'MTB-BTN6', 'standard', 'C128', 9, 30, 7, 7, 7, 0, 27500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:00:28', '2023-03-09 07:00:28'),
(132, 'Matabor Beton 8mm', 'MTB-BTN8', 'standard', 'C128', 9, 30, 7, 7, 7, 0, 30000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:01:39', '2023-03-09 07:01:39'),
(133, 'Matabor Beton 10mm', 'MTB-BTN10', 'standard', 'C128', 9, 30, 7, 7, 7, 0, 40000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:03:00', '2023-03-09 07:03:00'),
(134, 'Matabor Beton 12mm', 'MTB-BTN12', 'standard', 'C128', 9, 30, 7, 7, 7, 0, 56000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:04:32', '2023-03-09 07:04:32'),
(135, 'Mata Gergaji', 'MT-GGJ', 'standard', 'C128', 9, 33, 7, 7, 7, 0, 20000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:07:53', '2023-03-09 07:07:53'),
(136, 'Mata Serkel Bosh', 'MTSKL-BOSH', 'standard', 'C128', 9, 34, 7, 7, 7, 0, 190000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:09:05', '2023-03-09 07:09:05'),
(137, 'Mata Serkel Makita', 'MTSKL-MKT', 'standard', 'C128', 9, 35, 7, 7, 7, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:10:33', '2023-03-09 07:10:33'),
(138, 'Mata Serkel Makita', 'MTSKL-MKT', 'standard', 'C128', 9, 35, 7, 7, 7, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:10:33', '2023-03-09 07:10:33'),
(139, 'Matabor Nachi 2mm', 'MTB-NCH2', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 22500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:14:04', '2023-03-09 07:14:04'),
(140, 'Matabor Nachi 2,5mm', 'MTB-NCH2,5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 22500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:15:34', '2023-03-09 07:15:34'),
(141, 'Matabor Nachi 3mm', 'MTB-NCH3', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 23000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:16:33', '2023-03-09 07:16:33'),
(142, 'Matabor Nachi 3,5mm', 'MTB-NCH3,5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 25000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:18:04', '2023-03-09 07:18:04'),
(143, 'Matabor Nachi 4mm', 'MTB-NCH4', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 29000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:19:15', '2023-03-09 07:19:15'),
(144, 'Matabor Nachi 4,5mm', 'MTB-NCH4,5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 35000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:21:07', '2023-03-09 07:21:07'),
(145, 'Matabor Nachi 5mm', 'MTB-NCH5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 42000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:23:09', '2023-03-09 07:23:09'),
(146, 'Matabor Nachi 5,5mm', 'MTB-NCH5,5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 47500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:24:41', '2023-03-09 07:24:41'),
(147, 'Matabor Nachi 6mm', 'MTB-NCH6', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 54500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:25:51', '2023-03-09 07:25:51'),
(148, 'Matabor Nachi 6,5mm', 'MTB-NCH6,5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 62000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:29:20', '2023-03-09 07:29:20'),
(149, 'Matabor Nachi 7mm', 'MTB-NCH7', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 69000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:30:56', '2023-03-09 07:30:56'),
(150, 'Matabor Nachi 7,5mm', 'MTB-NCH7,5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 80500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:32:48', '2023-03-09 07:32:48'),
(151, 'Matabor Nachi 8mm', 'MTB-NCH8', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 86000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:35:46', '2023-03-09 07:35:46'),
(152, 'Matabor Nachi 8,5mm', 'MTB-NCH8,5', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 95000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:37:36', '2023-03-09 07:37:36'),
(153, 'Matabor Nachi 9mm', 'MTB-NCH9', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 111000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:39:05', '2023-03-09 07:39:05'),
(154, 'Minilat Abu Pendek', 'M-AP', 'standard', 'C128', 9, 37, 7, 7, 7, 0, 12000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:40:35', '2023-03-09 07:40:35'),
(155, 'Matabor Nachi 10mm', 'MTB-NCH10', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 142000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:41:22', '2023-03-09 07:41:22'),
(156, 'Minilat Abu Panjang', 'M-APJ', 'standard', 'C128', 9, 37, 7, 7, 7, 0, 12000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:41:42', '2023-03-09 07:41:42'),
(157, 'Matabor Nachi 11mm', 'MTB-NCH11', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 177000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:42:19', '2023-03-09 07:42:19'),
(158, 'Minilat Putih Pendek', 'M-APPT', 'standard', 'C128', 9, 37, 7, 7, 7, 0, 12000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:42:21', '2023-03-09 07:42:21'),
(159, 'Minilat Putih Panjang', 'M-PPJ', 'standard', 'C128', 9, 37, 7, 7, 7, 0, 12000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:43:01', '2023-03-09 07:43:01'),
(160, 'Matabor Nachi 12mm', 'MTB-NCH12', 'standard', 'C128', 9, 36, 7, 7, 7, 0, 209000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:43:24', '2023-03-09 07:43:24'),
(161, 'HPL TACO TH 001 AA', 'TH-001AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 120000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:49:23', '2023-03-09 07:52:06'),
(162, 'HPL TACO TH 003 AA', 'TH-003AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:51:40', '2023-03-09 07:51:40'),
(163, 'HPL TACO TH 002 AA', 'TH-002AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 120000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:51:45', '2023-03-09 07:51:45'),
(164, 'HPL TACO TH 004 AA', 'TH-004AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:53:29', '2023-03-09 07:53:29'),
(165, 'HPL TACO TH 016 AA', 'TH-016AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 120000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:53:58', '2023-03-09 07:53:58'),
(166, 'HPL TACO TH 005 AA', 'TH-005AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:55:10', '2023-03-09 07:55:10'),
(167, 'HPL TACO TH 006 AA', 'TH-006AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:56:46', '2023-03-09 07:56:46'),
(168, 'HPL TACO TH 025 AA', 'TH-025AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:56:49', '2023-03-09 07:56:49'),
(169, 'HPL TACO TH 026 AA', 'TH-026AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:57:45', '2023-03-09 07:57:45'),
(170, 'HPL TACO TH 007 AA', 'TH-007AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:58:11', '2023-03-09 07:58:11'),
(171, 'HPL TACO TH 009 AA', 'TH-009', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:59:19', '2023-03-09 07:59:19'),
(172, 'HPL TACO TH 027 AA', 'TH-027AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 07:59:32', '2023-03-09 07:59:32'),
(173, 'HPL TACO TH 029 AA', 'TH-029AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:00:11', '2023-03-09 08:00:11'),
(174, 'HPL TACO TH 010 AA', 'TH-010AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:00:17', '2023-03-09 08:00:17'),
(175, 'HPL TACO TH 030 AA', 'TH-030AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:00:55', '2023-03-09 08:00:55'),
(176, 'HPL TACO TH 011 AA', 'TH-011AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:01:27', '2023-03-09 08:01:27');
INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `variant_option`, `variant_value`, `is_active`, `created_at`, `updated_at`) VALUES
(177, 'HPL TACO TH 031 AA', 'TH-031AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:01:48', '2023-03-09 08:01:48'),
(178, 'HPL TACO TH 012 AA', 'TH-012', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:02:17', '2023-03-09 08:02:17'),
(179, 'HPL TACO TH 032 AA', 'TH-032AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:02:32', '2023-03-09 08:02:32'),
(180, 'HPL TACO TH 013 AA', 'TH-013', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:03:16', '2023-03-09 08:03:16'),
(181, 'HPL TACO TH 033 AA', 'TH-033AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:03:25', '2023-03-09 08:03:25'),
(182, 'HPL TACO TH 034 AA', 'TH-034AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:04:03', '2023-03-09 08:04:03'),
(183, 'HPL TACO TH 014 AA', 'TH-0014AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:04:21', '2023-03-09 08:04:21'),
(184, 'HPL TACO TH 035 AA', 'TH-035AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:04:41', '2023-03-09 08:04:41'),
(185, 'HPL TACO TH 036 AA', 'TH-036AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:05:16', '2023-03-09 08:05:16'),
(186, 'HPL TACO TH 015 AA', 'TH-015AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:05:23', '2023-03-09 08:05:23'),
(187, 'HPL TACO TH 037 AA', 'TH-037AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:06:09', '2023-03-09 08:06:09'),
(188, 'HPL TACO TH 017 AA', 'TH-017AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:06:38', '2023-03-09 08:06:38'),
(189, 'HPL TACO TH 038 AA', 'TH-038AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:06:46', '2023-03-09 08:06:46'),
(190, 'HPL TACO TH 018 AA', 'TH-018AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:07:43', '2023-03-09 08:07:43'),
(191, 'HPL TACO TH 039 AA', 'TH-039AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:08:05', '2023-03-09 08:08:05'),
(192, 'HPL TACO TH 040 AA', 'TH-040AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:08:48', '2023-03-09 08:08:48'),
(193, 'HPL TACO TH 041 AA', 'TH-041AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:09:26', '2023-03-09 08:09:26'),
(194, 'HPL TACO TH 019 AA', 'TH-019AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:09:27', '2023-03-09 08:09:27'),
(195, 'HPL TACO TH 042 AA', 'TH-042AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:09:57', '2023-03-09 08:09:57'),
(196, 'HPL TACO TH 020 AA', 'TH-020AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:10:32', '2023-03-09 08:10:32'),
(197, 'HPL TACO TH 043 AA', 'TH-043AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:10:34', '2023-03-09 08:10:34'),
(198, 'HPL TACO TH 024 AA', 'TH-024AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:12:09', '2023-03-09 08:12:09'),
(199, 'HPL TACO TH 045 AA', 'TH-045AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:12:37', '2023-03-09 08:12:37'),
(200, 'HPL TACO TH 048 AA', 'TH-048AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:13:33', '2023-03-09 08:13:33'),
(201, 'HPL TACO TH 021 AA', 'TH-021AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:13:41', '2023-03-09 08:13:41'),
(202, 'HPL TACO TH 049 AA', 'TH-049AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:14:08', '2023-03-09 08:14:08'),
(203, 'HPL TACO TH 022 AA', 'TH-022AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:14:37', '2023-03-09 08:14:37'),
(204, 'HPL TACO TH 050 AA', 'TH-050AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 145000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:14:45', '2023-03-09 08:14:45'),
(205, 'HPL TACO TH 003 D', 'TH-003D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:16:35', '2023-03-09 08:16:35'),
(206, 'HPL TACO TH 002 G', 'TH-002G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:16:39', '2023-03-09 08:16:39'),
(207, 'HPL TACO TH 003 G', 'TH-003G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:17:16', '2023-03-09 08:17:16'),
(208, 'HPL TACO TH 004 D', 'TH-004D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:17:42', '2023-03-09 08:17:42'),
(209, 'HPL TACO TH 004 G', 'TH-004G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:17:56', '2023-03-09 08:17:56'),
(210, 'HPL TACO TH 009 D', 'TH-009D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:18:37', '2023-03-09 08:18:37'),
(211, 'HPL TACO TH 014 D', 'TH-014D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:19:42', '2023-03-09 08:19:42'),
(212, 'HPL TACO TH 015 D', 'TH-015D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:20:47', '2023-03-09 08:20:47'),
(213, 'HPL TACO TH 017 D', 'TH-017D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:21:44', '2023-03-09 08:21:44'),
(214, 'HPL TACO TH 005 G', 'TH-005G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:24:44', '2023-03-09 08:24:44'),
(215, 'HPL TACO TH 006 G', 'TH-006G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:25:24', '2023-03-09 08:25:24'),
(216, 'HPL TACO TH 018 D', 'TH-018D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:25:47', '2023-03-09 08:25:47'),
(217, 'HPL TACO TH 007 G', 'TH-007G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:26:18', '2023-03-09 08:26:18'),
(218, 'HPL TACO TH 022 D', 'TH-022D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:26:36', '2023-03-09 08:26:36'),
(219, 'HPL TACO TH 026 D', 'TH-026D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:27:27', '2023-03-09 08:27:27'),
(220, 'HPL TACO TH 038 D', 'TH-038D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:28:20', '2023-03-09 08:28:20'),
(221, 'HPL TACO TH 008 G', 'TH-008G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:28:41', '2023-03-09 08:28:41'),
(222, 'HPL TACO TH 042 D', 'TH-042D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:29:18', '2023-03-09 08:29:18'),
(223, 'HPL TACO TH 009 G', 'TH-009G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:29:29', '2023-03-09 08:29:29'),
(224, 'HPL TACO TH 011 G', 'TH-011G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:30:04', '2023-03-09 08:30:04'),
(225, 'HPL TACO TH 048 D', 'TH-048D', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:30:14', '2023-03-09 08:30:14'),
(226, 'HPL TACO TH 014 G', 'TH-014G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:31:16', '2023-03-09 08:31:16'),
(227, 'HPL TACO TH 026 G', 'TH-026G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:31:44', '2023-03-09 08:31:44'),
(228, 'HPL TACO TH 015 G', 'TH-015G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:31:49', '2023-03-09 08:31:49'),
(229, 'HPL TACO TH 017 G', 'TH-017G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:32:23', '2023-03-09 08:32:23'),
(230, 'HPL TACO TH 028 G', 'TH-028G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:32:38', '2023-03-09 08:32:38'),
(231, 'HPL TACO TH 018 G', 'TH-018G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:32:58', '2023-03-09 08:32:58'),
(232, 'HPL TACO TH 029 G', 'TH-029G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:33:39', '2023-03-09 08:33:39'),
(233, 'HPL TACO TH 019 G', 'TH-019G', 'standard', 'C128', 1, 3, 2, 2, 2, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:33:43', '2023-03-09 08:33:43'),
(234, 'HPL TACO TH 022 G', 'TH-022G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:34:16', '2023-03-09 08:34:16'),
(235, 'HPL TACO TH 030 G', 'TH-030G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:34:41', '2023-03-09 08:34:41'),
(236, 'HPL TACO TH 031 G', 'TH-031G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:35:30', '2023-03-09 08:35:30'),
(237, 'HPL TACO TH 037 G', 'TH-037G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:40:04', '2023-03-09 08:40:04'),
(238, 'HPL TACO TH 038 G', 'TH-038G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:41:03', '2023-03-09 08:41:03'),
(239, 'HPL TACO TH 040 G', 'TH-040G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:42:06', '2023-03-09 08:42:06'),
(240, 'HPL TACO TH 045 G', 'TH-045G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:43:00', '2023-03-09 08:43:00'),
(241, 'HPL TACO TH 048 G', 'TH-048G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:44:25', '2023-03-09 08:44:25'),
(242, 'HPL TACO TH 042 G', 'TH-042G', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 191000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:46:15', '2023-03-09 08:46:15'),
(243, 'HPL TACO TH 100 AA', 'TH-100AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:50:06', '2023-03-09 08:51:59'),
(244, 'HPL TACO TH 101 AA', 'TH-101AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:51:29', '2023-03-09 08:51:29'),
(245, 'HPL TACO TH 102 AA', 'TH-102AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:53:23', '2023-03-09 08:53:23'),
(246, 'HPL TACO TH 130 AA', 'TH-130AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:53:56', '2023-03-09 08:53:56'),
(247, 'HPL TACO TH 103 AA', 'TH-103AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:54:31', '2023-03-09 08:54:31'),
(248, 'HPL TACO TH 131 AA', 'TH-131AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:54:35', '2023-03-09 08:54:35'),
(249, 'HPL TACO TH 133 AA', 'TH-133AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:55:17', '2023-03-09 08:55:17'),
(250, 'HPL TACO TH 105 AA', 'TH-105AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:55:44', '2023-03-09 08:55:44'),
(251, 'HPL TACO TH 134 AA', 'TH-134AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:56:03', '2023-03-09 08:56:03'),
(252, 'HPL TACO TH 135 AA', 'TH-135AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:56:41', '2023-03-09 08:56:41'),
(253, 'HPL TACO TH 106 AA', 'TH-106AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:56:47', '2023-03-09 08:56:47'),
(254, 'HPL TACO TH 150 AA', 'TH-150AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:57:36', '2023-03-09 08:57:36'),
(255, 'HPL TACO TH 107 AA', 'TH-107AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:57:52', '2023-03-09 08:57:52'),
(256, 'HPL TACO TH 152 G', 'TH-152AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:58:34', '2023-03-09 08:58:34'),
(257, 'HPL TACO TH 108 AA', 'TH-108AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:59:10', '2023-03-09 08:59:10'),
(258, 'HPL TACO TH 153 AA', 'TH-153AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:59:14', '2023-03-09 08:59:14'),
(259, 'HPL TACO TH 154 AA', 'TH-154AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 08:59:55', '2023-03-09 08:59:55'),
(260, 'HPL TACO TH 10 AA', 'TH-109AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:00:11', '2023-03-09 09:00:11'),
(261, 'HPL TACO TH 155 AA', 'TH-155AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:00:27', '2023-03-09 09:00:27'),
(262, 'HPL TACO TH 111 AA', 'TH-111AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:01:09', '2023-03-09 09:01:09'),
(263, 'HPL TACO TH 156 AA', 'TH-156AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:01:09', '2023-03-09 09:01:09'),
(264, 'HPL TACO TH 157 AA', 'TH-157AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:01:45', '2023-03-09 09:01:45'),
(265, 'HPL TACO TH 158 AA', 'TH-158AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:02:16', '2023-03-09 09:02:16'),
(266, 'HPL TACO TH 118 AA', 'TH-118AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:02:19', '2023-03-09 09:02:19'),
(267, 'HPL TACO TH 167 AA', 'TH-167AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:02:56', '2023-03-09 09:02:56'),
(268, 'HPL TACO TH 178 AA', 'TH-178AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:03:30', '2023-03-09 09:03:30'),
(269, 'HPL TACO TH 119 AA', 'TH-119AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:03:33', '2023-03-09 09:03:33'),
(270, 'HPL TACO TH 180 AA', 'TH-180AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:04:16', '2023-03-09 09:04:16'),
(271, 'HPL TACO TH 186 AA', 'TH-186AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:04:53', '2023-03-09 09:04:53'),
(272, 'HPL TACO TH 120 AA', 'TH-120AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:05:08', '2023-03-09 09:05:08'),
(273, 'HPL TACO TH 187 AA', 'TH-187AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:05:27', '2023-03-09 09:05:27'),
(274, 'HPL TACO TH 188 AA', 'TH-188AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:06:04', '2023-03-09 09:06:04'),
(275, 'HPL TACO TH 121 AA', 'TH-121AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:06:04', '2023-03-09 09:06:04'),
(276, 'HPL TACO TH 200 AA', 'TH-200AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:06:35', '2023-03-09 09:06:35'),
(277, 'HPL TACO TH 122 AA', 'TH-122AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:07:05', '2023-03-09 09:07:05'),
(278, 'HPL TACO TH 212 AA', 'TH-212AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:07:08', '2023-03-09 09:07:08'),
(279, 'HPL TACO TH 215 AA', 'TH-215AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:07:42', '2023-03-09 09:07:42'),
(280, 'HPL TACO TH 123 AA', 'TH-123AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:08:00', '2023-03-09 09:08:00'),
(281, 'HPL TACO TH 129 AA', 'TH-129AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:09:13', '2023-03-09 09:09:13'),
(282, 'HPL TACO TH 7201 AA', 'TH-7201AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:09:13', '2023-03-09 09:09:13'),
(283, 'HPL TACO TH 7202 AA', 'TH-7202AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:09:48', '2023-03-09 09:09:48'),
(284, 'HPL TACO TH 7203 AA', 'TH-7203AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:10:53', '2023-03-09 09:10:53'),
(285, 'HPL TACO TH 7204 AA', 'TH-7204AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:11:40', '2023-03-09 09:11:40'),
(286, 'HPL TACO TH 151 B', 'TH-151B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:11:53', '2023-03-09 09:11:53'),
(287, 'HPL TACO TH 217 AA', 'TH-217AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:12:15', '2023-03-09 09:12:15'),
(288, 'HPL TACO TH 202 B', 'TH-202B', 'standard', 'C128', NULL, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:12:52', '2023-03-09 09:12:52'),
(289, 'HPL TACO TH 220 AA', 'TH-220AA', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:12:52', '2023-03-09 09:12:52'),
(290, 'HPL TACO TH 205 B', 'TH-205B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:13:52', '2023-03-09 09:13:52'),
(291, 'HPL TACO TH 1200 FC', 'TH-1200FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:13:58', '2023-03-09 09:13:58'),
(292, 'HPL TACO TH 1201 FC', 'TH-1201FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:14:39', '2023-03-09 09:14:39'),
(293, 'HPL TACO TH 252 B', 'TH-252B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:14:59', '2023-03-09 09:14:59'),
(294, 'HPL TACO TH 1202 FC', 'TH-1202FC', 'standard', 'C128', 1, 2, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:15:17', '2023-03-09 09:15:17'),
(295, 'HPL TACO TH 1203 FC', 'TH-1203FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:15:57', '2023-03-09 09:15:57'),
(296, 'HPL TACO TH 261 B', 'TH-61B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:16:11', '2023-03-09 09:16:11'),
(297, 'HPL TACO TH 1205 FC', 'TH-1205FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:16:32', '2023-03-09 09:16:32'),
(298, 'HPL TACO TH 262 B', 'TH-262B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:17:44', '2023-03-09 09:17:44'),
(299, 'HPL TACO TH 1206 FC', 'TH-1206FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:17:45', '2023-03-09 09:17:45'),
(300, 'HPL TACO TH 1207 FC', 'TH-1207FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:18:21', '2023-03-09 09:18:21'),
(301, 'HPL TACO TH 265 B', 'TH-265B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:18:51', '2023-03-09 09:18:51'),
(302, 'HPL TACO TH 1208 FC', 'TH-1208FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:18:59', '2023-03-09 09:18:59'),
(303, 'HPL TACO TH 1211 FC', 'TH-1211FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:19:57', '2023-03-09 09:19:57'),
(304, 'HPL TACO TH 266 B', 'TH-266B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:19:59', '2023-03-09 09:19:59'),
(305, 'HPL TACO TH 1212 FC', 'TH-1212FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:20:28', '2023-03-09 09:20:28'),
(306, 'HPL TACO TH 270 B', 'TH-270B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:20:57', '2023-03-09 09:20:57'),
(307, 'HPL TACO TH 1215 FC', 'TH-1215FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:20:58', '2023-03-09 09:20:58'),
(308, 'HPL TACO TH 1216 FC', 'TH-1216FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:21:39', '2023-03-09 09:21:39'),
(309, 'HPL TACO TH 271 B', 'TH-271B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:22:08', '2023-03-09 09:22:08'),
(310, 'HPL TACO TH 1217 FC', 'TH-1217FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:22:15', '2023-03-09 09:22:15'),
(311, 'HPL TACO TH 1218 FC', 'TH-1218FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:22:50', '2023-03-09 09:22:50'),
(312, 'HPL TACO TH 275 B', 'TH-275B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:23:13', '2023-03-09 09:23:13'),
(313, 'HPL TACO TH 1221 FC', 'TH-1221FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:23:29', '2023-03-09 09:23:29'),
(314, 'HPL TACO TH 1222 FC', 'TH-1222FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:23:58', '2023-03-09 09:23:58'),
(315, 'HPL TACO TH 1224 FC', 'TH-1224FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:24:30', '2023-03-09 09:24:30'),
(316, 'HPL TACO TH 276 B', 'TH-276B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:24:38', '2023-03-09 09:24:38'),
(317, 'HPL TACO TH 1225 FC', 'TH-1225FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:25:25', '2023-03-09 09:25:25'),
(318, 'HPL TACO TH 1230 FC', 'TH-1230FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:25:56', '2023-03-09 09:25:56'),
(319, 'HPL TACO TH 298 B', 'TH-298B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:26:09', '2023-03-09 09:26:09'),
(320, 'HPL TACO TH 889 FC', 'TH-889FC', 'standard', 'C128', 1, 4, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:27:04', '2023-03-09 09:27:04'),
(321, 'HPL TACO TH 890 FC', 'TH-890FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:27:38', '2023-03-09 09:27:38'),
(322, 'HPL TACO TH 688 B', 'TH-688B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:27:38', '2023-03-09 09:27:38'),
(323, 'HPL TACO TH 1231 FC', 'TH-1231FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:28:19', '2023-03-09 09:28:19'),
(324, 'HPL TACO TH 1232 FC', 'TH-1232FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:28:59', '2023-03-09 09:28:59'),
(325, 'HPL TACO TH 1034 B', 'TH-1034B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:29:03', '2023-03-09 09:29:03'),
(326, 'HPL TACO TH 1233 FC', 'TH-1233FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:29:42', '2023-03-09 09:29:42'),
(327, 'HPL TACO TH 1038 B', 'TH-1038B', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:30:26', '2023-03-09 09:30:26'),
(328, 'HPL TACO TH 7205 FC', 'TH-7205FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:31:25', '2023-03-09 09:31:25'),
(329, 'HPL TACO TH 7206 FC', 'TH-7206FC', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 210000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:32:02', '2023-03-09 09:32:02'),
(330, 'HPL TACO TH 300 H', 'TH-300H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:33:20', '2023-03-09 09:33:20'),
(331, 'HPL TACO TH 301 H', 'TH-301H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:34:38', '2023-03-09 09:34:38'),
(332, 'HPL TACO TH 305 H', 'TH-305H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:35:46', '2023-03-09 09:35:46'),
(333, 'HPL TACO TH 308 H', 'HPL TACO TH 308 H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:36:46', '2023-03-09 09:36:46'),
(334, 'HPL TACO TH 317 H', 'TH-317H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:37:50', '2023-03-09 09:37:50'),
(335, 'HPL TACO TH 321 H', 'TH-321H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:39:04', '2023-03-09 09:39:04'),
(336, 'HPL TACO TH 325 H', 'TH-325H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:40:24', '2023-03-09 09:40:24'),
(337, 'HPL TACO TH 327 H', 'TH-327H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:47:49', '2023-03-09 09:47:49'),
(338, 'HPL TACO TH 328 H', 'TH-328H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:48:53', '2023-03-09 09:48:53'),
(339, 'HPL TACO TH 352 H', 'TH-352H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:49:57', '2023-03-09 09:49:57'),
(340, 'HPL TACO TH 355 H', 'TH-355H', 'standard', 'C128', 1, 3, 1, 1, 1, 0, 180000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-03-09 09:51:03', '2023-03-09 09:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

DROP TABLE IF EXISTS `product_adjustments`;
CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_batches`
--

DROP TABLE IF EXISTS `product_batches`;
CREATE TABLE `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

DROP TABLE IF EXISTS `product_purchases`;
CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 8, 2, NULL, NULL, NULL, 10, 10, 1, 0, 0, 0, 0, 0, '2023-03-09 04:06:11', '2023-03-09 04:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

DROP TABLE IF EXISTS `product_quotation`;
CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

DROP TABLE IF EXISTS `product_returns`;
CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

DROP TABLE IF EXISTS `product_sales`;
CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

DROP TABLE IF EXISTS `product_transfer`;
CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

DROP TABLE IF EXISTS `product_warehouse`;
CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(4, '2', NULL, NULL, NULL, 1, 32, NULL, '2023-03-09 02:50:46', '2023-03-09 04:06:11'),
(5, '9', NULL, NULL, NULL, 1, 10, NULL, '2023-03-09 03:41:42', '2023-03-09 03:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(4, 'pr-20230309-095046', 38, 1, NULL, 1, 2, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, '2023-03-08 17:00:00', '2023-03-09 02:50:46'),
(5, 'pr-20230309-104142', 38, 1, 1, 1, 10, 0, 0, 0, 11, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, '2023-03-08 17:00:00', '2023-03-09 03:41:42'),
(6, 'pr-20230309-105516', 38, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, '2023-03-08 17:00:00', '2023-03-09 03:55:16'),
(7, 'pr-20230309-110427', 38, 1, 1, 1, 10, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, '2023-03-08 17:00:00', '2023-03-09 04:04:27'),
(8, 'pr-20230309-110611', 38, 1, 1, 1, 10, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, NULL, NULL, '2023-03-08 17:00:00', '2023-03-09 04:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

DROP TABLE IF EXISTS `purchase_product_return`;
CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

DROP TABLE IF EXISTS `return_purchases`;
CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_purchases`
--

INSERT INTO `return_purchases` (`id`, `reference_no`, `supplier_id`, `warehouse_id`, `user_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'prr-20190101-090759', 3, 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, 200, '', '', '', '2018-12-31 19:07:59', '2019-12-07 03:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

DROP TABLE IF EXISTS `reward_point_settings`;
CREATE TABLE `reward_point_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_point_settings`
--

INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 300, 1000, 1, 'Year', 1, '2021-06-08 20:40:15', '2022-07-31 04:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-02 04:46:44', '2022-07-31 02:19:24'),
(2, 'Owner', 'Owner of the store', 'web', 1, '2018-10-22 07:38:13', '2023-02-13 08:47:57'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 05:05:27', '2022-07-31 02:20:13'),
(5, 'Customer', NULL, 'web', 1, '2020-11-05 11:43:16', '2022-07-31 02:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(11, 1),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 4),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(30, 4),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(32, 4),
(33, 1),
(33, 2),
(33, 4),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(38, 1),
(38, 2),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(47, 1),
(48, 1),
(48, 2),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(59, 2),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(85, 4),
(86, 1),
(86, 2),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(92, 2),
(92, 4),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(98, 2),
(98, 4),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(106, 2),
(107, 1),
(108, 1),
(108, 2),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(113, 4),
(114, 1),
(114, 4),
(115, 1),
(116, 1),
(117, 1),
(117, 4),
(118, 1),
(118, 4),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

DROP TABLE IF EXISTS `stock_counts`;
CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Bro', NULL, 'PT. Mahkota', NULL, 'hero70411@gmail.com', '0904422959', 'Jalan jalan suka gue', 'Jakarta', 'Jakarta', '12015', 'Indonesia', 1, '2022-07-31 05:17:34', '2022-07-31 05:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pajak (11%)', 11, 1, '2023-02-13 06:14:46', '2023-02-13 06:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Lbr', 'Lembar', NULL, '*', 1, 1, '2022-07-31 05:15:05', '2023-03-01 00:36:16'),
(2, 'm', 'Meter', NULL, '*', 1, 1, '2023-03-01 00:39:48', '2023-03-01 00:39:48'),
(3, 'Btg', 'Batang', NULL, '*', 1, 1, '2023-03-01 00:40:25', '2023-03-03 01:34:20'),
(4, 'Psg', 'Pasang', NULL, '*', 1, 1, '2023-03-03 01:34:56', '2023-03-03 01:34:56'),
(5, 'Bks', 'Bungkus', NULL, '*', 1, 1, '2023-03-03 01:35:29', '2023-03-03 01:35:29'),
(6, 'Dus', 'Dus', NULL, '*', 1, 1, '2023-03-03 01:35:53', '2023-03-03 01:38:36'),
(7, 'Pcs', 'Pieces', NULL, '*', 1, 1, '2023-03-03 01:36:34', '2023-03-03 01:36:34'),
(8, 'Kg', 'Kilo Gram', NULL, '*', 1, 1, '2023-03-03 01:37:04', '2023-03-03 01:37:04'),
(9, 'Gal', 'Galon', NULL, '*', 1, 1, '2023-03-03 01:37:45', '2023-03-03 01:37:45'),
(10, 'Blk', 'Blek', NULL, '*', 1, 1, '2023-03-03 01:37:58', '2023-03-03 01:37:58'),
(11, 'rk', 'Roll Kecil', NULL, '*', 1, 1, '2023-03-09 01:47:29', '2023-03-09 01:47:29'),
(12, 'rb', 'Roll Besar', NULL, '*', 1, 1, '2023-03-09 01:49:40', '2023-03-09 01:49:40'),
(13, 'roll', 'roll', NULL, '*', 1, 1, '2023-03-09 01:50:33', '2023-03-09 01:50:33'),
(14, 'btl', 'Botol', NULL, '*', 1, 1, '2023-03-09 05:33:31', '2023-03-09 05:33:31'),
(15, 'KCL', 'Kecil', NULL, '*', 1, 1, '2023-03-09 06:22:06', '2023-03-09 06:22:06'),
(16, 'Bsr', 'Besar', NULL, '*', 1, 1, '2023-03-09 06:22:22', '2023-03-09 06:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$FSkhKsRk9X.8n.snFidCw.bvjmLiLQt4nkcIVA/bbSlNNhsilNQpu', 'PbQbXADV0n9j0dCajF2BjXYYAcRoECFGrvi9jgcabwEtbdwhE08NAVBRWDrJ', '5364377', NULL, 1, NULL, NULL, 1, 0, '2018-06-02 08:24:15', '2023-03-02 03:23:01'),
(37, 'owner', 'owner@owner.com', '$2y$10$KULNwN7eg/FjjINi/FbpReE.m9lpbcCmtTMmb5zeP3oSjt1AxZBUK', NULL, '12345678', NULL, 2, NULL, NULL, 1, 0, '2023-02-12 07:53:20', '2023-02-12 07:53:20'),
(38, 'staff', 'staff@staff.com', '$2y$10$.M9XgAsww8HWFJeKzTeEgetpD7FTlmCWCfAHiwcswGAm.y08nk016', NULL, '1234567', 'Mitra HPL Abadi', 4, 1, 1, 1, 0, '2023-02-13 09:04:31', '2023-03-03 10:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

DROP TABLE IF EXISTS `variants`;
CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mitra HPL Abadi', '123456789', 'mitra@mitra.com', 'jalan', 1, '2022-07-31 05:14:05', '2023-02-12 08:31:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plans`
--
ALTER TABLE `discount_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dso_alerts`
--
ALTER TABLE `dso_alerts`
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
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_number`
--
ALTER TABLE `last_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_batches`
--
ALTER TABLE `product_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plans`
--
ALTER TABLE `discount_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dso_alerts`
--
ALTER TABLE `dso_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `last_number`
--
ALTER TABLE `last_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_batches`
--
ALTER TABLE `product_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
