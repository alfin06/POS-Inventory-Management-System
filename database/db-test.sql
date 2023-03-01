-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for salespro
CREATE DATABASE IF NOT EXISTS `salespro` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `salespro`;

-- Dumping structure for table salespro.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.accounts: ~1 rows (approximately)
INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
	(8, '123456789', 'Mitra HPL Account', 0, 0, NULL, 1, 1, '2023-02-26 15:14:23', '2023-02-26 15:14:23');

-- Dumping structure for table salespro.adjustments
CREATE TABLE IF NOT EXISTS `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.adjustments: ~0 rows (approximately)

-- Dumping structure for table salespro.attendances
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.attendances: ~0 rows (approximately)

-- Dumping structure for table salespro.billers
CREATE TABLE IF NOT EXISTS `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.billers: ~0 rows (approximately)
INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Cashier', NULL, 'Mitra HPL Abadi', NULL, 'cashier@cashier.com', '12345678', 'Jalan', 'Kota', 'Provinsi', '123456', 'Indonesia', 1, '2022-07-31 12:39:20', '2023-02-13 16:01:17');

-- Dumping structure for table salespro.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.brands: ~0 rows (approximately)
INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Avian', '', 1, '2022-07-31 12:14:43', '2023-02-16 16:00:24'),
	(2, 'Philip', NULL, 1, '2023-02-26 10:05:51', '2023-02-26 10:05:51');

-- Dumping structure for table salespro.cash_registers
CREATE TABLE IF NOT EXISTS `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.cash_registers: ~4 rows (approximately)
INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 100000, 1, 1, 0, '2023-02-14 15:29:31', '2023-02-14 15:30:06'),
	(2, 500000, 38, 1, 0, '2023-02-20 14:46:34', '2023-02-21 15:35:42'),
	(3, 0, 37, 1, 1, '2023-02-26 10:09:47', '2023-02-26 10:09:47'),
	(4, 500000, 38, 1, 1, '2023-02-26 14:54:14', '2023-02-26 14:54:14');

-- Dumping structure for table salespro.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.categories: ~2 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Cat', '20220731114240.jpg', NULL, 1, '2022-07-31 12:15:28', '2023-02-16 15:56:35'),
	(2, 'Baja', NULL, NULL, 1, '2023-02-16 15:57:12', '2023-02-16 15:57:12');

-- Dumping structure for table salespro.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.coupons: ~0 rows (approximately)

-- Dumping structure for table salespro.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.currencies: ~2 rows (approximately)
INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
	(1, 'US Dollar', 'USD', 1, '2020-11-01 12:22:58', '2020-11-01 12:34:55'),
	(4, 'Rupiah', 'Rp', 1, '2023-02-11 07:08:52', '2023-02-11 07:08:52');

-- Dumping structure for table salespro.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.customers: ~0 rows (approximately)
INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'Budi', 'PT Suka Suka', NULL, '0812345678', NULL, 'Jalan', 'Kota', 'Provinsi', '12015', 'Indonesia', 393, NULL, NULL, 1, '2022-07-31 12:17:35', '2023-02-28 13:50:34');

-- Dumping structure for table salespro.customer_groups
CREATE TABLE IF NOT EXISTS `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.customer_groups: ~2 rows (approximately)
INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Perusahaan', '0', 1, '2022-07-31 12:16:54', '2023-02-26 15:15:55'),
	(2, 'Pribadi', '0', 1, '2023-02-26 15:16:05', '2023-02-26 15:16:05');

-- Dumping structure for table salespro.deliveries
CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.deliveries: ~0 rows (approximately)

-- Dumping structure for table salespro.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.departments: ~0 rows (approximately)

-- Dumping structure for table salespro.deposits
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.deposits: ~0 rows (approximately)

-- Dumping structure for table salespro.discounts
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.discounts: ~0 rows (approximately)

