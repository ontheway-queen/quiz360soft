-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 08:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `report_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternate_users`
--

CREATE TABLE `alternate_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `alternate_user_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternate_users`
--

INSERT INTO `alternate_users` (`id`, `user_id`, `alternate_user_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 36, 19, 1, NULL, NULL),
(7, 38, 16, 1, NULL, NULL),
(8, 39, 16, 1, NULL, NULL),
(9, 40, 16, 1, NULL, NULL),
(10, 41, 1, 1, NULL, NULL),
(11, 42, 1, 1, NULL, NULL),
(12, 43, 1, 1, NULL, NULL),
(13, 44, 1, 1, NULL, NULL),
(14, 45, 1, 1, NULL, NULL),
(15, 46, 1, 1, NULL, NULL),
(16, 47, 1, 1, NULL, NULL),
(17, 48, 1, 1, NULL, NULL),
(18, 49, 1, 1, NULL, NULL),
(19, 50, 1, 1, NULL, NULL),
(20, 51, 1, 1, NULL, NULL),
(21, 52, 1, 1, NULL, NULL),
(22, 53, 1, 1, NULL, NULL),
(23, 54, 1, 1, NULL, NULL),
(24, 55, 1, 1, NULL, NULL),
(25, 56, 1, 1, NULL, NULL),
(26, 57, 1, 1, NULL, NULL),
(27, 58, 1, 1, NULL, NULL),
(28, 59, 1, 1, NULL, NULL),
(32, 60, 1, 1, NULL, NULL),
(33, 37, 1, 1, NULL, NULL),
(34, 37, 16, 1, NULL, NULL),
(35, 23, 24, 1, NULL, NULL),
(44, 61, 16, 1, NULL, NULL),
(46, 62, 61, 1, NULL, NULL),
(48, 63, 62, 1, NULL, NULL),
(49, 64, 61, 1, NULL, NULL),
(50, 65, 61, 1, NULL, NULL),
(51, 66, 61, 1, NULL, NULL),
(52, 67, 61, 1, NULL, NULL),
(53, 68, 60, 1, NULL, NULL),
(54, 68, 61, 1, NULL, NULL),
(55, 68, 62, 1, NULL, NULL),
(56, 69, 68, 1, NULL, NULL),
(60, 71, 70, 1, NULL, NULL),
(61, 70, 69, 1, NULL, NULL),
(62, 70, 70, 1, NULL, NULL),
(63, 72, 69, 1, NULL, NULL),
(64, 73, 72, 1, NULL, NULL),
(65, 74, 69, 1, NULL, NULL),
(66, 75, 74, 1, NULL, NULL),
(67, 76, 71, 1, NULL, NULL),
(68, 76, 72, 1, NULL, NULL),
(69, 77, 61, 1, NULL, NULL),
(70, 78, 16, 1, NULL, NULL),
(71, 79, 16, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `annual_performance_agreement`
--

CREATE TABLE `annual_performance_agreement` (
  `financial_year` varchar(250) DEFAULT NULL,
  `period` varchar(250) DEFAULT NULL,
  `sector` text NOT NULL,
  `subject` varchar(250) NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `achievements` varchar(250) DEFAULT NULL,
  `problem_challenge` text DEFAULT NULL,
  `futurte_plan` text DEFAULT NULL,
  `main_achievements` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `status` varchar(3) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annual_performance_agreement`
--

INSERT INTO `annual_performance_agreement` (`financial_year`, `period`, `sector`, `subject`, `recipient`, `achievements`, `problem_challenge`, `futurte_plan`, `main_achievements`, `id`, `status`, `created_at`, `updated_at`) VALUES
(NULL, 'period', 'sector', 'subject', 'recipient', NULL, NULL, NULL, 'gyfrdvtgy', 1, '1', '2021-12-14 05:39:26', '2021-12-14 05:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `annual_performance_agreement_quarterly`
--

CREATE TABLE `annual_performance_agreement_quarterly` (
  `id` int(11) NOT NULL,
  `activities` longtext DEFAULT NULL,
  `performance_index` longtext DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `performance_index_values` longtext DEFAULT NULL,
  `annual_target` longtext DEFAULT NULL,
  `acquisition1` longtext DEFAULT NULL,
  `acquisition2` longtext DEFAULT NULL,
  `acquisition3` longtext DEFAULT NULL,
  `acquisition4` text DEFAULT NULL,
  `total_sum_value` text DEFAULT NULL,
  `branch_responsible_implementation` longtext DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `years` longtext DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 1,
  `rows` int(11) DEFAULT NULL,
  `row_ids` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annual_performance_agreement_quarterly`
--

INSERT INTO `annual_performance_agreement_quarterly` (`id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `acquisition4`, `total_sum_value`, `branch_responsible_implementation`, `unique_form_id`, `status`, `years`, `form_id`, `rows`, `row_ids`, `created_at`, `updated_at`) VALUES
(2048, '[১.১] হাউস বিল্ডিং ফাইনান্স কর্পোরেশন আইন, ২০২০ (সংশোধন) প্রণয়ন', '[১.১.১] গেজেটে প্রকাশিত', 'তারিখ', '2', '৩০-০৪-২০২২', '44454545', '54', '54', '54', '44454707.00', '3', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2049, '[১.২] পল্লী সঞ্চয় ব্যাংক কর্মচারি চাকরি প্রবিধানমালা প্রণয়ন', '\"[১.২.১] প্রশাসনিক উন্নয়ন সংক্রান্ত সচিব কমিটিতে প্রেরিত\"', 'তারিখ', '2', '৩১-০৫-২০২২', '650', '950', '750', '555', '2905.00', '3', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2050, '[১.৩] কর্মসংস্থান ব্যাংক কর্মচারি চাকরি প্রবিধানমালা প্রণয়ন', '[১.৩.১] ভেটিং এর জন্য লেজিসলেটিভ ও সংসদ বিষয়ক বিভাগে প্রেরিত', 'তারিখ', '2', '৩০-০৫-২০২', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2051, '[১.৪] ফাইন্যান্স কোম্পানি আইন প্রণয়ন', '[১.৪.১] ভেটিং এর জন্য লেজিসলেটিভ ও সংসদ বিষয়ক বিভাগে প্রেরিত', 'তারিখ', '2', '৩০-০৫-২০২২', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2052, '[১.৫] এ্যাসেট ম্যানেজমেন্ট কর্পোরেশন আইন প্রণয়ন', '[১.৫.১] মন্ত্রিসভায় নীতিগত অনুমোদনের জন্য প্রেরিত', 'তারিখ', '2', '৩০-০৪-২০২২', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2053, '[১.৬] ব্যাংক কোম্পানি আইন সংশোধন', '[১.৬.১] ভেটিং এর জন্য লেজিসলেটিভ ও সংসদ বিষয়ক বিভাগে প্রেরিত', 'তারিখ', '2', '৩০-০৪-২০২২', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2054, '[১.৭] ব্যাংক আমানত বীমা (সংশোধন) আইন, ২০২১ প্রণয়ন', '[১.৭.১] ভেটিং এর জন্য লেজিসলেটিভ ও সংসদ বিষয়ক বিভাগে প্রেরিত', 'তারিখ', '2', '৩১-০৫-২০২২', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2055, '[১.৮] বীমা বিষয়ক বিধিমালা/ প্রবিধানমালা প্রণয়ন', '[১.৮.১] ভেটিং এর জন্য লেজিসলেটিভ ও সংসদ বিষয়ক বিভাগে প্রেরিত', 'সংখ্যা', '2', '2', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2056, '[১.৯] বিভাগের কর্মচারীদের সক্ষমতার উন্নয়নে সমসাময়িক বিষয়ে লার্নিং সেশন আয়োজন', '[১.৯.১] লার্নিং সেশন আয়োজিত', 'সংখ্যা', '1', '6', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2057, '[২.১] রাষ্ট্র মালিকানাধীন বাণিজ্যিক ব্যাংকসমূহের শ্রেণিকৃত ঋণের পরিমাণ হ্রাসকরণ', '[২.১.১] শ্রেণিকৃত ঋণের পরিমাণ', 'হাজার কোটি টাকা', '2', '40.50', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2058, '[২.২] ব্যাংকের মাধ্যমে ঋণ বিতরণ ও আদায় কার্যক্রম তত্ত্বাবধান', '[২.২.১] বিতরণকৃত কৃষিঋণ', 'হাজার কোটি টাকা', '2', '24', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2059, '[২.৩] নারী উদ্যোক্তাদের মধ্যে এসএমই ঋণ বিতরণ কার্যক্রম তত্ত্বাবধান', '[২.৩.১] বিতরণকৃত ঋণের পরিমাণ', 'কোটি টাকা', '2', '745', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2060, '[২.৪] এজেন্ট ব্যাংকিং কার্যক্রম সম্প্রসারণ', '[২.৪.১] নতুন গ্রাহক সংখ্যা', 'সংখ্যা (লক্ষ)', '1', '23.50', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2061, '[২.৫] ব্যাংকের মাধ্যমে সামাজিক নিরাপত্তার সুবিধা প্রদান', '[২.৫.১] সুবিধা গ্রহণকারীর সংখ্যা', 'সংখ্যা (লক্ষ)', '1', '25.10', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2062, '[২.৬] বিভাগ কর্তৃক ব্যাংকিং কার্যক্রম তত্ত্বাবধান ও গৃহীত সিদ্ধান্ত বাস্তবায়ন', '[২.৬.১] শ্রেণিকৃত ঋণের হার হ্রাসকরণের উদ্দেশ্যে বিভাগে আয়োজিত সভার সংখ্যা', 'সংখ্যা', '2', '4', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2063, '[৩.১] দেশব্যাপী ফাইন্যান্সিয়াল লিটারেসি ও বিনিয়োগকারীগণের প্রশিক্ষণ প্রদান', '[৩.১.১] কার্যক্রমে অংশগ্রহণকারী', 'সংখ্যা', '3', '7000', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2064, '[৩.২] মূলধন উত্তোলনের লক্ষ্যে আইপিও/ আরপিও/রাইট/ ডেট সিকিউরিটিজ ইস্যুকরণ', '[৩.২.১] আইপিও/ আরপিও/ রাইট/ডেট সিকিউরিটিজ ইস্যুকৃত', 'সংখ্যা', '2', '20', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2065, '[৩.৩] CMDP-III প্রকল্পের আওতায় BSEC অটোমেশন বাস্তবায়ন', '[৩.৩.১] বাস্তবায়নের হার', '%', '2', '80', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2066, '[৩.৪] পোস্ট গ্র্যাজুয়েট ডিপ্লোমা ইন ক্যাপিটাল মার্কেট বিষয়ক প্রশিক্ষণ', '[৩.৪.১] অংশগ্রহণকারী উপকারভোগী', 'সংখ্যা', '2', '30', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2067, '[৩.৫] সার্টিফিকেট কোর্স অন ক্যাপিটাল মার্কেট', '[৩.৫.১] আয়োজিত প্রোগ্রাম', 'সংখ্যা', '2', '22', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2068, '[৩.৬] বিভাগ কর্তৃক পুঁজিবাজার কার্যক্রম তত্ত্বাবধান ও গৃহীত সিদ্ধান্ত বাস্তবায়ন', '[৩.৬.১] পুঁজিবাজারের বিনিয়োগ বৃদ্ধির উদ্দেশ্যে বিভাগে আয়োজিত সভার সংখ্যা', 'সংখ্যা', '2', '4', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2069, '[৪.১] \'বঙ্গবন্ধু শিক্ষা বীমা\' বাস্তবায়ন', '[৪.১.১] ‘বঙ্গবন্ধু শিক্ষা বীমা’ নতুন গ্রাহক সংখ্যা', 'সংখ্যা (হাজার)', '3', '50', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2070, '[৪.২] \'বঙ্গবন্ধু সুরক্ষা বীমা\' বাস্তবায়ন', '[৪.২.১] \'বঙ্গবন্ধু সুরক্ষা বীমা\' নতুন গ্রাহক সংখ্যা', 'সংখ্যা (হাজার)', '2', '2.5', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2071, '[৪.৩] বীমা বিষয়ে প্রশিক্ষণ প্রদান', '[৪.৩.১] প্রশিক্ষিত জনবল', 'সংখ্যা', '2', '800', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2072, '[৪.৪] বীমা বিষয়ে জনসচেতনতা বৃদ্ধি', '[৪.৪.১] আয়োজিত ওয়ার্কশপ/সেমিনার', 'সংখ্যা', '1', '8', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2073, '[৪.৫] বীমা দাবী নিষ্পত্তির হার বৃদ্ধি', '[৪.৫.১] নিষ্পত্তিকৃত দাবির হার', '%', '1', '70.5', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2074, '[৪.৬] বিভাগ কর্তৃক বীমা কার্যক্রম তত্ত্বাবধান ও গৃহীত সিদ্ধান্ত বাস্তবায়ন', '[৪.৬.১] বীমা দাবী নিস্পত্তির হার বৃদ্ধির উদ্দেশ্যে বিভাগে আয়োজিত সভার সংখ্যা', 'সংখ্যা', '2', '4', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2075, '[৫.১] ক্ষুদ্রঋণ বিতরণ ও আদায় কার্যক্রম তত্ত্বাবধান', '[৫.১.১] বিতরণকৃত ক্ষুদ্রঋণ', 'হাজার কোটি টা', '3', '170', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2076, '[৫.২] এমএফআই সুবিধাভোগীদের সংখ্যা বৃদ্ধি', '[৫.২.১] সুবিধাভোগীর সংখ্যা', 'সংখ্যা (লক্ষ) [ক্রমপুঞ্জিভুত]', '2', '335', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2077, '[৫.৩] নারীদের মধ্যে ক্ষুদ্রঋণ বিতরণ কার্যক্রম তত্ত্বাবধান', '[৫.৩.১] ক্ষুদ্রঋণ গ্রহণকারী নারীর সংখ্যা', 'সংখ্যা (লক্ষ) [ক্রমপুঞ্জিভুত]', '2', '240', NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(2078, 'কৌশলগত উদ্দেশ্য মোট= (৩৯টি সূচক)', NULL, NULL, '70', NULL, NULL, NULL, NULL, NULL, '0.00', 'Select Division', 'Form-8454504740', 1, '২০২৩-২৪', 1, NULL, NULL, '2022-02-15 04:20:24', '2022-02-15 04:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `annual_performance_agreement_quarterly_sub_rows`
--

CREATE TABLE `annual_performance_agreement_quarterly_sub_rows` (
  `id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` varchar(250) DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` varchar(250) DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `acquisition4` text DEFAULT NULL,
  `total_sum_value` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 1,
  `years` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annual_performance_agreement_quarterly_sub_rows`
--

INSERT INTO `annual_performance_agreement_quarterly_sub_rows` (`id`, `row_id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `acquisition4`, `total_sum_value`, `branch_responsible_implementation`, `unique_form_id`, `status`, `form_id`, `years`, `created_at`, `updated_at`) VALUES
(529, 2055, NULL, '[১.৮.২] গেজেটে প্রকাশিত', NULL, '1', '2', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(530, 2058, NULL, '[২.২.২] বিতরণকৃত বঙ্গবন্ধু যুবঋণ', NULL, '2', '25', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(531, 2058, NULL, '[২.২.৩] বিতরণকৃত এসএমই ঋণ', NULL, '2', '165', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(532, 2059, NULL, '[২.৩.২] নতুন উদ্যোক্তার সংখ্যা', NULL, '1', '11.50', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(533, 2062, NULL, '[২.৬.২] সভায় গৃহীত সিদ্ধান্ত বাস্তবায়ন', NULL, '1', '$-5000445]0.2f%', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(534, 2068, NULL, '[৩.৬.২] সভায় গৃহীত সিদ্ধান্ত বাস্তবায়ন', NULL, '1', '100', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(535, 2074, NULL, '[৪.৬.২] সভায় গৃহীত সিদ্ধান্ত বাস্তবায়ন', NULL, '1', '100', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24'),
(536, 2075, NULL, '[৫.১.২] আদায়কৃত ক্ষুদ্রঋণ', NULL, '3', '152.50', NULL, NULL, NULL, NULL, NULL, 'Select Division', 'Form-8454504740', NULL, 1, '২০২৩-২৪', '2022-02-15 04:20:24', '2022-02-15 04:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `annual_performance_agreenment`
--

CREATE TABLE `annual_performance_agreenment` (
  `id` int(11) NOT NULL,
  `budget` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `annual_performance_agreenment_apa`
--

CREATE TABLE `annual_performance_agreenment_apa` (
  `id` int(11) NOT NULL,
  `apa` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 13,
  `unique_form_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `annual_performance_agreenment_table`
--

CREATE TABLE `annual_performance_agreenment_table` (
  `id` int(11) NOT NULL,
  `serial` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `sender` text DEFAULT NULL,
  `report_monthly` text DEFAULT NULL,
  `report_quarterly` text DEFAULT NULL,
  `report_half_yearly` text DEFAULT NULL,
  `report_yearly` text DEFAULT NULL,
  `report_instant` text DEFAULT NULL,
  `appnedix` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 13,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `annual_performance_agreenment_table`
--

INSERT INTO `annual_performance_agreenment_table` (`id`, `serial`, `subject`, `sender`, `report_monthly`, `report_quarterly`, `report_half_yearly`, `report_yearly`, `report_instant`, `appnedix`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(154, '1.', '১। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(155, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'bcbbরেগুলেটরি অথরিটি', 'hbcdhbdchcbdhb', 'hbcdhbcbh', 'bhcdbcdhbcdhb', 'hbchdbdchbcd', NULL, '8', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(156, '3.', '৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(157, '4.', '৪। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(158, '5.', '৫। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(159, '6.', '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থাসমূহের ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(161, '1.', '১। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(162, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'রেগুলেটরি অথরিটি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(163, '3.', '৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(164, '4.', '৪। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(165, '5.', '৫। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(166, '6.', '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থাসমূহের ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(168, '1.', '১। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(169, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'রেগুলেটরি অথরিটি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(170, '3.', '৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(171, '4.', '৪। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(172, '5.', '৫। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(173, '6.', '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থাসমূহের ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(175, '1.', '১। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(176, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'রেগুলেটরি অথরিটি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(177, '3.', '৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, NULL, NULL, 'বাৎসরিক', NULL, '8', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(178, '4.', '৪। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(179, '5.', '৫। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(180, '6.', '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থাসমূহের ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ।', 'দপ্তর/সংস্থা', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', 'বাৎসরিক', NULL, '9', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_eight_mis`
--

CREATE TABLE `appendix_eight_mis` (
  `id` int(11) NOT NULL,
  `budget_sub` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 31,
  `created_at` text DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_eight_mis`
--

INSERT INTO `appendix_eight_mis` (`id`, `budget_sub`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, '১। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ। (বাৎসরিক)', 'form_105089730', 1, 31, NULL, NULL),
(2, '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ। (বাৎসরিক)', 'form_105089730', 1, 31, NULL, NULL),
(3, '৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ। (বাৎসরিক)', 'form_105089730', 1, 31, NULL, NULL),
(4, '১। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ। (বাৎসরিক)', 'form_01055552', 1, 31, NULL, NULL),
(5, '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ। (বাৎসরিক)', 'form_01055552', 1, 31, NULL, NULL),
(6, '৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থা সংশ্লিষ্ট ২০২০-২১ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর প্রণয়ন সংক্রান্ত প্রতিবেদন প্রেরণ। (বাৎসরিক)', 'form_01055552', 1, 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appendix_five_mis`
--

CREATE TABLE `appendix_five_mis` (
  `id` int(11) NOT NULL,
  `budget_sub8` text DEFAULT NULL,
  `budget_sub2009` text DEFAULT NULL,
  `budget_sub9` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 22,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_five_mis`
--

INSERT INTO `appendix_five_mis` (`id`, `budget_sub8`, `budget_sub2009`, `budget_sub9`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(25, 'hnacmka', NULL, NULL, 'Form-2180464952', 1, 22, '2022-01-31 11:29:00', '2022-01-31 11:29:00'),
(26, NULL, NULL, 'amader nogori te', 'Form-2180464952', 1, 22, '2022-01-31 11:29:00', '2022-01-31 11:29:00'),
(27, NULL, 'rod eshe geche', NULL, 'Form-2180464952', 1, 22, '2022-01-31 11:29:01', '2022-01-31 11:29:01'),
(28, '৮. আতর্ টক প্রতিষ্ঠান তবভাগ, অর্ ট মন্ত্রর্ালয়', NULL, NULL, 'Form-843568151', 1, 22, '2022-02-02 08:51:14', '2022-02-02 08:51:14'),
(29, NULL, NULL, '৯। বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 'Form-843568151', 1, 22, '2022-02-02 08:51:14', '2022-02-02 08:51:14'),
(30, NULL, '২০০৯-১০ হতে ২০১৯-২০ অর্থবছরে বাজেট বক্তৃতায় ঘোষিত গুরুত্বপূর্ণ কার্যক্রমসমূহ বাস্তবায়ন অগ্রগতির  ১ম প্রান্তিক (জুলাই-সেপ্টেম্বর ২০১৯) প্রতিবেদন', NULL, 'Form-843568151', 1, 22, '2022-02-02 08:51:14', '2022-02-02 08:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_five_table`
--

CREATE TABLE `appendix_five_table` (
  `id` int(11) NOT NULL,
  `fiscal_year` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `improvement` text DEFAULT NULL,
  `implemented` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 23,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_five_table`
--

INSERT INTO `appendix_five_table` (`id`, `fiscal_year`, `activity`, `improvement`, `implemented`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(9, 'hncdjn', 'jncfjncdjn', 'ncahcdndm', 'mkmk', 'Form-2180464952', 1, 22, '2022-01-31 11:29:01', '2022-01-31 11:29:01'),
(10, 'Aita shudu armaan erey valo e to', 'ok', 'cheeaso i am done', NULL, 'Form-843568151', 1, 22, '2022-02-02 08:51:14', '2022-02-02 08:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_four_mis`
--

CREATE TABLE `appendix_four_mis` (
  `id` int(11) NOT NULL,
  `budget` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 21,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_four_mis`
--

INSERT INTO `appendix_four_mis` (`id`, `budget`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(25, NULL, '27_12_12677', 1, 21, '2022-01-09 09:27:12', '2022-01-09 09:27:12'),
(26, NULL, '27_12_12677', 1, 21, '2022-01-09 09:27:12', '2022-01-09 09:27:12'),
(27, '৭। আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', '43_36_85991', 1, 21, '2022-01-09 09:43:36', '2022-01-09 09:43:36'),
(28, '৮। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', '43_36_85991', 1, 21, '2022-01-09 09:43:36', '2022-01-09 09:43:36'),
(29, '৭। আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 'Form-2898987315', 1, 21, '2022-02-01 08:10:34', '2022-02-01 08:10:34'),
(30, '৮। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 'Form-2898987315', 1, 21, '2022-02-01 08:10:34', '2022-02-01 08:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_four_table`
--

CREATE TABLE `appendix_four_table` (
  `id` int(11) NOT NULL,
  `branch` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 21,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_four_table`
--

INSERT INTO `appendix_four_table` (`id`, `branch`, `budget`, `target`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_fourth_quarter`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(4, 'আর্থিক প্রতিষ্ঠান বিভাগ', NULL, 'লক্ষ্যমাত্রা', 'aita tmn kisu e na', NULL, NULL, NULL, NULL, 'Form-2898987315', 1, 21, '2022-02-01 08:10:34', '2022-02-01 08:10:34'),
(5, NULL, NULL, 'প্রকৃত ব্যয়', NULL, NULL, NULL, NULL, NULL, 'Form-2898987315', 1, 21, '2022-02-01 08:10:34', '2022-02-01 08:10:34'),
(6, NULL, NULL, 'শতকরা হার', NULL, NULL, NULL, NULL, NULL, 'Form-2898987315', 1, 21, '2022-02-01 08:10:34', '2022-02-01 08:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_nine_mis`
--

CREATE TABLE `appendix_nine_mis` (
  `id` int(11) NOT NULL,
  `budget_sub` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `created_at` text DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_nine_mis`
--

INSERT INTO `appendix_nine_mis` (`id`, `budget_sub`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, '৪। আর্থিক প্রতিষ্ঠান বিভাগের শাখা/অধিশাখা সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 'form_085516429', 1, 32, NULL, NULL),
(2, '৫। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন রেগুলেটরি অথরিটি সংশ্লিষ্ট ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 'form_085516429', 1, 32, NULL, NULL),
(3, '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর-সংস্থাসমূহের ২০১৯-২০ অর্থবছরের বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) এর অর্জন পরিবীক্ষণ সংক্রান্ত মূল্যায়ন প্রতিবেদন প্রেরণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 'form_085516429', 1, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appendix_one_mis`
--

CREATE TABLE `appendix_one_mis` (
  `id` int(11) NOT NULL,
  `appendix_one_subject` longtext DEFAULT NULL,
  `appendix_two_subject` text DEFAULT NULL,
  `appendix_one_ka` text DEFAULT NULL,
  `appendix_one_kha` text DEFAULT NULL,
  `unique_form_id` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 18,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_one_mis`
--

INSERT INTO `appendix_one_mis` (`id`, `appendix_one_subject`, `appendix_two_subject`, `appendix_one_ka`, `appendix_one_kha`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(391, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', NULL, NULL, NULL, 'Form-5543216353', 0, 18, '2022-01-30 06:13:11', '2022-01-30 06:13:11'),
(392, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', NULL, NULL, 'Form-5543216353', 0, 18, '2022-01-30 06:13:11', '2022-01-30 06:13:11'),
(393, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 'সংশোধিত ২০১৯-২০, প্রস্তাবিত ২০২০-২১ এবং প্রক্ষেপন ২০২১-২২ ও ২০২২-২৩', NULL, 'Form-5543216353', 0, 18, '2022-01-30 06:13:11', '2022-01-30 06:13:11'),
(394, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 'Armaan', 'সংশোধিত ২০১৯-২০, প্রস্তাবিত ২০২০-২১ এবং প্রক্ষেপন ২০২১-২২ ও ২০২২-২৩', 'সংশোধিত ২০১৯-২০, প্রস্তাবিত ২০২০-২১ এবং প্রক্ষেপন ২০২১-২২ ও ২০২২-২৩', 'Form-5543216353', 1, 18, '2022-01-30 06:13:11', '2022-01-30 06:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_one_table_ka`
--

CREATE TABLE `appendix_one_table_ka` (
  `id` int(11) NOT NULL,
  `ministry` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `revised` text DEFAULT NULL,
  `proposed_budget` text DEFAULT NULL,
  `projection_1` text DEFAULT NULL,
  `projection_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 18,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_one_table_ka`
--

INSERT INTO `appendix_one_table_ka` (`id`, `ministry`, `budget`, `revised`, `proposed_budget`, `projection_1`, `projection_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(201, 'Arncdnj', 'njnvfjmjvjfm', 'mkkvmk', 'mkmvf', NULL, NULL, 'Form-5543216353', 1, 18, '2022-01-30 06:13:11', '2022-01-30 06:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_one_table_kha`
--

CREATE TABLE `appendix_one_table_kha` (
  `id` int(11) NOT NULL,
  `ministryss` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `revised` text DEFAULT NULL,
  `revenue` text DEFAULT NULL,
  `gob_1` text DEFAULT NULL,
  `gob_2` text DEFAULT NULL,
  `rpa_1` text DEFAULT NULL,
  `dpa_1` text DEFAULT NULL,
  `total` text DEFAULT NULL,
  `projection_1` text DEFAULT NULL,
  `projection_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 18,
  `capital` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_one_table_kha`
--

INSERT INTO `appendix_one_table_kha` (`id`, `ministryss`, `budget`, `revised`, `revenue`, `gob_1`, `gob_2`, `rpa_1`, `dpa_1`, `total`, `projection_1`, `projection_2`, `unique_form_id`, `status`, `form_id`, `capital`, `created_at`, `updated_at`) VALUES
(33, NULL, NULL, NULL, 'রাজস্ব', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-5543216353', 1, 18, NULL, '2022-01-30 06:13:11', '2022-01-30 06:13:11'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-5543216353', 1, 18, NULL, '2022-01-30 06:13:11', '2022-01-30 06:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_points`
--

CREATE TABLE `appendix_seven_points` (
  `id` int(11) NOT NULL,
  `point_1_0` text DEFAULT NULL,
  `point_1_1` text DEFAULT NULL,
  `point_1_1_line` text DEFAULT NULL,
  `point_1_2` text DEFAULT NULL,
  `point_1_2_lines` text DEFAULT NULL,
  `heading_financial_1` text DEFAULT NULL,
  `heading_financial_2` text DEFAULT NULL,
  `point_2_0` text DEFAULT NULL,
  `point_3_0` text DEFAULT NULL,
  `point_3_1` text DEFAULT NULL,
  `point_3_1_1_lines` text DEFAULT NULL,
  `point_3_1_2_lines` text DEFAULT NULL,
  `point_3_1_3_lines` text DEFAULT NULL,
  `point_3_1_4_lines` text DEFAULT NULL,
  `point_3_1_5_lines` text DEFAULT NULL,
  `point_3_1_1` text DEFAULT NULL,
  `point_3_1_2` text DEFAULT NULL,
  `point_3_1_3` text DEFAULT NULL,
  `point_3_1_4` text DEFAULT NULL,
  `point_3_1_5` text DEFAULT NULL,
  `point_3_2` text DEFAULT NULL,
  `point_4_1` text DEFAULT NULL,
  `point_4_2` text DEFAULT NULL,
  `point_4_2_1` text DEFAULT NULL,
  `point_4_2_2` text DEFAULT NULL,
  `point_5_0` text DEFAULT NULL,
  `point_6_0` text DEFAULT NULL,
  `point_6_1` text DEFAULT NULL,
  `point_6_1_1` text DEFAULT NULL,
  `point_6_1_2` text DEFAULT NULL,
  `point_6_1_3` text DEFAULT NULL,
  `point_6_2` text DEFAULT NULL,
  `point_6_2_1` text DEFAULT NULL,
  `point_6_2_2` text DEFAULT NULL,
  `point_6_2_3` text DEFAULT NULL,
  `point_6_3` text DEFAULT NULL,
  `point_6_3_1` text DEFAULT NULL,
  `point_6_3_2` text DEFAULT NULL,
  `point_6_3_3` text DEFAULT NULL,
  `point_6_4` text DEFAULT NULL,
  `point_6_4_1` text DEFAULT NULL,
  `point_6_4_2` text DEFAULT NULL,
  `point_6_4_3` text DEFAULT NULL,
  `point_6_5` text DEFAULT NULL,
  `point_6_5_1` text DEFAULT NULL,
  `point_6_5_2` text DEFAULT NULL,
  `point_6_5_3` text DEFAULT NULL,
  `point_6_6` text DEFAULT NULL,
  `point_6_6_1` text DEFAULT NULL,
  `point_6_6_2` text DEFAULT NULL,
  `point_6_6_3` text DEFAULT NULL,
  `point_6_7` text DEFAULT NULL,
  `point_6_7_1` text DEFAULT NULL,
  `point_6_7_2` text DEFAULT NULL,
  `point_6_7_3` text DEFAULT NULL,
  `budget_sub` text DEFAULT NULL,
  `amount` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_points`
--

INSERT INTO `appendix_seven_points` (`id`, `point_1_0`, `point_1_1`, `point_1_1_line`, `point_1_2`, `point_1_2_lines`, `heading_financial_1`, `heading_financial_2`, `point_2_0`, `point_3_0`, `point_3_1`, `point_3_1_1_lines`, `point_3_1_2_lines`, `point_3_1_3_lines`, `point_3_1_4_lines`, `point_3_1_5_lines`, `point_3_1_1`, `point_3_1_2`, `point_3_1_3`, `point_3_1_4`, `point_3_1_5`, `point_3_2`, `point_4_1`, `point_4_2`, `point_4_2_1`, `point_4_2_2`, `point_5_0`, `point_6_0`, `point_6_1`, `point_6_1_1`, `point_6_1_2`, `point_6_1_3`, `point_6_2`, `point_6_2_1`, `point_6_2_2`, `point_6_2_3`, `point_6_3`, `point_6_3_1`, `point_6_3_2`, `point_6_3_3`, `point_6_4`, `point_6_4_1`, `point_6_4_2`, `point_6_4_3`, `point_6_5`, `point_6_5_1`, `point_6_5_2`, `point_6_5_3`, `point_6_6`, `point_6_6_1`, `point_6_6_2`, `point_6_6_3`, `point_6_7`, `point_6_7_1`, `point_6_7_2`, `point_6_7_3`, `budget_sub`, `amount`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1384, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1385, NULL, '1.20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1387, NULL, NULL, NULL, 'mccak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1388, NULL, NULL, NULL, NULL, 'kmckdkkmkmk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1389, NULL, NULL, NULL, NULL, 'k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1390, NULL, NULL, NULL, NULL, 'kmkcmkdmkdm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1391, NULL, NULL, NULL, NULL, 'kmkcmdkckm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1392, NULL, NULL, NULL, NULL, 'kmckcmkmckmck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1393, NULL, NULL, NULL, NULL, 'mkckdcmkdcmk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1394, NULL, NULL, NULL, NULL, 'mkcmkdkcmkdmkk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1395, NULL, NULL, NULL, NULL, 'kmmkdcmkdcmkmk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1396, NULL, NULL, NULL, NULL, NULL, 'kaam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1397, NULL, NULL, NULL, NULL, NULL, NULL, 'মধ্যমেয়াদি ব্যয়', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kmmkcdmkcck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.০	দারিদ্র্য নিরসন ও নারী উন্নয়ন সংক্রান্ত তথ্য', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.১	দারিদ্র্য নিরসন ও নারী উন্নয়নের উপর মধ্যমেয়াদি কৌশলগত উদ্দেশ্যসমূহের প্রভাব', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.১.১ প্রাতিষ্ঠানিক কাঠামো শক্তিশালীকরণ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'দারিদ্র্য নিরসনের উপর প্রভাব: দেশের ব্যাংক ও নন ব্যাংক প্রতিষ্ঠান এবং এ বিভাগের আওতাধীন দপ্তর/সংস্থা সম্পর্কিত আইন, বিধি ও নীতিমালা প্রণয়ন ও সংশোধন নিশ্চিত হলে দারিদ্র্য নিরসনে সহায়ক হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'নারী উন্নয়নের উপর প্রভাব:  আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা সম্পর্কিত আইন, বিধি ও নীতিমালা প্রণয়নের ফলে নারী উদ্যোক্তারা অধিকতর সুযোগ লাভ করবে, ফলে নারীদের নতুন নতুন কর্মসংস্থানের সুযোগ সৃষ্টি হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'দারিদ্র্য নিরসনের উপর প্রভাব: দেশের ব্যাপক জনগোষ্ঠীকে ব্যাংকিং সেবার আওতায় আনা সম্ভব হবে। ফলে অর্থনৈতিক কর্মকাণ্ডে অধিক সংখ্যক জনগোষ্ঠীর অংশগ্রহণ নিশ্চিত হবে, যা তাদের দারিদ্র্য নিরসনে সহায়ক হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'নারী উন্নয়নের উপর প্রভাব: ব্যাংকিং খাত সম্প্রসারণের ফলে নারী উদ্যোক্তারা অধিকতর ব্যাংকিং সেবার সুযোগ লাভ করবে, ফলে নারীদের নতুন নতুন কর্মসংস্থানের সুযোগ সৃষ্টি হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'দারিদ্র্য নিরসনের উপর প্রভাব: পুঁজিবাজার সুশৃঙ্খল ও শক্তিশালী হলে মূলধন প্রাপ্তি সহজলভ্য হবে এবং দেশে নতুন নতুন শিল্প কারখানা স্থাপিত হবে। উক্ত শিল্প কারখানাসমূহে কর্মসংস্থানের সৃষ্টি হবে, যার ফলশ্রুতিতে দারিদ্র্য নিরসনের গতি ত্বরান্বিত হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'নারী উন্নয়নের উপর প্রভাব: পুঁজি বাজার কার্যকর হলে শিল্পায়নের প্রক্রিয়া ত্বরান্বিত হবে, যার ফলে নারীদের অধিকতর কর্মসংস্থানের সুযোগ সৃষ্টি হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'দারিদ্র্য নিরসনের উপর প্রভাব: বীমাখাতের প্রসারের ফলে অর্থনৈতিক প্রবৃদ্ধি ও কর্মসংস্থানের সুযোগ সৃষ্টির মাধ্যমে দারিদ্র্য বিমোচন সম্ভব হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'নারী উন্নয়নের উপর প্রভাব: বীমা খাতের আওতা প্রসারিত হলে অধিক সংখ্যক নারীর আর্থিক নিরাপত্তা বৃদ্ধি পাবে ও কর্মসংস্থানের সুযোগ সৃষ্টি হবে, যা নারী সমাজের দারিদ্র্য নিরসনে সহায়ক হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'দারিদ্র্য নিরসনের উপর প্রভাব: তৃণমূল পর্যায়ে বিভিন্ন ধরনের উদ্যোক্তা সৃষ্টি ও আর্থিক বিকাশ সাধনে গৃহীত কার্যক্রম ও প্রশিক্ষণ এবং আত্ম-কর্মসংস্থান সৃষ্টির লক্ষ্যে প্রদত্ত ক্ষুদ্রঋণ কার্যক্রমের মাধ্যমে দারিদ্র্য বিমোচন ত্বরান্বিত হবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'নারী উন্নয়নের উপর প্রভাব: বিভিন্ন ধরনের কারিগরি, বৃত্তিমূলক, আয়বর্ধক কার্যক্রম ও প্রশিক্ষণ নারী সমাজের সামাজিক ও আর্থিক উন্নয়নে সহায়তা করবে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.১.২	ব্যাংক ও নন-ব্যাংক আর্থিক প্রতিষ্ঠানসমূহে পেশাদারিত্ব এবং আর্থিক অন্তর্ভুক্তি বৃদ্ধি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.১.৩	পুঁজিবাজারের কার্যকারিতা বৃদ্ধিকরণ:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.১.৪	বীমা খাতে অন্তর্ভুক্তি বৃদ্ধি ও শৃঙ্খলা সুসংহতকরণ:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.১.৫	সুনিয়ন্ত্রিত ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণ ও পরিচালনায় সহায়তা জোরদার:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৩.২	দারিদ্র্য নিরসন ও নারী উন্নয়ন সম্পর্কিত বরাদ্দ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৪.১	অগ্রাধিকার ব্যয়খাত/কর্মসূচিসমূহ (Priority Spending Areas/Programmes)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৪.২	মধ্যমেয়াদি ব্যয় প্রাক্কলন ও প্রক্ষেপণ (২০১9-20 হতে ২০২1-২2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৪.২.১	দপ্তর/সংস্থা/প্রাতিষ্ঠানিক ইউনিটওয়ারী ব্যয়', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৪.২.২	অর্থনৈতিক গ্রুপ কোড অনুযায়ী ব্যয়', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৫.০	মন্ত্রণালয়/বিভাগের প্রধান কর্মকৃতি নির্দেশকসমূহ (Key Performance Indicators)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.০	অধিদপ্তর/সংস্থার সাম্প্রতিক অর্জন, কার্যক্রমসমূহ এবং ফলাফল নির্দেশক ও লক্ষ্যমাত্রা এবং ব্যয় প্রাক্কলন', '৬.০	অধিদপ্তর/সংস্থার সাম্প্রতিক অর্জন, কার্যক্রমসমূহ এবং ফলাফল নির্দেশক ও লক্ষ্যমাত্রা এবং ব্যয় প্রাক্কলন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.১.১	সাম্প্রতিক অর্জন: ব্যাংকিং খাতের মানোন্নয়নকল্পে রাষ্ট্রমালিকানাধীন বাণিজ্যিক ব্যাংকসমূহের জন্য Key Performance Indicator নির্ধারণ, মানব সম্পদ নীতিমালা প্রণয়ন ও অটোমেশন কার্যক্রম গ্রহণ করা হয়েছে। ব্যাংকসমূহে বিরাজমান জনবল সংকট নিরসন, ব্যবস্থাপনার উর্ধ্বতন পর্যায়ে নতুন পদ সৃজন এবং পরিচালনা পর্ষদে অভিজ্ঞ লোক নিয়োগ দেয়া হয়েছে। কৃষিঋণ বিতরণ, এজেন্ট/মোবাইল ব্যাংকিং, স্কুল ব্যাংকিং কার্যক্রমের মাধ্যমে আর্থিক অন্তর্ভুক্তি বৃদ্ধির উদ্যোগ নেয়া হয়েছে। বীমা খাতে অন্তর্ভুক্তি বৃদ্ধি ও শৃঙ্খলা সুসংহত করণের লক্ষ্যে বীমা আইনের আওতায় ২০১7-১8 অর্থবছরে ইতোমধ্যে ১টি বিধিমালা/ প্রবিধানমালা জারি করা হয়েছে। বীমা বিষয়ে ১৫০০ জন কর্মকর্তা/কর্মচারীকে প্রশিক্ষণ প্রদান করা হয়েছে। পুঁজিবাজারের কার্যকারিতা বৃদ্ধিকরণের জন্য 4টি বিধিমালা/প্রবিধানমালা জারি করা হয়েছে। পুঁজিবাজারে 756 জন বিনিয়োগকারীকে প্রশিক্ষণ প্রদান করা হয়েছে, দেশব্যাপি ফাইন্যান্সিয়াল লিটারেসি প্রোগ্রাম চালু করা হয়েছে। সুনিয়ন্ত্রিত ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণ ও পরিচালনার লক্ষ্যে এমএফআই সুবিধাভোগীর সংখ্যা ৩০৫ লক্ষতে উন্নীত করা হয়েছে। এছাড়াও মন্ত্রিপরিষদ বিভাগ কর্তৃক নির্ধারিত আবশ্যিক কৌশলগত উদ্দেশ্যসমূহ ১০০% বাস্তবায়নের প্রচেষ্টা অব্যহত আছে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.১.২	কার্যক্রমসমূহ, ফলাফল নির্দেশক এবং নির্দেশকের লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.১.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.২	বাংলাদেশ ব্যাংক (বিবি)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.২.১	সাম্প্রতিক অর্জন: বর্তমান সরকারের ‘রূপকল্প ২০২১’-এ পর্যায়ক্রমে দারিদ্রের হার ১৫ শতাংশের নীচে অবনমনের প্রত্যয় ব্যক্ত করা হয়েছে। এ লক্ষ্য অর্জনে বাংলাদেশ ব্যাংক স্বল্প মেয়াদি পদক্ষেপ হিসেবে কৃষি এবং ক্ষুদ্র ও মাঝারি শিল্পে অধিক মাত্রায় ঋণ বিতরণের পদক্ষেপ গ্রহণ করেছে যা আগামীতে দীর্ঘমেয়াদি কৌশল প্রণয়নে সহায়ক হবে। বাংলাদেশ ব্যাংক প্রধান কিছু উদ্দেশ্য অর্জনের জন্য অতি সম্প্রতি কৌশলগত পরিকল্পনা প্রণয়ন করেছে। প্রধান অর্জনগুলো হলো: (১) ২০১৭-১৮ সময়কালে বেসরকারি খাতে ঋণের প্রবৃদ্ধি ৯.৭১ শতাংশে দাঁড়িয়েছে; (২) চলতি অর্থবছরের প্রথমার্ধে ঋণ সুদ হার হ্রাসের কারণে সুদ হারের ব্যাপ্তি জুলাই ২০১৭ এর ৪.৬২ শতাংশ থেকে হ্রাস পেয়ে  ডিসেম্বর ২০১৭ শেষে ৪.৪৪ শতাংশে দাঁড়িয়েছে; (৩) ২০১৭-১৮ অর্থবছরের দ্বিতীয়ার্ধের মুদ্রানীতিতে সুদ হারের ব্যবধান ৫ শতাংশের নিচে নামিয়ে আনার লক্ষ্যে জানুয়ারি ২০১৮ শেষে সকল খাতের (ক্রেডিট কার্ড ও ভোক্তাঋণ ছাড়া) ঋণ এবং আমানতের  গড়ভারিত সুদ হারের ব্যবধান ছিল ৪.৩৪ শতাংশ; (৪) ২০১৭-১৮ অর্থবছরে কৃষি ও পল্লী ঋণ বিতরণের লক্ষ্যমাত্রা নির্ধারণ করা হয়েছে ২০,৪০০.০০ কোটি টাকা যা পূর্ববর্তী অর্থবছরের লক্ষ্যমাত্রা ১৭,৫৫০.০০ কোটি টাকার তুলনায় শতকরা ১৬.২৪ ভাগ বেশি; (৫) ২০১৭-১৮ অর্থবছর এর ফেব্রুয়ারি পর্যন্ত তফসিলী ব্যাংকসমূহ কর্তৃক বিতরণকৃত ঋণের পরিমাণ দাঁড়িয়েছে ১৪,৫২০.৪২ কোটি টাকা যা লক্ষ্যমাত্রার শতকরা ৭১.১৮ ভাগ। একই সময়ে কৃষি ও পল্লী ঋণ আদায়ের পরিমাণ দাঁড়িয়েছে ১৩,৫৯৬.৯৯ কোটি টাকা; (৬) ফেব্রুয়ারি ২০১৬ এ বাংলাদেশ ব্যাংক “জিটিএফ” নামে ২০০ মলিয়িন ইউএস ডলারের একটি নতুন র্দীঘময়োদী পুন:র্অথায়ন সুবিধা সৃষ্টি করা হয়; (৭) ২০১৭-১৮ অর্থবছরে ব্যাংক ও আর্থিক প্রতিষ্ঠানগুলো সর্বমোট ৩১৩.২৮ বিলেয়ন টাকা পরবিশ বান্ধব অর্থায়ন করেছে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.২.২	কার্যক্রমসমূহ, ফলাফল নির্দেশক এবং নির্দেশকের লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1430, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.২.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', '৬.২.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', '৬.২.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1433, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৩.১	সাম্প্রতিক অর্জন:  ২০১5-২০১6 অর্থবছর হতে ২০১7-২০১8 অর্থবছর পর্যন্ত বিগত ৩ বছরে পুঁজিবাজারে বিনিয়োগ বৃদ্ধির লক্ষ্যে ২7টি কোম্পানীকে আইপিও (IPO), ১০টি কোম্পানীকে রাইট ইস্যু, 54টি কোম্পানীকে ডিবেঞ্চার ও বন্ড, 18টি কোম্পানীকে প্রিফারেন্স শেয়ার, 324টি প্রাইভেট লিঃ ও 217টি পাবলিক লিঃ কোম্পানীকে মোট 60,814.77 কোটি টাকা মূলধন উত্তোলনের অনুমোদন দেয়া হয়েছে। উক্ত সময়ে পুঁজিবাজার উন্নয়নের লক্ষ্যে 31টি বেমেয়াদি মিউচ্যুয়াল  ফান্ড এবং 7 টি মেয়াদি মিউচ্যুয়াল ফান্ড স্কিমের মাধ্যমে মোট 1,636.32 কোটি টাকার তহবিল গঠন করা হয়েছে। উক্ত মূলধন উত্তোলন ও তহবিল গঠন দেশের শিল্পায়ন, কর্মসংস্থান তথা দেশের সার্বিক অর্থনৈতিক উন্নয়নে সহায়ক ভূমিকা পালন করছে। ভাল সিকিউরিটিজের যোগান বৃদ্ধিতে কার্যকর ভূমিকা রাখার লক্ষ্যে কমিশন ২০১7-২০১8 অর্থবছরে পুঁজিবাজারে আরও ৮টি স্টক ব্রোকার সনদ, ৯টি স্টক ডিলার সনদ, ৩ টি এ্যাসেট ম্যনেজম্যান্ট কোম্পানি সনদ, ২১ টি সিকিউরিটি কাষ্টডিয়ান সনদ, ২১টি ডেট সিকিউরিটি ইস্যুর জন্য ট্রাস্টি নিবন্ধন সনদ, ১০টি ডিপজিটরি অংশগ্রহণকারী নিবন্ধন সনদ, ২টি ট্রাস্টি নিবন্ধন সনদ, ৭টি ফান্ড ম্যানেজারস নিবন্ধন সনদ প্রদান করেছে। কমিশন এর সক্ষমতা বৃদ্ধি এবং এটিকে শক্তিশালীকরণ, স্টক এক্সচেঞ্জসমূহের ডিমিউচ্যুয়ালাইজেশন, পুঁজিবাজারের জন্য বিশেষ ট্রাইবুনাল গঠন, পুঁজিবাজার বিষয়ক বিভিন্ন আইনের সংস্কার ও নতুন বিধি প্রণয়ন এবং আন্তর্জাতিক অঙ্গনে দেশের সুনাম বৃদ্ধি, ইত্যাদি গুরুত্বপুর্ণ ও ব্যাপক সংস্কার সাধন করেছে। জুন, 2018 পর্যন্ত স্টক এক্সচেঞ্জ সমূহে তালিকাভূক্ত কোম্পানীর সংখ্যা 305 এবং তালিকাভূক্ত সিকিউরিটিজের সংখ্যা 572 তে দাঁড়িয়েছে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৩.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1435, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৪	বাংলাদেশ ইন্‌স্টিটিউট অব ক্যাপিটাল মার্কেট (বিআইসিএম)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1436, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৪.১	সাম্প্রতিক অর্জন: পুঁজিবাজারের বিষয়ে তাত্ত্বিক ও প্রায়োগিক জ্ঞানের উৎকর্ষ সাধনের জন্য প্রাতিষ্ঠানিক বিনিয়োগকারী, বাংলাদেশ সিকউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশন (বি.এস.ই.সি.), স্টক এক্সচেঞ্জ এবং মধ্যস্থতাকারী প্রতিষ্ঠানসমূহের কর্মকর্তাদের প্রশিক্ষণ প্রদান করা হচ্ছে। ইতোমধ্যে বি.আই.সি.এম. কর্তৃক (১) ইনভেস্টরস এডুকেশন প্রোগ্রাম (২) সার্টিফিকেট ইন সিকিউরিটিজ ল’জ ইন বাংলাদেশ (৩) সার্টিফিকেট ইন ফাইন্যানসিয়াল স্টেটমেন্ট এনালাইসিস (৪) সার্টিফিকেট ইন ইন্টারন্যাশনাল ফাইন্যানসিয়াল রিপোর্টিং স্টান্ডার্ড (৫) এন্টারপ্রাইজ নেটওয়ার্ক সলিউসন্স ফর স্টক এক্সচেঞ্জ মেম্বারস (৬) সার্টিফিকেট ইন কর্পোরেট গভর্নেন্স এন্ড এড্রেসিং ফাইন্যানসিয়াল ফ্রডুলেন্স, এবিউজ, মার্কেট ম্যানুপুলেশন এন্ড ইনসাইডার ট্রেডিং (৭) সার্টিফিকেট ইন ইনভেস্টমেন্ট এনালাইসিস এন্ড সিকিউরিটিজ ভ্যালুয়েশন (৮) সার্টিফিকেট ইন ফাইন্যানসিয়াল জার্নালিজম (৯) টেকনিক্যাল এনালাইসিস (১০) ক্যাপিটাল রেইজিং এ্যান্ড ইনভেস্টমেন্ট ইন প্রাইমারী মার্কেট এবং (১১) পোস্ট গ্রাজুয়েট ডিপ্লোমা ইন ক্যাপিটাল মার্কেট ইত্যাদি বিষয়ে এ পর্যন্ত মোট ১০,৪১৫ জনকে প্রশিক্ষণ দেয়া হয়েছে এবং ১৭টি সেমিনার-ওয়ার্কশপ আয়োজন করা হয়েছে। ইন্সটিটিউট ইতোমধ্যে সান্ধ্যকালীন পিজিডিসিএম প্রোগ্রামের পাশাপাশি পুঁজিবাজারে পেশাজীবী হতে আগ্রহী সদ্য ডিগ্রীধারী গ্র্যাজুয়েটদের জন্য দিবাকালীন প্রোগ্রাম শুরু করেছে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৪.২	কার্যক্রমসমূহ, ফলাফল নির্দেশক এবং নির্দেশকের লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1438, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৪.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৫	বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৫.১	সাম্প্রতিক অর্জন: বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষের তত্ত্বাবধানে দেশে ৪৬টি নন-লাইফ এবং ৩2টি লাইফ বীমা কোম্পানি কার্যরত রয়েছে। ইতোমধ্যে কর্তৃপক্ষ বীমা শিল্প ব্যবসার স্বচ্ছতা ও জবাবদিহির লক্ষ্যে কার্যক্রম তদারকি শুরু করেছে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1441, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৫.২	কার্যক্রমসমূহ, ফলাফল নির্দেশক এবং নির্দেশকের লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1442, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৫.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1443, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.৬	বাংলাদেশ ইনসিওরেন্স একাডেমি', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৬.১	সাম্প্রতিক অর্জন: বাংলাদেশ ইনসিওরেন্স একাডেমি জাতীয় পর্যায়ের বীমা শিক্ষা ও প্রতিষ্ঠান হিসাবে কাজ করছে এবং বীমা একাডেমি শীর্ষ প্রতিষ্ঠান হিসাবে জীবন বীমা ও সাধারণ বীমা বিষয়ের উপর দক্ষতার সহিত বিভিন্ন ধরণের কোর্স  পরিচালনা করে আসছে। বীমা একাডেমি নিয়মিতভাবে বীমা শিক্ষা ও প্রশিক্ষণের পাঠ্যক্রমে পরিবর্তন আনছে এবং বৈদেশিক পরীক্ষার কেন্দ্র হিসাবে লন্ডনের সহযোগিতায় এসিআইআই কোর্স পরিচালনা করছে এবং আন্তর্জাতিকমানের প্রশিক্ষণ কোর্স আয়োজন করছে।', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1445, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৬.২	কার্যক্রমসমূহ, ফলাফল নির্দেশক এবং নির্দেশকের লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1446, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৬.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', NULL, NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৭	মাইক্রোক্রেডিট রেগুলেটরি অথরিটি', NULL, NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1448, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৭.১ 	সাম্প্রতিক অর্জন: মাইক্রোক্রেডিট রেগুলেটরী অথরিটি (এমআরএ) এ পর্যন্ত ৮১১টি ক্ষুদ্রঋণ বিতরণকারী প্রতিষ্ঠান (এমএফআই)-কে ক্ষুদ্রঋণ কার্যক্রম পরিচালনার জন্য সনদ প্রদান করেছে এবং আইন ও বিধিমালা পরিপালনে ব্যর্থ হওয়ায় ১০৯টি প্রতিষ্ঠানের সনদ বাতিল/প্রত্যাহার করা হয়েছে। ক্ষুদ্রঋণ কার্যক্রমের বিস্তৃতি কম এমন ৩৭টি জেলাসহ বিশেষ গোষ্ঠীর আওতায় ক্ষুদ্রঋণ কার্যক্রম পরিচালনার জন্য বর্তমানে ১০৯টি প্রতিষ্ঠানের সাময়িক অনুমতি বহাল রয়েছে। সমগ্র দেশের ক্ষুদ্রঋণ খাতের তথ্য সংগ্রহের জন্য ন্যাশনাল ডাটাবেইজ প্রতিষ্ঠা করা হয়েছে। ক্ষুদ্রঋণের সেবা কেন্দ্র (শাখা) সমূহের ভূতাত্বিক অবস্থান নির্ধারণপূর্বক তাদের পূর্ণাঙ্গ তথ্যাদি Google Map-এ সন্নিবেশের মাধ্যমে Digital Mapping of Microfinance Access Points in Bangladesh চালু করা হয়েছে এবং DFID এর অর্থায়নে FM-CIB প্রতিষ্ঠার কাজ চলমান রয়েছে। ক্ষুদ্রঋণ খাতের দক্ষতা বৃদ্ধির লক্ষে ক্ষুদ্রঋণ প্রতিষ্ঠানে কর্মরত প্রায় ৪,৫০০ কর্মকর্তাকে এমআরএ’র আইন-বিধি ও ডাটাবেইজ বিষয়ক প্রশিক্ষণ প্রদান করা হয়েছে।', NULL, NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1449, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৭.২	কার্যক্রমসমূহ,ফলাফল নির্দেশক এবং নির্দেশকের লক্ষ্যমাত্রা', NULL, NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '৬.৭.৩	অপারেশন ইউনিট, স্কিম এবং প্রকল্পওয়ারি মধ্যমেয়াদি ব্যয় প্রাক্কলন', NULL, NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1451, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'naam', NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'armaan', NULL, '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01'),
(1453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000tk', '05_01_94849', 1, 24, '2022-01-17 09:05:01', '2022-01-17 09:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_1`
--

CREATE TABLE `appendix_seven_table_1` (
  `id` int(11) NOT NULL,
  `description_one` text DEFAULT NULL,
  `budget_one` text DEFAULT NULL,
  `projection1_one` text DEFAULT NULL,
  `projection2_one` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_1`
--

INSERT INTO `appendix_seven_table_1` (`id`, `description_one`, `budget_one`, `projection1_one`, `projection2_one`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(7, 'njcnjcnjn', 'jhbcdhbchcbhub', 'hubchubcdhucsbhu', 'bhbchcdbhb', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(8, 'hbchdjbcyhbdchb', 'hbcd', '3178,34,00', '3480,28,00', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(9, 'মোট', '3041,56,00', '3329,42,00', '3645,71,00', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(10, 'আবর্তক', '224,21,00', '242,43,60', '227,26,31', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(11, 'মূলধন', '70,77,00', '494,93,77', '1324,33,04', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(12, 'আর্থিক সম্পদ', '2746,58,00', '2592,04,63', '1324,33,04', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(13, 'দায়', '0', NULL, '0', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(14, 'মোট', '3041,56,00', '3329,42,00', '3645,71,00', 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09'),
(15, NULL, NULL, NULL, NULL, 'form300968362', 1, 24, '2022-01-23 06:30:09', '2022-01-23 06:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_2`
--

CREATE TABLE `appendix_seven_table_2` (
  `id` int(11) NOT NULL,
  `purpose_two` text DEFAULT NULL,
  `activities_two` text DEFAULT NULL,
  `agency_two` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_2`
--

INSERT INTO `appendix_seven_table_2` (`id`, `purpose_two`, `activities_two`, `agency_two`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(9, '১.	প্রাতিষ্ঠানিক কাঠামো শক্তিশালীকরণ', 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা সম্পর্কিত আইন, বিধি ও নীতিমালা প্রণয়ন ও সংশোধন;', 'সচিবালয়', 'form495926248', 1, 24, '2022-01-23 08:49:59', '2022-01-23 08:49:59'),
(10, 'bangladesh', 'armaan', '2                                বাংলাদেশ ব্যাংক', 'form495926248', 1, 24, '2022-01-23 08:49:59', '2022-01-23 08:49:59'),
(11, '৩. পুঁজিবাজারের কার্যকারিতা বৃদ্ধিকরণ', 'arfenrrv', '•	বাংলাদেশ সিকিউরিটিজ আ্যান্ড এক্সচেঞ্জ কমিশন', 'form495926248', 1, 24, '2022-01-23 08:49:59', '2022-01-23 08:49:59'),
(12, '৪.	বীমা খাতের অন্তর্ভুক্তি বৃদ্ধি, প্রশিক্ষিত জনবল সৃষ্টি এবং বীমা সম্পর্কে ব্যাপক জনসচেতনতা সৃষ্টি', '•	বীমা বিষয়ক বিধিমালা/প্রবিধানমালা প্রণয়ন\r\n                                        •	বীমা দাবী নিষ্পত্তির হার বৃদ্ধি\r\n                                        •	বীমা বিষয়ে জনসচেতনতা বৃদ্ধি।', '•	বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ', 'form495926248', 1, 24, '2022-01-23 08:49:59', '2022-01-23 08:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_2_sub`
--

CREATE TABLE `appendix_seven_table_2_sub` (
  `id` int(11) NOT NULL,
  `purpose_two` text DEFAULT NULL,
  `activities_two` text DEFAULT NULL,
  `agency_two` text DEFAULT NULL,
  `two_row_id` int(11) DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_2_sub`
--

INSERT INTO `appendix_seven_table_2_sub` (`id`, `purpose_two`, `activities_two`, `agency_two`, `two_row_id`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(5, NULL, '•	পুঁজিবাজারে বিনিয়োগকারীদের জন্য প্রশিক্ষণ\r\n                                        •	পোস্ট গ্র্যাজুয়েট ডিপ্লোমা এবং সার্টিফিকেট কোর্স অন ক্যাপিটাল মার্কেট প্রোগ্রাম আয়োজন', NULL, 4, 'form495926248', 1, 24, '2022-01-23 08:49:59', '2022-01-23 08:49:59'),
(6, NULL, '•	বীমা বিষয়ে প্রশিক্ষণ প্রদান।', NULL, 4, 'form495926248', 1, 24, '2022-01-23 08:49:59', '2022-01-23 08:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_3`
--

CREATE TABLE `appendix_seven_table_3` (
  `id` int(11) NOT NULL,
  `description_three` text DEFAULT NULL,
  `budget_three` text DEFAULT NULL,
  `projection1_three` text DEFAULT NULL,
  `projection2_three` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `unique_form_id` text DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_3`
--

INSERT INTO `appendix_seven_table_3` (`id`, `description_three`, `budget_three`, `projection1_three`, `projection2_three`, `status`, `unique_form_id`, `form_id`, `created_at`, `updated_at`) VALUES
(1, 'ncaj', 'mcdd', NULL, 'mkcmkdm', 1, 'form303756253', 24, '2022-01-20 04:30:37', '2022-01-20 04:30:37'),
(2, 'kmcdkmdkdm', 'kmckdmkcdmkm', NULL, 'kmcd;grlgg knmrkrrv', 1, 'form303756253', 24, '2022-01-20 04:30:37', '2022-01-20 04:30:37'),
(3, 'abchnj', 'ikckdnmkm', NULL, 'mkcmk', 1, 'form381654554', 24, '2022-01-20 04:38:16', '2022-01-20 04:38:16'),
(4, 'mkmckdmdckm', 'kmckmdkmdk', NULL, 'kmkcmkdcmcd', 1, 'form381654554', 24, '2022-01-20 04:38:16', '2022-01-20 04:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_4`
--

CREATE TABLE `appendix_seven_table_4` (
  `id` int(11) NOT NULL,
  `priority_expenditure` text DEFAULT NULL,
  `corresponding_objectives` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_4`
--

INSERT INTO `appendix_seven_table_4` (`id`, `priority_expenditure`, `corresponding_objectives`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(6, 'armaan', 'handom', 'form161767869', 1, 24, '2022-01-18 10:16:17', '2022-01-18 10:16:17'),
(7, '২. ব্যাংক ও নন-ব্যাংক আর্থিক প্রতিষ্ঠানসমূহে পেশাদারিত্ব এবং আর্থিক অন্তর্ভুক্তি বৃদ্ধি \r\n                                        ব্যাংকিং ও আর্থিক খাতের প্রাতিষ্ঠানিক কার্যক্রমের মূলধারায় সামাজিক দায়বোধ দৃঢ়ভাবে সুপ্রোথিত করার উদ্যোগ জোরদার করা হয়।আর্থিক অন্তর্ভুক্তির অংশ হিসেবে গরিব কৃষকদের ১০ টাকায় ব্যাংক হিসাব খোলার সুযোগ করে দেয়া হয়। এ প্রক্রিয়ায় সরকারের বিভিন্ন সামাজিক নিরাপত্তা কর্মসূচির অর্থ বিতরণ, অসহায় মুক্তিযোদ্ধা, ক্ষুদ্র জীবন বীমাগ্রহীতা, বেকার তরুণ, পরিচ্ছন্নতাকর্মী, গার্মেন্ট শ্রমিক, এমনকি কর্মজীবী পথশিশুরাও ব্যাংক হিসাব খুলতে পারছে। এরই মধ্যে ৯৭ লাখ কৃষকসহ ১ কোটি ৩৩ লাখ সাধারণ মানুষ নতুন হিসাব খুলে ব্যাংকিং সেবা নিতে পারছে। আর্থিক অন্তর্ভুক্তি ত্বরান্বিত করার পথে অন্যতম গুরুত্বপূর্ণ\r\n                                        পদক্ষেপ হলো ‘স্কুল ব্যাংকিং’। এটি শিক্ষার্থী ও অভিভাবকদের মধ্যে ব্যাপক সাড়া ফেলেছে। গত চার বছরে ৪৮টি ব্যাংকে ৩ লাখ ৬৬ হাজার স্কুল ছাত্রছাত্রী ব্যাংক হিসাব খুলেছে। সে হিসাবে জমার পরিমাণ দাঁড়িয়েছে ৩৭১ কোটি টাকা। আর্থিক অন্তর্ভুক্তির অভিযানকে আরেক ধাপ এগিয়ে নিতে এজেন্ট ব্যাংকিং নীতিমালা প্রণয়ন করেছে বাংলাদেশে ব্যাংক। এজেন্টের মাধ্যমে ব্যাংকগুলো তাদের কিছু কিছু ব্যাংকিং সেবা যেমন বৈদেশিক রেমিট্যান্স বিতরণসহ স্বল্প পরিমাণের অর্থ জমা ও উত্তোলন, ব্যাংক হিসাব খোলার কাগজপত্রাদি বিতরণ ও সংগ্রহ, ছোট আকারের ঋণ বিতরণ ইত্যাদি কার্যক্রম প্রত্যন্ত অঞ্চলের জনপদে পৌঁছে দিতে পারবে।', '•	আর্থিক প্রতিষ্ঠানসমূহে পেশাদারিত্ব এবং আর্থিক অন্তর্ভুক্তি বৃদ্ধি', 'form161767869', 1, 24, '2022-01-18 10:16:17', '2022-01-18 10:16:17'),
(8, '৩.	অধিকতর কার্যকর পুঁজিবাজার প্রতিষ্ঠা\r\n                                        বিনিয়োগকারীদের স্বার্থ সংরক্ষণের জন্য পুঁজিবাজারের স্টক ব্রোকার ও সাব-ব্রোকার, শেয়ার হস্তান্তরকারী প্রতিনিধি, ইস্যু ব্যাংকার, মার্চেন্ট ব্যাংকার, ইস্যু নিবন্ধক ও ম্যানেজার, অবলিখক, পোর্টফলিও ম্যানেজার, বিনিয়োগ উপদেষ্টা এবং পুঁজিবাজারের সংগে সম্পৃক্ত অন্যান্য প্রতিষ্ঠানের কার্যকর সমন্বয়ের জন্য যথাযথ আইনী কাঠামো তৈরির পদক্ষেপ গ্রহণ করা হচ্ছে। এ খাতে দক্ষ জনবল তৈরির লক্ষ্যে বাংলাদেশ ইন্‌স্টিটিউট অব ক্যাপিটাল মার্কেট গঠন করা হয়েছে। পুঁজি বাজার সংশ্লিষ্ট দক্ষ জনগোষ্ঠি তৈরির লক্ষ্যে উন্নততর ও মানসম্মত প্রশিক্ষণ ব্যবস্থা গড়ে তোলার জন্য এ প্রতিষ্ঠানকে আধুনিকায়ন ও সম্প্রসারণ করার উদ্যোগ নেয়া হয়েছে। ইতোমধ্যে পুঁজিবাজার নিয়ন্ত্রক সংস্থা বিএসইসি-কে শক্তিশালী করার জন্য জনবল ও অন্যান্য সরঞ্জাম বৃদ্ধি করা হয়েছে। পুঁজিবাজারে ক্ষতিগ্রস্ত ক্ষুদ্র বিনিয়োগকারীদের সহায়তার লক্ষ্যে পুনঃঅর্থায়ন কার্যক্রম চলছে বিধায় এ খাতকে তৃতীয় অগ্রাধিকার খাত হিসেবে অন্তর্ভুক্ত করা হয়েছে।', '•	পুঁজিবাজারের কার্যকারিতা বৃদ্ধিকরণ।', 'form161767869', 1, 24, '2022-01-18 10:16:17', '2022-01-18 10:16:17'),
(9, '৪. বীমা খাতে অন্তর্ভুক্তি বৃদ্ধি ও শৃঙ্খলা সুসংহতকরণ\r\n                                        বীমা শিল্প ব্যবসার তত্ত্বাবধান, বীমা পলিসি গ্রাহক ও পলিসির অধীনে উপকারভোগীদের স্বার্থ সংরক্ষণ এবং বীমা শিল্পের নিয়মতান্ত্রিক উন্নয়ন ও নিয়ন্ত্রণের লক্ষ্যে বিভিন্ন উদ্যোগ গ্রহণ করা হচ্ছে। বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ আইন, ২০১০ এর আওতায় উক্ত কর্তৃপক্ষ কার্যক্রম শুরু করেছে। আইসিটি’র ব্যবহার বৃদ্ধি এবং সংস্কারের মাধ্যমে বীমা খাতের উপর জনগণের আস্থা বৃদ্ধির উদ্যোগ গ্রহণ করা হয়েছে। বীমা পেশায় প্রশিক্ষিত ও পেশাদার জনবল গড়ে তোলার উদ্দেশ্য বাংলাদেশ ইনসিওরেন্স একাডেমির মাধ্যমে এ পেশার সাথে জড়িতদের নিয়মিত প্রশিক্ষণ প্রদান করা হচ্ছে। বীমা ক্ষেত্রে প্রশিক্ষণের পরিমাণ ও মান বৃদ্ধির জন্য এবং এটিকে আন্তর্জাতিক মানের প্রশিক্ষণ প্রতিষ্ঠান হিসেবে গড়ে তোলার উদ্দেশ্যে এর অবকাঠামো ও একাডেমিক কার্যক্রম সম্প্রসারণের পদক্ষেপ গ্রহণ করা হয়েছে।বীমা শিল্পের গুরুত্ব বিবেচনায় এ খাতকে চতুর্থ অগ্রাধিকার খাত হিসেবে অন্তর্ভুক্ত করা হয়েছে।', '•	বীমা খাতে অন্তর্ভুক্তি বৃদ্ধি ও শৃঙ্খলা সুসংহতকরণ।', 'form161767869', 1, 24, '2022-01-18 10:16:17', '2022-01-18 10:16:17'),
(10, '৫. 	উদ্যোক্তা সৃষ্টির মাধ্যমে কর্মসংস্থান এবং আর্থিক সহায়তা প্রদান\r\n                                        মাইক্রোক্রেডিট রেগুলেটরি অথরিটি (এমআরএ), পল্লী কর্ম সহায়ক ফাউন্ডেশন (পিকেএসএফ), সোস্যাল ডেভেলপমেন্ট ফাউন্ডেশন (এসডিএফ), বাংলাদেশ এনজিও ফাউন্ডেশন (বিএনএফ), বাংলাদেশ মিউনিসিপ্যাল ডেভেলপমেন্ট ফান্ড (বিএমডিএফ), ইকুইুট এন্টারপেনরশিপ ফান্ড (ইইএফ), স্মল এন্টারপ্রাইজ ফান্ড (এসইএফ) এর তত্ত্বাবধানে/আওতায় ক্ষুদ্র উদ্যোক্তা সৃষ্টি ও উন্নয়ন, কৃষিভিত্তিক শিল্প এবং তথ্য যোগাযোগ প্রযুক্তি (ICT) খাতে বিনিয়োগের মাধ্যমে গৃহীত বিভিন্ন কার্যক্রমের ফলে দেশের প্রত্যন্ত অঞ্চলে ব্যাপক হারে উদ্যোক্তা ও কর্মসংস্থান সৃষ্টি হচ্ছে।\r\n                                        ক্ষুদ্রঋণ কার্যক্রমে দরিদ্র জনগোষ্ঠীর জন্য সামাজিক ও অবকাঠামোগত সুবিধা সৃষ্টি এবং অতি দরিদ্র, বিশেষত যুবমহিলাদের এতে অগ্রাধিকার দেয়া হচ্ছে। ক্ষুদ্রঋণ খাতকে পঞ্চম অগ্রাধিকার কর্মসূচি হিসেবে চিহ্নিত করা হয়েছে।', '•	সুনিয়ন্ত্রিত ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণ ও পরিচালনায় সহায়তা জোরদার।', 'form161767869', 1, 24, '2022-01-18 10:16:17', '2022-01-18 10:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_5`
--

CREATE TABLE `appendix_seven_table_5` (
  `id` int(11) NOT NULL,
  `description_five` text DEFAULT NULL,
  `budget_five` text DEFAULT NULL,
  `revised_budget_five` text DEFAULT NULL,
  `budget2_five` text DEFAULT NULL,
  `projection1_five` text DEFAULT NULL,
  `projection2_five` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `unique_form_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_5`
--

INSERT INTO `appendix_seven_table_5` (`id`, `description_five`, `budget_five`, `revised_budget_five`, `budget2_five`, `projection1_five`, `projection2_five`, `status`, `form_id`, `unique_form_id`, `created_at`, `updated_at`) VALUES
(1, 'sggagg', 'm k', 'kmkvmk', 'mkmkfmvk', 'mkmkfmk', 'kmvkfmv', 1, 24, 'form254053203', '2022-01-20 05:25:40', '2022-01-20 05:25:40'),
(2, 'cqmikcmqkmkmfk', 'mkmvkfmk', 'mkmkfmkm', 'kmvkfmfk', 'mkmvkfmk', 'kmvkmf', 1, 24, 'form282022159', '2022-01-20 05:28:20', '2022-01-20 05:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_6`
--

CREATE TABLE `appendix_seven_table_6` (
  `id` int(11) NOT NULL,
  `ecconomic_group_code` text DEFAULT NULL,
  `description_six` text DEFAULT NULL,
  `budget_six` text DEFAULT NULL,
  `revised_budget_six` text DEFAULT NULL,
  `budget2_six` text DEFAULT NULL,
  `projection1_six` text DEFAULT NULL,
  `projection2_six` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `unique_form_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_6`
--

INSERT INTO `appendix_seven_table_6` (`id`, `ecconomic_group_code`, `description_six`, `budget_six`, `revised_budget_six`, `budget2_six`, `projection1_six`, `projection2_six`, `status`, `form_id`, `unique_form_id`, `created_at`, `updated_at`) VALUES
(1, 'mkdmvkm', 'm', 'mkvmkm', 'kmkmvkm', 'kmkvmk', 'mkmvfkkm', 'k kfm', 1, 24, 'form282060653', '2022-01-20 05:28:20', '2022-01-20 05:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_7`
--

CREATE TABLE `appendix_seven_table_7` (
  `id` int(11) NOT NULL,
  `indicative` text DEFAULT NULL,
  `related_strategic_objectives` text DEFAULT NULL,
  `unit_measurement` text DEFAULT NULL,
  `revised_target` text DEFAULT NULL,
  `actual_achievement` text DEFAULT NULL,
  `goals` text DEFAULT NULL,
  `revised_goals` text DEFAULT NULL,
  `medium_term_targets` text DEFAULT NULL,
  `medium_term_targets1` text DEFAULT NULL,
  `medium_term_targets2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_7`
--

INSERT INTO `appendix_seven_table_7` (`id`, `indicative`, `related_strategic_objectives`, `unit_measurement`, `revised_target`, `actual_achievement`, `goals`, `revised_goals`, `medium_term_targets`, `medium_term_targets1`, `medium_term_targets2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, 'ব্যাংকিং খাতে আর্থিক অন্তর্ভুক্তি বৃদ্ধি (প্রাপ্ত বয়স্ক জনগণের অংশগ্রহণের হার)', 'ajca', 'armaan', '৫', '80', '82', '81', '৮২', '৮৩', '২৬', 'form323226150', 1, 24, '2022-01-18 11:32:32', '2022-01-18 11:32:32'),
(2, 'রাষ্ট্রমালিকানাধীন বাণিজ্যিক ব্যাংকসমূহের শ্রেণীকৃত ঋণের (Classified Loan) হার', NULL, '%', '4', '26.5', '24.5', '21', '৩০', '২৮', NULL, 'form323226150', 1, 24, '2022-01-18 11:32:32', '2022-01-18 11:32:32'),
(3, 'পুজিঁবাজারে তালিকাভুক্ত কোম্পানির হার বৃদ্ধি', NULL, '%', '73', '4', '4.5', '4', '৪.৭৫', '৫', '৫.২৫', 'form323226150', 1, 24, '2022-01-18 11:32:32', '2022-01-18 11:32:32'),
(4, 'বীমা পলিসি গ্রাহক সংখ্যা বৃদ্ধি', NULL, '%', '5', '২.২১', '4', '4.25', '৩', '৩.৫', '৪', 'form323226150', 1, 24, '2022-01-18 11:32:32', '2022-01-18 11:32:32'),
(5, 'এমএফআই সদস্যদের সঞ্চয়ের হার বৃদ্ধি', NULL, '%', '14500', '14', '10', '9', '12', '18', '15', 'form323226150', 1, 24, '2022-01-18 11:32:32', '2022-01-18 11:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_8`
--

CREATE TABLE `appendix_seven_table_8` (
  `id` int(11) NOT NULL,
  `pursuit` text DEFAULT NULL,
  `results_indicative` text DEFAULT NULL,
  `sequence_respective_strategic` text DEFAULT NULL,
  `measurement_unit` text DEFAULT NULL,
  `revised_targets_eight` text DEFAULT NULL,
  `actual_achievement_eight` text DEFAULT NULL,
  `goals_eight` text DEFAULT NULL,
  `revised_targets_eight_two` text DEFAULT NULL,
  `medium_term_targets_eight` text DEFAULT NULL,
  `medium_term_targets_eight1` text DEFAULT NULL,
  `medium_term_targets_eight2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_8`
--

INSERT INTO `appendix_seven_table_8` (`id`, `pursuit`, `results_indicative`, `sequence_respective_strategic`, `measurement_unit`, `revised_targets_eight`, `actual_achievement_eight`, `goals_eight`, `revised_targets_eight_two`, `medium_term_targets_eight`, `medium_term_targets_eight1`, `medium_term_targets_eight2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(6, '১', '২1025151', '৩', '৪', '৫', '৬', '৭', NULL, '৯', '১০', '১১', 'form303663740', 1, 24, '2022-01-19 04:30:36', '2022-01-19 04:30:36'),
(7, '1.	আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা সম্পর্কিত আইন, বিধি ও নীতিমালা প্রণয়ন ও সংশোধন', 'প্রণীত ও সংশোধিত আইন/বিধি/নীতিমালা', '১', 'সংখ্যা', '5', '5', '7', NULL, '5', '5', '5', 'form303663740', 1, 24, '2022-01-19 04:30:36', '2022-01-19 04:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_9`
--

CREATE TABLE `appendix_seven_table_9` (
  `id` int(11) NOT NULL,
  `operation_name` text DEFAULT NULL,
  `related_activities` text DEFAULT NULL,
  `authentic` text DEFAULT NULL,
  `budget_nine` text DEFAULT NULL,
  `revised_budget_nine` text DEFAULT NULL,
  `estimate_nine` text DEFAULT NULL,
  `estimate_nine_1` text DEFAULT NULL,
  `estimate_nine_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_9`
--

INSERT INTO `appendix_seven_table_9` (`id`, `operation_name`, `related_activities`, `authentic`, `budget_nine`, `revised_budget_nine`, `estimate_nine`, `estimate_nine_1`, `estimate_nine_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', 'form220877105', NULL, 24, '2022-01-19 05:22:08', '2022-01-19 05:22:08'),
(2, 'armaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form220877105', NULL, 24, '2022-01-19 05:22:08', '2022-01-19 05:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_10`
--

CREATE TABLE `appendix_seven_table_10` (
  `id` int(11) NOT NULL,
  `activities_ten` text DEFAULT NULL,
  `results_indicative_ten` text DEFAULT NULL,
  `respective_strategic_ten` text DEFAULT NULL,
  `unit_measurement_ten` text DEFAULT NULL,
  `revised_targets1_ten` text DEFAULT NULL,
  `actual_achievement_ten` text DEFAULT NULL,
  `goals_ten` text DEFAULT NULL,
  `revised_targets2_ten` text DEFAULT NULL,
  `medium_target_ten` text DEFAULT NULL,
  `medium_target1_ten` text DEFAULT NULL,
  `medium_target2_ten` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_10`
--

INSERT INTO `appendix_seven_table_10` (`id`, `activities_ten`, `results_indicative_ten`, `respective_strategic_ten`, `unit_measurement_ten`, `revised_targets1_ten`, `actual_achievement_ten`, `goals_ten`, `revised_targets2_ten`, `medium_target_ten`, `medium_target1_ten`, `medium_target2_ten`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(31, '১', '২', '৩', '৪', '৫', '৬', '৭', NULL, '৯', '১০', '১১', 'form483943145', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(32, 'ব্যাংকিং খাতে প্রাপ্ত বয়স্ক জনগণের অংশগ্রহণ', 'সকল ধরণের হিসাব সংখ্যা', '২', 'সংখ্যা (কোটি) (ক্রমপুঞ্জিভুত)', '৯.৭২', '৯.৫২', '৯.৮৪', NULL, '১০.২৯', '১০.৬৭', '১১.০৬', 'form483943145', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(33, 'canbcajc', 'শ্রেণিকৃত ঋণের পরিমাণ', '২', 'কোটি টাকা', '৪০০০০', '৪০৩১৭', '৫৩৮৭৯', NULL, '৪৫০০০', '৪২০০০', '৪০০০০', 'form483943145', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(34, 'কৃষি খাতে ঋণ প্রদান তত্ত্বাবধান', 'বিতরণকৃত ঋণ', '২', 'হাজার কোটি টাকা', '২০.৪০', '21.3৯', '21.44', NULL, '৩০.০০', '৩৫.০০', '৪০.০০', 'form483943145', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(35, 'এসএমই খাতে ঋণ প্রদান তত্ত্বাবধান', 'বিতরণকৃত ঋণ', '২', 'হাজার কোটি টাকা', '13৪', '15৬', '১৫৭', NULL, '1৭০', '17৫', '180', 'form483943145', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(36, '1.	মোবাইল ব্যাংকিং কার্যক্রম সম্প্রসারণ', 'বার্ষিক লেনদেন', '২', 'হাজার কোটি টাকা', '300', '৩৪৮', '৩০০', NULL, '৪৩৫', '৪৪০', '৪৪৫', 'form483943145', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_11`
--

CREATE TABLE `appendix_seven_table_11` (
  `id` int(11) NOT NULL,
  `operation_eleven` text DEFAULT NULL,
  `activities_eleven` text DEFAULT NULL,
  `authentic_eleven` text DEFAULT NULL,
  `budget_eleven` text DEFAULT NULL,
  `revised_budget_eleven` text DEFAULT NULL,
  `estimate_eleven` text DEFAULT NULL,
  `estimate_eleven_1` text DEFAULT NULL,
  `estimate_eleven_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_11`
--

INSERT INTO `appendix_seven_table_11` (`id`, `operation_eleven`, `activities_eleven`, `authentic_eleven`, `budget_eleven`, `revised_budget_eleven`, `estimate_eleven`, `estimate_eleven_1`, `estimate_eleven_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(5, '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', 'form580080413', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00'),
(6, 'hhnfsj', 'jnjnjvfnj', 'njnfcjnjn', 'jnjncjncj', 'njnjvfnn', 'jnjnvfjnj', 'jnjfcnjn', 'jnjcnjcndcjdndcdndc', 'form580080413', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_12`
--

CREATE TABLE `appendix_seven_table_12` (
  `id` int(11) NOT NULL,
  `activities_twel` text DEFAULT NULL,
  `results_indicative_twel` text DEFAULT NULL,
  `respective_strategic_twel` text DEFAULT NULL,
  `unit_measurement_twel` text DEFAULT NULL,
  `revised_targets1_twel` text DEFAULT NULL,
  `revised_targets2_twel` text DEFAULT NULL,
  `actual_achievement_twel` text DEFAULT NULL,
  `goals_twel` text DEFAULT NULL,
  `medium_target_twel` text DEFAULT NULL,
  `medium_target1_twel` text DEFAULT NULL,
  `medium_target2_twel` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_12`
--

INSERT INTO `appendix_seven_table_12` (`id`, `activities_twel`, `results_indicative_twel`, `respective_strategic_twel`, `unit_measurement_twel`, `revised_targets1_twel`, `revised_targets2_twel`, `actual_achievement_twel`, `goals_twel`, `medium_target_twel`, `medium_target1_twel`, `medium_target2_twel`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(19, '১', '২', '৩', '৪', '৫', NULL, '৬', '৭', '৯', '১০', '১১', 'form483952788', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(20, 'ব্যাংকিং খাতে প্রাপ্ত বয়স্ক জনগণের অংশগ্রহণ', 'সকল ধরণের হিসাব সংখ্যা', '২', 'সংখ্যা (কোটি) (ক্রমপুঞ্জিভুত)', '৯.৭২', NULL, '৯.৫২', '৯.৮৪', '১০.২৯', '১০.৬৭', '১১.০৬', 'form483952788', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(21, '1.	রাষ্ট্র মালিকানাধীন বাণিজ্যিক ব্যাংকসমূহের শ্রেণিকৃত ঋণ হ্রাসকরণ', 'armaan', '২', 'কোটি টাকা', '৪০০০০', NULL, '৪০৩১৭', '৫৩৮৭৯', '৪৫০০০', '৪২০০০', '৪০০০০', 'form483952788', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(22, 'কৃষি খাতে ঋণ প্রদান তত্ত্বাবধান', 'বিতরণকৃত ঋণ', '২', 'হাজার কোটি টাকা', '২০.৪০', NULL, '21.3৯', '21.44', '৩০.০০', '৩৫.০০', '৪০.০০', 'form483952788', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(23, 'এসএমই খাতে ঋণ প্রদান তত্ত্বাবধান', 'বিতরণকৃত ঋণ', '২', 'হাজার কোটি টাকা', '13৪', NULL, '15৬', '১৫৭', '1৭০', '17৫', '180', 'form483952788', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39'),
(24, '1.	মোবাইল ব্যাংকিং কার্যক্রম সম্প্রসারণ', 'বার্ষিক লেনদেন', '২', 'হাজার কোটি টাকা', '300', NULL, '৩৪৮', '৩০০', '৪৩৫', '৪৪০', '৪৪৫', 'form483952788', 1, 24, '2022-01-19 06:48:39', '2022-01-19 06:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_13`
--

CREATE TABLE `appendix_seven_table_13` (
  `id` int(11) NOT NULL,
  `operation_thirteen` text DEFAULT NULL,
  `activities_thirteen` text DEFAULT NULL,
  `authentic_thirteen` text DEFAULT NULL,
  `budget_thirteen` text DEFAULT NULL,
  `revised_budget_thirteen` text DEFAULT NULL,
  `estimate_thirteen` text DEFAULT NULL,
  `estimate_thirteen_1` text DEFAULT NULL,
  `estimate_thirteen_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_13`
--

INSERT INTO `appendix_seven_table_13` (`id`, `operation_thirteen`, `activities_thirteen`, `authentic_thirteen`, `budget_thirteen`, `revised_budget_thirteen`, `estimate_thirteen`, `estimate_thirteen_1`, `estimate_thirteen_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(3, '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', 'form580063513', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form580063513', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_14`
--

CREATE TABLE `appendix_seven_table_14` (
  `id` int(11) NOT NULL,
  `activities_fourteen` text DEFAULT NULL,
  `results_indicative_fourteen` text DEFAULT NULL,
  `respective_strategic_fourteen` text DEFAULT NULL,
  `unit_measurement_fourteen` text DEFAULT NULL,
  `revised_targets1_fourteen` text DEFAULT NULL,
  `revised_targets2_fourteen` text DEFAULT NULL,
  `actual_achievement_fourteen` text DEFAULT NULL,
  `goals_fourteen` text DEFAULT NULL,
  `medium_target_fourteen` text DEFAULT NULL,
  `medium_target1_fourteen` text DEFAULT NULL,
  `medium_target2_fourteen` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_14`
--

INSERT INTO `appendix_seven_table_14` (`id`, `activities_fourteen`, `results_indicative_fourteen`, `respective_strategic_fourteen`, `unit_measurement_fourteen`, `revised_targets1_fourteen`, `revised_targets2_fourteen`, `actual_achievement_fourteen`, `goals_fourteen`, `medium_target_fourteen`, `medium_target1_fourteen`, `medium_target2_fourteen`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, '১', '২', '৩', '৪', '৫', '৬', NULL, '৮', '৯', '১০', NULL, 'form113933699', 1, 24, '2022-01-23 05:11:39', '2022-01-23 05:11:39'),
(2, '1.	পুজিঁবাজারে প্রশিক্ষিত বিনিয়োগকারী/জনবল বৃদ্ধি', 'প্রশিক্ষিত বিনিয়োগকারী/জনবল', '৩mcidncj', 'mjnvjnj', 'njcnjcnj', 'njnjnvfjn', 'jnjnfvjn', 'jnjnfvjnj', 'njnjvfnfjfvnjn', 'jnvjfnvjfvnjn', 'jvfjvnvfj', 'form113933699', 1, 24, '2022-01-23 05:11:39', '2022-01-23 05:11:39'),
(3, 'njvfnjnfvjn', 'jnvjfvnjn', 'jnvfjfvnjn', 'jnvfjnj', 'njnfvkfkokotkooopy', 'potpoueb', '55v4f5f4545', '4f54gr54g', 'jdnvnj', 'nvjnjvnv', 'njfjfvnj', 'form113933699', 1, 24, '2022-01-23 05:11:39', '2022-01-23 05:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_14_sub`
--

CREATE TABLE `appendix_seven_table_14_sub` (
  `id` int(11) NOT NULL,
  `activities_fourteen` text DEFAULT NULL,
  `results_indicative_fourteen` text DEFAULT NULL,
  `respective_strategic_fourteen` text DEFAULT NULL,
  `unit_measurement_fourteen` text DEFAULT NULL,
  `revised_targets1_fourteen` text DEFAULT NULL,
  `revised_targets2_fourteen` text DEFAULT NULL,
  `actual_achievement_fourteen` text DEFAULT NULL,
  `goals_fourteen` text DEFAULT NULL,
  `medium_target_fourteen` text DEFAULT NULL,
  `medium_target1_fourteen` text DEFAULT NULL,
  `medium_target2_fourteen` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `fourteen_row_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_14_sub`
--

INSERT INTO `appendix_seven_table_14_sub` (`id`, `activities_fourteen`, `results_indicative_fourteen`, `respective_strategic_fourteen`, `unit_measurement_fourteen`, `revised_targets1_fourteen`, `revised_targets2_fourteen`, `actual_achievement_fourteen`, `goals_fourteen`, `medium_target_fourteen`, `medium_target1_fourteen`, `medium_target2_fourteen`, `unique_form_id`, `status`, `form_id`, `fourteen_row_id`, `created_at`, `updated_at`) VALUES
(1, 'nvjnvfjnj', 'njfnjfvnj', 'njvnjfvnjfn', 'jnjvnfvjnfvklfogh', 'gb4gb584f', 'gbnu374', 'vfnjfvnj', 'vf5fv45f4', 'mfvifvmkm', 'mvfkmvk', '446f45g', 'form113933699', 1, 24, 3, '2022-01-23 05:11:39', '2022-01-23 05:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_15`
--

CREATE TABLE `appendix_seven_table_15` (
  `id` int(11) NOT NULL,
  `operation_fifteen` text DEFAULT NULL,
  `activities_fifteen` text DEFAULT NULL,
  `authentic_fifteen` text DEFAULT NULL,
  `budget_fifteen` text DEFAULT NULL,
  `revised_budget_fifteen` text DEFAULT NULL,
  `estimate_fifteen` text DEFAULT NULL,
  `estimate_fifteen_1` text DEFAULT NULL,
  `estimate_fifteen_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_15`
--

INSERT INTO `appendix_seven_table_15` (`id`, `operation_fifteen`, `activities_fifteen`, `authentic_fifteen`, `budget_fifteen`, `revised_budget_fifteen`, `estimate_fifteen`, `estimate_fifteen_1`, `estimate_fifteen_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(3, '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', 'form580041939', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00'),
(4, '50251', '3215', '6262151', '1212', '12', '1521', '21', '21', 'form580041939', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_16`
--

CREATE TABLE `appendix_seven_table_16` (
  `id` int(11) NOT NULL,
  `activities_sixteen` text DEFAULT NULL,
  `results_indicative_sixteen` text DEFAULT NULL,
  `respective_strategic_sixteen` text DEFAULT NULL,
  `unit_measurement_sixteen` text DEFAULT NULL,
  `revised_targets1_sixteen` text DEFAULT NULL,
  `revised_targets2_sixteen` text DEFAULT NULL,
  `actual_achievement_sixteen` text DEFAULT NULL,
  `goals_sixteen` text DEFAULT NULL,
  `medium_target_sixteen` text DEFAULT NULL,
  `medium_target1_sixteen` text DEFAULT NULL,
  `medium_target2_sixteen` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_16`
--

INSERT INTO `appendix_seven_table_16` (`id`, `activities_sixteen`, `results_indicative_sixteen`, `respective_strategic_sixteen`, `unit_measurement_sixteen`, `revised_targets1_sixteen`, `revised_targets2_sixteen`, `actual_achievement_sixteen`, `goals_sixteen`, `medium_target_sixteen`, `medium_target1_sixteen`, `medium_target2_sixteen`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, '১                            \r\n          ncahjcaj', 'njncvjnj                                   ২', 'nmjvnfjn', 'ncjfnvjn', 'jnvjfnj', 'njvnfjn', 'jvfjfnj', 'njvfnfjnj', 'jnvfnvfjn', 'jnvjvfnjn', 'jnjvfnjvn', 'form084377965', 1, 24, '2022-01-23 07:08:43', '2022-01-23 07:08:43'),
(2, 'jnjvjnfvjnfvjnjn                                         1.	বীমা বিষয়ক বিধিমালা/প্রবিধানমালা প্রণয়ন', 'vjnfvjn                                   গেজেটে প্রকাশিত', 'njvfjfvnjvfnnj', 'njvfvjnv', 'jvfjfvjvfjn', '5', 'dcjdndcndc', 'cjncjndcn', '৪', '৫', '৬', 'form084377965', 1, 24, '2022-01-23 07:08:43', '2022-01-23 07:08:43'),
(3, 'c jdnmc', 'নিস্পত্তিকৃত দাবীর হার', '৪', '%', '73', '76', '70', '75', '77', '78', '79', 'form084377965', 1, 24, '2022-01-23 07:08:43', '2022-01-23 07:08:43'),
(4, '3. বীমা বিষয়ে জনসচেতনতা বৃদ্ধি', 'আয়োজিত ওয়ার্কশপ/ সেমিনার', '৪fafaaf', 'feqeeffe', '5', '৭', '1০', '6', '10', '12', '1২', 'form084377965', 1, 24, '2022-01-23 07:08:43', '2022-01-23 07:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_17`
--

CREATE TABLE `appendix_seven_table_17` (
  `id` int(11) NOT NULL,
  `operation_seventeen` text DEFAULT NULL,
  `activities_seventeen` text DEFAULT NULL,
  `authentic_seventeen` text DEFAULT NULL,
  `budget_seventeen` text DEFAULT NULL,
  `revised_budget_seventeen` text DEFAULT NULL,
  `estimate_seventeen` text DEFAULT NULL,
  `estimate_seventeen_1` text DEFAULT NULL,
  `estimate_seventeen_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_17`
--

INSERT INTO `appendix_seven_table_17` (`id`, `operation_seventeen`, `activities_seventeen`, `authentic_seventeen`, `budget_seventeen`, `revised_budget_seventeen`, `estimate_seventeen`, `estimate_seventeen_1`, `estimate_seventeen_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(3, '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', 'form580022170', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00'),
(4, '50', '60', '470', '25', '665', '454', '456', NULL, 'form580022170', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_18`
--

CREATE TABLE `appendix_seven_table_18` (
  `id` int(11) NOT NULL,
  `activities_eighteen` text DEFAULT NULL,
  `results_indicative_eighteen` text DEFAULT NULL,
  `respective_strategic_eighteen` text DEFAULT NULL,
  `unit_measurement_eighteen` text DEFAULT NULL,
  `revised_targets1_eighteen` text DEFAULT NULL,
  `revised_targets2_eighteen` text DEFAULT NULL,
  `actual_achievement_eighteen` text DEFAULT NULL,
  `goals_eighteen` text DEFAULT NULL,
  `medium_target_eighteen` text DEFAULT NULL,
  `medium_target1_eighteen` text DEFAULT NULL,
  `medium_target2_eighteen` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_18`
--

INSERT INTO `appendix_seven_table_18` (`id`, `activities_eighteen`, `results_indicative_eighteen`, `respective_strategic_eighteen`, `unit_measurement_eighteen`, `revised_targets1_eighteen`, `revised_targets2_eighteen`, `actual_achievement_eighteen`, `goals_eighteen`, `medium_target_eighteen`, `medium_target1_eighteen`, `medium_target2_eighteen`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, '১', 'fafa              \r\nafaf', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '১০', NULL, 'form423565804', 1, 24, '2022-01-20 11:42:35', '2022-01-20 11:42:35'),
(2, '1.	বীমা বিষয়ে প্রশিক্ষণ প্রদান', 'ffaafaffa', 'bachacia', 'সংখ্যা', '1000', '৫১৯', '1050', '1100', '১২০০', '১৩৫০', '১৫০০', 'form423565804', 1, 24, '2022-01-20 11:42:35', '2022-01-20 11:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_19`
--

CREATE TABLE `appendix_seven_table_19` (
  `id` int(11) NOT NULL,
  `operation_nineteen` text DEFAULT NULL,
  `activities_nineteen` text DEFAULT NULL,
  `authentic_nineteen` text DEFAULT NULL,
  `budget_nineteen` text DEFAULT NULL,
  `revised_budget_nineteen` text DEFAULT NULL,
  `estimate_nineteen` text DEFAULT NULL,
  `estimate_nineteen_1` text DEFAULT NULL,
  `estimate_nineteen_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_19`
--

INSERT INTO `appendix_seven_table_19` (`id`, `operation_nineteen`, `activities_nineteen`, `authentic_nineteen`, `budget_nineteen`, `revised_budget_nineteen`, `estimate_nineteen`, `estimate_nineteen_1`, `estimate_nineteen_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(3, '1', '2', '3', '45', '6', '7', '8', '9', 'form580065210', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form580065210', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_20`
--

CREATE TABLE `appendix_seven_table_20` (
  `id` int(11) NOT NULL,
  `activities_twenty` text DEFAULT NULL,
  `results_indicative_twenty` text DEFAULT NULL,
  `respective_strategic_twenty` text DEFAULT NULL,
  `unit_measurement_twenty` text DEFAULT NULL,
  `revised_targets1_twenty` text DEFAULT NULL,
  `revised_targets2_twenty` text DEFAULT NULL,
  `actual_achievement_twenty` text DEFAULT NULL,
  `goals_twenty` text DEFAULT NULL,
  `medium_target_twenty` text DEFAULT NULL,
  `medium_target1_twenty` text DEFAULT NULL,
  `medium_target2_twenty` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_20`
--

INSERT INTO `appendix_seven_table_20` (`id`, `activities_twenty`, `results_indicative_twenty`, `respective_strategic_twenty`, `unit_measurement_twenty`, `revised_targets1_twenty`, `revised_targets2_twenty`, `actual_achievement_twenty`, `goals_twenty`, `medium_target_twenty`, `medium_target1_twenty`, `medium_target2_twenty`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(63, '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '১০', '১১', 'form113521465', 1, 24, '2022-01-20 11:11:35', '2022-01-20 11:11:35'),
(64, '1.	ক্ষুদ্রঋণ বিতরণ ও আদায়', 'বিতরণকৃত ক্ষুদ্রঋণ', '৫', 'হাজার কোটি টাকায়', '82', '১৩৪', '১৪০', '১৪০', '১৬৭', '১৯০', '২২০', 'form113521465', 1, 24, '2022-01-20 11:11:35', '2022-01-20 11:11:35'),
(65, '1.	এমএফআই সুবিধাভোগীদের সংখ্যা বৃদ্ধি', 'সুবিধাভোগীর সংখ্যা', '৫', 'সংখ্যা (লক্ষ))', '300', '30৫', '30৭', '30৭', '31৫', '3২০', '32৫', 'form113521465', 1, 24, '2022-01-20 11:11:35', '2022-01-20 11:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_20_sub`
--

CREATE TABLE `appendix_seven_table_20_sub` (
  `id` int(11) NOT NULL,
  `activities_twenty` text DEFAULT NULL,
  `results_indicative_twenty` text DEFAULT NULL,
  `respective_strategic_twenty` text DEFAULT NULL,
  `unit_measurement_twenty` text DEFAULT NULL,
  `revised_targets1_twenty` text DEFAULT NULL,
  `revised_targets2_twenty` text DEFAULT NULL,
  `actual_achievement_twenty` text DEFAULT NULL,
  `goals_twenty` text DEFAULT NULL,
  `medium_target_twenty` text DEFAULT NULL,
  `medium_target1_twenty` text DEFAULT NULL,
  `medium_target2_twenty` text DEFAULT NULL,
  `twenty_row_id` int(11) NOT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_20_sub`
--

INSERT INTO `appendix_seven_table_20_sub` (`id`, `activities_twenty`, `results_indicative_twenty`, `respective_strategic_twenty`, `unit_measurement_twenty`, `revised_targets1_twenty`, `revised_targets2_twenty`, `actual_achievement_twenty`, `goals_twenty`, `medium_target_twenty`, `medium_target1_twenty`, `medium_target2_twenty`, `twenty_row_id`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(16, NULL, 'আদায়যোগ্য ঋণ হতে আদায়ের পরিমান', '৫1141', '1a51af51', '14d1vd11', '414d1vd414', '14v1v414', '14v14v14v14', '14v1v4141', '41v4fv1f4v1', '২১৫', 64, 'form113521465', 1, 24, '2022-01-20 11:11:35', '2022-01-20 11:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_seven_table_21`
--

CREATE TABLE `appendix_seven_table_21` (
  `id` int(11) NOT NULL,
  `operation_twentyone` text DEFAULT NULL,
  `activities_twentyone` text DEFAULT NULL,
  `authentic_twentyone` text DEFAULT NULL,
  `budget_twentyone` text DEFAULT NULL,
  `revised_budget_twentyone` text DEFAULT NULL,
  `estimate_twentyone` text DEFAULT NULL,
  `estimate_twentyone_1` text DEFAULT NULL,
  `estimate_twentyone_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 24,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_seven_table_21`
--

INSERT INTO `appendix_seven_table_21` (`id`, `operation_twentyone`, `activities_twentyone`, `authentic_twentyone`, `budget_twentyone`, `revised_budget_twentyone`, `estimate_twentyone`, `estimate_twentyone_1`, `estimate_twentyone_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(3, 'fafaafaf', 'afafaf', 'fafafa', 'faaffa', NULL, NULL, NULL, NULL, 'form580042534', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form580042534', 1, 24, '2022-01-19 10:58:00', '2022-01-19 10:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_six_claims`
--

CREATE TABLE `appendix_six_claims` (
  `id` int(11) NOT NULL,
  `budget_sub` text DEFAULT NULL,
  `claim_1` text DEFAULT NULL,
  `claim_3` text DEFAULT NULL,
  `claim_3_1` text DEFAULT NULL,
  `claim_1_head` text DEFAULT NULL,
  `claim_2_head` text DEFAULT NULL,
  `claim_3_head` text DEFAULT NULL,
  `claim_eng` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 23,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_six_claims`
--

INSERT INTO `appendix_six_claims` (`id`, `budget_sub`, `claim_1`, `claim_3`, `claim_3_1`, `claim_1_head`, `claim_2_head`, `claim_3_head`, `claim_eng`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(939, '১০। জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ। (বাৎসরিক)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(940, '১১। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/বিভাগ/দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ। (বাৎসরিক)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(941, NULL, NULL, NULL, NULL, '১।   আর্থিক প্রতিষ্ঠান বিভাগের প্রধান কার্যাবলি:', NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(942, NULL, NULL, NULL, NULL, NULL, '২।   ২০১৬-১৭ অর্থবছর থেকে ২০১৯-২০ অর্থবছরের সংশোধিত বাজেটে (পরিচালন ও উন্নয়ন) এবং ২০১৯-২০ অর্থবছরের প্রস্তাবিত বাজেটে (পরিচালন ও উন্নয়ন) আর্থিক প্রতিষ্ঠান বিভাগের অনুকূলে প্রদত্ত বরাদ্দের পরিমাণ নিম্নরূপ:', NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(943, NULL, NULL, NULL, NULL, NULL, NULL, '৩।   ২০১৯-২০  অর্থবছরে নিম্নবর্ণিত উল্লেখযোগ্য কার্যাবলি/প্রকল্প/কর্মসূচি সম্পাদন/বাস্তবায়ন করা হবে:', NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(944, NULL, 'ক)	ব্যাংক, বীমা, পুঁজিবাজার ও অন্যান্য আর্থিক প্রতিষ্ঠান ও সংশ্লিষ্ট সেবা সম্পর্কিত নীতি, আইন, বিধি, প্রবিধি প্রণয়ন ও সংশোধন;', NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(945, NULL, 'খ)	আর্থিক বাজার ও প্রতিষ্ঠান উন্নয়ন;', NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(946, NULL, 'গ)	আর্থিক খাতের নিয়ন্ত্রক প্রতিষ্ঠানসমূহের কাজের সমন্বয় সাধন;', NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(947, NULL, 'ঘ)	রাষ্ট্রমালিকানাধীন ব্যাংক ও আর্থিক প্রতিষ্ঠানের কার্যক্রমের সামগ্রিক পরিবীক্ষণ ও মুল্যায়ন;', NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(948, NULL, 'ঙ) 	পুঁজিবাজারে নতুন প্রোডাক্ট প্রচলনের মাধ্যমে বাজার সম্প্রসারণ ও উত্তম মৌলভিত্তিসম্পন্ন সিকিউরিটিজ সরবরাহ বৃদ্ধি;', NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(949, NULL, 'চ)	বীমা খাতের সংস্কারের মাধ্যমে জনগণের আস্থা বৃদ্ধি এবং বীমার আওতা বৃদ্ধির লক্ষ্যে ব্যাপক জনসচেতনতা সৃষ্টি;', NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(950, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', NULL, NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(951, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ক)	বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ আইন, ২০১০ এবং বীমা আইন, ২০১০ এর আলোকে প্রয়োজনীয় বিধি-বিধান প্রণয়ন ও কার্যকর  তদারকি;', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(952, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'খ)	জাতীয় বীমা নীতি ২০১৪ এর সময়াবদ্ধ কর্মপরিকল্পনার বাস্তবায়ন;', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(953, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'গ)	দেশের পুঁজিবাজারকে আরো দক্ষ, স্বচ্ছ ও গতিশীল করে বিনিয়োগকারীদের স্বার্থ রক্ষার্থে সংস্কারমূলক কার্যক্রম অব্যাহত রাখা;', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(954, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঘ)	রাষ্ট্রমালিকানাধীন বাণিজ্যিক ব্যাংক, বিশেষায়িত ব্যাংক ও আর্থিক  প্রতিষ্ঠানসমূহের কার্যক্রম পরিবীক্ষণ ও সংশ্লিষ্ট আইনসমূহের সংশোধন;', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(955, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঙ)	মাইক্রোক্রেডিট রেগুলেটরি অথরিটি (এমআরএ), বাংলাদেশ ইনস্টিটিউট অব ক্যাপিটাল মার্কেট (বিআইসিএম), এবং বাংলাদেশ ইনস্যুরেন্স একাডেমি  (বিআইএ)-এর কার্যক্রম পরিবীক্ষণ ও মূল্যায়ন;', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(956, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'চ)	বাংলাদেশ ব্যাংক ও ইনভেস্টমেন্ট কর্পোরেশন অব বাংলাদেশ (আইসিবি)-এর ব্যবস্থাপনায় পরিচালিত সম-মূলধন উন্নয়ন তহবিল (কৃষি/আইটি) কার্যক্রম পরিবীক্ষণ;', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(957, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(958, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ছ)	পল্লী কর্ম-সহায়ক ফাউন্ডেশন (পিকেএসএফ), সোশ্যাল ডেভেলপমেন্ট ফাউন্ডেশন (এসডিএফ), বাংলাদেশ এনজিও ফাউন্ডেশন (বিএনএফ) এবং বাংলাদেশ মিউনিসিপ্যাল ডেভেলপমেন্ট ফান্ড (বিএমডিএফ)-কর্তৃক বাস্তবায়নাধীন কর্মসূচিসমুহের জন্য (সামাজিক নিরাপত্তা কর্মসূচি ও আর্থিক অন্তর্ভুক্তি সম্পর্কিত কার্যাবলিসহ) বৈদেশিক ঋণ প্রাপ্তি, ঋণ চুক্তি, অথরাইজেশন সংক্রান্ত কার্যক্রম সমন্বয় ও পরিবীক্ষণ;', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(959, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'জ)	বাংলাদেশ ব্যাংক কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত নন-এডিপি প্রকল্প/কর্মসূচিসমূহ: ফাইন্যান্সিং ব্রিক কিলন ইফিসিয়েন্সি ইমপ্রুভমেন্ট প্রজেক্ট (বিকেইআইপি); ফরেন ডাইরেক্ট ইনভেস্টমেন্ট প্রমোশন প্রজেক্ট, আরবান বিল্ডিং সেফটি প্রোজেক্ট; ফিন্যান্সিয়াল সেক্টর সাপোর্ট প্রজেক্ট (এফএসএসপি); সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট-২ (এসএমইডিপি-২); স্মল এন্ড মার্জিনাল সাইজড ফারমার্স এগ্রিকালচারাল প্রোডাক্টিভিটি ইমপ্রুভমেন্ট এন্ড ডাইভারসিফিকেশন ফাইন্যান্সিং প্রজেক্ট; বাংলাদেশ তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প এবং বাংলাদেশ হাউস বিল্ডিং ফাইন্যান্স কর্পোরেশন কর্তৃক বাস্তবায়নাধীন রুরাল এন্ড পেরি আরবান হাউজিং ফাইন্যান্স প্রোজেক্ট এর বরাদ্দ নির্ধারণ, অথরাইজেশন, সমন্বয় ও পরিবীক্ষণ।', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(960, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', NULL, NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(961, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'I.	ফিনান্সিয়াল সেক্টর সাপোর্ট প্রজেক্ট (এফএসএসপি)- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(962, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'II.	ক্যাপিটাল মার্কেট ডেভেলপমেন্ট প্রজেক্ট-৩- বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশন;', NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(963, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'III.	বাংলাদেশ তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(964, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'IV.	সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট-২ (এসএমইডিপি-২)- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(965, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'V.	বাংলাদেশ বীমা খাত উন্নয়ন প্রকল্প- বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ।', NULL, NULL, NULL, NULL, '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(966, '১০। জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ। (বাৎসরিক)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(967, '১১। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/বিভাগ/দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ। (বাৎসরিক)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(968, NULL, NULL, NULL, NULL, '১।   আর্থিক প্রতিষ্ঠান বিভাগের প্রধান কার্যাবলি:', NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(969, NULL, NULL, NULL, NULL, NULL, '২।   ২০১৬-১৭ অর্থবছর থেকে ২০১৯-২০ অর্থবছরের সংশোধিত বাজেটে (পরিচালন ও উন্নয়ন) এবং ২০১৯-২০ অর্থবছরের প্রস্তাবিত বাজেটে (পরিচালন ও উন্নয়ন) আর্থিক প্রতিষ্ঠান বিভাগের অনুকূলে প্রদত্ত বরাদ্দের পরিমাণ নিম্নরূপ:', NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(970, NULL, NULL, NULL, NULL, NULL, NULL, '৩।   ২০১৯-২০  অর্থবছরে নিম্নবর্ণিত উল্লেখযোগ্য কার্যাবলি/প্রকল্প/কর্মসূচি সম্পাদন/বাস্তবায়ন করা হবে:', NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(971, NULL, 'ক)	ব্যাংক, বীমা, পুঁজিবাজার ও অন্যান্য আর্থিক প্রতিষ্ঠান ও সংশ্লিষ্ট সেবা সম্পর্কিত নীতি, আইন, বিধি, প্রবিধি প্রণয়ন ও সংশোধন;', NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(972, NULL, 'খ)	আর্থিক বাজার ও প্রতিষ্ঠান উন্নয়ন;', NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(973, NULL, 'গ)	আর্থিক খাতের নিয়ন্ত্রক প্রতিষ্ঠানসমূহের কাজের সমন্বয় সাধন;', NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(974, NULL, 'ঘ)	রাষ্ট্রমালিকানাধীন ব্যাংক ও আর্থিক প্রতিষ্ঠানের কার্যক্রমের সামগ্রিক পরিবীক্ষণ ও মুল্যায়ন;', NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(975, NULL, 'ঙ) 	পুঁজিবাজারে নতুন প্রোডাক্ট প্রচলনের মাধ্যমে বাজার সম্প্রসারণ ও উত্তম মৌলভিত্তিসম্পন্ন সিকিউরিটিজ সরবরাহ বৃদ্ধি;', NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(976, NULL, 'চ)	বীমা খাতের সংস্কারের মাধ্যমে জনগণের আস্থা বৃদ্ধি এবং বীমার আওতা বৃদ্ধির লক্ষ্যে ব্যাপক জনসচেতনতা সৃষ্টি;', NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(977, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', NULL, NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(978, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ক)	বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ আইন, ২০১০ এবং বীমা আইন, ২০১০ এর আলোকে প্রয়োজনীয় বিধি-বিধান প্রণয়ন ও কার্যকর  তদারকি;', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(979, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'খ)	জাতীয় বীমা নীতি ২০১৪ এর সময়াবদ্ধ কর্মপরিকল্পনার বাস্তবায়ন;', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(980, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'গ)	দেশের পুঁজিবাজারকে আরো দক্ষ, স্বচ্ছ ও গতিশীল করে বিনিয়োগকারীদের স্বার্থ রক্ষার্থে সংস্কারমূলক কার্যক্রম অব্যাহত রাখা;', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(981, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঘ)	রাষ্ট্রমালিকানাধীন বাণিজ্যিক ব্যাংক, বিশেষায়িত ব্যাংক ও আর্থিক  প্রতিষ্ঠানসমূহের কার্যক্রম পরিবীক্ষণ ও সংশ্লিষ্ট আইনসমূহের সংশোধন;', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(982, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঙ)	মাইক্রোক্রেডিট রেগুলেটরি অথরিটি (এমআরএ), বাংলাদেশ ইনস্টিটিউট অব ক্যাপিটাল মার্কেট (বিআইসিএম), এবং বাংলাদেশ ইনস্যুরেন্স একাডেমি  (বিআইএ)-এর কার্যক্রম পরিবীক্ষণ ও মূল্যায়ন;', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(983, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'চ)	বাংলাদেশ ব্যাংক ও ইনভেস্টমেন্ট কর্পোরেশন অব বাংলাদেশ (আইসিবি)-এর ব্যবস্থাপনায় পরিচালিত সম-মূলধন উন্নয়ন তহবিল (কৃষি/আইটি) কার্যক্রম পরিবীক্ষণ;', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(984, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(985, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ছ)	পল্লী কর্ম-সহায়ক ফাউন্ডেশন (পিকেএসএফ), সোশ্যাল ডেভেলপমেন্ট ফাউন্ডেশন (এসডিএফ), বাংলাদেশ এনজিও ফাউন্ডেশন (বিএনএফ) এবং বাংলাদেশ মিউনিসিপ্যাল ডেভেলপমেন্ট ফান্ড (বিএমডিএফ)-কর্তৃক বাস্তবায়নাধীন কর্মসূচিসমুহের জন্য (সামাজিক নিরাপত্তা কর্মসূচি ও আর্থিক অন্তর্ভুক্তি সম্পর্কিত কার্যাবলিসহ) বৈদেশিক ঋণ প্রাপ্তি, ঋণ চুক্তি, অথরাইজেশন সংক্রান্ত কার্যক্রম সমন্বয় ও পরিবীক্ষণ;', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(986, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'জ)	বাংলাদেশ ব্যাংক কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত নন-এডিপি প্রকল্প/কর্মসূচিসমূহ: ফাইন্যান্সিং ব্রিক কিলন ইফিসিয়েন্সি ইমপ্রুভমেন্ট প্রজেক্ট (বিকেইআইপি); ফরেন ডাইরেক্ট ইনভেস্টমেন্ট প্রমোশন প্রজেক্ট, আরবান বিল্ডিং সেফটি প্রোজেক্ট; ফিন্যান্সিয়াল সেক্টর সাপোর্ট প্রজেক্ট (এফএসএসপি); সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট-২ (এসএমইডিপি-২); স্মল এন্ড মার্জিনাল সাইজড ফারমার্স এগ্রিকালচারাল প্রোডাক্টিভিটি ইমপ্রুভমেন্ট এন্ড ডাইভারসিফিকেশন ফাইন্যান্সিং প্রজেক্ট; বাংলাদেশ তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প এবং বাংলাদেশ হাউস বিল্ডিং ফাইন্যান্স কর্পোরেশন কর্তৃক বাস্তবায়নাধীন রুরাল এন্ড পেরি আরবান হাউজিং ফাইন্যান্স প্রোজেক্ট এর বরাদ্দ নির্ধারণ, অথরাইজেশন, সমন্বয় ও পরিবীক্ষণ।', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(987, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', NULL, NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(988, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'I.	ফিনান্সিয়াল সেক্টর সাপোর্ট প্রজেক্ট (এফএসএসপি)- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(989, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'II.	ক্যাপিটাল মার্কেট ডেভেলপমেন্ট প্রজেক্ট-৩- বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশন;', NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(990, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'III.	বাংলাদেশ তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(991, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'IV.	সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট-২ (এসএমইডিপি-২)- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(992, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'V.	বাংলাদেশ বীমা খাত উন্নয়ন প্রকল্প- বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ।', NULL, NULL, NULL, NULL, '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(993, '১০। জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ। (বাৎসরিক)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(994, '১১। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/বিভাগ/দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ। (বাৎসরিক)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(995, NULL, NULL, NULL, NULL, '১।   আর্থিক প্রতিষ্ঠান বিভাগের প্রধান কার্যাবলি:', NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(996, NULL, NULL, NULL, NULL, NULL, '২।   ২০১৬-১৭ অর্থবছর থেকে ২০১৯-২০ অর্থবছরের সংশোধিত বাজেটে (পরিচালন ও উন্নয়ন) এবং ২০১৯-২০ অর্থবছরের প্রস্তাবিত বাজেটে (পরিচালন ও উন্নয়ন) আর্থিক প্রতিষ্ঠান বিভাগের অনুকূলে প্রদত্ত বরাদ্দের পরিমাণ নিম্নরূপ:', NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(997, NULL, NULL, NULL, NULL, NULL, NULL, '৩।   ২০১৯-২০  অর্থবছরে নিম্নবর্ণিত উল্লেখযোগ্য কার্যাবলি/প্রকল্প/কর্মসূচি সম্পাদন/বাস্তবায়ন করা হবে:', NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(998, NULL, 'ক)	ব্যাংক, বীমা, পুঁজিবাজার ও অন্যান্য আর্থিক প্রতিষ্ঠান ও সংশ্লিষ্ট সেবা সম্পর্কিত নীতি, আইন, বিধি, প্রবিধি প্রণয়ন ও সংশোধন;', NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(999, NULL, 'খ)	আর্থিক বাজার ও প্রতিষ্ঠান উন্নয়ন;', NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1000, NULL, 'গ)	আর্থিক খাতের নিয়ন্ত্রক প্রতিষ্ঠানসমূহের কাজের সমন্বয় সাধন;', NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1001, NULL, 'ঘ)	রাষ্ট্রমালিকানাধীন ব্যাংক ও আর্থিক প্রতিষ্ঠানের কার্যক্রমের সামগ্রিক পরিবীক্ষণ ও মুল্যায়ন;', NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1002, NULL, 'ঙ) 	পুঁজিবাজারে নতুন প্রোডাক্ট প্রচলনের মাধ্যমে বাজার সম্প্রসারণ ও উত্তম মৌলভিত্তিসম্পন্ন সিকিউরিটিজ সরবরাহ বৃদ্ধি;', NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1003, NULL, 'চ)	বীমা খাতের সংস্কারের মাধ্যমে জনগণের আস্থা বৃদ্ধি এবং বীমার আওতা বৃদ্ধির লক্ষ্যে ব্যাপক জনসচেতনতা সৃষ্টি;', NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1004, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', NULL, NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1005, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ক)	বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ আইন, ২০১০ এবং বীমা আইন, ২০১০ এর আলোকে প্রয়োজনীয় বিধি-বিধান প্রণয়ন ও কার্যকর  তদারকি;', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1006, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'খ)	জাতীয় বীমা নীতি ২০১৪ এর সময়াবদ্ধ কর্মপরিকল্পনার বাস্তবায়ন;', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1007, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'গ)	দেশের পুঁজিবাজারকে আরো দক্ষ, স্বচ্ছ ও গতিশীল করে বিনিয়োগকারীদের স্বার্থ রক্ষার্থে সংস্কারমূলক কার্যক্রম অব্যাহত রাখা;', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1008, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঘ)	রাষ্ট্রমালিকানাধীন বাণিজ্যিক ব্যাংক, বিশেষায়িত ব্যাংক ও আর্থিক  প্রতিষ্ঠানসমূহের কার্যক্রম পরিবীক্ষণ ও সংশ্লিষ্ট আইনসমূহের সংশোধন;', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1009, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঙ)	মাইক্রোক্রেডিট রেগুলেটরি অথরিটি (এমআরএ), বাংলাদেশ ইনস্টিটিউট অব ক্যাপিটাল মার্কেট (বিআইসিএম), এবং বাংলাদেশ ইনস্যুরেন্স একাডেমি  (বিআইএ)-এর কার্যক্রম পরিবীক্ষণ ও মূল্যায়ন;', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1010, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'চ)	বাংলাদেশ ব্যাংক ও ইনভেস্টমেন্ট কর্পোরেশন অব বাংলাদেশ (আইসিবি)-এর ব্যবস্থাপনায় পরিচালিত সম-মূলধন উন্নয়ন তহবিল (কৃষি/আইটি) কার্যক্রম পরিবীক্ষণ;', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1011, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1012, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ছ)	পল্লী কর্ম-সহায়ক ফাউন্ডেশন (পিকেএসএফ), সোশ্যাল ডেভেলপমেন্ট ফাউন্ডেশন (এসডিএফ), বাংলাদেশ এনজিও ফাউন্ডেশন (বিএনএফ) এবং বাংলাদেশ মিউনিসিপ্যাল ডেভেলপমেন্ট ফান্ড (বিএমডিএফ)-কর্তৃক বাস্তবায়নাধীন কর্মসূচিসমুহের জন্য (সামাজিক নিরাপত্তা কর্মসূচি ও আর্থিক অন্তর্ভুক্তি সম্পর্কিত কার্যাবলিসহ) বৈদেশিক ঋণ প্রাপ্তি, ঋণ চুক্তি, অথরাইজেশন সংক্রান্ত কার্যক্রম সমন্বয় ও পরিবীক্ষণ;', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1013, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'জ)	বাংলাদেশ ব্যাংক কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত নন-এডিপি প্রকল্প/কর্মসূচিসমূহ: ফাইন্যান্সিং ব্রিক কিলন ইফিসিয়েন্সি ইমপ্রুভমেন্ট প্রজেক্ট (বিকেইআইপি); ফরেন ডাইরেক্ট ইনভেস্টমেন্ট প্রমোশন প্রজেক্ট, আরবান বিল্ডিং সেফটি প্রোজেক্ট; ফিন্যান্সিয়াল সেক্টর সাপোর্ট প্রজেক্ট (এফএসএসপি); সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট-২ (এসএমইডিপি-২); স্মল এন্ড মার্জিনাল সাইজড ফারমার্স এগ্রিকালচারাল প্রোডাক্টিভিটি ইমপ্রুভমেন্ট এন্ড ডাইভারসিফিকেশন ফাইন্যান্সিং প্রজেক্ট; বাংলাদেশ তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প এবং বাংলাদেশ হাউস বিল্ডিং ফাইন্যান্স কর্পোরেশন কর্তৃক বাস্তবায়নাধীন রুরাল এন্ড পেরি আরবান হাউজিং ফাইন্যান্স প্রোজেক্ট এর বরাদ্দ নির্ধারণ, অথরাইজেশন, সমন্বয় ও পরিবীক্ষণ।', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1014, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', NULL, NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1015, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'I.	ফিনান্সিয়াল সেক্টর সাপোর্ট প্রজেক্ট (এফএসএসপি)- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1016, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'II.	ক্যাপিটাল মার্কেট ডেভেলপমেন্ট প্রজেক্ট-৩- বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশন;', NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1017, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'III.	বাংলাদেশ তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1018, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'IV.	সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট-২ (এসএমইডিপি-২)- বাংলাদেশ ব্যাংক;', NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(1019, NULL, 'ছ)	ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণের মাধ্যমে আত্মকর্মসংস্থান সৃষ্টি ও দারিদ্র বিমোচন।', 'ঝ)		বাংলাদেশ ব্যাংক, বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশিন এবং বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ কর্তৃক বাস্তবায়নাধীন নিম্নোক্ত এডিপিভুক্ত উন্নয়ন প্রকল্পসমূহের বরাদ্দ নির্ধারণ ও অথরাইজেশন, সমন্বয় কার্যক্রম পরিবীক্ষণ:', 'V.	বাংলাদেশ বীমা খাত উন্নয়ন প্রকল্প- বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ।', NULL, NULL, NULL, NULL, '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_six_claims_table`
--

CREATE TABLE `appendix_six_claims_table` (
  `id` int(11) NOT NULL,
  `fiscal_year` text DEFAULT NULL,
  `topic` text DEFAULT NULL,
  `operating` text DEFAULT NULL,
  `development` text DEFAULT NULL,
  `total` text DEFAULT NULL,
  `recurring` text DEFAULT NULL,
  `capital` text DEFAULT NULL,
  `asset` text DEFAULT NULL,
  `liability` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 23,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_six_claims_table`
--

INSERT INTO `appendix_six_claims_table` (`id`, `fiscal_year`, `topic`, `operating`, `development`, `total`, `recurring`, `capital`, `asset`, `liability`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(61, '2016-17', 'সংশোধিত বাজেট', '158,24,80', '1950,30,50', '2108,55,30', '253,47,30', '41,00', '1854,67,00', '0', '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(62, '2017-18', 'সংশোধিত বাজেট', '358,93,66', '1985,56,00', '2344,49,66', '373,37,66', '12,65,50', '1958,46,50', '0', '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(63, '2018-19', 'সংশোধিত বাজেট', '439,04,00', '2183,05,00', '2622,09,00', '341,39,60', '126,02,00', '2154,67,40', '0', '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(64, '২০১৯-২০', 'বাজেট', '১৩৮,৯৭,০০', '২৯০২,৫৯,০০', '৩০৪১,৫৬,০০', '২২৪,২১,০০', '৭০,৭৭,০০', '২৭৪৬,৫৮,০০', '0', '03_47_40901', 1, 23, '2022-01-10 09:03:47', '2022-01-10 09:03:47'),
(65, '2016-17', 'সংশোধিত বাজেট', '158,24,80', '1950,30,50', '2108,55,30', '253,47,30', '41,00', '1854,67,00', '0', '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(66, '2017-18', 'সংশোধিত বাজেট', '358,93,66', '1985,56,00', '2344,49,66', '373,37,66', '12,65,50', '1958,46,50', '0', '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(67, '2018-19', 'সংশোধিত বাজেট', '439,04,00', '2183,05,00', '2622,09,00', '341,39,60', '126,02,00', '2154,67,40', '0', '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(68, '২০১৯-২০', 'বাজেট', '১৩৮,৯৭,০০', '২৯০২,৫৯,০০', '৩০৪১,৫৬,০০', '২২৪,২১,০০', '৭০,৭৭,০০', '২৭৪৬,৫৮,০০', '0', '06_43_44640', 1, 23, '2022-01-10 09:06:43', '2022-01-10 09:06:43'),
(69, '2016-17', 'সংশোধিত বাজেট', '158,24,80', '1950,30,50', '2108,55,30', '253,47,30', '41,00', '1854,67,00', '0', '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(70, '2017-18', 'সংশোধিত বাজেট', '358,93,66', '1985,56,00', '2344,49,66', '373,37,66', '12,65,50', '1958,46,50', '0', '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(71, '2018-19', 'সংশোধিত বাজেট', '439,04,00', '2183,05,00', '2622,09,00', '341,39,60', '126,02,00', '2154,67,40', '0', '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02'),
(72, '২০১৯-২০', 'বাজেট', '১৩৮,৯৭,০০', '২৯০২,৫৯,০০', '৩০৪১,৫৬,০০', '২২৪,২১,০০', '৭০,৭৭,০০', '২৭৪৬,৫৮,০০', '0', '08_02_97340', 1, 23, '2022-01-10 09:08:02', '2022-01-10 09:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_three_mis`
--

CREATE TABLE `appendix_three_mis` (
  `id` int(11) NOT NULL,
  `budget` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 20,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_three_mis`
--

INSERT INTO `appendix_three_mis` (`id`, `budget`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(23, NULL, '27_10_75599', 1, 20, '2022-01-09 09:27:10', '2022-01-09 09:27:10'),
(24, NULL, '27_10_75599', 1, 20, '2022-01-09 09:27:10', '2022-01-09 09:27:10'),
(25, NULL, '43_33_40640', 1, 20, '2022-01-09 09:43:33', '2022-01-09 09:43:33'),
(26, NULL, '43_33_40640', 1, 20, '2022-01-09 09:43:33', '2022-01-09 09:43:33'),
(27, NULL, '47_12_57790', 1, 20, '2022-01-09 09:47:12', '2022-01-09 09:47:12'),
(28, NULL, '47_12_57790', 1, 20, '2022-01-09 09:47:12', '2022-01-09 09:47:12'),
(29, NULL, '47_44_55631', 1, 20, '2022-01-09 09:47:44', '2022-01-09 09:47:44'),
(30, NULL, '47_44_55631', 1, 20, '2022-01-09 09:47:44', '2022-01-09 09:47:44'),
(31, '৫। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', '48_14_26118', 1, 20, '2022-01-09 09:48:14', '2022-01-09 09:48:14'),
(32, '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', '48_14_26118', 1, 20, '2022-01-09 09:48:14', '2022-01-09 09:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_three_table`
--

CREATE TABLE `appendix_three_table` (
  `id` int(11) NOT NULL,
  `branch` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 20,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_three_table`
--

INSERT INTO `appendix_three_table` (`id`, `branch`, `budget`, `target`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_fourth_quarter`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, 'আর্থিক প্রতিষ্ঠান বিভাগ', NULL, 'লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, '43_33_40640', 1, 20, '2022-01-09 09:43:33', '2022-01-09 09:43:33'),
(2, 'আর্থিক প্রতিষ্ঠান বিভাগ', NULL, 'লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, '47_12_57790', 1, 20, '2022-01-09 09:47:12', '2022-01-09 09:47:12'),
(3, 'আর্থিক প্রতিষ্ঠান বিভাগ', NULL, 'লক্ষ্যমাত্রা', NULL, NULL, NULL, NULL, NULL, '47_44_55631', 1, 20, '2022-01-09 09:47:44', '2022-01-09 09:47:44'),
(4, 'আর্থিক প্রতিষ্ঠান বিভাগ', NULL, 'লক্ষ্যমাত্রা', 'ndcjdc', NULL, NULL, NULL, NULL, '48_14_26118', 1, 20, '2022-01-09 09:48:14', '2022-01-09 09:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_two_mis`
--

CREATE TABLE `appendix_two_mis` (
  `id` int(11) NOT NULL,
  `appendix_one_subject` text DEFAULT NULL,
  `appendix_two_subject` text DEFAULT NULL,
  `appendix_one_ka` text DEFAULT NULL,
  `appendix_one_kha` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 19,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_two_mis`
--

INSERT INTO `appendix_two_mis` (`id`, `appendix_one_subject`, `appendix_two_subject`, `appendix_one_ka`, `appendix_one_kha`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(9, '১।আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 'jhcwdcnjdcnjcndchdcbhudcdchujcbduhdcbhcd', NULL, NULL, '00_30_8366', 1, 19, '2022-01-06 11:00:30', '2022-01-06 11:00:30'),
(10, '১।আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', NULL, NULL, '00_30_8366', 1, 19, '2022-01-06 11:00:30', '2022-01-06 11:00:30'),
(11, '১।আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 'সংশোধিত ২০১৯-২০, প্রস্তাবিত ২০২০-২১ এবং প্রক্ষেপন ২০২১-২২ ও ২০২২-২৩', NULL, '00_30_8366', 1, 19, '2022-01-06 11:00:30', '2022-01-06 11:00:30'),
(12, '৩।আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', '৪। মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 'সংশোধিত ২০১৯-২০, প্রস্তাবিত ২০২০-২১ এবং প্রক্ষেপন ২০২১-২২ ও ২০২২-২৩', 'সংশোধিত ২০১৯-২০, প্রস্তাবিত ২০২০-২১ এবং প্রক্ষেপন ২০২১-২২ ও ২০২২-২৩', '00_30_8366', 1, 19, '2022-01-06 11:00:30', '2022-01-06 11:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_two_table_ka`
--

CREATE TABLE `appendix_two_table_ka` (
  `id` int(11) NOT NULL,
  `ministry` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `revised` text DEFAULT NULL,
  `proposed_budget` text DEFAULT NULL,
  `projection_1` text DEFAULT NULL,
  `projection_2` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 19,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_two_table_ka`
--

INSERT INTO `appendix_two_table_ka` (`id`, `ministry`, `budget`, `revised`, `proposed_budget`, `projection_1`, `projection_2`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, NULL, NULL, NULL, NULL, '00_30_8366', 1, 19, '2022-01-06 11:00:30', '2022-01-06 11:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `appendix_two_table_kha`
--

CREATE TABLE `appendix_two_table_kha` (
  `id` int(11) NOT NULL,
  `ministryss` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `revised` text DEFAULT NULL,
  `revenue` text DEFAULT NULL,
  `gob_1` text DEFAULT NULL,
  `gob_2` text DEFAULT NULL,
  `rpa_1` text DEFAULT NULL,
  `dpa_1` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `total` text DEFAULT NULL,
  `projection_1` text DEFAULT NULL,
  `projection_2` text DEFAULT NULL,
  `capital` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 19,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appendix_two_table_kha`
--

INSERT INTO `appendix_two_table_kha` (`id`, `ministryss`, `budget`, `revised`, `revenue`, `gob_1`, `gob_2`, `rpa_1`, `dpa_1`, `unique_form_id`, `total`, `projection_1`, `projection_2`, `capital`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'রাজস্ব', NULL, NULL, NULL, NULL, '00_30_8366', NULL, NULL, NULL, NULL, 1, 19, '2022-01-06 11:00:30', '2022-01-06 11:00:30'),
(2, NULL, NULL, NULL, 'মূলধন', NULL, NULL, NULL, NULL, '00_30_8366', NULL, NULL, NULL, NULL, 1, 19, '2022-01-06 11:00:30', '2022-01-06 11:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `autonomous_and_other_institutions`
--

CREATE TABLE `autonomous_and_other_institutions` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 9,
  `years` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autonomous_and_other_institutions`
--

INSERT INTO `autonomous_and_other_institutions` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `status`, `form_id`, `years`, `created_at`, `updated_at`) VALUES
(89, 'বাংলাদেশ ইনস্টিটিউট অব ক্যাপিটাল মার্কেট', 'Lncjndckdc', 'লক্ষ্যমাত্রা', '২৫০০০', '২৫০০০', '২৫০০০', '২৫০০০', '১০০০০০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(90, 'বাংলাদেশ ইন্সুরেন্স একাডেমি', '১৮০০০', 'লক্ষ্যমাত্রা', '৪৯০০', '৪১০০', '৪১০০', '৪৯০০', '১৮০০০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(91, 'বীমা উন্নয়ন ও নিয়ন্ত্রণ কর্তৃপক্ষ', '১০', 'লক্ষ্যমাত্রা', '০', '০', '০', '১০', '১০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(92, 'বাংলাদেশ মিউনিসিপাল ডেভেলপমেন্ট ফান্ড (বিএমডিএফ)', '৩৫০০০', 'লক্ষ্যমাত্রা', '৮৭৫০', '৮৭৫০', '৮৭৫০', '৮৭৫০', '৩৫০০০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(93, 'বাংলাদেশ ব্যাংক', '১০', 'লক্ষ্যমাত্রা', '০', '০', '০', '১০', '১০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(94, 'বাংলাদেশ সিকিউরিটিজ অ্যান্ড এক্সচেঞ্জ কমিশন', '১০', 'লক্ষ্যমাত্রা', '০', '০', '০', '১০', '১০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(95, 'সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট (এসএমইডিপি-২)', '৯৫৭৯০০', 'লক্ষ্যমাত্রা', '২৬০০০০', '২৬০০০০', '২৬০০০০', '১৭৭৯০০', '৯৫৭৯০০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(96, 'মোট স্বায়ত্তশাসিত ও অন্যান্য প্রতিষ্ঠান', '১১১০৯৪০', 'লক্ষ্যমাত্রা', '২৯৮৬৫০', '২৯৭৮৫০', '২৯৭৮৫০', '২১৬৫৯০', '১১১০৯৪০', 'Form-3055851156', 0, 9, '২০২৩-২৪', '2022-01-30 11:21:38', '2022-01-30 11:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `autonomous_and_other_institutions_sub_rows`
--

CREATE TABLE `autonomous_and_other_institutions_sub_rows` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `years` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 9,
  `row_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autonomous_and_other_institutions_sub_rows`
--

INSERT INTO `autonomous_and_other_institutions_sub_rows` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `years`, `status`, `form_id`, `row_id`, `created_at`, `updated_at`) VALUES
(65, NULL, NULL, 'প্রকৃত ব্যয়', '২৯৮৭৫', NULL, NULL, NULL, '২৯৮৭৫', 'Form-3055851156', NULL, 1, 9, '89', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(66, NULL, NULL, 'শতকরা হার', '১২০%', '০%', '০%', '০%', '৩০%', 'Form-3055851156', NULL, 1, 9, '89', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(67, NULL, NULL, 'প্রকৃত ব্যয়', '৪৬৩১.০৭', NULL, NULL, NULL, '৪৬৩১', 'Form-3055851156', NULL, 1, 9, '90', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(68, NULL, NULL, 'শতকরা হার', '৯৫%', '০%', '০%', '০%', '২৬%', 'Form-3055851156', NULL, 1, 9, '90', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(69, NULL, NULL, 'প্রকৃত ব্যয়', '০', NULL, NULL, NULL, '০', 'Form-3055851156', NULL, 1, 9, '91', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(70, NULL, NULL, 'শতকরা হার', '০%', '০%', '০%', '০%', '০%', 'Form-3055851156', NULL, 1, 9, '91', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(71, NULL, NULL, 'প্রকৃত ব্যয়', '৮৬৭৪', '০', '০', '০', '৮৬৭৪', 'Form-3055851156', NULL, 1, 9, '92', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(72, NULL, NULL, 'শতকরা হার', '৯৯.১৩%', '০.০০%', '০.০০%', '০.০০%', '২৫%', 'Form-3055851156', NULL, 1, 9, '92', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(73, NULL, NULL, 'প্রকৃত ব্যয়', '০', NULL, NULL, NULL, '০', 'Form-3055851156', NULL, 1, 9, '93', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(74, NULL, NULL, 'শতকরা হার', '০%', '০%', '০%', '০%', '০%', 'Form-3055851156', NULL, 1, 9, '93', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(75, NULL, NULL, 'প্রকৃত ব্যয়', '০', NULL, NULL, NULL, '০', 'Form-3055851156', NULL, 1, 9, '94', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(76, NULL, NULL, 'শতকরা হার', '০%', '০%', '০%', '০%', '০%', 'Form-3055851156', NULL, 1, 9, '94', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(77, NULL, NULL, 'প্রকৃত ব্যয়', '২৫৪১৪১', NULL, NULL, NULL, '২৫৪১৪১', 'Form-3055851156', NULL, 1, 9, '95', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(78, NULL, NULL, 'শতকরা হার', '৯৮%', '০%', '০%', '০%', '২৭%', 'Form-3055851156', NULL, 1, 9, '95', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(79, NULL, NULL, 'প্রকৃত ব্যয়', '২৯৭৩২১', '০', '০', '০', '২৯৭৩২১', 'Form-3055851156', NULL, 1, 9, '96', '2022-01-30 11:21:38', '2022-01-30 11:21:38'),
(80, NULL, NULL, 'শতকরা হার', '৯৯.৫৬%', '০', '০', '০', '২৬.৭৬%', 'Form-3055851156', NULL, 1, 9, '96', '2022-01-30 11:21:38', '2022-01-30 11:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `budget_branch_relevant_apareportformat`
--

CREATE TABLE `budget_branch_relevant_apareportformat` (
  `id` int(11) NOT NULL,
  `budget` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 13,
  `unique_form_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `budget_branch_relevant_apareportformat`
--

INSERT INTO `budget_branch_relevant_apareportformat` (`id`, `budget`, `status`, `form_id`, `unique_form_id`, `created_at`, `updated_at`) VALUES
(326, 'armaan', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(327, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(328, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(329, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(330, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(331, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(332, 'আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(333, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(334, 'বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(335, 'জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(336, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/বিভাগ/দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(337, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(338, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-6207848857', '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(339, 'Aita Armaan re pathaitesi', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(340, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(341, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(342, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(343, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(344, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(345, 'আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(346, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(347, 'বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(348, 'জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(349, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/বিভাগ/দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(350, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(351, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-806711092', '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(352, 'aita shahed bhai er jonnno', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(353, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(354, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(355, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(356, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(357, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(358, 'আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(359, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(360, 'বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(361, 'জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(362, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/বিভাগ/দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(363, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(364, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-4101662754', '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(365, 'aita rakib bhai er jonno', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(366, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি-১) (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(367, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(368, 'মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯-২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০-২১ অর্থবছরের প্রাক্কলন এবং ২০২১-২২ ও ২০২২-২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(369, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(370, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০-২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(371, 'আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(372, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯-২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(373, 'বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন। (ত্রৈমাসিক/ষান্মাষিক/বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(374, 'জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(375, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/বিভাগ/দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(376, 'আর্থিক প্রতিষ্ঠান বিভাগের ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(377, 'আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০-২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 1, 13, 'Form-5379471520', '2022-02-02 10:04:45', '2022-02-02 10:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `to_user_id`, `message`, `status`, `is_deleted`, `date`, `time`, `created_at`, `updated_at`) VALUES
(470, 19, 18, 'hlo', '0', NULL, 'Sun, Nov 2021 12:39:49pm', '12:39:49pm', '2021-11-28 06:39:49', '2021-11-28 06:39:49'),
(471, 19, 16, 'hlo', '0', NULL, 'Sun, Nov 2021 12:50:42pm', '12:50:42pm', '2021-11-28 06:50:42', '2021-11-28 06:50:42'),
(472, 19, 18, 'hi', '0', NULL, 'Sun, Nov 2021 12:56:23pm', '12:56:23pm', '2021-11-28 06:56:23', '2021-11-28 06:56:23'),
(473, 19, 17, 'hi', '0', NULL, 'Sun, Nov 2021 01:07:18am', '01:07:18pm', '2021-11-28 07:07:18', '2021-11-28 07:07:18'),
(474, 19, 17, 'hi', '0', NULL, 'Sun, Nov 2021 01:08:42am', '01:08:42pm', '2021-11-28 07:08:42', '2021-11-28 07:08:42'),
(475, 19, 1, 'Hi', '1', NULL, 'Sun, Nov 2021 04:29:32am', '04:29:32pm', '2021-11-28 10:29:32', '2021-11-28 10:29:32'),
(476, 19, 1, 'kmn acen', '1', NULL, 'Sun, Nov 2021 04:41:45am', '04:41:45pm', '2021-11-28 10:41:45', '2021-11-28 10:41:45'),
(477, 19, 1, 'hi', '1', NULL, 'Sun, Nov 2021 04:44:38am', '04:44:38pm', '2021-11-28 10:44:38', '2021-11-28 10:44:38'),
(478, 19, 1, 'how r u', '1', NULL, 'Sun, Nov 2021 04:44:44am', '04:44:44pm', '2021-11-28 10:44:44', '2021-11-28 10:44:44'),
(479, 19, 1, 'i am fine', '1', NULL, 'Sun, Nov 2021 04:44:53am', '04:44:53pm', '2021-11-28 10:44:53', '2021-11-28 10:44:53'),
(480, 19, 1, 'hi', '1', NULL, 'Sun, Nov 2021 04:51:51am', '04:51:51pm', '2021-11-28 10:51:51', '2021-11-28 10:51:51'),
(481, 19, 1, 'hi', '1', NULL, 'Sun, Nov 2021 04:52:19am', '04:52:19pm', '2021-11-28 10:52:19', '2021-11-28 10:52:19'),
(482, 19, 1, 'hi', '1', NULL, 'Sun, Nov 2021 04:53:16am', '04:53:16pm', '2021-11-28 10:53:16', '2021-11-28 10:53:16'),
(483, 19, 1, 'hi', '1', NULL, 'Sun, Nov 2021 04:54:52am', '04:54:52pm', '2021-11-28 10:54:52', '2021-11-28 10:54:52'),
(484, 19, 1, 'hi', '1', NULL, 'Sun, Nov 2021 04:57:21am', '04:57:21pm', '2021-11-28 10:57:21', '2021-11-28 10:57:21'),
(485, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 04:58 PM', '04:58:44pm', '2021-11-28 10:58:44', '2021-11-28 10:58:44'),
(486, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:00 PM', '05:00:40pm', '2021-11-28 11:00:40', '2021-11-28 11:00:40'),
(487, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:01 PM', '05:01:09pm', '2021-11-28 11:01:09', '2021-11-28 11:01:09'),
(488, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:01 PM', '05:01:49pm', '2021-11-28 11:01:49', '2021-11-28 11:01:49'),
(489, 19, 17, 'hi', '0', NULL, 'Sunday, Nov 28, 2021, 05:01 PM', '05:01:56pm', '2021-11-28 11:01:56', '2021-11-28 11:01:56'),
(490, 19, 18, 'hi', '0', NULL, 'Sunday, Nov 28, 2021, 05:02 PM', '05:02:53pm', '2021-11-28 11:02:53', '2021-11-28 11:02:53'),
(491, 19, 16, 'hi', '0', NULL, 'Sunday, Nov 28, 2021, 05:03 PM', '05:03:04pm', '2021-11-28 11:03:04', '2021-11-28 11:03:04'),
(492, 1, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:04 PM', '05:04:27pm', '2021-11-28 11:04:27', '2021-11-28 11:04:27'),
(493, 1, 16, 'hi', '0', NULL, 'Sunday, Nov 28, 2021, 05:04 PM', '05:04:36pm', '2021-11-28 11:04:36', '2021-11-28 11:04:36'),
(494, 1, 1, 'how r u', '1', NULL, 'Sunday, Nov 28, 2021, 05:04 PM', '05:04:45pm', '2021-11-28 11:04:45', '2021-11-28 11:04:45'),
(495, 1, 16, 'fine', '0', NULL, 'Sunday, Nov 28, 2021, 05:04 PM', '05:04:51pm', '2021-11-28 11:04:51', '2021-11-28 11:04:51'),
(496, 1, 1, 'what', '1', NULL, 'Sunday, Nov 28, 2021, 05:05 PM', '05:05:40pm', '2021-11-28 11:05:40', '2021-11-28 11:05:40'),
(497, 1, 1, 'thia', '1', NULL, 'Sunday, Nov 28, 2021, 05:05 PM', '05:05:51pm', '2021-11-28 11:05:51', '2021-11-28 11:05:51'),
(498, 1, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:07 PM', '05:07:23pm', '2021-11-28 11:07:23', '2021-11-28 11:07:23'),
(499, 1, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:07 PM', '05:07:36pm', '2021-11-28 11:07:36', '2021-11-28 11:07:36'),
(500, 1, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:08 PM', '05:08:30pm', '2021-11-28 11:08:30', '2021-11-28 11:08:30'),
(501, 1, 1, 'what', '1', NULL, 'Sunday, Nov 28, 2021, 05:08 PM', '05:15:35pm', '2021-11-28 11:15:35', '2021-11-28 11:15:35'),
(502, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:16 PM', '05:17:01pm', '2021-11-28 11:17:01', '2021-11-28 11:17:01'),
(503, 19, 1, 'how r u', '1', NULL, 'Sunday, Nov 28, 2021, 05:16 PM', '05:17:15pm', '2021-11-28 11:17:15', '2021-11-28 11:17:15'),
(504, 1, 1, 'fine', '1', NULL, 'Sunday, Nov 28, 2021, 05:17 PM', '05:17:23pm', '2021-11-28 11:17:23', '2021-11-28 11:17:23'),
(505, 1, 1, 'dgs', '1', NULL, 'Sunday, Nov 28, 2021, 05:17 PM', '05:17:35pm', '2021-11-28 11:17:35', '2021-11-28 11:17:35'),
(506, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:16 PM', '05:17:48pm', '2021-11-28 11:17:48', '2021-11-28 11:17:48'),
(507, 1, 19, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:17 PM', '05:17:53pm', '2021-11-28 11:17:53', '2021-11-28 11:17:53'),
(508, 19, 1, 'how r u', '1', NULL, 'Sunday, Nov 28, 2021, 05:16 PM', '05:18:01pm', '2021-11-28 11:18:01', '2021-11-28 11:18:01'),
(509, 1, 19, 'fine', '1', NULL, 'Sunday, Nov 28, 2021, 05:17 PM', '05:18:07pm', '2021-11-28 11:18:07', '2021-11-28 11:18:07'),
(510, 19, 1, 'okay', '1', NULL, 'Sunday, Nov 28, 2021, 05:16 PM', '05:18:14pm', '2021-11-28 11:18:14', '2021-11-28 11:18:14'),
(511, 1, 19, 'hmm', '1', NULL, 'Sunday, Nov 28, 2021, 05:17 PM', '05:18:21pm', '2021-11-28 11:18:21', '2021-11-28 11:18:21'),
(512, 19, 1, 'now', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:19:10pm', '2021-11-28 11:19:10', '2021-11-28 11:19:10'),
(513, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:20:06pm', '2021-11-28 11:20:06', '2021-11-28 11:20:06'),
(514, 1, 19, 'hlo', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:20:25pm', '2021-11-28 11:20:25', '2021-11-28 11:20:25'),
(515, 19, 1, 'how r u', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:20:34pm', '2021-11-28 11:20:34', '2021-11-28 11:20:34'),
(516, 1, 19, 'fine', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:20:40pm', '2021-11-28 11:20:40', '2021-11-28 11:20:40'),
(517, 19, 1, 'gd', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:20:49pm', '2021-11-28 11:20:49', '2021-11-28 11:20:49'),
(518, 1, 19, 'hmm', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:20:54pm', '2021-11-28 11:20:54', '2021-11-28 11:20:54'),
(519, 19, 1, 'hey', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:21:02pm', '2021-11-28 11:21:02', '2021-11-28 11:21:02'),
(520, 19, 1, 'ghgfh', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:21:08pm', '2021-11-28 11:21:08', '2021-11-28 11:21:08'),
(521, 1, 19, 'hmm', '1', NULL, 'Sunday, Nov 28, 2021, 05:19 PM', '05:21:13pm', '2021-11-28 11:21:13', '2021-11-28 11:21:13'),
(522, 19, 1, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:21 PM', '05:21:50pm', '2021-11-28 11:21:50', '2021-11-28 11:21:50'),
(523, 1, 19, 'hlo', '1', NULL, 'Sunday, Nov 28, 2021, 05:21 PM', '05:21:56pm', '2021-11-28 11:21:56', '2021-11-28 11:21:56'),
(524, 19, 1, 'how r u', '1', NULL, 'Sunday, Nov 28, 2021, 05:21 PM', '05:22:04pm', '2021-11-28 11:22:04', '2021-11-28 11:22:04'),
(525, 1, 19, 'hi', '1', NULL, 'Sunday, Nov 28, 2021, 05:22 PM', '05:23:05pm', '2021-11-28 11:23:05', '2021-11-28 11:23:05'),
(526, 1, 19, 'what', '1', NULL, 'Sunday, Nov 28, 2021, 05:23 PM', '05:23:43pm', '2021-11-28 11:23:43', '2021-11-28 11:23:43'),
(527, 19, 1, 'gd', '1', NULL, 'Sunday, Nov 28, 2021, 05:24 PM', '05:24:31pm', '2021-11-28 11:24:31', '2021-11-28 11:24:31'),
(528, 19, 17, 'hlo', '0', NULL, 'Sunday, Nov 28, 2021, 05:24 PM', '05:52:27pm', '2021-11-28 11:52:27', '2021-11-28 11:52:27'),
(529, 60, 19, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 10:18 AM', '10:18:59am', '2021-11-29 04:18:59', '2021-11-29 04:18:59'),
(530, 60, 19, 'hlo', '1', NULL, 'Monday, Nov 29, 2021, 10:21 AM', '10:22:06am', '2021-11-29 04:22:06', '2021-11-29 04:22:06'),
(531, 19, 60, 'what', '1', NULL, 'Monday, Nov 29, 2021, 10:22 AM', '10:22:46am', '2021-11-29 04:22:46', '2021-11-29 04:22:46'),
(532, 19, 60, 'how r u', '1', NULL, 'Monday, Nov 29, 2021, 10:22 AM', '10:23:30am', '2021-11-29 04:23:30', '2021-11-29 04:23:30'),
(533, 19, 60, 'what', '1', NULL, 'Monday, Nov 29, 2021, 10:22 AM', '10:24:59am', '2021-11-29 04:24:59', '2021-11-29 04:24:59'),
(534, 19, 60, 'what', '1', NULL, 'Monday, Nov 29, 2021, 10:25 AM', '10:25:15am', '2021-11-29 04:25:15', '2021-11-29 04:25:15'),
(535, 60, 19, 'that', '1', NULL, 'Monday, Nov 29, 2021, 10:25 AM', '10:25:30am', '2021-11-29 04:25:30', '2021-11-29 04:25:30'),
(536, 19, 60, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 10:26 AM', '10:26:26am', '2021-11-29 04:26:26', '2021-11-29 04:26:26'),
(537, 19, 60, 'what', '1', NULL, 'Monday, Nov 29, 2021, 10:26 AM', '10:34:14am', '2021-11-29 04:34:14', '2021-11-29 04:34:14'),
(538, 19, 60, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 11:25 AM', '11:26:04am', '2021-11-29 05:26:04', '2021-11-29 05:26:04'),
(539, 19, 60, 'hey', '1', NULL, 'Monday, Nov 29, 2021, 11:25 AM', '11:26:17am', '2021-11-29 05:26:17', '2021-11-29 05:26:17'),
(540, 19, 60, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 11:27 AM', '11:27:05am', '2021-11-29 05:27:05', '2021-11-29 05:27:05'),
(541, 19, 60, 'jgho', '1', NULL, 'Monday, Nov 29, 2021, 11:27 AM', '11:27:20am', '2021-11-29 05:27:20', '2021-11-29 05:27:20'),
(542, 19, 60, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 11:27 AM', '11:28:12am', '2021-11-29 05:28:12', '2021-11-29 05:28:12'),
(543, 19, 60, 'gdghdfh', '1', NULL, 'Monday, Nov 29, 2021, 11:27 AM', '11:30:29am', '2021-11-29 05:30:29', '2021-11-29 05:30:29'),
(544, 19, 60, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:32:10am', '2021-11-29 05:32:10', '2021-11-29 05:32:10'),
(545, 19, 59, 'wow', '0', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:33:08am', '2021-11-29 05:33:08', '2021-11-29 05:33:08'),
(546, 19, 60, 'wow', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:33:31am', '2021-11-29 05:33:31', '2021-11-29 05:33:31'),
(547, 19, 60, 'hey', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:33:40am', '2021-11-29 05:33:40', '2021-11-29 05:33:40'),
(548, 19, 60, 'great', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:33:53am', '2021-11-29 05:33:53', '2021-11-29 05:33:53'),
(549, 19, 60, 'nice', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:34:04am', '2021-11-29 05:34:04', '2021-11-29 05:34:04'),
(550, 19, 60, 'fuck', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:34:14am', '2021-11-29 05:34:14', '2021-11-29 05:34:14'),
(551, 60, 19, 'what', '1', NULL, 'Monday, Nov 29, 2021, 11:33 AM', '11:34:20am', '2021-11-29 05:34:20', '2021-11-29 05:34:20'),
(552, 19, 60, 'gd', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:34:26am', '2021-11-29 05:34:26', '2021-11-29 05:34:26'),
(553, 60, 19, 'hmm', '1', NULL, 'Monday, Nov 29, 2021, 11:33 AM', '11:34:31am', '2021-11-29 05:34:31', '2021-11-29 05:34:31'),
(554, 19, 60, 'yep', '1', NULL, 'Monday, Nov 29, 2021, 11:32 AM', '11:34:38am', '2021-11-29 05:34:38', '2021-11-29 05:34:38'),
(555, 60, 19, 'ha thik ace!!', '1', NULL, 'Monday, Nov 29, 2021, 11:33 AM', '11:34:52am', '2021-11-29 05:34:52', '2021-11-29 05:34:52'),
(556, 19, 60, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 11:35 AM', '11:35:27am', '2021-11-29 05:35:27', '2021-11-29 05:35:27'),
(557, 60, 19, 'hlo', '1', NULL, 'Monday, Nov 29, 2021, 11:35 AM', '11:35:39am', '2021-11-29 05:35:39', '2021-11-29 05:35:39'),
(558, 19, 60, 'how r u', '1', NULL, 'Monday, Nov 29, 2021, 11:35 AM', '11:35:45am', '2021-11-29 05:35:45', '2021-11-29 05:35:45'),
(559, 60, 19, 'fine & u', '1', NULL, 'Monday, Nov 29, 2021, 11:35 AM', '11:35:53am', '2021-11-29 05:35:53', '2021-11-29 05:35:53'),
(560, 60, 19, 'Yeah fine', '1', NULL, 'Monday, Nov 29, 2021, 11:35 AM', '11:36:05am', '2021-11-29 05:36:05', '2021-11-29 05:36:05'),
(561, 19, 60, 'fine', '1', NULL, 'Monday, Nov 29, 2021, 11:35 AM', '11:36:14am', '2021-11-29 05:36:14', '2021-11-29 05:36:14'),
(562, 19, 60, 'what', '1', NULL, 'Monday, Nov 29, 2021, 11:37 AM', '11:37:50am', '2021-11-29 05:37:50', '2021-11-29 05:37:50'),
(563, 19, 60, 'hlo', '1', NULL, 'Monday, Nov 29, 2021, 11:41 AM', '11:41:40am', '2021-11-29 05:41:40', '2021-11-29 05:41:40'),
(564, 19, 60, 'hello', '1', NULL, 'Monday, Nov 29, 2021, 11:41 AM', '11:41:54am', '2021-11-29 05:41:54', '2021-11-29 05:41:54'),
(565, 60, 19, 'hi', '1', NULL, 'Monday, Nov 29, 2021, 11:41 AM', '11:42:01am', '2021-11-29 05:42:01', '2021-11-29 05:42:01'),
(566, 19, 60, 'how r u', '1', NULL, 'Monday, Nov 29, 2021, 11:41 AM', '11:42:08am', '2021-11-29 05:42:08', '2021-11-29 05:42:08'),
(567, 60, 19, 'fine', '1', NULL, 'Monday, Nov 29, 2021, 11:41 AM', '11:42:14am', '2021-11-29 05:42:14', '2021-11-29 05:42:14'),
(568, 19, 60, 'wel gd', '1', NULL, 'Monday, Nov 29, 2021, 11:43 AM', '11:43:28am', '2021-11-29 05:43:28', '2021-11-29 05:43:28'),
(569, 19, 17, 'hello vai', '0', NULL, 'Monday, Nov 29, 2021, 11:51 AM', '11:51:54am', '2021-11-29 05:51:54', '2021-11-29 05:51:54'),
(570, 19, 17, 'oi', '0', NULL, 'Monday, Nov 29, 2021, 11:51 AM', '11:54:52am', '2021-11-29 05:54:52', '2021-11-29 05:54:52'),
(571, 19, 17, 'vai apnar gf klmn ace', '0', NULL, 'Monday, Nov 29, 2021, 11:51 AM', '11:55:13am', '2021-11-29 05:55:13', '2021-11-29 05:55:13'),
(572, 19, 17, 'picf hujyguybjk', '0', NULL, 'Monday, Nov 29, 2021, 11:51 AM', '11:55:31am', '2021-11-29 05:55:31', '2021-11-29 05:55:31'),
(573, 19, 17, 'jyhbikset', '0', NULL, 'Monday, Nov 29, 2021, 11:51 AM', '11:56:04am', '2021-11-29 05:56:04', '2021-11-29 05:56:04'),
(574, 60, 1, 'dhat', '0', NULL, 'Tuesday, Nov 30, 2021, 03:18 PM', '03:18:54pm', '2021-11-30 09:18:54', '2021-11-30 09:18:54'),
(575, 60, 1, 'okay', '0', NULL, 'Tuesday, Nov 30, 2021, 03:18 PM', '03:19:13pm', '2021-11-30 09:19:13', '2021-11-30 09:19:13'),
(576, 60, 16, 'hlo', '0', NULL, NULL, '03:25:33pm', '2021-11-30 09:25:33', '2021-11-30 09:25:33'),
(577, 60, 1, 'what', '0', NULL, NULL, '03:25:43pm', '2021-11-30 09:25:43', '2021-11-30 09:25:43'),
(578, 60, 1, 'hlo', '0', NULL, NULL, '03:27:23pm', '2021-11-30 09:27:23', '2021-11-30 09:27:23'),
(579, 60, 1, 'hlo', '0', NULL, NULL, '03:28:07pm', '2021-11-30 09:28:07', '2021-11-30 09:28:07'),
(580, 60, 1, 'hlo', '0', NULL, NULL, '03:28:20pm', '2021-11-30 09:28:20', '2021-11-30 09:28:20'),
(581, 60, 1, 'hlo', '0', NULL, NULL, '03:28:21pm', '2021-11-30 09:28:21', '2021-11-30 09:28:21'),
(582, 60, 1, 'hlo', '0', NULL, NULL, '03:28:22pm', '2021-11-30 09:28:22', '2021-11-30 09:28:22'),
(583, 60, 1, 'hlo', '0', NULL, NULL, '03:28:22pm', '2021-11-30 09:28:22', '2021-11-30 09:28:22'),
(584, 60, 1, 'hlo', '0', NULL, NULL, '03:28:23pm', '2021-11-30 09:28:23', '2021-11-30 09:28:23'),
(585, 60, 1, 'hlo', '0', NULL, NULL, '03:28:24pm', '2021-11-30 09:28:24', '2021-11-30 09:28:24'),
(586, 60, 16, 'hi', '0', NULL, NULL, '03:29:45pm', '2021-11-30 09:29:45', '2021-11-30 09:29:45'),
(587, 60, 16, 'hlo', '0', NULL, NULL, '03:29:57pm', '2021-11-30 09:29:57', '2021-11-30 09:29:57'),
(588, 60, 19, 'hi', '0', NULL, NULL, '03:35:56pm', '2021-11-30 09:35:56', '2021-11-30 09:35:56'),
(589, 19, 21, 'hi', '0', NULL, NULL, '05:36:54pm', '2021-11-30 11:36:54', '2021-11-30 11:36:54'),
(590, 19, 16, 'hi', '0', NULL, NULL, '05:38:25pm', '2021-11-30 11:38:25', '2021-11-30 11:38:25'),
(591, 19, 1, 'hlo', '0', NULL, NULL, '05:51:41pm', '2021-11-30 11:51:41', '2021-11-30 11:51:41'),
(592, 19, 19, 'hlo', '1', NULL, 'Tuesday, Nov 30, 2021, 05:58 PM', '05:58:12pm', '2021-11-30 11:58:12', '2021-11-30 11:58:12'),
(593, 19, 19, 'hellol', '1', NULL, 'Tuesday, Nov 30, 2021, 05:58 PM', '05:58:20pm', '2021-11-30 11:58:20', '2021-11-30 11:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_redressal_action_plan`
--

CREATE TABLE `complaint_redressal_action_plan` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` text DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `years` text DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 5,
  `unique_form_id` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complaint_redressal_action_plan`
--

INSERT INTO `complaint_redressal_action_plan` (`id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `branch_responsible_implementation`, `years`, `form_id`, `unique_form_id`, `status`, `created_at`, `updated_at`) VALUES
(31, '[১.১] অভিযোগ নিষ্পত্তি কর্মকর্তা (অনিক) ও আপিল কর্মকর্তার তথ্য ওয়েবসাইটে ত্রৈমাসিক ভিত্তিতে হালনাগাদকরণ', '[১.১.১]  অনিক ও আপিল কর্মকর্তার তথ্য হালনাগাদকৃত এবং ওয়েবসাইটে আপলোডকৃত', 'সংখ্যা', '5', '4', '1', '1', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_07_45838', 1, '2022-01-02 05:26:07', '2022-01-02 05:26:07'),
(32, '[২.১] নির্দিষ্ট সময়ে অনলাইন/ অফলাইনে প্রাপ্ত অভিযোগ নিষ্পত্তি এবং নিষ্পত্তি সংক্রান্ত মাসিক প্রতিবেদন উর্ধ্বতন কর্তৃপক্ষ বরাবর প্রেরণ', '[২.১.১] অভিযোগ নিষ্পত্তিকৃত', '%', '8', '90', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_07_45838', 1, '2022-01-02 05:26:07', '2022-01-02 05:26:07'),
(33, '[২.২] কর্মকর্তা/কর্মচারীদের অভিযোগ প্রতিকার ব্যবস্থা এবং জিআরএস সফটওয়্যার বিষয়ক প্রশিক্ষণ আয়োজন', '[২.২.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '5', '4', '-', '-', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_07_45838', 1, '2022-01-02 05:26:07', '2022-01-02 05:26:07'),
(34, '[২.৩] ত্রৈমাসিক ভিত্তিতে পরিবীক্ষণ এবং ত্রৈমাসিক পরিবীক্ষণ প্রতিবেদন উর্ধ্বতন কর্তৃপক্ষের নিকট প্রেরণ', '[২.৩.১] ত্রৈমাসিক প্রতিবেদন প্রেরিত', 'সংখ্যা', '3', '4', '1', '1', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_07_45838', 1, '2022-01-02 05:26:07', '2022-01-02 05:26:07'),
(35, '[২.৪] অভিযোগ প্রতিকার ব্যবস্থাপনা বিষয়ে স্টেকহোল্ডারগণের সমন্বয়ে অবহিতকরণ সভা', '[২.৪.১] সভা অনুষ্ঠিত', 'সংখ্যা', '4', '2', '1', '1', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_07_45838', 1, '2022-01-02 05:26:07', '2022-01-02 05:26:07'),
(36, '[১.১] অভিযোগ নিষ্পত্তি কর্মকর্তা (অনিক) ও আপিল কর্মকর্তার তথ্য ওয়েবসাইটে ত্রৈমাসিক ভিত্তিতে হালনাগাদকরণ', '[১.১.১]  অনিক ও আপিল কর্মকর্তার তথ্য হালনাগাদকৃত এবং ওয়েবসাইটে আপলোডকৃত', 'সংখ্যা', '5', '4', '1', '1', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_14_47544', 1, '2022-01-02 05:26:14', '2022-01-02 05:26:14'),
(37, '[২.১] নির্দিষ্ট সময়ে অনলাইন/ অফলাইনে প্রাপ্ত অভিযোগ নিষ্পত্তি এবং নিষ্পত্তি সংক্রান্ত মাসিক প্রতিবেদন উর্ধ্বতন কর্তৃপক্ষ বরাবর প্রেরণ', '[২.১.১] অভিযোগ নিষ্পত্তিকৃত', '%', '8', '90', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_14_47544', 1, '2022-01-02 05:26:14', '2022-01-02 05:26:14'),
(38, '[২.২] কর্মকর্তা/কর্মচারীদের অভিযোগ প্রতিকার ব্যবস্থা এবং জিআরএস সফটওয়্যার বিষয়ক প্রশিক্ষণ আয়োজন', '[২.২.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '5', '4', '-', '-', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_14_47544', 1, '2022-01-02 05:26:14', '2022-01-02 05:26:14'),
(39, '[২.৩] ত্রৈমাসিক ভিত্তিতে পরিবীক্ষণ এবং ত্রৈমাসিক পরিবীক্ষণ প্রতিবেদন উর্ধ্বতন কর্তৃপক্ষের নিকট প্রেরণ', '[২.৩.১] ত্রৈমাসিক প্রতিবেদন প্রেরিত', 'সংখ্যা', '3', '4', '1', '1', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_14_47544', 1, '2022-01-02 05:26:14', '2022-01-02 05:26:14'),
(40, '[২.৪] অভিযোগ প্রতিকার ব্যবস্থাপনা বিষয়ে স্টেকহোল্ডারগণের সমন্বয়ে অবহিতকরণ সভা', '[২.৪.১] সভা অনুষ্ঠিত', 'সংখ্যা', '4', '2', '1', '1', NULL, 'অভিযোগ নিষ্পত্তি কর্মকর্তা', NULL, 5, '26_14_47544', 1, '2022-01-02 05:26:14', '2022-01-02 05:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `default_forms`
--

CREATE TABLE `default_forms` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `form_name` varchar(250) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `default_forms`
--

INSERT INTO `default_forms` (`id`, `form_id`, `form_name`, `table_name`, `status`, `created_at`) VALUES
(2, NULL, 'APA Report Form', NULL, 1, '2021-12-22 07:11:51'),
(3, NULL, 'বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক ', NULL, 1, '2021-12-22 09:05:24'),
(4, 0, 'বাজেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেট', NULL, 1, '2021-12-22 09:14:21'),
(5, 0, 'Annual Performance Evaluation', NULL, 1, '2021-12-22 10:59:23'),
(9, 5, 'Created Forms', NULL, 1, '2022-06-07 05:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `default_sub_forms`
--

CREATE TABLE `default_sub_forms` (
  `id` int(11) NOT NULL,
  `default_form_id` int(11) NOT NULL,
  `sub_form_name` varchar(250) NOT NULL,
  `table_name` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `default_sub_forms`
--

INSERT INTO `default_sub_forms` (`id`, `default_form_id`, `sub_form_name`, `table_name`, `status`) VALUES
(1, 2, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক ', 'annual_performance_agreement_quarterly', 0),
(3, 2, '২.২.১ মন্ত্রণালয়/বিভাগ/রাষ্ট্রীয় প্রতিষ্ঠানের জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা', 'national_integrity_trategy_action_plan', 0),
(4, 2, '২.২.২ ই-গভর্ন্যান্স ও উদ্ভাবন কর্মপরিকল্পনা ', 'egovernance_innovation_action_plan', 0),
(5, 2, '২.২.৩ অভিযোগ প্রতিকার ব্যবস্থা সংক্রান্ত কর্মপরিকল্পনা', 'complaint_redressal_action_plan', 0),
(6, 2, '২.২.৪ সেবা প্রদান প্রতিশ্রুতি বাস্তবায়ন কর্মপরিকল্পনা', 'implement_service_delivery_commitments', 0),
(7, 2, '২.২.৫ তথ্য অধিকার বিষয়ে কর্মপরিকল্পনা', 'financial_year_right_information', 0),
(8, 3, '১.১.১. সচিবালয়', 'fiscal_year_budget_implementation_progress', 0),
(9, 3, '১.১.২. স্বায়ত্তশাসিত ও অন্যান্য প্রতিষ্ঠান', 'autonomous_and_other_institutions,autonomous_and_other_institutions_sub_rows', 0),
(10, 3, '১.২.১  উন্নয়ন প্রকল্প ', 'excluding_annual_development_programs', 0),
(11, 3, '১.২.২  উন্নয়ন প্রকল্প', 'development_project_annual_program', 0),
(12, 3, '১.৩.  মোট পরিচালন ও উন্নয়ন ব্যয়', 'total_management_development_costs', 0),
(13, 4, 'বাজেট', 'budget_branch_relevant_apareportformat', 0),
(14, 4, 'বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ)', 'annual_performance_agreenment_apa', 0),
(16, 4, 'বাজেট', 'relevant_budget_apa_report_format', 0),
(17, 4, 'বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ)', 'annual_performance_agreenment_table', 0),
(18, 4, 'পরিশিষ্ট-১', 'appendix_one_mis,appendix_one_table_ka,appendix_one_table_kha', 0),
(19, 4, 'পরিশিষ্ট-২', 'appendix_two_mis,appendix_two_table_ka,appendix_two_table_kha', 0),
(20, 4, 'পরিশিষ্ট-৩', 'appendix_three_mis,appendix_three_table', 0),
(21, 4, 'পরিশিষ্ট-৪', 'appendix_four_mis,appendix_four_table', 0),
(22, 4, 'পরিশিষ্ট-৫', 'appendix_five_table,appendix_five_mis', 0),
(23, 4, 'পরিশিষ্ট-৬', 'appendix_six_claims,appendix_six_claims_table', 0),
(24, 4, 'পরিশিষ্ট-৭', 'appendix_seven_table_1,appendix_seven_table_2,appendix_seven_table_2_sub,appendix_seven_table_3,appendix_seven_table_4,appendix_seven_table_5,appendix_seven_table_6,appendix_seven_table_7,appendix_seven_table_8,appendix_seven_table_9,appendix_seven_table_10,appendix_seven_table_11,appendix_seven_table_12,appendix_seven_table_13,appendix_seven_table_14,appendix_seven_table_14_sub,appendix_seven_table_15,appendix_seven_table_16,appendix_seven_table_17,appendix_seven_table_18,appendix_seven_table_19,appendix_seven_table_20,appendix_seven_table_20_sub,appendix_seven_table_21', 0),
(31, 4, 'পরিশিষ্ট-৮', 'section_three_first_part_appeight,section_three_second_part_appeight,section_two_outcome_eight,appendix_eight_mis', 0),
(32, 4, 'পরিশিষ্ট-৯', '        section_two_outcome,appendix_nine_mis,section_three_first_part,section_three_first_part_sub,section_three_first_part_sub_2,section_three_second_part,section_three_second_part_sub,section_three_second_part_sub_2', 0),
(33, 5, 'Menu>1.1. Annual Performance Evaluation', NULL, 0),
(34, 5, 'সেকশন-২: মন্ত্রণালয়/বিভাগের বিভিন্ন কার্যক্রমের চূড়ান্ত ফলাফল/প্রভাব', NULL, 0),
(35, 5, 'সেকশন-৩: কৌশলগত উদ্দেশ্য, অগ্রাধিকার, কার্যক্রম, কর্মসম্পাদন সূচক এবং লক্ষ্যমাত্রাসমূহ', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `demo_table`
--

CREATE TABLE `demo_table` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `column_name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(10, NULL, NULL, 'Regulatory', NULL, NULL, NULL, '2021-12-12 04:58:18', '2021-12-12 04:58:18'),
(12, NULL, NULL, 'Bangladesh Bank', NULL, NULL, NULL, '2021-12-12 04:59:21', '2021-12-12 04:59:21'),
(13, NULL, 1, 'Accounts', NULL, NULL, NULL, '2021-12-14 10:29:15', '2021-12-14 10:30:49'),
(14, '13', 1, 'Sub Accounts', NULL, NULL, NULL, '2021-12-14 10:29:33', '2021-12-14 10:30:58'),
(15, NULL, 4, 'Nrbc Gulshan Accounts', NULL, NULL, NULL, '2022-02-03 05:37:47', '2022-02-03 05:37:47'),
(16, NULL, 1, 'Test Department Arnx 1', NULL, NULL, NULL, '2022-06-28 06:00:32', '2022-06-28 06:00:32'),
(51, '1', NULL, 'লিটিগেশন', NULL, NULL, NULL, '2022-07-12 11:37:24', '2022-07-12 11:37:24'),
(52, '1', NULL, 'ইনোভেশন', NULL, NULL, NULL, '2022-07-12 11:37:56', '2022-07-12 11:37:56'),
(53, '1', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:38:32', '2022-07-12 11:38:32'),
(54, '2', NULL, 'লিটিগেশন', NULL, NULL, NULL, '2022-07-12 11:39:25', '2022-07-12 11:39:25'),
(55, '2', NULL, 'ইনোভেশন', NULL, NULL, NULL, '2022-07-12 11:39:31', '2022-07-12 11:39:31'),
(56, '2', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:39:39', '2022-07-12 11:39:39'),
(57, '3', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:41:18', '2022-07-12 11:41:18'),
(58, '3', NULL, 'শুদ্ধাচার', NULL, NULL, NULL, '2022-07-12 11:41:31', '2022-07-12 11:41:31'),
(59, '3', NULL, 'ব্যবসা সহজীকরণ', NULL, NULL, NULL, '2022-07-12 11:41:43', '2022-07-12 11:41:43'),
(60, '4', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:43:40', '2022-07-12 11:43:40'),
(61, '4', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:43:51', '2022-07-12 11:43:51'),
(62, '5', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:44:41', '2022-07-12 11:44:41'),
(63, '5', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:44:49', '2022-07-12 11:44:49'),
(64, '6', NULL, 'আই সি টি', NULL, NULL, NULL, '2022-07-12 11:45:40', '2022-07-12 11:45:40'),
(65, '6', NULL, 'প্রশাসন', NULL, NULL, NULL, '2022-07-12 11:45:48', '2022-07-12 11:45:48'),
(66, '1', NULL, 'isgngnsgj', NULL, NULL, NULL, '2022-07-17 05:33:23', '2022-07-17 05:33:23'),
(67, '4', NULL, 'new department 1111', NULL, NULL, NULL, '2022-07-17 09:53:30', '2022-07-17 09:53:30'),
(68, '3', NULL, 'neabhaf', NULL, NULL, NULL, '2022-07-17 10:31:14', '2022-07-17 10:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(35, NULL, NULL, 'Head of banking', NULL, NULL, NULL, '2021-12-12 04:59:56', '2021-12-12 04:59:56'),
(36, '35', NULL, 'Employee', NULL, NULL, NULL, '2021-12-12 05:00:10', '2021-12-12 05:00:10'),
(37, NULL, 1, 'Designation Bangladesh Bank', NULL, NULL, NULL, '2021-12-14 10:44:17', '2021-12-14 10:44:17'),
(38, '37', 1, 'Sub de Bangladesh Bank', NULL, NULL, NULL, '2021-12-14 10:44:41', '2021-12-14 10:44:41'),
(39, NULL, 4, 'Lamba', NULL, NULL, NULL, '2022-02-03 05:40:01', '2022-02-03 05:40:01'),
(40, NULL, 1, 'Test Designation Arnx 1', NULL, NULL, NULL, '2022-06-28 06:00:16', '2022-06-28 06:00:16'),
(69, '5', NULL, 'ডেপুটি জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:01:10', '2022-07-12 11:01:10'),
(70, '5', NULL, 'জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:01:21', '2022-07-12 11:01:21'),
(71, '5', NULL, 'ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:01:37', '2022-07-12 11:01:37'),
(72, '4', NULL, 'ডেপুটি জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:06:07', '2022-07-12 11:06:07'),
(73, '4', NULL, 'জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:06:13', '2022-07-12 11:06:13'),
(74, '4', NULL, 'ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:06:21', '2022-07-12 11:06:21'),
(75, '6', NULL, 'ডেপুটি জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:07:22', '2022-07-12 11:07:22'),
(76, '6', NULL, 'জেনারেল ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:07:30', '2022-07-12 11:07:30'),
(77, '6', NULL, 'ম্যানেজার', NULL, NULL, NULL, '2022-07-12 11:07:45', '2022-07-12 11:07:45'),
(83, '2', NULL, 'অফিসার', NULL, NULL, NULL, '2022-07-12 11:24:58', '2022-07-12 11:24:58'),
(84, '2', NULL, 'ডেপুটি সেক্রেটারি', NULL, NULL, NULL, '2022-07-12 11:25:28', '2022-07-12 11:25:28'),
(85, '2', NULL, 'আইটি অফিসার', NULL, NULL, NULL, '2022-07-12 11:25:49', '2022-07-12 11:25:49'),
(87, '3', NULL, 'সহকারী পরিচালক', NULL, NULL, NULL, '2022-07-12 11:30:13', '2022-07-12 11:30:13'),
(88, '3', NULL, 'পরিচালক', NULL, NULL, NULL, '2022-07-12 11:30:26', '2022-07-12 11:30:26'),
(89, '3', NULL, 'উপ পরিচালক', NULL, NULL, NULL, '2022-07-12 11:30:35', '2022-07-12 11:30:35'),
(90, '1', NULL, 'সচিব', NULL, NULL, NULL, '2022-07-12 11:33:12', '2022-07-12 11:33:12'),
(91, '1', NULL, 'সহকারী সচিব', NULL, NULL, NULL, '2022-07-12 11:33:58', '2022-07-12 11:33:58'),
(92, '1', NULL, 'যুগ্ম সচিব', NULL, NULL, NULL, '2022-07-12 11:34:36', '2022-07-12 11:34:36'),
(93, '4', NULL, 'test designation', NULL, NULL, NULL, '2022-07-17 09:53:45', '2022-07-17 09:53:45'),
(94, '3', NULL, 'teacher', NULL, NULL, NULL, '2022-07-17 10:31:33', '2022-07-17 10:31:33'),
(95, '1', NULL, 'Assistant General Manager', NULL, NULL, NULL, '2022-07-19 10:30:01', '2022-07-19 10:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `development_project_annual_program`
--

CREATE TABLE `development_project_annual_program` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `years` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) DEFAULT 11,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `development_project_annual_program`
--

INSERT INTO `development_project_annual_program` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `years`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(11, 'পুঁজিবাজার উন্নয়ন কর্মসূচি-৩', '১০০', 'লক্ষ্যমাত্রা', '২৫', '২৫', '২৫', '২৫', '১০০', 'form_171534031', 'পুঁজিবাজার উন্নয়ন কর্মসূচি-৩', 1, 11, '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(12, 'বাংলাদেশে তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প', '১১৪৯০০', 'লক্ষ্যমাত্রা', '১০০৪', '১৪৯৯৪', '১৬১৯৯', '৮২৭০৩', '১১৪৯০০', 'form_171534031', 'বাংলাদেশে তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত উন্নয়ন প্রকল্প', 1, 11, '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(13, 'বাংলাদেশ বীমা খাত উন্নয়ন প্রকল্প', '১০৪৫০০০', 'লক্ষ্যমাত্রা', '৫২২৫০.০', '২৬১২৫০.০', '৩১৩৫০০.০', '৪১৮০০০.০', '১০৪৫০০০', 'form_171534031', 'বাংলাদেশ বীমা খাত উন্নয়ন প্রকল্প', 1, 11, '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(14, 'আর্থিক প্রতিষ্ঠান বিভাগের অননুোদিত প্রকল্পের জন্য সংরক্ষিত (থোক)', '৩৪০০', 'লক্ষ্যমাত্রা', '০', '০', '০', '৩৪০০', '৩৪০০', 'form_171534031', 'আর্থিক প্রতিষ্ঠান বিভাগের অননুোদিত প্রকল্পের জন্য সংরক্ষিত (থোক)', 1, 11, '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(15, 'মোট উন্নয়ন প্রকল্প(বার্ষিক উন্নয়ন কর্মসূচি)', '১১৬৩৪০০', 'লক্ষ্যমাত্রা', '৫৩২৭৯', '২৭৬২৬৯', '৩২৯৭২৪', '৫০৪১২৮', '১১৬৩৪০০', 'form_171534031', 'মোট উন্নয়ন প্রকল্প(বার্ষিক উন্নয়ন কর্মসূচি)', 1, 11, '2022-01-02 07:17:15', '2022-01-02 07:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `development_project_annual_program_sub_rows`
--

CREATE TABLE `development_project_annual_program_sub_rows` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `years` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 11,
  `row_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `development_project_annual_program_sub_rows`
--

INSERT INTO `development_project_annual_program_sub_rows` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `years`, `status`, `form_id`, `row_id`, `created_at`, `updated_at`) VALUES
(28, NULL, NULL, 'প্রকৃত ব্যয়', '৪৫৭', NULL, NULL, NULL, '৪৫৭', 'form_171534031', '2021', 1, 11, '11', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(29, NULL, NULL, 'শতকরা হার', '১৮২৮%', '০.০০%', '০%', '০%', '৪৫৭%', 'form_171534031', '2021', 1, 11, '11', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(30, NULL, NULL, 'প্রকৃত ব্যয়', NULL, NULL, NULL, NULL, '০', 'form_171534031', '2021', 1, 11, '12', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(31, NULL, NULL, 'শতকরা হার', '০%', '০%', '০%', '০%', '০%', 'form_171534031', '2021', 1, 11, '12', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(32, NULL, NULL, 'প্রকৃত ব্যয়', '৫৩২৫০.৩৬', '০.০০', '০.০০', '০.০০', '৫৩২৫০.৩৬', 'form_171534031', '2021', 1, 11, '13', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(33, NULL, NULL, 'প্রকৃত ব্যয়', NULL, NULL, NULL, NULL, '০', 'form_171534031', '2021', 1, 11, '14', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(34, NULL, NULL, 'শতকরা হার', '০%', '০%', '০%', '০%', '০%', 'form_171534031', '2021', 1, 11, '14', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(35, NULL, NULL, 'প্রকৃত ব্যয়', '৫৩৭০৭', '০', '০', '০', '৫৩৭০৭', 'form_171534031', '2021', 1, 11, '15', '2022-01-02 07:17:15', '2022-01-02 07:17:15'),
(36, NULL, NULL, 'শতকরা হার', '১০১%', '০%', '০%', '০%', '৪.৬২%', 'form_171534031', '2021', 1, 11, '15', '2022-01-02 07:17:15', '2022-01-02 07:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(64, NULL, 12, 'ICT Cell', NULL, 1, NULL, '2022-07-18 06:26:42', '2022-07-19 09:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `dufuidfidfi`
--

CREATE TABLE `dufuidfidfi` (
  `id` int(6) UNSIGNED NOT NULL,
  `ruerueru` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `egovernance_innovation_action_plan`
--

CREATE TABLE `egovernance_innovation_action_plan` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL DEFAULT 4,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` text DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `years` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `rows` int(11) DEFAULT NULL,
  `row_ids` varchar(55) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `egovernance_innovation_action_plan`
--

INSERT INTO `egovernance_innovation_action_plan` (`id`, `form_id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `branch_responsible_implementation`, `status`, `years`, `unique_form_id`, `rows`, `row_ids`, `created_at`, `updated_at`) VALUES
(389, 4, 'abar shahed bhai re pathailam', '[১.১.১] একটি নতুন উদ্ভাবনী ধারণা বাস্তবায়িত', 'gulshan banani', '5', '১৬-০৩-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(390, 4, '[১.২] সেবা সহজিকরণ', 'Get it bro', 'তারিখ', '5', '২৫-০২-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(391, 4, '[১.৩]  সেবা ডিজিটাইজেশন', '[১.৩.১] ন্যূনতম একটি সেবা ডিজিটাইজকৃত', 'তারিখ', '5', '৩০-১২-২০২১', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(392, 4, '[১.৪] ইতঃপূর্বে বাস্তবায়িত উদ্ভাবনী ধারণা, সহজিকৃত ও ডিজিটাইজকৃত সেবা সংক্রান্ত পর্যালোচনা সভা', '[১.৪.১] সভা আয়োজিত', 'তারিখ', '4', '৩০-০৮-২০২১', '২৫-০৮-২০২১', '২৫-০৮-২০২১', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(393, 4, '[১.৫] ই-নথির ব্যবহার বৃদ্ধি', '[১.৫.১] ই-ফাইলে নোট নিস্পত্তিকৃত', '%', '6', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'সকল শাখা', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(394, 4, '[১.৬] ৪র্থ শিল্প বিপ্লবের চ্যালেঞ্জ মোকাবেলায় করণীয় বিষয়ে অবহিতকরণ সভা/কর্মশালা আয়োজন', '[১.৬.১] সভা/কর্মশালা আয়োজিত', 'সংখ্যা', '4', '4', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(395, 4, '[২.১] তথ্য বাতায়ন হালনাগাদকরণ', '[২.১.১] তথ্য বাতায়নে সকল সেবা বক্স হালনাগাদকৃত', 'সংখ্যা', '4', '4', '1', '1', NULL, 'আইসিটি সেল', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(396, 4, '[২.২] ই-গভর্ন্যান্স ও উদ্ভাবন কর্মপরিকল্পনা বাস্তবায়ন', '[২.২.১] কর্মপরিকল্পনা বাস্তবায়ন সংক্রান্ত প্রশিক্ষণ আয়োজিত', NULL, '3', '4', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-6927192251', NULL, NULL, '2022-02-02 06:07:20', '2022-02-02 06:07:20'),
(397, 4, 'Demo dila,m', '[১.১.১] একটি নতুন উদ্ভাবনী ধারণা বাস্তবায়িত', 'তারিখ', '5', '১৬-০৩-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(398, 4, '[১.২] সেবা সহজিকরণ', '[১.২.১] একটি সেবা সহজিকৃত', 'তারিখ', '5', '২৫-০২-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(399, 4, '[১.৩]  সেবা ডিজিটাইজেশন', '[১.৩.১] ন্যূনতম একটি সেবা ডিজিটাইজকৃত', 'তারিখ', '5', '৩০-১২-২০২১', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(400, 4, '[১.৪] ইতঃপূর্বে বাস্তবায়িত উদ্ভাবনী ধারণা, সহজিকৃত ও ডিজিটাইজকৃত সেবা সংক্রান্ত পর্যালোচনা সভা', '[১.৪.১] সভা আয়োজিত', 'তারিখ', '4', '৩০-০৮-২০২১', '২৫-০৮-২০২১', '২৫-০৮-২০২১', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(401, 4, '[১.৫] ই-নথির ব্যবহার বৃদ্ধি', '[১.৫.১] ই-ফাইলে নোট নিস্পত্তিকৃত', '%', '6', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'সকল শাখা', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(402, 4, '[১.৬] ৪র্থ শিল্প বিপ্লবের চ্যালেঞ্জ মোকাবেলায় করণীয় বিষয়ে অবহিতকরণ সভা/কর্মশালা আয়োজন', '[১.৬.১] সভা/কর্মশালা আয়োজিত', 'সংখ্যা', '4', '4', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(403, 4, '[২.১] তথ্য বাতায়ন হালনাগাদকরণ', '[২.১.১] তথ্য বাতায়নে সকল সেবা বক্স হালনাগাদকৃত', 'সংখ্যা', '4', '4', '1', '1', NULL, 'আইসিটি সেল', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(404, 4, '[২.২] ই-গভর্ন্যান্স ও উদ্ভাবন কর্মপরিকল্পনা বাস্তবায়ন', '[২.২.১] কর্মপরিকল্পনা বাস্তবায়ন সংক্রান্ত প্রশিক্ষণ আয়োজিত', NULL, '3', '4', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', 'Form-4845741334', NULL, NULL, '2022-02-02 06:29:57', '2022-02-02 06:29:57'),
(405, 4, 'armaan er jonno', '[১.১.১] একটি নতুন উদ্ভাবনী ধারণা বাস্তবায়িত', 'তারিখ', '5', '১৬-০৩-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53'),
(406, 4, '[১.২] সেবা সহজিকরণ', '[১.২.১] একটি সেবা সহজিকৃত', 'তারিখ', '5', '২৫-০২-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53'),
(407, 4, '[১.৩]  সেবা ডিজিটাইজেশন', '[১.৩.১] ন্যূনতম একটি সেবা ডিজিটাইজকৃত', 'তারিখ', '5', '৩০-১২-২০২১', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53'),
(408, 4, '[১.৪] ইতঃপূর্বে বাস্তবায়িত উদ্ভাবনী ধারণা, সহজিকৃত ও ডিজিটাইজকৃত সেবা সংক্রান্ত পর্যালোচনা সভা', '[১.৪.১] সভা আয়োজিত', 'তারিখ', '4', '৩০-০৮-২০২১', '২৫-০৮-২০২১', '২৫-০৮-২০২১', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53'),
(409, 4, '[১.৫] ই-নথির ব্যবহার বৃদ্ধি', '[১.৫.১] ই-ফাইলে নোট নিস্পত্তিকৃত', '%', '6', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'সকল শাখা', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53'),
(410, 4, '[১.৬] ৪র্থ শিল্প বিপ্লবের চ্যালেঞ্জ মোকাবেলায় করণীয় বিষয়ে অবহিতকরণ সভা/কর্মশালা আয়োজন', '[১.৬.১] সভা/কর্মশালা আয়োজিত', 'সংখ্যা', '4', '4', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53'),
(411, 4, '[২.১] তথ্য বাতায়ন হালনাগাদকরণ', '[২.১.১] তথ্য বাতায়নে সকল সেবা বক্স হালনাগাদকৃত', 'সংখ্যা', '4', '4', '1', '1', NULL, 'আইসিটি সেল', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53'),
(412, 4, '[২.২] ই-গভর্ন্যান্স ও উদ্ভাবন কর্মপরিকল্পনা বাস্তবায়ন', '[২.২.১] কর্মপরিকল্পনা বাস্তবায়ন সংক্রান্ত প্রশিক্ষণ আয়োজিত', NULL, '3', '4', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', 'Form-2868457486', NULL, NULL, '2022-02-02 06:53:53', '2022-02-02 06:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `egovernance_innovation_action_plan_sub_rows`
--

CREATE TABLE `egovernance_innovation_action_plan_sub_rows` (
  `id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT 4,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` text DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `years` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `unique_form_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `egovernance_innovation_action_plan_sub_rows`
--

INSERT INTO `egovernance_innovation_action_plan_sub_rows` (`id`, `row_id`, `form_id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `branch_responsible_implementation`, `status`, `years`, `created_at`, `updated_at`, `unique_form_id`) VALUES
(11, 395, 4, NULL, '[২.১.২] বিভিন্ন প্রকাশনা ও তথ্যাদি তথ্য বাতায়নে প্রকাশিত', NULL, '2', '4', '1', NULL, NULL, 'আইসিটি সেল', 1, '২০২৩-২৪', '2022-02-02 06:07:20', '2022-02-02 06:07:20', 'Form-6927192251'),
(12, 396, 4, NULL, '[২.২.২] ই-গভর্ন্যান্স কর্মপরিকল্পনা বাস্তবায়নের জন্য বরাদ্দকৃত অর্থ ব্যয়িত', NULL, '3', '$-5000445]0.2f%', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:07:20', '2022-02-02 06:07:20', 'Form-6927192251'),
(13, 396, 4, NULL, '[২.২.৩] কর্মপরিকল্পনার বাস্তবায়ন অগ্রগতি পর্যালোচনা সংক্রান্ত সভা আয়োজিত', NULL, '3', '4', '1', '1', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:07:20', '2022-02-02 06:07:20', 'Form-6927192251'),
(14, 396, 4, NULL, '[২.২.৪] কর্মপরিকল্পনার অর্ধবার্ষিক স্ব-মূল্যায়ন প্রতিবেদন মন্ত্রিপরিষদ বিভাগে/ ঊ্র্র্ধ্বতন কর্তৃপক্ষের নিকট প্রেরিত', NULL, '3', '১৩-০১-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:07:20', '2022-02-02 06:07:20', 'Form-6927192251'),
(15, 396, 4, NULL, '[২.২.৫] দেশে/বিদেশে বাস্তবায়িত ন্যূনতম একটি উদ্যোগ পরিদর্শনকৃত', NULL, '3', '৩০-০৫-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:07:20', '2022-02-02 06:07:20', 'Form-6927192251'),
(16, 403, 4, NULL, '[২.১.২] বিভিন্ন প্রকাশনা ও তথ্যাদি তথ্য বাতায়নে প্রকাশিত', NULL, '2', '4', '1', NULL, NULL, 'আইসিটি সেল', 1, '২০২৩-২৪', '2022-02-02 06:29:57', '2022-02-02 06:29:57', 'Form-4845741334'),
(17, 404, 4, NULL, '[২.২.২] ই-গভর্ন্যান্স কর্মপরিকল্পনা বাস্তবায়নের জন্য বরাদ্দকৃত অর্থ ব্যয়িত', NULL, '3', '$-5000445]0.2f%', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:29:57', '2022-02-02 06:29:57', 'Form-4845741334'),
(18, 404, 4, NULL, '[২.২.৩] কর্মপরিকল্পনার বাস্তবায়ন অগ্রগতি পর্যালোচনা সংক্রান্ত সভা আয়োজিত', NULL, '3', '4', '1', '1', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:29:57', '2022-02-02 06:29:57', 'Form-4845741334'),
(19, 404, 4, NULL, '[২.২.৪] কর্মপরিকল্পনার অর্ধবার্ষিক স্ব-মূল্যায়ন প্রতিবেদন মন্ত্রিপরিষদ বিভাগে/ ঊ্র্র্ধ্বতন কর্তৃপক্ষের নিকট প্রেরিত', NULL, '3', '১৩-০১-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:29:57', '2022-02-02 06:29:57', 'Form-4845741334'),
(20, 404, 4, NULL, '[২.২.৫] দেশে/বিদেশে বাস্তবায়িত ন্যূনতম একটি উদ্যোগ পরিদর্শনকৃত', NULL, '3', '৩০-০৫-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৩-২৪', '2022-02-02 06:29:57', '2022-02-02 06:29:57', 'Form-4845741334'),
(21, 411, 4, NULL, '[২.১.২] বিভিন্ন প্রকাশনা ও তথ্যাদি তথ্য বাতায়নে প্রকাশিত', NULL, '2', '4', '1', NULL, NULL, 'আইসিটি সেল', 1, '২০২৪-২৫', '2022-02-02 06:53:53', '2022-02-02 06:53:53', 'Form-2868457486'),
(22, 412, 4, NULL, '[২.২.২] ই-গভর্ন্যান্স কর্মপরিকল্পনা বাস্তবায়নের জন্য বরাদ্দকৃত অর্থ ব্যয়িত', NULL, '3', '$-5000445]0.2f%', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', '2022-02-02 06:53:53', '2022-02-02 06:53:53', 'Form-2868457486'),
(23, 412, 4, NULL, '[২.২.৩] কর্মপরিকল্পনার বাস্তবায়ন অগ্রগতি পর্যালোচনা সংক্রান্ত সভা আয়োজিত', NULL, '3', '4', '1', '1', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', '2022-02-02 06:53:53', '2022-02-02 06:53:53', 'Form-2868457486'),
(24, 412, 4, NULL, '[২.২.৪] কর্মপরিকল্পনার অর্ধবার্ষিক স্ব-মূল্যায়ন প্রতিবেদন মন্ত্রিপরিষদ বিভাগে/ ঊ্র্র্ধ্বতন কর্তৃপক্ষের নিকট প্রেরিত', NULL, '3', '১৩-০১-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', '2022-02-02 06:53:53', '2022-02-02 06:53:53', 'Form-2868457486'),
(25, 412, 4, NULL, '[২.২.৫] দেশে/বিদেশে বাস্তবায়িত ন্যূনতম একটি উদ্যোগ পরিদর্শনকৃত', NULL, '3', '৩০-০৫-২০২২', '-', '-', NULL, 'চিফ ইনোভেশন অফিসারের দপ্তর', 1, '২০২৪-২৫', '2022-02-02 06:53:53', '2022-02-02 06:53:53', 'Form-2868457486');

-- --------------------------------------------------------

--
-- Table structure for table `etweywey`
--

CREATE TABLE `etweywey` (
  `id` int(6) UNSIGNED NOT NULL,
  `tweyweyey` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ewyweyewqy`
--

CREATE TABLE `ewyweyewqy` (
  `id` int(6) UNSIGNED NOT NULL,
  `yewyweywy` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `excluding_annual_development_programs`
--

CREATE TABLE `excluding_annual_development_programs` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `years` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 10,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `excluding_annual_development_programs`
--

INSERT INTO `excluding_annual_development_programs` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `years`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(9, 'বাংলাদেশে তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত বিশেষ উন্নয়ন সহায়তা কর্মসূচী', '1860000', 'লক্ষ্যমাত্রা', '360000', '500000', '500000', '500000', '1860000', 'form_594497349', '2021', 1, 10, '2022-01-02 07:59:44', '2022-01-02 07:59:44'),
(10, 'বাংলাদেশে তৈরি পোশাক খাতের নিরাপত্তাজনিত সংস্কার ও পরিবেশগত বিশেষ উন্নয়ন সহায়তা কর্মসূচী', '1860000', 'লক্ষ্যমাত্রা', '360000', '500000', '500000', '500000', '1860000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(11, 'ফরেন ডিরেক্ট ইনভেস্টমেন্ট প্রমোশন প্রজেক্ট', '620000', 'লক্ষ্যমাত্রা', '155000', '155000', '155000', '155000', '620000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(12, 'আরবান বিল্ডিং সেফটি প্রজেক্ট', '1000000', 'লক্ষ্যমাত্রা', '200000', '400000', '400000', '0', '1000000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(13, 'সেকেন্ড স্মল এন্ড মিডিয়াম সাইজড এন্টারপ্রাইজ ডেভেলপমেন্ট প্রজেক্ট (এসএমইডিপি-২)', '5250000', 'শতকরা হার', '1300000', '1300000', '1300000', '1350000', '5250000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(14, 'পল্লী কর্ম সহায়ক ফাউন্ডেশন (পিকেএসএফ)', '9000000', 'শতকরা হার', '360000', '2283783', '2987121', '3369096', '9000000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(15, 'সোস্যাল ডেভেলপমেন্ট ফাউন্ডেশন (এসডিএফ)', '2100000', 'শতকরা হার', '50000', '250000', '800000', '1000000', '2100000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(16, 'রুরাল এন্ড পেরি-আরবান হাউজিং ফিন্যান্স প্রজেক্ট', '3380000', 'লক্ষ্যমাত্রা', '650000', '960000', '960000', '810000', '3380000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(17, 'মোট উন্নয়ন প্রকল্প (বার্ষিক উন্নয়ন কর্মসূচি বহির্ভূত)', '23210000', 'লক্ষ্যমাত্রা', '3075000', '5848783', '7102121', '7184096', '23210000', 'form_00485040', '2021', 1, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `excluding_annual_development_programs_sub_rows`
--

CREATE TABLE `excluding_annual_development_programs_sub_rows` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `years` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 10,
  `row_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `excluding_annual_development_programs_sub_rows`
--

INSERT INTO `excluding_annual_development_programs_sub_rows` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `years`, `status`, `form_id`, `row_id`, `created_at`, `updated_at`) VALUES
(17, NULL, NULL, 'প্রকৃত ব্যয়', '0', NULL, NULL, NULL, '0', 'form_00485040', '2021', 1, 10, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(18, NULL, NULL, 'শতকরা হার', '0%', '0%', '0%', NULL, '0%', 'form_00485040', '2021', 1, 10, 10, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(19, NULL, NULL, 'প্রকৃত ব্যয়', '69273', NULL, NULL, NULL, '69273', 'form_00485040', '2021', 1, 10, 11, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(20, NULL, NULL, 'শতকরা হার', '44.69%', '0%', '0%', '0%', '11%', 'form_00485040', '2021', 1, 10, 11, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(21, NULL, NULL, 'প্রকৃত ব্যয়', '0', NULL, NULL, NULL, '0', 'form_00485040', '2021', 1, 10, 12, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(22, NULL, NULL, 'শতকরা হার', '0.00%', '0.00%', '0%', '0%', '0%', 'form_00485040', '2021', 1, 10, 12, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(23, NULL, NULL, 'প্রকৃত ব্যয়', '1267665', NULL, NULL, NULL, '1267665', 'form_00485040', '2021', 1, 10, 13, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(24, NULL, NULL, 'শতকরা হার', '98%', '0%', '0%', '0%', '24%', 'form_00485040', '2021', 1, 10, 13, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(25, NULL, NULL, 'প্রকৃত ব্যয়', '311307', NULL, NULL, NULL, '311307', 'form_00485040', '2021', 1, 10, 14, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(26, NULL, NULL, 'শতকরা হার', '86.47%', '0%', '0%', '0%', '3.46%', 'form_00485040', '2021', 1, 10, 14, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(27, NULL, NULL, 'প্রকৃত ব্যয়', '0', NULL, NULL, NULL, '0', 'form_00485040', '2021', 1, 10, 15, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(28, NULL, NULL, 'শতকরা হার', '0%', '0%', '0%', '0%', '0%', 'form_00485040', '2021', 1, 10, 15, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(29, NULL, NULL, 'প্রকৃত ব্যয়', '0', NULL, NULL, NULL, '0', 'form_00485040', '2021', 1, 10, 16, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(30, NULL, NULL, 'শতকরা হার', '0%', '0%', '0%', '0%', '0%', 'form_00485040', '2021', 1, 10, 16, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(31, NULL, NULL, 'প্রকৃত ব্যয়', '1648245', '0', '0', '0', '1648245', 'form_00485040', '2021', 1, 10, 17, '2022-01-02 08:00:48', '2022-01-02 08:00:48'),
(32, NULL, NULL, 'শতকরা হার', '-', '0', '0', '0', '7%', 'form_00485040', '2021', 1, 10, 17, '2022-01-02 08:00:48', '2022-01-02 08:00:48');

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
-- Table structure for table `fid_form`
--

CREATE TABLE `fid_form` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `ত্রৈমাসিক_নাম` varchar(250) NOT NULL,
  `ই_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `হার্ড_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `মোট_নিষ্পত্তিকৃত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `ই_ফাইলে_নোট_নিষ্পত্তিকৃত_এর_হার` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fid_form`
--

INSERT INTO `fid_form` (`id`, `table_name`, `ত্রৈমাসিক_নাম`, `ই_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা`, `হার্ড_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা`, `মোট_নিষ্পত্তিকৃত_নোট_সংখ্যা`, `ই_ফাইলে_নোট_নিষ্পত্তিকৃত_এর_হার`, `created_at`) VALUES
(1, 'fid_form', 'mddcdkm', 'mkvmkfk', 'kmvkmvkmk', 'mkkmv', 'kmkfm', '2022-04-24 09:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `financial_year_right_information`
--

CREATE TABLE `financial_year_right_information` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` text DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 7,
  `years` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `unique_form_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financial_year_right_information`
--

INSERT INTO `financial_year_right_information` (`id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `branch_responsible_implementation`, `status`, `form_id`, `years`, `created_at`, `updated_at`, `unique_form_id`) VALUES
(85, '[১.১] তথ্য অধিকার আইন অনুযায়ী নির্ধারিত সময়ের মধ্যে তথ্য প্রদান', '[১.১.১] নির্ধারিত সময়ের মধ্যে তথ্য প্রদানকৃত', '%', '10', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:37', '2022-01-02 05:19:37', '19_37_90137'),
(86, '[১.২] স্ব প্রণোদিত ভাবে প্রকাশযোগ্য তথ্য হালনাগাদ করে ওয়েবসাইটে প্রকাশ', '[১.2.১] হালনাগাদকৃত তথ্য ওয়েবসাইটে প্রকাশিত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:37', '2022-01-02 05:19:37', '19_37_90137'),
(87, '[১.৩] বার্ষিক প্রতিবেদন প্রকাশ', '[১.3.১] বার্ষিক প্রতিবেদন প্রকাশিত', 'তারিখ', '3', '১৫-১০-২০২১', '৩০-০৬-২০২১', '৩০-০৬-২০২১', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:37', '2022-01-02 05:19:37', '19_37_90137'),
(88, '[১.৪]  তথ্য অধিকার আইন, ২০০৯ এর ৫ ধারা অনুসারে যাবতীয় তথ্যের ক্যাটাগরি  ও ক্যাটালগ তৈরি/ হালনাগাদকরণ', '[১.4.১]  তথ্যের ক্যাটাগরি  ও ক্যাটালগ প্রস্তুতকৃত/হালনাগাদকৃত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:37', '2022-01-02 05:19:37', '19_37_90137'),
(89, '[১.৫] তথ্য অধিকার আইন ও বিধিবিধান সম্পর্কে জনসচেতনতা বৃদ্ধিকরণ', '[১.5.১]  প্রচার কার্যক্রম সম্পন্ন', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:37', '2022-01-02 05:19:37', '19_37_90137'),
(90, '[১.৬] তথ্য অধিকার বিষয়ে কর্মকর্তাদের প্রশিক্ষণ আয়োজন', '[১.6.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:37', '2022-01-02 05:19:37', '19_37_90137'),
(91, '[১.১] তথ্য অধিকার আইন অনুযায়ী নির্ধারিত সময়ের মধ্যে তথ্য প্রদান', '[১.১.১] নির্ধারিত সময়ের মধ্যে তথ্য প্রদানকৃত', '%', '10', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:50', '2022-01-02 05:19:50', '19_50_55830'),
(92, '[১.২] স্ব প্রণোদিত ভাবে প্রকাশযোগ্য তথ্য হালনাগাদ করে ওয়েবসাইটে প্রকাশ', '[১.2.১] হালনাগাদকৃত তথ্য ওয়েবসাইটে প্রকাশিত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:50', '2022-01-02 05:19:50', '19_50_55830'),
(93, '[১.৩] বার্ষিক প্রতিবেদন প্রকাশ', '[১.3.১] বার্ষিক প্রতিবেদন প্রকাশিত', 'তারিখ', '3', '১৫-১০-২০২১', '৩০-০৬-২০২১', '৩০-০৬-২০২১', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:50', '2022-01-02 05:19:50', '19_50_55830'),
(94, '[১.৪]  তথ্য অধিকার আইন, ২০০৯ এর ৫ ধারা অনুসারে যাবতীয় তথ্যের ক্যাটাগরি  ও ক্যাটালগ তৈরি/ হালনাগাদকরণ', '[১.4.১]  তথ্যের ক্যাটাগরি  ও ক্যাটালগ প্রস্তুতকৃত/হালনাগাদকৃত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:50', '2022-01-02 05:19:50', '19_50_55830'),
(95, '[১.৫] তথ্য অধিকার আইন ও বিধিবিধান সম্পর্কে জনসচেতনতা বৃদ্ধিকরণ', '[১.5.১]  প্রচার কার্যক্রম সম্পন্ন', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:50', '2022-01-02 05:19:50', '19_50_55830'),
(96, '[১.৬] তথ্য অধিকার বিষয়ে কর্মকর্তাদের প্রশিক্ষণ আয়োজন', '[১.6.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:19:50', '2022-01-02 05:19:50', '19_50_55830'),
(97, '[১.১] তথ্য অধিকার আইন অনুযায়ী নির্ধারিত সময়ের মধ্যে তথ্য প্রদান', '[১.১.১] নির্ধারিত সময়ের মধ্যে তথ্য প্রদানকৃত', '%', '10', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:20:09', '2022-01-02 05:20:09', '20_09_86259'),
(98, '[১.২] স্ব প্রণোদিত ভাবে প্রকাশযোগ্য তথ্য হালনাগাদ করে ওয়েবসাইটে প্রকাশ', '[১.2.১] হালনাগাদকৃত তথ্য ওয়েবসাইটে প্রকাশিত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:20:09', '2022-01-02 05:20:09', '20_09_86259'),
(99, '[১.৩] বার্ষিক প্রতিবেদন প্রকাশ', '[১.3.১] বার্ষিক প্রতিবেদন প্রকাশিত', 'তারিখ', '3', '১৫-১০-২০২১', '৩০-০৬-২০২১', '৩০-০৬-২০২১', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:20:09', '2022-01-02 05:20:09', '20_09_86259'),
(100, '[১.৪]  তথ্য অধিকার আইন, ২০০৯ এর ৫ ধারা অনুসারে যাবতীয় তথ্যের ক্যাটাগরি  ও ক্যাটালগ তৈরি/ হালনাগাদকরণ', '[১.4.১]  তথ্যের ক্যাটাগরি  ও ক্যাটালগ প্রস্তুতকৃত/হালনাগাদকৃত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:20:09', '2022-01-02 05:20:09', '20_09_86259'),
(101, '[১.৫] তথ্য অধিকার আইন ও বিধিবিধান সম্পর্কে জনসচেতনতা বৃদ্ধিকরণ', '[১.5.১]  প্রচার কার্যক্রম সম্পন্ন', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:20:09', '2022-01-02 05:20:09', '20_09_86259'),
(102, '[১.৬] তথ্য অধিকার বিষয়ে কর্মকর্তাদের প্রশিক্ষণ আয়োজন', '[১.6.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 05:20:09', '2022-01-02 05:20:09', '20_09_86259'),
(103, '[১.১] তথ্য অধিকার আইন অনুযায়ী নির্ধারিত সময়ের মধ্যে তথ্য প্রদান', '[১.১.১] নির্ধারিত সময়ের মধ্যে তথ্য প্রদানকৃত', '%', '10', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:34', '2022-01-02 08:12:34', '12_34_44319'),
(104, '[১.২] স্ব প্রণোদিত ভাবে প্রকাশযোগ্য তথ্য হালনাগাদ করে ওয়েবসাইটে প্রকাশ', '[১.2.১] হালনাগাদকৃত তথ্য ওয়েবসাইটে প্রকাশিত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:34', '2022-01-02 08:12:34', '12_34_44319'),
(105, '[১.৩] বার্ষিক প্রতিবেদন প্রকাশ', '[১.3.১] বার্ষিক প্রতিবেদন প্রকাশিত', 'তারিখ', '3', '১৫-১০-২০২১', '৩০-০৬-২০২১', '৩০-০৬-২০২১', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:34', '2022-01-02 08:12:34', '12_34_44319'),
(106, '[১.৪]  তথ্য অধিকার আইন, ২০০৯ এর ৫ ধারা অনুসারে যাবতীয় তথ্যের ক্যাটাগরি  ও ক্যাটালগ তৈরি/ হালনাগাদকরণ', '[১.4.১]  তথ্যের ক্যাটাগরি  ও ক্যাটালগ প্রস্তুতকৃত/হালনাগাদকৃত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:34', '2022-01-02 08:12:34', '12_34_44319'),
(107, '[১.৫] তথ্য অধিকার আইন ও বিধিবিধান সম্পর্কে জনসচেতনতা বৃদ্ধিকরণ', '[১.5.১]  প্রচার কার্যক্রম সম্পন্ন', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:34', '2022-01-02 08:12:34', '12_34_44319'),
(108, '[১.৬] তথ্য অধিকার বিষয়ে কর্মকর্তাদের প্রশিক্ষণ আয়োজন', '[১.6.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:34', '2022-01-02 08:12:34', '12_34_44319'),
(109, '[১.১] তথ্য অধিকার আইন অনুযায়ী নির্ধারিত সময়ের মধ্যে তথ্য প্রদান', '[১.১.১] নির্ধারিত সময়ের মধ্যে তথ্য প্রদানকৃত', '%', '10', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:43', '2022-01-02 08:12:43', '12_43_71046'),
(110, '[১.২] স্ব প্রণোদিত ভাবে প্রকাশযোগ্য তথ্য হালনাগাদ করে ওয়েবসাইটে প্রকাশ', '[১.2.১] হালনাগাদকৃত তথ্য ওয়েবসাইটে প্রকাশিত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:43', '2022-01-02 08:12:43', '12_43_71046'),
(111, '[১.৩] বার্ষিক প্রতিবেদন প্রকাশ', '[১.3.১] বার্ষিক প্রতিবেদন প্রকাশিত', 'তারিখ', '3', '১৫-১০-২০২১', '৩০-০৬-২০২১', '৩০-০৬-২০২১', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:43', '2022-01-02 08:12:43', '12_43_71046'),
(112, '[১.৪]  তথ্য অধিকার আইন, ২০০৯ এর ৫ ধারা অনুসারে যাবতীয় তথ্যের ক্যাটাগরি  ও ক্যাটালগ তৈরি/ হালনাগাদকরণ', '[১.4.১]  তথ্যের ক্যাটাগরি  ও ক্যাটালগ প্রস্তুতকৃত/হালনাগাদকৃত', 'তারিখ', '3', '৩১-১২-২০২১', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:43', '2022-01-02 08:12:43', '12_43_71046'),
(113, '[১.৫] তথ্য অধিকার আইন ও বিধিবিধান সম্পর্কে জনসচেতনতা বৃদ্ধিকরণ', '[১.5.১]  প্রচার কার্যক্রম সম্পন্ন', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:43', '2022-01-02 08:12:43', '12_43_71046'),
(114, '[১.৬] তথ্য অধিকার বিষয়ে কর্মকর্তাদের প্রশিক্ষণ আয়োজন', '[১.6.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '3', '3', '-', '-', NULL, 'আরটিআই কর্মকর্তা', 1, 7, '2021', '2022-01-02 08:12:43', '2022-01-02 08:12:43', '12_43_71046');

-- --------------------------------------------------------

--
-- Table structure for table `fiscal_year_budget_implementation_progress`
--

CREATE TABLE `fiscal_year_budget_implementation_progress` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `years` text DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 8,
  `unique_form_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fiscal_year_budget_implementation_progress`
--

INSERT INTO `fiscal_year_budget_implementation_progress` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `years`, `form_id`, `unique_form_id`, `created_at`, `updated_at`) VALUES
(116, 'কর্মচারীদের প্রতিদান', '59000', 'লক্ষ্যমাত্রা', '17063', '12913', '12613', '16411', '59000', '2021', 8, 'form_091838882', '2022-01-02 08:09:18', '2022-01-02 08:09:18'),
(117, 'পণ্য ও সেবার ব্যবহার', '46040', 'লক্ষ্যমাত্রা', '7630', '10742', '16864', '10804', '46040', '2021', 8, 'form_091838882', '2022-01-02 08:09:18', '2022-01-02 08:09:18'),
(118, 'অ-আর্থিক সম্পদ', '5060', 'লক্ষ্যমাত্রা', '1012', '1012', '1518', '1518', '5060', '2021', 8, 'form_091838882', '2022-01-02 08:09:18', '2022-01-02 08:09:18'),
(119, 'সাধারণ থোক বরাদ্দ *', '260', 'লক্ষ্যমাত্রা', '65', '65', '65', '65', '260', '2021', 8, 'form_091838882', '2022-01-02 08:09:18', '2022-01-02 08:09:18'),
(120, 'মোট সচিবালয়', '110360', 'লক্ষ্যমাত্রা', '25770', '24732', '31060', '28798', '110360', '2021', 8, 'form_091838882', '2022-01-02 08:09:18', '2022-01-02 08:09:18'),
(121, 'কর্মচারীদের প্রতিদান', '59000', 'লক্ষ্যমাত্রা', '17063', '12913', '12613', '16411', '59000', '2021', 8, 'form_093562392', '2022-01-02 08:09:35', '2022-01-02 08:09:35'),
(122, 'পণ্য ও সেবার ব্যবহার', '46040', 'লক্ষ্যমাত্রা', '7630', '10742', '16864', '10804', '46040', '2021', 8, 'form_093562392', '2022-01-02 08:09:35', '2022-01-02 08:09:35'),
(123, 'অ-আর্থিক সম্পদ', '5060', 'লক্ষ্যমাত্রা', '1012', '1012', '1518', '1518', '5060', '2021', 8, 'form_093562392', '2022-01-02 08:09:35', '2022-01-02 08:09:35'),
(124, 'সাধারণ থোক বরাদ্দ *', '260', 'লক্ষ্যমাত্রা', '65', '65', '65', '65', '260', '2021', 8, 'form_093562392', '2022-01-02 08:09:35', '2022-01-02 08:09:35'),
(125, 'মোট সচিবালয়', '110360', 'লক্ষ্যমাত্রা', '25770', '24732', '31060', '28798', '110360', '2021', 8, 'form_093562392', '2022-01-02 08:09:35', '2022-01-02 08:09:35'),
(126, 'কর্মচারীদের প্রতিদান', '59000', 'লক্ষ্যমাত্রা', '17063', '12913', '12613', '16411', '59000', '2021', 8, 'form_490477654', '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(127, 'পণ্য ও সেবার ব্যবহার', '46040', 'লক্ষ্যমাত্রা', '7630', '10742', '16864', '10804', '46040', '2021', 8, 'form_490477654', '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(128, 'অ-আর্থিক সম্পদ', '5060', 'লক্ষ্যমাত্রা', '1012', '1012', '1518', '1518', '5060', '2021', 8, 'form_490477654', '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(129, 'সাধারণ থোক বরাদ্দ *', '260', 'লক্ষ্যমাত্রা', '65', '65', '65', '65', '260', '2021', 8, 'form_490477654', '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(130, 'মোট সচিবালয়', '110360', 'লক্ষ্যমাত্রা', '25770', '24732', '31060', '28798', '110360', '2021', 8, 'form_490477654', '2022-01-18 08:49:04', '2022-01-18 08:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `fiscal_year_budget_implementation_progress_sub_rows`
--

CREATE TABLE `fiscal_year_budget_implementation_progress_sub_rows` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `years` text DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT 8,
  `unique_form_id` text NOT NULL,
  `row_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fiscal_year_budget_implementation_progress_sub_rows`
--

INSERT INTO `fiscal_year_budget_implementation_progress_sub_rows` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `years`, `form_id`, `unique_form_id`, `row_id`, `created_at`, `updated_at`) VALUES
(201, NULL, NULL, 'প্রকৃত ব্যয়', '14572', NULL, NULL, NULL, '14572', '2021', 8, 'form_490477654', 126, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(202, NULL, NULL, 'শতকরা হার', '85%', '0%', '0%', '0%', '25%', '2021', 8, 'form_490477654', 126, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(203, NULL, NULL, 'প্রকৃত ব্যয়', '3245', NULL, NULL, NULL, '3245', '2021', 8, 'form_490477654', 127, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(204, NULL, NULL, 'শতকরা হার', '43%', '0%', '0%', '0%', '7%', '2021', 8, 'form_490477654', 127, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(205, NULL, NULL, 'প্রকৃত ব্যয়', '107', NULL, NULL, NULL, '107', '2021', 8, 'form_490477654', 128, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(206, NULL, NULL, 'শতকরা হার', '11%', '0%', '0%', '0%', '2%', '2021', 8, 'form_490477654', 128, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(207, NULL, NULL, 'প্রকৃত ব্যয়', '0', NULL, NULL, NULL, '0', '2021', 8, 'form_490477654', 129, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(208, NULL, NULL, 'শতকরা হার', '0%', '0%', '0%', '0%', NULL, '2021', 8, 'form_490477654', 129, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(209, NULL, NULL, 'প্রকৃত ব্যয়', '17924', NULL, NULL, NULL, '17924', '2021', 8, 'form_490477654', 130, '2022-01-18 08:49:04', '2022-01-18 08:49:04'),
(210, NULL, NULL, 'শতকরা হার', '70%', '0%', '0%', '0%', '16%', '2021', 8, 'form_490477654', 130, '2022-01-18 08:49:04', '2022-01-18 08:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `form_id` varchar(250) NOT NULL,
  `form_name` varchar(250) NOT NULL,
  `html_form` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_creator` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `form_id`, `form_name`, `html_form`, `status`, `form_creator`, `message`, `created_at`, `updated_at`) VALUES
(1, 'form1', 'Form 1', NULL, 1, NULL, NULL, '2021-12-05 11:04:27', '2021-12-05 11:04:27'),
(2, 'form2', 'Form 2', NULL, 1, NULL, NULL, '2021-12-05 11:11:11', '2021-12-05 11:11:11'),
(3, 'Anfsdghfdsh564156', 'Annual Performance Agreement Form', NULL, 1, NULL, NULL, '2021-12-05 11:49:59', '2021-12-05 11:49:59'),
(4, 'form1', 'Form 1', NULL, 1, NULL, NULL, '2021-12-06 05:20:23', '2021-12-06 05:20:23'),
(5, 'iureierierue', 'ururieier', NULL, 1, NULL, NULL, '2021-12-06 05:23:40', '2021-12-06 05:23:40'),
(6, 'uweuweuy', 'yreyuweuy', NULL, 1, NULL, NULL, '2021-12-06 05:24:39', '2021-12-06 05:24:39'),
(7, 'yeruewuwe', 'yreyewywe', NULL, 1, NULL, NULL, '2021-12-06 05:25:23', '2021-12-06 05:25:23'),
(8, 'gsagasg', 'fasf', '<p>gdhrjherujrerueru</p>', 1, NULL, NULL, '2021-12-06 05:27:02', '2021-12-06 05:27:02'),
(9, 'sdyhdshsd', 'uewweuwe', NULL, 1, NULL, NULL, '2021-12-06 05:28:39', '2021-12-06 05:28:39'),
(10, 'tgdsayte', 'tgewytwe', NULL, 1, NULL, NULL, '2021-12-06 05:29:01', '2021-12-06 05:29:01'),
(11, 'sdgsgsd', 'tgwstywery', NULL, 1, NULL, NULL, '2021-12-06 05:30:29', '2021-12-06 05:30:29'),
(12, 'hdshre', 'gsdghsg', NULL, 1, NULL, NULL, '2021-12-06 05:34:42', '2021-12-06 05:34:42'),
(13, 'hdshre', 'gsdghsg', '<p>dshgsahdsdh</p>', 1, NULL, NULL, '2021-12-06 05:35:00', '2021-12-06 05:35:00'),
(14, 'ywywe4y', 'yewywy', NULL, 1, NULL, NULL, '2021-12-06 05:35:17', '2021-12-06 05:35:17'),
(15, 'ywywe4y', 'yewywy', '<p>yreueueu</p>', 1, NULL, NULL, '2021-12-06 05:35:22', '2021-12-06 05:35:22'),
(16, 'dhaghsahashah', 'hdshsdh', NULL, 1, NULL, NULL, '2021-12-06 05:36:14', '2021-12-06 05:36:14'),
(17, 'gsagsa', 'gsagsa', NULL, 1, NULL, NULL, '2021-12-06 05:38:14', '2021-12-06 05:38:14'),
(18, 'gsagsa', 'gsagsa', '<p>fsagasg</p>', 1, NULL, NULL, '2021-12-06 05:38:24', '2021-12-06 05:38:24'),
(19, 'twqtqwtwq', 'wtqqtqt', NULL, 1, NULL, NULL, '2021-12-06 05:40:07', '2021-12-06 05:40:07'),
(20, 'form1', 'Form 1', '<p>i am here now</p>', 1, NULL, NULL, '2021-12-06 06:07:37', '2021-12-06 06:07:37'),
(21, 'form1', 'Form 1', '<p>jhgikjasasgashasyhd</p>', 1, NULL, NULL, '2021-12-06 06:10:03', '2021-12-06 06:10:03'),
(22, 'form1', 'Form 1', '<p>jhgikjasasgashasyhd</p>', 1, NULL, NULL, '2021-12-06 06:10:22', '2021-12-06 06:10:22'),
(23, 'FormId1', 'Evaluation Form', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Fill This form</p>', 1, NULL, NULL, '2021-12-06 11:39:51', '2021-12-06 11:39:51'),
(24, 'gfgfdg', 'gfdgdfg', '<p>gdfgdfgdf</p>', 1, NULL, NULL, '2022-04-17 09:42:43', '2022-04-17 09:42:43'),
(25, '419', 'newform419', '<p>chdbc</p>', 1, NULL, NULL, '2022-04-19 10:03:14', '2022-04-19 10:03:14'),
(26, '250650', 'sadman', '<p>ncdinccjdjn</p>', 1, NULL, NULL, '2022-04-19 10:15:54', '2022-04-19 10:15:54'),
(27, '465464546', 'FID form 1', '<p>bp[fkpobhlmkolkjbhmoikm</p>', 1, NULL, NULL, '2022-04-20 09:10:17', '2022-04-20 09:10:17'),
(28, 'Form-3311107', 'newform2450', '<p>qefefnefnj</p>', 1, NULL, NULL, '2022-04-20 09:24:16', '2022-04-20 09:24:16'),
(29, 'Form-1133081', 'FID form 1', NULL, 1, NULL, NULL, '2022-04-20 09:26:00', '2022-04-20 09:26:00'),
(30, 'Form-3139252', 'ত্রৈমাসিক নাম', NULL, 1, NULL, NULL, '2022-04-24 05:39:27', '2022-04-24 05:39:27'),
(31, 'Form-6273100', 'বাংলা ফর্ম', '<p>মসচেও</p>', 1, NULL, NULL, '2022-04-24 05:56:10', '2022-04-24 05:56:10'),
(32, 'Form-8435753', 'বাংলা ফর্ম 1', '<p>scdecvervc</p>', 1, NULL, NULL, '2022-04-24 06:02:19', '2022-04-24 06:02:19'),
(33, 'Form-7632715', 'নিষ্পত্তিকৃত__নথিতে', '<p>নিষ্পত্তিকৃত__নথিতে</p>', 1, NULL, NULL, '2022-04-24 07:34:53', '2022-04-24 07:34:53'),
(34, 'Form-737024', 'হিসাবায়ন১', NULL, 1, NULL, NULL, '2022-04-24 08:53:45', '2022-04-24 08:53:45'),
(35, 'Form-737024', 'হিসাবায়ন১', NULL, 1, NULL, NULL, '2022-04-24 08:53:51', '2022-04-24 08:53:51'),
(36, 'Form-737024', 'হিসাবায়ন১', NULL, 1, NULL, NULL, '2022-04-24 08:53:55', '2022-04-24 08:53:55'),
(37, 'Form-737024', 'হিসাবায়ন১', NULL, 1, NULL, NULL, '2022-04-24 08:53:59', '2022-04-24 08:53:59'),
(38, 'Form-737024', 'হিসাবায়ন১', NULL, 1, NULL, NULL, '2022-04-24 08:54:32', '2022-04-24 08:54:32'),
(39, 'Form-737024', 'হিসাবায়ন১', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:54:41', '2022-04-24 08:54:41'),
(40, 'Form-737024', 'হিসাবায়ন১', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:54:42', '2022-04-24 08:54:42'),
(41, 'Form-737024', 'হিসাবায়ন১', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:54:57', '2022-04-24 08:54:57'),
(42, 'Form-737024', 'হিসাবায়ন১', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:55:23', '2022-04-24 08:55:23'),
(43, 'Form-737024', 'হিসাবায়ন১২', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:56:24', '2022-04-24 08:56:24'),
(44, 'Form-737024', 'হিসাবায়ন১২', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:56:41', '2022-04-24 08:56:41'),
(45, 'Form-737024', 'হিসাবায়ন১২', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:56:41', '2022-04-24 08:56:41'),
(46, 'Form-737024', 'হিসাবায়ন১২', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:56:42', '2022-04-24 08:56:42'),
(47, 'Form-737024', 'হিসাবায়ন১২', '<p>ব</p>', 1, NULL, NULL, '2022-04-24 08:56:42', '2022-04-24 08:56:42'),
(48, 'Form-2839236', 'হিসাবায়ন১২', NULL, 1, NULL, NULL, '2022-04-24 08:58:01', '2022-04-24 08:58:01'),
(49, 'Form-5332186', 'হিসাবায়নল', NULL, 1, NULL, NULL, '2022-04-24 09:03:17', '2022-04-24 09:03:17'),
(50, 'Form-2839236', 'হিসাবায়ন১২', NULL, 1, NULL, NULL, '2022-04-24 09:18:22', '2022-04-24 09:18:22'),
(51, 'Form-2839236', 'হিসাবায়ন১২', NULL, 1, NULL, NULL, '2022-04-24 09:18:24', '2022-04-24 09:18:24'),
(52, 'Form-4884291', 'হিসাবায়ন', NULL, 1, NULL, NULL, '2022-04-24 09:34:27', '2022-04-24 09:34:27'),
(53, 'Form-4884291', 'FID Form', NULL, 1, NULL, NULL, '2022-04-24 09:34:52', '2022-04-24 09:34:52'),
(54, 'Form-4075801', 'বাংলা ফর্ম', NULL, 1, NULL, NULL, '2022-04-25 08:17:01', '2022-04-25 08:17:01'),
(55, 'Form-4198517', 'New Form 1', NULL, 1, NULL, NULL, '2022-04-25 08:39:07', '2022-04-25 08:39:07'),
(56, 'Form-3655522', 'ইহফভনিরলেকু অলিগজভ্রেও', '<p>গ্রেয়াইয়ারজগভেয়ার</p>', 1, NULL, NULL, '2022-04-26 06:39:05', '2022-04-26 06:39:05'),
(62, 'Form-7048125', 'amckacdmk', '<p>mckdm</p>', 1, NULL, NULL, '2022-05-18 09:43:03', '2022-05-18 09:43:03'),
(63, 'Form-9021674', 'dvbahjdndjn', '<p>hncjdn</p>', 1, NULL, NULL, '2022-05-18 09:43:46', '2022-05-18 09:43:46'),
(64, 'Form-3192889', 'shadmaan form', NULL, 1, NULL, NULL, '2022-05-18 09:44:50', '2022-05-18 09:44:50'),
(65, 'Form-9776297', 'বাংলা ফরম', '<p>স্ফভস্বেভস</p>', 1, NULL, NULL, '2022-05-18 09:47:13', '2022-05-18 09:47:13'),
(76, 'Form-5420503', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) প্রতিবেদন:', NULL, 1, NULL, NULL, '2022-05-18 10:05:35', '2022-05-18 10:05:35'),
(77, 'Form-5225755', 'Form-1', NULL, 1, NULL, NULL, '2022-05-19 08:48:45', '2022-05-19 08:48:45'),
(90, 'Form-9883465', 'ফর্ম ১', NULL, 1, NULL, NULL, '2022-05-22 07:55:40', '2022-05-22 07:55:40'),
(103, 'Form-2924516', 'ফর্ম ১২', NULL, 1, NULL, NULL, '2022-05-22 08:09:40', '2022-05-22 08:09:40'),
(105, 'Form-6172065', 'জাতীয় তথ্য  ও যোগাযোগ প্রযুক্তি নীতিমালা ২০১৮ এর কর্মপরিকল্পনার করণীয় বিষয়সমূহের বাস্তবায়ন কার্যক্রমের ত্রৈমাসিক অগ্রগতি প্রতিবেদন ২০২২২৩', NULL, 1, NULL, NULL, '2022-05-22 08:11:22', '2022-05-22 08:11:22'),
(106, 'Form-6329023', 'হিসাবায়ন', NULL, 1, NULL, NULL, '2022-05-22 08:40:03', '2022-05-22 08:40:03'),
(107, 'Form-6991862', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন by ICT Cell', NULL, 1, NULL, NULL, '2022-05-31 09:49:03', '2022-05-31 09:49:03'),
(108, 'Form-6991862', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন by ICT Cell', NULL, 1, NULL, NULL, '2022-05-31 09:49:10', '2022-05-31 09:49:10'),
(109, 'Form-4295953', 'Test 1', NULL, 0, NULL, NULL, '2022-06-01 10:12:10', '2022-06-01 10:12:10'),
(110, 'Form-8713902', 'fgfggfgf', NULL, 0, NULL, NULL, '2022-06-01 10:53:30', '2022-06-01 10:53:30'),
(111, 'Form-2672387', 'হার্ড নথির প্রতিবেদন (জানুয়ারি-মার্চ ২০২২)', NULL, 0, NULL, NULL, '2022-06-05 11:00:46', '2022-06-05 11:00:46'),
(112, 'Form-2672387', 'হার্ড নথির প্রতিবেদন (জানুয়ারি-মার্চ ২০২২)', NULL, 0, NULL, NULL, '2022-06-05 11:01:06', '2022-06-05 11:01:06'),
(113, 'Form-6987604', 'budcbdhdb', '<p>hbcdhbdchcdb</p>', 1, NULL, NULL, '2022-06-06 12:25:58', '2022-06-06 12:25:58'),
(114, 'Form-6987604', 'budcbdhdb', '<p>hbcdhbdchcdb</p>', 1, NULL, NULL, '2022-06-06 12:26:09', '2022-06-06 12:26:09'),
(115, 'Form-4522330', 'acnicjncj', NULL, 1, NULL, NULL, '2022-06-06 12:26:40', '2022-06-06 12:26:40'),
(116, 'Form-1630545', 'fencjibdbhb', NULL, 1, NULL, NULL, '2022-06-06 12:29:56', '2022-06-06 12:29:56'),
(117, 'Form-6661753', 'fyubhafbahb', '<p>bhchcbdh</p>', 1, NULL, NULL, '2022-06-07 04:30:21', '2022-06-07 04:30:21'),
(118, 'Form-8826194', 'fhaiafj', '<p>dnjbcjb</p>', 1, NULL, NULL, '2022-06-07 04:32:38', '2022-06-07 04:32:38'),
(119, 'Form-9088747', 'hafufhj', NULL, 1, NULL, NULL, '2022-06-07 04:35:18', '2022-06-07 04:35:18'),
(120, 'Form-5320945', 'cagcdjnacj', '<p>jmmdkdmckd</p>', 1, NULL, NULL, '2022-06-07 05:08:50', '2022-06-07 05:08:50'),
(121, 'Form-8438007', 'বাংলা ফর্ম 6722', '<p>ffafa</p>', 1, NULL, NULL, '2022-06-07 05:57:01', '2022-06-07 05:57:01'),
(122, 'Form-6967293', 'fahyafha', '<p>jjkvsfj</p>', 0, NULL, NULL, '2022-06-07 06:05:34', '2022-06-07 06:05:34'),
(123, 'Form-6399785', 'fqfqk fqnqf', '<p>nafnfn</p>', 0, NULL, NULL, '2022-06-07 06:08:45', '2022-06-07 06:08:45'),
(124, 'Form-6357388', 'ftftt', '<p>jjhj</p>', 0, NULL, NULL, '2022-06-07 06:09:44', '2022-06-07 06:09:44'),
(125, 'Form-6357388', 'ftftt', '<p>jjhj</p>', 0, NULL, NULL, '2022-06-07 06:09:50', '2022-06-07 06:09:50'),
(126, 'Form-4595028', 'fafaffa', '<p>fafafa</p>', 0, NULL, NULL, '2022-06-07 06:12:45', '2022-06-07 06:12:45'),
(127, 'Form-1330699', 'faaffaf', '<p>fafafa</p>', 1, NULL, NULL, '2022-06-07 06:15:46', '2022-06-07 06:15:46'),
(128, 'Form-5730231', 'হার্ডনথি  ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন', NULL, 1, NULL, NULL, '2022-06-07 07:47:50', '2022-06-07 07:47:50'),
(129, 'Form-2049971', 'new form 2022 6', '<p>this is not new thing</p>', 1, NULL, NULL, '2022-06-09 11:45:46', '2022-06-09 11:45:46'),
(130, 'Form-6033848', 'new form61222', '<p>nfahffaj</p>', 0, NULL, NULL, '2022-06-12 04:19:49', '2022-06-12 04:19:49'),
(131, 'Form-5471163', 'নথি বাস্তবায়ন বিষয়ক 34র্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) অগ্রগতি প্রতিবেদন:', NULL, 0, NULL, NULL, '2022-06-12 06:34:23', '2022-06-12 06:34:23'),
(132, 'Form-9462238', 'নথি বাস্তবায়ন বিষয়ক trhrthর্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) অগ্রগতি প্রতিবেদন:', NULL, 0, NULL, NULL, '2022-06-12 08:23:28', '2022-06-12 08:23:28'),
(133, 'Form-1530914', 'this is form61222', '<p>this is form61222</p>', 0, NULL, NULL, '2022-06-12 08:30:30', '2022-06-12 08:30:30'),
(134, 'Form-5210176', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক দফাকঝদ', NULL, 0, NULL, NULL, '2022-06-12 08:44:18', '2022-06-12 08:44:18'),
(135, 'Form-4873308', 'dafvdf', NULL, 0, NULL, NULL, '2022-06-12 08:55:15', '2022-06-12 08:55:15'),
(136, 'Form-1424560', 'fabvfabhfabahff', NULL, 0, NULL, NULL, '2022-06-12 09:20:02', '2022-06-12 09:20:02'),
(137, 'Form-8234248', 'দেশের জাতীয় খ্যান সংস্থা হিসাবে কাজ', '<p>দেশের জাতীয় খ্যান সংস্থা হিসাবে কাজ</p>', 0, NULL, NULL, '2022-06-12 10:05:08', '2022-06-12 10:05:08'),
(138, 'Form-825988', 'qwrtyyh', '<p>vgvgvg</p>', 0, NULL, NULL, '2022-06-12 10:11:52', '2022-06-12 10:11:52'),
(139, 'Form-6607674', 'kullpfl;af,', '<p>lf,al</p>', 1, NULL, NULL, '2022-06-13 04:13:14', '2022-06-13 04:13:14'),
(140, 'Form-4821435', 'জাতীয় আইসিটি নীতিমালা ২০১৮ এর কর্ম-পরিকল্পনার করণীয় বিষয়সমূহের বাস্তবায়ন কার্যক্রমের ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন', NULL, 1, NULL, NULL, '2022-06-13 06:04:28', '2022-06-13 06:04:28'),
(141, 'Form-9266216', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিকফঘ্ন্রথ্রথ (এপ্রিল-জুন ২০২২) অগ্রগতি প্রতিবেদন:', NULL, 1, NULL, NULL, '2022-06-13 06:31:38', '2022-06-13 06:31:38'),
(142, 'Form-6670870', 'NEW TEST FORM', '<p>THIS IS NEW TEST FORM</p>', 1, NULL, NULL, '2022-06-13 06:41:16', '2022-06-13 06:41:16'),
(143, 'Form-8475884', 'dfghjkl;', '<p>fghjl</p>', 1, NULL, NULL, '2022-06-13 06:51:10', '2022-06-13 06:51:10'),
(144, 'Form-5881290', 'edgreg', NULL, 1, NULL, NULL, '2022-06-13 07:00:29', '2022-06-13 07:00:29'),
(145, 'Form-3933020', '‘জাতীয়তথ্যওযোগাযোগপ্রযুক্তিনীতিমালা২০১৮’ এর কর্ম-পরিকল্পনার করণীয় বিষয় ভিত্তিক বাস্তবায়ন কার্যক্রমের ত্রৈমাসিক (জানুয়ারি-মার্চ, ২০২২) অগ্রগতির প্রতিবেদনছক:', NULL, 1, NULL, NULL, '2022-06-14 08:51:39', '2022-06-14 08:51:39'),
(146, 'Form-4720582', 'qwertyuiop', '<p>fujdfufdj</p>', 1, 130, NULL, '2022-06-29 06:01:14', '2022-06-29 06:01:14'),
(147, 'Form-1507995', 'দেশের জাতীয় পরি', '<p>faefffefe</p>', 1, 130, NULL, '2022-06-29 06:21:38', '2022-06-29 06:21:38'),
(148, 'Form-3925077', 'newform 2022', '<p>this is new form</p>', 1, 129, NULL, '2022-06-29 08:01:54', '2022-06-29 08:01:54'),
(149, 'Form-2791974', 'notun form', '<p>250950</p>', 1, 130, 'hoy nai kaaj', '2022-06-29 08:55:20', '2022-06-29 08:55:20'),
(150, 'Form-5429314', 'Organization User Form', '<p>this is a organization user form</p>', 1, 130, 'okey', '2022-06-30 08:54:09', '2022-06-30 08:54:09'),
(151, 'Form-2699814', 'Regulatory Form', '<p>this is a regulatory form</p>', 1, 128, 'arekber check den', '2022-06-30 09:21:19', '2022-06-30 09:21:19'),
(152, 'Form-5258248', 'qf544fqfq45qf', '<p>5f54a5f445aff</p>', 1, 130, NULL, '2022-07-03 08:57:42', '2022-07-03 08:57:42'),
(153, 'Form-5258248', 'qf544fqfq45qf', '<p>5f54a5f445aff</p>', 1, 130, NULL, '2022-07-03 08:57:48', '2022-07-03 08:57:48'),
(154, 'Form-2559128', 'ajmfakfk', '<p>mkfkmfakafm</p>', 1, 130, NULL, '2022-07-03 08:58:31', '2022-07-03 08:58:31'),
(155, 'Form-2559128', 'ajmfakfk', '<p>mkfkmfakafm</p>', 1, 130, NULL, '2022-07-03 08:59:14', '2022-07-03 08:59:14'),
(156, 'Form-4485145', 'nfojfafjaf', '<p>njfanafjn</p>', 1, 130, NULL, '2022-07-03 09:00:33', '2022-07-03 09:00:33'),
(157, 'Form-4485145', 'nfojfafjaf', '<p>njfanafjn</p>', 1, 130, NULL, '2022-07-03 09:01:20', '2022-07-03 09:01:20'),
(158, 'Form-7009656', 'yqrhurqhrqqr', '<p>uffuafn</p>', 1, 130, NULL, '2022-07-03 09:02:51', '2022-07-03 09:02:51'),
(159, 'Form-9916702', 'newform 73', '<p>fafef</p>', 1, 130, NULL, '2022-07-03 09:05:42', '2022-07-03 09:05:42'),
(160, 'Form-9916702', 'newform 73sss', '<p>fafef</p>', 1, 130, NULL, '2022-07-03 09:06:47', '2022-07-03 09:06:47'),
(161, 'Form-9916702', 'newform 73sssqfef', '<p>fafef</p>', 1, 130, NULL, '2022-07-03 09:07:21', '2022-07-03 09:07:21'),
(162, 'Form-5584784', 'fa4af4fa4', '<p>5fa4fafa5</p>', 1, 130, NULL, '2022-07-03 09:08:39', '2022-07-03 09:08:39'),
(163, 'Form-5584784', 'fa4af4fa4', '<p>5fa4fafa5</p>', 1, 130, NULL, '2022-07-03 09:09:09', '2022-07-03 09:09:09'),
(164, 'Form-5152340', 'newform 31273', '<p>fa45fa4fa5</p>', 1, 130, NULL, '2022-07-03 09:13:09', '2022-07-03 09:13:09'),
(165, 'Form-5152340', 'newform 31273', '<p>fa45fa4fa5</p>', 1, 130, NULL, '2022-07-03 09:13:32', '2022-07-03 09:13:32'),
(166, 'Form-8193420', 'kimlslo', '<p>nfajfnafj</p>', 1, 130, NULL, '2022-07-03 09:16:32', '2022-07-03 09:16:32'),
(167, 'Form-8193420', 'kimlslo', '<p>nfajfnafj</p>', 1, 130, NULL, '2022-07-03 09:26:14', '2022-07-03 09:26:14'),
(168, 'Form-6975734', 'newform447', '<p>nafhanffjn</p>', 1, 130, NULL, '2022-07-03 10:47:44', '2022-07-03 10:47:44'),
(169, 'Form-6975734', 'newform447', '<p>nafhanffjn</p>', 1, 130, NULL, '2022-07-03 10:47:52', '2022-07-03 10:47:52'),
(170, 'Form-6975734', 'newform448(org-user)', '<p>nafhanffjn</p>', 1, 130, NULL, '2022-07-03 10:48:56', '2022-07-03 10:48:56'),
(171, 'Form-2911742', 'NewForm(ministry)', '<p>afnuafnfajf</p>', 1, 126, NULL, '2022-07-04 04:23:05', '2022-07-04 04:23:05'),
(172, 'Form-8650182', '5aff4fa5', '<p>4f4ff4</p>', 1, 128, NULL, '2022-07-04 10:46:50', '2022-07-04 10:46:50'),
(173, 'Form-3714689', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ 2022', '<p>&nbsp;hsggsnj</p>', 1, 126, NULL, '2022-07-04 11:41:39', '2022-07-04 11:41:39'),
(174, 'Form-350917', 'gdhjd', '<p>vjsjkv</p>', 1, 126, NULL, '2022-07-07 10:08:59', '2022-07-07 10:08:59'),
(175, 'Form-1739654', 'organization form', '<p>nfanfjfk</p>', 0, 130, 'this form has been rejected', '2022-07-14 04:33:05', '2022-07-14 04:33:05'),
(176, 'Form-4341170', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) অগ্রগতি adf প্রতিবেদন:', NULL, 1, 172, NULL, '2022-07-17 09:52:53', '2022-07-17 09:52:53'),
(177, 'Form-2802758', 'afhufafaj', '<p>fajafjnaj</p>', 1, 128, NULL, '2022-07-17 10:43:33', '2022-07-17 10:43:33'),
(178, 'Form-2802758', 'afhufafaj', '<p>fajafjnaj</p>', 1, 128, NULL, '2022-07-17 10:43:38', '2022-07-17 10:43:38'),
(179, 'Form-4101558', 'for717', '<p>fanjfa</p>', 1, 128, NULL, '2022-07-17 10:44:32', '2022-07-17 10:44:32'),
(180, 'Form-4858913', 'দেশের জাতীয় পরিসং', '<p><strong>দেশের জাতীয় পরিসং</strong></p>', 1, 128, NULL, '2022-07-17 10:46:40', '2022-07-17 10:46:40'),
(181, 'Form-3635911', 'fafa45f4a', '<p>4fa4faf4a</p>', 1, 128, NULL, '2022-07-17 10:47:10', '2022-07-17 10:47:10'),
(182, 'Form-967896', 'new test form', '<p>fafmfakm</p>', 1, 181, NULL, '2022-07-17 17:29:23', '2022-07-17 17:29:23'),
(183, 'Form-5417424', 'armaan form', '<p>kafkfamfa</p>', 1, 181, NULL, '2022-07-17 17:39:28', '2022-07-17 17:39:28'),
(184, 'Form-8401036', 'newform 724', '<p>newform 724</p>', 1, 223, NULL, '2022-07-24 04:17:40', '2022-07-24 04:17:40'),
(185, 'Form-6332337', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', '<p>দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ</p>', 1, 126, NULL, '2022-07-24 07:51:14', '2022-07-24 07:51:14'),
(186, 'Form-5191209', 'nedvdhbvj', '<p>bhvhdbvhdb</p>', 1, 207, NULL, '2022-07-24 07:58:22', '2022-07-24 07:58:22'),
(187, 'Form-7228364', 'Admin Form', '<p>this is admin form</p>', 1, 207, NULL, '2022-07-24 08:19:08', '2022-07-24 08:19:08'),
(188, 'Form-3619362', 'mifafa', '<p>fffaffa</p>', 1, 207, NULL, '2022-07-24 11:11:22', '2022-07-24 11:11:22'),
(189, 'Form-3667495', 'form725', '<p>this form 725</p>', 1, 126, NULL, '2022-07-25 03:37:24', '2022-07-25 03:37:24'),
(190, 'Form-9102070', 'feeffefe', '<p>feeffe</p>', 1, 126, NULL, '2022-07-25 04:06:04', '2022-07-25 04:06:04'),
(191, 'Form-5377032', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', '<p>দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ</p>', 1, 233, NULL, '2022-07-25 04:38:41', '2022-07-25 04:38:41'),
(192, 'Form-919495', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) অগ্রগতি প্রতিবেদন:', NULL, 1, 235, NULL, '2022-07-25 05:34:15', '2022-07-25 05:34:15'),
(193, 'Form-9550163', 'ICT Form', '<p>ICT Form</p>', 1, 126, NULL, '2022-07-25 10:16:40', '2022-07-25 10:16:40'),
(194, 'Form-5477187', 'another New Form', '<p>this is another new form</p>', 1, 237, NULL, '2022-07-25 10:44:07', '2022-07-25 10:44:07'),
(195, 'Form-5448214', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) অগ্রগতি প্রতিবেদনa aqw:', NULL, 1, 126, NULL, '2022-07-25 11:49:02', '2022-07-25 11:49:02'),
(196, 'Form-8508325', '14fa5fa54af5', '<p>45af54af54</p>', 1, 237, NULL, '2022-07-26 08:32:51', '2022-07-26 08:32:51'),
(197, 'Form-5142965', 'never form', NULL, 1, 237, NULL, '2022-07-26 09:46:14', '2022-07-26 09:46:14'),
(198, 'Form-1583408', 'form726', '<p>this is&nbsp; a form</p>', 1, 126, NULL, '2022-07-26 16:45:35', '2022-07-26 16:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `forms_info_all`
--

CREATE TABLE `forms_info_all` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `sender_category` int(11) DEFAULT NULL,
  `receiver_category` int(11) DEFAULT NULL,
  `form_created_by` int(11) DEFAULT NULL,
  `creator_category` int(11) DEFAULT NULL,
  `report_status` varchar(50) DEFAULT NULL,
  `final_status` float DEFAULT NULL,
  `feedback_msg` text DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forms_info_all`
--

INSERT INTO `forms_info_all` (`id`, `form_id`, `sender_id`, `receiver_id`, `sender_category`, `receiver_category`, `form_created_by`, `creator_category`, `report_status`, `final_status`, `feedback_msg`, `deadline`, `created_at`, `updated_by`) VALUES
(83, 190, NULL, NULL, NULL, NULL, 126, 1, 'CREATED', 0, NULL, NULL, '2022-07-25 04:06:04', '2022-07-25 04:06:04'),
(84, 191, NULL, NULL, NULL, NULL, 233, 2, 'CREATED', 0, NULL, NULL, '2022-07-25 04:38:41', '2022-07-25 04:38:41'),
(85, 191, 233, 234, 2, 2, 233, 2, 'RECIEVED', 0, NULL, '2022-08-04 18:00:00', '2022-07-25 04:54:08', '2022-07-25 04:54:08'),
(86, 191, 234, 233, 2, 2, 233, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 05:16:29', '2022-07-25 05:16:29'),
(87, 192, NULL, NULL, NULL, NULL, 235, 2, 'CREATED', 0, NULL, NULL, '2022-07-25 05:34:15', '2022-07-25 05:34:15'),
(88, 192, 235, 236, 2, 2, 235, 2, 'RECIEVED', 0, NULL, '2022-07-26 18:00:00', '2022-07-25 05:34:55', '2022-07-25 05:34:55'),
(89, 192, 236, 235, 2, 2, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 05:35:36', '2022-07-25 05:35:36'),
(90, 192, 236, 235, 2, 2, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 05:36:10', '2022-07-25 05:36:10'),
(91, 192, 235, 237, 2, 3, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 05:39:28', '2022-07-25 05:39:28'),
(92, 192, 237, 235, 3, 2, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 05:41:27', '2022-07-25 05:41:27'),
(93, 192, 237, 238, 3, 3, 235, 2, 'RECIEVED', 1, NULL, '2022-09-09 18:00:00', '2022-07-25 08:13:13', '2022-07-25 08:13:13'),
(94, 192, 238, 237, 3, 3, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 08:14:05', '2022-07-25 08:14:05'),
(95, 192, 238, 237, 3, 3, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 08:15:18', '2022-07-25 08:15:18'),
(96, 193, NULL, NULL, NULL, NULL, 126, 1, 'CREATED', 0, NULL, NULL, '2022-07-25 10:16:40', '2022-07-25 10:16:40'),
(97, 193, 126, 235, 1, 2, 126, 1, 'RECIEVED', 0, NULL, NULL, '2022-07-25 10:17:18', '2022-07-25 10:17:18'),
(98, 192, 235, 236, 2, 2, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 10:36:26', '2022-07-25 10:36:26'),
(99, 193, 235, 237, 2, 3, 126, 1, 'RECIEVED', 0, NULL, NULL, '2022-07-25 10:37:57', '2022-07-25 10:37:57'),
(100, 192, 235, 237, 2, 3, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-25 10:40:28', '2022-07-25 10:40:28'),
(101, 192, 237, 238, 3, 3, 235, 2, 'RECIEVED', 1, NULL, '2035-12-24 18:00:00', '2022-07-25 10:42:53', '2022-07-25 10:42:53'),
(102, 194, NULL, NULL, NULL, NULL, 237, 3, 'CREATED', 0, NULL, NULL, '2022-07-25 10:44:07', '2022-07-25 10:44:07'),
(103, 194, 237, 238, 3, 3, 237, 3, 'RECIEVED', 0, NULL, '2022-07-24 18:00:00', '2022-07-25 10:44:32', '2022-07-25 10:44:32'),
(104, 194, 238, 237, 3, 3, 237, 3, 'RECIEVED', 0, NULL, NULL, '2022-07-25 10:45:13', '2022-07-25 10:45:13'),
(105, 195, NULL, NULL, NULL, NULL, 126, 1, 'CREATED', 0, NULL, NULL, '2022-07-25 11:49:02', '2022-07-25 11:49:02'),
(106, 195, 126, 235, 1, 2, 126, 1, 'RECIEVED', 0, NULL, NULL, '2022-07-25 11:49:19', '2022-07-25 11:49:19'),
(107, 195, 235, 236, 2, 2, 126, 1, 'RECIEVED', 1, NULL, '2022-07-25 18:00:00', '2022-07-25 11:50:17', '2022-07-25 11:50:17'),
(108, 195, 236, 235, 2, 2, 126, 1, 'RECIEVED', 0, NULL, NULL, '2022-07-25 11:50:59', '2022-07-25 11:50:59'),
(109, 192, 238, 237, 3, 3, 235, 2, 'RECIEVED', 0, NULL, NULL, '2022-07-26 08:23:05', '2022-07-26 08:23:05'),
(110, 196, NULL, NULL, NULL, NULL, 237, 3, 'CREATED', 0, NULL, NULL, '2022-07-26 08:32:51', '2022-07-26 08:32:51'),
(111, 197, NULL, NULL, NULL, NULL, 237, 3, 'CREATED', 0, NULL, NULL, '2022-07-26 09:46:14', '2022-07-26 09:46:14'),
(112, 197, 237, 238, 3, 3, 237, 3, 'RECIEVED', 1, NULL, '2022-08-26 18:00:00', '2022-07-26 09:46:48', '2022-07-26 09:46:48'),
(113, 197, 237, 239, 3, 4, 237, 3, 'RECIEVED', 0, NULL, NULL, '2022-07-26 11:39:50', '2022-07-26 11:39:50'),
(114, 197, 239, 240, 4, 4, 237, 3, 'RECIEVED', 0, NULL, '2022-08-11 18:00:00', '2022-07-26 11:56:07', '2022-07-26 11:56:07'),
(115, 197, 239, 240, 4, 4, 237, 3, 'RECIEVED', 0, NULL, '2022-08-12 18:00:00', '2022-07-26 11:57:36', '2022-07-26 11:57:36'),
(116, 198, NULL, NULL, NULL, NULL, 126, 1, 'CREATED', 0, NULL, NULL, '2022-07-26 16:45:35', '2022-07-26 16:45:35'),
(117, 198, 126, 235, 1, 2, 126, 1, 'RECIEVED', 0, NULL, NULL, '2022-07-26 16:46:07', '2022-07-26 16:46:07'),
(118, 198, 235, 236, 2, 2, 126, 1, 'RECIEVED', 0, NULL, '2022-09-16 18:00:00', '2022-07-26 16:48:21', '2022-07-26 16:48:21'),
(119, 198, 236, 235, 2, 2, 126, 1, 'RECIEVED', 0, NULL, NULL, '2022-07-26 16:49:33', '2022-07-26 16:49:33'),
(120, 198, 236, 235, 2, 2, 126, 1, 'RECIEVED', 0, NULL, NULL, '2022-07-26 18:02:22', '2022-07-26 18:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `form_1_table`
--

CREATE TABLE `form_1_table` (
  `id` int(6) UNSIGNED NOT NULL,
  `form_1_table_c` varchar(30) NOT NULL,
  `form_1_table_v` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_2_tbl`
--

CREATE TABLE `form_2_tbl` (
  `id` int(6) UNSIGNED NOT NULL,
  `form_2_tbl_cl` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_form`
--

CREATE TABLE `form_form` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `this_is_column` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_table`
--

CREATE TABLE `form_table` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `Col_1` varchar(250) NOT NULL,
  `Col_2` varchar(250) NOT NULL,
  `Col_3` varchar(250) NOT NULL,
  `Col_4` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_table`
--

INSERT INTO `form_table` (`id`, `table_name`, `Col_1`, `Col_2`, `Col_3`, `Col_4`, `created_at`) VALUES
(1, 'Form_Table', 'Item-1', 'Item-2', 'Item-3', 'Item-4', '2022-05-19 08:51:57'),
(2, 'Form_Table', 'Item-1', 'Item-2', 'Item-3', 'Item-4', '2022-05-19 08:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `form_tables`
--

CREATE TABLE `form_tables` (
  `form_id` int(11) NOT NULL,
  `table_name` varchar(250) NOT NULL,
  `table_headline` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_tables`
--

INSERT INTO `form_tables` (`form_id`, `table_name`, `table_headline`, `created_by`) VALUES
(1, 'form_1_table', NULL, NULL),
(2, 'form_2_tbl', NULL, NULL),
(3, 'annual_performance_agreement', NULL, NULL),
(4, 'tablefdsgg', NULL, NULL),
(5, 'dufuidfidfi', NULL, NULL),
(6, 'ewyweyewqy', NULL, NULL),
(7, 'yweywey', NULL, NULL),
(8, 'sgasegtas', NULL, NULL),
(9, 'yu7weuyhsaeyte', NULL, NULL),
(10, 'tewyweywey', NULL, NULL),
(11, 'etweywey', NULL, NULL),
(20, 'Demo Table', NULL, NULL),
(22, 'table_one', NULL, NULL),
(23, 'form_form', NULL, NULL),
(24, 'gdgfdf', NULL, NULL),
(25, 'sample_form', NULL, NULL),
(26, 'shadman', NULL, NULL),
(27, 'new_table', NULL, NULL),
(28, 'newtable250', NULL, NULL),
(29, 'new_table_fid_1233243', NULL, NULL),
(30, 'ত্রৈমাসিকনাম', NULL, NULL),
(31, 'কফেরগভফজ', NULL, NULL),
(32, 'ফগ্নব্যত্ন্য', NULL, NULL),
(33, 'নিষ্পত্তিকৃত_নথিতে', NULL, NULL),
(52, 'fid-test-form', NULL, NULL),
(53, 'fid_form', NULL, NULL),
(54, 'এইরগজিওএঝ', NULL, NULL),
(55, 'new_table_fid_25_april', NULL, NULL),
(56, 'শাদমান_আরনাব', NULL, NULL),
(57, '', NULL, NULL),
(58, '', NULL, NULL),
(59, 'pi9ouu98y6', NULL, NULL),
(60, 'pi9ouu98y6', NULL, NULL),
(61, 'pi9ouu98y6', NULL, NULL),
(62, 'mkckd', NULL, NULL),
(63, 'njcdjdcn', NULL, NULL),
(64, 'shadmaan', NULL, NULL),
(65, '২৩২৪এফ', NULL, NULL),
(66, '্বরথব্বত্র', NULL, NULL),
(67, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন_২০২২)_অগ্রগতি_প্রতিবেদন:', NULL, NULL),
(68, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক', NULL, NULL),
(69, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন_২০২২)_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(70, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন_২০২২)_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(71, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_এপ্রিল_জুন_২০২২_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(72, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_এপ্রিল_জুন_২০২২_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(73, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_এপ্রিল_জুন_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(74, 'নথি_বাস্তবায়ন_বিষয়ক', NULL, NULL),
(75, '', NULL, NULL),
(76, 'নথি_বাস্তবায়ন', NULL, NULL),
(77, 'Form_Table', NULL, NULL),
(78, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(79, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(80, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(81, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(82, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(83, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(84, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(85, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(86, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(87, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(88, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদনঃ', NULL, NULL),
(89, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্ম_পরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(90, 'টেবিল_১', NULL, NULL),
(91, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(92, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন', NULL, NULL),
(93, 'জাতীয়_তথ্য', NULL, NULL),
(94, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(95, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(96, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(97, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(98, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(99, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(100, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি', NULL, NULL),
(101, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক', NULL, NULL),
(102, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_এর__করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক', NULL, NULL),
(103, 'টেবিল_১২', NULL, NULL),
(104, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা_২০১৮_এর_কর্মপরিকল্পনার_করণীয়_বিষয়সমূহের_বাস্তবায়ন_কার্যক্রমের_ত্রৈমাসিক_অগ্রগতি_প্রতিবেদন_২২২২২', NULL, NULL),
(105, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা', NULL, NULL),
(106, 'হিসাবায়ন', NULL, NULL),
(107, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)_অগ্রগতি_প্রতিবেদন_by_ICT_Cell', NULL, NULL),
(108, 'নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)_অগ্রগতি_প্রতিবেদন_by_ICT_Cell', NULL, NULL),
(109, 'Test_2', NULL, NULL),
(110, 'xxffgbf', NULL, NULL),
(111, 'হার্ড_নথির_প্রতিবেদন_(জানুয়ারি_মার্চ_২০২২)', NULL, NULL),
(112, 'হার্ড_নথির_প্রতিবেদন_(জানুয়ারি_মার্চ_২০২২)', NULL, NULL),
(116, 'table_4082188', 'hbncdjhdcnbjdcjnc', NULL),
(117, 'table_1083210', 'dhbfhfbhfahbh', NULL),
(118, 'table_7115464', 'b', NULL),
(119, 'table_5982022', 'jncsjcndjc', NULL),
(120, 'table_7534784', 'kmcdkmdcmc', NULL),
(121, 'table_1324392', 'বাংলা ফর্ম', NULL),
(122, 'table_4302662', 'jadfjdfh', NULL),
(123, 'table_9024346', 'nanfna', NULL),
(124, 'table_6870805', 'uuhhu', NULL),
(125, 'table_6870805', 'uuhhu', NULL),
(126, 'table_7967981', 'fafafafa', NULL),
(127, 'table_2806902', 'afafafaf', NULL),
(128, 'table_2799467', 'হার্ডনথি  ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন ২০-০৬-২০২২', NULL),
(129, 'table_8162286', 'test table 69', 111),
(130, 'table_7504978', 'helloform', 111),
(131, 'table_1805111', 'বিষয়ঃ জেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেট 23', 111),
(132, 'table_2822830', 'drfgveaerg', 111),
(133, 'table_7752558', 'this is form61222', 111),
(134, 'table_2300063', 'রথ্বহ্রথসদফত্রগফদ', 111),
(135, 'table_9452695', 'adfvrf', 111),
(136, 'table_7506460', 'hbffahbbhfabhfa', 111),
(137, 'table_8245', 'দেশের য় খ্যান সংস্থা হিসাবে কাজ', 111),
(138, 'table_281640', 'bghjvbc ghg', 111),
(139, 'table_2279013', 'l,alf', 111),
(140, 'table_3794480', 'জাতীয় আইসিটি নীতিমালা ২০১৮ এর কর্ম-পরিকল্পনার করণীয় বিষয়সমূহের বাস্তবায়ন কার্যক্রমের ত্রৈমাসিক (এপ্রিল-জুন, ২০২২) অগ্রগতি প্রতিবেদন', 102),
(141, 'table_2884511', 'ইয়থজেত্যজদত্যজন্যতজন্যতজেয়তজ্য ইয়হেয়থেয়', 114),
(142, 'table_4004346', 'test form 613', 115),
(143, 'table_2652689', 'xcvb,', 115),
(144, 'table_3913302', 'ergeger', 111),
(145, 'table_1673371', '‘জাতীয়তথ্যওযোগাযোগপ্রযুক্তিনীতিমালা২০১৮’ এর কর্ম-পরিকল্পনার করণীয় বিষয় ভিত্তিক বাস্তবায়ন কার্যক্রমের ত্রৈমাসিক (জানুয়ারি-মার্চ, ২০২২) অগ্রগতির প্রতিবেদনছক:', 102),
(146, 'table_9896359', 'taryuiorpr', 130),
(147, 'table_6635675', 'নিষ্পত্তিকৃত_নথিতেনি নথিতেনিষ্পত্তিকৃত_নথিতেনিষ্পত্তিকৃত_নথিতে', 130),
(148, 'table_6954026', 'new form headline', 129),
(149, 'table_4989862', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 130),
(150, 'table_3716619', 'this is a organization user form', 130),
(151, 'table_3244373', 'this is a regulatory form', 128),
(165, 'table_7216900', '54fa5fa54f45fa45', 130),
(170, 'table_5511014', 'newform448(org-user)', 130),
(171, 'table_816106', 'this is a ministry form', 126),
(172, 'table_9488859', '4f45fa45', 128),
(173, 'table_8247267', 'fanfajaf', 126),
(174, 'table_3926996', 'ministry form 7', 126),
(175, 'table_3677541', 'Oragnization Form', 130),
(176, 'table_6185442', 'বিষয়ঃ জেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেটsdasdasf', 172),
(177, 'table_4781902', 'afkmfakmfa', 128),
(178, 'table_4781902', 'afkmfakmfa', 128),
(179, 'table_8164227', 'form717', 128),
(180, 'table_3368740', 'দেশের জাতীয় পরিসং', 128),
(181, 'table_4908983', 'fa4f5a4a54', 128),
(182, 'table_8044872', 'new test form', 181),
(183, 'table_6453252', 'armaan table', 181),
(184, 'table_6525817', 'newform 724', 223),
(185, 'table_7861982', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 126),
(186, 'table_4837263', 'hvbvdhbdvh', 207),
(187, 'table_6901854', 'Admin Form', 207),
(188, 'table_8011941', 'fafafafafa', 207),
(189, 'table_2572295', 'form725', 126),
(190, 'table_1652396', 'feeffefe', 126),
(191, 'table_5282148', 'দেশের জাতীয় পরিসংখ্যান সংস্থা হিসাবে কাজ', 233),
(192, 'table_1216210', 'বিষয়ঃ জেট শাখা সংশ্লিষ্ট বাজেট ও এপিএ প্রতিবেদনের ফরমেট', 235),
(193, 'table_266730', 'ICT Form', 126),
(194, 'table_1140467', 'Neew Form By Sub Admin Regulatory', 237),
(195, 'table_596282', 'নথি বাস্তবায়ন বিষয়ক ৪র্থ ত্রৈমাসিক (এপ্রিল-জুন ২০২২) sdfঅগ্রগতি প্রতিবেদনaswa', 126),
(196, 'table_4310303', '54fa455f4a', 237),
(197, 'table_3815937', 'new form headline', 237),
(198, 'table_9281856', 'New Form Creation 726', 126);

-- --------------------------------------------------------

--
-- Table structure for table `gdgfdf`
--

CREATE TABLE `gdgfdf` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `gdfgdfg` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `institution_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_status` varchar(250) NOT NULL DEFAULT 'NO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `institution_id`, `status`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Group', 1, 1, 'YES', '2022-01-10 06:17:47', '2022-01-10 12:17:47'),
(2, 'Group', 1, 1, 'YES', '2022-01-10 06:18:31', '2022-01-10 12:18:31'),
(3, 'Group', 1, 1, 'YES', '2022-01-10 06:19:59', '2022-01-10 12:19:59'),
(4, 'Group', 1, 1, 'YES', '2022-01-10 06:21:09', '2022-01-10 12:21:09'),
(5, 'Group', 1, 1, 'YES', '2022-01-10 06:23:23', NULL),
(6, 'Group', 1, 1, 'YES', '2022-01-10 06:23:53', NULL),
(7, 'group 1', 1, 1, 'NO', '2022-01-10 07:01:32', NULL),
(8, 'group 2', 1, 1, 'NO', '2022-01-10 08:12:52', NULL),
(9, 'Ebl Group', 1, 1, 'NO', '2022-01-10 08:41:36', NULL),
(10, 'Institution Group', 1, 1, 'NO', '2022-01-11 07:09:02', NULL),
(11, 'User Group', 3, 1, 'NO', '2022-01-11 07:09:27', NULL),
(12, 'User Group', 3, 1, 'NO', '2022-01-11 07:09:47', NULL),
(13, 'Bangladesh Bank User Group', 1, 1, 'NO', '2022-01-16 04:53:38', NULL),
(14, 'hyuuihi', 1, 1, 'NO', '2022-01-24 12:06:51', NULL),
(15, 'My Demo Group 232022', 1, 1, 'NO', '2022-02-03 05:02:12', NULL),
(16, 'My Bank Demo', 1, 1, 'NO', '2022-02-03 05:03:55', NULL),
(17, 'Armaan Ministry', 3, 1, 'NO', '2022-02-03 05:13:25', NULL),
(18, 'My Demo Group 23202244', 4, 1, 'NO', '2022-02-03 05:46:22', NULL),
(19, 'urir report', 5, 1, 'NO', '2022-02-03 06:11:23', NULL),
(20, 'divisionwise', 5, 1, 'NO', '2022-02-15 04:34:54', NULL),
(21, 'abrar', 5, 1, 'NO', '2022-02-15 05:08:50', NULL),
(22, 'My Division Group', 5, 1, 'NO', '2022-02-15 05:24:44', NULL),
(23, 'GroupToday1306', 4, 1, 'NO', '2022-06-13 09:00:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `group_id`, `institution_id`, `user_id`) VALUES
(4, 7, 1, NULL),
(5, 7, 3, NULL),
(6, 7, 4, NULL),
(22, 8, 1, NULL),
(23, 8, 4, NULL),
(29, 6, 1, NULL),
(30, 6, 4, NULL),
(36, 10, 1, NULL),
(37, 10, 3, NULL),
(38, 10, 4, NULL),
(41, 9, 3, NULL),
(42, 13, NULL, 60),
(43, 13, NULL, 61),
(44, 13, NULL, 62),
(45, 13, NULL, 63),
(46, 13, NULL, 64),
(47, 14, 1, NULL),
(48, 14, 3, NULL),
(49, 14, 4, NULL),
(50, 15, 1, NULL),
(51, 15, 3, NULL),
(52, 15, 4, NULL),
(53, 16, 1, NULL),
(54, 16, 3, NULL),
(55, 16, 4, NULL),
(56, 17, NULL, 65),
(57, 17, NULL, 66),
(58, 17, NULL, 67),
(59, 18, NULL, 70),
(60, 19, NULL, 71),
(61, 19, NULL, 72),
(62, 19, NULL, 73),
(63, 20, NULL, 74),
(64, 20, NULL, 75),
(65, 21, NULL, 71),
(66, 21, NULL, 72),
(67, 21, NULL, 73),
(68, 21, NULL, 74),
(69, 21, NULL, 75),
(72, 21, NULL, 75),
(73, 22, NULL, 74),
(74, 22, NULL, 75);

-- --------------------------------------------------------

--
-- Table structure for table `implement_service_delivery_commitments`
--

CREATE TABLE `implement_service_delivery_commitments` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` text DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 6,
  `years` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `implement_service_delivery_commitments`
--

INSERT INTO `implement_service_delivery_commitments` (`id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `branch_responsible_implementation`, `status`, `form_id`, `years`, `unique_form_id`, `created_at`, `updated_at`) VALUES
(57, 'njnckdcdc', 'cdjnc', '%', '8', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-5149172494', '2022-01-27 07:59:36', '2022-01-27 07:59:36'),
(58, 'ncajcn', 'ncjcnj', 'Armaan', '5', '4', '1', '1', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-5149172494', '2022-01-27 07:59:36', '2022-01-27 07:59:36'),
(59, 'njcdnjcncd', 'ncndncj', 'সংখ্যা', '5', '4', '-', '-', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-5149172494', '2022-01-27 07:59:36', '2022-01-27 07:59:36'),
(60, 'damn bro', 'bchd', 'সংখ্যা', '7', '2', '-', '-', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-5149172494', '2022-01-27 07:59:36', '2022-01-27 07:59:36'),
(61, '[১.১] সেবা প্রদান প্রতিশ্রুতি পরিবীক্ষণ কমিটির সিদ্ধান্ত বাস্তবায়ন', '[১.১.১] সিদ্ধান্ত বাস্তবায়িত', '%', '8', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-6325922358', '2022-01-27 08:06:53', '2022-01-27 08:06:53'),
(62, '[১.২] সেবা প্রদান প্রতিশ্রুতি ত্রৈমাসিক ভিত্তিতে হালনাগাদকরণ', '[১.২.১] ওয়েবসাইটে প্রতি ত্রৈমাসিকে হালনাগাদকৃত', 'সংখ্যা', '5', '4', '1', '1', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-6325922358', '2022-01-27 08:06:53', '2022-01-27 08:06:53'),
(63, '[২.১] সেবা প্রদান প্রতিশ্রুতি বিষয়ক  প্রশিক্ষণ আয়োজন', '[১.১.১] প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '5', '4', '-', '-', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-6325922358', '2022-01-27 08:06:53', '2022-01-27 08:06:53'),
(64, '[২.২]  সেবা প্রদান বিষয়ে স্টেকহোল্ডারগণের সমন্বয়ে অবহিতকরণ সভা আয়োজন', '[১.৩.১]  অবহিতকরণ সভা অনুষ্ঠিত', 'সংখ্যা', '7', '2', '-', '-', NULL, 'সিটিজেন চার্টার কমিটি', 1, 6, '2021', 'Form-6325922358', '2022-01-27 08:06:53', '2022-01-27 08:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id`, `parent_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(12, NULL, 'সোনালী ব্যাঙ্ক', NULL, NULL, NULL, '2022-07-18 09:56:36', '2022-07-18 09:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `leave_application`
--

CREATE TABLE `leave_application` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `leave_starting_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_starting_from_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_ending_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_ending_on_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casual,Seek,Emergency, Visiting leave etc..',
  `status` tinyint(4) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_application`
--

INSERT INTO `leave_application` (`id`, `application_id`, `user_id`, `leave_starting_from`, `leave_starting_from_time`, `leave_ending_on`, `leave_ending_on_time`, `reason`, `type`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(55, '', 16, '2021-11-03', 'fullDay', '2021-11-06', 'fullDay', 'To see doctor', 'Casual', 0, NULL, '16', NULL, '2021-11-02 18:23:20', '2021-11-02 18:23:20'),
(56, '', 16, '2021-11-03', 'fullDay', '2021-11-06', 'fullDay', 'To see doctor', 'Casual', 0, NULL, '16', NULL, '2021-11-02 18:23:29', '2021-11-02 18:23:29'),
(57, '', 16, '2021-11-03', 'fullDay', '2021-11-06', 'fullDay', 'To see doctor', 'Casual', 0, NULL, '16', NULL, '2021-11-02 18:23:51', '2021-11-02 18:23:51'),
(58, '', 16, '2021-11-08', 'fullDay', '2021-11-09', 'fullDay', 'Go see doctor', 'Casual', 0, NULL, '16', '', '2021-11-02 18:30:56', '2021-11-02 18:30:56'),
(59, '', 16, '2021-11-05', 'fullDay', '2021-11-05', 'fullDay', NULL, 'Casual', 0, NULL, '16', NULL, '2021-11-04 13:40:59', '2021-11-04 13:40:59'),
(60, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:02:12', '2021-11-04 14:02:12'),
(61, '', 25, '2021-11-05', 'fullDay', '2021-11-07', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:02:52', '2021-11-04 14:02:52'),
(62, '', 25, '2021-11-05', 'fullDay', '2021-11-07', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:03:00', '2021-11-04 14:03:00'),
(63, '', 25, '2021-11-05', 'fullDay', '2021-11-07', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:03:22', '2021-11-04 14:03:22'),
(64, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:03:52', '2021-11-04 14:03:52'),
(65, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:04:24', '2021-11-04 14:04:24'),
(66, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:04:34', '2021-11-04 14:04:34'),
(67, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:04:51', '2021-11-04 14:04:51'),
(68, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:05:17', '2021-11-04 14:05:17'),
(69, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:09:13', '2021-11-04 14:09:13'),
(70, '', 25, '2021-11-05', 'fullDay', '2021-11-06', 'fullDay', NULL, 'Casual', 0, NULL, '25', NULL, '2021-11-04 14:10:40', '2021-11-04 14:10:40'),
(71, '', 26, '2021-11-08', 'fullDay', '2021-11-09', 'fullDay', NULL, 'Casual', 0, NULL, '26', NULL, '2021-11-07 10:08:30', '2021-11-07 10:08:30'),
(72, '', 26, '2021-11-08', 'fullDay', '2021-11-09', 'fullDay', NULL, 'Casual', 0, NULL, '26', NULL, '2021-11-07 12:06:14', '2021-11-07 12:06:14'),
(73, '', 31, '2021-11-08', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '31', NULL, '2021-11-07 12:35:32', '2021-11-07 12:35:32'),
(74, '', 31, '2021-11-08', 'fullDay', '2021-11-09', 'fullDay', NULL, 'Casual', 0, NULL, '31', NULL, '2021-11-07 12:56:03', '2021-11-07 12:56:03'),
(75, '', 31, '2021-11-09', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '31', NULL, '2021-11-07 12:56:33', '2021-11-07 12:56:33'),
(76, '', 32, '2021-11-08', 'fullDay', '2021-11-09', 'fullDay', NULL, 'Casual', 1, NULL, '32', '1', '2021-11-07 13:10:49', '2021-11-07 13:12:40'),
(77, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:03:12', '2021-11-08 03:03:12'),
(78, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:03:30', '2021-11-08 03:03:30'),
(79, '', 1, '2021-11-09', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:03:53', '2021-11-08 03:03:53'),
(80, '', 1, '2021-11-09', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:05:43', '2021-11-08 03:05:43'),
(81, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:06:29', '2021-11-08 03:06:29'),
(82, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:09:31', '2021-11-08 03:09:31'),
(83, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:09:59', '2021-11-08 03:09:59'),
(84, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:21:22', '2021-11-08 03:21:22'),
(85, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:21:28', '2021-11-08 03:21:28'),
(86, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:21:44', '2021-11-08 03:21:44'),
(87, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:24:54', '2021-11-08 03:24:54'),
(88, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:54:33', '2021-11-08 03:54:33'),
(89, '', 1, '2021-11-10', 'fullDay', '2021-11-11', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 03:58:29', '2021-11-08 03:58:29'),
(90, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 04:06:50', '2021-11-08 04:06:50'),
(91, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 04:32:03', '2021-11-08 04:32:03'),
(92, '', 1, '2021-11-09', 'fullDay', '2021-11-10', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 10:41:09', '2021-11-08 10:41:09'),
(93, '', 1, '2021-11-12', 'fullDay', '2021-11-13', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 10:52:53', '2021-11-08 10:52:53'),
(94, '', 1, '2021-11-09', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 10:53:44', '2021-11-08 10:53:44'),
(95, '', 1, '2021-11-10', 'fullDay', '2021-11-20', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 10:54:11', '2021-11-08 10:54:11'),
(96, '', 1, '2021-11-09', 'fullDay', '2021-11-11', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-08 11:27:10', '2021-11-08 11:27:10'),
(97, '', 1, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-09 10:44:23', '2021-11-09 10:44:23'),
(98, '', 19, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '19', NULL, '2021-11-09 10:46:37', '2021-11-09 10:46:37'),
(99, '', 19, '2021-11-10', 'fullDay', '2021-11-11', 'fullDay', NULL, 'Casual', 0, NULL, '19', NULL, '2021-11-09 10:46:58', '2021-11-09 10:46:58'),
(100, '', 19, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '19', '19', '2021-11-09 10:49:27', '2021-11-09 11:48:13'),
(101, '', 19, '2021-11-12', 'fullDay', '2021-11-13', 'fullDay', NULL, 'Emergency', 1, NULL, '19', NULL, '2021-11-09 10:49:49', '2021-11-09 10:49:49'),
(102, '', 19, '2021-11-13', 'fullDay', '2021-11-15', 'fullDay', NULL, 'Emergency', 1, NULL, '19', NULL, '2021-11-09 10:50:25', '2021-11-09 10:50:25'),
(103, '', 19, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '19', NULL, '2021-11-10 04:05:49', '2021-11-10 04:05:49'),
(104, '', 19, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '19', NULL, '2021-11-10 04:07:19', '2021-11-10 04:07:19'),
(105, '', 19, '2021-11-10', 'fullDay', '2021-11-11', 'fullDay', NULL, 'Casual', 1, NULL, '19', '1', '2021-11-10 04:21:01', '2021-11-10 04:23:08'),
(106, '', 1, '2021-11-10', 'fullDay', '2021-11-11', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 10:51:24', '2021-11-10 10:51:24'),
(107, '', 1, '2021-11-10', 'fullDay', '2021-11-11', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 10:54:53', '2021-11-10 10:54:53'),
(108, '', 1, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 11:02:41', '2021-11-10 11:02:41'),
(109, '', 1, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 11:03:50', '2021-11-10 11:03:50'),
(110, '', 1, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 11:06:31', '2021-11-10 11:06:31'),
(111, '', 1, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 11:06:52', '2021-11-10 11:06:52'),
(112, '', 1, '2021-11-11', 'fullDay', '2021-11-12', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 11:08:32', '2021-11-10 11:08:32'),
(113, '', 1, '2021-11-13', 'fullDay', '2021-11-14', 'fullDay', NULL, 'Casual', 0, NULL, '1', NULL, '2021-11-10 11:08:59', '2021-11-10 11:08:59'),
(114, '', 19, '2021-11-12', 'fullDay', '2021-11-13', 'fullDay', NULL, 'Casual', 1, NULL, '19', '37', '2021-11-11 06:22:10', '2021-11-11 07:11:24'),
(115, '', 37, '2021-11-12', 'fullDay', '2021-11-13', 'fullDay', NULL, 'Casual', 0, NULL, '37', NULL, '2021-11-11 07:42:07', '2021-11-11 07:42:07'),
(116, '', 19, '2021-11-15', 'fullDay', '2021-11-16', 'fullDay', NULL, 'Casual', 0, NULL, '19', NULL, '2021-11-14 05:03:45', '2021-11-14 05:03:45'),
(117, 'LeaveApp957', 19, '2021-11-15', 'fullDay', '2021-11-16', 'fullDay', NULL, 'Casual', 1, 'Enter remark...', '19', '1', '2021-11-14 08:36:50', '2021-11-15 04:46:11'),
(118, 'LeaveApp580', 60, '2021-11-15', 'fullDay', '2021-11-16', 'fullDay', NULL, 'Casual', 1, 'Enter remark...', '60', '1', '2021-11-14 08:49:51', '2021-11-14 08:57:01'),
(119, 'LeaveApp859', 19, '2021-11-15', 'fullDay', '2021-11-16', 'fullDay', NULL, 'Casual', 0, NULL, '19', NULL, '2021-11-14 09:50:37', '2021-11-14 09:50:37'),
(120, 'LeaveApp984', 19, '2021-11-15', 'fullDay', '2021-11-16', 'fullDay', NULL, 'Casual', 0, NULL, '19', NULL, '2021-11-14 09:51:15', '2021-11-14 09:51:15'),
(121, 'LeaveApp688', 19, '2021-11-15', 'fullDay', '2021-11-17', 'fullDay', NULL, 'Casual', 1, NULL, '19', NULL, '2021-11-14 09:52:29', '2021-11-14 09:52:29'),
(122, 'LeaveApp693', 16, '2021-11-15', 'fullDay', '2021-11-16', 'fullDay', NULL, 'Casual', 1, NULL, '1', NULL, '2021-11-14 10:10:10', '2021-11-14 10:10:10'),
(123, 'LeaveApp981', 37, '2021-11-15', 'fullDay', '2021-11-16', 'fullDay', NULL, 'Casual', 1, NULL, '1', NULL, '2021-11-14 10:15:01', '2021-11-14 10:15:01'),
(124, 'LeaveApp727', 16, '2021-11-16', 'fullDay', '2021-11-17', 'fullDay', NULL, 'Casual', 1, NULL, '1', NULL, '2021-11-14 10:16:49', '2021-11-14 10:16:49'),
(125, 'LeaveApp535', 16, '2021-11-08', 'fullDay', '2021-11-15', 'fullDay', NULL, 'Casual', 1, NULL, '1', NULL, '2021-11-14 10:30:13', '2021-11-14 10:30:13'),
(126, 'LeaveApp828', 1, '2021-11-16', 'fullDay', '2021-11-17', 'fullDay', 'dawfwqf', 'Casual', 1, 'Enter remark...', '1', '1', '2021-11-15 04:20:17', '2021-11-15 04:25:19'),
(127, 'LeaveApp552', 1, '2021-11-16', 'fullDay', '2021-11-17', 'fullDay', NULL, 'Casual', 1, 'Done', '1', '1', '2021-11-15 04:46:43', '2021-11-15 04:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2021_10_13_060710_create_permissions_table', 1),
(15, '2021_10_13_060829_create_roles_table', 1),
(16, '2021_10_13_060914_create_users_permissions_table', 1),
(17, '2021_10_13_060958_create_users_roles_table', 1),
(18, '2021_10_13_061040_create_roles_permissions_table', 1),
(19, '2021_10_17_083937_create_departments_table', 1),
(20, '2021_10_17_090426_add_additional_columns_to_permissions_table', 1),
(21, '2021_10_17_083937_create_designations_table', 2),
(22, '2021_10_18_061232_create_user_leave_permission', 3),
(23, '2021_10_18_101245_add_additional_columns_to_users_table', 4),
(24, '2021_10_21_042823_add_additional_some_columns_to_users_table', 5),
(25, '2021_10_21_063936_crate_leave_application_table', 6),
(26, '2021_10_21_065007_crate_leave_application_permissions_table', 7),
(27, '2021_10_25_055332_add_type_columns_to_leave_application_table', 8),
(28, '2021_10_26_081440_add_remark_column_to_leave_application_table', 9),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 10),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 10),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 10),
(32, '2016_06_01_000004_create_oauth_clients_table', 10),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 10),
(34, '2021_11_02_085309_add_more_colmns_to_users_table', 11),
(35, '2021_11_08_091349_create_notification_table', 12),
(36, '2021_11_08_091734_add_additional_column_to_notification_table', 13),
(37, '2021_11_08_102534_add_additional_show_date_column_to_notification_table', 14),
(38, '2021_11_09_160625_create_departments_table', 15),
(39, '2021_11_09_165727_create_user_departments_table', 16),
(40, '2021_11_09_170334_create_alternate_users_table', 16),
(41, '2021_11_14_142729_add_additional_columns_to_leave_application_table', 17),
(42, '2021_11_17_125027_create_messages_table', 18),
(43, '2021_11_17_145719_create_chats_table', 19),
(44, '2021_11_23_104914_create_leave_routines_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `ministries`
--

CREATE TABLE `ministries` (
  `id` int(11) NOT NULL,
  `parent_id` varchar(55) DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `code` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ministries`
--

INSERT INTO `ministries` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(14, NULL, 1, 'বাজেট শাখা', NULL, 1, NULL, '2022-07-18 09:12:42', '2022-07-18 09:12:42'),
(15, NULL, NULL, 'test dept', NULL, 1, NULL, '2022-07-19 10:06:21', '2022-07-19 10:06:21'),
(16, NULL, NULL, 'আইন শাখা', NULL, 1, NULL, '2022-07-19 10:06:36', '2022-07-19 10:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `mkckd`
--

CREATE TABLE `mkckd` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `fafaf` varchar(250) NOT NULL,
  `fafaaf` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mkckd`
--

INSERT INTO `mkckd` (`id`, `table_name`, `fafaf`, `fafaaf`, `created_at`) VALUES
(1, 'mkckd', '', '', '2022-05-18 09:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `national_integrity_trategy_action_plan`
--

CREATE TABLE `national_integrity_trategy_action_plan` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` text DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `years` longtext DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `row_ids` varchar(20) DEFAULT NULL,
  `form_id` int(11) DEFAULT 3,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `national_integrity_trategy_action_plan`
--

INSERT INTO `national_integrity_trategy_action_plan` (`id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `branch_responsible_implementation`, `unique_form_id`, `status`, `years`, `rows`, `row_ids`, `form_id`, `created_at`, `updated_at`) VALUES
(370, '১.১ নৈতিকতা কমিটির সভা আয়োজন', 'প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '4', '4', '1', '1', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(371, '১.২ নৈতিকতা কমিটির সভার সিদ্ধান্ত বাস্তবায়ন', 'বাস্তবায়িত সিদ্ধান্ত', '%', '6', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(372, '১.৩ সুশাসন প্রতিষ্ঠার নিমিত্ত অংশীজনের (stakeholders) অংশগ্রহণে  সভা', 'অনুষ্ঠিত সভা', 'সংখ্যা', '2', '4', '1', NULL, NULL, NULL, 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(373, '১.৪ শুদ্ধাচার সংক্রান্ত প্রশিক্ষণ আয়োজন', NULL, 'সংখ্যা', '2', '2', '1', '1', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(374, '১.৫ কর্ম-পরিবেশ উন্নয়ন (স্বাস্থ্যবিধি অনুসরণ/ টিওএন্ডইভুক্ত অকেজো মালামাল বিনষ্টকরণ/ পরিষ্কার-পরিচ্ছন্নতা বৃদ্ধি ইত্যাদি', 'উন্নত কর্ম-পরিবেশ', 'সংখ্যা ও তারিখ', '2', '২ টি', NULL, NULL, NULL, NULL, 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(375, '১.৬ জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা, ২০২১-২২ ও ত্রৈমাসিক পরিবীক্ষণ প্রতিবেদন মন্ত্রিপরিষদ বিভাগে দাখিল ও স্ব স্ব ওয়েবসাইটে আপলোডকরণ', 'কর্মপরিকল্পনা ও ত্রৈমাসিক প্রতিবেদন দাখিলকৃত ও আপলোডকৃত', 'তারিখ', '1', '১৫-১০-২০২১', '১৫-১০-২০২১', '১৫-১০-২০২১', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(376, '১.৭ আওতাধীন দপ্তর/সংস্হা (প্রযোজ্য ক্ষেত্রে) কর্তৃক দাখিলকৃত জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা ও পরিবীক্ষণ  প্রতিবেদনের ওপর ফিডব্যাক প্রদান', 'ফিডব্যাক সভা/কর্মশালা অনুষ্ঠিত', 'তারিখ', '4', '৩১-১০-২০২১', '-', '-', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(377, '১.৮ শুদ্ধাচার পুরস্কার প্রদান এবং পুরস্কারপ্রাপ্তদের তালিকা ওয়েবসাইটে প্রকাশ', 'প্রদত্ত পুরস্কার', 'তারিখ', '1', '৩০-০৬-২০২২', '-', '-', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(378, '২.১ ২০২১-২২ অর্থ বছরের ক্রয়-পরিকল্পনা (প্রকল্পের অনুমোদিত বার্ষিক ক্রয় পরিকল্পনাসহ) ওয়েবসাইটে প্রকাশ', 'ক্রয়-পরিকল্পনা ওয়েবসাইটে প্রকাশিত', 'তারিখ', '2', '৩১-১০-২০২১', '-', '-', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(379, '২.২ প্রকল্পের PSC ও PIC সভা আয়োজন', 'সভা আয়োজিত', 'সংখ্যা', '2', '16', '5', '5', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(380, '২.৩ বার্ষিক উন্নয়ন কর্মসূচি বাস্তবায়ন', 'বার্ষিক উন্নয়ন কর্মসূচি বাস্তবায়িত', '%', '2', '100', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(381, '২.৪ প্রকল্প সমাপ্তি শেষে প্রকল্পের সম্পদ (যানবাহন, কম্পিউটার, আসবাবপত্র ইত্যাদি) বিধি মোতাবেক হস্তান্তর করা', 'প্রকল্পের সম্পদ বিধি মোতাবেক হস্তান্তরিত', 'তারিখ', '2', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(382, '৩.১ MRA কর্তৃক MFI সমূহে পরিচালিত পরিদর্শনসমূহের অন্যুন ৫ টি প্রতিবেদনের Follow up পর্যালোচনা।', 'অন্যুন ৫ টি প্রতিবেদনের Follow up পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (এমআরএ)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(383, '৩.২ আবাসন খাতে বাংলাদেশ হাউজ বিল্ডিং ফাইনান্স কর্পোরেশনের গ্রাহক সেবা মান যাচাইয়ে ৫ টি ঋণ কার্যক্রম পর্যালোচনা করা।', '৫ টি ঋণ কার্যক্রম পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (কেন্দ্রীয় ব্যাংক)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(384, '৩.৩ পরিপত্রের আলোকে ৪ (চার) টি বঙ্গবন্ধু যুবঋণ বিতরণ কার্যক্রম পরিবীক্ষণ করা।', 'যুবঋণ বিতরণ কার্যক্রম পরিবীক্ষণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (বিশেষায়িত ব্যাংক)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(385, '৩.৪ ঋণ খেলাপীর হার বৃদ্ধির কারণ চিহ্নিতকরণের লক্ষ্যে কর্মশালার আয়োজন।', 'কর্মশালার আয়োজন', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (কেন্দ্রীয় ব্যাংক)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(386, '৩.৫ লাইফ বীমাকারীর সম্পদ বিনিয়োগ প্রবিধানমালা, ২০১৯ মোতাবেক ০৩টি বীমা কোম্পানীর বিনিয়োগ পর্যালোচনা।', '০৩টি বীমা কোম্পানীর বিনিয়োগ পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (বীমা)', 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(387, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-8192406788', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(388, '১.১ নৈতিকতা কমিটির সভা আয়োজন', 'প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '4', '4', '1', '1', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(389, '১.২ নৈতিকতা কমিটির সভার সিদ্ধান্ত বাস্তবায়ন', 'বাস্তবায়িত সিদ্ধান্ত', '%', '6', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(390, '১.৩ সুশাসন প্রতিষ্ঠার নিমিত্ত অংশীজনের (stakeholders) অংশগ্রহণে  সভা', 'অনুষ্ঠিত সভা', 'সংখ্যা', '2', '4', '1', NULL, NULL, NULL, 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(391, '১.৪ শুদ্ধাচার সংক্রান্ত প্রশিক্ষণ আয়োজন', NULL, 'সংখ্যা', '2', '2', '1', '1', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(392, '১.৫ কর্ম-পরিবেশ উন্নয়ন (স্বাস্থ্যবিধি অনুসরণ/ টিওএন্ডইভুক্ত অকেজো মালামাল বিনষ্টকরণ/ পরিষ্কার-পরিচ্ছন্নতা বৃদ্ধি ইত্যাদি', 'উন্নত কর্ম-পরিবেশ', 'সংখ্যা ও তারিখ', '2', '২ টি', NULL, NULL, NULL, NULL, 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(393, '১.৬ জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা, ২০২১-২২ ও ত্রৈমাসিক পরিবীক্ষণ প্রতিবেদন মন্ত্রিপরিষদ বিভাগে দাখিল ও স্ব স্ব ওয়েবসাইটে আপলোডকরণ', 'কর্মপরিকল্পনা ও ত্রৈমাসিক প্রতিবেদন দাখিলকৃত ও আপলোডকৃত', 'তারিখ', '1', '১৫-১০-২০২১', '১৫-১০-২০২১', '১৫-১০-২০২১', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(394, '১.৭ আওতাধীন দপ্তর/সংস্হা (প্রযোজ্য ক্ষেত্রে) কর্তৃক দাখিলকৃত জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা ও পরিবীক্ষণ  প্রতিবেদনের ওপর ফিডব্যাক প্রদান', 'ফিডব্যাক সভা/কর্মশালা অনুষ্ঠিত', 'তারিখ', '4', '৩১-১০-২০২১', '-', '-', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(395, '১.৮ শুদ্ধাচার পুরস্কার প্রদান এবং পুরস্কারপ্রাপ্তদের তালিকা ওয়েবসাইটে প্রকাশ', 'প্রদত্ত পুরস্কার', 'তারিখ', '1', '৩০-০৬-২০২২', '-', '-', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(396, '২.১ ২০২১-২২ অর্থ বছরের ক্রয়-পরিকল্পনা (প্রকল্পের অনুমোদিত বার্ষিক ক্রয় পরিকল্পনাসহ) ওয়েবসাইটে প্রকাশ', 'ক্রয়-পরিকল্পনা ওয়েবসাইটে প্রকাশিত', 'তারিখ', '2', '৩১-১০-২০২১', '-', '-', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(397, '২.২ প্রকল্পের PSC ও PIC সভা আয়োজন', 'সভা আয়োজিত', 'সংখ্যা', '2', '16', '5', '5', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(398, '২.৩ বার্ষিক উন্নয়ন কর্মসূচি বাস্তবায়ন', 'বার্ষিক উন্নয়ন কর্মসূচি বাস্তবায়িত', '%', '2', '100', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(399, '২.৪ প্রকল্প সমাপ্তি শেষে প্রকল্পের সম্পদ (যানবাহন, কম্পিউটার, আসবাবপত্র ইত্যাদি) বিধি মোতাবেক হস্তান্তর করা', 'প্রকল্পের সম্পদ বিধি মোতাবেক হস্তান্তরিত', 'তারিখ', '2', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(400, '৩.১ MRA কর্তৃক MFI সমূহে পরিচালিত পরিদর্শনসমূহের অন্যুন ৫ টি প্রতিবেদনের Follow up পর্যালোচনা।', 'অন্যুন ৫ টি প্রতিবেদনের Follow up পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (এমআরএ)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(401, '৩.২ আবাসন খাতে বাংলাদেশ হাউজ বিল্ডিং ফাইনান্স কর্পোরেশনের গ্রাহক সেবা মান যাচাইয়ে ৫ টি ঋণ কার্যক্রম পর্যালোচনা করা।', '৫ টি ঋণ কার্যক্রম পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (কেন্দ্রীয় ব্যাংক)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(402, '৩.৩ পরিপত্রের আলোকে ৪ (চার) টি বঙ্গবন্ধু যুবঋণ বিতরণ কার্যক্রম পরিবীক্ষণ করা।', 'যুবঋণ বিতরণ কার্যক্রম পরিবীক্ষণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (বিশেষায়িত ব্যাংক)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(403, '৩.৪ ঋণ খেলাপীর হার বৃদ্ধির কারণ চিহ্নিতকরণের লক্ষ্যে কর্মশালার আয়োজন।', 'কর্মশালার আয়োজন', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (কেন্দ্রীয় ব্যাংক)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(404, '৩.৫ লাইফ বীমাকারীর সম্পদ বিনিয়োগ প্রবিধানমালা, ২০১৯ মোতাবেক ০৩টি বীমা কোম্পানীর বিনিয়োগ পর্যালোচনা।', '০৩টি বীমা কোম্পানীর বিনিয়োগ পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (বীমা)', 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-5406461131', 1, '২০২২-২৩', NULL, NULL, 3, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(406, '১.১ নৈতিকতা কমিটির সভা আয়োজন', 'প্রশিক্ষণ আয়োজিত', 'সংখ্যা', '4', '4', '1', '1', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(407, '১.২ নৈতিকতা কমিটির সভার সিদ্ধান্ত বাস্তবায়ন', 'বাস্তবায়িত সিদ্ধান্ত', '%', '6', '$-5000445]0.2f%', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(408, '১.৩ সুশাসন প্রতিষ্ঠার নিমিত্ত অংশীজনের (stakeholders) অংশগ্রহণে  সভা', 'অনুষ্ঠিত সভা', 'সংখ্যা', '2', '4', '1', NULL, NULL, NULL, 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(409, '১.৪ শুদ্ধাচার সংক্রান্ত প্রশিক্ষণ আয়োজন', NULL, 'সংখ্যা', '2', '2', '1', '1', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(410, '১.৫ কর্ম-পরিবেশ উন্নয়ন (স্বাস্থ্যবিধি অনুসরণ/ টিওএন্ডইভুক্ত অকেজো মালামাল বিনষ্টকরণ/ পরিষ্কার-পরিচ্ছন্নতা বৃদ্ধি ইত্যাদি', 'উন্নত কর্ম-পরিবেশ', 'সংখ্যা ও তারিখ', '2', '২ টি', NULL, NULL, NULL, NULL, 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(411, '১.৬ জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা, ২০২১-২২ ও ত্রৈমাসিক পরিবীক্ষণ প্রতিবেদন মন্ত্রিপরিষদ বিভাগে দাখিল ও স্ব স্ব ওয়েবসাইটে আপলোডকরণ', 'কর্মপরিকল্পনা ও ত্রৈমাসিক প্রতিবেদন দাখিলকৃত ও আপলোডকৃত', 'তারিখ', '1', '১৫-১০-২০২১', '১৫-১০-২০২১', '১৫-১০-২০২১', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(412, '১.৭ আওতাধীন দপ্তর/সংস্হা (প্রযোজ্য ক্ষেত্রে) কর্তৃক দাখিলকৃত জাতীয় শুদ্ধাচার কৌশল কর্মপরিকল্পনা ও পরিবীক্ষণ  প্রতিবেদনের ওপর ফিডব্যাক প্রদান', 'ফিডব্যাক সভা/কর্মশালা অনুষ্ঠিত', 'তারিখ', '4', '৩১-১০-২০২১', '-', '-', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(413, '১.৮ শুদ্ধাচার পুরস্কার প্রদান এবং পুরস্কারপ্রাপ্তদের তালিকা ওয়েবসাইটে প্রকাশ', 'প্রদত্ত পুরস্কার', 'তারিখ', '1', '৩০-০৬-২০২২', '-', '-', NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(414, '২.১ ২০২১-২২ অর্থ বছরের ক্রয়-পরিকল্পনা (প্রকল্পের অনুমোদিত বার্ষিক ক্রয় পরিকল্পনাসহ) ওয়েবসাইটে প্রকাশ', 'ক্রয়-পরিকল্পনা ওয়েবসাইটে প্রকাশিত', 'তারিখ', '2', '৩১-১০-২০২১', '-', '-', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(415, '২.২ প্রকল্পের PSC ও PIC সভা আয়োজন', 'সভা আয়োজিত', 'সংখ্যা', '2', '16', '5', '5', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(416, '২.৩ বার্ষিক উন্নয়ন কর্মসূচি বাস্তবায়ন', 'বার্ষিক উন্নয়ন কর্মসূচি বাস্তবায়িত', '%', '2', '100', '$-5000445]0.2f%', '$-5000445]0.2f%', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(417, '২.৪ প্রকল্প সমাপ্তি শেষে প্রকল্পের সম্পদ (যানবাহন, কম্পিউটার, আসবাবপত্র ইত্যাদি) বিধি মোতাবেক হস্তান্তর করা', 'প্রকল্পের সম্পদ বিধি মোতাবেক হস্তান্তরিত', 'তারিখ', '2', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (প্রকল্প ব্যবস্থাপনা)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(418, '৩.১ MRA কর্তৃক MFI সমূহে পরিচালিত পরিদর্শনসমূহের অন্যুন ৫ টি প্রতিবেদনের Follow up পর্যালোচনা।', 'অন্যুন ৫ টি প্রতিবেদনের Follow up পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (এমআরএ)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(419, '৩.২ আবাসন খাতে বাংলাদেশ হাউজ বিল্ডিং ফাইনান্স কর্পোরেশনের গ্রাহক সেবা মান যাচাইয়ে ৫ টি ঋণ কার্যক্রম পর্যালোচনা করা।', '৫ টি ঋণ কার্যক্রম পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (কেন্দ্রীয় ব্যাংক)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(420, '৩.৩ পরিপত্রের আলোকে ৪ (চার) টি বঙ্গবন্ধু যুবঋণ বিতরণ কার্যক্রম পরিবীক্ষণ করা।', 'যুবঋণ বিতরণ কার্যক্রম পরিবীক্ষণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (বিশেষায়িত ব্যাংক)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(421, '৩.৪ ঋণ খেলাপীর হার বৃদ্ধির কারণ চিহ্নিতকরণের লক্ষ্যে কর্মশালার আয়োজন।', 'কর্মশালার আয়োজন', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (কেন্দ্রীয় ব্যাংক)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(422, '৩.৫ লাইফ বীমাকারীর সম্পদ বিনিয়োগ প্রবিধানমালা, ২০১৯ মোতাবেক ০৩টি বীমা কোম্পানীর বিনিয়োগ পর্যালোচনা।', '০৩টি বীমা কোম্পানীর বিনিয়োগ পর্যালোচনাকরণ', 'তারিখ', '4', '৩০-০৬-২০২২', '-', '-', NULL, 'উপসচিব (বীমা)', 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-3258948315', 1, '২০২১-২২', NULL, NULL, 3, '2022-02-14 06:13:33', '2022-02-14 06:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `national_integrity_trategy_action_plan_sub_rows`
--

CREATE TABLE `national_integrity_trategy_action_plan_sub_rows` (
  `id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `performance_index` text DEFAULT NULL,
  `unit` varchar(250) DEFAULT NULL,
  `performance_index_values` text DEFAULT NULL,
  `annual_target` varchar(250) DEFAULT NULL,
  `acquisition1` text DEFAULT NULL,
  `acquisition2` text DEFAULT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 3,
  `years` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `national_integrity_trategy_action_plan_sub_rows`
--

INSERT INTO `national_integrity_trategy_action_plan_sub_rows` (`id`, `row_id`, `activities`, `performance_index`, `unit`, `performance_index_values`, `annual_target`, `acquisition1`, `acquisition2`, `acquisition3`, `branch_responsible_implementation`, `unique_form_id`, `status`, `form_id`, `years`, `created_at`, `updated_at`) VALUES
(91, 284, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-396401978', 1, 3, NULL, '2022-02-02 06:02:03', '2022-02-02 06:02:03'),
(92, 284, NULL, NULL, NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-396401978', 1, 3, NULL, '2022-02-02 06:02:03', '2022-02-02 06:02:03'),
(93, 285, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-396401978', 1, 3, NULL, '2022-02-02 06:02:03', '2022-02-02 06:02:03'),
(94, 285, NULL, NULL, NULL, NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-396401978', 1, 3, NULL, '2022-02-02 06:02:03', '2022-02-02 06:02:03'),
(95, 286, NULL, NULL, 'ki kore toke bolbo', NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-396401978', 1, 3, NULL, '2022-02-02 06:02:03', '2022-02-02 06:02:03'),
(96, 286, NULL, NULL, 'tui k amar', NULL, NULL, NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-396401978', 1, 3, NULL, '2022-02-02 06:02:03', '2022-02-02 06:02:03'),
(97, 302, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-7227125795', 1, 3, NULL, '2022-02-02 06:31:52', '2022-02-02 06:31:52'),
(98, 302, NULL, 'qfefeq', NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-7227125795', 1, 3, NULL, '2022-02-02 06:31:52', '2022-02-02 06:31:52'),
(99, 303, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-7227125795', 1, 3, NULL, '2022-02-02 06:31:52', '2022-02-02 06:31:52'),
(100, 303, NULL, NULL, 'fqqfqffq', NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-7227125795', 1, 3, NULL, '2022-02-02 06:31:52', '2022-02-02 06:31:52'),
(101, 304, NULL, NULL, NULL, NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-7227125795', 1, 3, NULL, '2022-02-02 06:31:52', '2022-02-02 06:31:52'),
(102, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'যুগ্মসচিব (শুদ্ধাচার)', 'Form-7227125795', 1, 3, NULL, '2022-02-02 06:31:52', '2022-02-02 06:31:52'),
(103, 320, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-1353196603', 1, 3, NULL, '2022-02-14 06:00:38', '2022-02-14 06:00:38'),
(104, 320, NULL, NULL, NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-1353196603', 1, 3, NULL, '2022-02-14 06:00:38', '2022-02-14 06:00:38'),
(105, 321, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, NULL, 'Form-1353196603', 1, 3, NULL, '2022-02-14 06:00:38', '2022-02-14 06:00:38'),
(106, 321, NULL, NULL, NULL, NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, NULL, 'Form-1353196603', 1, 3, NULL, '2022-02-14 06:00:38', '2022-02-14 06:00:38'),
(107, 322, NULL, NULL, NULL, NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, NULL, 'Form-1353196603', 1, 3, NULL, '2022-02-14 06:00:38', '2022-02-14 06:00:38'),
(108, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-1353196603', 1, 3, NULL, '2022-02-14 06:00:38', '2022-02-14 06:00:38'),
(109, 338, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-3679559179', 1, 3, NULL, '2022-02-14 06:01:33', '2022-02-14 06:01:33'),
(110, 338, NULL, NULL, NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-3679559179', 1, 3, NULL, '2022-02-14 06:01:33', '2022-02-14 06:01:33'),
(111, 339, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, NULL, 'Form-3679559179', 1, 3, NULL, '2022-02-14 06:01:33', '2022-02-14 06:01:33'),
(112, 339, NULL, NULL, NULL, NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, NULL, 'Form-3679559179', 1, 3, NULL, '2022-02-14 06:01:33', '2022-02-14 06:01:33'),
(113, 340, NULL, NULL, NULL, NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, NULL, 'Form-3679559179', 1, 3, NULL, '2022-02-14 06:01:33', '2022-02-14 06:01:33'),
(114, 340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-3679559179', 1, 3, NULL, '2022-02-14 06:01:33', '2022-02-14 06:01:33'),
(115, 356, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-8130166588', 1, 3, NULL, '2022-02-14 06:06:21', '2022-02-14 06:06:21'),
(116, 356, NULL, NULL, NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-8130166588', 1, 3, NULL, '2022-02-14 06:06:21', '2022-02-14 06:06:21'),
(117, 357, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, NULL, 'Form-8130166588', 1, 3, NULL, '2022-02-14 06:06:21', '2022-02-14 06:06:21'),
(118, 357, NULL, NULL, NULL, NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, NULL, 'Form-8130166588', 1, 3, NULL, '2022-02-14 06:06:21', '2022-02-14 06:06:21'),
(119, 358, NULL, NULL, NULL, NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, NULL, 'Form-8130166588', 1, 3, NULL, '2022-02-14 06:06:21', '2022-02-14 06:06:21'),
(120, 358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-8130166588', 1, 3, NULL, '2022-02-14 06:06:21', '2022-02-14 06:06:21'),
(121, 374, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-8192406788', 1, 3, NULL, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(122, 374, NULL, NULL, NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-8192406788', 1, 3, NULL, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(123, 375, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, NULL, 'Form-8192406788', 1, 3, NULL, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(124, 375, NULL, NULL, NULL, NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, NULL, 'Form-8192406788', 1, 3, NULL, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(125, 376, NULL, NULL, NULL, NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, NULL, 'Form-8192406788', 1, 3, NULL, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(126, 376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-8192406788', 1, 3, NULL, '2022-02-14 06:10:00', '2022-02-14 06:10:00'),
(127, 392, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-5406461131', 1, 3, NULL, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(128, 392, NULL, NULL, NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-5406461131', 1, 3, NULL, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(129, 393, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, NULL, 'Form-5406461131', 1, 3, NULL, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(130, 393, NULL, NULL, NULL, NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, NULL, 'Form-5406461131', 1, 3, NULL, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(131, 394, NULL, NULL, NULL, NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, NULL, 'Form-5406461131', 1, 3, NULL, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(132, 394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-5406461131', 1, 3, NULL, '2022-02-14 06:12:46', '2022-02-14 06:12:46'),
(133, 410, NULL, NULL, NULL, NULL, '৩১-১২-২০২১', NULL, NULL, NULL, NULL, 'Form-3258948315', 1, 3, NULL, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(134, 410, NULL, NULL, NULL, NULL, '৩০-০৬-২০২২', NULL, NULL, NULL, NULL, 'Form-3258948315', 1, 3, NULL, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(135, 411, NULL, NULL, NULL, NULL, '১৫-০১-২০২২', NULL, NULL, NULL, NULL, 'Form-3258948315', 1, 3, NULL, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(136, 411, NULL, NULL, NULL, NULL, '১৫-০৪-২০২২', NULL, NULL, NULL, NULL, 'Form-3258948315', 1, 3, NULL, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(137, 412, NULL, NULL, NULL, NULL, '৩১-০৩-২০২২', NULL, NULL, NULL, NULL, 'Form-3258948315', 1, 3, NULL, '2022-02-14 06:13:33', '2022-02-14 06:13:33'),
(138, 412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Form-3258948315', 1, 3, NULL, '2022-02-14 06:13:33', '2022-02-14 06:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `newtable250`
--

CREATE TABLE `newtable250` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newtable250`
--

INSERT INTO `newtable250` (`id`, `table_name`, `name`, `role`, `created_at`) VALUES
(1, 'newtable250', 'bchdb', 'bcdhdcbh', '2022-04-20 07:00:00'),
(2, 'newtable250', 'hdacbhdcb', 'hbhcdbhdcb', '2022-04-20 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `new_table`
--

CREATE TABLE `new_table` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `roll` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `new_table_fid_25_april`
--

CREATE TABLE `new_table_fid_25_april` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `Column_1` varchar(250) NOT NULL,
  `Column_2` varchar(250) NOT NULL,
  `Column_3` varchar(250) NOT NULL,
  `Column_4` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_table_fid_25_april`
--

INSERT INTO `new_table_fid_25_april` (`id`, `table_name`, `Column_1`, `Column_2`, `Column_3`, `Column_4`, `created_at`) VALUES
(1, 'new_table_fid_25_april', 'Edited Value 1654', 'Edited Value 2', 'Value 3', 'Value 4', '2022-04-25 08:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `new_table_fid_1233243`
--

CREATE TABLE `new_table_fid_1233243` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `roll` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_table_fid_1233243`
--

INSERT INTO `new_table_fid_1233243` (`id`, `table_name`, `name`, `roll`, `salary`, `created_at`) VALUES
(1, 'new_table_fid_1233243', 'dfhbrth', 'dergerg', 'brtberbttg', '2022-04-20 07:00:00'),
(2, 'new_table_fid_1233243', 'gergerg', 'nwsynbwstynw', 'wrthrthbs', '2022-04-20 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `njcdjdcn`
--

CREATE TABLE `njcdjdcn` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `njcdjndc` varchar(250) NOT NULL,
  `effefe` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=seen, 0=unseen',
  `show_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `for_user_id`, `message`, `link`, `status`, `show_date`, `created_at`, `updated_at`) VALUES
(59, 60, 64, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:22:55pm', NULL, NULL),
(60, 60, 64, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:22:57pm', NULL, NULL),
(61, 60, 64, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:23:21pm', NULL, NULL),
(62, 60, 64, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:24:43pm', NULL, NULL),
(63, 60, 64, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:25:42pm', NULL, NULL),
(64, 60, 64, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:26:07pm', NULL, NULL),
(65, 64, 60, 'Admin send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:42:01pm', NULL, NULL),
(66, 64, 60, 'Admin send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:42:29pm', NULL, NULL),
(67, 60, 67, 'Hello Demo 3 . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Mon, Jan 2022 12:59:08pm', NULL, NULL),
(68, 60, 67, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Mon, Jan 2022 06:17:53am', NULL, NULL),
(69, 60, 60, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Wed, Jan 2022 11:35:36am', NULL, NULL),
(70, 60, 60, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Wed, Jan 2022 11:39:29am', NULL, NULL),
(71, 60, 16, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 11:31:16am', NULL, NULL),
(72, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 11:33:24am', NULL, NULL),
(73, 60, 60, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:09:46pm', NULL, NULL),
(74, 60, 59, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:10:17pm', NULL, NULL),
(75, 60, 16, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:13:29pm', NULL, NULL),
(76, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:14:19pm', NULL, NULL),
(77, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:24:19pm', NULL, NULL),
(78, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:40:15pm', NULL, NULL),
(79, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:48:02pm', NULL, NULL),
(80, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:49:13pm', NULL, NULL),
(81, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 12:56:45pm', NULL, NULL),
(82, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 02:00:07am', NULL, NULL),
(83, 61, 60, 'Shahed Shanjid send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 02:07:37am', NULL, NULL),
(84, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 02:39:41am', NULL, NULL),
(85, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 03:19:51am', NULL, NULL),
(86, 60, 61, 'Ayan send you a report request', 'report-requests/show/demo', 0, 'Thu, Jan 2022 04:48:47am', NULL, NULL),
(87, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 12:14:24pm', NULL, NULL),
(88, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 02:38:40am', NULL, NULL),
(89, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 02:52:59am', NULL, NULL),
(90, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 03:02:08am', NULL, NULL),
(91, 60, 60, 'Ayan send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 03:03:18am', NULL, NULL),
(92, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 04:16:53am', NULL, NULL),
(93, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 04:18:57am', NULL, NULL),
(94, 60, 61, 'Ayan send you a report request', 'submit-form/3', 0, 'Sun, Jan 2022 05:11:46am', NULL, NULL),
(95, 60, 61, 'Ayan send you a report request', 'submit-form/3', 0, 'Sun, Jan 2022 05:13:36am', NULL, NULL),
(96, 60, 61, 'Ayan send you a report request', 'submit-form/3', 0, 'Sun, Jan 2022 05:32:05am', NULL, NULL),
(97, 60, 61, 'Ayan send you a report request', 'submit-form/3', 0, 'Sun, Jan 2022 05:37:24am', NULL, NULL),
(98, 60, 61, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Jan 2022 05:41:58am', NULL, NULL),
(99, 61, 60, 'Shahed Shanjid send you a report request', 'submit-form/3', 0, 'Sun, Jan 2022 05:47:58am', NULL, NULL),
(100, 61, 60, 'Shahed Shanjid send you a report request', 'submit-form/4', 0, 'Sun, Jan 2022 05:48:46am', NULL, NULL),
(101, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 11:00:14am', NULL, NULL),
(102, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 12:04:40pm', NULL, NULL),
(103, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 12:06:15pm', NULL, NULL),
(104, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 12:11:39pm', NULL, NULL),
(105, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 12:16:19pm', NULL, NULL),
(106, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 12:22:55pm', NULL, NULL),
(107, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 12:25:05pm', NULL, NULL),
(108, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 04:05:51am', NULL, NULL),
(109, 60, 65, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 04:09:51am', NULL, NULL),
(110, 60, 65, 'Ayan send you a report request', 'submit-form/4', 0, 'Mon, Jan 2022 05:29:27am', NULL, NULL),
(111, 60, 66, 'Ayan send you a report request', 'submit-form/4', 0, 'Tue, Feb 2022 11:35:52am', NULL, NULL),
(112, 60, 68, 'Hello Rakib . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Tue, Feb 2022 11:47:32am', NULL, NULL),
(113, 60, 68, 'Ayan send you a report request', 'submit-form/4', 0, 'Tue, Feb 2022 11:48:56am', NULL, NULL),
(114, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Tue, Feb 2022 02:23:24am', NULL, NULL),
(115, 60, 61, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 02:42:35am', NULL, NULL),
(116, 60, 65, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 02:54:58am', NULL, NULL),
(117, 60, 68, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 04:23:29am', NULL, NULL),
(118, 60, 66, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 04:56:57am', NULL, NULL),
(119, 60, 64, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 05:05:08am', NULL, NULL),
(120, 60, 16, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 05:15:43am', NULL, NULL),
(121, 60, 64, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 05:16:18am', NULL, NULL),
(122, 60, 65, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 05:16:49am', NULL, NULL),
(123, 60, 63, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 05:25:24am', NULL, NULL),
(124, 60, 16, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 05:30:45am', NULL, NULL),
(125, 60, 61, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 10:15:59am', NULL, NULL),
(126, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 10:16:43am', NULL, NULL),
(127, 60, 61, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 12:03:15pm', NULL, NULL),
(128, 60, 61, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 12:07:47pm', NULL, NULL),
(129, 60, 65, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 12:30:32pm', NULL, NULL),
(130, 60, 65, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 12:32:14pm', NULL, NULL),
(131, 60, 65, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 12:46:06pm', NULL, NULL),
(132, 60, 69, 'Hello Armaan . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Wed, Feb 2022 12:50:48pm', NULL, NULL),
(133, 60, 69, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 12:54:40pm', NULL, NULL),
(134, 60, 69, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 12:55:31pm', NULL, NULL),
(135, 60, 69, 'Ayan send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 02:51:42am', NULL, NULL),
(136, 60, 69, 'Ayan send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 03:53:05am', NULL, NULL),
(137, 60, 69, 'Ayan send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 03:55:07am', NULL, NULL),
(138, 60, 69, 'Ayan send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 03:59:24am', NULL, NULL),
(139, 60, 61, 'Ayan send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 04:03:33am', NULL, NULL),
(140, 60, 68, 'Ayan send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 04:05:09am', NULL, NULL),
(141, 60, 68, 'Ayan send you a report request', 'submit-form/2', 0, 'Wed, Feb 2022 04:49:10am', NULL, NULL),
(142, 68, 60, 'Rakib send you a report request', 'submit-form/4', 0, 'Wed, Feb 2022 04:50:12am', NULL, NULL),
(143, 61, 67, 'Shahed Shanjid send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 11:22:04am', NULL, NULL),
(144, 67, 65, 'Demo 3 send you a report request in Armaan Ministry', 'submit-form/2', 0, 'Thu, Feb 2022 11:24:42am', NULL, NULL),
(145, 67, 66, 'Demo 3 send you a report request in Armaan Ministry', 'submit-form/2', 0, 'Thu, Feb 2022 11:24:42am', NULL, NULL),
(146, 67, 67, 'Demo 3 send you a report request in Armaan Ministry', 'submit-form/2', 0, 'Thu, Feb 2022 11:24:43am', NULL, NULL),
(147, 69, 70, 'Hello NRBC bank head . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Thu, Feb 2022 11:34:41am', NULL, NULL),
(148, 60, 70, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 11:47:03am', NULL, NULL),
(149, 70, 70, 'NRBC bank head send you a report request in My Demo Group 23202244', 'submit-form/2', 0, 'Thu, Feb 2022 11:48:27am', NULL, NULL),
(150, 60, 71, 'Hello nrbcbanani . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Thu, Feb 2022 11:58:39am', NULL, NULL),
(151, 60, 72, 'Hello uri bank . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Thu, Feb 2022 12:07:34pm', NULL, NULL),
(152, 60, 73, 'Hello uribank-khilkhet . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Thu, Feb 2022 12:09:32pm', NULL, NULL),
(153, 60, 72, 'Ayan send you a report request', 'submit-form/4', 0, 'Thu, Feb 2022 12:12:12pm', NULL, NULL),
(154, 72, 71, 'uri bank send you a report request in urir report', 'submit-form/4', 0, 'Thu, Feb 2022 12:13:14pm', NULL, NULL),
(155, 72, 72, 'uri bank send you a report request in urir report', 'submit-form/4', 0, 'Thu, Feb 2022 12:13:14pm', NULL, NULL),
(156, 72, 73, 'uri bank send you a report request in urir report', 'submit-form/4', 0, 'Thu, Feb 2022 12:13:14pm', NULL, NULL),
(157, 60, 60, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 12:03:39pm', NULL, NULL),
(158, 60, 60, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 03:35:37am', NULL, NULL),
(159, 60, 60, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:16:28am', NULL, NULL),
(160, 60, 69, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:19:48am', NULL, NULL),
(161, 60, 69, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:23:51am', NULL, NULL),
(162, 60, 60, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:24:07am', NULL, NULL),
(163, 60, 69, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:27:21am', NULL, NULL),
(164, 60, 69, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:57:43am', NULL, NULL),
(165, 60, 74, 'Hello Rajshahi Div . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Mon, Feb 2022 05:29:54am', NULL, NULL),
(166, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 05:37:39am', NULL, NULL),
(167, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:07:53am', NULL, NULL),
(168, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:08:10am', NULL, NULL),
(169, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:12:33am', NULL, NULL),
(170, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:16:20am', NULL, NULL),
(171, 60, 75, 'Hello Barisal . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Tue, Feb 2022 10:20:06am', NULL, NULL),
(172, 60, 76, 'Hello Feni . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Tue, Feb 2022 10:43:31am', NULL, NULL),
(173, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:50:11am', NULL, NULL),
(174, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:50:32am', NULL, NULL),
(175, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:50:51am', NULL, NULL),
(176, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 11:21:19am', NULL, NULL),
(177, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 11:21:33am', NULL, NULL),
(178, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 11:21:46am', NULL, NULL),
(179, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 11:26:08am', NULL, NULL),
(180, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 11:26:18am', NULL, NULL),
(181, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 11:26:25am', NULL, NULL),
(182, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 05:27:41am', NULL, NULL),
(183, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:04:04pm', NULL, NULL),
(184, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:04:12pm', NULL, NULL),
(185, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:14:07pm', NULL, NULL),
(186, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:29:56pm', NULL, NULL),
(187, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:35:58pm', NULL, NULL),
(188, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:41:02pm', NULL, NULL),
(189, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:47:51pm', NULL, NULL),
(190, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 12:54:36pm', NULL, NULL),
(191, 60, 77, 'Hello Faridpur . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Thu, Feb 2022 02:34:18am', NULL, NULL),
(192, 60, 77, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 02:45:52am', NULL, NULL),
(193, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 02:46:09am', NULL, NULL),
(194, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 02:46:20am', NULL, NULL),
(195, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Thu, Feb 2022 02:46:31am', NULL, NULL),
(196, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 10:18:51am', NULL, NULL),
(197, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 10:22:54am', NULL, NULL),
(198, 60, 77, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:00:42am', NULL, NULL),
(199, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:00:52am', NULL, NULL),
(200, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:01:06am', NULL, NULL),
(201, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:01:15am', NULL, NULL),
(202, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:17:09am', NULL, NULL),
(203, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:22:21am', NULL, NULL),
(204, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:23:44am', NULL, NULL),
(205, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:30:40am', NULL, NULL),
(206, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 11:30:56am', NULL, NULL),
(207, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 12:00:14pm', NULL, NULL),
(208, 60, 77, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 02:06:53am', NULL, NULL),
(209, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 02:06:57am', NULL, NULL),
(210, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 02:07:00am', NULL, NULL),
(211, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Sun, Feb 2022 02:07:03am', NULL, NULL),
(212, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:12:46am', NULL, NULL),
(213, 60, 74, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:14:57am', NULL, NULL),
(214, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:20:30am', NULL, NULL),
(215, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:28:01am', NULL, NULL),
(216, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:30:26am', NULL, NULL),
(217, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:33:23am', NULL, NULL),
(218, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 04:49:27am', NULL, NULL),
(219, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 05:03:52am', NULL, NULL),
(220, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Mon, Feb 2022 05:37:46am', NULL, NULL),
(221, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:14:38am', NULL, NULL),
(222, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:16:31am', NULL, NULL),
(223, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:18:41am', NULL, NULL),
(224, 60, 76, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:21:00am', NULL, NULL),
(225, 60, 72, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:41:54am', NULL, NULL),
(226, 60, 72, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 10:46:09am', NULL, NULL),
(227, 72, 74, 'uri bank send you a report request in divisionwise', 'submit-form/2', 0, 'Tue, Feb 2022 11:17:43am', NULL, NULL),
(228, 72, 75, 'uri bank send you a report request in divisionwise', 'submit-form/2', 0, 'Tue, Feb 2022 11:17:43am', NULL, NULL),
(229, 72, 74, 'uri bank send you a report request in My Division Group', 'submit-form/2', 0, 'Tue, Feb 2022 11:33:27am', NULL, NULL),
(230, 72, 75, 'uri bank send you a report request in My Division Group', 'submit-form/2', 0, 'Tue, Feb 2022 11:33:28am', NULL, NULL),
(231, 60, 72, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 02:13:56am', NULL, NULL),
(232, 72, 74, 'uri bank send you a report request in My Division Group', 'submit-form/2', 0, 'Tue, Feb 2022 02:14:12am', NULL, NULL),
(233, 60, 75, 'Ayan send you a report request', 'submit-form/2', 0, 'Tue, Feb 2022 02:15:14am', NULL, NULL),
(234, 60, 78, 'Hello FID . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', 'report-requests/show/demo', 0, 'Tue, Mar 2022 05:05:59am', NULL, NULL),
(235, 78, 16, 'FID send you a report request', 'http://localhost/report-management/submit-form/29', 0, 'Wed, Apr 2022 03:27:39am', NULL, NULL),
(236, 78, 79, 'FID send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/30', 0, 'Sun, Apr 2022 11:45:17am', NULL, NULL),
(237, 79, 78, 'test1 has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/30', 0, 'Sun, Apr 2022 11:45:45am', NULL, NULL),
(238, 78, 78, 'FID has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/30', 0, 'Sun, Apr 2022 11:46:02am', NULL, NULL),
(239, 78, 79, 'FID send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/31', 0, 'Sun, Apr 2022 11:56:51am', NULL, NULL),
(240, 79, 78, 'test1 has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/31', 0, 'Sun, Apr 2022 11:57:17am', NULL, NULL),
(241, 78, 78, 'FID has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/31', 0, 'Sun, Apr 2022 12:05:13pm', NULL, NULL),
(242, 78, 81, 'FID send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/49', 0, 'Sun, Apr 2022 03:04:04am', NULL, NULL),
(243, 78, 79, 'FID send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/53', 0, 'Sun, Apr 2022 03:35:28am', NULL, NULL),
(244, 79, 78, 'test1 has updated the form.', 'https://reportmanagement.fid.gov.bd/report_management/created-submit-form/53', 0, 'Sun, Apr 2022 03:35:49am', NULL, NULL),
(245, 111, 108, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/55', 0, 'Mon, Apr 2022 02:40:12am', NULL, NULL),
(246, 108, 111, 'বার্ষিক কর্মসম্পাদন চুক্তি has updated the form.', 'https://reportmanagement.fid.gov.bd/report_management/created-submit-form/55', 0, 'Mon, Apr 2022 02:41:08am', NULL, NULL),
(247, 111, 108, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/55', 0, 'Mon, Apr 2022 02:55:08am', NULL, NULL),
(248, 108, 111, 'বার্ষিক কর্মসম্পাদন চুক্তি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/55', 0, 'Mon, Apr 2022 02:55:22am', NULL, NULL),
(249, 111, 110, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/56', 0, 'Tue, Apr 2022 12:41:14pm', NULL, NULL),
(250, 111, 109, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/56', 0, 'Tue, Apr 2022 12:41:25pm', NULL, NULL),
(251, 109, 111, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/56', 0, 'Tue, Apr 2022 12:41:56pm', NULL, NULL),
(252, 102, 111, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/76', 0, 'Wed, May 2022 04:49:42am', NULL, NULL),
(253, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/76', 0, 'Wed, May 2022 04:50:08am', NULL, NULL),
(254, 102, 109, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/76', 0, 'Wed, May 2022 04:58:36am', NULL, NULL),
(255, 109, 102, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/76', 0, 'Wed, May 2022 04:59:00am', NULL, NULL),
(256, 102, 112, 'Hello just test . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', '', 0, 'Wed, May 2022 05:17:31am', NULL, NULL),
(257, 102, 112, 'Hello just test . Your are requested to change your password.', 'usersedit/112', 0, 'Wed, May 2022 05:17:31am', NULL, NULL),
(258, 102, 108, 'আইসিটি সেল send you a reminder</br><span style=\'color:crimson\'>Please Submit Your Report before</span> 2022-04-27', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/55', 0, 'Wed, May 2022 05:31:01am', NULL, NULL),
(259, 111, 113, 'Hello test2022 . Welcome to the Report Management System, Financial Institution Division,Ministry of Finance, Bangladesh.', '', 0, 'Thu, May 2022 10:20:52am', NULL, NULL),
(260, 111, 113, 'Hello test2022 . Your are requested to change your password.', 'usersedit/113', 0, 'Thu, May 2022 10:20:53am', NULL, NULL),
(261, 102, 111, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/76', 0, 'Thu, May 2022 02:34:06am', NULL, NULL),
(262, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/76', 0, 'Thu, May 2022 02:35:23am', NULL, NULL),
(263, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/76', 0, 'Thu, May 2022 02:37:50am', NULL, NULL),
(264, 111, 110, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/77', 0, 'Thu, May 2022 02:51:03am', NULL, NULL),
(265, 110, 111, 'ইনোভেশন has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/77', 0, 'Thu, May 2022 02:51:57am', NULL, NULL),
(266, 111, 110, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/106', 0, 'Sun, May 2022 02:43:01am', NULL, NULL),
(267, 110, 111, 'ইনোভেশন has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/106', 0, 'Sun, May 2022 02:44:14am', NULL, NULL),
(268, 110, 111, 'ইনোভেশন has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/106', 0, 'Sun, May 2022 02:45:50am', NULL, NULL),
(269, 111, 109, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/120', 0, 'Tue, Jun 2022 11:30:26am', NULL, NULL),
(270, 111, 109, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/120', 0, 'Tue, Jun 2022 11:47:17am', NULL, NULL),
(271, 109, 111, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/120', 0, 'Tue, Jun 2022 11:47:38am', NULL, NULL),
(272, 109, 111, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/120', 0, 'Tue, Jun 2022 11:48:40am', NULL, NULL),
(273, 109, 111, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/120', 0, 'Tue, Jun 2022 11:50:13am', NULL, NULL),
(274, 109, 111, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/120', 0, 'Tue, Jun 2022 11:51:16am', NULL, NULL),
(275, 111, 109, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/121', 0, 'Tue, Jun 2022 11:58:49am', NULL, NULL),
(276, 109, 111, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/121', 0, 'Tue, Jun 2022 11:59:38am', NULL, NULL),
(277, 102, 110, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/128', 0, 'Tue, Jun 2022 01:52:17am', NULL, NULL),
(278, 110, 102, 'ইনোভেশন has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/128', 0, 'Tue, Jun 2022 01:56:02am', NULL, NULL),
(279, 111, 106, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Thu, Jun 2022 05:51:25am', NULL, NULL),
(280, 106, 111, 'পরিবীক্ষণ ও মূল্যায়ন শাখা has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Thu, Jun 2022 05:52:17am', NULL, NULL),
(281, 111, 110, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/133', 0, 'Sun, Jun 2022 02:31:52am', NULL, NULL),
(282, 110, 111, 'ইনোভেশন has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/133', 0, 'Sun, Jun 2022 02:32:06am', NULL, NULL),
(283, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/133', 0, 'Sun, Jun 2022 02:32:52am', NULL, NULL),
(284, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/133', 0, 'Sun, Jun 2022 02:35:52am', NULL, NULL),
(285, 111, 110, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/134', 0, 'Sun, Jun 2022 02:46:58am', NULL, NULL),
(286, 110, 111, 'ইনোভেশন has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/134', 0, 'Sun, Jun 2022 02:47:17am', NULL, NULL),
(287, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/134', 0, 'Sun, Jun 2022 02:48:01am', NULL, NULL),
(288, 102, 110, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/128', 0, 'Sun, Jun 2022 04:02:30am', NULL, NULL),
(289, 111, 109, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/137', 0, 'Sun, Jun 2022 04:05:42am', NULL, NULL),
(290, 111, 108, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/137', 0, 'Sun, Jun 2022 04:06:04am', NULL, NULL),
(291, 111, 110, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/138', 0, 'Sun, Jun 2022 04:12:57am', NULL, NULL),
(292, 111, 83, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Sun, Jun 2022 04:39:20am', NULL, NULL),
(293, 111, 85, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Sun, Jun 2022 04:39:58am', NULL, NULL),
(294, 111, 86, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Sun, Jun 2022 04:41:36am', NULL, NULL),
(295, 111, 78, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Sun, Jun 2022 04:44:12am', NULL, NULL),
(296, 111, 84, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Sun, Jun 2022 04:46:09am', NULL, NULL),
(297, 111, 110, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/129', 0, 'Sun, Jun 2022 04:47:51am', NULL, NULL),
(298, 114, 111, 'Faisal send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/141', 0, 'Mon, Jun 2022 12:32:22pm', NULL, NULL),
(299, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/141', 0, 'Mon, Jun 2022 12:34:25pm', NULL, NULL),
(300, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/141', 0, 'Mon, Jun 2022 12:34:57pm', NULL, NULL),
(301, 115, 108, 'devloper send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/142', 0, 'Mon, Jun 2022 12:41:47pm', NULL, NULL),
(302, 108, 115, 'বার্ষিক কর্মসম্পাদন চুক্তি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/142', 0, 'Mon, Jun 2022 12:44:55pm', NULL, NULL),
(303, 115, 111, 'devloper send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/143', 0, 'Mon, Jun 2022 12:51:50pm', NULL, NULL),
(304, 111, 115, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/143', 0, 'Mon, Jun 2022 12:52:39pm', NULL, NULL),
(305, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/143', 0, 'Mon, Jun 2022 12:53:35pm', NULL, NULL),
(306, 102, 109, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/140', 0, 'Mon, Jun 2022 03:10:23am', NULL, NULL),
(307, 109, 102, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/140', 0, 'Mon, Jun 2022 03:43:26am', NULL, NULL),
(308, 109, 102, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/140', 0, 'Mon, Jun 2022 03:46:31am', NULL, NULL),
(309, 102, 110, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/145', 0, 'Tue, Jun 2022 02:53:10am', NULL, NULL),
(310, 110, 102, 'ইনোভেশন send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/145', 0, 'Tue, Jun 2022 03:18:33am', NULL, NULL),
(311, 102, 109, 'আইসিটি সেল send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/145', 0, 'Tue, Jun 2022 03:30:24am', NULL, NULL),
(312, 109, 102, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 03:36:35am', NULL, NULL),
(313, 110, 109, 'ইনোভেশন send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/145', 0, 'Tue, Jun 2022 03:48:47am', NULL, NULL),
(314, 109, 102, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 03:50:22am', NULL, NULL),
(315, 109, 102, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 03:50:36am', NULL, NULL),
(316, 109, 102, 'এসডিজি has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 03:51:05am', NULL, NULL),
(317, 111, 101, 'Super User send you a report request', 'http://reportmanagement.fid.gov.bd/report_management/form/145', 0, 'Tue, Jun 2022 04:14:00am', NULL, NULL),
(318, 101, 111, 'অভ্যন্তরীণ ও বহিঃনিরীক্ষা শাখা has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 04:24:10am', NULL, NULL),
(319, 101, 111, 'অভ্যন্তরীণ ও বহিঃনিরীক্ষা শাখা has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 04:40:21am', NULL, NULL),
(320, 101, 111, 'অভ্যন্তরীণ ও বহিঃনিরীক্ষা শাখা has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 04:52:14am', NULL, NULL),
(321, 101, 111, 'অভ্যন্তরীণ ও বহিঃনিরীক্ষা শাখা has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 04:53:03am', NULL, NULL),
(322, 101, 111, 'অভ্যন্তরীণ ও বহিঃনিরীক্ষা শাখা has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 05:01:25am', NULL, NULL),
(323, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 05:01:56am', NULL, NULL),
(324, 111, 111, 'Super User has updated the form.', 'http://reportmanagement.fid.gov.bd/report_management/created-submit-form/145', 0, 'Tue, Jun 2022 05:02:47am', NULL, NULL),
(325, 127, 126, 'Ministry Department send you a report request', 'http://localhost/report_management/form/145', 0, 'Tue, Jun 2022 02:48:45am', NULL, NULL),
(326, 127, 126, 'Ministry Department send you a report request', 'http://localhost/report_management/form/145', 0, 'Tue, Jun 2022 05:44:18am', NULL, NULL),
(327, 127, 128, 'Ministry Department send you a report request', 'http://localhost/report_management/form/145', 0, 'Tue, Jun 2022 05:45:45am', NULL, NULL),
(328, 127, 128, 'Ministry Department send you a report request', 'http://localhost/report_management/form/145', 0, 'Tue, Jun 2022 05:47:49am', NULL, NULL),
(329, 127, 128, 'Ministry Department send you a report request', 'http://localhost/report_management/form/145', 0, 'Tue, Jun 2022 05:49:16am', NULL, NULL),
(330, 127, 126, 'Ministry Department send you a report request', 'http://localhost/report_management/form/145', 0, 'Tue, Jun 2022 05:53:10am', NULL, NULL),
(331, 127, 126, 'Ministry Department send you a report request', 'http://localhost/report_management/form/142', 0, 'Tue, Jun 2022 05:53:51am', NULL, NULL),
(332, 127, 128, 'Ministry Department send you a report request', 'http://localhost/report_management/form/118', 0, 'Tue, Jun 2022 05:55:32am', NULL, NULL),
(333, 130, 129, 'Organization User send you a report request', 'http://localhost/report_management/form/143', 0, 'Wed, Jun 2022 10:53:04am', NULL, NULL),
(334, 130, 136, 'Organization User send you a report request', 'http://localhost/report_management/form/56', 0, 'Wed, Jun 2022 12:46:17pm', NULL, NULL),
(335, 136, 130, 'Organization User Entry send you a report request', 'http://localhost/report_management/form/56', 0, 'Wed, Jun 2022 12:51:52pm', NULL, NULL),
(336, 136, 129, 'Organization User Entry send you a report request', 'http://localhost/report_management/form/147', 0, 'Wed, Jun 2022 12:55:53pm', NULL, NULL),
(337, 129, 140, 'Organization Head send you a report request', 'http://localhost/report_management/form/148', 0, 'Wed, Jun 2022 02:06:39am', NULL, NULL),
(338, 140, 129, 'orgHeadEntry has updated the form.', 'http://localhost/report_management/created-submit-form/148', 0, 'Wed, Jun 2022 02:13:00am', NULL, NULL),
(339, 140, 129, 'orgHeadEntry has updated the form.', 'http://localhost/report_management/created-submit-form/148', 0, 'Wed, Jun 2022 02:19:13am', NULL, NULL),
(340, 129, 130, 'Organization Head send you a report request', 'http://localhost/report_management/form/148', 0, 'Wed, Jun 2022 02:21:39am', NULL, NULL),
(341, 130, 136, 'Organization User send you a report request', 'http://localhost/report_management/form/148', 0, 'Wed, Jun 2022 02:23:52am', NULL, NULL),
(342, 140, 129, 'orgHeadEntry has updated the form.', 'http://localhost/report_management/created-submit-form/148', 0, 'Wed, Jun 2022 02:28:37am', NULL, NULL),
(343, 130, 136, 'Organization User send you a report request', 'http://localhost/report_management/created-submit-form/149', 0, 'Wed, Jun 2022 02:58:31am', NULL, NULL),
(344, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/149', 0, 'Wed, Jun 2022 02:59:21am', NULL, NULL),
(345, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/149', 0, 'Wed, Jun 2022 02:59:50am', NULL, NULL),
(346, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/148', 0, 'Wed, Jun 2022 03:01:07am', NULL, NULL),
(347, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/148', 0, 'Wed, Jun 2022 03:01:51am', NULL, NULL),
(348, 136, 130, 'Organization User Entry send you a report request', 'http://localhost/report_management/created-submit-form/149', 0, 'Wed, Jun 2022 03:06:44am', NULL, NULL),
(349, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/149', 0, 'Thu, Jun 2022 12:17:00pm', NULL, NULL),
(350, 130, 136, 'your form has been approved', 'http://localhost/report_management', 0, 'Thu, Jun 2022 01:07:04am', NULL, NULL),
(351, 130, 136, 'your form has been approved', 'http://localhost/report_management', 0, 'Thu, Jun 2022 01:07:32am', NULL, NULL),
(352, 130, 136, 'Organization User send you a report request', 'http://localhost/report_management/created-submit-form/150', 0, 'Thu, Jun 2022 02:55:04am', NULL, NULL),
(353, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/150', 0, 'Thu, Jun 2022 02:56:16am', NULL, NULL),
(354, 136, 130, 'Organization User Entry send you a report request', 'http://localhost/report_management/created-submit-form/150', 0, 'Thu, Jun 2022 03:02:13am', NULL, NULL),
(355, 130, 136, 'your form has been approved', 'http://localhost/report_management', 0, 'Thu, Jun 2022 03:02:32am', NULL, NULL),
(356, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/150', 0, 'Thu, Jun 2022 03:06:49am', NULL, NULL),
(357, 130, 136, 'Your Report Has Been Rejected', 'http://localhost/report_management', 0, 'Thu, Jun 2022 03:10:44am', NULL, NULL),
(358, 130, 136, 'Your Report Has Been Rejected', 'http://localhost/report_managementcreated-submit-form/150', 0, 'Thu, Jun 2022 03:12:45am', NULL, NULL),
(359, 130, 136, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/150', 0, 'Thu, Jun 2022 03:13:33am', NULL, NULL),
(360, 130, 136, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/150', 0, 'Thu, Jun 2022 03:13:55am', NULL, NULL),
(361, 130, 136, 'Your Report Has Been approved', 'http://localhost/report_managementcreated-submit-form/150', 0, 'Thu, Jun 2022 03:14:34am', NULL, NULL),
(362, 130, 136, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/150', 0, 'Thu, Jun 2022 03:15:47am', NULL, NULL),
(363, 128, 129, 'Regulatory User send you a report request', 'http://localhost/report_management/form/151', 0, 'Thu, Jun 2022 03:23:46am', NULL, NULL),
(364, 129, 135, 'Organization Head send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 03:25:26am', NULL, NULL),
(365, 135, 129, 'Organization Head Entry has updated the form.', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 03:25:38am', NULL, NULL),
(366, 135, 129, 'Organization Head Entry send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 03:26:02am', NULL, NULL),
(367, 129, 129, 'Organization Head has updated the form.', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 03:26:11am', NULL, NULL),
(368, 129, 129, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 03:32:26am', NULL, NULL),
(369, 129, 129, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 03:33:20am', NULL, NULL),
(370, 129, 129, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 03:33:57am', NULL, NULL),
(371, 129, 129, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:34:50am', NULL, NULL),
(372, 129, 129, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:36:47am', NULL, NULL),
(373, 129, 129, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:38:19am', NULL, NULL),
(374, 135, 129, 'Organization Head Entry has updated the form.', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:38:39am', NULL, NULL),
(375, 129, 129, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:38:51am', NULL, NULL),
(376, 129, 130, 'Organization Head send you a report request', 'http://localhost/report_management/form/151', 0, 'Thu, Jun 2022 04:44:26am', NULL, NULL),
(377, 130, 136, 'Organization User send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:45:36am', NULL, NULL),
(378, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:45:54am', NULL, NULL),
(379, 136, 130, 'Organization User Entry send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:46:22am', NULL, NULL),
(380, 130, 129, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:46:33am', NULL, NULL),
(381, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/151', 0, 'Thu, Jun 2022 04:51:24am', NULL, NULL),
(382, 123, 137, 'branch send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 04:59:56am', NULL, NULL),
(383, 137, 123, 'Branch User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:00:21am', NULL, NULL),
(384, 137, 131, 'Branch User Entry send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:00:47am', NULL, NULL),
(385, 123, 129, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:01:28am', NULL, NULL),
(386, 137, 123, 'Branch User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:01:54am', NULL, NULL),
(387, 137, 131, 'Branch User Entry send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:02:15am', NULL, NULL),
(388, 123, 129, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:02:31am', NULL, NULL),
(389, 137, 123, 'Branch User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:02:51am', NULL, NULL),
(390, 137, 131, 'Branch User Entry send you a report request', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:03:07am', NULL, NULL),
(391, 123, 129, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/151', 0, 'Thu, Jun 2022 05:03:28am', NULL, NULL),
(392, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:02:34am', NULL, NULL),
(393, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:04:18am', NULL, NULL),
(394, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:06:27am', NULL, NULL),
(395, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:07:28am', NULL, NULL),
(396, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:08:51am', NULL, NULL),
(397, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:10:18am', NULL, NULL),
(398, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:12:18am', NULL, NULL),
(399, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:48:53am', NULL, NULL),
(400, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:51:10am', NULL, NULL),
(401, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 05:51:55am', NULL, NULL),
(402, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 06:01:40am', NULL, NULL),
(403, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 06:02:02am', NULL, NULL),
(404, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Sun, Jul 2022 06:02:49am', NULL, NULL),
(405, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Mon, Jul 2022 10:09:38am', NULL, NULL),
(406, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Mon, Jul 2022 10:19:06am', NULL, NULL),
(407, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/170', 0, 'Mon, Jul 2022 10:20:17am', NULL, NULL),
(408, 126, 127, 'Ministry send you a report request', 'http://localhost/report_management/form/171', 0, 'Mon, Jul 2022 10:23:51am', NULL, NULL),
(409, 127, 133, 'Ministry Department send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 10:26:37am', NULL, NULL),
(410, 127, 133, 'Ministry Department send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 10:31:43am', NULL, NULL);
INSERT INTO `notification` (`id`, `user_id`, `for_user_id`, `message`, `link`, `status`, `show_date`, `created_at`, `updated_at`) VALUES
(411, 133, 127, 'Ministry Department Entry has updated the form.', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 10:38:38am', NULL, NULL),
(412, 127, 127, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 10:59:58am', NULL, NULL),
(413, 127, 128, 'Ministry Department send you a report request', 'http://localhost/report_management/form/171', 0, 'Mon, Jul 2022 01:40:24am', NULL, NULL),
(414, 128, 134, 'Regulatory User send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 01:42:02am', NULL, NULL),
(415, 134, 128, 'Regulatory Department Entry has updated the form.', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 01:42:20am', NULL, NULL),
(416, 134, 128, 'Regulatory Department Entry send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 01:42:35am', NULL, NULL),
(417, 128, 127, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 01:42:42am', NULL, NULL),
(418, 128, 129, 'Regulatory User send you a report request', 'http://localhost/report_management/form/171', 0, 'Mon, Jul 2022 02:00:03am', NULL, NULL),
(419, 129, 135, 'Organization Head send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:01:33am', NULL, NULL),
(420, 135, 135, 'Organization Head Entry has updated the form.', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:02:59am', NULL, NULL),
(421, 135, 129, 'Organization Head Entry send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:03:18am', NULL, NULL),
(422, 129, 127, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:03:26am', NULL, NULL),
(423, 129, 135, 'Organization Head send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:05:36am', NULL, NULL),
(424, 129, 130, 'Organization Head send you a report request', 'http://localhost/report_management/form/171', 0, 'Mon, Jul 2022 02:07:16am', NULL, NULL),
(425, 130, 136, 'Organization User send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:08:45am', NULL, NULL),
(426, 136, 136, 'Organization User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:09:18am', NULL, NULL),
(427, 136, 130, 'Organization User Entry send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:09:32am', NULL, NULL),
(428, 130, 127, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:09:37am', NULL, NULL),
(429, 130, 131, 'Organization User send you a report request', 'http://localhost/report_management/form/171', 0, 'Mon, Jul 2022 02:10:35am', NULL, NULL),
(430, 130, 123, 'Organization User send you a report request', 'http://localhost/report_management/form/171', 0, 'Mon, Jul 2022 02:12:36am', NULL, NULL),
(431, 123, 137, 'branch send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:15:43am', NULL, NULL),
(432, 137, 137, 'Branch User Entry has updated the form.', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:16:07am', NULL, NULL),
(433, 123, 127, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/171', 0, 'Mon, Jul 2022 02:51:31am', NULL, NULL),
(434, 123, 130, 'branch send you a report request', 'http://localhost/report_management/form/171', 0, 'Mon, Jul 2022 02:53:52am', NULL, NULL),
(435, 128, 134, 'Regulatory User send you a report request', 'http://localhost/report_management/created-submit-form/173', 0, 'Mon, Jul 2022 05:46:55am', NULL, NULL),
(436, 134, 134, 'Regulatory Department Entry has updated the form.', 'http://localhost/report_management/created-submit-form/173', 0, 'Mon, Jul 2022 05:47:29am', NULL, NULL),
(437, 134, 128, 'Regulatory Department Entry send you a report request', 'http://localhost/report_management/created-submit-form/173', 0, 'Mon, Jul 2022 05:48:13am', NULL, NULL),
(438, 128, 134, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/173', 0, 'Mon, Jul 2022 05:49:48am', NULL, NULL),
(439, 128, 129, 'Regulatory User send you a report request', 'http://localhost/report_management/form/173', 0, 'Mon, Jul 2022 05:51:53am', NULL, NULL),
(440, 126, 127, 'Ministry send you a report request', 'http://localhost/report_management/form/174', 0, 'Thu, Jul 2022 04:09:59am', NULL, NULL),
(441, 127, 133, 'Ministry Department send you a report request', 'http://localhost/report_management/created-submit-form/174', 0, 'Thu, Jul 2022 04:11:18am', NULL, NULL),
(442, 133, 128, 'Ministry Department Entry send you a report request', 'http://localhost/report_management/form/174', 0, 'Thu, Jul 2022 04:18:56am', NULL, NULL),
(443, 127, 133, 'Ministry Department send you a report request', 'http://localhost/report_management/created-submit-form/174', 0, 'Thu, Jul 2022 04:24:25am', NULL, NULL),
(444, 127, 128, 'Ministry Department send you a report request', 'http://localhost/report_management/form/171', 0, 'Thu, Jul 2022 04:26:21am', NULL, NULL),
(445, 130, 136, 'Organization User send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Wed, Jul 2022 05:12:32am', NULL, NULL),
(446, 136, 155, 'Organization User Entry send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Wed, Jul 2022 05:44:14am', NULL, NULL),
(447, 130, 160, 'Organization User send you a report request', 'http://localhost/report_management/form/171', 0, 'Wed, Jul 2022 11:32:38am', NULL, NULL),
(448, 130, 153, 'Organization User send you a report request', 'http://localhost/report_management/form/', 0, 'Wed, Jul 2022 11:41:49am', NULL, NULL),
(449, 160, 155, 'BranchUserHome send you a report request', 'http://localhost/report_management/form/171', 0, 'Wed, Jul 2022 11:53:56am', NULL, NULL),
(450, 160, 158, 'BranchUserHome send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Thu, Jul 2022 12:02:17pm', NULL, NULL),
(451, 160, 158, 'BranchUserHome send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Thu, Jul 2022 12:03:25pm', NULL, NULL),
(452, 130, 161, 'Organization User send you a report request', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 10:50:36am', NULL, NULL),
(453, 161, 130, 'Md Mahmudul Haque has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:03:11am', NULL, NULL),
(454, 161, 155, 'Md Mahmudul Haque send you a report request', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:05:31am', NULL, NULL),
(455, 161, 130, 'Md Mahmudul Haque send you a report request', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:09:12am', NULL, NULL),
(456, 130, 161, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:10:31am', NULL, NULL),
(457, 130, 161, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:13:24am', NULL, NULL),
(458, 130, 161, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:13:42am', NULL, NULL),
(459, 130, 131, 'Organization User send you a report request', 'http://localhost/report_management/form/175', 0, 'Thu, Jul 2022 11:17:52am', NULL, NULL),
(460, 130, 160, 'Organization User send you a report request', 'http://localhost/report_management/form/175', 0, 'Thu, Jul 2022 11:19:51am', NULL, NULL),
(461, 160, 164, 'BranchUserHome send you a report request', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:22:17am', NULL, NULL),
(462, 161, 130, 'Md Mahmudul Haque has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:39:01am', NULL, NULL),
(463, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:39:10am', NULL, NULL),
(464, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:39:25am', NULL, NULL),
(465, 161, 130, 'Md Mahmudul Haque has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:39:48am', NULL, NULL),
(466, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:40:21am', NULL, NULL),
(467, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:40:25am', NULL, NULL),
(468, 161, 130, 'Md Mahmudul Haque has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 11:43:42am', NULL, NULL),
(469, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:04:42pm', NULL, NULL),
(470, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:06:43pm', NULL, NULL),
(471, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:10:20pm', NULL, NULL),
(472, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:10:28pm', NULL, NULL),
(473, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:12:09pm', NULL, NULL),
(474, 164, 160, 'branchsuperentry send you a report request', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:12:47pm', NULL, NULL),
(475, 160, 164, 'BranchUserHome send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Thu, Jul 2022 12:36:43pm', NULL, NULL),
(476, 160, 161, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:39:52pm', NULL, NULL),
(477, 160, 161, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:49:05pm', NULL, NULL),
(478, 160, 161, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:49:49pm', NULL, NULL),
(479, 160, 161, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:56:10pm', NULL, NULL),
(480, 160, 161, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 12:59:34pm', NULL, NULL),
(481, 160, 161, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 01:06:18am', NULL, NULL),
(482, 164, 160, 'branchsuperentry has updated the form.', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 01:06:38am', NULL, NULL),
(483, 164, 160, 'branchsuperentry send you a report request', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 01:06:58am', NULL, NULL),
(484, 160, 161, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 01:07:05am', NULL, NULL),
(485, 160, 164, 'BranchUserHome send you a report request', 'http://localhost/report_management/created-submit-form/175', 0, 'Thu, Jul 2022 01:48:55am', NULL, NULL),
(486, 123, 155, 'branch send you a report request', 'http://localhost/report_management/form/171', 0, 'Sun, Jul 2022 11:48:08am', NULL, NULL),
(487, 123, 167, 'branch send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Sun, Jul 2022 11:48:50am', NULL, NULL),
(488, 123, 171, 'branch send you a report request', 'http://localhost/report_management/created-submit-form/171', 0, 'Sun, Jul 2022 01:01:08am', NULL, NULL),
(489, 123, 131, 'branchPlease Submitform', 'http://localhost/report_management/form/171', 0, 'Sun, Jul 2022 01:08:33am', NULL, NULL),
(490, 123, 171, 'branchPlease Submitform', 'http://localhost/report_management/form/171', 0, 'Sun, Jul 2022 01:40:23am', NULL, NULL),
(491, 123, 171, 'branchPlease Submitform', 'http://localhost/report_management/form/171', 0, 'Sun, Jul 2022 01:43:16am', NULL, NULL),
(492, 123, 171, 'branchPlease Submitform', 'http://localhost/report_management/form/171', 0, 'Sun, Jul 2022 02:06:32am', NULL, NULL),
(493, 172, 173, 'মোঃ আসিফ মাহবুব send you a report request', 'http://10.10.10.58/report_management/created-submit-form/176', 0, 'Sun, Jul 2022 04:05:18am', NULL, NULL),
(494, 173, 172, 'রাকিবুল হক has updated the form.', 'http://10.10.10.58/report_management/created-submit-form/176', 0, 'Sun, Jul 2022 04:05:33am', NULL, NULL),
(495, 173, 172, 'রাকিবুল হক send you a report request', 'http://10.10.10.58/report_management/created-submit-form/176', 0, 'Sun, Jul 2022 04:06:06am', NULL, NULL),
(496, 172, 173, 'Your Report Has Been Rejected', 'http://10.10.10.58/report_management/created-submit-form/176', 0, 'Sun, Jul 2022 04:06:27am', NULL, NULL),
(497, 172, 173, 'Your Report Has Been approved', 'http://10.10.10.58/report_management/created-submit-form/176', 0, 'Sun, Jul 2022 04:06:53am', NULL, NULL),
(498, 181, 183, 'f52fa51fa45f1 send you a report request', 'http://localhost/report_management/created-submit-form/183', 0, 'Sun, Jul 2022 11:39:57am', NULL, NULL),
(499, 183, 181, 'armaan has updated the form.', 'http://localhost/report_management/created-submit-form/183', 0, 'Sun, Jul 2022 11:46:03am', NULL, NULL),
(500, 181, 183, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/183', 0, 'Mon, Jul 2022 12:03:26pm', NULL, NULL),
(501, 126, 184, 'আর্থিক প্রতিষ্ঠান বিভাগ  send you a report request', 'http://localhost/report_management/form/183', 0, 'Mon, Jul 2022 11:21:12am', NULL, NULL),
(502, 184, 185, 'kumkumla send you a report request', 'http://localhost/report_management/form/183', 0, 'Mon, Jul 2022 11:28:15am', NULL, NULL),
(503, 184, 185, 'kumkumla send you a report request', 'http://localhost/report_management/form/182', 0, 'Mon, Jul 2022 11:28:44am', NULL, NULL),
(504, 185, 186, 'newbie send you a report request', 'http://localhost/report_management/created-submit-form/182', 0, 'Mon, Jul 2022 11:35:28am', NULL, NULL),
(505, 186, 185, 'MOON has updated the form.', 'http://localhost/report_management/created-submit-form/182', 0, 'Mon, Jul 2022 11:38:25am', NULL, NULL),
(506, 185, 185, 'Your Report Has Been Rejected', 'http://localhost/report_management/created-submit-form/182', 0, 'Mon, Jul 2022 11:38:41am', NULL, NULL),
(507, 186, 185, 'MOON has updated the form.', 'http://localhost/report_management/created-submit-form/182', 0, 'Mon, Jul 2022 11:42:36am', NULL, NULL),
(508, 223, 230, 'kamal send you a report request', 'http://localhost/report_management/created-submit-form/184', 0, 'Sun, Jul 2022 10:23:59am', NULL, NULL),
(509, 230, 223, 'orgheadentry has updated the form.', 'http://localhost/report_management/created-submit-form/184', 0, 'Sun, Jul 2022 10:24:38am', NULL, NULL),
(510, 230, 223, 'orgheadentry has updated the form.', 'http://localhost/report_management/created-submit-form/184', 0, 'Sun, Jul 2022 10:24:42am', NULL, NULL),
(511, 230, 223, 'orgheadentry send you a report request', 'http://localhost/report_management/created-submit-form/184', 0, 'Sun, Jul 2022 10:25:02am', NULL, NULL),
(512, 223, 230, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/184', 0, 'Sun, Jul 2022 10:25:20am', NULL, NULL),
(513, 223, 230, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/184', 0, 'Sun, Jul 2022 01:07:01am', NULL, NULL),
(514, 223, 230, 'kamalPlease Submitform', 'http://localhost/report_management/form/184', 0, 'Sun, Jul 2022 01:23:53am', NULL, NULL),
(515, 207, 222, 'Faisal Ahmad send you a report request', 'http://localhost/report_management/form/187', 0, 'Sun, Jul 2022 02:54:31am', NULL, NULL),
(516, 222, 223, 'hamim send you a report request', 'http://localhost/report_management/form/187', 0, 'Sun, Jul 2022 02:56:49am', NULL, NULL),
(517, 207, 222, 'Faisal Ahmad send you a report request', 'http://localhost/report_management/form/188', 0, 'Sun, Jul 2022 06:00:13am', NULL, NULL),
(518, 126, 207, 'FID send you a report request', 'http://localhost/report_management/form/189', 0, 'Mon, Jul 2022 09:38:08am', NULL, NULL),
(519, 233, 234, 'armaan send you a report request', 'http://localhost/report_management/created-submit-form/191', 0, 'Mon, Jul 2022 10:54:08am', NULL, NULL),
(520, 234, 233, 'SHAHED has updated the form.', 'http://localhost/report_management/created-submit-form/191', 0, 'Mon, Jul 2022 10:54:51am', NULL, NULL),
(521, 234, 233, 'SHAHED send you a report request', 'http://localhost/report_management/created-submit-form/191', 0, 'Mon, Jul 2022 11:16:29am', NULL, NULL),
(522, 233, 234, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/191', 0, 'Mon, Jul 2022 11:16:48am', NULL, NULL),
(523, 235, 236, 'মোঃ আশরাফুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 11:34:55am', NULL, NULL),
(524, 236, 235, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 11:35:05am', NULL, NULL),
(525, 236, 235, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 11:35:24am', NULL, NULL),
(526, 236, 235, 'মোঃ আসিফ মাহবুব send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 11:35:36am', NULL, NULL),
(527, 235, 236, 'Your Report Has Been Rejected', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 11:35:51am', NULL, NULL),
(528, 236, 235, 'মোঃ আসিফ মাহবুব send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 11:36:10am', NULL, NULL),
(529, 235, 236, 'Your Report Has Been approved', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 11:36:15am', NULL, NULL),
(530, 235, 237, 'মোঃ আশরাফুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/form/192', 0, 'Mon, Jul 2022 11:39:28am', NULL, NULL),
(531, 237, 235, 'মোঃ কামরুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/form/192', 0, 'Mon, Jul 2022 11:41:27am', NULL, NULL),
(532, 237, 238, 'মোঃ কামরুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 02:13:13am', NULL, NULL),
(533, 238, 237, 'nahid has updated the form.', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 02:13:58am', NULL, NULL),
(534, 238, 237, 'nahid send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 02:14:05am', NULL, NULL),
(535, 237, 236, 'Your Report Has Been Rejected', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 02:14:35am', NULL, NULL),
(536, 238, 237, 'nahid has updated the form.', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 02:15:07am', NULL, NULL),
(537, 238, 237, 'nahid send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 02:15:18am', NULL, NULL),
(538, 237, 236, 'Your Report Has Been approved', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 02:15:24am', NULL, NULL),
(539, 237, 236, 'Your Report Has Been approved', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 03:42:08am', NULL, NULL),
(540, 126, 235, 'FID send you a report request', 'http://localhost/report_management/form/193', 0, 'Mon, Jul 2022 04:17:18am', NULL, NULL),
(541, 235, 236, 'মোঃ আশরাফুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 04:36:26am', NULL, NULL),
(542, 235, 237, 'মোঃ আশরাফুল ইসলাম send you a report request', 'http://localhost/report_management/form/193', 0, 'Mon, Jul 2022 04:37:57am', NULL, NULL),
(543, 235, 237, 'মোঃ আশরাফুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/form/192', 0, 'Mon, Jul 2022 04:40:28am', NULL, NULL),
(544, 237, 238, 'মোঃ কামরুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Mon, Jul 2022 04:42:53am', NULL, NULL),
(545, 237, 238, 'মোঃ কামরুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/created-submit-form/194', 0, 'Mon, Jul 2022 04:44:32am', NULL, NULL),
(546, 238, 238, 'nahid has updated the form.', 'http://10.10.10.58/report_management/created-submit-form/194', 0, 'Mon, Jul 2022 04:45:06am', NULL, NULL),
(547, 238, 237, 'nahid send you a report request', 'http://10.10.10.58/report_management/created-submit-form/194', 0, 'Mon, Jul 2022 04:45:13am', NULL, NULL),
(548, 237, 238, 'Your Report Has Been approved', 'http://10.10.10.58/report_management/created-submit-form/194', 0, 'Mon, Jul 2022 04:45:27am', NULL, NULL),
(549, 126, 235, 'FID send you a report request', 'http://10.10.10.58/report_management/form/195', 0, 'Mon, Jul 2022 05:49:18am', NULL, NULL),
(550, 235, 236, 'মোঃ আশরাফুল ইসলাম send you a report request', 'http://10.10.10.58/report_management/created-submit-form/195', 0, 'Mon, Jul 2022 05:50:17am', NULL, NULL),
(551, 236, 236, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://10.10.10.58/report_management/created-submit-form/195', 0, 'Mon, Jul 2022 05:50:52am', NULL, NULL),
(552, 236, 235, 'মোঃ আসিফ মাহবুব send you a report request', 'http://10.10.10.58/report_management/created-submit-form/195', 0, 'Mon, Jul 2022 05:50:59am', NULL, NULL),
(553, 235, 235, 'Your Report Has Been approved', 'http://10.10.10.58/report_management/created-submit-form/195', 0, 'Mon, Jul 2022 05:52:08am', NULL, NULL),
(554, 236, 236, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 01:06:25am', NULL, NULL),
(555, 235, 235, 'মোঃ আশরাফুল ইসলাম has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 01:15:04am', NULL, NULL),
(556, 235, 235, 'মোঃ আশরাফুল ইসলাম has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 01:15:17am', NULL, NULL),
(557, 235, 235, 'মোঃ আশরাফুল ইসলাম has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 01:15:28am', NULL, NULL),
(558, 235, 235, 'মোঃ আশরাফুল ইসলাম has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 01:18:03am', NULL, NULL),
(559, 236, 236, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 01:18:52am', NULL, NULL),
(560, 236, 236, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:01:09am', NULL, NULL),
(561, 236, 236, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:01:17am', NULL, NULL),
(562, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:04:24am', NULL, NULL),
(563, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:08:13am', NULL, NULL),
(564, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:10:06am', NULL, NULL),
(565, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:20:46am', NULL, NULL),
(566, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:20:53am', NULL, NULL),
(567, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 02:21:01am', NULL, NULL),
(568, 238, 237, 'nahid send you a report request', 'http://localhost/report_management/created-submit-form/192', 0, 'Tue, Jul 2022 02:23:05am', NULL, NULL),
(569, 237, 236, 'Your Report Has Been approved', 'http://10.10.10.58/report_management/created-submit-form/192', 0, 'Tue, Jul 2022 02:24:20am', NULL, NULL),
(570, 237, 238, 'মোঃ কামরুল ইসলাম send you a report request', 'http://localhost/report_management/created-submit-form/197', 0, 'Tue, Jul 2022 03:46:48am', NULL, NULL),
(571, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 03:57:57am', NULL, NULL),
(572, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 04:06:11am', NULL, NULL),
(573, 236, 236, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 04:22:25am', NULL, NULL),
(574, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 04:22:33am', NULL, NULL),
(575, 238, 238, 'nahid has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 04:45:59am', NULL, NULL),
(576, 237, 238, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/197', 0, 'Tue, Jul 2022 04:57:06am', NULL, NULL),
(577, 237, 239, 'মোঃ কামরুল ইসলাম send you a report request', 'http://localhost/report_management/form/197', 0, 'Tue, Jul 2022 05:39:50am', NULL, NULL),
(578, 239, 240, 'Akaash send you a report request', 'http://localhost/report_management/created-submit-form/197', 0, 'Tue, Jul 2022 05:56:07am', NULL, NULL),
(579, 239, 240, 'Akaash send you a report request', 'http://localhost/report_management/form/197', 0, 'Tue, Jul 2022 05:57:36am', NULL, NULL),
(580, 126, 235, 'FID send you a report request', 'http://localhost/report_management/form/198', 0, 'Tue, Jul 2022 10:46:05am', NULL, NULL),
(581, 235, 236, 'মোঃ আশরাফুল ইসলাম send you a report request', 'http://localhost/report_management/form/198', 0, 'Tue, Jul 2022 10:48:21am', NULL, NULL),
(582, 236, 236, 'মোঃ আসিফ মাহবুব has updated the form.', 'http://localhost/report_management/created-submit-form/', 0, 'Tue, Jul 2022 10:49:05am', NULL, NULL),
(583, 236, 235, 'মোঃ আসিফ মাহবুব send you a report request', 'http://localhost/report_management/form/198', 0, 'Tue, Jul 2022 10:49:33am', NULL, NULL),
(584, 235, 235, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/195', 0, 'Tue, Jul 2022 11:44:03am', NULL, NULL),
(585, 235, 235, 'Your Report Has Been approved', 'http://localhost/report_management/created-submit-form/198', 0, 'Tue, Jul 2022 11:44:47am', NULL, NULL),
(586, 236, 235, 'মোঃ আসিফ মাহবুব send you a report request', 'http://localhost/report_management/created-submit-form/198', 0, 'Wed, Jul 2022 12:02:22pm', NULL, NULL);

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
(1, NULL, 'Leave-Management Personal Access Client', '2fkomNCZhv0bllQ9xo5reSMqr0FdS2UOLwUxXfiJ', NULL, 'http://localhost', 1, 0, 0, '2021-11-02 01:02:51', '2021-11-02 01:02:51'),
(2, NULL, 'Leave-Management Password Grant Client', 'JRRmIAjox3Tjnd03VIkvzwrRsHfTw4O2R9GqLShe', 'users', 'http://localhost', 0, 1, 0, '2021-11-02 01:02:51', '2021-11-02 01:02:51');

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
(1, 1, '2021-11-02 01:02:51', '2021-11-02 01:02:51');

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
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `parent_id` text DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(10, NULL, 12, 'অর্গনাইজেশন শাখা', NULL, NULL, NULL, '2022-07-18 10:03:09', '2022-07-18 10:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `id` int(11) NOT NULL,
  `year` text DEFAULT NULL,
  `quarter` text DEFAULT NULL,
  `ministry` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `office` text DEFAULT NULL,
  `unit_office` text DEFAULT NULL,
  `form_unique_id` text DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `form_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `year`, `quarter`, `ministry`, `department`, `office`, `unit_office`, `form_unique_id`, `form_id`, `form_name`, `created_at`, `updated_at`) VALUES
(58, '২০২৩-২৪', 'প্রথম কোয়ার্টার  (জানুয়ারি-মার্চ)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-8454504740', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-02-15 04:20:12', '2022-02-15 04:20:12'),
(59, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-8379616785', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-02-15 04:53:35', '2022-02-15 04:53:35'),
(60, '২০২২-২৩', 'তৃতীয় কোয়ার্টার (জুলাই-সেপ্টেম্বর)', '12', 'Bangladesh Bank', 'Select From List', 'Select From List', 'Form-3070491323', 8, '১.১.১. সচিবালয়', '2022-03-22 09:16:53', '2022-03-22 09:16:53'),
(61, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-2745615158', 8, '১.১.১. সচিবালয়', '2022-03-22 09:18:39', '2022-03-22 09:18:39'),
(62, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-5360069547', 8, '১.১.১. সচিবালয়', '2022-03-22 09:25:08', '2022-03-22 09:25:08'),
(63, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-4050699617', 8, '১.১.১. সচিবালয়', '2022-03-22 09:27:11', '2022-03-22 09:27:11'),
(64, '২০২২-২৩', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-3909503103', 33, 'Menu>1.1. Annual Performance Evaluation', '2022-03-22 09:37:54', '2022-03-22 09:37:54'),
(65, '২০২৩-২৪', 'তৃতীয় কোয়ার্টার (জুলাই-সেপ্টেম্বর)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-313079392', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-03-22 09:38:07', '2022-03-22 09:38:07'),
(66, '২০২৩-২৪', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-3254113771', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-03-22 09:46:19', '2022-03-22 09:46:19'),
(67, '২০২৩-২৪', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-7646486150', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-03-22 09:50:07', '2022-03-22 09:50:07'),
(68, '২০২৩-২৪', 'তৃতীয় কোয়ার্টার (জুলাই-সেপ্টেম্বর)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-6487228303', 33, 'Menu>1.1. Annual Performance Evaluation', '2022-03-22 11:10:18', '2022-03-22 11:10:18'),
(69, '২০২২-২৩', 'চতুর্থ কোয়ার্টার  (অক্টোবর-ডিসেম্বর)', '8', 'Select From List', 'Select From List', 'Select From List', 'Form-813523038', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-04-12 06:24:13', '2022-04-12 06:24:13'),
(70, '২০২৪-২৫', 'দ্বিতীয় কোয়ার্টার (এপ্রিল-জুন)', 'Select From List', 'Select From List', 'Select From List', 'Select From List', 'Form-3977494385', 1, '২.১ বার্ষিক কর্মসম্পাদন চুক্তি ত্রৈমাসিক', '2022-07-13 10:55:16', '2022-07-13 10:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shahedshanjid@gmail.com', '$2y$10$MdFtxxhVs8nqLMXXmEkk3.iavY.puZc9DBEZyhg54br15OFjGMc2O', '2021-11-01 00:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `section_name`, `name`, `institution_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'User', 'Add User', NULL, 'add-user', '2021-10-17 03:38:31', '2021-11-01 22:33:16'),
(2, 'User', 'Edit User', NULL, 'edit-user', '2021-10-17 03:38:31', '2021-10-17 03:38:31'),
(3, 'User', 'View User', NULL, 'view-user', '2021-10-17 03:38:31', '2021-10-17 03:38:31'),
(4, 'User', 'Delete User', NULL, 'delete-user', '2021-10-17 03:38:31', '2021-10-17 03:38:31'),
(9, 'Permission', 'Add Permission', NULL, 'add-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(10, 'Permission', 'View Permission', NULL, 'view-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(11, 'Permission', 'Edit Permission', NULL, 'edit-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(12, 'Permission', 'Delete Permission', NULL, 'delete-permission', '2021-10-19 03:11:20', '2021-10-19 03:11:20'),
(13, 'Role', 'Add Role', NULL, 'add-role', '2021-10-19 03:11:55', '2021-10-19 03:11:55'),
(14, 'Role', 'Edit Role', NULL, 'edit-role', '2021-10-19 03:11:55', '2021-10-19 03:11:55'),
(15, 'Role', 'Delete Role', NULL, 'delete-role', '2021-10-19 03:11:55', '2021-10-19 03:11:55'),
(16, 'Role', 'View Role', NULL, 'view-role', '2021-10-19 03:11:56', '2021-10-19 03:11:56'),
(21, 'Designations', 'View Designations', NULL, 'view-designations', '2021-11-01 22:12:50', '2021-11-01 22:12:50'),
(22, 'Designations', 'Add Designations', NULL, 'add-designations', '2021-11-01 22:12:51', '2021-11-01 22:12:51'),
(23, 'Designations', 'Edit Designations', NULL, 'edit-designations', '2021-11-01 22:12:51', '2021-11-01 22:12:51'),
(24, 'Designations', 'Delete Designations', NULL, 'delete-designations', '2021-11-01 22:12:51', '2021-11-01 22:12:51'),
(25, 'Report', 'View today leaves', NULL, 'view-today-leaves', '2021-11-10 04:26:30', '2021-11-10 04:29:37'),
(26, 'Govt Leave', 'View Govt Leave', NULL, 'view-govt-leave', '2021-11-23 05:18:58', '2021-11-23 05:18:58'),
(27, 'User', 'N o User', 1, 'n-o-user', '2021-12-14 10:13:59', '2021-12-14 10:13:59'),
(28, 'User', 'Add  User', 1, 'add--user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(29, 'User', 'Edit User', 1, 'edit-user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(30, 'User', 'Delete User', 1, 'delete-user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(31, 'User', 'View User', 1, 'view-user', '2021-12-14 11:31:47', '2021-12-14 11:31:47'),
(32, 'Test', 'View Test', NULL, 'view-test', '2021-12-19 09:33:55', '2021-12-19 09:33:55'),
(33, 'Department', 'Add Department', 4, 'add-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(34, 'Department', 'Edit Department', 4, 'edit-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(35, 'Department', 'View Department', 4, 'view-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(36, 'Department', 'Delete Department', 4, 'delete-department', '2022-06-29 09:11:35', '2022-06-29 09:11:35'),
(37, 'User', 'Add User', 4, 'add-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(38, 'User', 'View User', 4, 'view-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(39, 'User', 'Edit User', 4, 'edit-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(40, 'User', 'Delete User', 4, 'delete-user', '2022-06-29 09:26:41', '2022-06-29 09:26:41'),
(41, 'Role', 'Add Role', 4, 'add-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(42, 'Role', 'View Role', 4, 'view-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(43, 'Role', 'Edit Role', 4, 'edit-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(44, 'Role', 'Delete Role', 4, 'delete-role', '2022-06-29 09:27:28', '2022-06-29 09:27:28'),
(45, 'Form', 'Add Form', 4, 'add-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(46, 'Form', 'View Form', 4, 'view-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(47, 'Form', 'Edit Form', 4, 'edit-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(48, 'Form', 'Delete Form', 4, 'delete-form', '2022-06-29 09:28:06', '2022-06-29 09:28:06'),
(49, 'Report', 'Add Report', 4, 'add-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(50, 'Report', 'View Report', 4, 'view-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(51, 'Report', 'Edit Report', 4, 'edit-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(52, 'Report', 'Delete Report', 4, 'delete-report', '2022-06-29 09:28:47', '2022-06-29 09:28:47'),
(53, 'Report Requests', 'Add Report Requests', 4, 'add-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(54, 'Report Requests', 'View Report Requests', 4, 'view-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(55, 'Report Requests', 'Edit Report Requests', 4, 'edit-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(56, 'Report Requests', 'Delete Report Requests', 4, 'delete-report-requests', '2022-06-29 09:30:04', '2022-06-29 09:30:04'),
(57, 'Default Stored Forms', 'Add Default Stored Forms', 4, 'add-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(58, 'Default Stored Forms', 'View Default Stored Forms', 4, 'view-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(59, 'Default Stored Forms', 'Edit Default Stored Forms', 4, 'edit-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(60, 'Default Stored Forms', 'Delete Default Stored Forms', 4, 'delete-default-stored-forms', '2022-06-29 09:31:01', '2022-06-29 09:31:01'),
(61, 'Send Form', 'Add Send Form', 4, 'add-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(62, 'Send Form', 'View Send Form', 4, 'view-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(63, 'Send Form', 'Edit Send Form', 4, 'edit-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(64, 'Send Form', 'Delete Send Form', 4, 'delete-send-form', '2022-06-29 09:31:43', '2022-06-29 09:31:43'),
(65, 'Group', 'Add Group', 4, 'add-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(66, 'Group', 'View Group', 4, 'view-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(67, 'Group', 'Edit Group', 4, 'edit-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(68, 'Group', 'Delete Group', 4, 'delete-group', '2022-06-29 09:32:20', '2022-06-29 09:32:20'),
(69, 'Ministry Department', 'Add Ministry Department', 4, 'add-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(70, 'Ministry Department', 'View Ministry Department', 4, 'view-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(71, 'Ministry Department', 'Edit Ministry Department', 4, 'edit-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(72, 'Ministry Department', 'Delete Ministry Department', 4, 'delete-ministry-department', '2022-06-29 09:33:02', '2022-06-29 09:33:02'),
(73, 'Regularity Authority', 'Add Regularity Authority', 4, 'add-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(74, 'Regularity Authority', 'View Regularity Authority', 4, 'view-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(75, 'Regularity Authority', 'Edit Regularity Authority', 4, 'edit-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(76, 'Regularity Authority', 'Delete Regularity Authority', 4, 'delete-regularity-authority', '2022-06-29 09:33:41', '2022-06-29 09:33:41'),
(77, 'Institutions', 'Add Institutions', 4, 'add-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(78, 'Institutions', 'View Institutions', 4, 'view-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(79, 'Institutions', 'Edit Institutions', 4, 'edit-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(80, 'Institutions', 'Delete Institutions', 4, 'delete-institutions', '2022-06-29 09:34:23', '2022-06-29 09:34:23'),
(81, 'Organization User', 'Add Organization User', 4, 'add-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(82, 'Organization User', 'View Organization User', 4, 'view-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(83, 'Organization User', 'Edit Organization User', 4, 'edit-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(84, 'Organization User', 'Delete Organization User', 4, 'delete-organization-user', '2022-06-29 09:34:59', '2022-06-29 09:34:59'),
(85, 'Division', 'Add Division', 4, 'add-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(86, 'Division', 'View Division', 4, 'view-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(87, 'Division', 'Edit Division', 4, 'edit-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(88, 'Division', 'Delete Division', 4, 'delete-division', '2022-06-29 09:35:35', '2022-06-29 09:35:35'),
(89, 'Branch', 'Add Branch', 4, 'add-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(90, 'Branch', 'View Branch', 4, 'view-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(91, 'Branch', 'Edit Branch', 4, 'edit-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(92, 'Branch', 'Delete Branch', 4, 'delete-branch', '2022-06-29 09:36:53', '2022-06-29 09:36:53'),
(93, 'Designation', 'Add Designation', 4, 'add-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(94, 'Designation', 'View Designation', 4, 'view-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(95, 'Designation', 'Edit Designation', 4, 'edit-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(96, 'Designation', 'Delete Designation', 4, 'delete-designation', '2022-06-29 09:37:28', '2022-06-29 09:37:28'),
(97, 'Department', 'Add Department', 4, 'add-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03'),
(98, 'Department', 'View Department', 4, 'view-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03'),
(99, 'Department', 'Edit Department', 4, 'edit-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03'),
(100, 'Department', 'Delete Department', 4, 'delete-department', '2022-06-29 09:38:03', '2022-06-29 09:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `regularityauthorities`
--

CREATE TABLE `regularityauthorities` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `code` varchar(55) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regularityauthorities`
--

INSERT INTO `regularityauthorities` (`id`, `parent_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(7, NULL, 'বাংলাদেশ এনার্জি রেগুলেটরি কমিশন', NULL, 1, NULL, '2022-07-18 09:44:49', '2022-07-18 09:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `relevant_budget_apa_report_format`
--

CREATE TABLE `relevant_budget_apa_report_format` (
  `id` int(11) NOT NULL,
  `serial` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `sender` text DEFAULT NULL,
  `report_monthly` text DEFAULT NULL,
  `report_quarterly` text DEFAULT NULL,
  `report_half_yearly` text DEFAULT NULL,
  `report_yearly` text DEFAULT NULL,
  `report_instant` text DEFAULT NULL,
  `appnedix` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 13,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relevant_budget_apa_report_format`
--

INSERT INTO `relevant_budget_apa_report_format` (`id`, `serial`, `subject`, `sender`, `report_monthly`, `report_quarterly`, `report_half_yearly`, `report_yearly`, `report_instant`, `appnedix`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(712, '1.', '১। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি_১)', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '1', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(713, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি_১)', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(714, NULL, 'nacjcabnjcajk', 'kcjkndjdnj', 'njcdnndjhbcd', 'hjdhbcdevbhucbydx', 'bhhcbhdc', NULL, NULL, NULL, 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(715, NULL, '৪। মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯_২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০_২১ অর্থবছরের প্রাক্কলন এবং ২০২১_২২ ও ২০২২_২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(716, NULL, '৫। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '3', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(717, NULL, '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, NULL, 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(718, NULL, '৭। আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '4', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(719, NULL, '৮। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, NULL, 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(720, NULL, '৯। বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি এবং রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '5', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(721, NULL, '১০। জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(722, NULL, '১১।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/ বিভাগ/ দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(723, NULL, '১২।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ।', NULL, NULL, NULL, NULL, NULL, NULL, '7', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(724, NULL, '১৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 'রেগুলেটরি অথরিটি এবং দপ্তর/সংস্থা', NULL, NULL, NULL, NULL, NULL, '7', 'Form-6207848857', 1, 13, '2022-01-27 10:47:54', '2022-01-27 10:47:54'),
(725, '1.', 'khub valo kaaj korse', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '1', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(726, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি_১)', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(727, NULL, '৩।মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের ২০১৯_২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০_২১ অর্থবছরের প্রাক্কলন এবং ২০২১_২২ ও ২০২২_২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, NULL, 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(728, NULL, '৪। মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯_২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০_২১ অর্থবছরের প্রাক্কলন এবং ২০২১_২২ ও ২০২২_২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(729, NULL, '৫। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '3', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(730, NULL, '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, NULL, 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(731, NULL, '৭। আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '4', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(732, NULL, '৮। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, NULL, 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(733, NULL, '৯। বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি এবং রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '5', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(734, NULL, '১০। জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(735, NULL, '১১।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/ বিভাগ/ দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(736, NULL, '১২।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ।', NULL, NULL, NULL, NULL, NULL, NULL, '7', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(737, NULL, '১৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 'রেগুলেটরি অথরিটি এবং দপ্তর/সংস্থা', NULL, NULL, NULL, NULL, NULL, '7', 'Form-806711092', 1, 13, '2022-02-02 09:58:38', '2022-02-02 09:58:38'),
(738, '1.', 'very good', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '1', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(739, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি_১)', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(740, NULL, '৩।মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের ২০১৯_২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০_২১ অর্থবছরের প্রাক্কলন এবং ২০২১_২২ ও ২০২২_২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, NULL, 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(741, NULL, '৪। মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯_২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০_২১ অর্থবছরের প্রাক্কলন এবং ২০২১_২২ ও ২০২২_২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(742, NULL, '৫। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '3', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(743, NULL, '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, NULL, 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(744, NULL, '৭। আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '4', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(745, NULL, '৮। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, NULL, 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(746, NULL, '৯। বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি এবং রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '5', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(747, NULL, '১০। জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(748, NULL, '১১।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/ বিভাগ/ দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(749, NULL, '১২।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ।', NULL, NULL, NULL, NULL, NULL, NULL, '7', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(750, NULL, '১৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 'রেগুলেটরি অথরিটি এবং দপ্তর/সংস্থা', NULL, NULL, NULL, NULL, NULL, '7', 'Form-4101662754', 1, 13, '2022-02-02 10:02:58', '2022-02-02 10:02:58'),
(751, '1.', 'cbgdcbcd', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, 'বাৎসরিক', NULL, '1', 'Form-5379471520', 1, 13, '2022-02-02 10:04:44', '2022-02-02 10:04:44'),
(752, '2.', '২। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো সংশোধন ও হালনাগাদকরণ সংক্রান্ত তথ্য প্রেরণ। (বিসি_১)', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-5379471520', 1, 13, '2022-02-02 10:04:44', '2022-02-02 10:04:44'),
(753, NULL, '৩।মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের ২০১৯_২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০_২১ অর্থবছরের প্রাক্কলন এবং ২০২১_২২ ও ২০২২_২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, NULL, 'Form-5379471520', 1, 13, '2022-02-02 10:04:44', '2022-02-02 10:04:44'),
(754, NULL, '৪। মধ্যমেয়াদি বাজেট কাঠামো পদ্ধতির আওতাভুক্ত আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/ প্রকল্পসমুহের ২০১৯_২০ অর্থবছরের সংশোধন (পরিচালন এবং উন্নয়ন), ২০২০_২১ অর্থবছরের প্রাক্কলন এবং ২০২১_২২ ও ২০২২_২৩ অর্থবছরের প্রক্ষেপণ প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, '2', 'Form-5379471520', 1, 13, '2022-02-02 10:04:44', '2022-02-02 10:04:44'),
(755, NULL, '৫। আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '3', 'Form-5379471520', 1, 13, '2022-02-02 10:04:44', '2022-02-02 10:04:44'),
(756, NULL, '৬। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের ২০২০_২১ অর্থবছরের বাজেট বাস্তবায়ন পরিকল্পনা প্রণয়ন।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, NULL, NULL, NULL, NULL, NULL, 'Form-5379471520', 1, 13, '2022-02-02 10:04:44', '2022-02-02 10:04:44'),
(757, NULL, '৭। আর্থিক প্রতিষ্ঠান বিভাগের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '4', 'Form-5379471520', 1, 13, '2022-02-02 10:04:44', '2022-02-02 10:04:44'),
(758, NULL, '৮। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থা/প্রকল্পসমুহের চলমান ২০১৯_২০ অর্থবছরের বাজেট বাস্তবায়ন অগ্রগতি পরিবীক্ষণ।', 'দপ্তর/সংস্থা/ প্রকল্প', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, NULL, 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(759, NULL, '৯। বাজেট বাস্তবায়ন অগ্রগতি বিষয়ক প্রতিবেদন প্রণয়নের জন্য বাজেটে ঘোষিত গুরুত্বপূর্ণ কার্যক্রম/কর্মসূচির বাস্তবায়ন অগ্রগতি প্রতিবেদন।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি এবং রেগুলেটরি অথরিটি', NULL, 'ত্রৈমাসিক', 'ষান্মাষিক', NULL, NULL, '5', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(760, NULL, '১০। জাতীয় সংসদের অধিবেশনে মহামান্য রাষ্ট্রপতি কর্তৃক প্রদেয় ভাষণে অন্তর্ভুক্তির জন্য তথ্য প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(761, NULL, '১১।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের বাজেট বক্তৃতায় অন্তর্ভুক্তির জন্য মন্ত্রণালয়/ বিভাগ/ দপ্তর/সংস্থার মৌলিক ও গুরুত্বপুর্ণ কার্যাবলি সম্পর্কে সুনির্দিষ্ট, সংক্ষিপ্ত ও পরিসংখ্যানভিত্তিক প্রতিবেদন প্রেরণ।', 'সকল শাখা/ অধিশাখা, আ.প্র.বি', NULL, NULL, NULL, NULL, NULL, '6', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(762, NULL, '১২।  আর্থিক প্রতিষ্ঠান বিভাগের ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ।', NULL, NULL, NULL, NULL, NULL, NULL, '7', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45'),
(763, NULL, '১৩। আর্থিক প্রতিষ্ঠান বিভাগের আওতাধীন দপ্তর/সংস্থার ২০২০_২১ অর্থবছরের মধ্যমেয়াদি বাজেট কাঠামো (MTBF) (বাংলা ও ইংরেজি) সংশোধন ও হালনাগাদকরণ। (বাৎসরিক)', 'রেগুলেটরি অথরিটি এবং দপ্তর/সংস্থা', NULL, NULL, NULL, NULL, NULL, '7', 'Form-5379471520', 1, 13, '2022-02-02 10:04:45', '2022-02-02 10:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `institution_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', NULL, '2021-10-17 03:37:59', '2021-10-17 03:37:59'),
(11, 'Admin', 'admin', NULL, '2022-06-28 05:19:21', '2022-06-28 05:19:21'),
(12, 'Sub Admin(All Regulatory)', 'sub-admin(all-regulatory)', NULL, '2022-06-28 05:20:02', '2022-06-28 05:20:02'),
(13, 'Sub Admin(All Organization Head)', 'sub-admin(all-organization-head)', NULL, '2022-06-28 05:21:11', '2022-06-28 05:21:11'),
(14, 'Organization User', 'organization-user', NULL, '2022-06-28 05:22:02', '2022-06-28 05:22:02'),
(15, 'Branch User', 'branch-user', NULL, '2022-06-28 05:22:39', '2022-06-28 05:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(11, 15),
(11, 16),
(11, 21),
(11, 22),
(11, 23),
(11, 24),
(11, 25),
(11, 26),
(11, 27),
(11, 28),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 14),
(12, 15),
(12, 16),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(12, 25),
(12, 26),
(12, 27),
(12, 28),
(12, 29),
(12, 30),
(12, 31),
(12, 32),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 9),
(14, 10),
(14, 11),
(14, 12),
(14, 13),
(14, 14),
(14, 15),
(14, 16),
(14, 21),
(14, 22),
(14, 23),
(14, 24),
(14, 25),
(14, 26),
(14, 27),
(14, 28),
(14, 29),
(14, 30),
(14, 31),
(14, 32),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 9),
(15, 10),
(15, 11),
(15, 12),
(15, 13),
(15, 14),
(15, 15),
(15, 16),
(15, 21),
(15, 22),
(15, 23),
(15, 24),
(15, 25),
(15, 26),
(15, 27),
(15, 28),
(15, 29),
(15, 30),
(15, 31),
(15, 32);

-- --------------------------------------------------------

--
-- Table structure for table `sample_form`
--

CREATE TABLE `sample_form` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `division` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `section_three_first_part`
--

CREATE TABLE `section_three_first_part` (
  `id` int(11) NOT NULL,
  `purpose` text DEFAULT NULL,
  `purpose_value` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `indicator` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `indicator_value` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target_extraordinary` text DEFAULT NULL,
  `target_excellent` text DEFAULT NULL,
  `target_fine` text DEFAULT NULL,
  `target_value` text DEFAULT NULL,
  `target_below` text DEFAULT NULL,
  `margin` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_three_first_part`
--

INSERT INTO `section_three_first_part` (`id`, `purpose`, `purpose_value`, `activity`, `indicator`, `unit`, `indicator_value`, `achivement`, `achivement_star`, `target_extraordinary`, `target_excellent`, `target_fine`, `target_value`, `target_below`, `margin`, `responsible`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(245, '[১] প্রাতিষ্ঠানিক কাঠামো শক্তিশালীকরণ;', '17', '[১.১] হাউজ বিল্ডিং ফাইন্যান্স কর্পোরেশন আইন প্রণয়ন', '[১.১.১] মন্ত্রিসভায় নীতিগত অনুমোদনের জন্য প্রেরিত', 'তারিখ', '2', NULL, NULL, '05/02/2020', '২০-০২-২০২০', '05/03/2020', '২০-০৩-২০২০', '05/04/2020', NULL, 'বিশেষায়িত ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(246, NULL, NULL, '[১.২] কর্মসংস্থান ব্যাংক কর্মচারি চাকরি প্রবিধানমালা, ২০১৯ প্রণয়ন।', '[১.২.১] জনপ্রশাসন মন্ত্রণালয়ের নিয়োগ বিধি পরীক্ষণ সংক্রান্ত উপকমিটির নিকট প্রেরিত', 'তারিখ', '2', NULL, NULL, '01/03/2020', '10/03/2020', '২০-০৩-২০২০', '৩১-০৩-২০২০', '10/04/2020', NULL, 'বিশেষায়িত ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(247, NULL, NULL, '[১.৩] ফাইন্যান্স কোম্পানি আইনের খসড়া ভেটিং এর জন্য আইন মন্ত্রণালয়ে প্রেরণ', '[১.৩.১] প্রস্তাব মন্ত্রিপরিষদ বিভাগের আন্ত:মন্ত্রণালয় কমিটিতে প্রেরিত', 'তারিখ', '2', NULL, NULL, '১৫-০১-২০২০', '৩১-০১-২০২০', '১৫-০২-২০২০', '২৮-০২-২০২০', '১৫-০৩-২০২০', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(248, NULL, NULL, '[১.৪] বীমা বিষয়ক বিধিমালা/ প্রবিধানমালা জারি', '[১.৪.১] ভেটিং এর জন্য আইন মন্ত্রণালয়ে প্রেরিত', 'সংখ্যা', '3', NULL, '5', '5', '4', '3', '2', NULL, NULL, 'বীমা শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(249, '[২] ব্যাংক ও নন-ব্যাংক আর্থিক প্রতিষ্ঠানসমুহে পেশাদারিত্ব এবং আর্থিক অন্তর্ভুক্তি শক্তিশালীকরণ;', '16', '[২.১] রাষ্ট্র মালিকানাধীন বাণিজ্যিক ব্যাংকসমূহের শ্রেণিকৃত ঋণ হ্রাসকরণ', '[২.১.১] শেণিকৃত ঋণ হতে নগদ আদায়', 'হাজার কোটি টাকা', '1', NULL, '2707', '2750', '2740', '2730', '2720', '2710', NULL, 'বাণিজ্যিক ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(250, NULL, NULL, '[২.২] শ্রেণিকৃত ঋণ আদায় কার্যক্রম মনিটরিং করা', '[২.২.১] আয়োজিত সভার সংখ্যা', 'সংখ্যা', '2', '4', '3', '4', '3', '2', '1', NULL, NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(251, NULL, NULL, '[২.৩] কৃষিঋণ বিতরণ', '[২.৩.১] বিতরণকৃত কৃষিঋণ', 'হাজার কোটি টাকা', '2', NULL, '21', '30', '28', '26', '24', '22', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(252, NULL, NULL, '[২.৪] এসএমই ঋণ বিতরণ ও আদায়', '[২.৪.১] বিতরণকৃত এসএমই ঋণ', 'হাজার কোটি টাকা', '2', NULL, '163', '170', '168', '166', '164', '162', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(253, NULL, NULL, '[২.৫] মোবাইল ব্যাংকিং কার্যক্রম সম্প্রসারণ', '[২.৫.১] বার্ষিক লেনদেনের পরিমাণ', 'হাজার কোটি টাকা', '1', NULL, '300', '435', '430', '425', '420', '415', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(254, NULL, NULL, '[২.৬] এজেন্ট ব্যাংকিং কার্যক্রমের মাধ্যমে ব্যাংকিং সেবা সম্প্রসারণ', '[২.৬.১] নতুন এজন্টের সংখ্যা', 'সংখ্যা', '1', NULL, '1278', '1800', '1750', '1700', '1650', '1600', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(255, NULL, NULL, '[২.৭] স্কুল ব্যাংকিং কার্যক্রম সম্প্রসারণ', '[২.৭.১] স্কুল ব্যাংকিং এর নতুন হিসাব সংখ্যা', 'সংখ্যা (হাজার)', '2', NULL, '417', '600', '550', '500', '450', '400', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(256, NULL, NULL, '[২.৮] ব্যাংকের মাধ্যমে সামাজিক নিরাপত্তার সুবিধা প্রদান', '[২.৮.১] ব্যাংকের মাধ্যমে সুবিধা গ্রহণকারীর সংখ্যা', 'সংখ্যা (হাজার)', '1', NULL, '10124', '10600', '10500', '10400', '10300', '10200', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(257, '[৩] পুঁজিবাজারের কার্যকারিতা বৃদ্ধিকরণ;', '10', '[৩.১] দেশব্যাপী ফাইন্যান্সিয়াল লিটারেসি কার্যক্রম বাস্তবায়ন', '[৩.১.১] কার্যক্রমে অংশগ্রহণকারী', 'সংখ্যা', '2', '17083', '9656', '12000', '11500', '11000', '10500', '10000', NULL, 'বিএসইসি শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(258, NULL, NULL, '[৩.২] মূলধন উত্তোলনের লক্ষে আইপিও/ আরপিও/রাইট/ ডেট সিকিউরিটিজ ইস্যুকরণ', '[৩.২.১] আইপিও/ আরপিও/ রাইট/ডেট সিকিউরিটিজ ইস্যুকৃত', 'সংখ্যা', '2', '26', '17', '21', '20', '19', '18', '17', NULL, 'বিএসইসি শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(259, NULL, NULL, '[৩.৩] বন্ডসহ অন্যান্য অতালিকাভূক্ত সিকিউরিটিজ হস্তান্তরের সুবিধার্থে Alternative Trading Board (ATB) চালুকরণ', '[৩.৩.১] প্লাটফরম চালুকৃত', 'তারিখ', '2', NULL, NULL, '৩১-০৫-২০২০', '07/06/2020', '১৫-০৬-২০২০', '২১-০৬-২০১৯', '২৫-০৬-২০২০', NULL, 'বিএসইসি শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(260, NULL, NULL, '[৩.৪] পুঁজিবাজারে বিনিয়োগকারীদের জন্য সচেতনতামূলক প্রশিক্ষণ', '[৩.৪.১] প্রশিক্ষিত বিনিয়োগকারী', 'সংখ্যা', '2', '1635', '1125', '1600', '1550', '1500', '1450', '1400', NULL, 'বিএসইসি শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(261, NULL, NULL, '[৩.৫] পোস্ট গ্র্যাজুয়েট ডিপ্লোমা ইন ক্যাপিটাল মার্কেট বিষয়ক প্রশিক্ষণ', '[৩.৫.১] আয়োজিত প্রোগ্রাম', 'সংখ্যা', '1', '2', '3', '3', '2', '1', '2', '2', NULL, 'বিএসইসি শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(262, NULL, NULL, '[৩.৬] সার্টিফিকেট কোর্স অন ক্যাপিটাল মার্কেট', '[৩.৬.১] আয়োজিত প্রোগ্রাম', 'সংখ্যা', '1', '14', '16', '20', '19', '18', '17', '16', NULL, 'বিএসইসি শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(263, '[৪] সুনিয়ন্ত্রিত ক্ষুদ্রঋণ কার্যক্রম সম্প্রসারণ ও পরিচালনায় সহায়তা জোরদারকরণ;', '9', '[৪.১] ক্ষুদ্রঋণ বিতরণ ও আদায়', '[৪.১.১] বিতরণকৃত ক্ষুদ্রঋণ', 'হাজার কোটি টাকা', '3', '134', '140', '167', '160', '150', '145', '140', NULL, 'এমআরএ শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(265, NULL, NULL, '[৪.২] এমএফআই সুবিধাভোগীদের সংখ্যা বৃদ্ধি', '[৪.২.১] সুবিধাভোগীর সংখ্যা', 'সংখ্যা (লক্ষ জন)', '3', NULL, '307', '315', '313', '311', '307', '305', NULL, 'এমআরএ শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(266, '[৫] ডিজিটাল বাংলাদেশ বিনির্মাণে ক্যাশ-লেস এবং ডিজিটাল ব্যাংকিং কার্যক্রম সম্প্রসারণ;', '9', '[৫.১] ক্যাশলেস ট্রানজেকশনে উৎসাহ প্রদান;', '[৫.১.১] ডেবিট ও ক্রেডিট কার্ডের নতুন গ্রাহক সংখ্যা', 'সংখ্যা (হাজার)', NULL, NULL, '2498', '2900', '2800', '2700', '2600', '2_2200', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(267, NULL, NULL, '[৫.২] ডিজিটাল ব্যাংকিং কার্যক্রম সম্প্রসারণ;', '[৫.২.১] নতুন POS মেশিনের সংখ্যা', 'সংখ্যা', '1', NULL, '8924', '12000', '11900', '11800', '11700', '11600', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 'form_343041983', 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `section_three_first_part_appeight`
--

CREATE TABLE `section_three_first_part_appeight` (
  `id` int(11) NOT NULL,
  `purpose` text DEFAULT NULL,
  `purpose_value` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `indicator` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `indicator_value` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target_extraordinary` text DEFAULT NULL,
  `target_excellent` text DEFAULT NULL,
  `target_fine` text DEFAULT NULL,
  `target_value` text DEFAULT NULL,
  `target_below` text DEFAULT NULL,
  `projection_first` text DEFAULT NULL,
  `projection_second` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 31,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_three_first_part_appeight`
--

INSERT INTO `section_three_first_part_appeight` (`id`, `purpose`, `purpose_value`, `activity`, `indicator`, `unit`, `indicator_value`, `achivement`, `achivement_star`, `target_extraordinary`, `target_excellent`, `target_fine`, `target_value`, `target_below`, `projection_first`, `projection_second`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_573979527', 1, 31, '2022-01-12 08:57:39', '2022-01-12 08:57:39'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_105089730', 1, 31, '2022-01-12 09:10:50', '2022-01-12 09:10:50'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_01055552', 1, 31, '2022-01-12 11:01:05', '2022-01-12 11:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `section_three_first_part_sub`
--

CREATE TABLE `section_three_first_part_sub` (
  `id` int(11) NOT NULL,
  `purpose` text DEFAULT NULL,
  `purpose_value` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `indicator` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `indicator_value` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target_extraordinary` text DEFAULT NULL,
  `target_excellent` text DEFAULT NULL,
  `target_fine` text DEFAULT NULL,
  `target_value` text DEFAULT NULL,
  `target_below` text DEFAULT NULL,
  `margin` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `row_id` int(11) NOT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_three_first_part_sub`
--

INSERT INTO `section_three_first_part_sub` (`id`, `purpose`, `purpose_value`, `activity`, `indicator`, `unit`, `indicator_value`, `achivement`, `achivement_star`, `target_extraordinary`, `target_excellent`, `target_fine`, `target_value`, `target_below`, `margin`, `responsible`, `row_id`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(128, NULL, NULL, NULL, '[১.১.২] ভেটিং এর জন্য আইন মন্ত্রণালয়ে প্রেরিত', 'তারিখ', '1', NULL, NULL, '10/05/2020', '২৫-০৫-২০২০', '09/05/2020', '২৮-০৬-২০২০', '৩০-০৬-২০২০', NULL, 'বিশেষায়িত ব্যাংক শাখা', 245, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(129, NULL, NULL, NULL, '[১.২.২] প্রশাসনিক উন্নয়ন সংক্রান্ত সচিব কমিটিতে প্রেরিত', 'তারিখ', '1', NULL, NULL, '১৫-০৪-২০২০', '২৫-০৪-২০২০', '05/05/2020', '১৫-০৫-২০২০', '৩১-০৫-২০২০', NULL, 'বিশেষায়িত ব্যাংক শাখা', 246, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(130, NULL, NULL, NULL, '[১.৩.২] মন্ত্রিসভায় নীতিগত অনুমোদনের জন্য প্রেরিত', 'তারিখ', '1', NULL, NULL, '10/04/2020', '২৫-০৪-২০২০', '10/05/2020', '২৫-০৫-২০২০', '৩১০-০৬-২০২০', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 247, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(131, NULL, NULL, NULL, '[১.৪.২] গেজেটে প্রকাশিত', 'সংখ্যা', '3', NULL, '5', '4', '3', '2', '1', NULL, NULL, 'বীমা শাখা', 248, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(132, NULL, NULL, NULL, '[২.৪.২] আদায়কৃত এসএমই ঋণ', 'হাজার কোটি টাকা', '1', NULL, '111', '175', '170', '165', '160', '155', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 252, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(133, NULL, NULL, NULL, '[২.৬.২] এজেন্ট ব্যাংকিং এর গ্রাহক সংখ্যা', 'সংখ্যা (হাজার)', '1', NULL, '2906', '4000', '3800', '3700', '600', '3500', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 254, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(134, NULL, NULL, NULL, '[২.৮.২] বিতরণকৃত অর্থ', 'কোটি টাকা', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 256, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(135, NULL, NULL, NULL, '[৪.১.২] আদায়যোগ্য ঋণ হতে আদায়ের হার', 'হাজার কোটি টাকা', '3', '127', '133', '160', '155', '150', '145', '140', NULL, 'এমআরএ শাখা', 263, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(136, NULL, NULL, NULL, '[৫.১.২] নতুন ATM বুথের সংখ্যা', 'সংখ্যা', '1', NULL, '888', '1050', '1000', '950', '900', '850', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 266, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(137, NULL, NULL, NULL, '[৫.২.২] ইন্টারনেট ব্যাংকিং ব্যবহারকারী গ্রাহকের সংখ্যা', 'সংখ্যা (হাজার)', '1', NULL, '2222', '3700', '3600', '3500', '3400', '3300', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 267, NULL, 1, 32, '2022-01-12 05:34:30', '2022-01-12 05:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `section_three_first_part_sub_2`
--

CREATE TABLE `section_three_first_part_sub_2` (
  `id` int(11) NOT NULL,
  `purpose` text DEFAULT NULL,
  `purpose_value` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `indicator` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `indicator_value` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target_extraordinary` text DEFAULT NULL,
  `target_excellent` text DEFAULT NULL,
  `target_fine` text DEFAULT NULL,
  `target_value` text DEFAULT NULL,
  `target_below` text DEFAULT NULL,
  `margin` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `row_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `unique_form_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_three_first_part_sub_2`
--

INSERT INTO `section_three_first_part_sub_2` (`id`, `purpose`, `purpose_value`, `activity`, `indicator`, `unit`, `indicator_value`, `achivement`, `achivement_star`, `target_extraordinary`, `target_excellent`, `target_fine`, `target_value`, `target_below`, `margin`, `responsible`, `row_id`, `status`, `form_id`, `unique_form_id`, `created_at`, `updated_at`) VALUES
(52, NULL, NULL, NULL, '[১.২.৩] লেজিসলেটিভ ও সংসদ বিষয়ক বিভাগে প্রেরিত', 'তারিখ', '1', NULL, NULL, '11/06/2020', '১৬-০৬-২০২০', '২১-০৬-২০২০', '২৫-০৬-২০২০', '৩০-০৬-২০২০', NULL, NULL, 129, 1, 32, NULL, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(53, NULL, NULL, NULL, '[১.৩.৩] ভেটিং এর জন্য আইন মন্ত্রণালয়ে প্রেরিত', 'তারিখ', '1', NULL, NULL, '২০-০৫-২০২০', '01/06/2020', '10/06/2020', '২০-০৬-২০২০', '৩০-০৬-২০২০', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 130, 1, 32, NULL, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(54, NULL, NULL, NULL, '[৫.২.৩] ইন্টারনেট ব্যাংকিং লেনদেনের পরিমাণ', 'কোটি টাকা', '1', NULL, '34880', '45500', '45400', '45300', '45200', '45100', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 137, 1, 32, NULL, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(55, NULL, NULL, NULL, '[৫.২.৪] RTGS এ লেনদেনের সংখ্যা', 'সংখ্যা (হাজার)', '1', NULL, '1000', '1700', '1600', '1500', '1400', '1300', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 137, 1, 32, NULL, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(56, NULL, NULL, NULL, '[৫.২.৫] RTGS এ লেনদেনের পরিমাণ', 'হাজার কোটি টাকা', '1', NULL, '900', '1200', '1150', '1100', '1050', '1000', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 137, 1, 32, NULL, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(57, NULL, NULL, NULL, '[৫.২.৬] BEFTN এ লেনদেনের সংখ্যা', 'সংখ্যা (হাজার)', '1', NULL, '0582', '27700', '27600', '27500', '27400', '27300', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 137, 1, 32, NULL, '2022-01-12 05:34:30', '2022-01-12 05:34:30'),
(58, NULL, NULL, NULL, '[৫.২.৭] BEFTN এ লেনদেনের পরিমাণ', 'হাজার কোটি টাকা', '1', NULL, '136', '190', '185', '180', '175', '170', NULL, 'কেন্দ্রীয় ব্যাংক শাখা', 137, 1, 32, NULL, '2022-01-12 05:34:30', '2022-01-12 05:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `section_three_second_part`
--

CREATE TABLE `section_three_second_part` (
  `id` int(11) NOT NULL,
  `purpose` text DEFAULT NULL,
  `purpose_value` int(11) NOT NULL,
  `activity` int(11) NOT NULL,
  `indicator` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `indicator_value` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target_extraordinary` text DEFAULT NULL,
  `target_excellent` text DEFAULT NULL,
  `target_fine` text DEFAULT NULL,
  `target_value` text DEFAULT NULL,
  `target_below` text DEFAULT NULL,
  `margin` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section_three_second_part_appeight`
--

CREATE TABLE `section_three_second_part_appeight` (
  `id` int(11) NOT NULL,
  `strategic_purpose` text DEFAULT NULL,
  `strategic_purpose_value` text DEFAULT NULL,
  `strategic_activity` text DEFAULT NULL,
  `strategic_indicator` text DEFAULT NULL,
  `strategic_unit` text DEFAULT NULL,
  `strategic_indicator_value` text DEFAULT NULL,
  `strategic_target_extraordinary` text DEFAULT NULL,
  `strategic_target_excellent` text DEFAULT NULL,
  `strategic_target_fine` text DEFAULT NULL,
  `strategic_target_value` text DEFAULT NULL,
  `strategic_target_below` text DEFAULT NULL,
  `strategic_projection_first` text DEFAULT NULL,
  `strategic_projection_second` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 31,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_three_second_part_appeight`
--

INSERT INTO `section_three_second_part_appeight` (`id`, `strategic_purpose`, `strategic_purpose_value`, `strategic_activity`, `strategic_indicator`, `strategic_unit`, `strategic_indicator_value`, `strategic_target_extraordinary`, `strategic_target_excellent`, `strategic_target_fine`, `strategic_target_value`, `strategic_target_below`, `strategic_projection_first`, `strategic_projection_second`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_573979527', 1, 24, '2022-01-12 08:57:39', '2022-01-12 08:57:39'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_105089730', 1, 24, '2022-01-12 09:10:51', '2022-01-12 09:10:51'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_01055552', 1, 24, '2022-01-12 11:01:05', '2022-01-12 11:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `section_three_second_part_sub`
--

CREATE TABLE `section_three_second_part_sub` (
  `id` int(11) NOT NULL,
  `row_id` text DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `purpose_value` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `indicator` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `indicator_value` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target_extraordinary` text DEFAULT NULL,
  `target_excellent` text DEFAULT NULL,
  `target_fine` int(11) DEFAULT NULL,
  `target_value` text DEFAULT NULL,
  `target_below` text DEFAULT NULL,
  `margin` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `unique_form_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section_three_second_part_sub_2`
--

CREATE TABLE `section_three_second_part_sub_2` (
  `id` int(11) NOT NULL,
  `purpose` text DEFAULT NULL,
  `purpose_value` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `indicator` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `indicator_value` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target_extraordinary` text DEFAULT NULL,
  `target_excellent` text DEFAULT NULL,
  `target_fine` text DEFAULT NULL,
  `target_value` text DEFAULT NULL,
  `target_below` text DEFAULT NULL,
  `margin` text DEFAULT NULL,
  `responsible` text DEFAULT NULL,
  `row_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `unique_form_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section_two_outcome`
--

CREATE TABLE `section_two_outcome` (
  `id` int(11) NOT NULL,
  `impact` text DEFAULT NULL,
  `indicator` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `achivement_star` text DEFAULT NULL,
  `target` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 32,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_two_outcome`
--

INSERT INTO `section_two_outcome` (`id`, `impact`, `indicator`, `unit`, `achivement_star`, `target`, `achivement`, `comments`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(16, 'ব্যাংকিং খাতে অন্তর্ভুক্তি বৃদ্ধি', 'প্রাপ্ত বয়স্ক জনগণের অংশগ্রহণের হার (ক্রমপুঞ্জিভুত)', '%', '৮১', '৮২', '২০%', 'বাংলাদেশ ব্যাংক', 'form_481859295', 1, 32, '2022-01-12 04:48:18', '2022-01-12 04:48:18'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_481859295', 1, 32, '2022-01-12 04:48:18', '2022-01-12 04:48:18'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_481859295', 1, 32, '2022-01-12 04:48:18', '2022-01-12 04:48:18'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_481859295', 1, 32, '2022-01-12 04:48:18', '2022-01-12 04:48:18'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_481859295', 1, 32, '2022-01-12 04:48:18', '2022-01-12 04:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `section_two_outcome_eight`
--

CREATE TABLE `section_two_outcome_eight` (
  `id` int(11) NOT NULL,
  `out_effect` text DEFAULT NULL,
  `out_indicator` text DEFAULT NULL,
  `out_unit` text DEFAULT NULL,
  `achivement` text DEFAULT NULL,
  `out_achivement` text DEFAULT NULL,
  `out_achivement_star` text DEFAULT NULL,
  `out_target` text DEFAULT NULL,
  `out_projection_one` text DEFAULT NULL,
  `out_projection_two` text DEFAULT NULL,
  `out_names` text DEFAULT NULL,
  `unique_form_id` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 31,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_two_outcome_eight`
--

INSERT INTO `section_two_outcome_eight` (`id`, `out_effect`, `out_indicator`, `out_unit`, `achivement`, `out_achivement`, `out_achivement_star`, `out_target`, `out_projection_one`, `out_projection_two`, `out_names`, `unique_form_id`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_573979527', 1, 31, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_105089730', 1, 31, NULL, NULL),
(11, 'armaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'form_01055552', 1, 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sgasegtas`
--

CREATE TABLE `sgasegtas` (
  `id` int(6) UNSIGNED NOT NULL,
  `sgagasgasg` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shadmaan`
--

CREATE TABLE `shadmaan` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `roll` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shadmaan`
--

INSERT INTO `shadmaan` (`id`, `table_name`, `name`, `roll`, `created_at`) VALUES
(1, 'shadmaan', '', '', '2022-05-18 09:45:01'),
(2, 'shadmaan', '', '', '2022-05-18 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shadman`
--

CREATE TABLE `shadman` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shadman`
--

INSERT INTO `shadman` (`id`, `table_name`, `name`, `role`, `subject`, `created_at`) VALUES
(450, NULL, 'vdcgucdbhcdbji', 'bhcdbhcbh', 'bchdbchb', '2022-04-19 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_national_integrity_trategy_action_plan`
--

CREATE TABLE `sub_national_integrity_trategy_action_plan` (
  `id` int(11) NOT NULL,
  `activities` longtext NOT NULL,
  `performance_index` text NOT NULL,
  `unit` text NOT NULL,
  `performance_index_values` text NOT NULL,
  `annual target` text NOT NULL,
  `acquisition1` text NOT NULL,
  `acquisition2` text NOT NULL,
  `acquisition3` text DEFAULT NULL,
  `branch_responsible_implementation` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `row_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablefdsgg`
--

CREATE TABLE `tablefdsgg` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_1_column` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_1_column_1` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_2`
--

CREATE TABLE `table_2` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_2_column_1` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_3`
--

CREATE TABLE `table_3` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_3_column3` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_8245`
--

CREATE TABLE `table_8245` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `দেশের_য়_খ্যান_সংস্থা_হিসাবে_কাজ` text DEFAULT NULL,
  `দেশের_য়_খ্যান_সং` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8245`
--

INSERT INTO `table_8245` (`id`, `created_by`, `table_name`, `দেশের_য়_খ্যান_সংস্থা_হিসাবে_কাজ`, `দেশের_য়_খ্যান_সং`, `created_at`) VALUES
(1, 111, 'table_8245', '', '', '2022-06-12 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_266730`
--

CREATE TABLE `table_266730` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_266730`
--

INSERT INTO `table_266730` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 126, 0, 'table_266730', '', '', '', '2022-07-24 18:00:00'),
(2, 126, 0, 'table_266730', '', '', '', '2022-07-24 18:00:00'),
(3, 235, 0, 'table_266730', '', '', '', '2022-07-24 18:00:00'),
(4, 235, 0, 'table_266730', '', '', '', '2022-07-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_281640`
--

CREATE TABLE `table_281640` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `gvghvh` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_281640`
--

INSERT INTO `table_281640` (`id`, `created_by`, `table_name`, `gvghvh`, `created_at`) VALUES
(1, 111, 'table_281640', '', '2022-06-12 07:00:00'),
(2, 111, 'table_281640', '', '2022-06-12 07:00:00'),
(3, 111, 'table_281640', '', '2022-06-12 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_596282`
--

CREATE TABLE `table_596282` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `Col_1` text DEFAULT NULL,
  `Col_2` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_596282`
--

INSERT INTO `table_596282` (`id`, `created_by`, `status`, `table_name`, `Col_1`, `Col_2`, `created_at`) VALUES
(1, 235, 0, 'table_596282', 'sgvsd', 'dsvsd', '2022-07-24 18:00:00'),
(2, 235, 0, 'table_596282', 'sdvs', 'sdf', '2022-07-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_816106`
--

CREATE TABLE `table_816106` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `teacher` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_816106`
--

INSERT INTO `table_816106` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `teacher`, `created_at`) VALUES
(1, 127, 0, 'table_816106', '1fafa52145', '1fa211fa2fa1', '1fa121af21fa21', '21fa21af21', '2022-07-03 18:00:00'),
(2, 127, 0, 'table_816106', '25000', '9000', '4000', '7000', '2022-07-03 18:00:00'),
(3, 127, 0, 'table_816106', '90000', '4555rfaf2a0fa', '5fa5fa1f541', '1f5aff45af4', '2022-07-03 18:00:00'),
(4, 127, 0, 'table_816106', '4f5af4fa5', 'f45a5fa45fa4', 'f4a5af45fa54', 'f545a4f45faaf5', '2022-07-03 18:00:00'),
(5, 128, 0, 'table_816106', '25000f', '5f5af5fa', '5fa5fa5fa', '6000', '2022-07-03 18:00:00'),
(6, 128, 0, 'table_816106', '50', '3232', NULL, NULL, '2022-07-03 18:00:00'),
(7, 128, 0, 'table_816106', NULL, '535335', '3535', '535353', '2022-07-03 18:00:00'),
(8, 128, 0, 'table_816106', '533553', '535353', NULL, '533553', '2022-07-03 18:00:00'),
(9, 129, 0, 'table_816106', 'faaf45', '5fa5af50', '000', '2000', '2022-07-03 18:00:00'),
(10, 129, 0, 'table_816106', 'faaffa', NULL, NULL, NULL, '2022-07-03 18:00:00'),
(11, 129, 0, 'table_816106', NULL, NULL, NULL, NULL, '2022-07-03 18:00:00'),
(12, 129, 0, 'table_816106', NULL, '550200', NULL, NULL, '2022-07-03 18:00:00'),
(13, 129, 0, 'table_816106', 'faafaf', NULL, 'affafa', NULL, '2022-07-03 18:00:00'),
(14, 129, 0, 'table_816106', 'faaf', NULL, 'fafa', NULL, '2022-07-03 18:00:00'),
(15, 129, 0, 'table_816106', NULL, NULL, NULL, '25000', '2022-07-03 18:00:00'),
(16, 129, 0, 'table_816106', 'affafa', 'fafafa', 'faafa', '0000', '2022-07-03 18:00:00'),
(17, 130, 0, 'table_816106', '4fa4faf5a', '5', '5f55faf5', '6f6fa6', '2022-07-03 18:00:00'),
(18, 130, 0, 'table_816106', '65f6af66', 'f66faf66', '6f6fafa5', NULL, '2022-07-03 18:00:00'),
(19, 130, 0, 'table_816106', '500', '920', '400', '5000', '2022-07-03 18:00:00'),
(20, 130, 0, 'table_816106', '558fa', '5af5fa5', 'ff0aa0f', 'f0a0af', '2022-07-03 18:00:00'),
(21, 130, 0, 'table_816106', '10f00f', '000', '2000', '11414af', '2022-07-03 18:00:00'),
(22, 123, 0, 'table_816106', '250', 'f22f2', '3ff3', 'f3a3f3', '2022-07-03 18:00:00'),
(23, 123, 0, 'table_816106', '32df3fa3f', 'f3f3a33', '3f3a3f', '33fa3', '2022-07-03 18:00:00'),
(24, 123, 0, 'table_816106', '3f3fa3', 'f3af3f3', 'f33af3', 'f3a3af3f', '2022-07-03 18:00:00'),
(25, 123, 0, 'table_816106', '3f3af3f', 'f3af3af3', 'f33af3fa', '3fad3f3af3a', '2022-07-03 18:00:00'),
(26, 126, 0, 'table_816106', '', '', '', '', '2022-07-04 18:00:00'),
(27, 128, 0, 'table_816106', '', '', '', '', '2022-07-05 18:00:00'),
(28, 160, 0, 'table_816106', '', '', '', '', '2022-07-12 18:00:00'),
(29, 160, 0, 'table_816106', '', '', '', '', '2022-07-12 18:00:00'),
(30, 160, 0, 'table_816106', '', '', '', '', '2022-07-13 18:00:00'),
(31, 160, 0, 'table_816106', '', '', '', '', '2022-07-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_1083210`
--

CREATE TABLE `table_1083210` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1083210`
--

INSERT INTO `table_1083210` (`id`, `table_name`, `name`, `roll`, `section`, `created_at`) VALUES
(1, 'table_1083210', 'bafhbfh', 'hfdhbdhf', 'hbfhdfbhfdb', '2022-06-07 04:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `table_1140467`
--

CREATE TABLE `table_1140467` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1140467`
--

INSERT INTO `table_1140467` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 237, 0, 'table_1140467', 'armaan', 'is', 'a', '2022-07-24 18:00:00'),
(2, 237, 0, 'table_1140467', 'good', 'boy', 'for', '2022-07-24 18:00:00'),
(3, 237, 0, 'table_1140467', 'ever', 'hello', 'bro', '2022-07-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_1216210`
--

CREATE TABLE `table_1216210` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `নাম` text DEFAULT NULL,
  `রোল` text DEFAULT NULL,
  `শাখা` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1216210`
--

INSERT INTO `table_1216210` (`id`, `created_by`, `status`, `table_name`, `নাম`, `রোল`, `শাখা`, `created_at`) VALUES
(3, 236, 0, 'table_1216210', '555454', '5fa5fa4', '45ff5a4fa5', '2022-07-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_1324392`
--

CREATE TABLE `table_1324392` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `ক্রমিক_নাম্বার` text DEFAULT NULL,
  `কার্র্যক্রম` text DEFAULT NULL,
  `কার্র্যক্রম_(২0১৬___17)` text DEFAULT NULL,
  `অর্র্জন` text DEFAULT NULL,
  `মন্তব্য` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1324392`
--

INSERT INTO `table_1324392` (`id`, `table_name`, `ক্রমিক_নাম্বার`, `কার্র্যক্রম`, `কার্র্যক্রম_(২0১৬___17)`, `অর্র্জন`, `মন্তব্য`, `created_at`) VALUES
(1, 'table_1324392', 'eysyuh', 'hdsh', 'hdshs', 'hdsh', 'dshhsh', '2022-06-07 05:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `table_1652396`
--

CREATE TABLE `table_1652396` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `a4ffa` text DEFAULT NULL,
  `qffqfqqf` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_1673371`
--

CREATE TABLE `table_1673371` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `কৌশলগত_বিষয়বস্তুর_ক্রমিক` text DEFAULT NULL,
  `কর্ম_পরিকল্পনার_ক্রমিক_নং` text DEFAULT NULL,
  `করণীয়_বিষয়` text DEFAULT NULL,
  `স্বল্প_মেয়াদী_(২০২১)` text DEFAULT NULL,
  `মধ্য_মেয়াদী_(২০৩০)` text DEFAULT NULL,
  `দীর্ঘ_মেয়াদী_(২০৪১)` text DEFAULT NULL,
  `গৃহিত_কার্যক্রম/পদক্ষেপ` text DEFAULT NULL,
  `কার্যক্রমের_বর্তমান_অবস্থা` text DEFAULT NULL,
  `অগ্রগতির_শতকরা_হার_(%)` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1673371`
--

INSERT INTO `table_1673371` (`id`, `created_by`, `table_name`, `কৌশলগত_বিষয়বস্তুর_ক্রমিক`, `কর্ম_পরিকল্পনার_ক্রমিক_নং`, `করণীয়_বিষয়`, `স্বল্প_মেয়াদী_(২০২১)`, `মধ্য_মেয়াদী_(২০৩০)`, `দীর্ঘ_মেয়াদী_(২০৪১)`, `গৃহিত_কার্যক্রম/পদক্ষেপ`, `কার্যক্রমের_বর্তমান_অবস্থা`, `অগ্রগতির_শতকরা_হার_(%)`, `created_at`) VALUES
(1, 110, 'table_1673371', '১.১', '১.১.১', 'সকল সরকারি সেবা যে কোনো স্থান হতেসহজে, স্বচ্ছভাবে, কম খরচে, কম সময়েডিজিটাল ডিভাইসের মাধ্যমে প্রাপ্তি নিশ্চিতকরণ।', '১০০%', 'igigig', 'igigig', '১. বাজারমধ্যস্থ্যতাকারীদেরকাছথেকেমাসিক/ত্রৈমাসিকভিত্তেতেপ্রতিবেদনসংগ্রহণেরলক্ষ্যে Online Report Submission Platform চালুকরণ;', 'বাজারমধ্যস্থ্যতাকারীবিভিন্নপ্রতিষ্ঠান (মার্চেন্টব্যাংকার, প্রাতিষ্ঠানিকব্রোকার, সম্পদব্যবস্থাপক, ক্রেডিটরেটিংকোম্পানিওসিকিউরিটিজকাস্টোডিয়ান) মাসিক/ত্রৈমাসিকপ্রতিবেদন  Online Report Submission Platform এরমাধ্যমেকমিশনেনিয়মিতদাখিলকরছেন।', '১০০%', '2022-06-14 07:00:00'),
(2, 110, 'table_1673371', NULL, NULL, NULL, 'ygiigi', 'igiggi', 'igigig', '২. পুঁজিবাজারে বিনিয়োগকারীদের অভিযোগ নিষ্পত্তির জন্য ‘Customer Complaint Address Module’ চালুকরণ;', 'পুঁজিবাজারে বিনিয়োগকারীদের অভিযোগ আইনানুগভাবেদ্রুততারসহিতনিষ্পত্তিরজন্যCustomer Complaint Address Module চালুকরাহয়েছে।অভিযোগদাখিলকারীরাঅভিযোগেরহালনাগাদতথ্যাদিঅনলাইনেরমাধ্যমেজানতেপারেন।', '১০০%', '2022-06-14 07:00:00'),
(3, 110, 'table_1673371', '২.৭', '২.৭.১', 'ডিজিটাল আর্থিক লেনদেনের মানদণ্ড এবং সেক্টর ভিত্তিক নিরাপত্তা নির্দেশিকা তৈরিকরণ।', '৮০%', '১০০%', '5000000000', 'কমিশনকর্তৃকনির্ধারিতবিভিন্নফিসহঅন্যান্যআর্থিকআদায়ডিজিটাললেনদেনের (বাংলাদেশব্যাংককর্তৃকপ্রণীতমানদন্ডঅনুসরণপূর্বক) মাধ্যমেসম্পন্নকরণ।', 'প্রযোজ্য ক্ষেত্রে ডিজিটাল আর্থিক লেনদেনের মানদণ্ড অনুসরণপূর্বক আর্থিক লেনদেন সম্পন্ন করা হয়।', '৮০%', '2022-06-14 07:00:00'),
(4, 110, 'table_1673371', 'adfgadfgb', 'dafbadf', 'dfbadfba', 'dfbadf', 'dfbadfb', 'dafbadf', 'dfbdfab', 'dafbadfb', 'dfbdafb', '2022-06-14 07:00:00'),
(5, 110, 'table_1673371', 'ygujygu', 'hbkgyh', 'gftjgyk', 'ghkgh', 'gvbjghjk', 'hjk', 'hbkhgk', 'gjkgh', 'gjkghkghky', '2022-06-14 07:00:00'),
(6, 109, 'table_1673371', 'gfyhtftyr', 'fbs', 'dfabdfb', 'dfbadfba', 'dfbadfb', 'dfbdafb', 'dfbdafbf', 'adfbfadb', 'adfbdafba', '2022-06-14 07:00:00'),
(7, 109, 'table_1673371', '2.700000', '55555', '60000', '66666', '66', '6', '6', NULL, 'aita amar chok', '2022-06-14 07:00:00'),
(8, 109, 'table_1673371', 'qr45q4rqr45', '5af54fa54', 'fa54af54', 'fa54fa54fa45', 'f4554fa54f', 'f455f4af45a', 'f54fa54af45', 'f45fa5445f', 'fa54fa54af', '2022-06-14 07:00:00'),
(9, 109, 'table_1673371', '5fa5af4f5', 'fa5f4afa54', 'f5a4fa54af4', 'fa54fa45fa54', 'fa54fa45af54', 'fa54af45f54', 'f54fa45fa45', 'fa45fa54fa4', 'fa54f4a4fa', '2022-06-14 07:00:00'),
(10, 109, 'table_1673371', '9000', '4000', '56000', '555', '0000', '545455', '666', '444', '666', '2022-06-14 07:00:00'),
(11, 101, 'table_1673371', 'sdfghjdf', 'ghjfghjk', 'fghjk', 'fghjk', 'fghjkfghj', 'fghjkfghj', 'kfghjkghj', 'gfhjkfghj', 'ghjkghjk', '2022-06-14 07:00:00'),
(12, 101, 'table_1673371', '50566', '6afaf5fa5f', 'kormo', '50000', '9000', '40000', '10000000', '200000', '60000', '2022-06-14 07:00:00'),
(13, 101, 'table_1673371', 'hello', 'bro', 'damn', 'close', '50000', '40000', '666', NULL, 'hello new form', '2022-06-14 07:00:00'),
(14, 101, 'table_1673371', '500000', '40000', '90000', '44fa44fafa4f', '4fa4fa4fa45', '5100000', 'kfakafk', 'fkkfakfak', 'fakkkfafa', '2022-06-14 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_1805111`
--

CREATE TABLE `table_1805111` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `ক্রমিক_নম্বর` text DEFAULT NULL,
  `সদ্ভসদ্ভ` text DEFAULT NULL,
  `ক্রমি` text DEFAULT NULL,
  `fafaf` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1805111`
--

INSERT INTO `table_1805111` (`id`, `table_name`, `ক্রমিক_নম্বর`, `সদ্ভসদ্ভ`, `ক্রমি`, `fafaf`, `created_at`) VALUES
(1, 'table_1805111', '', '', '', NULL, '2022-06-12 06:34:31'),
(2, 'table_1805111', '', '', '', '', '2022-06-12 06:34:36'),
(3, 'table_1805111', '', '', '', '', '2022-06-12 06:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2279013`
--

CREATE TABLE `table_2279013` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `famlflaf` text DEFAULT NULL,
  `ss` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2279013`
--

INSERT INTO `table_2279013` (`id`, `created_by`, `table_name`, `famlflaf`, `ss`, `created_at`) VALUES
(1, 111, 'table_2279013', '', '', '2022-06-13 07:00:00'),
(2, 111, 'table_2279013', '', '', '2022-06-13 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2300063`
--

CREATE TABLE `table_2300063` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `গ্যহধ` text DEFAULT NULL,
  `ফগ্নবফসদ` text DEFAULT NULL,
  `ফগ্নহ` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2300063`
--

INSERT INTO `table_2300063` (`id`, `created_by`, `table_name`, `গ্যহধ`, `ফগ্নবফসদ`, `ফগ্নহ`, `created_at`) VALUES
(1, 111, 'table_2300063', 'সদফ', 'সদস', 'দসদস', '2022-06-12 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2572295`
--

CREATE TABLE `table_2572295` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2572295`
--

INSERT INTO `table_2572295` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 126, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(2, 126, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(3, 126, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(4, 126, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(5, 207, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(6, 207, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(7, 207, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(8, 207, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00'),
(9, 207, 0, 'table_2572295', '', '', '', '2022-07-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2652689`
--

CREATE TABLE `table_2652689` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `cvbnm` text DEFAULT NULL,
  `qfqfqf` text DEFAULT NULL,
  `fqfqfq` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2652689`
--

INSERT INTO `table_2652689` (`id`, `created_by`, `table_name`, `cvbnm`, `qfqfqf`, `fqfqfq`, `created_at`) VALUES
(1, 111, 'table_2652689', 'shadmaan', NULL, NULL, '2022-06-13 07:00:00'),
(2, 111, 'table_2652689', NULL, NULL, NULL, '2022-06-13 07:00:00'),
(3, 111, 'table_2652689', NULL, NULL, NULL, '2022-06-13 07:00:00'),
(4, 115, 'table_2652689', 'fafa', 'ffafafa', 'afaafaf', '2022-06-13 07:00:00'),
(5, 115, 'table_2652689', 'jhfhsuhf', 'fjfaajfnj', 'jfnjn', '2022-06-13 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_2799467`
--

CREATE TABLE `table_2799467` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `নথির_ধরণ` text DEFAULT NULL,
  `হার্ড_নথির_সংখ্যা` text DEFAULT NULL,
  `ইনথিতে_নিষ` text DEFAULT NULL,
  `জাতীয়_তথ্য_ও` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2799467`
--

INSERT INTO `table_2799467` (`id`, `table_name`, `নথির_ধরণ`, `হার্ড_নথির_সংখ্যা`, `ইনথিতে_নিষ`, `জাতীয়_তথ্য_ও`, `created_at`) VALUES
(1, 'table_2799467', 'ফিক্সড।', '৬০%', '১০০&১০০', 'য়ামাদের', '2022-06-07 07:49:11'),
(2, 'table_2799467', '', '', '', '', '2022-06-12 04:24:26'),
(3, 'table_2799467', '', '', '', '', '2022-06-12 04:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `table_2806902`
--

CREATE TABLE `table_2806902` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `fafafa` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2806902`
--

INSERT INTO `table_2806902` (`id`, `table_name`, `fafafa`, `created_at`) VALUES
(1, 'table_2806902', '', '2022-06-07 06:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `table_2822830`
--

CREATE TABLE `table_2822830` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `dfvdsf` text DEFAULT NULL,
  `dfvbgsr` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2822830`
--

INSERT INTO `table_2822830` (`id`, `table_name`, `dfvdsf`, `dfvbgsr`, `created_at`) VALUES
(1, 'table_2822830', '', NULL, '2022-06-12 08:23:50'),
(2, 'table_2822830', '', '', '2022-06-12 08:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `table_2884511`
--

CREATE TABLE `table_2884511` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `দ্গগ্রতগ` text DEFAULT NULL,
  `দারফগভবার` text DEFAULT NULL,
  `রগবারত` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2884511`
--

INSERT INTO `table_2884511` (`id`, `created_by`, `table_name`, `দ্গগ্রতগ`, `দারফগভবার`, `রগবারত`, `created_at`) VALUES
(1, 111, 'table_2884511', 'jhjhhyjg', 'yht', 'ytt', '2022-06-13 07:00:00'),
(2, 111, 'table_2884511', 'ytyy', 'yt', 'y', '2022-06-13 07:00:00'),
(3, 111, 'table_2884511', 'sdzcvsd', 'avrea', 'earvre', '2022-06-13 07:00:00'),
(4, 108, 'table_2884511', '', '', '', '2022-06-13 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3244373`
--

CREATE TABLE `table_3244373` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `shahed` longtext DEFAULT NULL,
  `dhaam` text DEFAULT NULL,
  `thikana` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_3244373`
--

INSERT INTO `table_3244373` (`id`, `created_by`, `status`, `table_name`, `shahed`, `dhaam`, `thikana`, `created_at`) VALUES
(1, 129, 0, 'table_3244373', '565fa4f54af', '5fa5fa5af', NULL, '2022-06-29 18:00:00'),
(2, 129, 0, 'table_3244373', 'a5ff54', 'f45f4af54', '54fa54f5fa4', '2022-06-29 18:00:00'),
(3, 129, 0, 'table_3244373', '45f54fa45f', '54f54fa45fa', '45f54fa54', '2022-06-29 18:00:00'),
(4, 129, 0, 'table_3244373', '4f4fa545a', 'f4a5fa54f', '5f54af45fa', '2022-06-29 18:00:00'),
(5, 130, 0, 'table_3244373', '25000', '6000fafa21', 'af54fa5af4', '2022-06-29 18:00:00'),
(6, 130, 0, 'table_3244373', '0000', 'qfqffqf', '000', '2022-06-29 18:00:00'),
(7, 130, 0, 'table_3244373', '5000', '6000', 'fqfqq', '2022-06-29 18:00:00'),
(8, 123, 0, 'table_3244373', '54f5afaf54', '5f45fa4f5', '5fg4f54fa', '2022-06-29 18:00:00'),
(9, 123, 0, 'table_3244373', '54f54af45fa54', '54f45fa54af45fa', '5000', '2022-06-29 18:00:00'),
(10, 123, 0, 'table_3244373', NULL, '25000', '6000', '2022-06-29 18:00:00'),
(11, 123, 0, 'table_3244373', '9000', '4000', NULL, '2022-06-29 18:00:00'),
(12, 123, 0, 'table_3244373', '205000', '4fafa54aff', '14af1f1fa', '2022-06-29 18:00:00'),
(13, 126, 0, 'table_3244373', '', '', '', '2022-07-05 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3368740`
--

CREATE TABLE `table_3368740` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `log` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3368740`
--

INSERT INTO `table_3368740` (`id`, `created_by`, `status`, `table_name`, `name`, `roll`, `log`, `created_at`) VALUES
(1, 128, 0, 'table_3368740', '', '', '', '2022-07-16 18:00:00'),
(2, 128, 0, 'table_3368740', '', '', '', '2022-07-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3677541`
--

CREATE TABLE `table_3677541` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3677541`
--

INSERT INTO `table_3677541` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 130, 0, 'table_3677541', '5845f4a5', '45ffa4af54', '45a4fa5af', '2022-07-13 18:00:00'),
(2, 130, 0, 'table_3677541', '54fa5a4f5a', '54fa5fa4f54a', 'f4fa45fa4', '2022-07-13 18:00:00'),
(3, 130, 0, 'table_3677541', 'af5fa54fa5', 'f4a5fafa45', 'f54fa45f5a', '2022-07-13 18:00:00'),
(4, 130, 0, 'table_3677541', '5fa5fafa45', 'af54fa5fa4', 'f5fafa54fa45', '2022-07-13 18:00:00'),
(5, 160, 0, 'table_3677541', 'fa9fa6f6af6f6', '6f6fa6fa6', '6f6fa6f', '2022-07-13 18:00:00'),
(6, 160, 0, 'table_3677541', '2500000000', NULL, '5555', '2022-07-13 18:00:00'),
(7, 160, 0, 'table_3677541', '1000', '666fa6f6', '6ff6a6a', '2022-07-13 18:00:00'),
(8, 160, 0, 'table_3677541', '6f6fa6f6', 'f6fa6fa66', '6f6a66', '2022-07-13 18:00:00'),
(9, 160, 0, 'table_3677541', '6a6af6f', '455fa5ff', '50065jhufafmak', '2022-07-13 18:00:00'),
(10, 160, 0, 'table_3677541', '2555555555555555', 'fafafa', '5000925214', '2022-07-13 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3716619`
--

CREATE TABLE `table_3716619` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_3716619`
--

INSERT INTO `table_3716619` (`id`, `created_by`, `status`, `table_name`, `name`, `roll`, `section`, `position`, `created_at`) VALUES
(1, 130, 0, 'table_3716619', '1500f', 'ffa5af145', '5f5fa4fa', '45f5fa5f4', '2022-06-29 18:00:00'),
(2, 130, 0, 'table_3716619', '54af54af4a', NULL, NULL, NULL, '2022-06-29 18:00:00'),
(3, 130, 0, 'table_3716619', '250000', '60000', '90000', '4100000', '2022-06-29 18:00:00'),
(4, 130, 0, 'table_3716619', NULL, NULL, NULL, NULL, '2022-06-29 18:00:00'),
(5, 130, 0, 'table_3716619', NULL, NULL, NULL, NULL, '2022-06-29 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3794480`
--

CREATE TABLE `table_3794480` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `কৌশলগত_বিষয়বস্তুর_ক্রমিক` text DEFAULT NULL,
  `কর্ম_পরিকল্পনার_ক্রমিক_নং` text DEFAULT NULL,
  `করণীয়_বিষয়` text DEFAULT NULL,
  `স্বল্প_মেয়াদী_(২০২১)` text DEFAULT NULL,
  `মধ্য_মেয়াদী_(২০৩০)` text DEFAULT NULL,
  `দীর্ঘ_মেয়াদী_(২০৪১)` text DEFAULT NULL,
  `গৃহিত_কার্যক্রম` text DEFAULT NULL,
  `কার্যক্রমের_বর্তমান_অবস্থা` text DEFAULT NULL,
  `বাস্তবায়ন_অগ্রগতি_(%)` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3794480`
--

INSERT INTO `table_3794480` (`id`, `created_by`, `table_name`, `কৌশলগত_বিষয়বস্তুর_ক্রমিক`, `কর্ম_পরিকল্পনার_ক্রমিক_নং`, `করণীয়_বিষয়`, `স্বল্প_মেয়াদী_(২০২১)`, `মধ্য_মেয়াদী_(২০৩০)`, `দীর্ঘ_মেয়াদী_(২০৪১)`, `গৃহিত_কার্যক্রম`, `কার্যক্রমের_বর্তমান_অবস্থা`, `বাস্তবায়ন_অগ্রগতি_(%)`, `created_at`) VALUES
(1, 109, 'table_3794480', '১.১', '১.১.১', 'সেবা প্রাপ্তি', '৭০%', NULL, NULL, 'পল্লী সঞ্চয় ব্যাংক- কম্পিউটার বিতরণ, \r\n২)•	পিকেএসএফ-এর মাধ্যমে পরিচালিত কার্যক্রম সম্পর্কিত সকল তথ্যাদি অনলাইনে পাওয়ার জন্য ওয়েব পোর্টাল বাস্তবায়ন করা হয়েছে। ৩)•	ইলেকট্রনিক পদ্ধতিতে তথ্য আদান-প্রদানের জন্য ই-মেইল সিস্টেম বাস্তবায়ন করা হয়েছে। মোবাইল ব্যাংকিং ও কোর ব্যাংকিং সফটওয়্যার এর মাধ্যমে অনলাইন ব্যাংকিং সেবা প্রদান', 'ই-মেইল সিস্টেম, ওয়েব পোর্টাল, মোবাইল অ্যাপ, অনলাইন ডাটাবেজ ইত্যাদি সকল সেবা বাস্তবায়ন সম্পন্ন করা হয়েছে এবং এ সকল সেবা বর্তমানে চলমান রয়েছে।', '৯০%', '2022-06-13 07:00:00'),
(2, 109, 'table_3794480', '২.১', '২.১.২', 'ডিজিটাল সরকার কাঠামোর  সকল উদ্যোগের ডিজিটাল নিরাপত্তার মানদণ্ড নির্ধারণ ও তা বাস্তবায়নে সক্ষমতা উন্নয়ন।', 'চলমান থাকবে।', 'চলমান থাকবে।', 'চলমান থাকবে।', 'তথ্য ব্যবস্থাপনার আওতায় বাস্তবায়িত সিস্টেমসমূহের নিরাপত্তার মানদণ্ড নির্ধারণ ও তা বাস্তবায়নে জন্য পিকেএসএফ-এ আইসিটি পলিসি প্রণয়ন করা হয়েছে।', 'পিকেএসএফ-এর তথ্য ব্যবস্থাপনা সিস্টেম বাস্তবায়ন, পরিচালনা ও রক্ষণাবেক্ষণের ক্ষেত্রে আইসিটি পলিসি অনুসারন করা হচ্ছে যা চলমান থাকবে।', '১০০%', '2022-06-13 07:00:00'),
(3, 109, 'table_3794480', '১.১', '১.১.৭', 'ডিজিটাল-সরকার ব্যবস্থা বাস্তবায়নের ক্ষেত্রে সফটওয়্যার ও হার্ডওয়্যারের চাহিদা নিরূপণ, আর্থিক ক্রয় পরিকল্পনা তৈরি, সরবরাহ, সরবরাহ পরবর্তী সহায়তার ক্ষেত্রে নির্দিষ্ট মান ও নীতিমালা অনুসরণ।', 'চলমান থাকবে।', 'চলমান থাকবে।', 'চলমান থাকবে।', 'হার্ডওয়ার ও সফটওয়্যারের চাহিদা নিরূপণ ও ক্রয় পরিকল্পনায় নির্দিষ্ট মান ও নীতিমালা অনুসরণ করার কার্যক্রম ইতোমধ্যে আরম্ভ করা হয়েছে।', 'নির্দিষ্ট মান ও নীতিমালা অনুসরণ করে হার্ডওয়ার ও সফটওয়্যারের চাহিদা নিরূপণ ও ক্রয় পরিকল্পনা নিয়মিতভাবে তৈরী করা হচ্ছে যা চলমান থাকবে।', NULL, '2022-06-13 07:00:00'),
(4, 109, 'table_3794480', '১.৩', '১.৩.৫', 'রাষ্ট্রীয় সুরক্ষা ও সর্বোত্তম সেবা প্রাপ্তির জন্য তথ্যপ্রযু্ক্তি অবকাঠামোর গুরুত্বপূর্ণ স্থাপনা জাতীয় ডেটা সেন্টারভিত্তিক অ্যাপ্লিকেশান ও কন্টেন্ট হোস্টিং নিশ্চিতকরণ।', NULL, 'চলমান থাকবে।', 'চলমান থাকবে।', 'তথ্য নিরাপত্তা নিশ্চিতকরণসহ হার্ডওয়্যার সম্পর্কিত দূর্ঘটনা হতে তথ্য সুরক্ষার জন্য ডিজাস্টার রিকোভারী সাইট বাস্তবায়ন বিষয়ে সরকারীভাবে প্রতিষ্ঠিত হাইটেক পার্ক অথরিটির অনুমতি গ্রহণ করা হয়েছে। হাইটেক পার্ক-এ ডিজাস্টার রিকোভারী সাইট বাস্তবায়নের কার্যক্রম আরম্ভ করা হয়েছে।', 'নিরাপদ তথ্য সংরক্ষণ এবং হার্ডওয়্যার সমস্যার কারণে তথ্য ব্যবস্থাপনার সিস্টেমসমুহ পরিচালনা যাতে ব্যাহত না হয় সে জন্য ডিজাস্টার রিকোভারী সাইট বাস্তবায়নের কার্যক্রম ইতোমধ্যে আরম্ভ করা হয়েছে।', '৪০%', '2022-06-13 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3815937`
--

CREATE TABLE `table_3815937` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `year` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3815937`
--

INSERT INTO `table_3815937` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `year`, `created_at`) VALUES
(1, 238, 0, 'table_3815937', '2500', '6fa44fa5', 'f54a5af4f5', 'f54a54aff', '2022-07-25 18:00:00'),
(2, 240, 0, 'table_3815937', 'bafuhab', 'fbha', NULL, NULL, '2022-07-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_3913302`
--

CREATE TABLE `table_3913302` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `ddaarger` text DEFAULT NULL,
  `dfga` text DEFAULT NULL,
  `regeg` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_3926996`
--

CREATE TABLE `table_3926996` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fbhafb` text DEFAULT NULL,
  `faaffa` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_3926996`
--

INSERT INTO `table_3926996` (`id`, `created_by`, `status`, `table_name`, `fbhafb`, `faaffa`, `created_at`) VALUES
(1, 127, 0, 'table_3926996', '', '', '2022-07-06 18:00:00'),
(2, 127, 0, 'table_3926996', '', '', '2022-07-06 18:00:00'),
(3, 128, 0, 'table_3926996', '', '', '2022-07-16 18:00:00'),
(4, 128, 0, 'table_3926996', '', '', '2022-07-16 18:00:00'),
(5, 128, 0, 'table_3926996', '', '', '2022-07-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_4004346`
--

CREATE TABLE `table_4004346` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_4004346`
--

INSERT INTO `table_4004346` (`id`, `created_by`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 108, 'table_4004346', '120', '600', '4f5a4af45', '2022-06-13 07:00:00'),
(2, 108, 'table_4004346', '54a45fa54fa4', '54f54fa54a', 'f45a45af4f5', '2022-06-13 07:00:00'),
(3, 108, 'table_4004346', 'fa5445fa54', '54ffa454a5', 'f54a4554', '2022-06-13 07:00:00'),
(4, 108, 'table_4004346', 'af55fa4f54', '5fa45fa54fa', '1af1fa15af', '2022-06-13 07:00:00'),
(5, 126, 'table_4004346', '', '', '', '2022-07-16 18:00:00'),
(6, 126, 'table_4004346', '', '', '', '2022-07-16 18:00:00'),
(7, 126, 'table_4004346', '', '', '', '2022-07-16 18:00:00'),
(8, 126, 'table_4004346', '', '', '', '2022-07-16 18:00:00'),
(9, 126, 'table_4004346', '', '', '', '2022-07-17 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_4082188`
--

CREATE TABLE `table_4082188` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)` text DEFAULT NULL,
  `ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_4082188`
--

INSERT INTO `table_4082188` (`id`, `table_name`, `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)`, `ত্রৈমাসিক_(এপ্রিল_জুন,_২০২২)`, `created_at`) VALUES
(1, 'table_4082188', '', '', '2022-06-06 12:30:07'),
(2, 'table_4082188', '', '', '2022-06-06 07:00:00'),
(3, 'table_4082188', 'a', '', '2022-06-06 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_4302662`
--

CREATE TABLE `table_4302662` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `hfaaf` text DEFAULT NULL,
  `auifhufa` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_4302662`
--

INSERT INTO `table_4302662` (`id`, `table_name`, `hfaaf`, `auifhufa`, `created_at`) VALUES
(1, 'table_4302662', '', '', '2022-06-07 06:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `table_4310303`
--

CREATE TABLE `table_4310303` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `maffa` text DEFAULT NULL,
  `qffqfq` text DEFAULT NULL,
  `qfqff` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_4781902`
--

CREATE TABLE `table_4781902` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `faafaf` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_4837263`
--

CREATE TABLE `table_4837263` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `habavdh` text DEFAULT NULL,
  `qffqfqbfj` text DEFAULT NULL,
  `fqqfqf` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_4837263`
--

INSERT INTO `table_4837263` (`id`, `created_by`, `status`, `table_name`, `habavdh`, `qffqfqbfj`, `fqqfqf`, `created_at`) VALUES
(1, 207, 0, 'table_4837263', '', '', '', '2022-07-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_4908983`
--

CREATE TABLE `table_4908983` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `4fa4f` text DEFAULT NULL,
  `qffqfq` text DEFAULT NULL,
  `fqfq` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_4908983`
--

INSERT INTO `table_4908983` (`id`, `created_by`, `status`, `table_name`, `4fa4f`, `qffqfq`, `fqfq`, `created_at`) VALUES
(1, 128, 0, 'table_4908983', '', '', '', '2022-07-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_4989862`
--

CREATE TABLE `table_4989862` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `affmaifk` text DEFAULT NULL,
  `afew` text DEFAULT NULL,
  `wffwf` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_4989862`
--

INSERT INTO `table_4989862` (`id`, `created_by`, `status`, `table_name`, `affmaifk`, `afew`, `wffwf`, `created_at`) VALUES
(1, 130, 0, 'table_4989862', '4af54fa5', '54fa54fa45f', '54f45a54fa', '2022-06-28 18:00:00'),
(2, 130, 0, 'table_4989862', '54f54fa5', '54f54af45', '54f4a554af', '2022-06-28 18:00:00'),
(3, 130, 0, 'table_4989862', '54qf454qf', '5454f', NULL, '2022-06-28 18:00:00'),
(4, 130, 0, 'table_4989862', '550f20faa', '522f2fafa2', '5af55affa', '2022-06-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_5282148`
--

CREATE TABLE `table_5282148` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `NAME` text DEFAULT NULL,
  `ROLE` text DEFAULT NULL,
  `SECTION` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_5282148`
--

INSERT INTO `table_5282148` (`id`, `created_by`, `status`, `table_name`, `NAME`, `ROLE`, `SECTION`, `created_at`) VALUES
(1, 233, 0, 'table_5282148', 'armaan', 'faimfakfm', 'efq1fq51q1', '2022-07-24 18:00:00'),
(2, 233, 0, 'table_5282148', 'f41f45a5fa', '54f5afa54', 'f54fa54fa54', '2022-07-24 18:00:00'),
(3, 233, 0, 'table_5282148', 'f54a5f4fa5', 'f54fa54fa54', 'f545a44a5ff5a4a', '2022-07-24 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_5511014`
--

CREATE TABLE `table_5511014` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `where` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_5511014`
--

INSERT INTO `table_5511014` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `where`, `created_at`) VALUES
(1, 130, 0, 'table_5511014', '', '', '', '', '2022-07-02 18:00:00'),
(2, 130, 0, 'table_5511014', '', '', '', '', '2022-07-02 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_5982022`
--

CREATE TABLE `table_5982022` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `fafafaf` text DEFAULT NULL,
  `feafeffea` text DEFAULT NULL,
  `feaeffe` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_5982022`
--

INSERT INTO `table_5982022` (`id`, `table_name`, `fafafaf`, `feafeffea`, `feaeffe`, `created_at`) VALUES
(1, 'table_5982022', '', '', '', '2022-06-07 04:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `table_6185442`
--

CREATE TABLE `table_6185442` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `Col_1` text DEFAULT NULL,
  `Col_2` text DEFAULT NULL,
  `Col_3` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6185442`
--

INSERT INTO `table_6185442` (`id`, `created_by`, `status`, `table_name`, `Col_1`, `Col_2`, `Col_3`, `created_at`) VALUES
(1, 172, 0, 'table_6185442', '1254dfbadfb', 'nsnsfn', 'nar', '2022-07-16 18:00:00'),
(2, 172, 0, 'table_6185442', 'bnsnbs', 'ssgngn', 'nrtgrsanrtn', '2022-07-16 18:00:00'),
(3, 172, 0, 'table_6185442', 'fgngnnfgn', 'nbsn', 'tgrnjrtghnrtg', '2022-07-16 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6453252`
--

CREATE TABLE `table_6453252` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6453252`
--

INSERT INTO `table_6453252` (`id`, `created_by`, `status`, `table_name`, `name`, `section`, `created_at`) VALUES
(1, 181, 0, 'table_6453252', 'faaf4fa5fa4', '54faf4af54', '2022-07-16 18:00:00'),
(2, 181, 0, 'table_6453252', 'fa45fa4', 'f54fa5f4', '2022-07-16 18:00:00'),
(3, 181, 0, 'table_6453252', 'a5f4af54af', '5fa5af4fafa4', '2022-07-16 18:00:00'),
(4, 184, 0, 'table_6453252', '', '', '2022-07-17 18:00:00'),
(5, 184, 0, 'table_6453252', '', '', '2022-07-17 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6525817`
--

CREATE TABLE `table_6525817` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6525817`
--

INSERT INTO `table_6525817` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 223, 0, 'table_6525817', '250', '605555', '4afaf5', '2022-07-23 18:00:00'),
(2, 223, 0, 'table_6525817', 'f5a4f5a4f', '54af5fa45fa', 'f5afa54af5fa', '2022-07-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6635675`
--

CREATE TABLE `table_6635675` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `sectio` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_6635675`
--

INSERT INTO `table_6635675` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `sectio`, `created_at`) VALUES
(1, 130, 0, 'table_6635675', '', '', '', '2022-06-28 18:00:00'),
(2, 130, 0, 'table_6635675', '', '', '', '2022-06-28 18:00:00'),
(3, 130, 0, 'table_6635675', '', '', '', '2022-06-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6870805`
--

CREATE TABLE `table_6870805` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `nfjnaf` text DEFAULT NULL,
  `qfqffq` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6870805`
--

INSERT INTO `table_6870805` (`id`, `table_name`, `nfjnaf`, `qfqffq`, `created_at`) VALUES
(1, 'table_6870805', '', '', '2022-06-07 06:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `table_6901854`
--

CREATE TABLE `table_6901854` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `naam` longtext DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_6901854`
--

INSERT INTO `table_6901854` (`id`, `created_by`, `status`, `table_name`, `naam`, `role`, `section`, `created_at`) VALUES
(1, 207, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00'),
(2, 207, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00'),
(3, 207, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00'),
(4, 222, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00'),
(5, 222, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00'),
(6, 222, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00'),
(7, 223, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00'),
(8, 223, 0, 'table_6901854', '', '', '', '2022-07-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_6954026`
--

CREATE TABLE `table_6954026` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `hahaha` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_6954026`
--

INSERT INTO `table_6954026` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `hahaha`, `created_at`) VALUES
(1, 129, 0, 'table_6954026', '5fa5fa', '5f45fa4', '5f454f5', '5af5f5', '2022-06-28 18:00:00'),
(2, 129, 0, 'table_6954026', '5f5fa5fa5', '5f5aff5', 'f55afa5', '666000', '2022-06-28 18:00:00'),
(3, 129, 0, 'table_6954026', '6ffa6', 'f66faf0', '00055', '40000', '2022-06-28 18:00:00'),
(4, 130, 0, 'table_6954026', '4500', '9000', '4522', 'af5f', '2022-06-28 18:00:00'),
(5, 130, 0, 'table_6954026', 'feffe', 'fefef', 'efefeff', 'effeefeffe', '2022-06-28 18:00:00'),
(6, 130, 0, 'table_6954026', 'fefefe', 'feefe', 'feeffe', 'fefeefeffe', '2022-06-28 18:00:00'),
(7, 130, 0, 'table_6954026', '5555', '555', NULL, 'e', '2022-06-28 18:00:00'),
(8, 130, 0, 'table_6954026', NULL, NULL, NULL, 'faaffe', '2022-06-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7115464`
--

CREATE TABLE `table_7115464` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `bfhbf` text DEFAULT NULL,
  `bhfbhaf` text DEFAULT NULL,
  `bhfbfhf` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7115464`
--

INSERT INTO `table_7115464` (`id`, `table_name`, `bfhbf`, `bhfbhaf`, `bhfbfhf`, `created_at`) VALUES
(1, 'table_7115464', '', 'fdfd', 'fggf', '2022-06-07 04:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7216900`
--

CREATE TABLE `table_7216900` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `amrn` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `forms` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_7504978`
--

CREATE TABLE `table_7504978` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `kirokom` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7504978`
--

INSERT INTO `table_7504978` (`id`, `table_name`, `name`, `role`, `section`, `kirokom`, `created_at`) VALUES
(1, 'table_7504978', 'fa45fa', '5faf5', '4fa5f4', NULL, '2022-06-12 04:20:01'),
(2, 'table_7504978', 'f5aaffa5f5a', '5000', '9000', '40000', '2022-06-12 04:20:16'),
(3, 'table_7504978', '', '', '', '', '2022-06-12 04:20:43'),
(4, 'table_7504978', '', '', '', '', '2022-06-12 04:22:46'),
(5, 'table_7504978', '', '', '', '', '2022-06-12 04:23:32'),
(6, 'table_7504978', 'ফগভ্যতফদত্রদ', '', '', '', '2022-06-12 07:00:00'),
(7, 'table_7504978', 'ফগভ্যতফদত্রদsfasf', 'ফগভ্যতফfaafদত্রদ', 'fafa', '', '2022-06-12 07:00:00'),
(8, 'table_7504978', 'rfere', 'efef', 'fefefe', 'fefefe', '2022-06-12 07:00:00'),
(9, 'table_7504978', '', '', '', '', '2022-06-12 07:00:00'),
(10, 'table_7504978', '', '', '', '', '2022-06-12 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7506460`
--

CREATE TABLE `table_7506460` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `bhfabhfbfah` text DEFAULT NULL,
  `fefefe` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7506460`
--

INSERT INTO `table_7506460` (`id`, `created_by`, `table_name`, `bhfabhfbfah`, `fefefe`, `created_at`) VALUES
(1, 111, 'table_7506460', '', '', '2022-06-12 07:00:00'),
(2, 111, 'table_7506460', '', '', '2022-06-12 07:00:00'),
(3, 111, 'table_7506460', '', '', '2022-06-12 07:00:00'),
(4, 111, 'table_7506460', '', '', '2022-06-12 07:00:00'),
(5, 111, 'table_7506460', 'ফগভ', 'ফগভ ফগভ', '2022-06-12 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7534784`
--

CREATE TABLE `table_7534784` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `affefae` text DEFAULT NULL,
  `qffqfq` text DEFAULT NULL,
  `cagcdjnacj` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7534784`
--

INSERT INTO `table_7534784` (`id`, `table_name`, `affefae`, `qffqfq`, `cagcdjnacj`, `created_at`) VALUES
(1, 'table_7534784', 'hello', 'world', 'damnnn', '2022-06-07 05:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `table_7752558`
--

CREATE TABLE `table_7752558` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7752558`
--

INSERT INTO `table_7752558` (`id`, `created_by`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 111, 'table_7752558', 'মুসলমানের অপরিহার্য দায়িত্ব', NULL, NULL, '2022-06-12 07:00:00'),
(2, 111, 'table_7752558', NULL, NULL, NULL, '2022-06-12 07:00:00'),
(3, 111, 'table_7752558', 'দফগদফ', '', '', '2022-06-12 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7861982`
--

CREATE TABLE `table_7861982` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7861982`
--

INSERT INTO `table_7861982` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 126, 0, 'table_7861982', '', '', '', '2022-07-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_7967981`
--

CREATE TABLE `table_7967981` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `affafa` text DEFAULT NULL,
  `fafafa` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_7967981`
--

INSERT INTO `table_7967981` (`id`, `table_name`, `affafa`, `fafafa`, `created_at`) VALUES
(1, 'table_7967981', '', '', '2022-06-07 06:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `table_8011941`
--

CREATE TABLE `table_8011941` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8011941`
--

INSERT INTO `table_8011941` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 207, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(2, 207, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(3, 207, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(4, 207, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(5, 207, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(6, 207, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(7, 222, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(8, 222, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(9, 222, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00'),
(10, 222, 0, 'table_8011941', '', '', '', '2022-07-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8044872`
--

CREATE TABLE `table_8044872` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8044872`
--

INSERT INTO `table_8044872` (`id`, `created_by`, `status`, `table_name`, `name`, `roll`, `created_at`) VALUES
(1, 185, 0, 'table_8044872', 'faf4a4f', '545faf54', '2022-07-17 18:00:00'),
(2, 185, 0, 'table_8044872', '0000', '0665', '2022-07-17 18:00:00'),
(3, 185, 0, 'table_8044872', 'f45a5f4', 'fa54af45f', '2022-07-17 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_8162286`
--

CREATE TABLE `table_8162286` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8162286`
--

INSERT INTO `table_8162286` (`id`, `table_name`, `name`, `role`, `section`, `created_at`) VALUES
(1, 'table_8162286', 'fgtgvghhghtdstgh', 'affaf', 'affafa', '2022-06-09 11:49:25'),
(2, 'table_8162286', 'fafafa', 'aff5gfrgg', 'affafa', '2022-06-09 11:49:29'),
(3, 'table_8162286', 'faffafr5353535', 'fafafa', 'affafa#$5fs', '2022-06-09 11:49:33'),
(4, 'table_8162286', 'fafafa', 'fafa', 'fafa^^^', '2022-06-09 11:49:37'),
(5, 'table_8162286', 'fafafafafafafa', 'fafa', 'faaffa', '2022-06-09 11:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `table_8164227`
--

CREATE TABLE `table_8164227` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `roll` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_8247267`
--

CREATE TABLE `table_8247267` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_8247267`
--

INSERT INTO `table_8247267` (`id`, `created_by`, `status`, `table_name`, `name`, `role`, `created_at`) VALUES
(1, 126, 0, 'table_8247267', 'fahyfahj', 'njfnjf', '2022-07-03 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_9024346`
--

CREATE TABLE `table_9024346` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `fafeafe` text DEFAULT NULL,
  `faaffa` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_9024346`
--

INSERT INTO `table_9024346` (`id`, `table_name`, `fafeafe`, `faaffa`, `created_at`) VALUES
(1, 'table_9024346', '', '', '2022-06-07 06:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `table_9281856`
--

CREATE TABLE `table_9281856` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `name_of_the_column` text DEFAULT NULL,
  `description_of_the_column` text DEFAULT NULL,
  `section_of_the_form` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `table_9281856`
--

INSERT INTO `table_9281856` (`id`, `created_by`, `status`, `table_name`, `name_of_the_column`, `description_of_the_column`, `section_of_the_form`, `created_at`) VALUES
(1, 236, 0, 'table_9281856', 'armaan', '20000', '955555', '2022-07-25 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_9452695`
--

CREATE TABLE `table_9452695` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `dfxvr` text DEFAULT NULL,
  `dfvae` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_9488859`
--

CREATE TABLE `table_9488859` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `54f5fa54fa45` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_9488859`
--

INSERT INTO `table_9488859` (`id`, `created_by`, `status`, `table_name`, `54f5fa54fa45`, `created_at`) VALUES
(1, 128, 0, 'table_9488859', '', '2022-07-03 18:00:00'),
(2, 128, 0, 'table_9488859', '', '2022-07-03 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_9896359`
--

CREATE TABLE `table_9896359` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `table_name` varchar(250) DEFAULT NULL,
  `fmnjfnfa` text DEFAULT NULL,
  `fqefee` text DEFAULT NULL,
  `fqqfqf` text DEFAULT NULL,
  `fqfqfq` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_name`
--

CREATE TABLE `table_name` (
  `id` int(6) UNSIGNED NOT NULL,
  `email` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_name_of`
--

CREATE TABLE `table_name_of` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name_of` varchar(30) NOT NULL,
  `table_name_of_f` varchar(30) NOT NULL,
  `table_name_of_h` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_one`
--

CREATE TABLE `table_one` (
  `id` int(6) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `column_one` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tewyweywey`
--

CREATE TABLE `tewyweywey` (
  `id` int(6) UNSIGNED NOT NULL,
  `tegywywey` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `total_management_development_costs`
--

CREATE TABLE `total_management_development_costs` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `years` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) NOT NULL DEFAULT 12,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `total_management_development_costs`
--

INSERT INTO `total_management_development_costs` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `years`, `status`, `form_id`, `created_at`, `updated_at`) VALUES
(10, 'আর্থিক প্রতিষ্ঠান বিভাগ', '২৫৫৯৪৭০০', 'লক্ষ্যমাত্রা', '৩৪৫২৬৯৯', '৬৪৪৭৬৩৪', '৭৭৬০৭৫৫', '৭৯৩৩৬১২', '২৫৫৯৪৭০০', 'form_143130351', '2021', 1, 12, '2022-01-02 08:14:31', '2022-01-02 08:14:31'),
(11, 'আর্থিক প্রতিষ্ঠান বিভাগ', '২৫৫৯৪৭০০', 'লক্ষ্যমাত্রা', '10', '৬৪৪৭৬৩৪', '৭৭৬০৭৫৫', '৭৯৩৩৬১২', '২৫৫৯৪৭০০', 'form_144056871', '২০২২-২৩', 1, 12, '2022-01-02 08:14:40', '2022-01-02 08:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `total_management_development_costs_sub_rows`
--

CREATE TABLE `total_management_development_costs_sub_rows` (
  `id` int(11) NOT NULL,
  `activities` text DEFAULT NULL,
  `budget` text DEFAULT NULL,
  `target_expense` text DEFAULT NULL,
  `first_quarter` text DEFAULT NULL,
  `second_quarter` text DEFAULT NULL,
  `third_quarter` text DEFAULT NULL,
  `fourth_quarter` text DEFAULT NULL,
  `first_to_fourth_quarter` text DEFAULT NULL,
  `unique_form_id` text NOT NULL,
  `years` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `form_id` int(11) DEFAULT 12,
  `row_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `total_management_development_costs_sub_rows`
--

INSERT INTO `total_management_development_costs_sub_rows` (`id`, `activities`, `budget`, `target_expense`, `first_quarter`, `second_quarter`, `third_quarter`, `fourth_quarter`, `first_to_fourth_quarter`, `unique_form_id`, `years`, `status`, `form_id`, `row_id`, `created_at`, `updated_at`) VALUES
(15, NULL, NULL, 'প্রকৃত ব্যয়', '২০১৭১৯৭', '০', '০', '০', '২০১৭১৯৭', 'form_143130351', '2021', 1, 12, 10, '2022-01-02 08:14:31', '2022-01-02 08:14:31'),
(16, NULL, NULL, 'শতকরা হার', '৫৮%', '০%', '০%', '০%', '৮%', 'form_143130351', '2021', 1, 12, 10, '2022-01-02 08:14:31', '2022-01-02 08:14:31'),
(17, NULL, NULL, 'প্রকৃত ব্যয়', '২০১৭১৯৭', '০', '০', '০', '২০১৭১৯৭', 'form_144056871', NULL, 1, 12, 11, '2022-01-02 08:14:40', '2022-01-02 09:12:16'),
(18, NULL, NULL, 'শতকরা হার', '৫৮%', '০%', '০%', '০%', '৮%', 'form_144056871', NULL, 1, 12, 11, '2022-01-02 08:14:40', '2022-01-02 09:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `unit_offices`
--

CREATE TABLE `unit_offices` (
  `id` int(11) NOT NULL,
  `parent_id` text DEFAULT NULL,
  `institution_id` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit_offices`
--

INSERT INTO `unit_offices` (`id`, `parent_id`, `institution_id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(5, NULL, NULL, 'মতিঝিল শাখা', NULL, 1, 'মতিঝিল শাখা', '2022-07-18 10:12:17', '2022-07-18 10:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_creator` int(11) DEFAULT NULL,
  `ministry_department` int(255) DEFAULT NULL,
  `organization_user` int(255) DEFAULT NULL,
  `regulatory_authority` int(255) DEFAULT NULL,
  `branch_user` int(255) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_category` int(11) DEFAULT NULL,
  `signature` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `status` tinyint(7) NOT NULL DEFAULT 0 COMMENT '1 active 0 inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `designation`, `description`, `slug`, `image`, `institution_id`, `email_verified_at`, `password`, `role`, `user_creator`, `ministry_department`, `organization_user`, `regulatory_authority`, `branch_user`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `user_type`, `user_category`, `signature`, `division`, `status`) VALUES
(126, 'fid', 'FID', 'ministry@gmail.com', '35', NULL, 'Ministry', '1658564300.png', NULL, NULL, '$2y$10$x0d8lBapSmUgaOoN3ctxXOAZYpckx3MUFf6nYGQwFz.y8xGp.0ecC', '1', 111, NULL, NULL, NULL, NULL, NULL, '2022-06-28 04:19:02', '2022-07-23 08:26:32', '01401033445', 'dhaka', 'AUTHORIZE_USER', 1, '1658564183.png', 64, 1),
(235, 'মোঃ-আশরাফুল-ইসলাম456646', 'মোঃ আশরাফুল ইসলাম', 'user@gmail.com', '74', NULL, 'মোঃ-আশরাফুল-ইসলাম', '1658726987.jpg', NULL, NULL, '$2y$10$L1B6fgVfOS/jWUvvulijROdCCqyFzdt4lM2tPvQKHU3QK56iq.q0m', '11', 126, 14, NULL, NULL, NULL, NULL, '2022-07-25 05:28:03', '2022-07-25 05:29:47', '01765469413', NULL, 'AUTHORIZE_USER', 2, '1658726987.png', NULL, 1),
(236, 'মোঃ-আসিফ-মাহবুব551521', 'মোঃ আসিফ মাহবুব', 'user1@gmail.com', '95', NULL, 'মোঃ-আসিফ-মাহবুব', '1658727191.jpg', NULL, NULL, '$2y$10$jPdz9rUIJYm1bOgB26DUsOTXwmX2eqPNHn9s3OVtsMsyQXKS6mpmW', '11', 235, 14, NULL, NULL, NULL, NULL, '2022-07-25 05:31:14', '2022-07-25 05:33:11', '01978995624', NULL, 'ENTRY_USER', 2, '1658727191.png', NULL, 1),
(237, 'মোঃ-কামরুল-ইসলাম400753', 'মোঃ কামরুল ইসলাম', 'user2@gmail.com', '89', NULL, 'মোঃ-কামরুল-ইসলাম', '1658741305.jpg', NULL, NULL, '$2y$10$wW83yXJR0qlGwpM2RsGd3elJSUaBo1hMxpz28uOmdM4QCm37Ra/ja', '12', 235, NULL, NULL, 7, NULL, NULL, '2022-07-25 05:38:16', '2022-07-25 09:28:25', '01987464562', NULL, 'AUTHORIZE_USER', 3, '1658741305.png', NULL, 1),
(238, 'nahid577266', 'nahid', 'kak@gmail.com', '84', NULL, 'nahid', '1658737041.jpg', NULL, NULL, '$2y$10$aZOqz3xyUDrA/zdozhKXuehRMcsNpTEbv4MUfrtbkctDrI9/092cS', '12', 237, NULL, NULL, 7, NULL, NULL, '2022-07-25 08:12:40', '2022-07-25 09:57:58', '01401033443', NULL, 'ENTRY_USER', 3, '1658743078.png', NULL, 1),
(239, 'Akaash154616', 'Akaash', 'akash@gmail.com', '85', NULL, 'Akaash', '1658835520.bin', 12, NULL, '$2y$10$nxfwtyQTa7VVS53ynn.9g.eAO9sQLAtTYOf66t/f5xIpKx2sM6x7W', '13', 237, NULL, NULL, NULL, NULL, NULL, '2022-07-26 11:35:04', '2022-07-26 11:38:40', '01720947567', NULL, 'AUTHORIZE_USER', 4, '1658835520.jpg', NULL, 1),
(240, 'mintu-ahmed460625', 'mintu ahmed', 'mintu@gmail.com', '69', NULL, 'mintu-ahmed', '1658835870.jpg', 12, NULL, '$2y$10$h8uRahFkgFpi1cOKj3Ss4.F0gtHIJ9YyTlDEA1JEW1yIp0ERrB1w6', '13', 239, NULL, NULL, NULL, NULL, NULL, '2022-07-26 11:40:58', '2022-07-26 11:44:30', '01957026831', NULL, 'ENTRY_USER', 4, '1658835870.png', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_permissions`
--

INSERT INTO `users_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(126, 1, NULL, NULL),
(126, 2, NULL, NULL),
(126, 3, NULL, NULL),
(126, 4, NULL, NULL),
(126, 9, NULL, NULL),
(126, 10, NULL, NULL),
(126, 11, NULL, NULL),
(126, 12, NULL, NULL),
(126, 13, NULL, NULL),
(126, 14, NULL, NULL),
(126, 15, NULL, NULL),
(126, 16, NULL, NULL),
(126, 21, NULL, NULL),
(126, 22, NULL, NULL),
(126, 23, NULL, NULL),
(126, 24, NULL, NULL),
(126, 25, NULL, NULL),
(126, 26, NULL, NULL),
(235, 1, NULL, NULL),
(235, 2, NULL, NULL),
(235, 3, NULL, NULL),
(235, 4, NULL, NULL),
(235, 9, NULL, NULL),
(235, 10, NULL, NULL),
(235, 11, NULL, NULL),
(235, 12, NULL, NULL),
(235, 13, NULL, NULL),
(235, 14, NULL, NULL),
(235, 15, NULL, NULL),
(235, 16, NULL, NULL),
(235, 21, NULL, NULL),
(235, 22, NULL, NULL),
(235, 23, NULL, NULL),
(235, 24, NULL, NULL),
(235, 25, NULL, NULL),
(235, 26, NULL, NULL),
(235, 27, NULL, NULL),
(235, 28, NULL, NULL),
(235, 29, NULL, NULL),
(235, 30, NULL, NULL),
(235, 31, NULL, NULL),
(235, 32, NULL, NULL),
(236, 1, NULL, NULL),
(236, 2, NULL, NULL),
(236, 3, NULL, NULL),
(236, 4, NULL, NULL),
(236, 9, NULL, NULL),
(236, 10, NULL, NULL),
(236, 11, NULL, NULL),
(236, 12, NULL, NULL),
(236, 13, NULL, NULL),
(236, 14, NULL, NULL),
(236, 15, NULL, NULL),
(236, 16, NULL, NULL),
(236, 21, NULL, NULL),
(236, 22, NULL, NULL),
(236, 23, NULL, NULL),
(236, 24, NULL, NULL),
(236, 25, NULL, NULL),
(236, 26, NULL, NULL),
(236, 27, NULL, NULL),
(236, 28, NULL, NULL),
(236, 29, NULL, NULL),
(236, 30, NULL, NULL),
(236, 31, NULL, NULL),
(236, 32, NULL, NULL),
(237, 1, NULL, NULL),
(237, 2, NULL, NULL),
(237, 3, NULL, NULL),
(237, 4, NULL, NULL),
(237, 9, NULL, NULL),
(237, 10, NULL, NULL),
(237, 11, NULL, NULL),
(237, 12, NULL, NULL),
(237, 13, NULL, NULL),
(237, 14, NULL, NULL),
(237, 15, NULL, NULL),
(237, 16, NULL, NULL),
(237, 21, NULL, NULL),
(237, 22, NULL, NULL),
(237, 23, NULL, NULL),
(237, 24, NULL, NULL),
(237, 25, NULL, NULL),
(237, 26, NULL, NULL),
(237, 27, NULL, NULL),
(237, 28, NULL, NULL),
(237, 29, NULL, NULL),
(237, 30, NULL, NULL),
(237, 31, NULL, NULL),
(237, 32, NULL, NULL),
(238, 1, NULL, NULL),
(238, 2, NULL, NULL),
(238, 3, NULL, NULL),
(238, 4, NULL, NULL),
(238, 9, NULL, NULL),
(238, 10, NULL, NULL),
(238, 11, NULL, NULL),
(238, 12, NULL, NULL),
(238, 13, NULL, NULL),
(238, 14, NULL, NULL),
(238, 15, NULL, NULL),
(238, 16, NULL, NULL),
(238, 21, NULL, NULL),
(238, 22, NULL, NULL),
(238, 23, NULL, NULL),
(238, 24, NULL, NULL),
(238, 25, NULL, NULL),
(238, 26, NULL, NULL),
(238, 27, NULL, NULL),
(238, 28, NULL, NULL),
(238, 29, NULL, NULL),
(238, 30, NULL, NULL),
(238, 31, NULL, NULL),
(238, 32, NULL, NULL),
(239, 1, NULL, NULL),
(239, 2, NULL, NULL),
(239, 3, NULL, NULL),
(239, 4, NULL, NULL),
(239, 9, NULL, NULL),
(239, 10, NULL, NULL),
(239, 11, NULL, NULL),
(239, 12, NULL, NULL),
(239, 13, NULL, NULL),
(239, 14, NULL, NULL),
(239, 15, NULL, NULL),
(239, 16, NULL, NULL),
(239, 21, NULL, NULL),
(239, 22, NULL, NULL),
(239, 23, NULL, NULL),
(239, 24, NULL, NULL),
(239, 25, NULL, NULL),
(239, 26, NULL, NULL),
(239, 27, NULL, NULL),
(239, 28, NULL, NULL),
(239, 29, NULL, NULL),
(239, 30, NULL, NULL),
(239, 31, NULL, NULL),
(239, 32, NULL, NULL),
(240, 1, NULL, NULL),
(240, 2, NULL, NULL),
(240, 3, NULL, NULL),
(240, 4, NULL, NULL),
(240, 9, NULL, NULL),
(240, 10, NULL, NULL),
(240, 11, NULL, NULL),
(240, 12, NULL, NULL),
(240, 13, NULL, NULL),
(240, 14, NULL, NULL),
(240, 15, NULL, NULL),
(240, 16, NULL, NULL),
(240, 21, NULL, NULL),
(240, 22, NULL, NULL),
(240, 23, NULL, NULL),
(240, 24, NULL, NULL),
(240, 25, NULL, NULL),
(240, 26, NULL, NULL),
(240, 27, NULL, NULL),
(240, 28, NULL, NULL),
(240, 29, NULL, NULL),
(240, 30, NULL, NULL),
(240, 31, NULL, NULL),
(240, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(126, 1),
(235, 11),
(236, 11),
(237, 12),
(238, 12),
(239, 13),
(240, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user_departments`
--

CREATE TABLE `user_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_departments`
--

INSERT INTO `user_departments` (`id`, `user_id`, `department_id`, `created_at`, `updated_at`) VALUES
(152, 180, 55, '2022-07-17 17:24:20', '2022-07-17 17:24:20'),
(153, 180, 56, '2022-07-17 17:24:20', '2022-07-17 17:24:20'),
(154, 181, 58, '2022-07-17 17:26:17', '2022-07-17 17:26:17'),
(155, 181, 59, '2022-07-17 17:26:17', '2022-07-17 17:26:17'),
(156, 182, 58, '2022-07-17 17:35:00', '2022-07-17 17:35:00'),
(157, 183, 59, '2022-07-17 17:36:48', '2022-07-17 17:36:48'),
(158, 184, 54, '2022-07-18 05:09:00', '2022-07-18 05:09:00'),
(159, 184, 55, '2022-07-18 05:09:00', '2022-07-18 05:09:00'),
(160, 185, 57, '2022-07-18 05:26:31', '2022-07-18 05:26:31'),
(161, 186, 58, '2022-07-18 05:33:43', '2022-07-18 05:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_forms`
--

CREATE TABLE `user_forms` (
  `id` int(11) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `reciever_user_id` int(11) DEFAULT NULL,
  `sender_institution_id` int(11) DEFAULT NULL,
  `reciever_institution_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `form_id` tinyint(7) NOT NULL DEFAULT 1,
  `sub_form_id` int(11) DEFAULT NULL,
  `sub_form_id_unique_id` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `duration` varchar(50) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `send_date` varchar(50) NOT NULL DEFAULT '2022-02-02',
  `method` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_forms`
--

INSERT INTO `user_forms` (`id`, `sender_user_id`, `reciever_user_id`, `sender_institution_id`, `reciever_institution_id`, `group_id`, `form_id`, `sub_form_id`, `sub_form_id_unique_id`, `status`, `duration`, `type`, `send_date`, `method`, `created_at`, `updated_at`) VALUES
(327, 223, 230, 12, 12, NULL, 9, 184, NULL, 1, '2022-08-27', NULL, '2022-02-02', NULL, '2022-07-24 04:23:58', NULL),
(328, 230, 223, 12, 12, NULL, 9, 184, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-24 04:25:02', NULL),
(329, 207, 222, NULL, NULL, NULL, 9, 187, NULL, 1, '2022-08-06', NULL, '2022-02-02', 'user', '2022-07-24 08:54:31', NULL),
(330, 222, 223, NULL, 12, NULL, 9, 187, NULL, 1, '2022-07-29', NULL, '2022-02-02', 'user', '2022-07-24 08:56:49', NULL),
(331, 207, 222, NULL, NULL, NULL, 9, 188, NULL, 1, '2022-08-06', NULL, '2022-02-02', 'user', '2022-07-24 12:00:13', NULL),
(332, 126, 207, NULL, NULL, NULL, 9, 189, NULL, 1, '2022-08-27', NULL, '2022-02-02', 'user', '2022-07-25 03:38:08', NULL),
(333, 233, 234, NULL, NULL, NULL, 9, 191, NULL, 1, '2022-08-05', NULL, '2022-02-02', NULL, '2022-07-25 04:54:08', NULL),
(334, 234, 233, NULL, NULL, NULL, 9, 191, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 05:16:29', NULL),
(335, 235, 236, NULL, NULL, NULL, 9, 192, NULL, 1, '2022-07-27', NULL, '2022-02-02', NULL, '2022-07-25 05:34:55', NULL),
(336, 236, 235, NULL, NULL, NULL, 9, 192, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 05:35:36', NULL),
(337, 236, 235, NULL, NULL, NULL, 9, 192, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 05:36:10', NULL),
(338, 235, 237, NULL, NULL, NULL, 9, 192, NULL, 1, '2022-07-28', NULL, '2022-02-02', 'user', '2022-07-25 05:39:28', NULL),
(339, 237, 235, NULL, NULL, NULL, 9, 192, NULL, 1, NULL, NULL, '2022-02-02', 'user', '2022-07-25 05:41:27', NULL),
(340, 237, 238, NULL, NULL, NULL, 9, 192, NULL, 1, '2022-09-10', NULL, '2022-02-02', NULL, '2022-07-25 08:13:13', NULL),
(341, 238, 237, NULL, NULL, NULL, 9, 192, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 08:14:05', NULL),
(342, 238, 237, NULL, NULL, NULL, 9, 192, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 08:15:18', NULL),
(343, 126, 235, NULL, NULL, NULL, 9, 193, NULL, 1, '2029-11-15', NULL, '2022-02-02', 'user', '2022-07-25 10:17:18', NULL),
(344, 235, 236, NULL, NULL, NULL, 9, 192, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 10:36:26', NULL),
(345, 235, 237, NULL, NULL, NULL, 9, 193, NULL, 1, '2032-12-11', NULL, '2022-02-02', 'user', '2022-07-25 10:37:57', NULL),
(346, 235, 237, NULL, NULL, NULL, 9, 192, NULL, 1, '2024-11-09', NULL, '2022-02-02', 'user', '2022-07-25 10:40:28', NULL),
(347, 237, 238, NULL, NULL, NULL, 9, 192, NULL, 1, '2035-12-25', NULL, '2022-02-02', NULL, '2022-07-25 10:42:53', NULL),
(348, 237, 238, NULL, NULL, NULL, 9, 194, NULL, 1, '2022-07-25', NULL, '2022-02-02', NULL, '2022-07-25 10:44:32', NULL),
(349, 238, 237, NULL, NULL, NULL, 9, 194, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 10:45:13', NULL),
(350, 126, 235, NULL, NULL, NULL, 9, 195, NULL, 1, '2022-07-27', NULL, '2022-02-02', 'user', '2022-07-25 11:49:18', NULL),
(351, 235, 236, NULL, NULL, NULL, 9, 195, NULL, 1, '2022-07-26', NULL, '2022-02-02', NULL, '2022-07-25 11:50:17', NULL),
(352, 236, 235, NULL, NULL, NULL, 9, 195, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-25 11:50:59', NULL),
(353, 238, 237, NULL, NULL, NULL, 9, 192, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-26 08:23:05', NULL),
(354, 237, 238, NULL, NULL, NULL, 9, 197, NULL, 1, '2022-08-27', NULL, '2022-02-02', NULL, '2022-07-26 09:46:48', NULL),
(355, 237, 239, NULL, 12, NULL, 9, 197, NULL, 1, '2023-01-27', NULL, '2022-02-02', 'user', '2022-07-26 11:39:50', NULL),
(356, 239, 240, 12, 12, NULL, 9, 197, NULL, 1, '2022-08-12', NULL, '2022-02-02', NULL, '2022-07-26 11:56:07', NULL),
(357, 239, 240, 12, 12, NULL, 9, 197, NULL, 1, '2022-08-13', NULL, '2022-02-02', NULL, '2022-07-26 11:57:36', NULL),
(358, 126, 235, NULL, NULL, NULL, 9, 198, NULL, 1, '2022-09-03', NULL, '2022-02-02', 'user', '2022-07-26 16:46:05', NULL),
(359, 235, 236, NULL, NULL, NULL, 9, 198, NULL, 1, '2022-09-17', NULL, '2022-02-02', NULL, '2022-07-26 16:48:21', NULL),
(360, 236, 235, NULL, NULL, NULL, 9, 198, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-26 16:49:33', NULL),
(361, 236, 235, NULL, NULL, NULL, 9, 198, NULL, 1, NULL, NULL, '2022-02-02', NULL, '2022-07-26 18:02:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_leave_permission`
--

CREATE TABLE `user_leave_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `permision_holder_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_leave_permission`
--

INSERT INTO `user_leave_permission` (`id`, `user_id`, `permision_holder_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 6, 4, 1, '1', NULL, NULL, NULL),
(2, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(3, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(4, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(5, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(6, 6, 4, 1, '1', NULL, '2021-10-18 06:54:15', '2021-10-18 06:54:15'),
(7, 6, 4, 1, '1', NULL, '2021-10-18 06:54:35', '2021-10-18 06:54:35'),
(8, 6, 4, 1, '1', NULL, '2021-10-18 08:26:14', '2021-10-18 08:26:14'),
(9, 5, 1, 1, '1', NULL, '2021-10-18 08:52:40', '2021-10-18 08:52:40'),
(10, 5, 2, 1, '1', NULL, '2021-10-18 08:53:11', '2021-10-18 08:53:11'),
(11, 5, 4, 1, '1', NULL, '2021-10-18 08:53:11', '2021-10-18 08:53:11'),
(12, 4, 1, 1, '1', NULL, '2021-10-18 08:55:09', '2021-10-18 08:55:09'),
(36, 7, 1, 1, '7', NULL, '2021-10-18 11:29:45', '2021-10-18 11:29:45'),
(37, 7, 2, 1, '7', NULL, '2021-10-18 11:29:45', '2021-10-18 11:29:45'),
(38, 7, 4, 1, '7', NULL, '2021-10-18 11:29:45', '2021-10-18 11:29:45'),
(39, 8, 1, 1, '7', NULL, '2021-10-18 11:45:07', '2021-10-18 11:45:07'),
(44, 10, 1, 1, '10', NULL, '2021-10-24 11:10:27', '2021-10-24 11:10:27'),
(45, 10, 9, 1, '10', NULL, '2021-10-24 11:10:27', '2021-10-24 11:10:27'),
(46, 10, 10, 1, '10', NULL, '2021-10-24 11:10:27', '2021-10-24 11:10:27'),
(47, 1, 1, 1, '1', NULL, '2021-10-26 10:05:20', '2021-10-26 10:05:20'),
(48, 1, 10, 1, '1', NULL, '2021-10-26 10:05:20', '2021-10-26 10:05:20'),
(49, 9, 1, 1, '1', NULL, '2021-11-02 04:15:18', '2021-11-02 04:15:18'),
(50, 11, 10, 1, '1', NULL, '2021-11-02 04:28:27', '2021-11-02 04:28:27'),
(51, 12, 1, 1, '10', NULL, '2021-11-02 09:10:45', '2021-11-02 09:10:45'),
(52, 13, 9, 1, '10', NULL, '2021-11-02 09:11:58', '2021-11-02 09:11:58'),
(53, 13, 10, 1, '10', NULL, '2021-11-02 09:11:58', '2021-11-02 09:11:58'),
(54, 13, 11, 1, '10', NULL, '2021-11-02 09:11:58', '2021-11-02 09:11:58'),
(55, 14, 1, 1, '10', NULL, '2021-11-02 09:14:11', '2021-11-02 09:14:11'),
(56, 14, 10, 1, '10', NULL, '2021-11-02 09:14:11', '2021-11-02 09:14:11'),
(57, 15, 1, 1, '1', NULL, '2021-11-02 10:03:02', '2021-11-02 10:03:02'),
(58, 15, 10, 1, '1', NULL, '2021-11-02 10:03:02', '2021-11-02 10:03:02'),
(59, 16, 1, 1, '1', NULL, '2021-11-02 10:29:40', '2021-11-02 10:29:40'),
(61, 18, 16, 1, '16', NULL, '2021-11-02 10:46:14', '2021-11-02 10:46:14'),
(67, 17, 16, 1, '16', NULL, '2021-11-04 04:40:41', '2021-11-04 04:40:41'),
(68, 17, 18, 1, '16', NULL, '2021-11-04 04:40:41', '2021-11-04 04:40:41'),
(69, 21, 19, 1, '17', NULL, '2021-11-04 04:50:42', '2021-11-04 04:50:42'),
(70, 20, 16, 1, '18', NULL, '2021-11-04 05:24:33', '2021-11-04 05:24:33'),
(71, 22, 16, 1, '20', NULL, '2021-11-04 06:01:36', '2021-11-04 06:01:36'),
(73, 24, 16, 1, '20', NULL, '2021-11-04 06:05:14', '2021-11-04 06:05:14'),
(77, 25, 16, 1, '16', NULL, '2021-11-04 08:56:07', '2021-11-04 08:56:07'),
(80, 27, 17, 1, '17', NULL, '2021-11-07 04:52:10', '2021-11-07 04:52:10'),
(81, 28, 17, 1, '17', NULL, '2021-11-07 04:55:21', '2021-11-07 04:55:21'),
(82, 29, 17, 1, '17', NULL, '2021-11-07 05:00:50', '2021-11-07 05:00:50'),
(83, 26, 1, 1, '1', NULL, '2021-11-07 05:37:52', '2021-11-07 05:37:52'),
(84, 30, 1, 1, '1', NULL, '2021-11-07 06:17:04', '2021-11-07 06:17:04'),
(85, 30, 19, 1, '1', NULL, '2021-11-07 06:17:04', '2021-11-07 06:17:04'),
(86, 31, 1, 1, '1', NULL, '2021-11-07 06:23:45', '2021-11-07 06:23:45'),
(87, 31, 19, 1, '1', NULL, '2021-11-07 06:23:45', '2021-11-07 06:23:45'),
(92, 32, 1, 1, '1', NULL, '2021-11-07 07:10:01', '2021-11-07 07:10:01'),
(93, 32, 19, 1, '1', NULL, '2021-11-07 07:10:01', '2021-11-07 07:10:01'),
(94, 33, 1, 1, '19', NULL, '2021-11-09 11:15:13', '2021-11-09 11:15:13'),
(95, 33, 19, 1, '19', NULL, '2021-11-09 11:15:13', '2021-11-09 11:15:13'),
(96, 34, 1, 1, '19', NULL, '2021-11-09 11:15:59', '2021-11-09 11:15:59'),
(97, 34, 19, 1, '19', NULL, '2021-11-09 11:15:59', '2021-11-09 11:15:59'),
(104, 35, 1, 1, '19', NULL, '2021-11-10 06:02:11', '2021-11-10 06:02:11'),
(105, 35, 19, 1, '19', NULL, '2021-11-10 06:02:11', '2021-11-10 06:02:11'),
(106, 36, 1, 1, '19', NULL, '2021-11-10 06:02:35', '2021-11-10 06:02:35'),
(107, 36, 19, 1, '19', NULL, '2021-11-10 06:02:35', '2021-11-10 06:02:35'),
(115, 38, 1, 1, '19', NULL, '2021-11-14 07:25:32', '2021-11-14 07:25:32'),
(116, 39, 1, 1, '19', NULL, '2021-11-14 07:25:46', '2021-11-14 07:25:46'),
(117, 40, 1, 1, '19', NULL, '2021-11-14 07:27:34', '2021-11-14 07:27:34'),
(118, 41, 16, 1, '19', NULL, '2021-11-14 07:28:20', '2021-11-14 07:28:20'),
(119, 42, 16, 1, '19', NULL, '2021-11-14 07:29:07', '2021-11-14 07:29:07'),
(120, 43, 16, 1, '19', NULL, '2021-11-14 07:29:32', '2021-11-14 07:29:32'),
(121, 44, 16, 1, '19', NULL, '2021-11-14 07:29:55', '2021-11-14 07:29:55'),
(122, 45, 16, 1, '19', NULL, '2021-11-14 07:30:27', '2021-11-14 07:30:27'),
(123, 46, 16, 1, '19', NULL, '2021-11-14 08:04:37', '2021-11-14 08:04:37'),
(124, 47, 16, 1, '19', NULL, '2021-11-14 08:04:53', '2021-11-14 08:04:53'),
(125, 48, 16, 1, '19', NULL, '2021-11-14 08:05:19', '2021-11-14 08:05:19'),
(126, 49, 16, 1, '19', NULL, '2021-11-14 08:05:58', '2021-11-14 08:05:58'),
(127, 50, 16, 1, '19', NULL, '2021-11-14 08:06:54', '2021-11-14 08:06:54'),
(128, 51, 1, 1, '19', NULL, '2021-11-14 08:10:00', '2021-11-14 08:10:00'),
(129, 52, 1, 1, '19', NULL, '2021-11-14 08:10:23', '2021-11-14 08:10:23'),
(130, 53, 1, 1, '19', NULL, '2021-11-14 08:10:56', '2021-11-14 08:10:56'),
(131, 54, 1, 1, '19', NULL, '2021-11-14 08:12:43', '2021-11-14 08:12:43'),
(132, 55, 1, 1, '19', NULL, '2021-11-14 08:13:06', '2021-11-14 08:13:06'),
(133, 56, 1, 1, '19', NULL, '2021-11-14 08:14:35', '2021-11-14 08:14:35'),
(134, 57, 1, 1, '19', NULL, '2021-11-14 08:19:07', '2021-11-14 08:19:07'),
(135, 58, 1, 1, '19', NULL, '2021-11-14 08:21:57', '2021-11-14 08:21:57'),
(136, 59, 1, 1, '19', NULL, '2021-11-14 08:23:18', '2021-11-14 08:23:18'),
(149, 37, 1, 1, '37', NULL, '2021-11-15 04:36:43', '2021-11-15 04:36:43'),
(150, 37, 16, 1, '37', NULL, '2021-11-15 04:36:43', '2021-11-15 04:36:43'),
(151, 37, 60, 1, '37', NULL, '2021-11-15 04:36:43', '2021-11-15 04:36:43'),
(152, 19, 1, 1, '19', NULL, '2021-11-28 06:03:14', '2021-11-28 06:03:14'),
(153, 19, 16, 1, '19', NULL, '2021-11-28 06:03:14', '2021-11-28 06:03:14'),
(154, 19, 37, 1, '19', NULL, '2021-11-28 06:03:14', '2021-11-28 06:03:14'),
(155, 23, 16, 1, '60', NULL, '2021-11-29 06:02:00', '2021-11-29 06:02:00'),
(164, 61, 16, 1, '61', NULL, '2021-12-14 10:00:43', '2021-12-14 10:00:43'),
(166, 62, 61, 1, '62', NULL, '2021-12-14 11:02:26', '2021-12-14 11:02:26'),
(168, 63, 62, 1, '60', NULL, '2021-12-14 11:40:24', '2021-12-14 11:40:24'),
(169, 60, 16, 1, '60', NULL, '2022-01-13 05:43:19', '2022-01-13 05:43:19'),
(170, 64, 61, 1, '60', NULL, '2022-01-16 04:52:21', '2022-01-16 04:52:21'),
(171, 65, 61, 1, '60', NULL, '2022-01-24 06:57:41', '2022-01-24 06:57:41'),
(172, 66, 61, 1, '60', NULL, '2022-01-24 06:58:32', '2022-01-24 06:58:32'),
(173, 67, 61, 1, '60', NULL, '2022-01-24 06:59:04', '2022-01-24 06:59:04'),
(174, 68, 60, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(175, 68, 61, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(176, 68, 63, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(177, 68, 64, 1, '60', NULL, '2022-02-01 05:47:27', '2022-02-01 05:47:27'),
(178, 69, 60, 1, '60', NULL, '2022-02-02 06:50:43', '2022-02-02 06:50:43'),
(182, 71, 62, 1, '60', NULL, '2022-02-03 05:58:36', '2022-02-03 05:58:36'),
(183, 71, 70, 1, '60', NULL, '2022-02-03 05:58:36', '2022-02-03 05:58:36'),
(184, 70, 69, 1, '60', NULL, '2022-02-03 06:03:00', '2022-02-03 06:03:00'),
(185, 70, 70, 1, '60', NULL, '2022-02-03 06:03:00', '2022-02-03 06:03:00'),
(186, 72, 61, 1, '60', NULL, '2022-02-03 06:07:31', '2022-02-03 06:07:31'),
(187, 72, 69, 1, '60', NULL, '2022-02-03 06:07:31', '2022-02-03 06:07:31'),
(188, 73, 60, 1, '60', NULL, '2022-02-03 06:09:29', '2022-02-03 06:09:29'),
(189, 74, 69, 1, '60', NULL, '2022-02-07 11:29:49', '2022-02-07 11:29:49'),
(190, 75, 60, 1, '60', NULL, '2022-02-08 04:20:01', '2022-02-08 04:20:01'),
(191, 76, 73, 1, '60', NULL, '2022-02-08 04:43:28', '2022-02-08 04:43:28'),
(192, 77, 59, 1, '60', NULL, '2022-02-10 08:34:13', '2022-02-10 08:34:13'),
(193, 78, 16, 1, '60', NULL, '2022-03-22 11:05:55', '2022-03-22 11:05:55'),
(194, 79, 16, 1, '78', NULL, '2022-04-24 04:36:13', '2022-04-24 04:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `xxffgbf`
--

CREATE TABLE `xxffgbf` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `gffgfg` varchar(250) NOT NULL,
  `fggff` varchar(250) NOT NULL,
  `fgfgfgfg` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xxffgbf`
--

INSERT INTO `xxffgbf` (`id`, `table_name`, `gffgfg`, `fggff`, `fgfgfgfg`, `created_at`) VALUES
(1, 'xxffgbf', '', '', '', '2022-06-01 10:53:40'),
(2, 'xxffgbf', '', '', '', '2022-06-01 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `yu7weuyhsaeyte`
--

CREATE TABLE `yu7weuyhsaeyte` (
  `id` int(6) UNSIGNED NOT NULL,
  `teye4y6` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yweywey`
--

CREATE TABLE `yweywey` (
  `id` int(6) UNSIGNED NOT NULL,
  `yer4we` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `জাতীয়_তথ্য`
--

CREATE TABLE `জাতীয়_তথ্য` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `কৌশলগত_বিষয়বস্তুর_ক্রমিক` varchar(250) NOT NULL,
  `কর্ম` varchar(250) NOT NULL,
  `করণীয়_বিষয়` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা`
--

CREATE TABLE `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `কৌশলগত_বিষয়বস্তুর_ক্রমিক_নং` varchar(250) NOT NULL,
  `কর্ম` varchar(250) NOT NULL,
  `করনীয়` varchar(250) NOT NULL,
  `শল্প` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা`
--

INSERT INTO `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা` (`id`, `table_name`, `কৌশলগত_বিষয়বস্তুর_ক্রমিক_নং`, `কর্ম`, `করনীয়`, `শল্প`, `created_at`) VALUES
(1, 'জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা', '', '', '', '', '2022-05-22 08:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `এইরগজিওএঝ`
--

CREATE TABLE `এইরগজিওএঝ` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `এরহেরের` varchar(250) NOT NULL,
  `েরগেরগ` varchar(250) NOT NULL,
  `েরগ্রেগ` varchar(250) NOT NULL,
  `যদফবফদবা` varchar(250) NOT NULL,
  `আদফবাব` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `এইরগজিওএঝ`
--

INSERT INTO `এইরগজিওএঝ` (`id`, `table_name`, `এরহেরের`, `েরগেরগ`, `েরগ্রেগ`, `যদফবফদবা`, `আদফবাব`, `created_at`) VALUES
(1, 'এইরগজিওএঝ', '', '', '', '', '', '2022-04-25 08:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `কফেরগভফজ`
--

CREATE TABLE `কফেরগভফজ` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `েরকিগভ্বকহত্র` varchar(250) NOT NULL,
  `রথবেয়থহ` varchar(250) NOT NULL,
  `রতবনহেত্যবন` varchar(250) NOT NULL,
  `্ত্রহব্বত` varchar(250) NOT NULL,
  `্ত্রহ্বত্বর্বত্রহ` varchar(250) NOT NULL,
  `্রথ্রথ্বহত্রহ` varchar(250) NOT NULL,
  `্রফথত্রহবত্র` varchar(250) NOT NULL,
  `রথত্রহব্র্ব` varchar(250) NOT NULL,
  `্রথ্রথ্যহ্ন্য` varchar(250) NOT NULL,
  `ত্রহবত্রগবত্রব` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `কফেরগভফজ`
--

INSERT INTO `কফেরগভফজ` (`id`, `table_name`, `েরকিগভ্বকহত্র`, `রথবেয়থহ`, `রতবনহেত্যবন`, `্ত্রহব্বত`, `্ত্রহ্বত্বর্বত্রহ`, `্রথ্রথ্বহত্রহ`, `্রফথত্রহবত্র`, `রথত্রহব্র্ব`, `্রথ্রথ্যহ্ন্য`, `ত্রহবত্রগবত্রব`, `created_at`) VALUES
(1, 'কফেরগভফজ', 'dcjncjnytne', 'jncjndjytnjryu', 'njcjdncj12121', 'njncdjdcnj', 'jcdjdndcnj', 'jncnjndj', 'jcdcnjn', 'jncdjdcnj', 'jncdjndnjdcnj', 'njcjndcnjnj', '2022-04-24 06:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `টেবিল_১`
--

CREATE TABLE `টেবিল_১` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `কল_১` varchar(250) NOT NULL,
  `কল_২` varchar(250) NOT NULL,
  `কল_৩` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `টেবিল_১২`
--

CREATE TABLE `টেবিল_১২` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `কল_১১২` varchar(250) NOT NULL,
  `১২` varchar(250) NOT NULL,
  `১২১৩` varchar(250) NOT NULL,
  `৩১২২১` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ত্রৈমাসিকনাম`
--

CREATE TABLE `ত্রৈমাসিকনাম` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `ত্রৈমাসিক_নাম` varchar(250) NOT NULL,
  `ই_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `হার্ড_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `মোট_নিষ্পত্তিকৃত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `ই_ফাইলে_নোট_নিষ্পত্তিকৃত_এর_হার` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ত্রৈমাসিকনাম`
--

INSERT INTO `ত্রৈমাসিকনাম` (`id`, `table_name`, `ত্রৈমাসিক_নাম`, `ই_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা`, `হার্ড_নথিতে_নিষ্পত্তিকৃত_নোট_সংখ্যা`, `মোট_নিষ্পত্তিকৃত_নোট_সংখ্যা`, `ই_ফাইলে_নোট_নিষ্পত্তিকৃত_এর_হার`, `created_at`) VALUES
(1, 'ত্রৈমাসিকনাম', 'dnndcnj', '2500', '3500', 'ckdcmk', 'mkcdkdcmkcm', '2022-04-24 05:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `নথি_বাস্তবায়ন`
--

CREATE TABLE `নথি_বাস্তবায়ন` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `নথির_ধরণ` varchar(250) NOT NULL,
  `নোটে_নিষ্পন্নের_সংখ্যা` varchar(250) NOT NULL,
  `পত্রজারিতে_নিষ্পন্ন_নোটের_সংখ্যা` varchar(250) NOT NULL,
  `মোট_নিষ্পন্ন` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `নথি_বাস্তবায়ন`
--

INSERT INTO `নথি_বাস্তবায়ন` (`id`, `table_name`, `নথির_ধরণ`, `নোটে_নিষ্পন্নের_সংখ্যা`, `পত্রজারিতে_নিষ্পন্ন_নোটের_সংখ্যা`, `মোট_নিষ্পন্ন`, `created_at`) VALUES
(1, 'নথি_বাস্তবায়ন', 'new update 19/5', 'new update 19/5', 'new update 19/5', 'new update 19/5', '2022-05-19 08:35:23'),
(2, 'নথি_বাস্তবায়ন', 'amader', 'amader', 'amader', 'amader', '2022-05-19 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `নথি_বাস্তবায়ন_বিষয়ক`
--

CREATE TABLE `নথি_বাস্তবায়ন_বিষয়ক` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `চল_১` varchar(250) NOT NULL,
  `চল_২` varchar(250) NOT NULL,
  `চল_৩` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক`
--

CREATE TABLE `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `েওগ্রে৪ব` varchar(250) NOT NULL,
  `েরগভের` varchar(250) NOT NULL,
  `েরগেরা` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `পরিকল্পনা`
--

CREATE TABLE `পরিকল্পনা` (
  `পরিকল্পনা` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ফগ্নব্যত্ন্য`
--

CREATE TABLE `ফগ্নব্যত্ন্য` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `বসবত্র` varchar(250) NOT NULL,
  `সবসব` varchar(250) NOT NULL,
  `ন্ত্রন্ত্যন` varchar(250) NOT NULL,
  `্নতগ্রতফনবত্যন` varchar(250) NOT NULL,
  `্ত্রন্যুয়জনুয়রন্ম` varchar(250) NOT NULL,
  `ত্যজন্মেরুত্যন` varchar(250) NOT NULL,
  `্ত্যন্তজন্রুন্য` varchar(250) NOT NULL,
  `্যতজনেত্যনেয়ত্নেয়ত্ন` varchar(250) NOT NULL,
  `্যজনেয়তজন্যত` varchar(250) NOT NULL,
  `্ত্যনেয়ত্ন` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ফগ্নব্যত্ন্য`
--

INSERT INTO `ফগ্নব্যত্ন্য` (`id`, `table_name`, `বসবত্র`, `সবসব`, `ন্ত্রন্ত্যন`, `্নতগ্রতফনবত্যন`, `্ত্রন্যুয়জনুয়রন্ম`, `ত্যজন্মেরুত্যন`, `্ত্যন্তজন্রুন্য`, `্যতজনেত্যনেয়ত্নেয়ত্ন`, `্যজনেয়তজন্যত`, `্ত্যনেয়ত্ন`, `created_at`) VALUES
(1, 'ফগ্নব্যত্ন্য', '', '', '', '', '', '', '', '', '', '', '2022-04-24 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `শাদমান_আরনাব`
--

CREATE TABLE `শাদমান_আরনাব` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `অইয়াপি_ওয়েফওেপ_ওয়েফকজ` varchar(250) NOT NULL,
  `্রফব্রের_` varchar(250) NOT NULL,
  `রথ্বথ্ব` varchar(250) NOT NULL,
  `ফত্রঘ্ন্রথন্বস` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `শাদমান_আরনাব`
--

INSERT INTO `শাদমান_আরনাব` (`id`, `table_name`, `অইয়াপি_ওয়েফওেপ_ওয়েফকজ`, `্রফব্রের_`, `রথ্বথ্ব`, `ফত্রঘ্ন্রথন্বস`, `created_at`) VALUES
(1, 'শাদমান_আরনাব', 'স্ফত্নব্রতফ;ল্বজকfjhb;oeij', '্মন্র্যুldfjlktnbo', 'ঘম্রুম্রfknbklnfkb', 'ত্যনেয়ত্ন', '2022-04-26 06:41:56'),
(2, 'শাদমান_আরনাব', '', '', '', '', '2022-06-28 18:00:00'),
(3, 'শাদমান_আরনাব', '', '', '', '', '2022-06-28 18:00:00'),
(4, 'শাদমান_আরনাব', '', '', '', '', '2022-06-28 18:00:00'),
(5, 'শাদমান_আরনাব', '2500', '', '', '', '2022-06-28 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `হিসাবায়ন`
--

CREATE TABLE `হিসাবায়ন` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `ত্রৈমাসিক_নাম` varchar(250) NOT NULL,
  `ই_নথিতে_নিষ্পত্তিক্রিত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `হার্ড_নথিতে_নিষ্পত্তিক্রিত_নোট_সংখ্যা` varchar(250) NOT NULL,
  `মোট_নোট_সংখ্যা` varchar(250) NOT NULL,
  `ই_ফাইলে_মোট_নিষ্পত্তিক্রিত_এর_হার` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `হিসাবায়ন`
--

INSERT INTO `হিসাবায়ন` (`id`, `table_name`, `ত্রৈমাসিক_নাম`, `ই_নথিতে_নিষ্পত্তিক্রিত_নোট_সংখ্যা`, `হার্ড_নথিতে_নিষ্পত্তিক্রিত_নোট_সংখ্যা`, `মোট_নোট_সংখ্যা`, `ই_ফাইলে_মোট_নিষ্পত্তিক্রিত_এর_হার`, `created_at`) VALUES
(1, 'হিসাবায়ন', 'item-1345', 'item-122334', 'item-13212', 'item-14323', 'item-15', '2022-05-22 08:45:50'),
(2, 'হিসাবায়ন', 'item-1345', 'item-122334', 'item-13212', 'item-14323', 'item-15', '2022-05-22 08:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `্বরথব্বত্র`
--

CREATE TABLE `্বরথব্বত্র` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `রথত্র` varchar(250) NOT NULL,
  `রথব্রত` varchar(250) NOT NULL,
  `্রথবত্র` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `২৩২৪এফ`
--

CREATE TABLE `২৩২৪এফ` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(250) DEFAULT NULL,
  `সদ্ভসদ্ভ` varchar(250) NOT NULL,
  `সদফভ্বস` varchar(250) NOT NULL,
  `সেদ্ভ্বস` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `২৩২৪এফ`
--

INSERT INTO `২৩২৪এফ` (`id`, `table_name`, `সদ্ভসদ্ভ`, `সদফভ্বস`, `সেদ্ভ্বস`, `created_at`) VALUES
(1, '২৩২৪এফ', 'এওরগের', '্্বশ্নগত', '', '2022-05-18 09:48:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternate_users`
--
ALTER TABLE `alternate_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_performance_agreement`
--
ALTER TABLE `annual_performance_agreement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_performance_agreement_quarterly`
--
ALTER TABLE `annual_performance_agreement_quarterly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_performance_agreement_quarterly_sub_rows`
--
ALTER TABLE `annual_performance_agreement_quarterly_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_performance_agreenment`
--
ALTER TABLE `annual_performance_agreenment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_performance_agreenment_apa`
--
ALTER TABLE `annual_performance_agreenment_apa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_performance_agreenment_table`
--
ALTER TABLE `annual_performance_agreenment_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_eight_mis`
--
ALTER TABLE `appendix_eight_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_five_mis`
--
ALTER TABLE `appendix_five_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_five_table`
--
ALTER TABLE `appendix_five_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_four_mis`
--
ALTER TABLE `appendix_four_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_four_table`
--
ALTER TABLE `appendix_four_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_nine_mis`
--
ALTER TABLE `appendix_nine_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_one_mis`
--
ALTER TABLE `appendix_one_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_one_table_ka`
--
ALTER TABLE `appendix_one_table_ka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_one_table_kha`
--
ALTER TABLE `appendix_one_table_kha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_points`
--
ALTER TABLE `appendix_seven_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_1`
--
ALTER TABLE `appendix_seven_table_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_2`
--
ALTER TABLE `appendix_seven_table_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_2_sub`
--
ALTER TABLE `appendix_seven_table_2_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_3`
--
ALTER TABLE `appendix_seven_table_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_4`
--
ALTER TABLE `appendix_seven_table_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_5`
--
ALTER TABLE `appendix_seven_table_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_6`
--
ALTER TABLE `appendix_seven_table_6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_7`
--
ALTER TABLE `appendix_seven_table_7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_8`
--
ALTER TABLE `appendix_seven_table_8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_9`
--
ALTER TABLE `appendix_seven_table_9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_10`
--
ALTER TABLE `appendix_seven_table_10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_11`
--
ALTER TABLE `appendix_seven_table_11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_12`
--
ALTER TABLE `appendix_seven_table_12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_13`
--
ALTER TABLE `appendix_seven_table_13`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_14`
--
ALTER TABLE `appendix_seven_table_14`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_14_sub`
--
ALTER TABLE `appendix_seven_table_14_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_15`
--
ALTER TABLE `appendix_seven_table_15`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_16`
--
ALTER TABLE `appendix_seven_table_16`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_17`
--
ALTER TABLE `appendix_seven_table_17`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_18`
--
ALTER TABLE `appendix_seven_table_18`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_19`
--
ALTER TABLE `appendix_seven_table_19`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_20`
--
ALTER TABLE `appendix_seven_table_20`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_20_sub`
--
ALTER TABLE `appendix_seven_table_20_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_seven_table_21`
--
ALTER TABLE `appendix_seven_table_21`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_six_claims`
--
ALTER TABLE `appendix_six_claims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_six_claims_table`
--
ALTER TABLE `appendix_six_claims_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_three_mis`
--
ALTER TABLE `appendix_three_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_three_table`
--
ALTER TABLE `appendix_three_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_two_mis`
--
ALTER TABLE `appendix_two_mis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_two_table_ka`
--
ALTER TABLE `appendix_two_table_ka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appendix_two_table_kha`
--
ALTER TABLE `appendix_two_table_kha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autonomous_and_other_institutions`
--
ALTER TABLE `autonomous_and_other_institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autonomous_and_other_institutions_sub_rows`
--
ALTER TABLE `autonomous_and_other_institutions_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget_branch_relevant_apareportformat`
--
ALTER TABLE `budget_branch_relevant_apareportformat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_redressal_action_plan`
--
ALTER TABLE `complaint_redressal_action_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_forms`
--
ALTER TABLE `default_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_sub_forms`
--
ALTER TABLE `default_sub_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo_table`
--
ALTER TABLE `demo_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `development_project_annual_program`
--
ALTER TABLE `development_project_annual_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `development_project_annual_program_sub_rows`
--
ALTER TABLE `development_project_annual_program_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dufuidfidfi`
--
ALTER TABLE `dufuidfidfi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `egovernance_innovation_action_plan`
--
ALTER TABLE `egovernance_innovation_action_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `egovernance_innovation_action_plan_sub_rows`
--
ALTER TABLE `egovernance_innovation_action_plan_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etweywey`
--
ALTER TABLE `etweywey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ewyweyewqy`
--
ALTER TABLE `ewyweyewqy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excluding_annual_development_programs`
--
ALTER TABLE `excluding_annual_development_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excluding_annual_development_programs_sub_rows`
--
ALTER TABLE `excluding_annual_development_programs_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fid_form`
--
ALTER TABLE `fid_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_year_right_information`
--
ALTER TABLE `financial_year_right_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiscal_year_budget_implementation_progress`
--
ALTER TABLE `fiscal_year_budget_implementation_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiscal_year_budget_implementation_progress_sub_rows`
--
ALTER TABLE `fiscal_year_budget_implementation_progress_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_info_all`
--
ALTER TABLE `forms_info_all`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_1_table`
--
ALTER TABLE `form_1_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_2_tbl`
--
ALTER TABLE `form_2_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_form`
--
ALTER TABLE `form_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_table`
--
ALTER TABLE `form_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gdgfdf`
--
ALTER TABLE `gdgfdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `implement_service_delivery_commitments`
--
ALTER TABLE `implement_service_delivery_commitments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_application`
--
ALTER TABLE `leave_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministries`
--
ALTER TABLE `ministries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mkckd`
--
ALTER TABLE `mkckd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_integrity_trategy_action_plan`
--
ALTER TABLE `national_integrity_trategy_action_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_integrity_trategy_action_plan_sub_rows`
--
ALTER TABLE `national_integrity_trategy_action_plan_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newtable250`
--
ALTER TABLE `newtable250`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_table`
--
ALTER TABLE `new_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_table_fid_25_april`
--
ALTER TABLE `new_table_fid_25_april`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_table_fid_1233243`
--
ALTER TABLE `new_table_fid_1233243`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `njcdjdcn`
--
ALTER TABLE `njcdjdcn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
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
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regularityauthorities`
--
ALTER TABLE `regularityauthorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relevant_budget_apa_report_format`
--
ALTER TABLE `relevant_budget_apa_report_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sample_form`
--
ALTER TABLE `sample_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_first_part`
--
ALTER TABLE `section_three_first_part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_first_part_appeight`
--
ALTER TABLE `section_three_first_part_appeight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_first_part_sub`
--
ALTER TABLE `section_three_first_part_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_first_part_sub_2`
--
ALTER TABLE `section_three_first_part_sub_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_second_part`
--
ALTER TABLE `section_three_second_part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_second_part_appeight`
--
ALTER TABLE `section_three_second_part_appeight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_second_part_sub`
--
ALTER TABLE `section_three_second_part_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_three_second_part_sub_2`
--
ALTER TABLE `section_three_second_part_sub_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_two_outcome`
--
ALTER TABLE `section_two_outcome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_two_outcome_eight`
--
ALTER TABLE `section_two_outcome_eight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sgasegtas`
--
ALTER TABLE `sgasegtas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shadmaan`
--
ALTER TABLE `shadmaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shadman`
--
ALTER TABLE `shadman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_national_integrity_trategy_action_plan`
--
ALTER TABLE `sub_national_integrity_trategy_action_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablefdsgg`
--
ALTER TABLE `tablefdsgg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1`
--
ALTER TABLE `table_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2`
--
ALTER TABLE `table_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3`
--
ALTER TABLE `table_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8245`
--
ALTER TABLE `table_8245`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_266730`
--
ALTER TABLE `table_266730`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_281640`
--
ALTER TABLE `table_281640`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_596282`
--
ALTER TABLE `table_596282`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_816106`
--
ALTER TABLE `table_816106`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1083210`
--
ALTER TABLE `table_1083210`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1140467`
--
ALTER TABLE `table_1140467`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1216210`
--
ALTER TABLE `table_1216210`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1324392`
--
ALTER TABLE `table_1324392`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1652396`
--
ALTER TABLE `table_1652396`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1673371`
--
ALTER TABLE `table_1673371`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_1805111`
--
ALTER TABLE `table_1805111`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2279013`
--
ALTER TABLE `table_2279013`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2300063`
--
ALTER TABLE `table_2300063`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2572295`
--
ALTER TABLE `table_2572295`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2652689`
--
ALTER TABLE `table_2652689`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2799467`
--
ALTER TABLE `table_2799467`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2806902`
--
ALTER TABLE `table_2806902`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2822830`
--
ALTER TABLE `table_2822830`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2884511`
--
ALTER TABLE `table_2884511`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3244373`
--
ALTER TABLE `table_3244373`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3368740`
--
ALTER TABLE `table_3368740`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3677541`
--
ALTER TABLE `table_3677541`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3716619`
--
ALTER TABLE `table_3716619`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3794480`
--
ALTER TABLE `table_3794480`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3815937`
--
ALTER TABLE `table_3815937`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3913302`
--
ALTER TABLE `table_3913302`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_3926996`
--
ALTER TABLE `table_3926996`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4004346`
--
ALTER TABLE `table_4004346`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4082188`
--
ALTER TABLE `table_4082188`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4302662`
--
ALTER TABLE `table_4302662`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4310303`
--
ALTER TABLE `table_4310303`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4781902`
--
ALTER TABLE `table_4781902`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4837263`
--
ALTER TABLE `table_4837263`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4908983`
--
ALTER TABLE `table_4908983`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_4989862`
--
ALTER TABLE `table_4989862`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_5282148`
--
ALTER TABLE `table_5282148`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_5511014`
--
ALTER TABLE `table_5511014`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_5982022`
--
ALTER TABLE `table_5982022`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6185442`
--
ALTER TABLE `table_6185442`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6453252`
--
ALTER TABLE `table_6453252`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6525817`
--
ALTER TABLE `table_6525817`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6635675`
--
ALTER TABLE `table_6635675`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6870805`
--
ALTER TABLE `table_6870805`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6901854`
--
ALTER TABLE `table_6901854`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_6954026`
--
ALTER TABLE `table_6954026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7115464`
--
ALTER TABLE `table_7115464`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7216900`
--
ALTER TABLE `table_7216900`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7504978`
--
ALTER TABLE `table_7504978`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7506460`
--
ALTER TABLE `table_7506460`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7534784`
--
ALTER TABLE `table_7534784`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7752558`
--
ALTER TABLE `table_7752558`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7861982`
--
ALTER TABLE `table_7861982`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_7967981`
--
ALTER TABLE `table_7967981`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8011941`
--
ALTER TABLE `table_8011941`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8044872`
--
ALTER TABLE `table_8044872`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8162286`
--
ALTER TABLE `table_8162286`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8164227`
--
ALTER TABLE `table_8164227`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_8247267`
--
ALTER TABLE `table_8247267`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9024346`
--
ALTER TABLE `table_9024346`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9281856`
--
ALTER TABLE `table_9281856`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9452695`
--
ALTER TABLE `table_9452695`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9488859`
--
ALTER TABLE `table_9488859`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_9896359`
--
ALTER TABLE `table_9896359`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_name`
--
ALTER TABLE `table_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_name_of`
--
ALTER TABLE `table_name_of`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_one`
--
ALTER TABLE `table_one`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tewyweywey`
--
ALTER TABLE `tewyweywey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_management_development_costs`
--
ALTER TABLE `total_management_development_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_management_development_costs_sub_rows`
--
ALTER TABLE `total_management_development_costs_sub_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_offices`
--
ALTER TABLE `unit_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_departments`
--
ALTER TABLE `user_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_forms`
--
ALTER TABLE `user_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leave_permission`
--
ALTER TABLE `user_leave_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xxffgbf`
--
ALTER TABLE `xxffgbf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yu7weuyhsaeyte`
--
ALTER TABLE `yu7weuyhsaeyte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yweywey`
--
ALTER TABLE `yweywey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `জাতীয়_তথ্য`
--
ALTER TABLE `জাতীয়_তথ্য`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা`
--
ALTER TABLE `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `এইরগজিওএঝ`
--
ALTER TABLE `এইরগজিওএঝ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `কফেরগভফজ`
--
ALTER TABLE `কফেরগভফজ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `টেবিল_১`
--
ALTER TABLE `টেবিল_১`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `টেবিল_১২`
--
ALTER TABLE `টেবিল_১২`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ত্রৈমাসিকনাম`
--
ALTER TABLE `ত্রৈমাসিকনাম`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `নথি_বাস্তবায়ন`
--
ALTER TABLE `নথি_বাস্তবায়ন`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `নথি_বাস্তবায়ন_বিষয়ক`
--
ALTER TABLE `নথি_বাস্তবায়ন_বিষয়ক`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক`
--
ALTER TABLE `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ফগ্নব্যত্ন্য`
--
ALTER TABLE `ফগ্নব্যত্ন্য`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `শাদমান_আরনাব`
--
ALTER TABLE `শাদমান_আরনাব`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `হিসাবায়ন`
--
ALTER TABLE `হিসাবায়ন`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `্বরথব্বত্র`
--
ALTER TABLE `্বরথব্বত্র`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `২৩২৪এফ`
--
ALTER TABLE `২৩২৪এফ`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternate_users`
--
ALTER TABLE `alternate_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `annual_performance_agreement`
--
ALTER TABLE `annual_performance_agreement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `annual_performance_agreement_quarterly`
--
ALTER TABLE `annual_performance_agreement_quarterly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2079;

--
-- AUTO_INCREMENT for table `annual_performance_agreement_quarterly_sub_rows`
--
ALTER TABLE `annual_performance_agreement_quarterly_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT for table `annual_performance_agreenment`
--
ALTER TABLE `annual_performance_agreenment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `annual_performance_agreenment_apa`
--
ALTER TABLE `annual_performance_agreenment_apa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `annual_performance_agreenment_table`
--
ALTER TABLE `annual_performance_agreenment_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `appendix_eight_mis`
--
ALTER TABLE `appendix_eight_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appendix_five_mis`
--
ALTER TABLE `appendix_five_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `appendix_five_table`
--
ALTER TABLE `appendix_five_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appendix_four_mis`
--
ALTER TABLE `appendix_four_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `appendix_four_table`
--
ALTER TABLE `appendix_four_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appendix_nine_mis`
--
ALTER TABLE `appendix_nine_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appendix_one_mis`
--
ALTER TABLE `appendix_one_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `appendix_one_table_ka`
--
ALTER TABLE `appendix_one_table_ka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `appendix_one_table_kha`
--
ALTER TABLE `appendix_one_table_kha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `appendix_seven_points`
--
ALTER TABLE `appendix_seven_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1454;

--
-- AUTO_INCREMENT for table `appendix_seven_table_1`
--
ALTER TABLE `appendix_seven_table_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `appendix_seven_table_2`
--
ALTER TABLE `appendix_seven_table_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `appendix_seven_table_2_sub`
--
ALTER TABLE `appendix_seven_table_2_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appendix_seven_table_3`
--
ALTER TABLE `appendix_seven_table_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_seven_table_4`
--
ALTER TABLE `appendix_seven_table_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appendix_seven_table_5`
--
ALTER TABLE `appendix_seven_table_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appendix_seven_table_6`
--
ALTER TABLE `appendix_seven_table_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appendix_seven_table_7`
--
ALTER TABLE `appendix_seven_table_7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appendix_seven_table_8`
--
ALTER TABLE `appendix_seven_table_8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `appendix_seven_table_9`
--
ALTER TABLE `appendix_seven_table_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appendix_seven_table_10`
--
ALTER TABLE `appendix_seven_table_10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `appendix_seven_table_11`
--
ALTER TABLE `appendix_seven_table_11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appendix_seven_table_12`
--
ALTER TABLE `appendix_seven_table_12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `appendix_seven_table_13`
--
ALTER TABLE `appendix_seven_table_13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_seven_table_14`
--
ALTER TABLE `appendix_seven_table_14`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appendix_seven_table_14_sub`
--
ALTER TABLE `appendix_seven_table_14_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appendix_seven_table_15`
--
ALTER TABLE `appendix_seven_table_15`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_seven_table_16`
--
ALTER TABLE `appendix_seven_table_16`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_seven_table_17`
--
ALTER TABLE `appendix_seven_table_17`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_seven_table_18`
--
ALTER TABLE `appendix_seven_table_18`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appendix_seven_table_19`
--
ALTER TABLE `appendix_seven_table_19`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_seven_table_20`
--
ALTER TABLE `appendix_seven_table_20`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `appendix_seven_table_20_sub`
--
ALTER TABLE `appendix_seven_table_20_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `appendix_seven_table_21`
--
ALTER TABLE `appendix_seven_table_21`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_six_claims`
--
ALTER TABLE `appendix_six_claims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT for table `appendix_six_claims_table`
--
ALTER TABLE `appendix_six_claims_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `appendix_three_mis`
--
ALTER TABLE `appendix_three_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `appendix_three_table`
--
ALTER TABLE `appendix_three_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appendix_two_mis`
--
ALTER TABLE `appendix_two_mis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `appendix_two_table_ka`
--
ALTER TABLE `appendix_two_table_ka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appendix_two_table_kha`
--
ALTER TABLE `appendix_two_table_kha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `autonomous_and_other_institutions`
--
ALTER TABLE `autonomous_and_other_institutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `autonomous_and_other_institutions_sub_rows`
--
ALTER TABLE `autonomous_and_other_institutions_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `budget_branch_relevant_apareportformat`
--
ALTER TABLE `budget_branch_relevant_apareportformat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `complaint_redressal_action_plan`
--
ALTER TABLE `complaint_redressal_action_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `default_forms`
--
ALTER TABLE `default_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `default_sub_forms`
--
ALTER TABLE `default_sub_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `demo_table`
--
ALTER TABLE `demo_table`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `development_project_annual_program`
--
ALTER TABLE `development_project_annual_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `development_project_annual_program_sub_rows`
--
ALTER TABLE `development_project_annual_program_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `dufuidfidfi`
--
ALTER TABLE `dufuidfidfi`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `egovernance_innovation_action_plan`
--
ALTER TABLE `egovernance_innovation_action_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `egovernance_innovation_action_plan_sub_rows`
--
ALTER TABLE `egovernance_innovation_action_plan_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `etweywey`
--
ALTER TABLE `etweywey`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ewyweyewqy`
--
ALTER TABLE `ewyweyewqy`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `excluding_annual_development_programs`
--
ALTER TABLE `excluding_annual_development_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `excluding_annual_development_programs_sub_rows`
--
ALTER TABLE `excluding_annual_development_programs_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fid_form`
--
ALTER TABLE `fid_form`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `financial_year_right_information`
--
ALTER TABLE `financial_year_right_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `fiscal_year_budget_implementation_progress`
--
ALTER TABLE `fiscal_year_budget_implementation_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `fiscal_year_budget_implementation_progress_sub_rows`
--
ALTER TABLE `fiscal_year_budget_implementation_progress_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `forms_info_all`
--
ALTER TABLE `forms_info_all`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `form_1_table`
--
ALTER TABLE `form_1_table`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_2_tbl`
--
ALTER TABLE `form_2_tbl`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_form`
--
ALTER TABLE `form_form`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_table`
--
ALTER TABLE `form_table`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gdgfdf`
--
ALTER TABLE `gdgfdf`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `implement_service_delivery_commitments`
--
ALTER TABLE `implement_service_delivery_commitments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `leave_application`
--
ALTER TABLE `leave_application`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ministries`
--
ALTER TABLE `ministries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mkckd`
--
ALTER TABLE `mkckd`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `national_integrity_trategy_action_plan`
--
ALTER TABLE `national_integrity_trategy_action_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `national_integrity_trategy_action_plan_sub_rows`
--
ALTER TABLE `national_integrity_trategy_action_plan_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `newtable250`
--
ALTER TABLE `newtable250`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `new_table`
--
ALTER TABLE `new_table`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_table_fid_25_april`
--
ALTER TABLE `new_table_fid_25_april`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `new_table_fid_1233243`
--
ALTER TABLE `new_table_fid_1233243`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `njcdjdcn`
--
ALTER TABLE `njcdjdcn`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `regularityauthorities`
--
ALTER TABLE `regularityauthorities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `relevant_budget_apa_report_format`
--
ALTER TABLE `relevant_budget_apa_report_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sample_form`
--
ALTER TABLE `sample_form`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_three_first_part`
--
ALTER TABLE `section_three_first_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `section_three_first_part_appeight`
--
ALTER TABLE `section_three_first_part_appeight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `section_three_first_part_sub`
--
ALTER TABLE `section_three_first_part_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `section_three_first_part_sub_2`
--
ALTER TABLE `section_three_first_part_sub_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `section_three_second_part`
--
ALTER TABLE `section_three_second_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_three_second_part_appeight`
--
ALTER TABLE `section_three_second_part_appeight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `section_three_second_part_sub`
--
ALTER TABLE `section_three_second_part_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_three_second_part_sub_2`
--
ALTER TABLE `section_three_second_part_sub_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_two_outcome`
--
ALTER TABLE `section_two_outcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `section_two_outcome_eight`
--
ALTER TABLE `section_two_outcome_eight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sgasegtas`
--
ALTER TABLE `sgasegtas`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shadmaan`
--
ALTER TABLE `shadmaan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shadman`
--
ALTER TABLE `shadman`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `sub_national_integrity_trategy_action_plan`
--
ALTER TABLE `sub_national_integrity_trategy_action_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablefdsgg`
--
ALTER TABLE `tablefdsgg`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_2`
--
ALTER TABLE `table_2`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_3`
--
ALTER TABLE `table_3`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_8245`
--
ALTER TABLE `table_8245`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_266730`
--
ALTER TABLE `table_266730`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_281640`
--
ALTER TABLE `table_281640`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_596282`
--
ALTER TABLE `table_596282`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_816106`
--
ALTER TABLE `table_816106`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `table_1083210`
--
ALTER TABLE `table_1083210`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_1140467`
--
ALTER TABLE `table_1140467`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_1216210`
--
ALTER TABLE `table_1216210`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `table_1324392`
--
ALTER TABLE `table_1324392`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_1652396`
--
ALTER TABLE `table_1652396`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_1673371`
--
ALTER TABLE `table_1673371`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `table_1805111`
--
ALTER TABLE `table_1805111`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_2279013`
--
ALTER TABLE `table_2279013`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_2300063`
--
ALTER TABLE `table_2300063`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_2572295`
--
ALTER TABLE `table_2572295`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_2652689`
--
ALTER TABLE `table_2652689`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_2799467`
--
ALTER TABLE `table_2799467`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_2806902`
--
ALTER TABLE `table_2806902`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_2822830`
--
ALTER TABLE `table_2822830`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_2884511`
--
ALTER TABLE `table_2884511`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_3244373`
--
ALTER TABLE `table_3244373`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `table_3368740`
--
ALTER TABLE `table_3368740`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_3677541`
--
ALTER TABLE `table_3677541`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_3716619`
--
ALTER TABLE `table_3716619`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_3794480`
--
ALTER TABLE `table_3794480`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_3815937`
--
ALTER TABLE `table_3815937`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_3913302`
--
ALTER TABLE `table_3913302`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_3926996`
--
ALTER TABLE `table_3926996`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_4004346`
--
ALTER TABLE `table_4004346`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_4082188`
--
ALTER TABLE `table_4082188`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_4302662`
--
ALTER TABLE `table_4302662`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_4310303`
--
ALTER TABLE `table_4310303`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_4781902`
--
ALTER TABLE `table_4781902`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_4837263`
--
ALTER TABLE `table_4837263`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_4908983`
--
ALTER TABLE `table_4908983`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_4989862`
--
ALTER TABLE `table_4989862`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_5282148`
--
ALTER TABLE `table_5282148`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_5511014`
--
ALTER TABLE `table_5511014`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_5982022`
--
ALTER TABLE `table_5982022`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_6185442`
--
ALTER TABLE `table_6185442`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_6453252`
--
ALTER TABLE `table_6453252`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_6525817`
--
ALTER TABLE `table_6525817`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_6635675`
--
ALTER TABLE `table_6635675`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_6870805`
--
ALTER TABLE `table_6870805`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_6901854`
--
ALTER TABLE `table_6901854`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_6954026`
--
ALTER TABLE `table_6954026`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_7115464`
--
ALTER TABLE `table_7115464`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_7216900`
--
ALTER TABLE `table_7216900`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_7504978`
--
ALTER TABLE `table_7504978`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_7506460`
--
ALTER TABLE `table_7506460`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_7534784`
--
ALTER TABLE `table_7534784`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_7752558`
--
ALTER TABLE `table_7752558`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_7861982`
--
ALTER TABLE `table_7861982`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_7967981`
--
ALTER TABLE `table_7967981`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_8011941`
--
ALTER TABLE `table_8011941`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_8044872`
--
ALTER TABLE `table_8044872`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_8162286`
--
ALTER TABLE `table_8162286`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_8164227`
--
ALTER TABLE `table_8164227`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_8247267`
--
ALTER TABLE `table_8247267`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_9024346`
--
ALTER TABLE `table_9024346`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_9281856`
--
ALTER TABLE `table_9281856`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_9452695`
--
ALTER TABLE `table_9452695`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_9488859`
--
ALTER TABLE `table_9488859`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_9896359`
--
ALTER TABLE `table_9896359`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_name`
--
ALTER TABLE `table_name`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_name_of`
--
ALTER TABLE `table_name_of`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_one`
--
ALTER TABLE `table_one`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tewyweywey`
--
ALTER TABLE `tewyweywey`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `total_management_development_costs`
--
ALTER TABLE `total_management_development_costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `total_management_development_costs_sub_rows`
--
ALTER TABLE `total_management_development_costs_sub_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `unit_offices`
--
ALTER TABLE `unit_offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `user_departments`
--
ALTER TABLE `user_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `user_forms`
--
ALTER TABLE `user_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `user_leave_permission`
--
ALTER TABLE `user_leave_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `xxffgbf`
--
ALTER TABLE `xxffgbf`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `yu7weuyhsaeyte`
--
ALTER TABLE `yu7weuyhsaeyte`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yweywey`
--
ALTER TABLE `yweywey`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `জাতীয়_তথ্য`
--
ALTER TABLE `জাতীয়_তথ্য`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা`
--
ALTER TABLE `জাতীয়_তথ্য__ও_যোগাযোগ_প্রযুক্তি_নীতিমালা`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `এইরগজিওএঝ`
--
ALTER TABLE `এইরগজিওএঝ`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `কফেরগভফজ`
--
ALTER TABLE `কফেরগভফজ`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `টেবিল_১`
--
ALTER TABLE `টেবিল_১`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `টেবিল_১২`
--
ALTER TABLE `টেবিল_১২`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ত্রৈমাসিকনাম`
--
ALTER TABLE `ত্রৈমাসিকনাম`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `নথি_বাস্তবায়ন`
--
ALTER TABLE `নথি_বাস্তবায়ন`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `নথি_বাস্তবায়ন_বিষয়ক`
--
ALTER TABLE `নথি_বাস্তবায়ন_বিষয়ক`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক`
--
ALTER TABLE `নথি_বাস্তবায়ন_বিষয়ক_৪র্থ_ত্রৈমাসিক`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ফগ্নব্যত্ন্য`
--
ALTER TABLE `ফগ্নব্যত্ন্য`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `শাদমান_আরনাব`
--
ALTER TABLE `শাদমান_আরনাব`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `হিসাবায়ন`
--
ALTER TABLE `হিসাবায়ন`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `্বরথব্বত্র`
--
ALTER TABLE `্বরথব্বত্র`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `২৩২৪এফ`
--
ALTER TABLE `২৩২৪এফ`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
