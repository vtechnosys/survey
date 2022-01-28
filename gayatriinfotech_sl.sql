-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2022 at 03:37 PM
-- Server version: 10.2.41-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gayatriinfotech_sl`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_details`
--

CREATE TABLE `additional_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jilla` int(50) NOT NULL,
  `taluka` int(50) NOT NULL,
  `gram` int(50) NOT NULL,
  `divabatti_kar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aarogya_kar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panipatti_kar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panipatti_special_kar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_details`
--

INSERT INTO `additional_details` (`id`, `jilla`, `taluka`, `gram`, `divabatti_kar`, `aarogya_kar`, `panipatti_kar`, `panipatti_special_kar`, `created_at`, `updated_at`) VALUES
(7, 26, 27, 29, '[{\"divabatti\":\"0-300\",\"kar\":\"1\"},{\"divabatti\":\"300-600\",\"kar\":\"2\"},{\"divabatti\":\"600 above\",\"kar\":\"3\"}]', '[{\"type\":\"0-300\",\"kar\":\"110\"},{\"type\":\"300-600\",\"kar\":\"130\"},{\"type\":\"600 above\",\"kar\":\"120\"}]', '100', '200', '2022-01-22 02:56:36', '2022-01-23 00:06:28'),
(8, 30, 35, 38, '[{\"divabatti\":\"0-300\",\"divabattikar\":\"45\"},{\"divabatti\":\"300-600\",\"divabattikar\":\"50\"},{\"divabatti\":\"600 above\",\"divabattikar\":\"55\"}]', '[{\"type\":\"0-300\",\"kar\":\"67\"},{\"type\":\"300-600\",\"kar\":\"78\"},{\"type\":\"600 above\",\"kar\":\"89\"}]', '200', '300', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(9, 31, 36, 41, '[{\"divabatti\":\"0-300\",\"divabattikar\":\"10\"},{\"divabatti\":\"300-600\",\"divabattikar\":\"20\"},{\"divabatti\":\"600 above\",\"divabattikar\":\"30\"}]', '[{\"type\":\"0-300\",\"kar\":\"1\"},{\"type\":\"300-600\",\"kar\":\"2\"},{\"type\":\"600 above\",\"kar\":\"3\"}]', '10', '20', '2022-01-27 00:18:24', '2022-01-27 00:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `area_masters`
--

CREATE TABLE `area_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `super_id` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area_masters`
--

INSERT INTO `area_masters` (`id`, `area_name`, `super_id`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(26, 'सोलापूर', '0', '0', 'active', '2021-11-27 01:20:06', '2022-01-26 07:01:39'),
(27, 'akklakot', '0', '26', 'active', '2021-11-27 01:29:11', '2021-12-03 03:03:08'),
(28, 'बार्शी', '0', '26', 'active', '2021-11-27 02:27:34', '2022-01-26 07:02:18'),
(29, 'Kapsi', '26', '28', 'active', '2021-11-27 03:04:51', '2022-01-26 07:39:02'),
(30, 'Aurangabad', '0', '0', 'active', '2021-11-29 04:37:27', '2021-12-03 03:02:52'),
(31, 'Beed', '0', '0', 'active', '2021-11-29 04:37:42', '2021-12-03 03:02:56'),
(32, 'Latur', '0', '0', 'active', '2021-11-29 04:38:05', '2021-12-03 03:03:01'),
(33, 'Nanded', '0', '0', 'active', '2021-11-29 04:38:24', '2021-12-11 00:50:02'),
(34, 'Soegaon', '0', '30', 'active', '2021-11-29 04:39:33', '2021-11-29 04:39:33'),
(35, 'Vaijapur', '0', '30', 'active', '2021-11-29 04:39:53', '2021-11-29 04:39:53'),
(36, 'Wadwani', '0', '31', 'active', '2021-11-29 04:41:09', '2021-11-29 04:41:09'),
(37, 'Georai', '0', '31', 'inactive', '2021-11-29 04:41:35', '2021-12-09 00:44:14'),
(38, 'Alapurwadi', '30', '35', 'active', '2021-11-29 04:51:39', '2021-12-03 03:03:19'),
(40, 'testing', '31', '37', 'active', '2021-12-03 03:10:43', '2021-12-03 03:10:43'),
(41, 'Jiri124', '31', '36', 'active', '2021-12-03 03:14:07', '2021-12-03 03:14:07'),
(42, 'कापसी', '26', '28', 'active', '2022-01-18 08:14:34', '2022-01-26 07:03:16'),
(43, 'latur', '0', '32', 'active', '2022-01-23 11:34:11', '2022-01-23 11:34:11'),
(44, 'mamdapur', '32', '43', 'active', '2022-01-23 11:34:33', '2022-01-23 11:34:33'),
(45, '-', '32', '43', 'active', '2022-01-23 11:34:57', '2022-01-23 23:44:34'),
(46, 'बार्शी', '0', '26', 'active', '2022-01-26 07:32:46', '2022-01-26 07:32:46'),
(47, 'कापसी', '26', '28', 'active', '2022-01-26 07:33:14', '2022-01-26 07:33:14'),
(48, 'mumbai', '0', '0', 'active', '2022-01-27 00:58:06', '2022-01-27 01:00:42'),
(49, 'dhili', '0', '33', 'active', '2022-01-27 01:00:53', '2022-01-27 02:20:08'),
(51, 'gramtest', '33', '49', 'active', '2022-01-27 04:10:08', '2022-01-27 04:10:08'),
(52, 'gramtest', '33', '49', 'active', '2022-01-27 04:10:37', '2022-01-27 04:23:43'),
(53, 'rani', '30', '35', 'active', '2022-01-27 04:24:19', '2022-01-27 04:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `bharanks`
--

CREATE TABLE `bharanks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jilla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taluka` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bharanks`
--

INSERT INTO `bharanks` (`id`, `jilla`, `taluka`, `gram`, `amt`, `created_at`, `updated_at`) VALUES
(20, '26', '27', '29', '[{\"type\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"amt\":\"300\"},{\"type\":\"\\u0935\\u093e\\u0923\\u093f\\u091c\\u0915\",\"amt\":\"400\"},{\"type\":\"\\u0914\\u0927\\u094b\\u0917\\u093f\\u0915\",\"amt\":\"500\"}]', '2022-01-22 02:56:36', '2022-01-22 02:56:36'),
(21, '30', '35', '38', '[{\"type\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"amt\":\"12\"},{\"type\":\"\\u0935\\u093e\\u0923\\u093f\\u091c\\u0915\",\"amt\":\"18\"},{\"type\":\"\\u0914\\u0927\\u094b\\u0917\\u093f\\u0915\",\"amt\":\"45\"}]', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(22, '31', '36', '41', '[{\"type\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"amt\":\"1\"},{\"type\":\"\\u0935\\u093e\\u0923\\u093f\\u091c\\u0915\",\"amt\":\"2\"},{\"type\":\"\\u0914\\u0927\\u094b\\u0917\\u093f\\u0915\",\"amt\":\"3\"}]', '2022-01-27 00:18:24', '2022-01-27 00:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `ghasaras`
--

CREATE TABLE `ghasaras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jilla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taluka` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `types` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `four` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `five` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `six` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seven` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `greater_than_sixty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ghasaras`
--

INSERT INTO `ghasaras` (`id`, `jilla`, `taluka`, `gram`, `types`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `greater_than_sixty`, `created_at`, `updated_at`) VALUES
(66, '26', '27', '29', 'झोपडीचे घर किंवा मातीचे घर', '124', '12', '12', '12', '12', '12', '12', '12', '12', '2022-01-22 02:56:36', '2022-01-23 00:06:29'),
(67, '26', '27', '29', 'दगड , वीट मातीचे घर', '14', '14', '144', '14', '14', '14', '14', '14', '14', '2022-01-22 02:56:36', '2022-01-23 00:06:29'),
(68, '26', '27', '29', 'दगड ,वीट सिमेंटचे घर', '15', '15', '15', '15', '15', '15', '15', '15', '15', '2022-01-22 02:56:36', '2022-01-22 02:56:36'),
(69, '26', '27', '29', 'आर.सी.सी. बांधकाम', '16', '16', '16', '16', '16', '16', '16', '16', '16', '2022-01-22 02:56:36', '2022-01-22 02:56:36'),
(70, '26', '27', '29', 'खुली जागा', '17', '17', '17', '17', '17', '17', '17', '17', '17', '2022-01-22 02:56:36', '2022-01-22 04:50:36'),
(71, '26', '27', '29', 'Load Bearing', '18', '18', '18', '18', '188', '18', '18', '180', '189', '2022-01-22 02:56:36', '2022-01-23 00:06:54'),
(72, '30', '35', '38', 'झोपडीचे घर किंवा मातीचे घर', '1', '2', '3', '4', '5', '6', '7', '8', '9', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(73, '30', '35', '38', 'दगड , वीट मातीचे घर', '10', '11', '12', '13', '14', '15', '16', '17', '18', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(74, '30', '35', '38', 'दगड ,वीट सिमेंटचे घर', '19', '20', '21', '22', '23', '24', '25', '26', '27', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(75, '30', '35', '38', 'आर.सी.सी. बांधकाम', '28', '29', '30', '31', '32', '33', '34', '35', '36', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(76, '30', '35', '38', 'खुली जागा', '37', '38', '39', '40', '41', '42', '43', '44', '45', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(77, '30', '35', '38', 'Load Bearing', '46', '47', '48', '49', '50', '51', '52', '53', '54', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(78, '31', '36', '41', 'झोपडीचे घर किंवा मातीचे घर', '5', '6', '7', '8', '9', '10', '1', '12', '1', '2022-01-27 00:18:24', '2022-01-27 00:18:24'),
(79, '31', '36', '41', 'दगड , वीट मातीचे घर', '1', '2', '3', '3', '3', '3', '3', '3', '3', '2022-01-27 00:18:24', '2022-01-27 00:18:24'),
(80, '31', '36', '41', 'दगड ,वीट सिमेंटचे घर', '4', '5', '6', '7', '5', '8', '9', '4', '5', '2022-01-27 00:18:24', '2022-01-27 00:18:24'),
(81, '31', '36', '41', 'आर.सी.सी. बांधकाम', '6', '8', '9', '5', '6', '7', '8', '9', '6', '2022-01-27 00:18:24', '2022-01-27 00:18:24'),
(82, '31', '36', '41', 'खुली जागा', '5', '6', '3', '1', '4', '5', '9', '6', '3', '2022-01-27 00:18:24', '2022-01-27 00:18:24'),
(83, '31', '36', '41', 'Load Bearing', '2', '8', '3', '5', '3', '6', '1', '8', '3', '2022-01-27 00:18:24', '2022-01-27 00:18:24'),
(84, '31', '36', '41', 'आर.सी.सी. बांधकाम - वानिजक', '2', '2', '2', '5', '6', '8', '9', '7', '5', '2022-01-27 00:18:24', '2022-01-27 00:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_10_07_101639_create_area_masters_table', 1),
(3, '2021_10_07_104136_create_survey_infos_table', 2),
(4, '2021_10_07_104204_create_survey_details_table', 3),
(5, '2021_10_09_101837_create_registers_table', 4),
(6, '2021_11_27_084240_create_varnans_table', 5),
(7, '2021_11_27_104805_create_readyreknals_table', 6),
(8, '2021_11_27_104832_create_bharanks_table', 6),
(9, '2021_11_27_104849_create_bhasaras_table', 6),
(10, '2021_11_27_104903_create_ghasaras_table', 6),
(11, '2021_11_27_110612_create_readyreknals_table', 7),
(12, '2021_11_27_110746_create_bharanks_table', 8),
(13, '2021_11_27_110835_create_ghasaras_table', 9),
(14, '2021_12_17_080911_create_additional_details_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `readyreknals`
--

CREATE TABLE `readyreknals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jilla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taluka` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `readyreknals`
--

INSERT INTO `readyreknals` (`id`, `jilla`, `taluka`, `gram`, `rate`, `created_at`, `updated_at`) VALUES
(50, '26', '27', '29', '[{\"types\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"100\",\"karach_dar\":\"10\"},{\"types\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"12\",\"karach_dar\":\"1221\"},{\"types\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"12\",\"karach_dar\":\"1221\"},{\"types\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"rates\":\"12\",\"karach_dar\":\"122\"},{\"types\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"rates\":\"12\",\"karach_dar\":\"1221\"},{\"types\":\"Load Bearing\",\"rates\":\"12\",\"karach_dar\":\"2121\"}]\r\n', '2022-01-22 02:56:36', '2022-01-22 04:50:36'),
(51, '30', '35', '38', '[{\"types\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"12\",\"karach_dar\":\"14\"},{\"types\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"15\",\"karach_dar\":\"16\"},{\"types\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"17\",\"karach_dar\":\"18\"},{\"types\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"rates\":\"19\",\"karach_dar\":\"20\"},{\"types\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"rates\":\"21\",\"karach_dar\":\"23\"},{\"types\":\"Load Bearing\",\"rates\":\"12\",\"karach_dar\":\"12\"}]', '2022-01-23 02:59:25', '2022-01-23 02:59:25'),
(52, '31', '36', '41', '[{\"types\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"1\",\"karach_dar\":\"2\"},{\"types\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"3\",\"karach_dar\":\"4\"},{\"types\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"rates\":\"5\",\"karach_dar\":\"6\"},{\"types\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"rates\":\"7\",\"karach_dar\":\"8\"},{\"types\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"rates\":\"9\",\"karach_dar\":\"10\"},{\"types\":\"Load Bearing\",\"rates\":\"11\",\"karach_dar\":\"12\"},{\"types\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e - \\u0935\\u093e\\u0928\\u093f\\u091c\\u0915\",\"rates\":\"13\",\"karach_dar\":\"14\"}]', '2022-01-27 00:18:24', '2022-01-27 00:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `mobile`, `password`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Balkrishna Yemul', '9404919907', 'krishna', 'active', '2021-11-09 10:06:31', '2021-12-03 02:47:06'),
(5, 'Nikhil', '9922550797', '1234', 'active', '2021-11-11 03:45:08', '2021-11-11 03:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `survey_details`
--

CREATE TABLE `survey_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sq_ft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sq_mtr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `readyreknal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depression` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bharank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_details`
--

INSERT INTO `survey_details` (`id`, `sid`, `type`, `sq_ft`, `sq_mtr`, `readyreknal`, `depression`, `bharank`, `total`, `created_at`, `updated_at`) VALUES
(1, '1', 'RCC Construction', '500', '5000', '125', '320', '23', '50000', '2021-10-08 05:15:36', '2021-10-08 05:40:42'),
(2, '1', 'Stone brick mud house', '508', '500', '500', '500', '500', '2300', '2021-10-08 05:16:04', '2021-10-08 05:40:54'),
(3, '3', 'Stone brick mud house', '100', '200', '10', '10', '10', '1000', '2021-10-10 02:45:58', '2021-10-10 02:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `survey_infos`
--

CREATE TABLE `survey_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jilla_id` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taluka_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gram_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mbl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_tax_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_s_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_s_m` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_sqft` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `north_south` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `east_west` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `north` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `south` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `east` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `west` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wife_mbl` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wife_adhar` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapimg` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nal` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `washroom` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` int(20) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_infos`
--

INSERT INTO `survey_infos` (`id`, `name`, `jilla_id`, `taluka_id`, `gram_id`, `gram_name`, `name2`, `survey_name`, `mbl`, `adhar`, `old_tax_no`, `s_s_no`, `s_s_m`, `group_no`, `plot_no`, `total_sqft`, `north_south`, `east_west`, `details`, `north`, `south`, `east`, `west`, `gate`, `wife_mbl`, `wife_adhar`, `img`, `mapimg`, `nal`, `washroom`, `tax_number`, `status`, `created_at`, `updated_at`) VALUES
(58, 'rani', '26', '27', '29', 'rani', 'rani', 'rni', '9734231223', '12345679012', '12', '12', '122', '12', '212', '1200', '12312', '1233', '[{\"varnana_name\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"yercon\":\"9\",\"conyerage\":\"three\",\"floor\":\"2\",\"ch_fu\":\"5\",\"ch_me\":\"0.4646840148698885\",\"total\":\"90\"},{\"varnana_name\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"yercon\":\"1\",\"conyerage\":\"one\",\"floor\":\"3\",\"ch_fu\":\"3\",\"ch_me\":\"0.2788104089219331\",\"total\":\"3\"},{\"varnana_name\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"Load Bearing\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null}]', 'eab', 'hgfh', 'fhg', 'fgh', 'gate', '1234561234', '123123123123', '71BC84Jf6OS._SY879._SX._UX._SY._UY_.jpg', '51AhyPWP5yS._UY445_.jpg', 'No', 'Yes', 1, 'active', '2022-01-22 11:57:10', '2022-01-22 11:57:10'),
(59, 'rani', '30', '35', '38', 'rani', 'rani', 'rni', '9734231223', '12345679012', '1', '12', '122', '123', '212', '1200', '12312', '1233', '[{\"varnana_name\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"property_name\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"yercon\":\"12\",\"conyerage\":\"four\",\"floor\":\"2\",\"ch_fu\":\"2\",\"ch_me\":\"0.1858736059479554\",\"total\":\"1221\"},{\"varnana_name\":\"Load Bearing\",\"property_name\":\"\\u0914\\u0927\\u094b\\u0917\\u093f\\u0915\",\"yercon\":\"1\",\"conyerage\":\"one\",\"floor\":\"1\",\"ch_fu\":\"2\",\"ch_me\":\"0.1858736059479554\",\"total\":\"111\"}]', 'eab', 'hgfh', 'fhg', 'fgh', 'gate', '1234561234', '123123123123', 'screencapture-csiplearninghub-string-programs-in-python-for-practice-2022-01-16-23_09_09.png', 'images.jpg', 'Yes', 'Yes', 2, 'active', '2022-01-23 03:05:13', '2022-01-23 03:05:13'),
(61, 'Nikhil', '26', '27', '29', 'Vaibhav', 'Krishna', 'Gautam', '9595959595', '515148752584', '10', '12', '13', '15', '16', '100', '10', '10', '[{\"varnana_name\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"yercon\":\"5\",\"conyerage\":\"two\",\"floor\":\"1\",\"ch_fu\":\"100\",\"ch_me\":\"30.48\",\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"Load Bearing\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"testing demo\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null}]', 'nama', 'kurri', 'jadhav', 'mahape', 'purva', '8574858745', '895674125896', 'WhatsApp Image 2022-01-06 at 11.03.44 PM.jpeg', 'logo.png', 'No', 'Yes', 11, 'active', '2022-01-23 08:50:47', '2022-01-23 08:50:47'),
(62, 'Ganesh Ambadas Survase', '26', '28', '42', 'Grampanchayat Kapsi', 'Swatha', '-', '8605968361', '706028905570', '141', '-', '-', '-', '-', '758', '31.6', '24', '[{\"varnana_name\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"yercon\":\"21\",\"conyerage\":\"five\",\"floor\":\"1\",\"ch_fu\":\"470\",\"ch_me\":\"43.680297397769515\",\"total\":null},{\"varnana_name\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"property_name\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"yercon\":\"3\",\"conyerage\":\"two\",\"floor\":\"1\",\"ch_fu\":\"288\",\"ch_me\":\"26.765799256505577\",\"total\":null},{\"varnana_name\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"Load Bearing\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null}]', 'Gram Panchayat Rasta', 'Devidas Pachkudve', 'Sunil Pachkudve', 'Bol Rasta', 'Uttar', '-', '344013671355', 'null', 'null', 'Yes', 'Yes', 141, 'active', '2022-01-26 08:02:34', '2022-01-26 08:02:34'),
(63, 'rajeshwari', '31', '36', '41', 'rani', 'raju', 'null', '9767532466', '147258369852', 'null', 'null', 'null', 'null', 'null', '1200', '125', '150', '[{\"varnana_name\":\"\\u091d\\u094b\\u092a\\u0921\\u0940\\u091a\\u0947 \\u0918\\u0930 \\u0915\\u093f\\u0902\\u0935\\u093e \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":\"\\u0928\\u093f\\u0935\\u093e\\u0938\\u0940\",\"yercon\":\"2\",\"conyerage\":\"one\",\"floor\":\"4\",\"ch_fu\":\"3\",\"ch_me\":\"0.2788104089219331\",\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 , \\u0935\\u0940\\u091f \\u092e\\u093e\\u0924\\u0940\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":\"\\u0914\\u0927\\u094b\\u0917\\u093f\\u0915\",\"yercon\":\"34\",\"conyerage\":\"six\",\"floor\":\"3\",\"ch_fu\":\"4\",\"ch_me\":\"0.3717472118959108\",\"total\":null},{\"varnana_name\":\"\\u0926\\u0917\\u0921 ,\\u0935\\u0940\\u091f \\u0938\\u093f\\u092e\\u0947\\u0902\\u091f\\u091a\\u0947 \\u0918\\u0930\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0916\\u0941\\u0932\\u0940 \\u091c\\u093e\\u0917\\u093e\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"Load Bearing\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null},{\"varnana_name\":\"\\u0906\\u0930.\\u0938\\u0940.\\u0938\\u0940. \\u092c\\u093e\\u0902\\u0927\\u0915\\u093e\\u092e - \\u0935\\u093e\\u0928\\u093f\\u091c\\u0915\",\"property_name\":null,\"yercon\":null,\"conyerage\":null,\"floor\":null,\"ch_fu\":null,\"ch_me\":null,\"total\":null}]', 'rani', 'ram', 'raju', 'ramesh', 'null', 'null', '258963741852', 'null', 'null', 'Yes', 'Yes', 2, 'active', '2022-01-27 00:15:11', '2022-01-27 00:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `varnans`
--

CREATE TABLE `varnans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varnans`
--

INSERT INTO `varnans` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'झोपडीचे घर किंवा मातीचे घर', 'active', '2021-11-27 04:05:41', '2021-12-06 05:17:29'),
(2, 'दगड , वीट मातीचे घर', 'active', '2021-11-27 04:07:27', '2021-11-27 04:07:27'),
(3, 'दगड ,वीट सिमेंटचे घर', 'active', '2021-11-27 04:07:45', '2021-11-27 04:07:45'),
(4, 'आर.सी.सी. बांधकाम', 'active', '2021-11-27 04:08:00', '2021-11-27 04:08:00'),
(5, 'खुली जागा', 'active', '2021-11-27 04:08:13', '2021-11-27 04:17:02'),
(6, 'निवासी', 'inactive', '2021-12-08 01:29:14', '2021-12-08 01:29:14'),
(7, 'वाणिजक', 'inactive', NULL, NULL),
(8, 'औधोगिक', 'inactive', NULL, NULL),
(9, 'Load Bearing', 'active', '2022-01-18 08:48:17', '2022-01-21 23:49:03'),
(10, 'testing demo', 'inactive', '2022-01-21 23:48:22', '2022-01-26 06:54:15'),
(11, 'आर.सी.सी. बांधकाम - वानिजक', 'active', '2022-01-26 08:10:26', '2022-01-26 08:10:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_details`
--
ALTER TABLE `additional_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area_masters`
--
ALTER TABLE `area_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bharanks`
--
ALTER TABLE `bharanks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ghasaras`
--
ALTER TABLE `ghasaras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `readyreknals`
--
ALTER TABLE `readyreknals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_details`
--
ALTER TABLE `survey_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_infos`
--
ALTER TABLE `survey_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varnans`
--
ALTER TABLE `varnans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_details`
--
ALTER TABLE `additional_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `area_masters`
--
ALTER TABLE `area_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `bharanks`
--
ALTER TABLE `bharanks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ghasaras`
--
ALTER TABLE `ghasaras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `readyreknals`
--
ALTER TABLE `readyreknals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `survey_details`
--
ALTER TABLE `survey_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `survey_infos`
--
ALTER TABLE `survey_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `varnans`
--
ALTER TABLE `varnans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