-- Dumping structure for table salespro.discount_plans
CREATE TABLE IF NOT EXISTS `discount_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.discount_plans: ~0 rows (approximately)

-- Dumping structure for table salespro.discount_plan_customers
CREATE TABLE IF NOT EXISTS `discount_plan_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.discount_plan_customers: ~0 rows (approximately)

-- Dumping structure for table salespro.discount_plan_discounts
CREATE TABLE IF NOT EXISTS `discount_plan_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.discount_plan_discounts: ~0 rows (approximately)

-- Dumping structure for table salespro.dso_alerts
CREATE TABLE IF NOT EXISTS `dso_alerts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.dso_alerts: ~0 rows (approximately)

-- Dumping structure for table salespro.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.employees: ~0 rows (approximately)

-- Dumping structure for table salespro.expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.expenses: ~0 rows (approximately)

-- Dumping structure for table salespro.expense_categories
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.expense_categories: ~0 rows (approximately)

-- Dumping structure for table salespro.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table salespro.general_settings
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.general_settings: ~1 rows (approximately)
INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
	(1, 'Mitra HPL Abadi', 'logo-mitra.png', 0, '4', 'own', 'd-m-Y', 'Finicode', 'standard', 1, 'default.css', '2018-07-06 18:13:11', '2023-02-13 12:24:24', 'prefix');

-- Dumping structure for table salespro.gift_cards
CREATE TABLE IF NOT EXISTS `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.gift_cards: ~0 rows (approximately)

-- Dumping structure for table salespro.gift_card_recharges
CREATE TABLE IF NOT EXISTS `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.gift_card_recharges: ~0 rows (approximately)

-- Dumping structure for table salespro.holidays
CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.holidays: ~0 rows (approximately)

-- Dumping structure for table salespro.hrm_settings
CREATE TABLE IF NOT EXISTS `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.hrm_settings: ~0 rows (approximately)
INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
	(1, '9:00am', '6:00pm', '2019-01-02 14:20:08', '2022-07-16 07:13:14');

-- Dumping structure for table salespro.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.languages: ~0 rows (approximately)
INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 'id', '2018-07-08 10:59:17', '2019-12-25 05:34:20');

-- Dumping structure for table salespro.last_number
CREATE TABLE IF NOT EXISTS `last_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_type` varchar(18) DEFAULT NULL,
  `invoice_month` tinyint(2) DEFAULT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table salespro.last_number: ~2 rows (approximately)
INSERT INTO `last_number` (`id`, `invoice_type`, `invoice_month`, `invoice_number`, `updated_at`) VALUES
	(1, 'CV. HPL Indonesia', 2, 2, '2023-02-28 20:50:34'),
	(2, 'Berkat Furniture', 1, 0, '2023-02-23 23:00:25');

-- Dumping structure for table salespro.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.migrations: ~139 rows (approximately)
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

-- Dumping structure for table salespro.money_transfers
CREATE TABLE IF NOT EXISTS `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.money_transfers: ~0 rows (approximately)

-- Dumping structure for table salespro.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.notifications: ~0 rows (approximately)

-- Dumping structure for table salespro.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.password_resets: ~0 rows (approximately)

-- Dumping structure for table salespro.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.payments: ~6 rows (approximately)
INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
	(1, 'ppr-20220731-073645', 1, 1, NULL, NULL, 5, 8300, NULL, 0, 'Cash', NULL, '2022-07-31 12:36:45', '2022-07-31 12:36:45'),
	(2, 'spr-20220731-074532', 1, NULL, 1, NULL, 5, 1773, NULL, 1000, 'Cash', NULL, '2022-07-31 12:45:32', '2022-07-31 15:21:29'),
	(3, 'spr-20220731-103409', 1, NULL, 2, NULL, 5, 1800, NULL, 0, 'Gift Card', NULL, '2022-07-31 15:34:09', '2022-07-31 15:34:09'),
	(4, 'spr-20220731-103413', 1, NULL, 3, NULL, 5, 1800, NULL, 0, 'Gift Card', NULL, '2022-07-31 15:34:13', '2022-07-31 15:34:13'),
	(5, 'spr-20230226-103305', 38, NULL, 8, 4, 8, 25000, NULL, 0, 'Cash', NULL, '2023-02-26 15:33:05', '2023-02-26 15:33:05'),
	(6, 'spr-20230226-103658', 38, NULL, 9, 4, 8, 25000, NULL, 0, 'Cash', NULL, '2023-02-26 15:36:58', '2023-02-26 15:36:58'),
	(7, 'spr-20230228-085034', 38, NULL, 10, 4, 8, 1000, NULL, 9000, 'Cash', NULL, '2023-02-28 13:50:34', '2023-02-28 13:50:34');

