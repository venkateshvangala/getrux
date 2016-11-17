-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2016 at 03:10 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getrux`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formatted_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `administrative_area_level_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `political` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sublocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `place_id`, `lat`, `lng`, `formatted_address`, `postal_code`, `is_verified`, `created_at`, `updated_at`, `deleted_at`, `address_line_1`, `address_line_2`, `street_address`, `administrative_area_level_1`, `administrative_area_level_2`, `administrative_area_level_3`, `administrative_area_level_4`, `country`, `locality`, `political`, `sublocality`, `neighborhood`, `street_number`, `floor`, `room`) VALUES
(1, 'ChIJx9Lr6tqZyzsRwvu6koO3k64', '17.385044', '78.486671', 'Hyderabad, Telangana, India', '', 0, '2016-11-09 07:36:52', '2016-11-09 07:36:52', NULL, NULL, NULL, '', 'Telangana', '', '', '', 'India', 'Hyderabad', 'India', '', '', '', '', ''),
(2, 'ChIJbU60yXAWrjsR4E9-UejD3_g', '12.9715987', '77.59456269999998', 'Bangalore, Karnataka, India', '', 0, '2016-11-09 07:39:07', '2016-11-09 07:39:07', NULL, NULL, NULL, '', 'Karnataka', 'Bangalore Urban', '', '', 'India', 'Bengaluru', 'India', '', '', '', '', ''),
(3, 'ChIJS5QtSPnvNToRZQJKq4R-m5M', '16.5061743', '80.6480153', 'Vijayawada, Andhra Pradesh, India', '', 0, '2016-11-16 07:46:05', '2016-11-16 07:46:05', NULL, NULL, NULL, '', 'Andhra Pradesh', 'Krishna', '', '', 'India', 'Vijayawada', 'India', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `mode` tinyint(3) UNSIGNED NOT NULL,
  `attachment_type_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `trip_id`, `mode`, `attachment_type_id`, `file_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 0, 1, 'attachments/64402421027c0b854bc305440f54dd51.xlsx', '2016-11-11 00:49:34', '2016-11-11 00:49:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachment_types`
--

CREATE TABLE `attachment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachment_types`
--

INSERT INTO `attachment_types` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LR Receipt', 'Load Receipt', '2016-11-11 00:46:50', '2016-11-11 00:46:50', NULL),
(2, 'Load Insurance', 'Load Insurance', '2016-11-11 00:47:08', '2016-11-11 00:47:08', NULL),
(3, 'Delivery Confirmation', 'Delivery Confirmation', '2016-11-11 00:47:26', '2016-11-11 00:47:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `driving_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_location_address_id` int(10) UNSIGNED DEFAULT NULL,
  `license_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registered_owner_user_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `pan_id` int(10) UNSIGNED DEFAULT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `driving_license`, `base_location_address_id`, `license_image`, `registered_owner_user_id`, `address_id`, `pan_id`, `org_id`, `added_by_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'ABCD1234', 1, 'ABCD12341478696875.gif', 2, 1, 2, 2, 2, '2016-11-09 07:37:55', '2016-11-09 07:37:55', NULL),
(2, 5, 'ABCD12345', 1, 'ABCD123451479301835.jpeg', 2, 1, 5, 2, 2, '2016-11-16 07:40:35', '2016-11-16 07:40:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `load_postings`
--

CREATE TABLE `load_postings` (
  `id` int(10) UNSIGNED NOT NULL,
  `material_type_id` int(10) UNSIGNED NOT NULL,
  `truck_type_id` int(10) UNSIGNED NOT NULL,
  `scheduled_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_trucks` int(10) UNSIGNED DEFAULT NULL,
  `from_address_id` int(10) UNSIGNED DEFAULT NULL,
  `to_address_id` int(10) UNSIGNED DEFAULT NULL,
  `posted_by_user_id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `assigned_to_org_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `load_postings`
--

INSERT INTO `load_postings` (`id`, `material_type_id`, `truck_type_id`, `scheduled_date`, `weight`, `no_of_trucks`, `from_address_id`, `to_address_id`, `posted_by_user_id`, `org_id`, `status_id`, `assigned_to_org_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, '11/16/2016', '21', NULL, 1, 2, 4, 3, 16, NULL, '2016-11-09 07:44:52', '2016-11-09 07:45:30', NULL),
(2, 2, 1, '11/23/2016', '21', NULL, 1, 3, 4, 3, 16, NULL, '2016-11-16 07:47:56', '2016-11-16 07:49:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `load_views`
--

CREATE TABLE `load_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `load_posting_id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_types`
--

CREATE TABLE `material_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `material_types`
--

INSERT INTO `material_types` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Brick', 'Brick', NULL, NULL, NULL),
(2, 'Cement', 'Cement', NULL, NULL, NULL),
(3, 'Sand', 'Sand', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_05_10_130540_create_permission_tables', 1),
(4, '2016_09_13_070520_add_verification_to_user_table', 1),
(5, '2016_10_03_052632_create_pans_table', 1),
(6, '2016_10_03_052700_create_statuses_table', 1),
(7, '2016_10_03_052749_create_truck_types_table', 1),
(8, '2016_10_03_052819_create_material_types_table', 1),
(9, '2016_10_03_053019_create_addresses_table', 1),
(10, '2016_10_03_054156_create_subscriptions_table', 1),
(11, '2016_10_03_054221_create_organisations_table', 1),
(12, '2016_10_03_054705_create_drivers_table', 1),
(13, '2016_10_03_055031_create_trucks_table', 1),
(14, '2016_10_03_055054_create_truck_postings_table', 1),
(15, '2016_10_03_062022_create_load_postings_table', 1),
(16, '2016_10_03_062200_create_trips_table', 1),
(17, '2016_10_03_062257_create_organisation_users_table', 1),
(18, '2016_10_03_062328_create_subscription_payments_table', 1),
(19, '2016_10_03_071741_alter_users_table_add_deleted_at', 1),
(20, '2016_10_10_063924_alter_table_addresses', 1),
(21, '2016_10_12_045737_create_otps_table', 1),
(22, '2016_10_17_052828_alter_users_table', 1),
(23, '2016_10_26_112407_create_load_views_table', 1),
(24, '2016_10_31_075255_create_offline_trips_table', 1),
(25, '2016_11_07_065622_create_online_trips_table', 1),
(26, '2016_11_10_094815_create_attachment_types_table', 2),
(27, '2016_11_10_110615_create_attachments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `offline_trips`
--

CREATE TABLE `offline_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `truck_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `load_party` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver_mobile_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registered_owner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `material_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actual_owner_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_received` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `party_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offline_trips`
--

INSERT INTO `offline_trips` (`id`, `user_id`, `truck_number`, `driver`, `load_party`, `weight`, `base_location`, `current_location`, `required_date`, `eta`, `driver_mobile_number`, `registered_owner_name`, `material_type`, `actual_owner_name`, `hire_amount`, `advance_amount`, `balance_amount`, `ack_received`, `ack_date`, `paid_amount`, `party_balance`, `paid_date`, `from_address`, `to_address`, `load_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Truck0', 'srikanth', 'Navatha', '21', 'Hyderabad, Telangana, India', 'Hyderabad, Telangana, India', '11/23/2016', '11/23/2016', '8688881111', 'srikanth', 'cement', 'srikanth', '50000', '343443', '34324', '343443', '11/16/2016', '2332433', '534343', '11/24/2016', 'Hyderabad, Telangana, India', 'Hyderabad, Telangana, India', '11/30/2016', '2016-11-09 07:42:00', '2016-11-09 07:42:00', NULL),
(2, 1, 'Truck1', 'srikanth', 'Navatha', '21', 'Hyderabad, Telangana, India', 'hy', '11/23/2016', '11/30/2016', '8688881111', 'srikanth', 'cement', 'fiyaz', '', '', '', '', '', '', '', '', 'Hyderabad, Telangana, India', 'Bangalore, Karnataka, India', '', '2016-11-11 00:49:13', '2016-11-11 00:49:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `online_trips`
--

CREATE TABLE `online_trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `load_org_id` int(10) UNSIGNED NOT NULL,
  `truck_org_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `truck_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `load_party` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `base_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driver_mobile_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registered_owner_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `material_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actual_owner_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_received` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `party_balance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `load_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online_trips`
--

INSERT INTO `online_trips` (`id`, `load_org_id`, `truck_org_id`, `user_id`, `truck_number`, `driver`, `load_party`, `weight`, `base_location`, `current_location`, `required_date`, `eta`, `driver_mobile_number`, `registered_owner_name`, `material_type`, `actual_owner_name`, `hire_amount`, `advance_amount`, `balance_amount`, `ack_received`, `ack_date`, `paid_amount`, `party_balance`, `paid_date`, `from_address`, `to_address`, `load_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 2, 2, 'TS/07/3019', 'Driver1', '1', 21, 'Hyderabad, Telangana, India', '', '16/11/2016', '11/30/2016', '8688881111', 'Srikanth Garlapati', 'Cement', '', '5000', '45000', '', '', '', '', '', '', 'Hyderabad, Telangana, India', 'Bangalore, Karnataka, India', '', '2016-11-09 07:45:30', '2016-11-09 07:46:03', NULL),
(2, 3, 2, 4, 'TS/07/3019', 'Driver1', '2', 21, 'Hyderabad, Telangana, India', '', '23/11/2016', '11/29/2016', '8688881111', 'Srikanth Garlapati', 'Cement', '', '50000', '45000', '', '', '', '', '', '', 'Hyderabad, Telangana, India', 'Vijayawada, Andhra Pradesh, India', '', '2016-11-16 07:49:17', '2016-11-16 07:54:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organisations`
--

CREATE TABLE `organisations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `poc_user_id` int(10) UNSIGNED DEFAULT NULL,
  `service_tax_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pan_id` int(10) UNSIGNED DEFAULT NULL,
  `tn_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription_enabled` tinyint(1) NOT NULL,
  `subscription_id` int(10) UNSIGNED DEFAULT NULL,
  `subscription_expires_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `number_of_trucks` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisations`
--

INSERT INTO `organisations` (`id`, `name`, `company_type`, `address_id`, `poc_user_id`, `service_tax_number`, `pan_id`, `tn_cn`, `org_type`, `subscription_enabled`, `subscription_id`, `subscription_expires_at`, `added_by_user_id`, `number_of_trucks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, 1, NULL, NULL, NULL, 'truck-owner', 0, NULL, NULL, 1, 100, '2016-11-09 07:34:29', '2016-11-09 07:34:29', NULL),
(2, 'Sri Truck', NULL, 1, 2, 'abcd1234', 1, NULL, 'truck-owner', 0, 1, NULL, 2, NULL, '2016-11-09 07:36:52', '2016-11-09 07:36:52', NULL),
(3, 'Loadparty', 'llp', 1, 4, 'sdfsdf', 4, NULL, 'load-owner', 0, NULL, NULL, 4, NULL, '2016-11-09 07:44:26', '2016-11-09 07:44:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organisation_users`
--

CREATE TABLE `organisation_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `org_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisation_users`
--

INSERT INTO `organisation_users` (`id`, `org_id`, `user_id`, `org_role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL),
(2, 2, 2, NULL, NULL, NULL, NULL),
(3, 2, 3, NULL, '2016-11-09 07:37:55', '2016-11-09 07:37:55', NULL),
(4, 3, 4, NULL, NULL, NULL, NULL),
(5, 2, 5, NULL, '2016-11-16 07:40:35', '2016-11-16 07:40:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pans`
--

CREATE TABLE `pans` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pans`
--

INSERT INTO `pans` (`id`, `number`, `is_verified`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SDFSD-2323-T', 0, '2016-11-09 07:36:52', '2016-11-09 07:36:52', NULL),
(2, 'SDFSD-2323-R', 0, '2016-11-09 07:37:55', '2016-11-09 07:37:55', NULL),
(3, 'SDFSD-1234-T', 0, '2016-11-09 07:38:41', '2016-11-09 07:38:41', NULL),
(4, 'SDFSD-2323-Y', 0, '2016-11-09 07:44:26', '2016-11-09 07:44:26', NULL),
(5, 'ASDFS-2342-F', 0, '2016-11-16 07:40:35', '2016-11-16 07:40:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Truck Owner', NULL, NULL),
(3, 'Load Owner', NULL, NULL),
(4, 'Association', NULL, NULL),
(5, 'Driver', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `type`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'trip', 'Created', 'Trip Created', NULL, NULL, NULL),
(2, 'trip', 'Loading', 'Loading', NULL, NULL, NULL),
(3, 'trip', 'Out for Delivery', 'Out for Delivery', NULL, NULL, NULL),
(4, 'trip', 'Halt - Break', 'Halt - Break', NULL, NULL, NULL),
(5, 'trip', 'Halt - Breakdown', 'Halt - Breakdown', NULL, NULL, NULL),
(6, 'trip', 'Halt - Situation', 'Halt - Situation', NULL, NULL, NULL),
(7, 'trip', 'Unloading', 'Unloading', NULL, NULL, NULL),
(8, 'trip', 'Completed - Manual', 'Completed - Manual', NULL, NULL, NULL),
(9, 'trip', 'Completed - System', 'Completed - System', NULL, NULL, NULL),
(10, 'truck', 'Available', 'Available', NULL, NULL, NULL),
(11, 'truck', 'Engaged', 'Engaged', NULL, NULL, NULL),
(12, 'truck', 'Busy - Out for Delivery', 'Busy - Out for Delivery', NULL, NULL, NULL),
(13, 'truck', 'Under Maintenance', 'Under Maintenance', NULL, NULL, NULL),
(14, 'truck', 'Unknown', 'Unknown', NULL, NULL, NULL),
(15, 'load-posting', 'Active', 'Active Load Posting', NULL, NULL, NULL),
(16, 'load-posting', 'Completed', 'Completed Load Posting', NULL, NULL, NULL),
(17, 'truck-posting', 'Active', 'Active Truck Posting', NULL, NULL, NULL),
(18, 'truck-posting', 'Completed', 'Completed Truck Posting', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `leads` int(11) NOT NULL,
  `trucks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lead_views` int(11) NOT NULL,
  `truck_postings` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `name`, `leads`, `trucks`, `lead_views`, `truck_postings`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prime', 100, '100', 100, '100', '2016-11-09 07:34:54', '2016-11-09 07:34:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_payments`
--

CREATE TABLE `subscription_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(10) UNSIGNED NOT NULL,
  `paid_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `load_posting_id` int(10) UNSIGNED DEFAULT NULL,
  `truck_posting_id` int(10) UNSIGNED DEFAULT NULL,
  `eta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `load_org_id` int(10) UNSIGNED NOT NULL,
  `truck_org_id` int(10) UNSIGNED NOT NULL,
  `audit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `total_payment` double DEFAULT NULL,
  `advance_payment` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_location_address_id` int(10) UNSIGNED DEFAULT NULL,
  `registered_owner_user_id` int(10) UNSIGNED NOT NULL,
  `registered_owner_pan_id` int(10) UNSIGNED DEFAULT NULL,
  `driver_id` int(10) UNSIGNED NOT NULL,
  `material_type_id` int(10) UNSIGNED NOT NULL,
  `truck_type_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `added_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `number`, `name`, `base_location_address_id`, `registered_owner_user_id`, `registered_owner_pan_id`, `driver_id`, `material_type_id`, `truck_type_id`, `status_id`, `org_id`, `added_by_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TS/07/3019', 'Truck1', 1, 2, 3, 1, 2, 1, 10, 2, 2, '2016-11-09 07:38:41', '2016-11-09 07:38:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `truck_postings`
--

CREATE TABLE `truck_postings` (
  `id` int(10) UNSIGNED NOT NULL,
  `truck_id` int(10) UNSIGNED NOT NULL,
  `from_address_id` int(10) UNSIGNED DEFAULT NULL,
  `to_address_id` int(10) UNSIGNED DEFAULT NULL,
  `availability_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `posted_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `truck_postings`
--

INSERT INTO `truck_postings` (`id`, `truck_id`, `from_address_id`, `to_address_id`, `availability_date`, `org_id`, `status_id`, `posted_by_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 2, '11/16/2016', 2, 18, 2, '2016-11-09 07:39:07', '2016-11-09 07:45:30', NULL),
(2, 1, 1, 3, '11/19/2016', 2, 18, 2, '2016-11-16 07:46:05', '2016-11-16 07:49:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `truck_types`
--

CREATE TABLE `truck_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `truck_types`
--

INSERT INTO `truck_types` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Heavy', 'Heavy Trucks', NULL, NULL, NULL),
(2, 'Mini', 'Mini Trucks', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `is_otp_verified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`, `verified`, `verification_token`, `deleted_at`, `address_id`, `is_otp_verified`) VALUES
(1, 'Admin', 'admin@admin.com', '9988776655', '$2y$10$PB5mah.x1LG7Ivkr4g6yYOssJcdGnrFywotKiLfXMi9bbw63C//FK', 'USonNyDOCgVvceTa6Knnx6OHmr6unJWYX5zH20aekwbtJrkiNbnsGrkSEobA', '2016-11-09 07:31:41', '2016-11-16 07:36:29', 0, '60a12135f95a5d275d896d560d00c9abb45a7f1491295f7565c695f98151a64a', NULL, NULL, 1),
(2, 'Srikanth Garlapati', 'simplysri@gmail.com', '8688888283', '$2y$10$mG1Ur4Cg5wczEFc1FH1wg.VNDdcEjRu2vk.9r7mSHy9FT5xk4AwkC', 'VNXJ5FWySs03cfMs6amJdKRJjrXGTVlNi2wE63ohaM6lpKKX6lWk9b1p6QZY', '2016-11-09 07:35:32', '2016-11-16 08:26:21', 0, NULL, NULL, NULL, 1),
(3, 'Driver1', 'simplysri1@gmail.com', '8688881111', '$2y$10$eM6QD.w.rooosE08wbO1AezHI9MiZrBIPBzcbCA3o1B7eRtzNcFBq', NULL, '2016-11-09 07:37:55', '2016-11-09 07:37:55', 0, NULL, NULL, NULL, 0),
(4, 'Loadparty', 'simplysri2@gmail.com', '8688882222', '$2y$10$ms1eduwnDPpIPkhIYmH8Iu/qp.0fKD.Y0RyK.8e5JbXw3QJ9Gn9vu', 'aNNx2gPwfLNzuDXIADC9DdaaOdkw53sunGuwQpzzdXGWMFiDIDGCuYLzNDvf', '2016-11-09 07:43:45', '2016-11-16 07:54:36', 0, NULL, NULL, NULL, 1),
(5, 'Driver2', 'simplysri3@gmail.com', '8688888284', '$2y$10$iSW6LkRAEZ9ob4He3kVOyO7gdm6CFHAlx/cuhh2VpktUi2xtKKZ9K', NULL, '2016-11-16 07:40:34', '2016-11-16 07:40:34', 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_attachment_type_id_foreign` (`attachment_type_id`);

--
-- Indexes for table `attachment_types`
--
ALTER TABLE `attachment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`),
  ADD KEY `drivers_base_location_address_id_foreign` (`base_location_address_id`),
  ADD KEY `drivers_registered_owner_user_id_foreign` (`registered_owner_user_id`),
  ADD KEY `drivers_address_id_foreign` (`address_id`),
  ADD KEY `drivers_pan_id_foreign` (`pan_id`),
  ADD KEY `drivers_org_id_foreign` (`org_id`),
  ADD KEY `drivers_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `load_postings`
--
ALTER TABLE `load_postings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_postings_material_type_id_foreign` (`material_type_id`),
  ADD KEY `load_postings_truck_type_id_foreign` (`truck_type_id`),
  ADD KEY `load_postings_from_address_id_foreign` (`from_address_id`),
  ADD KEY `load_postings_to_address_id_foreign` (`to_address_id`),
  ADD KEY `load_postings_posted_by_user_id_foreign` (`posted_by_user_id`),
  ADD KEY `load_postings_org_id_foreign` (`org_id`),
  ADD KEY `load_postings_status_id_foreign` (`status_id`),
  ADD KEY `load_postings_assigned_to_org_id_foreign` (`assigned_to_org_id`);

--
-- Indexes for table `load_views`
--
ALTER TABLE `load_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_views_load_posting_id_foreign` (`load_posting_id`),
  ADD KEY `load_views_org_id_foreign` (`org_id`);

--
-- Indexes for table `material_types`
--
ALTER TABLE `material_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_trips`
--
ALTER TABLE `offline_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offline_trips_user_id_foreign` (`user_id`);

--
-- Indexes for table `online_trips`
--
ALTER TABLE `online_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_trips_load_org_id_foreign` (`load_org_id`),
  ADD KEY `online_trips_truck_org_id_foreign` (`truck_org_id`),
  ADD KEY `online_trips_user_id_foreign` (`user_id`);

--
-- Indexes for table `organisations`
--
ALTER TABLE `organisations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organisations_address_id_foreign` (`address_id`),
  ADD KEY `organisations_poc_user_id_foreign` (`poc_user_id`),
  ADD KEY `organisations_pan_id_foreign` (`pan_id`),
  ADD KEY `organisations_subscription_id_foreign` (`subscription_id`),
  ADD KEY `organisations_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `organisation_users`
--
ALTER TABLE `organisation_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organisation_users_org_id_foreign` (`org_id`),
  ADD KEY `organisation_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `pans`
--
ALTER TABLE `pans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_payments_org_id_foreign` (`org_id`),
  ADD KEY `subscription_payments_subscription_id_foreign` (`subscription_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_load_posting_id_foreign` (`load_posting_id`),
  ADD KEY `trips_truck_posting_id_foreign` (`truck_posting_id`),
  ADD KEY `trips_status_id_foreign` (`status_id`),
  ADD KEY `trips_load_org_id_foreign` (`load_org_id`),
  ADD KEY `trips_truck_org_id_foreign` (`truck_org_id`),
  ADD KEY `trips_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trucks_base_location_address_id_foreign` (`base_location_address_id`),
  ADD KEY `trucks_registered_owner_user_id_foreign` (`registered_owner_user_id`),
  ADD KEY `trucks_registered_owner_pan_id_foreign` (`registered_owner_pan_id`),
  ADD KEY `trucks_driver_id_foreign` (`driver_id`),
  ADD KEY `trucks_material_type_id_foreign` (`material_type_id`),
  ADD KEY `trucks_truck_type_id_foreign` (`truck_type_id`),
  ADD KEY `trucks_status_id_foreign` (`status_id`),
  ADD KEY `trucks_org_id_foreign` (`org_id`),
  ADD KEY `trucks_added_by_user_id_foreign` (`added_by_user_id`);

--
-- Indexes for table `truck_postings`
--
ALTER TABLE `truck_postings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truck_postings_truck_id_foreign` (`truck_id`),
  ADD KEY `truck_postings_from_address_id_foreign` (`from_address_id`),
  ADD KEY `truck_postings_to_address_id_foreign` (`to_address_id`),
  ADD KEY `truck_postings_org_id_foreign` (`org_id`),
  ADD KEY `truck_postings_status_id_foreign` (`status_id`),
  ADD KEY `truck_postings_posted_by_user_id_foreign` (`posted_by_user_id`);

--
-- Indexes for table `truck_types`
--
ALTER TABLE `truck_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attachment_types`
--
ALTER TABLE `attachment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `load_postings`
--
ALTER TABLE `load_postings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `load_views`
--
ALTER TABLE `load_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `material_types`
--
ALTER TABLE `material_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `offline_trips`
--
ALTER TABLE `offline_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `online_trips`
--
ALTER TABLE `online_trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `organisations`
--
ALTER TABLE `organisations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `organisation_users`
--
ALTER TABLE `organisation_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pans`
--
ALTER TABLE `pans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `truck_postings`
--
ALTER TABLE `truck_postings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `truck_types`
--
ALTER TABLE `truck_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_attachment_type_id_foreign` FOREIGN KEY (`attachment_type_id`) REFERENCES `attachment_types` (`id`);

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `drivers_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `drivers_base_location_address_id_foreign` FOREIGN KEY (`base_location_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `drivers_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `drivers_pan_id_foreign` FOREIGN KEY (`pan_id`) REFERENCES `pans` (`id`),
  ADD CONSTRAINT `drivers_registered_owner_user_id_foreign` FOREIGN KEY (`registered_owner_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `load_postings`
--
ALTER TABLE `load_postings`
  ADD CONSTRAINT `load_postings_assigned_to_org_id_foreign` FOREIGN KEY (`assigned_to_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `load_postings_from_address_id_foreign` FOREIGN KEY (`from_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `load_postings_material_type_id_foreign` FOREIGN KEY (`material_type_id`) REFERENCES `material_types` (`id`),
  ADD CONSTRAINT `load_postings_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `load_postings_posted_by_user_id_foreign` FOREIGN KEY (`posted_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `load_postings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `load_postings_to_address_id_foreign` FOREIGN KEY (`to_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `load_postings_truck_type_id_foreign` FOREIGN KEY (`truck_type_id`) REFERENCES `truck_types` (`id`);

--
-- Constraints for table `load_views`
--
ALTER TABLE `load_views`
  ADD CONSTRAINT `load_views_load_posting_id_foreign` FOREIGN KEY (`load_posting_id`) REFERENCES `load_postings` (`id`),
  ADD CONSTRAINT `load_views_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`);

--
-- Constraints for table `offline_trips`
--
ALTER TABLE `offline_trips`
  ADD CONSTRAINT `offline_trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `online_trips`
--
ALTER TABLE `online_trips`
  ADD CONSTRAINT `online_trips_load_org_id_foreign` FOREIGN KEY (`load_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `online_trips_truck_org_id_foreign` FOREIGN KEY (`truck_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `online_trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `organisations`
--
ALTER TABLE `organisations`
  ADD CONSTRAINT `organisations_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `organisations_pan_id_foreign` FOREIGN KEY (`pan_id`) REFERENCES `pans` (`id`),
  ADD CONSTRAINT `organisations_poc_user_id_foreign` FOREIGN KEY (`poc_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `organisations_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);

--
-- Constraints for table `organisation_users`
--
ALTER TABLE `organisation_users`
  ADD CONSTRAINT `organisation_users_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `organisation_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD CONSTRAINT `subscription_payments_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `subscription_payments_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trips_load_org_id_foreign` FOREIGN KEY (`load_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `trips_load_posting_id_foreign` FOREIGN KEY (`load_posting_id`) REFERENCES `load_postings` (`id`),
  ADD CONSTRAINT `trips_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `trips_truck_org_id_foreign` FOREIGN KEY (`truck_org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `trips_truck_posting_id_foreign` FOREIGN KEY (`truck_posting_id`) REFERENCES `truck_postings` (`id`);

--
-- Constraints for table `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `trucks_added_by_user_id_foreign` FOREIGN KEY (`added_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trucks_base_location_address_id_foreign` FOREIGN KEY (`base_location_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `trucks_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `trucks_material_type_id_foreign` FOREIGN KEY (`material_type_id`) REFERENCES `material_types` (`id`),
  ADD CONSTRAINT `trucks_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `trucks_registered_owner_pan_id_foreign` FOREIGN KEY (`registered_owner_pan_id`) REFERENCES `pans` (`id`),
  ADD CONSTRAINT `trucks_registered_owner_user_id_foreign` FOREIGN KEY (`registered_owner_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trucks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `trucks_truck_type_id_foreign` FOREIGN KEY (`truck_type_id`) REFERENCES `truck_types` (`id`);

--
-- Constraints for table `truck_postings`
--
ALTER TABLE `truck_postings`
  ADD CONSTRAINT `truck_postings_from_address_id_foreign` FOREIGN KEY (`from_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `truck_postings_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `organisations` (`id`),
  ADD CONSTRAINT `truck_postings_posted_by_user_id_foreign` FOREIGN KEY (`posted_by_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `truck_postings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `truck_postings_to_address_id_foreign` FOREIGN KEY (`to_address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `truck_postings_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`);

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