-- Dumping structure for table salespro.payment_with_cheque
CREATE TABLE IF NOT EXISTS `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.payment_with_cheque: ~0 rows (approximately)

-- Dumping structure for table salespro.payment_with_credit_card
CREATE TABLE IF NOT EXISTS `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.payment_with_credit_card: ~0 rows (approximately)

-- Dumping structure for table salespro.payment_with_gift_card
CREATE TABLE IF NOT EXISTS `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.payment_with_gift_card: ~0 rows (approximately)

-- Dumping structure for table salespro.payment_with_paypal
CREATE TABLE IF NOT EXISTS `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.payment_with_paypal: ~0 rows (approximately)

-- Dumping structure for table salespro.payrolls
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.payrolls: ~0 rows (approximately)

-- Dumping structure for table salespro.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.permissions: ~120 rows (approximately)
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(4, 'products-edit', 'web', '2018-06-03 13:00:09', '2018-06-03 13:00:09'),
	(5, 'products-delete', 'web', '2018-06-04 10:54:22', '2018-06-04 10:54:22'),
	(6, 'products-add', 'web', '2018-06-04 12:34:14', '2018-06-04 12:34:14'),
	(7, 'products-index', 'web', '2018-06-04 15:34:27', '2018-06-04 15:34:27'),
	(8, 'purchases-index', 'web', '2018-06-04 20:03:19', '2018-06-04 20:03:19'),
	(9, 'purchases-add', 'web', '2018-06-04 20:12:25', '2018-06-04 20:12:25'),
	(10, 'purchases-edit', 'web', '2018-06-04 21:47:36', '2018-06-04 21:47:36'),
	(11, 'purchases-delete', 'web', '2018-06-04 21:47:36', '2018-06-04 21:47:36'),
	(12, 'sales-index', 'web', '2018-06-04 22:49:08', '2018-06-04 22:49:08'),
	(13, 'sales-add', 'web', '2018-06-04 22:49:52', '2018-06-04 22:49:52'),
	(14, 'sales-edit', 'web', '2018-06-04 22:49:52', '2018-06-04 22:49:52'),
	(15, 'sales-delete', 'web', '2018-06-04 22:49:53', '2018-06-04 22:49:53'),
	(16, 'quotes-index', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
	(17, 'quotes-add', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
	(18, 'quotes-edit', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
	(19, 'quotes-delete', 'web', '2018-06-05 10:05:10', '2018-06-05 10:05:10'),
	(20, 'transfers-index', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
	(21, 'transfers-add', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
	(22, 'transfers-edit', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
	(23, 'transfers-delete', 'web', '2018-06-05 10:30:03', '2018-06-05 10:30:03'),
	(24, 'returns-index', 'web', '2018-06-05 10:50:24', '2018-06-05 10:50:24'),
	(25, 'returns-add', 'web', '2018-06-05 10:50:24', '2018-06-05 10:50:24'),
	(26, 'returns-edit', 'web', '2018-06-05 10:50:25', '2018-06-05 10:50:25'),
	(27, 'returns-delete', 'web', '2018-06-05 10:50:25', '2018-06-05 10:50:25'),
	(28, 'customers-index', 'web', '2018-06-05 11:15:54', '2018-06-05 11:15:54'),
	(29, 'customers-add', 'web', '2018-06-05 11:15:55', '2018-06-05 11:15:55'),
	(30, 'customers-edit', 'web', '2018-06-05 11:15:55', '2018-06-05 11:15:55'),
	(31, 'customers-delete', 'web', '2018-06-05 11:15:55', '2018-06-05 11:15:55'),
	(32, 'suppliers-index', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
	(33, 'suppliers-add', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
	(34, 'suppliers-edit', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
	(35, 'suppliers-delete', 'web', '2018-06-05 11:40:12', '2018-06-05 11:40:12'),
	(36, 'product-report', 'web', '2018-06-25 11:05:33', '2018-06-25 11:05:33'),
	(37, 'purchase-report', 'web', '2018-06-25 11:24:56', '2018-06-25 11:24:56'),
	(38, 'sale-report', 'web', '2018-06-25 11:33:13', '2018-06-25 11:33:13'),
	(39, 'customer-report', 'web', '2018-06-25 11:36:51', '2018-06-25 11:36:51'),
	(40, 'due-report', 'web', '2018-06-25 11:39:52', '2018-06-25 11:39:52'),
	(41, 'users-index', 'web', '2018-06-25 12:00:10', '2018-06-25 12:00:10'),
	(42, 'users-add', 'web', '2018-06-25 12:00:10', '2018-06-25 12:00:10'),
	(43, 'users-edit', 'web', '2018-06-25 12:01:30', '2018-06-25 12:01:30'),
	(44, 'users-delete', 'web', '2018-06-25 12:01:30', '2018-06-25 12:01:30'),
	(45, 'profit-loss', 'web', '2018-07-15 09:50:05', '2018-07-15 09:50:05'),
	(46, 'best-seller', 'web', '2018-07-15 10:01:38', '2018-07-15 10:01:38'),
	(47, 'daily-sale', 'web', '2018-07-15 10:24:21', '2018-07-15 10:24:21'),
	(48, 'monthly-sale', 'web', '2018-07-15 10:30:41', '2018-07-15 10:30:41'),
	(49, 'daily-purchase', 'web', '2018-07-15 10:36:46', '2018-07-15 10:36:46'),
	(50, 'monthly-purchase', 'web', '2018-07-15 10:48:17', '2018-07-15 10:48:17'),
	(51, 'payment-report', 'web', '2018-07-15 11:10:41', '2018-07-15 11:10:41'),
	(52, 'warehouse-stock-report', 'web', '2018-07-15 11:16:55', '2018-07-15 11:16:55'),
	(53, 'product-qty-alert', 'web', '2018-07-15 11:33:21', '2018-07-15 11:33:21'),
	(54, 'supplier-report', 'web', '2018-07-30 15:00:01', '2018-07-30 15:00:01'),
	(55, 'expenses-index', 'web', '2018-09-05 13:07:10', '2018-09-05 13:07:10'),
	(56, 'expenses-add', 'web', '2018-09-05 13:07:10', '2018-09-05 13:07:10'),
	(57, 'expenses-edit', 'web', '2018-09-05 13:07:10', '2018-09-05 13:07:10'),
	(58, 'expenses-delete', 'web', '2018-09-05 13:07:11', '2018-09-05 13:07:11'),
	(59, 'general_setting', 'web', '2018-10-20 11:10:04', '2018-10-20 11:10:04'),
	(60, 'mail_setting', 'web', '2018-10-20 11:10:04', '2018-10-20 11:10:04'),
	(61, 'pos_setting', 'web', '2018-10-20 11:10:04', '2018-10-20 11:10:04'),
	(62, 'hrm_setting', 'web', '2019-01-02 22:30:23', '2019-01-02 22:30:23'),
	(63, 'purchase-return-index', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
	(64, 'purchase-return-add', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
	(65, 'purchase-return-edit', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
	(66, 'purchase-return-delete', 'web', '2019-01-03 09:45:14', '2019-01-03 09:45:14'),
	(67, 'account-index', 'web', '2019-01-03 10:06:13', '2019-01-03 10:06:13'),
	(68, 'balance-sheet', 'web', '2019-01-03 10:06:14', '2019-01-03 10:06:14'),
	(69, 'account-statement', 'web', '2019-01-03 10:06:14', '2019-01-03 10:06:14'),
	(70, 'department', 'web', '2019-01-03 10:30:01', '2019-01-03 10:30:01'),
	(71, 'attendance', 'web', '2019-01-03 10:30:01', '2019-01-03 10:30:01'),
	(72, 'payroll', 'web', '2019-01-03 10:30:01', '2019-01-03 10:30:01'),
	(73, 'employees-index', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
	(74, 'employees-add', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
	(75, 'employees-edit', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
	(76, 'employees-delete', 'web', '2019-01-03 10:52:19', '2019-01-03 10:52:19'),
	(77, 'user-report', 'web', '2019-01-16 18:48:18', '2019-01-16 18:48:18'),
	(78, 'stock_count', 'web', '2019-02-17 22:32:01', '2019-02-17 22:32:01'),
	(79, 'adjustment', 'web', '2019-02-17 22:32:02', '2019-02-17 22:32:02'),
	(80, 'sms_setting', 'web', '2019-02-22 17:18:03', '2019-02-22 17:18:03'),
	(81, 'create_sms', 'web', '2019-02-22 17:18:03', '2019-02-22 17:18:03'),
	(82, 'print_barcode', 'web', '2019-03-07 17:02:19', '2019-03-07 17:02:19'),
	(83, 'empty_database', 'web', '2019-03-07 17:02:19', '2019-03-07 17:02:19'),
	(84, 'customer_group', 'web', '2019-03-07 17:37:15', '2019-03-07 17:37:15'),
	(85, 'unit', 'web', '2019-03-07 17:37:15', '2019-03-07 17:37:15'),
	(86, 'tax', 'web', '2019-03-07 17:37:15', '2019-03-07 17:37:15'),
	(87, 'gift_card', 'web', '2019-03-07 18:29:38', '2019-03-07 18:29:38'),
	(88, 'coupon', 'web', '2019-03-07 18:29:38', '2019-03-07 18:29:38'),
	(89, 'holiday', 'web', '2019-10-19 20:57:15', '2019-10-19 20:57:15'),
	(90, 'warehouse-report', 'web', '2019-10-22 18:00:23', '2019-10-22 18:00:23'),
	(91, 'warehouse', 'web', '2020-02-26 18:47:32', '2020-02-26 18:47:32'),
	(92, 'brand', 'web', '2020-02-26 18:59:59', '2020-02-26 18:59:59'),
	(93, 'billers-index', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
	(94, 'billers-add', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
	(95, 'billers-edit', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
	(96, 'billers-delete', 'web', '2020-02-26 19:11:15', '2020-02-26 19:11:15'),
	(97, 'money-transfer', 'web', '2020-03-02 17:41:48', '2020-03-02 17:41:48'),
	(98, 'category', 'web', '2020-07-14 00:13:16', '2020-07-14 00:13:16'),
	(99, 'delivery', 'web', '2020-07-14 00:13:16', '2020-07-14 00:13:16'),
	(100, 'send_notification', 'web', '2020-10-31 18:21:31', '2020-10-31 18:21:31'),
	(101, 'today_sale', 'web', '2020-10-31 18:57:04', '2020-10-31 18:57:04'),
	(102, 'today_profit', 'web', '2020-10-31 18:57:04', '2020-10-31 18:57:04'),
	(103, 'currency', 'web', '2020-11-09 12:23:11', '2020-11-09 12:23:11'),
	(104, 'backup_database', 'web', '2020-11-15 12:16:55', '2020-11-15 12:16:55'),
	(105, 'reward_point_setting', 'web', '2021-06-27 16:34:42', '2021-06-27 16:34:42'),
	(106, 'revenue_profit_summary', 'web', '2022-02-09 01:57:21', '2022-02-09 01:57:21'),
	(107, 'cash_flow', 'web', '2022-02-09 01:57:22', '2022-02-09 01:57:22'),
	(108, 'monthly_summary', 'web', '2022-02-09 01:57:22', '2022-02-09 01:57:22'),
	(109, 'yearly_report', 'web', '2022-02-09 01:57:22', '2022-02-09 01:57:22'),
	(110, 'discount_plan', 'web', '2022-02-16 21:12:26', '2022-02-16 21:12:26'),
	(111, 'discount', 'web', '2022-02-16 21:12:38', '2022-02-16 21:12:38'),
	(112, 'product-expiry-report', 'web', '2022-03-30 17:39:20', '2022-03-30 17:39:20'),
	(113, 'purchase-payment-index', 'web', '2022-06-06 02:12:27', '2022-06-06 02:12:27'),
	(114, 'purchase-payment-add', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
	(115, 'purchase-payment-edit', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
	(116, 'purchase-payment-delete', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
	(117, 'sale-payment-index', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
	(118, 'sale-payment-add', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
	(119, 'sale-payment-edit', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
	(120, 'sale-payment-delete', 'web', '2022-06-06 02:12:28', '2022-06-06 02:12:28'),
	(121, 'all_notification', 'web', '2022-06-06 02:12:29', '2022-06-06 02:12:29'),
	(122, 'sale-report-chart', 'web', '2022-06-06 02:12:29', '2022-06-06 02:12:29'),
	(123, 'dso-report', 'web', '2022-06-06 02:12:29', '2022-06-06 02:12:29'),
	(124, 'supplier-due-report', 'web', '2023-02-13 15:38:38', '2023-02-13 15:38:38'),
	(125, 'product_history', 'web', '2023-02-13 15:43:13', '2023-02-13 15:43:13');

-- Dumping structure for table salespro.pos_setting
CREATE TABLE IF NOT EXISTS `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.pos_setting: ~1 rows (approximately)
INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 15:17:04', '2023-02-20 15:41:10');

-- Dumping structure for table salespro.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.products: ~2 rows (approximately)
INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `variant_option`, `variant_value`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Cat tembok', '99265514', 'standard', 'C128', 1, 1, 1, 1, 1, 800, 1000, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-07-31 12:18:28', '2023-02-28 13:50:34'),
	(2, 'Baja', '05928605', 'standard', 'C128', 1, 1, 1, 1, 1, 400, 600, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2022-07-31 16:38:57', '2023-02-22 14:52:27'),
	(3, 'Test1', '77512188', 'standard', 'C128', 2, 2, 1, 1, 1, 15000, 25000, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-02-26 10:08:42', '2023-02-26 15:36:58');

-- Dumping structure for table salespro.product_adjustments
CREATE TABLE IF NOT EXISTS `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_adjustments: ~0 rows (approximately)

-- Dumping structure for table salespro.product_batches
CREATE TABLE IF NOT EXISTS `product_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_batches: ~0 rows (approximately)

-- Dumping structure for table salespro.product_purchases
CREATE TABLE IF NOT EXISTS `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_purchases: ~0 rows (approximately)
INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL, NULL, 10, 10, 1, 800, 0, 0, 0, 8000, '2022-07-31 12:21:45', '2022-07-31 12:21:45'),
	(2, 2, 2, NULL, NULL, NULL, 10, 10, 1, 400, 0, 0, 0, 4000, '2023-02-22 14:52:27', '2023-02-22 14:52:27'),
	(3, 3, 3, NULL, NULL, NULL, 50, 50, 1, 15000, 0, 0, 0, 750000, '2023-02-26 15:03:45', '2023-02-26 15:03:45');

-- Dumping structure for table salespro.product_quotation
CREATE TABLE IF NOT EXISTS `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_quotation: ~0 rows (approximately)

-- Dumping structure for table salespro.product_returns
CREATE TABLE IF NOT EXISTS `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_returns: ~0 rows (approximately)

-- Dumping structure for table salespro.product_sales
CREATE TABLE IF NOT EXISTS `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_sales: ~6 rows (approximately)
INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
	(5, 5, 1, NULL, NULL, NULL, 1, 1, 10000, 0, 0, 0, 10000, '2023-02-26 10:42:49', '2023-02-26 10:42:49'),
	(6, 6, 3, NULL, NULL, NULL, 1, 1, 25000, 0, 0, 0, 25000, '2023-02-26 15:10:45', '2023-02-26 15:10:45'),
	(7, 7, 3, NULL, NULL, NULL, 1, 1, 25000, 0, 0, 0, 25000, '2023-02-26 15:13:17', '2023-02-26 15:13:17'),
	(8, 8, 3, NULL, NULL, NULL, 1, 1, 25000, 0, 0, 0, 25000, '2023-02-26 15:33:05', '2023-02-26 15:33:05'),
	(9, 9, 3, NULL, NULL, NULL, 1, 1, 25000, 0, 0, 0, 25000, '2023-02-26 15:36:58', '2023-02-26 15:36:58'),
	(10, 10, 1, NULL, NULL, NULL, 1, 1, 1000, 0, 0, 0, 1000, '2023-02-28 13:50:34', '2023-02-28 13:50:34');

-- Dumping structure for table salespro.product_transfer
CREATE TABLE IF NOT EXISTS `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_transfer: ~0 rows (approximately)

-- Dumping structure for table salespro.product_variants
CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_variants: ~0 rows (approximately)

-- Dumping structure for table salespro.product_warehouse
CREATE TABLE IF NOT EXISTS `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.product_warehouse: ~3 rows (approximately)
INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
	(1, '1', NULL, NULL, NULL, 1, 7, NULL, '2022-07-31 12:21:45', '2023-02-28 13:50:34'),
	(2, '2', NULL, NULL, NULL, 1, 10, NULL, '2023-02-22 14:52:27', '2023-02-22 14:52:27'),
	(3, '3', NULL, NULL, NULL, 1, 46, NULL, '2023-02-26 15:03:45', '2023-02-26 15:36:58');

-- Dumping structure for table salespro.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.purchases: ~0 rows (approximately)
INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
	(1, 'pr-20220731-072145', 1, 1, 1, 1, 10, 0, 0, 8000, 0, 0, 200, 500, 8300, 8300, 1, 2, NULL, NULL, '2022-07-31 12:21:45', '2022-07-31 12:36:45'),
	(2, 'pr-20230222-095227', 38, 1, 1, 1, 10, 0, 0, 4000, 0, 0, NULL, NULL, 4000, 0, 1, 1, NULL, NULL, '2023-02-21 17:00:00', '2023-02-22 14:52:27'),
	(3, 'pr-20230226-100345', 1, 1, 1, 1, 50, 0, 0, 750000, 0, 0, NULL, NULL, 750000, 0, 1, 1, NULL, NULL, '2023-02-25 17:00:00', '2023-02-26 15:03:45');

-- Dumping structure for table salespro.purchase_product_return
CREATE TABLE IF NOT EXISTS `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.purchase_product_return: ~0 rows (approximately)

-- Dumping structure for table salespro.quotations
CREATE TABLE IF NOT EXISTS `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.quotations: ~0 rows (approximately)

-- Dumping structure for table salespro.returns
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.returns: ~0 rows (approximately)

-- Dumping structure for table salespro.return_purchases
CREATE TABLE IF NOT EXISTS `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.return_purchases: ~0 rows (approximately)

-- Dumping structure for table salespro.reward_point_settings
CREATE TABLE IF NOT EXISTS `reward_point_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.reward_point_settings: ~0 rows (approximately)
INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 300, 1000, 1, 'Year', 1, '2021-06-09 03:40:15', '2022-07-31 11:29:38');

-- Dumping structure for table salespro.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.roles: ~4 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-02 11:46:44', '2022-07-31 09:19:24'),
	(2, 'Owner', 'Owner of the store', 'web', 1, '2018-10-22 14:38:13', '2023-02-13 15:47:57'),
	(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 12:05:27', '2022-07-31 09:20:13'),
	(5, 'Customer', NULL, 'web', 1, '2020-11-05 18:43:16', '2022-07-31 09:20:01');

-- Dumping structure for table salespro.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.role_has_permissions: ~168 rows (approximately)
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
	(86, 1),
	(86, 2),
	(87, 1),
	(88, 1),
	(89, 1),
	(90, 1),
	(91, 1),
	(92, 1),
	(92, 2),
	(93, 1),
	(94, 1),
	(95, 1),
	(96, 1),
	(97, 1),
	(98, 1),
	(98, 2),
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
	(114, 1),
	(115, 1),
	(116, 1),
	(117, 1),
	(118, 1),
	(119, 1),
	(120, 1),
	(121, 1),
	(122, 1),
	(123, 1),
	(124, 1),
	(125, 1);

-- Dumping structure for table salespro.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.sales: ~2 rows (approximately)
INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount_type`, `order_discount_value`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
	(9, '001/26/II/2023-1', 38, 4, 1, 1, 1, 1, 1, 0, 0, 25000, 25000, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 25000, NULL, NULL, '2023-02-25 17:00:00', '2023-02-26 15:36:58'),
	(10, '002/28/II/2023-2', 38, 4, 1, 1, 1, 1, 1, 0, 0, 1000, 1000, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1000, NULL, NULL, '2023-02-27 17:00:00', '2023-02-28 13:50:34');

-- Dumping structure for table salespro.stock_counts
CREATE TABLE IF NOT EXISTS `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.stock_counts: ~0 rows (approximately)

-- Dumping structure for table salespro.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.suppliers: ~0 rows (approximately)
INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Bro', NULL, 'PT. Mahkota', NULL, 'hero70411@gmail.com', '0904422959', 'Jalan jalan suka gue', 'Jakarta', 'Jakarta', '12015', 'Indonesia', 1, '2022-07-31 12:17:34', '2022-07-31 12:17:34');

-- Dumping structure for table salespro.taxes
CREATE TABLE IF NOT EXISTS `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.taxes: ~0 rows (approximately)
INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Pajak (11%)', 11, 1, '2023-02-13 13:14:46', '2023-02-13 13:14:46');

-- Dumping structure for table salespro.transfers
CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.transfers: ~0 rows (approximately)

-- Dumping structure for table salespro.units
CREATE TABLE IF NOT EXISTS `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.units: ~0 rows (approximately)
INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Pcs', 'Pcs', NULL, '*', 1, 1, '2022-07-31 12:15:05', '2023-02-13 13:14:08');

-- Dumping structure for table salespro.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@admin.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', '8Sd1UMMB8aamDyUBAXNgp51Nf4FL77qmvmKs5QSkhAkjr3eAUEhtxnHlKcrr', '5364377', NULL, 1, NULL, NULL, 1, 0, '2018-06-02 15:24:15', '2023-02-13 13:55:27'),
	(37, 'owner', 'owner@owner.com', '$2y$10$KULNwN7eg/FjjINi/FbpReE.m9lpbcCmtTMmb5zeP3oSjt1AxZBUK', NULL, '12345678', NULL, 2, NULL, NULL, 1, 0, '2023-02-12 14:53:20', '2023-02-12 14:53:20'),
	(38, 'staff', 'staff@staff.com', '$2y$10$.M9XgAsww8HWFJeKzTeEgetpD7FTlmCWCfAHiwcswGAm.y08nk016', NULL, '1234567', NULL, 4, 1, 1, 1, 0, '2023-02-13 16:04:31', '2023-02-13 16:04:31');

-- Dumping structure for table salespro.variants
CREATE TABLE IF NOT EXISTS `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.variants: ~0 rows (approximately)

-- Dumping structure for table salespro.warehouses
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table salespro.warehouses: ~1 rows (approximately)
INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Mitra HPL Abadi', '123456789', 'mitra@mitra.com', 'jalan', 1, '2022-07-31 12:14:05', '2023-02-12 15:31:20');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
