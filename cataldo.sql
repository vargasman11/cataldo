-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2022 at 12:49 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cataldo`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 1, 1, NULL, 'ad-70-stones-683x1024.jpg', 'image', 683, 1024, 141821, NULL, NULL, NULL, '2020-06-22 00:02:19', '2022-02-20 06:32:34', '2022-02-20 06:32:34', 'fc8f7caa-e669-4754-ae7e-6fdc8adf28c5'),
(13, 1, 1, NULL, 'ancient-tombs2-1024x683.jpg', 'image', 1024, 683, 208200, NULL, NULL, NULL, '2020-06-22 00:02:27', '2022-02-20 06:32:34', '2022-02-20 06:32:34', '150704dd-eb50-441c-a211-30717b740c31'),
(14, 1, 1, NULL, 'ancient-tombs2-1536x1024.jpg', 'image', 1536, 1024, 432124, NULL, NULL, NULL, '2020-06-22 00:02:28', '2022-02-20 06:32:35', '2022-02-20 06:32:35', 'cf5bbc23-f6f2-48ed-a2ee-dfc968667b78'),
(15, 1, 1, NULL, 'caves-at-qumran-1024x683.jpg', 'image', 1024, 683, 186422, NULL, NULL, NULL, '2020-06-22 00:02:35', '2022-02-20 06:32:35', '2022-02-20 06:32:35', 'dcb2a569-8d2b-41e6-8a14-7a99e55491cc'),
(16, 1, 1, NULL, 'caves-at-qumran-1536x1024.jpg', 'image', 1536, 1024, 389470, NULL, NULL, NULL, '2020-06-22 00:02:36', '2022-02-20 06:32:36', '2022-02-20 06:32:36', '43d452c9-2cc3-4339-bfd9-751e1d7392a6'),
(17, 1, 1, NULL, 'dan-temple2-1024x683.jpg', 'image', 1024, 683, 161948, NULL, NULL, NULL, '2020-06-22 00:02:42', '2022-02-20 06:32:36', '2022-02-20 06:32:36', '006b43d7-83d1-47ca-a280-976e9d5685ae'),
(18, 1, 1, NULL, 'dan-temple2-1536x1024.jpg', 'image', 1536, 1024, 337716, NULL, NULL, NULL, '2020-06-22 00:02:43', '2022-02-20 06:32:37', '2022-02-20 06:32:37', '8369b2f0-3690-48b9-810b-a86ba1c65f09'),
(19, 1, 1, NULL, 'jerusalem-looking-south-1024x683.jpg', 'image', 1024, 683, 190400, NULL, NULL, NULL, '2020-06-22 00:03:05', '2022-02-20 06:32:37', '2022-02-20 06:32:37', 'da14791d-abd0-42af-acd3-9343da5fc3df'),
(20, 1, 1, NULL, 'jerusalem-looking-south-1536x1024.jpg', 'image', 1536, 1024, 378872, NULL, NULL, NULL, '2020-06-22 00:03:06', '2022-02-20 06:32:37', '2022-02-20 06:32:37', 'f1a64c85-8312-4ead-89bb-9122aa8a8e7a'),
(21, 1, 1, NULL, 'jerusalem-wall2-1-1024x683.jpg', 'image', 1024, 683, 193657, NULL, NULL, NULL, '2020-06-22 00:03:10', '2022-02-20 06:32:38', '2022-02-20 06:32:38', '5cc65112-9c22-4668-adc7-442d9aea9f80'),
(22, 1, 1, NULL, 'jerusalem-wall2-1-1536x1024.jpg', 'image', 1536, 1024, 412991, NULL, NULL, NULL, '2020-06-22 00:03:11', '2022-02-20 06:32:38', '2022-02-20 06:32:38', '6358679f-7be4-420f-9b0f-c3620a649396'),
(23, 1, 1, NULL, 'jerusalem4-1024x683.jpg', 'image', 1024, 683, 163925, NULL, NULL, NULL, '2020-06-22 00:03:20', '2022-02-20 06:32:39', '2022-02-20 06:32:39', '222f8c26-f872-4499-a45d-f41b3b101f39'),
(24, 1, 1, NULL, 'jerusalem4-1536x1024.jpg', 'image', 1536, 1024, 337356, NULL, NULL, NULL, '2020-06-22 00:03:21', '2022-02-20 06:32:39', '2022-02-20 06:32:39', '766be934-ced8-423f-9af0-8c0c328bf5d2'),
(25, 1, 1, NULL, 'jerusalem7-1024x683.jpg', 'image', 1024, 683, 150889, NULL, NULL, NULL, '2020-06-22 00:03:25', '2022-02-20 06:32:40', '2022-02-20 06:32:40', '1839fa23-b7ac-4d88-bd07-58d8b62b45e8'),
(26, 1, 1, NULL, 'jerusalem7-1536x1024.jpg', 'image', 1536, 1024, 305965, NULL, NULL, NULL, '2020-06-22 00:03:26', '2022-02-20 06:32:40', '2022-02-20 06:32:40', 'f29c2f33-eae6-4749-8e5f-2fa25246e8a9'),
(27, 1, 1, 1, 'jesusbeforepilate.jpg', 'image', 500, 314, 191866, NULL, NULL, NULL, '2022-02-21 11:55:29', '2022-02-20 06:32:41', '2022-02-21 11:55:29', '937bd754-6600-4c7a-a980-2f96092f080e'),
(28, 1, 1, NULL, 'kidron-valley-1-1024x683.jpg', 'image', 1024, 683, 185673, NULL, NULL, NULL, '2020-06-22 00:03:28', '2022-02-20 06:32:41', '2022-02-20 06:32:41', '5acf5458-654c-4e2d-912d-58052b49e0a6'),
(29, 1, 1, NULL, 'kidron-valley-1-1536x1024.jpg', 'image', 1536, 1024, 382397, NULL, NULL, NULL, '2020-06-22 00:03:28', '2022-02-20 06:32:42', '2022-02-20 06:32:42', 'a3361bd0-44c3-412e-80e3-ddd900f68db3'),
(30, 1, 1, NULL, 'kidron-valley-1.jpg', 'image', 2048, 1365, 907536, NULL, NULL, NULL, '2020-06-22 00:03:27', '2022-02-20 06:32:42', '2022-02-20 06:32:42', 'a4e52251-3d6a-4795-9f3c-81b558078a6f'),
(31, 1, 1, NULL, 'masada2-1-1024x683.jpg', 'image', 1024, 683, 137128, NULL, NULL, NULL, '2020-06-22 00:03:35', '2022-02-20 06:32:43', '2022-02-20 06:32:43', '4f3f4aa7-50db-4eb8-893b-0df9fa51d31f'),
(32, 1, 1, NULL, 'masada2-1-1536x1024.jpg', 'image', 1536, 1024, 282851, NULL, NULL, NULL, '2020-06-22 00:03:36', '2022-02-20 06:32:43', '2022-02-20 06:32:43', '334d5955-15aa-4853-b2c9-c8ee0168182c'),
(33, 1, 1, NULL, 'pilates-judgment-seat-1024x683.jpg', 'image', 1024, 683, 162130, NULL, NULL, NULL, '2020-06-22 00:03:44', '2022-02-20 06:32:44', '2022-02-20 06:32:44', 'e7abd51d-0018-4f8d-a269-b8912e86c98a'),
(34, 1, 1, NULL, 'pilates-judgment-seat-1536x1024.jpg', 'image', 1536, 1024, 346428, NULL, NULL, NULL, '2020-06-22 00:03:45', '2022-02-20 06:32:44', '2022-02-20 06:32:44', 'fd427b1f-004a-4e1c-8bb6-9389a06816fe'),
(35, 1, 1, NULL, 'pilates-judgment-seat2-1024x683.jpg', 'image', 1024, 683, 202040, NULL, NULL, NULL, '2020-06-22 00:03:46', '2022-02-20 06:32:45', '2022-02-20 06:32:45', '8bffcc64-05f8-4bc3-9ed5-9ac8ebafc3a6'),
(36, 1, 1, NULL, 'pilates-judgment-seat2-1536x1024.jpg', 'image', 1536, 1024, 434061, NULL, NULL, NULL, '2020-06-22 00:03:47', '2022-02-20 06:32:45', '2022-02-20 06:32:45', '1206ede0-bb15-4775-b4cd-71931744f29c'),
(37, 1, 1, NULL, 'pilates-judgment-seat3-1024x683.jpg', 'image', 1024, 683, 179980, NULL, NULL, NULL, '2020-06-22 00:03:48', '2022-02-20 06:32:46', '2022-02-20 06:32:46', '62f3c534-fe5d-4790-95da-a71b50190e25'),
(38, 1, 1, NULL, 'pilates-judgment-seat3-1536x1024.jpg', 'image', 1536, 1024, 385024, NULL, NULL, NULL, '2020-06-22 00:03:49', '2022-02-20 06:32:46', '2022-02-20 06:32:46', '203151dd-4b09-4fd2-a4bc-055560622c80'),
(39, 1, 1, NULL, 'pilates-judgment-seat4-1024x683.jpg', 'image', 1024, 683, 175218, NULL, NULL, NULL, '2020-06-22 00:03:50', '2022-02-20 06:32:46', '2022-02-20 06:32:46', 'be0a2d5a-9328-4929-a452-82ece42b1799'),
(40, 1, 1, NULL, 'pilates-judgment-seat4-1536x1024.jpg', 'image', 1536, 1024, 369140, NULL, NULL, NULL, '2020-06-22 00:03:51', '2022-02-20 06:32:47', '2022-02-20 06:32:47', '2ab7e5d1-8a26-4c7f-bc80-097d419d5ff0'),
(41, 1, 1, NULL, 'pilates-judgment-seat7-1024x683.jpg', 'image', 1024, 683, 162405, NULL, NULL, NULL, '2020-06-22 00:03:56', '2022-02-20 06:32:48', '2022-02-20 06:32:48', 'e6507b13-5eb8-46bb-aca9-2dfe29662ab7'),
(42, 1, 1, NULL, 'pilates-judgment-seat7-1536x1024.jpg', 'image', 1536, 1024, 341693, NULL, NULL, NULL, '2020-06-22 00:03:56', '2022-02-20 06:32:48', '2022-02-20 06:32:48', 'f080818b-2331-4357-af09-df8d4d8b3e30'),
(43, 1, 1, NULL, 'tamar.jpg', 'image', 957, 960, 75257, NULL, NULL, NULL, '2020-06-22 00:01:57', '2022-02-20 06:32:49', '2022-02-20 06:32:49', 'dfc86612-929b-4ffe-bc64-7ee906fb2e08'),
(44, 1, 1, NULL, 'thorns-2-1024x683.jpg', 'image', 1024, 683, 199701, NULL, NULL, NULL, '2020-06-22 00:03:57', '2022-02-20 06:32:49', '2022-02-20 06:32:49', '9d025788-4a6a-4cc4-aac8-97de66420ae4'),
(45, 1, 1, NULL, 'thorns-2-1536x1024.jpg', 'image', 1536, 1024, 409347, NULL, NULL, NULL, '2020-06-22 00:03:58', '2022-02-20 06:32:50', '2022-02-20 06:32:50', 'de9bbe9a-d509-4abd-ae1c-dd01d4a908b7'),
(54, 1, 1, 1, 'Screenshot_20200909-181944_Gallery-e1599703093436-1.jpg', 'image', 300, 411, 13925, NULL, NULL, NULL, '2022-02-20 16:31:08', '2022-02-20 16:31:08', '2022-02-20 16:31:08', 'c481c894-1edd-4560-a4ab-e381ff5577ef'),
(59, 1, 1, 1, 'Picture.jpg', 'image', 512, 340, 68421, NULL, NULL, NULL, '2022-02-20 16:49:26', '2022-02-20 16:49:26', '2022-02-20 16:49:26', 'c76b7707-f144-4d77-aaee-7211be6d0a68'),
(62, NULL, 3, 1, 'Picture.jpg', 'image', 512, 340, 68421, NULL, NULL, NULL, '2022-02-21 11:53:27', '2022-02-21 11:53:27', '2022-02-21 11:53:27', 'fa0a308a-f61d-4a7b-aa8b-899b3df1d421'),
(67, 1, 1, 1, 'jesusbeforepilate_2022-02-21-115526_bzoq.jpg', 'image', 500, 314, 189574, NULL, 0, 0, '2022-02-21 11:55:26', '2022-02-21 11:55:26', '2022-02-21 11:55:26', 'ae24b13e-ffbb-40fc-a171-a52c58f5a95d'),
(72, 1, 1, 1, 'hebrew-magnifying-glass.jpg', 'image', 2500, 1667, 537044, NULL, NULL, NULL, '2022-02-21 11:57:40', '2022-02-21 11:57:40', '2022-02-21 11:57:40', '1de63d33-08ce-40ff-adb9-18df4b9f11b6');

-- --------------------------------------------------------

--
-- Table structure for table `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(55, 1, NULL, NULL, '2022-02-20 16:40:34', '2022-02-20 16:40:34', 'b479c2eb-c0b3-40f4-b631-9ef2ab727e9d'),
(56, 1, NULL, NULL, '2022-02-20 16:40:48', '2022-02-20 16:40:48', 'bbfad5ed-1675-4b57-8e0e-ea60d330d1ab'),
(57, 1, NULL, NULL, '2022-02-20 16:40:56', '2022-02-20 16:40:56', '8fc22e8f-e593-4de7-bcb6-38c2ef56c676');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorygroups`
--

INSERT INTO `categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `defaultPlacement`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 7, 'category', 'category', 'end', '2022-02-20 16:40:08', '2022-02-20 16:40:08', NULL, '8ba2b35c-4f68-4570-b288-56f2e0dda92b');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorygroups_sites`
--

INSERT INTO `categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'category/{slug}', NULL, '2022-02-20 16:40:08', '2022-02-20 16:40:08', 'd576d0a5-8f05-4aac-8043-72668e746acd');

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(1, 1, 'firstName', '2022-02-20 06:40:51', 0, 1),
(1, 1, 'lastName', '2022-02-20 06:40:51', 0, 1),
(2, 1, 'slug', '2022-02-20 05:44:39', 0, 1),
(2, 1, 'title', '2022-02-20 05:44:39', 0, 1),
(2, 1, 'uri', '2022-02-20 05:44:39', 0, 1),
(58, 1, 'slug', '2022-02-20 16:48:17', 0, 1),
(58, 1, 'title', '2022-02-21 11:53:35', 0, 1),
(58, 1, 'uri', '2022-02-20 16:48:17', 0, 1),
(64, 1, 'slug', '2022-02-21 11:53:55', 0, 1),
(64, 1, 'title', '2022-02-21 11:53:55', 0, 1),
(64, 1, 'uri', '2022-02-21 11:53:55', 0, 1),
(69, 1, 'slug', '2022-02-21 11:55:57', 0, 1),
(69, 1, 'title', '2022-02-21 11:55:57', 0, 1),
(69, 1, 'uri', '2022-02-21 11:55:57', 0, 1),
(71, 1, 'slug', '2022-02-21 11:56:57', 0, 1),
(71, 1, 'title', '2022-02-21 11:56:57', 0, 1),
(71, 1, 'uri', '2022-02-21 11:56:57', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 1, '2022-02-20 06:23:29', 0, 1),
(7, 1, 2, '2022-02-20 06:37:12', 0, 1),
(58, 1, 1, '2022-02-20 16:49:59', 0, 1),
(58, 1, 6, '2022-02-21 11:53:35', 0, 1),
(58, 1, 7, '2022-02-20 16:50:20', 0, 1),
(64, 1, 1, '2022-02-21 11:54:08', 0, 1),
(64, 1, 6, '2022-02-21 11:55:34', 0, 1),
(64, 1, 7, '2022-02-21 11:54:33', 0, 1),
(69, 1, 1, '2022-02-21 11:56:18', 0, 1),
(69, 1, 6, '2022-02-21 11:56:10', 0, 1),
(69, 1, 7, '2022-02-21 11:56:28', 0, 1),
(71, 1, 1, '2022-02-21 11:57:12', 0, 1),
(71, 1, 6, '2022-02-21 11:57:43', 0, 1),
(71, 1, 7, '2022-02-21 11:57:53', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_pageContent_vgbilypy` text COLLATE utf8_unicode_ci,
  `field_authorBio_njoljosf` text COLLATE utf8_unicode_ci,
  `field_authorName_aqetzcun` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_pageContent_vgbilypy`, `field_authorBio_njoljosf`, `field_authorName_aqetzcun`) VALUES
(1, 1, 1, NULL, '2022-02-20 04:49:59', '2022-02-20 06:40:51', 'ab40aa66-ac2f-4357-9496-d9544fe00467', NULL, NULL, NULL),
(2, 2, 1, 'About', '2022-02-20 05:44:34', '2022-02-20 06:23:29', 'e06df7dd-9fc7-46cb-a56f-7810b3448935', '<h1 class=\"align-center\">About</h1>\r\n<p>Take A Closer Look Ministries is a teaching ministry that aims to unite the Jesus of faith with the Jesus of history. We take an objective historical approach to study the historical figure of Jesus of Nazareth and the early Christian movement. We are not scared to let the evidence lead where it may, and in the end, we have found that it all glorifies God in a profound way. We pray you will be equally uplifted and edified through our studies.</p>\r\n<h2>Ryan Cataldo</h2>\r\n<p><em>Founder/Site Administrator</em></p>\r\n<p>Ryan currently lives in Charlotte, NC. He received his M.A. in Religious Studies at UNCC and plans to pursue a Ph.D. in New Testament/Early Christianity. After coming alive in Christ at age 19, Ryan became extremely interested in studying the Scriptures. He is especially interested in eschatology and apologetics.</p>\r\n\r\n<h2>Adam Maarschalk</h2>\r\n<p><em>Author/Ministry Member</em></p>\r\n<p>A short bio with personal history, key achievements, Adam currently lives in Charlotte, North Carolina. He married his beautiful wife, Jasmine, in August 2012. From 2001-2007 he lived in Malaysia, where he taught English, learned the Malay language, facilitated village homestay programs, and fell in love with the local people, food, and culture. Adam enjoys writing and blogging about fulfilled eschatology, Christian Zionism, and other topics (www.adammaarschalk.com).</p>\r\n', NULL, NULL),
(3, 3, 1, 'About', '2022-02-20 05:45:17', '2022-02-20 05:45:17', '6b100461-d7de-4683-8372-f19f4680fd63', '<h2>About</h2>\r\n<p>Take A Closer Look Ministries is a teaching ministry that aims to unite the Jesus of faith with the Jesus of history. We take an objective historical approach to study the historical figure of Jesus of Nazareth and the early Christian movement. We are not scared to let the evidence lead where it may, and in the end, we have found that it all glorifies God in a profound way. We pray you will be equally uplifted and edified through our studies.</p>\r\n<h2>Ryan Cataldo</h2>\r\n<p><em>Founder/Site Administrator</em></p>\r\n<p>Ryan currently lives in Charlotte, NC. He received his M.A. in Religious Studies at UNCC and plans to pursue a Ph.D. in New Testament/Early Christianity. After coming alive in Christ at age 19, Ryan became extremely interested in studying the Scriptures. He is especially interested in eschatology and apologetics.</p>\r\n<figure class=\"wpb_wrapper vc_figure\" style=\"margin:0px;color:rgb(42,49,53);font-size:14px;font-family:Roboto;line-height:24px;font-weight:400;vertical-align:top;max-width:100%;\"><div class=\"vc_single_image-wrapper vc_box_border_grey\"><img width=\"300\" height=\"411\" src=\"https://takeacloserlookministries.com/wp-content/uploads/2020/09/Screenshot_20200909-181944_Gallery-e1599703093436-1.jpg\" class=\"vc_single_image-img attachment-large\" alt=\"\" /></div></figure>\r\n<h2>Adam Maarschalk</h2>\r\n<p><em>Author/Ministry Member</em></p>\r\n<p>A short bio with personal history, key achievements, Adam currently lives in Charlotte, North Carolina. He married his beautiful wife, Jasmine, in August 2012. From 2001-2007 he lived in Malaysia, where he taught English, learned the Malay language, facilitated village homestay programs, and fell in love with the local people, food, and culture. Adam enjoys writing and blogging about fulfilled eschatology, Christian Zionism, and other topics (www.adammaarschalk.com).</p>\r\n<figure class=\"wpb_wrapper vc_figure\" style=\"margin:0px;color:rgb(42,49,53);font-size:14px;font-family:Roboto;line-height:24px;font-weight:400;vertical-align:top;max-width:100%;\"><div class=\"vc_single_image-wrapper vc_box_border_grey\"><img width=\"320\" height=\"320\" src=\"https://takeacloserlookministries.com/wp-content/uploads/2020/09/adam.jpeg\" class=\"vc_single_image-img attachment-full\" alt=\"\" /></div></figure>', NULL, NULL),
(4, 4, 1, 'About', '2022-02-20 05:45:53', '2022-02-20 05:45:53', '59ea2a01-d924-4ee1-aff0-06bc53653cce', '<h2>About</h2>\r\n<p>Take A Closer Look Ministries is a teaching ministry that aims to unite the Jesus of faith with the Jesus of history. We take an objective historical approach to study the historical figure of Jesus of Nazareth and the early Christian movement. We are not scared to let the evidence lead where it may, and in the end, we have found that it all glorifies God in a profound way. We pray you will be equally uplifted and edified through our studies.</p>\r\n<h2>Ryan Cataldo</h2>\r\n<p><em>Founder/Site Administrator</em></p>\r\n<p>Ryan currently lives in Charlotte, NC. He received his M.A. in Religious Studies at UNCC and plans to pursue a Ph.D. in New Testament/Early Christianity. After coming alive in Christ at age 19, Ryan became extremely interested in studying the Scriptures. He is especially interested in eschatology and apologetics.</p>\r\n<figure class=\"wpb_wrapper vc_figure\" style=\"margin:0px;color:rgb(42,49,53);font-size:14px;font-family:Roboto;line-height:24px;font-weight:400;vertical-align:top;max-width:100%;\"><div class=\"vc_single_image-wrapper vc_box_border_grey\"><img width=\"300\" height=\"411\" src=\"https://takeacloserlookministries.com/wp-content/uploads/2020/09/Screenshot_20200909-181944_Gallery-e1599703093436-1.jpg\" class=\"vc_single_image-img attachment-large\" alt=\"\" /></div></figure>\r\n<h2>Adam Maarschalk</h2>\r\n<p><em>Author/Ministry Member</em></p>\r\n<p>A short bio with personal history, key achievements, Adam currently lives in Charlotte, North Carolina. He married his beautiful wife, Jasmine, in August 2012. From 2001-2007 he lived in Malaysia, where he taught English, learned the Malay language, facilitated village homestay programs, and fell in love with the local people, food, and culture. Adam enjoys writing and blogging about fulfilled eschatology, Christian Zionism, and other topics (www.adammaarschalk.com).</p>\r\n<figure class=\"wpb_wrapper vc_figure\" style=\"margin:0px;color:rgb(42,49,53);font-size:14px;font-family:Roboto;line-height:24px;font-weight:400;vertical-align:top;max-width:100%;\"><div class=\"vc_single_image-wrapper vc_box_border_grey\"><img width=\"320\" height=\"320\" src=\"https://takeacloserlookministries.com/wp-content/uploads/2020/09/adam.jpeg\" class=\"vc_single_image-img attachment-full\" alt=\"\" /></div></figure>', NULL, NULL),
(6, 6, 1, 'About', '2022-02-20 06:23:29', '2022-02-20 06:23:29', '9137f181-503e-424d-bf5f-ceac822ae50d', '<h1 class=\"align-center\">About</h1>\r\n<p>Take A Closer Look Ministries is a teaching ministry that aims to unite the Jesus of faith with the Jesus of history. We take an objective historical approach to study the historical figure of Jesus of Nazareth and the early Christian movement. We are not scared to let the evidence lead where it may, and in the end, we have found that it all glorifies God in a profound way. We pray you will be equally uplifted and edified through our studies.</p>\r\n<h2>Ryan Cataldo</h2>\r\n<p><em>Founder/Site Administrator</em></p>\r\n<p>Ryan currently lives in Charlotte, NC. He received his M.A. in Religious Studies at UNCC and plans to pursue a Ph.D. in New Testament/Early Christianity. After coming alive in Christ at age 19, Ryan became extremely interested in studying the Scriptures. He is especially interested in eschatology and apologetics.</p>\r\n\r\n<h2>Adam Maarschalk</h2>\r\n<p><em>Author/Ministry Member</em></p>\r\n<p>A short bio with personal history, key achievements, Adam currently lives in Charlotte, North Carolina. He married his beautiful wife, Jasmine, in August 2012. From 2001-2007 he lived in Malaysia, where he taught English, learned the Malay language, facilitated village homestay programs, and fell in love with the local people, food, and culture. Adam enjoys writing and blogging about fulfilled eschatology, Christian Zionism, and other topics (www.adammaarschalk.com).</p>\r\n', NULL, NULL),
(7, 7, 1, 'Galleries', '2022-02-20 06:29:02', '2022-02-20 06:49:15', 'd4782dde-0755-4102-955e-6c4d057f222d', NULL, NULL, NULL),
(8, 8, 1, 'Galleries', '2022-02-20 06:29:02', '2022-02-20 06:29:02', 'e89b0ef4-cd02-401f-a2f8-040b8fe2f249', NULL, NULL, NULL),
(9, 9, 1, 'Galleries', '2022-02-20 06:30:21', '2022-02-20 06:30:21', '53808a44-e3b9-4f51-9c33-7181dc1c1d60', NULL, NULL, NULL),
(11, 12, 1, 'Ad 70 stones 683x1024', '2022-02-20 06:32:34', '2022-02-20 06:32:34', '9eec65a7-953b-4371-ab28-f8a05be28e8f', NULL, NULL, NULL),
(12, 13, 1, 'Ancient tombs2 1024x683', '2022-02-20 06:32:34', '2022-02-20 06:32:34', '0644c0a4-2f23-4f16-829c-dde7a4f56901', NULL, NULL, NULL),
(13, 14, 1, 'Ancient tombs2 1536x1024', '2022-02-20 06:32:35', '2022-02-20 06:32:35', 'e1b83c3a-833a-4667-9dd8-0a9b4dd9ac9a', NULL, NULL, NULL),
(14, 15, 1, 'Caves at qumran 1024x683', '2022-02-20 06:32:35', '2022-02-20 06:32:35', 'e5092dd5-5b22-4191-ada2-ea4b7d8d90ab', NULL, NULL, NULL),
(15, 16, 1, 'Caves at qumran 1536x1024', '2022-02-20 06:32:36', '2022-02-20 06:32:36', 'c3f8c5d8-4540-485f-ba38-0a2dfd63d9f2', NULL, NULL, NULL),
(16, 17, 1, 'Dan temple2 1024x683', '2022-02-20 06:32:36', '2022-02-20 06:32:36', 'e1a0880d-9d27-47e6-bbfe-48d01c4eb0c2', NULL, NULL, NULL),
(17, 18, 1, 'Dan temple2 1536x1024', '2022-02-20 06:32:37', '2022-02-20 06:32:37', '9ce4619d-f3bc-4e6c-aa6a-bf6e46b96e73', NULL, NULL, NULL),
(18, 19, 1, 'Jerusalem looking south 1024x683', '2022-02-20 06:32:37', '2022-02-20 06:32:37', 'b2ef7984-7b8b-401c-a7e5-a50b26affa27', NULL, NULL, NULL),
(19, 20, 1, 'Jerusalem looking south 1536x1024', '2022-02-20 06:32:37', '2022-02-20 06:32:37', '2e51a73d-b9b7-4538-914f-b767a9be2dc9', NULL, NULL, NULL),
(20, 21, 1, 'Jerusalem wall2 1 1024x683', '2022-02-20 06:32:38', '2022-02-20 06:32:38', '13d5023a-aa40-4034-b448-90cfa42ba6b4', NULL, NULL, NULL),
(21, 22, 1, 'Jerusalem wall2 1 1536x1024', '2022-02-20 06:32:38', '2022-02-20 06:32:38', '02ea8092-eb10-45b9-8e08-2d7f80b11471', NULL, NULL, NULL),
(22, 23, 1, 'Jerusalem4 1024x683', '2022-02-20 06:32:39', '2022-02-20 06:32:39', '006cc067-7f1f-4fa6-91a7-1e0d4022c974', NULL, NULL, NULL),
(23, 24, 1, 'Jerusalem4 1536x1024', '2022-02-20 06:32:39', '2022-02-20 06:32:39', '25b124d5-faf5-4b8e-bd74-d10ed4c10d86', NULL, NULL, NULL),
(24, 25, 1, 'Jerusalem7 1024x683', '2022-02-20 06:32:40', '2022-02-20 06:32:40', 'a6ddd8b5-3bd6-4646-a144-1e8bb7b5e141', NULL, NULL, NULL),
(25, 26, 1, 'Jerusalem7 1536x1024', '2022-02-20 06:32:40', '2022-02-20 06:32:40', 'f0351d8a-097a-40d2-af5f-566b6b297411', NULL, NULL, NULL),
(26, 27, 1, 'Jesusbeforepilate', '2022-02-20 06:32:41', '2022-02-21 11:55:29', '30e8a9a7-71fe-4678-94ea-66ba41f787c0', NULL, NULL, NULL),
(27, 28, 1, 'Kidron valley 1 1024x683', '2022-02-20 06:32:41', '2022-02-20 06:32:41', '697d321e-e07c-4516-8d91-cd1caeff97cc', NULL, NULL, NULL),
(28, 29, 1, 'Kidron valley 1 1536x1024', '2022-02-20 06:32:42', '2022-02-20 06:32:42', '2bba7aac-39ec-4461-a926-0ae3516b4337', NULL, NULL, NULL),
(29, 30, 1, 'Kidron valley 1', '2022-02-20 06:32:42', '2022-02-20 06:32:42', '7e189c25-46b1-4334-9123-44373131563c', NULL, NULL, NULL),
(30, 31, 1, 'Masada2 1 1024x683', '2022-02-20 06:32:43', '2022-02-20 06:32:43', 'f16c68cd-92a1-48e6-879a-8de5fa29387e', NULL, NULL, NULL),
(31, 32, 1, 'Masada2 1 1536x1024', '2022-02-20 06:32:43', '2022-02-20 06:32:43', '25163d1a-f4b0-4e74-9c65-46d3da8f1124', NULL, NULL, NULL),
(32, 33, 1, 'Pilates judgment seat 1024x683', '2022-02-20 06:32:44', '2022-02-20 06:32:44', '0ef1d995-955e-436c-8dc7-728379730d6f', NULL, NULL, NULL),
(33, 34, 1, 'Pilates judgment seat 1536x1024', '2022-02-20 06:32:44', '2022-02-20 06:32:44', '2ea84e0b-d910-42ba-9241-b70e0ce01861', NULL, NULL, NULL),
(34, 35, 1, 'Pilates judgment seat2 1024x683', '2022-02-20 06:32:45', '2022-02-20 06:32:45', '47e004c9-ae5b-4952-b37c-724f25705775', NULL, NULL, NULL),
(35, 36, 1, 'Pilates judgment seat2 1536x1024', '2022-02-20 06:32:45', '2022-02-20 06:32:45', '70c2f8ec-efe9-4f0a-81b0-01a3f298aacd', NULL, NULL, NULL),
(36, 37, 1, 'Pilates judgment seat3 1024x683', '2022-02-20 06:32:46', '2022-02-20 06:32:46', 'c0334288-a637-4cb9-99db-15c8228df812', NULL, NULL, NULL),
(37, 38, 1, 'Pilates judgment seat3 1536x1024', '2022-02-20 06:32:46', '2022-02-20 06:32:46', '45a70ee6-d096-4368-b03e-b5520ec199c7', NULL, NULL, NULL),
(38, 39, 1, 'Pilates judgment seat4 1024x683', '2022-02-20 06:32:46', '2022-02-20 06:32:46', 'ad8d8e9c-abc8-4303-8d96-1b55629a31ec', NULL, NULL, NULL),
(39, 40, 1, 'Pilates judgment seat4 1536x1024', '2022-02-20 06:32:47', '2022-02-20 06:32:47', 'b6e56ec7-a505-4858-82c7-0c9e3c838ced', NULL, NULL, NULL),
(40, 41, 1, 'Pilates judgment seat7 1024x683', '2022-02-20 06:32:48', '2022-02-20 06:32:48', '72076bf3-422f-413e-9d02-9b9fa59f3f8a', NULL, NULL, NULL),
(41, 42, 1, 'Pilates judgment seat7 1536x1024', '2022-02-20 06:32:48', '2022-02-20 06:32:48', 'a8ac3e2f-66f5-499a-b038-03fe8cbe15c5', NULL, NULL, NULL),
(42, 43, 1, 'Tamar', '2022-02-20 06:32:49', '2022-02-20 06:32:49', '2a31144e-4593-44a9-95c9-adb03985be4d', NULL, NULL, NULL),
(43, 44, 1, 'Thorns 2 1024x683', '2022-02-20 06:32:49', '2022-02-20 06:32:49', 'a366f78e-7133-42e7-85ae-ab8a09a7deb6', NULL, NULL, NULL),
(44, 45, 1, 'Thorns 2 1536x1024', '2022-02-20 06:32:50', '2022-02-20 06:32:50', 'bbf096e1-428b-455f-9d2d-eb63cc6bd060', NULL, NULL, NULL),
(45, 47, 1, 'Galleries', '2022-02-20 06:37:12', '2022-02-20 06:37:12', '10dcfa90-ddef-49b3-acc9-a589a39db473', NULL, NULL, NULL),
(46, 49, 1, 'Galleries', '2022-02-20 06:41:13', '2022-02-20 06:41:13', '48c00042-d785-4153-af33-6dca7e5a9f21', NULL, NULL, NULL),
(47, 51, 1, 'Galleries', '2022-02-20 06:49:15', '2022-02-20 06:49:15', '2879d317-bd05-4ff0-a329-c6535c3bda45', NULL, NULL, NULL),
(48, 53, 1, NULL, '2022-02-20 16:27:44', '2022-02-20 17:16:08', '88fe8cd2-2e06-4b20-b6e4-9470a96b8108', NULL, '<p>Welcome everyone! I\'m Ryan Cataldo, the founder of Take A Closer Look Ministries and the administrator for Take A Closer Look Ministries\' website and social media. I earned my M.A. in Religious Studies from the University of North Carolina at Charlotte. I love to study and discuss the Christian faith so do not hesitate to reach out with questions or requests!</p>', 'Ryan Cataldo'),
(49, 54, 1, 'Screenshot 20200909 181944 Gallery e1599703093436 1', '2022-02-20 16:31:08', '2022-02-20 16:31:08', 'd2a51497-a844-4676-9387-101c0973097f', NULL, NULL, NULL),
(50, 55, 1, 'New Testament', '2022-02-20 16:40:34', '2022-02-20 16:40:34', '44c82f15-d525-4904-b236-531b08690b65', NULL, NULL, NULL),
(51, 56, 1, 'Apologetics', '2022-02-20 16:40:48', '2022-02-20 16:40:48', 'a4030022-584c-4910-b3c1-4ed4284c40bf', NULL, NULL, NULL),
(52, 57, 1, 'Videos', '2022-02-20 16:40:56', '2022-02-20 16:40:56', '1dace247-874b-495f-abb4-4378168992ea', NULL, NULL, NULL),
(53, 58, 1, 'Who Then Is This, That Even The Wind and Sea Obey Him?', '2022-02-20 16:48:03', '2022-02-21 11:53:35', '3865c6c5-1ff1-480a-bc72-7789bea58952', '<blockquote><p><em><strong>“The more deeply we probe the Jewish and Old Testament roots of the gospel narratives, the more clearly we come to see that each of the four evangelists in diverse ways are identifying Jesus as the embodiment of the God of Israel.”</strong></em></p></blockquote>\r\n<p>When we talk about the deity of Jesus we usually speak of Him being both divine and human, co-eternal, pre-existent, etc. with terms and jargon associated with the doctrine of the Trinity. All of this is fine and serves a purpose when trying to hammer out the details of Jesus’ nature. But I would like to offer a fresh way of understanding the nature of Jesus, one that is Biblical and in tune with how the Gospel writers portray Jesus. The view I want to present is summarized nicely by Richard B. Hays: <em>“The more deeply we probe the Jewish and Old Testament roots of the gospel narratives, the more clearly we come to see that each of the four evangelists in diverse ways are identifying Jesus as the embodiment of the God of Israel.”</em> The Gospel writers constantly allude to, echo, and quote the Hebrew scriptures–they are the matrix in which the Gospels, and in this case, Jesus, need to be understood. All of the examples in this blog are from Richard B. Hays’s “Reading Backwards: Figural Christology and the Fourfold Gospel Witness”. Hays has produced the most cutting edge work on intertextuality, so if you haven’t read his work then you absolutely need to.</p>\r\n<p><strong>Example 1</strong></p>\r\n<p>In <strong>Luke 13:34</strong> Jesus laments over a disobedient Jerusalem that is about to undergo divine judgment:</p>\r\n<p><em>“O Jerusalem, Jerusalem, killing the prophets and stoning those who are sent to you! <strong>How often I have desired to gather your children together as a hen gathers her brood under her wings</strong>, and you were not willing!”</em></p>\r\n<p>For a reader or listener who is steeped in Israel’s sacred scriptures, the imagery of a bird spreading her wings to protect her young evokes the imagery used in the OT where God is depicted metaphorically as a bird spreading its wings to protect Israel:</p>\r\n<p><strong>Deuteronomy 32:10-12</strong> <em>“In a desert land he found him, in a barren and howling waste. He shielded him and cared for him; he guarded him as the apple of his eye,<strong> like an eagle that stirs up its nest and hovers over its young, that spreads its wings to catch them and carries them aloft. The Lord alone led him</strong>; no foreign god was with him.”</em></p>\r\n<p><strong>Psalm 91:1-4a</strong> <em>“Whoever dwells in the shelter of the <strong>Most High</strong> will rest in the shadow of the Almighty. I will say of the Lord, ‘He is my refuge and my fortress, my <strong>God</strong>, in whom I trust.’ Surely he will save you from the fowler’s snare and from the deadly pestilence. <strong>He will cover you with his feathers, and under his wings you will find refuge.</strong>”</em></p>\r\n<p>In Luke 13 Jesus casts Himself into the role of Yahweh by creating an intertextual link to various passages in which God’s providence is depicted metaphorically as a bird spreading its wings to protect Israel. Jesus uses the imagery and applies it to Himself. It is also important to note that in Luke’s narrative Jesus made no prior visits to Jerusalem, yet he laments that he has often desired to gather her children and she was not willing!</p>\r\n<p><strong>Example 2</strong></p>\r\n<p>In <strong>Mark 4:35-41</strong> the disciples approach Jesus in fear of the raging storm that is about to overcome them and cause them to drown. After Jesus rebukes and calms the storm, the disciples, in awe, ask each other: “<strong>Who then is this, that even the wind and sea obey Him?</strong>”</p>\r\n<p>Mark purposefully leaves the leading question unanswered, which is typical of his gospel. He wants the reader to engage in the mystery and elusiveness of Jesus’ identity, mission and teachings, which the disciples seem to be confused about throughout. Mark does not spoon-feed the reader like the other Gospel writers do (see Matthew 16:12, for example), but he expects the reader to be diligent enough to figure it out. For any reader well acquainted with Israel’s sacred scriptures, which serve as the background to Mark’s Gospel, there is only one right answer to the disciples’ question:</p>\r\n<p><strong>Psalm 107:23-29</strong><em>“Some went out on the sea in ships; they were merchants on the mighty waters. They saw the works of the Lord, his wonderful deeds in the deep. For he spoke and stirred up a tempest that lifted high the waves. They mounted up to the heavens and went down to the depths;<strong> in their peril their courage melted away [cf. Mark 4:40]</strong>. They reeled and staggered like drunkards; they were at their wits’ end. <strong>Then they cried out to the Lord in their trouble, and he brought them out of their distress. He stilled the storm to a whisper; the waves of the sea were hushed.</strong>”</em></p>\r\n<p>According to Psalm 107, the answer to their question is that Jesus is Yahweh, the One whom the wind and sea obey. This also resonates with various Old Testament passages that depict God as the one who subdues chaos which is represented by unruly waters (if you aren’t familiar with the ancient significance of water and chaos then click <a href=\"https://www.youtube.com/watch?v=7hmESW7KM3I\" target=\"_blank\" rel=\"noreferrer noopener\"><em><strong>here</strong></em></a> for a great 5-minute breakdown). As Hays points out, once we familiarize ourselves with the Jewish roots of the Gospels it becomes evident that Jesus is the embodiment of Israel’s God.</p>\r\n<p>There are tons of examples of this phenomenon in the Gospels. It’s a beautiful and unique way of presenting Jesus as God. Another blog on this topic will be coming soon!</p>', NULL, NULL),
(54, 59, 1, 'Picture', '2022-02-20 16:49:26', '2022-02-20 16:49:26', '42351673-1193-4bc2-a509-f706c923f80d', NULL, NULL, NULL),
(55, 60, 1, 'Who Then Is This, That Even The Wind and Sea Obey Him?', '2022-02-20 16:50:22', '2022-02-20 16:50:22', '3a5e428f-49b9-461d-93c9-83e7710920a6', '<blockquote><p><em><strong>“The more deeply we probe the Jewish and Old Testament roots of the gospel narratives, the more clearly we come to see that each of the four evangelists in diverse ways are identifying Jesus as the embodiment of the God of Israel.”</strong></em></p></blockquote>\r\n<p>When we talk about the deity of Jesus we usually speak of Him being both divine and human, co-eternal, pre-existent, etc. with terms and jargon associated with the doctrine of the Trinity. All of this is fine and serves a purpose when trying to hammer out the details of Jesus’ nature. But I would like to offer a fresh way of understanding the nature of Jesus, one that is Biblical and in tune with how the Gospel writers portray Jesus. The view I want to present is summarized nicely by Richard B. Hays: <em>“The more deeply we probe the Jewish and Old Testament roots of the gospel narratives, the more clearly we come to see that each of the four evangelists in diverse ways are identifying Jesus as the embodiment of the God of Israel.”</em> The Gospel writers constantly allude to, echo, and quote the Hebrew scriptures–they are the matrix in which the Gospels, and in this case, Jesus, need to be understood. All of the examples in this blog are from Richard B. Hays’s “Reading Backwards: Figural Christology and the Fourfold Gospel Witness”. Hays has produced the most cutting edge work on intertextuality, so if you haven’t read his work then you absolutely need to.</p>\r\n<p><strong>Example 1</strong></p>\r\n<p>In <strong>Luke 13:34</strong> Jesus laments over a disobedient Jerusalem that is about to undergo divine judgment:</p>\r\n<p><em>“O Jerusalem, Jerusalem, killing the prophets and stoning those who are sent to you! <strong>How often I have desired to gather your children together as a hen gathers her brood under her wings</strong>, and you were not willing!”</em></p>\r\n<p>For a reader or listener who is steeped in Israel’s sacred scriptures, the imagery of a bird spreading her wings to protect her young evokes the imagery used in the OT where God is depicted metaphorically as a bird spreading its wings to protect Israel:</p>\r\n<p><strong>Deuteronomy 32:10-12</strong> <em>“In a desert land he found him, in a barren and howling waste. He shielded him and cared for him; he guarded him as the apple of his eye,<strong> like an eagle that stirs up its nest and hovers over its young, that spreads its wings to catch them and carries them aloft. The Lord alone led him</strong>; no foreign god was with him.”</em></p>\r\n<p><strong>Psalm 91:1-4a</strong> <em>“Whoever dwells in the shelter of the <strong>Most High</strong> will rest in the shadow of the Almighty. I will say of the Lord, ‘He is my refuge and my fortress, my <strong>God</strong>, in whom I trust.’ Surely he will save you from the fowler’s snare and from the deadly pestilence. <strong>He will cover you with his feathers, and under his wings you will find refuge.</strong>”</em></p>\r\n<p>In Luke 13 Jesus casts Himself into the role of Yahweh by creating an intertextual link to various passages in which God’s providence is depicted metaphorically as a bird spreading its wings to protect Israel. Jesus uses the imagery and applies it to Himself. It is also important to note that in Luke’s narrative Jesus made no prior visits to Jerusalem, yet he laments that he has often desired to gather her children and she was not willing!</p>\r\n<p><strong>Example 2</strong></p>\r\n<p>In <strong>Mark 4:35-41</strong> the disciples approach Jesus in fear of the raging storm that is about to overcome them and cause them to drown. After Jesus rebukes and calms the storm, the disciples, in awe, ask each other: “<strong>Who then is this, that even the wind and sea obey Him?</strong>”</p>\r\n<p>Mark purposefully leaves the leading question unanswered, which is typical of his gospel. He wants the reader to engage in the mystery and elusiveness of Jesus’ identity, mission and teachings, which the disciples seem to be confused about throughout. Mark does not spoon-feed the reader like the other Gospel writers do (see Matthew 16:12, for example), but he expects the reader to be diligent enough to figure it out. For any reader well acquainted with Israel’s sacred scriptures, which serve as the background to Mark’s Gospel, there is only one right answer to the disciples’ question:</p>\r\n<p><strong>Psalm 107:23-29</strong><em>“Some went out on the sea in ships; they were merchants on the mighty waters. They saw the works of the Lord, his wonderful deeds in the deep. For he spoke and stirred up a tempest that lifted high the waves. They mounted up to the heavens and went down to the depths;<strong> in their peril their courage melted away [cf. Mark 4:40]</strong>. They reeled and staggered like drunkards; they were at their wits’ end. <strong>Then they cried out to the Lord in their trouble, and he brought them out of their distress. He stilled the storm to a whisper; the waves of the sea were hushed.</strong>”</em></p>\r\n<p>According to Psalm 107, the answer to their question is that Jesus is Yahweh, the One whom the wind and sea obey. This also resonates with various Old Testament passages that depict God as the one who subdues chaos which is represented by unruly waters (if you aren’t familiar with the ancient significance of water and chaos then click <a href=\"https://www.youtube.com/watch?v=7hmESW7KM3I\" target=\"_blank\" rel=\"noreferrer noopener\"><em><strong>here</strong></em></a> for a great 5-minute breakdown). As Hays points out, once we familiarize ourselves with the Jewish roots of the Gospels it becomes evident that Jesus is the embodiment of Israel’s God.</p>\r\n<p>There are tons of examples of this phenomenon in the Gospels. It’s a beautiful and unique way of presenting Jesus as God. Another blog on this topic will be coming soon!</p>', NULL, NULL),
(57, 62, 1, 'Picture', '2022-02-21 11:53:27', '2022-02-21 11:53:27', '6c68369e-de91-4b42-9d3d-84dcfc73f8bf', NULL, NULL, NULL),
(58, 63, 1, 'Who Then Is This, That Even The Wind and Sea Obey Him?', '2022-02-21 11:53:35', '2022-02-21 11:53:35', 'd6684b43-1619-489a-a6b3-dfb862455d69', '<blockquote><p><em><strong>“The more deeply we probe the Jewish and Old Testament roots of the gospel narratives, the more clearly we come to see that each of the four evangelists in diverse ways are identifying Jesus as the embodiment of the God of Israel.”</strong></em></p></blockquote>\r\n<p>When we talk about the deity of Jesus we usually speak of Him being both divine and human, co-eternal, pre-existent, etc. with terms and jargon associated with the doctrine of the Trinity. All of this is fine and serves a purpose when trying to hammer out the details of Jesus’ nature. But I would like to offer a fresh way of understanding the nature of Jesus, one that is Biblical and in tune with how the Gospel writers portray Jesus. The view I want to present is summarized nicely by Richard B. Hays: <em>“The more deeply we probe the Jewish and Old Testament roots of the gospel narratives, the more clearly we come to see that each of the four evangelists in diverse ways are identifying Jesus as the embodiment of the God of Israel.”</em> The Gospel writers constantly allude to, echo, and quote the Hebrew scriptures–they are the matrix in which the Gospels, and in this case, Jesus, need to be understood. All of the examples in this blog are from Richard B. Hays’s “Reading Backwards: Figural Christology and the Fourfold Gospel Witness”. Hays has produced the most cutting edge work on intertextuality, so if you haven’t read his work then you absolutely need to.</p>\r\n<p><strong>Example 1</strong></p>\r\n<p>In <strong>Luke 13:34</strong> Jesus laments over a disobedient Jerusalem that is about to undergo divine judgment:</p>\r\n<p><em>“O Jerusalem, Jerusalem, killing the prophets and stoning those who are sent to you! <strong>How often I have desired to gather your children together as a hen gathers her brood under her wings</strong>, and you were not willing!”</em></p>\r\n<p>For a reader or listener who is steeped in Israel’s sacred scriptures, the imagery of a bird spreading her wings to protect her young evokes the imagery used in the OT where God is depicted metaphorically as a bird spreading its wings to protect Israel:</p>\r\n<p><strong>Deuteronomy 32:10-12</strong> <em>“In a desert land he found him, in a barren and howling waste. He shielded him and cared for him; he guarded him as the apple of his eye,<strong> like an eagle that stirs up its nest and hovers over its young, that spreads its wings to catch them and carries them aloft. The Lord alone led him</strong>; no foreign god was with him.”</em></p>\r\n<p><strong>Psalm 91:1-4a</strong> <em>“Whoever dwells in the shelter of the <strong>Most High</strong> will rest in the shadow of the Almighty. I will say of the Lord, ‘He is my refuge and my fortress, my <strong>God</strong>, in whom I trust.’ Surely he will save you from the fowler’s snare and from the deadly pestilence. <strong>He will cover you with his feathers, and under his wings you will find refuge.</strong>”</em></p>\r\n<p>In Luke 13 Jesus casts Himself into the role of Yahweh by creating an intertextual link to various passages in which God’s providence is depicted metaphorically as a bird spreading its wings to protect Israel. Jesus uses the imagery and applies it to Himself. It is also important to note that in Luke’s narrative Jesus made no prior visits to Jerusalem, yet he laments that he has often desired to gather her children and she was not willing!</p>\r\n<p><strong>Example 2</strong></p>\r\n<p>In <strong>Mark 4:35-41</strong> the disciples approach Jesus in fear of the raging storm that is about to overcome them and cause them to drown. After Jesus rebukes and calms the storm, the disciples, in awe, ask each other: “<strong>Who then is this, that even the wind and sea obey Him?</strong>”</p>\r\n<p>Mark purposefully leaves the leading question unanswered, which is typical of his gospel. He wants the reader to engage in the mystery and elusiveness of Jesus’ identity, mission and teachings, which the disciples seem to be confused about throughout. Mark does not spoon-feed the reader like the other Gospel writers do (see Matthew 16:12, for example), but he expects the reader to be diligent enough to figure it out. For any reader well acquainted with Israel’s sacred scriptures, which serve as the background to Mark’s Gospel, there is only one right answer to the disciples’ question:</p>\r\n<p><strong>Psalm 107:23-29</strong><em>“Some went out on the sea in ships; they were merchants on the mighty waters. They saw the works of the Lord, his wonderful deeds in the deep. For he spoke and stirred up a tempest that lifted high the waves. They mounted up to the heavens and went down to the depths;<strong> in their peril their courage melted away [cf. Mark 4:40]</strong>. They reeled and staggered like drunkards; they were at their wits’ end. <strong>Then they cried out to the Lord in their trouble, and he brought them out of their distress. He stilled the storm to a whisper; the waves of the sea were hushed.</strong>”</em></p>\r\n<p>According to Psalm 107, the answer to their question is that Jesus is Yahweh, the One whom the wind and sea obey. This also resonates with various Old Testament passages that depict God as the one who subdues chaos which is represented by unruly waters (if you aren’t familiar with the ancient significance of water and chaos then click <a href=\"https://www.youtube.com/watch?v=7hmESW7KM3I\" target=\"_blank\" rel=\"noreferrer noopener\"><em><strong>here</strong></em></a> for a great 5-minute breakdown). As Hays points out, once we familiarize ourselves with the Jewish roots of the Gospels it becomes evident that Jesus is the embodiment of Israel’s God.</p>\r\n<p>There are tons of examples of this phenomenon in the Gospels. It’s a beautiful and unique way of presenting Jesus as God. Another blog on this topic will be coming soon!</p>', NULL, NULL),
(59, 64, 1, 'Jesus: The Historical Evidence Pt. 1', '2022-02-21 11:53:47', '2022-02-21 11:55:34', '42bd8cb8-8abe-41e4-8c77-703b5f20cd72', '<blockquote><p><strong><em>\"...we have a letter from someone writing in the first century, shortly after Jesus’ death, who personally knew Jesus’ closest disciple Peter and Jesus’ brother James.\"</em></strong></p></blockquote>\r\n<p>There is no scholar of the ancient world (believer or non-believer) teaching at any university in the West who denies Jesus existed. For some strange reason, the view that Jesus never existed, known as the “Mythicist” view, has been spreading on the internet recently. Let me speak forcefully but candidly about this: Jesus definitely existed and he is one of the best-attested figures from the ancient world. We have Roman, Jewish, and Christian sources who all attest to the historical Jesus, and there should be no doubt about this. Starting with this blog, I want to chronicle the evidence clearly and concisely.</p>\r\n<p><strong>Flavius Josephus</strong> (37 – c. 100 CE), a Jewish historian from the first century, is the earliest non-biblical reference we have to Jesus. Although he makes two references to Jesus, one is contested as a later Christian interpolation or embellishment. However, the other reference is accepted as authentic. The accepted reference to Jesus (and his brother James) is found in his work <strong>Antiquities of the Jews 20.9.1.</strong> The text reads:</p>\r\n<p><em>“. . . [S]o he (Albinus) assembled the Sanhedrin of judges, and brought before them the<strong> brother of Jesus, who was called the Christ, whose name was James</strong>, and some others, and when he had formed an accusation against them as breakers of the law, he delivered them to be stoned . . .“</em></p>\r\n<p>It is important to point out that the fact that Jesus had a brother named James is corroborated and multiply attested in two of the Synoptic Gospels (Matthew 13:55 Mark 6:3), and Paul’s epistle to the Galatians. Early Church tradition (Hegesippus, c. 170 CE) also maintains that James the Just was stoned by the religious authorities in Jerusalem, which makes Josephus’s account more credible. Furthermore, Josephus was a contemporary of James and lived through the time of James’s alleged martyrdom (c. 62 CE), so he could have very well received his information from an eyewitness source or been an eyewitness himself. It would be unthinkable for James to be stoned for the cause of his brother Jesus, who was believed to be the messiah, if he never existed. Or for a movement to begin in Jerusalem, based on the public crucifixion and empty tomb of a man who never existed. To read the account of James’s martyrdom by Hegesippus click <a href=\"http://earlychristianwritings.com/text/hegesippus.html\" target=\"_blank\" rel=\"noreferrer noopener\"><strong><em>here.</em></strong></a></p>\r\n<p>The best and earliest evidence we have for the existence of Jesus, which should put all the conspiracy theories to rest, is Saul of Tarsus (known to most as the Apostle Paul) and his epistle to the Galatians, written circa 50 CE just two decades after the death of Jesus. Out of the thirteen letters written in Paul’s name, seven are accepted by virtually all scholars as definitely belonging to Paul. Galatians is one of these seven. In <strong>Galatians 1:18-19</strong>, Paul talks about the time he went to Jerusalem, where he met with Cephas (Peter) and “James the Lord’s brother.” This is important for historians because Paul is making an off the cuff comment about “James the Lord’s brother.” He knows that his audience is well aware of who James is–Jesus’ brother who was head of the Church in Jerusalem (see Acts 15). Moreover, Paul is contrasting James with Peter. He is saying that he met with Peter (an apostle) and with James the Lord’s brother. So here we have a letter from someone writing in the first century, shortly after Jesus’ death, who personally knew Jesus’ closest disciple Peter and Jesus’ brother James.</p>\r\n<p>The evidence goes on and on and we will continue in the next few blogs in this series..</p>', NULL, NULL),
(60, 65, 1, 'Jesus: The Historical Evidence Pt. 1', '2022-02-21 11:55:02', '2022-02-21 11:55:02', '1174ae0f-2171-4bc8-9056-71978cf7b939', '<blockquote><p><strong><em>\"...we have a letter from someone writing in the first century, shortly after Jesus’ death, who personally knew Jesus’ closest disciple Peter and Jesus’ brother James.\"</em></strong></p></blockquote>\r\n<p>There is no scholar of the ancient world (believer or non-believer) teaching at any university in the West who denies Jesus existed. For some strange reason, the view that Jesus never existed, known as the “Mythicist” view, has been spreading on the internet recently. Let me speak forcefully but candidly about this: Jesus definitely existed and he is one of the best-attested figures from the ancient world. We have Roman, Jewish, and Christian sources who all attest to the historical Jesus, and there should be no doubt about this. Starting with this blog, I want to chronicle the evidence clearly and concisely.</p>\r\n<p><strong>Flavius Josephus</strong> (37 – c. 100 CE), a Jewish historian from the first century, is the earliest non-biblical reference we have to Jesus. Although he makes two references to Jesus, one is contested as a later Christian interpolation or embellishment. However, the other reference is accepted as authentic. The accepted reference to Jesus (and his brother James) is found in his work <strong>Antiquities of the Jews 20.9.1.</strong> The text reads:</p>\r\n<p><em>“. . . [S]o he (Albinus) assembled the Sanhedrin of judges, and brought before them the<strong> brother of Jesus, who was called the Christ, whose name was James</strong>, and some others, and when he had formed an accusation against them as breakers of the law, he delivered them to be stoned . . .“</em></p>\r\n<p>It is important to point out that the fact that Jesus had a brother named James is corroborated and multiply attested in two of the Synoptic Gospels (Matthew 13:55 Mark 6:3), and Paul’s epistle to the Galatians. Early Church tradition (Hegesippus, c. 170 CE) also maintains that James the Just was stoned by the religious authorities in Jerusalem, which makes Josephus’s account more credible. Furthermore, Josephus was a contemporary of James and lived through the time of James’s alleged martyrdom (c. 62 CE), so he could have very well received his information from an eyewitness source or been an eyewitness himself. It would be unthinkable for James to be stoned for the cause of his brother Jesus, who was believed to be the messiah, if he never existed. Or for a movement to begin in Jerusalem, based on the public crucifixion and empty tomb of a man who never existed. To read the account of James’s martyrdom by Hegesippus click <a href=\"http://earlychristianwritings.com/text/hegesippus.html\" target=\"_blank\" rel=\"noreferrer noopener\"><strong><em>here.</em></strong></a></p>\r\n<p>The best and earliest evidence we have for the existence of Jesus, which should put all the conspiracy theories to rest, is Saul of Tarsus (known to most as the Apostle Paul) and his epistle to the Galatians, written circa 50 CE just two decades after the death of Jesus. Out of the thirteen letters written in Paul’s name, seven are accepted by virtually all scholars as definitely belonging to Paul. Galatians is one of these seven. In <strong>Galatians 1:18-19</strong>, Paul talks about the time he went to Jerusalem, where he met with Cephas (Peter) and “James the Lord’s brother.” This is important for historians because Paul is making an off the cuff comment about “James the Lord’s brother.” He knows that his audience is well aware of who James is–Jesus’ brother who was head of the Church in Jerusalem (see Acts 15). Moreover, Paul is contrasting James with Peter. He is saying that he met with Peter (an apostle) and with James the Lord’s brother. So here we have a letter from someone writing in the first century, shortly after Jesus’ death, who personally knew Jesus’ closest disciple Peter and Jesus’ brother James.</p>\r\n<p>The evidence goes on and on and we will continue in the next few blogs in this series..</p>', NULL, NULL),
(62, 67, 1, 'Jesusbeforepilate', '2022-02-21 11:55:26', '2022-02-21 11:55:26', 'eeaec5be-0fb4-43b9-86ae-d9002184512c', NULL, NULL, NULL),
(63, 68, 1, 'Jesus: The Historical Evidence Pt. 1', '2022-02-21 11:55:34', '2022-02-21 11:55:34', '9a4673fd-6fc0-4085-8f28-6d0e1fcc0517', '<blockquote><p><strong><em>\"...we have a letter from someone writing in the first century, shortly after Jesus’ death, who personally knew Jesus’ closest disciple Peter and Jesus’ brother James.\"</em></strong></p></blockquote>\r\n<p>There is no scholar of the ancient world (believer or non-believer) teaching at any university in the West who denies Jesus existed. For some strange reason, the view that Jesus never existed, known as the “Mythicist” view, has been spreading on the internet recently. Let me speak forcefully but candidly about this: Jesus definitely existed and he is one of the best-attested figures from the ancient world. We have Roman, Jewish, and Christian sources who all attest to the historical Jesus, and there should be no doubt about this. Starting with this blog, I want to chronicle the evidence clearly and concisely.</p>\r\n<p><strong>Flavius Josephus</strong> (37 – c. 100 CE), a Jewish historian from the first century, is the earliest non-biblical reference we have to Jesus. Although he makes two references to Jesus, one is contested as a later Christian interpolation or embellishment. However, the other reference is accepted as authentic. The accepted reference to Jesus (and his brother James) is found in his work <strong>Antiquities of the Jews 20.9.1.</strong> The text reads:</p>\r\n<p><em>“. . . [S]o he (Albinus) assembled the Sanhedrin of judges, and brought before them the<strong> brother of Jesus, who was called the Christ, whose name was James</strong>, and some others, and when he had formed an accusation against them as breakers of the law, he delivered them to be stoned . . .“</em></p>\r\n<p>It is important to point out that the fact that Jesus had a brother named James is corroborated and multiply attested in two of the Synoptic Gospels (Matthew 13:55 Mark 6:3), and Paul’s epistle to the Galatians. Early Church tradition (Hegesippus, c. 170 CE) also maintains that James the Just was stoned by the religious authorities in Jerusalem, which makes Josephus’s account more credible. Furthermore, Josephus was a contemporary of James and lived through the time of James’s alleged martyrdom (c. 62 CE), so he could have very well received his information from an eyewitness source or been an eyewitness himself. It would be unthinkable for James to be stoned for the cause of his brother Jesus, who was believed to be the messiah, if he never existed. Or for a movement to begin in Jerusalem, based on the public crucifixion and empty tomb of a man who never existed. To read the account of James’s martyrdom by Hegesippus click <a href=\"http://earlychristianwritings.com/text/hegesippus.html\" target=\"_blank\" rel=\"noreferrer noopener\"><strong><em>here.</em></strong></a></p>\r\n<p>The best and earliest evidence we have for the existence of Jesus, which should put all the conspiracy theories to rest, is Saul of Tarsus (known to most as the Apostle Paul) and his epistle to the Galatians, written circa 50 CE just two decades after the death of Jesus. Out of the thirteen letters written in Paul’s name, seven are accepted by virtually all scholars as definitely belonging to Paul. Galatians is one of these seven. In <strong>Galatians 1:18-19</strong>, Paul talks about the time he went to Jerusalem, where he met with Cephas (Peter) and “James the Lord’s brother.” This is important for historians because Paul is making an off the cuff comment about “James the Lord’s brother.” He knows that his audience is well aware of who James is–Jesus’ brother who was head of the Church in Jerusalem (see Acts 15). Moreover, Paul is contrasting James with Peter. He is saying that he met with Peter (an apostle) and with James the Lord’s brother. So here we have a letter from someone writing in the first century, shortly after Jesus’ death, who personally knew Jesus’ closest disciple Peter and Jesus’ brother James.</p>\r\n<p>The evidence goes on and on and we will continue in the next few blogs in this series..</p>', NULL, NULL);
INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_pageContent_vgbilypy`, `field_authorBio_njoljosf`, `field_authorName_aqetzcun`) VALUES
(64, 69, 1, 'Jesus: The Historical Evidence Pt. 2', '2022-02-21 11:55:48', '2022-02-21 11:56:30', 'c09e384f-29c8-47c3-b9ae-e4dd64b070cb', '<blockquote><p><strong><em>“They reported that he had appeared to them three days after his crucifixion and that he was alive.”</em></strong></p></blockquote>\r\n<p>In the first post of this blog series, I started to present what I consider to be the earliest biblical and extrabiblical evidence for the historical Jesus of Nazareth. In this post, I will continue to give the earliest extra-biblical evidence for Jesus, namely <strong>Josephus’s</strong> first reference in his work <strong><em>Antiquities</em> (18.3.3</strong>), and <strong>Tacitus’s</strong> reference in his work <strong><em>Annals (15.44).</em></strong></p>\r\n<p>In the first post, I chose to begin with Josephus’s second reference to Jesus because there is no controversy regarding its authenticity. However, his first reference is actually the earliest and most informative extra-biblical reference to Jesus that we have, and we must address some of the misnomers out there to appreciate its significance.</p>\r\n<p>The standard text of Josephus’s first reference <strong>(<em>Antiquities</em> 18.3.3)</strong> reads as follows:</p>\r\n<p>“Now, there was about this time Jesus, a wise man, if it be lawful to call him a man, for he was a doer of wonderful works — a teacher of such men as receive the truth with pleasure. He drew over to him both many of the Jews, and many of the Gentiles. He was [the] Christ; and when Pilate, at the suggestion of the principal men amongst us, had condemned him to the cross, those that loved him at the first did not forsake him, for he appeared to them alive again the third day, as the divine prophets had foretold these and ten thousand other wonderful things concerning him; and the tribe of Christians, so named from him, are not extinct at this day.“</p>\r\n<p>The misnomer that I have witnessed people espousing is that the entire passage is inauthentic and is a Christian interpolation. This is a minority view. The large majority of scholars believe the passage contains Christian interpolations in what was original authentic material by Josephus. This view is supported by a different manuscript tradition of Josephus’s writings that dates back to the tenth century and contains a version of the contested passage that is more likely to reflect the original unembellished version of Josephus’s reference to Jesus. It reads as follows:</p>\r\n<p><em>“At this time there was a wise man called Jesus, and his conduct was good, and he was known to be virtuous. Many people among the Jews and the other nations became his disciples. Pilate condemned him to be crucified and to die. But those who had become his disciples did not abandon his discipleship. They reported that he had appeared to them three days after his crucifixion and that he was alive. Accordingly, he was perhaps the Messiah, concerning whom the prophets have reported wonders. And the tribe of the Christians, so named after him, has not disappeared to this day.”</em></p>\r\n<p>John P. Meier is a Biblical Scholar, author, and Professor of Theology (New Testament) at Notre Dame University. He argues convincingly that when one deletes the obvious Christian additions to the text, an authentic core remains that could easily go back to Josephus. Interestingly enough, Meier’s redacted version of the passage reflects rather closely that of the manuscript tradition mentioned above. There are several convincing reasons to think that the passage contains authentic and original material, which is why the majority of historians hold to this view. To read about them click <a href=\"https://www.namb.net/apologetics-blog/josephus-and-jesus/?fbclid=IwAR3NVVvou-Dxs4iIf3TpmUSYgdxTCqpfB_xyv9DKQ8Nj4FcAcETSE0VnjX4\" target=\"_blank\" rel=\"noreferrer noopener\"><strong><em>here</em></strong></a>.</p>\r\n<p>This remarkable passage by Josephus, which speaks about Jesus and his crucifixion under Pontius Pilate, is corroborated by the Roman historian Tacitus, who lived in the first century and was a contemporary of the apostles. In <strong><em>Annals</em> 15.44</strong>, he writes:</p>\r\n<p><em>“Consequently, to get rid of the report, Nero fastened the guilt and inflicted the most exquisite tortures on a class hated for their abominations, called Christians by the populace. Christus, from whom the name had its origin, suffered the extreme penalty during the reign of Tiberius at the hands of one of our procurators, Pontius Pilatus, and a most mischievous superstition, thus checked for the moment, again broke out not only in Judæa, the first source of the evil, but even in Rome, where all things hideous and shameful from every part of the world find their centre and become popular.“</em></p>\r\n<p>According to Tacitus, Nero blamed the Great Fire of Rome on the Christians, causing them to suffer great persecution. He says that the Christians based their belief on “Christus,” who received the death penalty by Pontius Pilate during the reign of Tiberius Caesar.</p>\r\n<p>All four gospel accounts record the same events recorded by Tacitus and Josephus: Jesus was handed over by the Jewish leaders to be crucified under Pontius Pilate. This multiple independent attestation is remarkable considering we are dealing with ancient history. Skeptics tend to downplay or dismiss the abundance of evidence we have for the existence of Jesus, while believing other things from antiquity for which we have much less evidence. I have also noticed that skeptics create their own unrealistic and unhistorical standard for determining the historicity of Jesus, but not for determining the historicity of other figures or events. The evidence is overwhelming and I will continue to lay it out in the next blog post in this series.</p>\r\n<p><strong>References:</strong></p>\r\n<p>1. For more information on John P. Meier and his approach to the Josephus passage, see Frederick J. Murphy, Early Judaism: The Exile to the Time of Jesus (Grand Rapids, MI: Baker Academic, 2010), 370-71.</p>\r\n<p>2. For further discussion of Josephus and his significance for biblical research, please see Paul L. Maier, ed./trans., Josephus – The Essential Works (Grand Rapids: Kregel Publications, 1994).</p>', NULL, NULL),
(65, 70, 1, 'Jesus: The Historical Evidence Pt. 2', '2022-02-21 11:56:30', '2022-02-21 11:56:30', '8abc4830-a953-4204-92b2-c25f61c222eb', '<blockquote><p><strong><em>“They reported that he had appeared to them three days after his crucifixion and that he was alive.”</em></strong></p></blockquote>\r\n<p>In the first post of this blog series, I started to present what I consider to be the earliest biblical and extrabiblical evidence for the historical Jesus of Nazareth. In this post, I will continue to give the earliest extra-biblical evidence for Jesus, namely <strong>Josephus’s</strong> first reference in his work <strong><em>Antiquities</em> (18.3.3</strong>), and <strong>Tacitus’s</strong> reference in his work <strong><em>Annals (15.44).</em></strong></p>\r\n<p>In the first post, I chose to begin with Josephus’s second reference to Jesus because there is no controversy regarding its authenticity. However, his first reference is actually the earliest and most informative extra-biblical reference to Jesus that we have, and we must address some of the misnomers out there to appreciate its significance.</p>\r\n<p>The standard text of Josephus’s first reference <strong>(<em>Antiquities</em> 18.3.3)</strong> reads as follows:</p>\r\n<p>“Now, there was about this time Jesus, a wise man, if it be lawful to call him a man, for he was a doer of wonderful works — a teacher of such men as receive the truth with pleasure. He drew over to him both many of the Jews, and many of the Gentiles. He was [the] Christ; and when Pilate, at the suggestion of the principal men amongst us, had condemned him to the cross, those that loved him at the first did not forsake him, for he appeared to them alive again the third day, as the divine prophets had foretold these and ten thousand other wonderful things concerning him; and the tribe of Christians, so named from him, are not extinct at this day.“</p>\r\n<p>The misnomer that I have witnessed people espousing is that the entire passage is inauthentic and is a Christian interpolation. This is a minority view. The large majority of scholars believe the passage contains Christian interpolations in what was original authentic material by Josephus. This view is supported by a different manuscript tradition of Josephus’s writings that dates back to the tenth century and contains a version of the contested passage that is more likely to reflect the original unembellished version of Josephus’s reference to Jesus. It reads as follows:</p>\r\n<p><em>“At this time there was a wise man called Jesus, and his conduct was good, and he was known to be virtuous. Many people among the Jews and the other nations became his disciples. Pilate condemned him to be crucified and to die. But those who had become his disciples did not abandon his discipleship. They reported that he had appeared to them three days after his crucifixion and that he was alive. Accordingly, he was perhaps the Messiah, concerning whom the prophets have reported wonders. And the tribe of the Christians, so named after him, has not disappeared to this day.”</em></p>\r\n<p>John P. Meier is a Biblical Scholar, author, and Professor of Theology (New Testament) at Notre Dame University. He argues convincingly that when one deletes the obvious Christian additions to the text, an authentic core remains that could easily go back to Josephus. Interestingly enough, Meier’s redacted version of the passage reflects rather closely that of the manuscript tradition mentioned above. There are several convincing reasons to think that the passage contains authentic and original material, which is why the majority of historians hold to this view. To read about them click <a href=\"https://www.namb.net/apologetics-blog/josephus-and-jesus/?fbclid=IwAR3NVVvou-Dxs4iIf3TpmUSYgdxTCqpfB_xyv9DKQ8Nj4FcAcETSE0VnjX4\" target=\"_blank\" rel=\"noreferrer noopener\"><strong><em>here</em></strong></a>.</p>\r\n<p>This remarkable passage by Josephus, which speaks about Jesus and his crucifixion under Pontius Pilate, is corroborated by the Roman historian Tacitus, who lived in the first century and was a contemporary of the apostles. In <strong><em>Annals</em> 15.44</strong>, he writes:</p>\r\n<p><em>“Consequently, to get rid of the report, Nero fastened the guilt and inflicted the most exquisite tortures on a class hated for their abominations, called Christians by the populace. Christus, from whom the name had its origin, suffered the extreme penalty during the reign of Tiberius at the hands of one of our procurators, Pontius Pilatus, and a most mischievous superstition, thus checked for the moment, again broke out not only in Judæa, the first source of the evil, but even in Rome, where all things hideous and shameful from every part of the world find their centre and become popular.“</em></p>\r\n<p>According to Tacitus, Nero blamed the Great Fire of Rome on the Christians, causing them to suffer great persecution. He says that the Christians based their belief on “Christus,” who received the death penalty by Pontius Pilate during the reign of Tiberius Caesar.</p>\r\n<p>All four gospel accounts record the same events recorded by Tacitus and Josephus: Jesus was handed over by the Jewish leaders to be crucified under Pontius Pilate. This multiple independent attestation is remarkable considering we are dealing with ancient history. Skeptics tend to downplay or dismiss the abundance of evidence we have for the existence of Jesus, while believing other things from antiquity for which we have much less evidence. I have also noticed that skeptics create their own unrealistic and unhistorical standard for determining the historicity of Jesus, but not for determining the historicity of other figures or events. The evidence is overwhelming and I will continue to lay it out in the next blog post in this series.</p>\r\n<p><strong>References:</strong></p>\r\n<p>1. For more information on John P. Meier and his approach to the Josephus passage, see Frederick J. Murphy, Early Judaism: The Exile to the Time of Jesus (Grand Rapids, MI: Baker Academic, 2010), 370-71.</p>\r\n<p>2. For further discussion of Josephus and his significance for biblical research, please see Paul L. Maier, ed./trans., Josephus – The Essential Works (Grand Rapids: Kregel Publications, 1994).</p>', NULL, NULL),
(66, 71, 1, 'Yes, The Bible Contains Myth, So What?', '2022-02-21 11:56:45', '2022-02-21 11:57:58', '0f3bf9cb-13ab-43e6-84cb-d790f3193d7d', '<blockquote><p><strong><em>\"It is wholly incomprehensible to think that thousands of years ago God would have felt constrained to speak in a way that would be meaningful only to Westerners several thousand years later.”</em></strong></p></blockquote>\r\n<p>What if someone 2,000 years from now found an ancient writing from America that said “It rained cats and dogs yesterday” and began to argue whether it is scientifically possible or not for the sky to rain down cats and dogs? Perhaps people started to look for evidence to prove and argue that it really happened, eventually causing a cultural divide between the skeptics and the believers. Both parties would be missing the entire point of the text, and would look ridiculous debating about it. They would be failing to realize how the text functioned and what it was trying to communicate in its cultural context, i.e. it was raining a lot yesterday. That is exactly what we are doing today with certain sections of the Bible, especially the creation story and the flood story. This blog is mainly for those who have a heart for God but struggle with interpreting everything in the Bible literally and therefore find themselves feeling isolated or even ostracized as someone who “lacks faith.”</p>\r\n<p>The Old Testament was certainly written for us <strong>but it was not written to us</strong>. It was written to Israel. It is first and foremost God’s revelation of himself to Israel and secondarily through Israel to everyone else. Therefore, in order to properly understand what it means we must first understand what it meant for Israel in her ancient cultural context. If God wanted to reveal himself to an ancient people, he would have done so in a way that they understood–not in a modern scientific or historical way. To quote Peter Enns, “<strong><em>It is wholly incomprehensible to think that thousands of years ago God would have felt constrained to speak in a way that would be meaningful only to Westerners several thousand years later</em></strong>.” One of the ways through which people communicated certain truths in the ancient Near East was through <strong>mythic narratives</strong>.</p>\r\n<p>The story of <strong>Noah’s Flood</strong> was troubling to me when I first became a Christian because so many questions and even contradictions (e.g. the “Nephilim” existing before and after the flood) came up when trying to interpret the story literally. Sadly, many conservative American Evangelicals approach the text with the theological presupposition that the story has to be literally true according to a modernist understanding of history. In doing so they place upon the Bible a burden that it was not meant to bear, and cause many Christians to adopt a weak and indefensible position. They also cause a stumbling block for rationale and skeptically minded people who are not so quick to accept something with blind faith but are told the Bible must be interpreted literally and to question the historicity of anything in it is blasphemy. The result is a silly dialogue like the hypothetical debate I presented above. It would be like judging the authenticity of The Boy Who Cried Wolf by trying to determine its historicity, which would be missing the whole point of what the story was intended to do–communicate a certain principle, not to give an actual historical account of events. When I started to look at the flood story against its cultural backdrop of the ancient Near East, where many mythic flood stories (most likely older than the Noah account) existed, it became clear that the story is also best understood as a myth story. But what is a myth?</p>\r\n<p>The word “myth” in our modern understanding is usually synonymous to something being untrue, false, fabricated, etc. It carries with it a derogatory and negative connotation, which causes a knee jerk reaction by Christians when something in the Bible gets labeled as a myth. But we need to understand that myths in the ancient world weren’t a negative thing. Mircea Eliade defines myth as “true stories in a sense that they define reality for an individual or a society and provide models to live by.” Enns defines myth as “an ancient, premodern, prescientific way of adressing questions of ultimate origins and meaning in the form of stories: Who are we? Where do we come from?” The purpose of a myth story was not to give a scientific or literal historical account of events, but it was intended to communicate certain truths through the form of stories. Is it unthinkable for God to have allowed his revelation to come to the ancient Israelites according to a standard they understood? Many have a problem with this as if that degrades God’s Word. I think it makes it more remarkable in that we have a God who meets us according to where we are.</p>\r\n<p>The Atrahasis and Gilgamesh epics are both Akkadian flood stories that date to the second millennium BC. They both contain interesting parallels to the flood story of Noah. In both Genesis and Gilgamesh, the story ends with the main figure sending out a bird multiple times to check whether the flood had receded. Eventually, the bird doesn’t return, indicating that the flood has receded. In the Atrahasis epic, Atrahasis is warned by the god Ea of the flood that is about to be brought by the god Enlil to kill humanity. He builds a boat and saves his family and some animals. The point in bringing up these other ancient flood stories is not to insinuate that the Genesis account is a copy of older myths, but to show that they belong to the same cultural world. Israel was not influenced by that world. They were a part of that world.</p>\r\n<p>What makes the Noah story unique and inspired is not its historical accuracy as opposed to the flood myths of their pagan neighbors. They all fit the genre of myth. <strong>What makes the Genesis account unique is its theological and polemical message</strong>. The Biblical writers used something well known in their world–flood myths–as a vehicle<strong> to portray their God, the God of Israel, as the One who is sovereign over creation and who caused it to flood</strong>. It was also a way of communicating a monotheistic message, which was revolutionary in its context. The flood story needs to be understood in the long Jewish tradition it’s found in, a tradition that constantly proclaims that the <strong>God of Israel, the God of Abraham, Isaac, and Jacob is the one true God; there are no other gods</strong>. The Israelites were the only people to have a written covenant with their God. They had a fierce loyalty to Him and a deep sense of responsibility to be the people who would bear the image of the one true God and reveal Him to the pagan world around them. The flood story was one of the many ways in this long and rich tradition by which they accomplished this. It is this tradition that finds its climax and fulfillment in the person of Jesus, who is the fulfillment of God’s promises to the patriarchs and prophets, proving the God of Israel to be the one true God. Jesus Himself is the ultimate revelation of God to mankind.</p>\r\n<p><strong>Further Reading:</strong></p>\r\n<p>For a great overview of the parallels between the Old Testament and other ANE literature see Enns, Peter. <em>Inspiration and Incarnation: Evangelicals and the Problem of the Old Testamen</em>t. 2nd ed. Grand Rapids, MI: Baker Academic, 2015.</p>', NULL, NULL),
(67, 72, 1, 'Hebrew magnifying glass', '2022-02-21 11:57:40', '2022-02-21 11:57:40', '3fdf0f2d-2911-4574-8504-b7641de8c531', NULL, NULL, NULL),
(68, 73, 1, 'Yes, The Bible Contains Myth, So What?', '2022-02-21 11:57:58', '2022-02-21 11:57:58', 'd83210ff-0662-4391-8054-69ddffb6ab45', '<blockquote><p><strong><em>\"It is wholly incomprehensible to think that thousands of years ago God would have felt constrained to speak in a way that would be meaningful only to Westerners several thousand years later.”</em></strong></p></blockquote>\r\n<p>What if someone 2,000 years from now found an ancient writing from America that said “It rained cats and dogs yesterday” and began to argue whether it is scientifically possible or not for the sky to rain down cats and dogs? Perhaps people started to look for evidence to prove and argue that it really happened, eventually causing a cultural divide between the skeptics and the believers. Both parties would be missing the entire point of the text, and would look ridiculous debating about it. They would be failing to realize how the text functioned and what it was trying to communicate in its cultural context, i.e. it was raining a lot yesterday. That is exactly what we are doing today with certain sections of the Bible, especially the creation story and the flood story. This blog is mainly for those who have a heart for God but struggle with interpreting everything in the Bible literally and therefore find themselves feeling isolated or even ostracized as someone who “lacks faith.”</p>\r\n<p>The Old Testament was certainly written for us <strong>but it was not written to us</strong>. It was written to Israel. It is first and foremost God’s revelation of himself to Israel and secondarily through Israel to everyone else. Therefore, in order to properly understand what it means we must first understand what it meant for Israel in her ancient cultural context. If God wanted to reveal himself to an ancient people, he would have done so in a way that they understood–not in a modern scientific or historical way. To quote Peter Enns, “<strong><em>It is wholly incomprehensible to think that thousands of years ago God would have felt constrained to speak in a way that would be meaningful only to Westerners several thousand years later</em></strong>.” One of the ways through which people communicated certain truths in the ancient Near East was through <strong>mythic narratives</strong>.</p>\r\n<p>The story of <strong>Noah’s Flood</strong> was troubling to me when I first became a Christian because so many questions and even contradictions (e.g. the “Nephilim” existing before and after the flood) came up when trying to interpret the story literally. Sadly, many conservative American Evangelicals approach the text with the theological presupposition that the story has to be literally true according to a modernist understanding of history. In doing so they place upon the Bible a burden that it was not meant to bear, and cause many Christians to adopt a weak and indefensible position. They also cause a stumbling block for rationale and skeptically minded people who are not so quick to accept something with blind faith but are told the Bible must be interpreted literally and to question the historicity of anything in it is blasphemy. The result is a silly dialogue like the hypothetical debate I presented above. It would be like judging the authenticity of The Boy Who Cried Wolf by trying to determine its historicity, which would be missing the whole point of what the story was intended to do–communicate a certain principle, not to give an actual historical account of events. When I started to look at the flood story against its cultural backdrop of the ancient Near East, where many mythic flood stories (most likely older than the Noah account) existed, it became clear that the story is also best understood as a myth story. But what is a myth?</p>\r\n<p>The word “myth” in our modern understanding is usually synonymous to something being untrue, false, fabricated, etc. It carries with it a derogatory and negative connotation, which causes a knee jerk reaction by Christians when something in the Bible gets labeled as a myth. But we need to understand that myths in the ancient world weren’t a negative thing. Mircea Eliade defines myth as “true stories in a sense that they define reality for an individual or a society and provide models to live by.” Enns defines myth as “an ancient, premodern, prescientific way of adressing questions of ultimate origins and meaning in the form of stories: Who are we? Where do we come from?” The purpose of a myth story was not to give a scientific or literal historical account of events, but it was intended to communicate certain truths through the form of stories. Is it unthinkable for God to have allowed his revelation to come to the ancient Israelites according to a standard they understood? Many have a problem with this as if that degrades God’s Word. I think it makes it more remarkable in that we have a God who meets us according to where we are.</p>\r\n<p>The Atrahasis and Gilgamesh epics are both Akkadian flood stories that date to the second millennium BC. They both contain interesting parallels to the flood story of Noah. In both Genesis and Gilgamesh, the story ends with the main figure sending out a bird multiple times to check whether the flood had receded. Eventually, the bird doesn’t return, indicating that the flood has receded. In the Atrahasis epic, Atrahasis is warned by the god Ea of the flood that is about to be brought by the god Enlil to kill humanity. He builds a boat and saves his family and some animals. The point in bringing up these other ancient flood stories is not to insinuate that the Genesis account is a copy of older myths, but to show that they belong to the same cultural world. Israel was not influenced by that world. They were a part of that world.</p>\r\n<p>What makes the Noah story unique and inspired is not its historical accuracy as opposed to the flood myths of their pagan neighbors. They all fit the genre of myth. <strong>What makes the Genesis account unique is its theological and polemical message</strong>. The Biblical writers used something well known in their world–flood myths–as a vehicle<strong> to portray their God, the God of Israel, as the One who is sovereign over creation and who caused it to flood</strong>. It was also a way of communicating a monotheistic message, which was revolutionary in its context. The flood story needs to be understood in the long Jewish tradition it’s found in, a tradition that constantly proclaims that the <strong>God of Israel, the God of Abraham, Isaac, and Jacob is the one true God; there are no other gods</strong>. The Israelites were the only people to have a written covenant with their God. They had a fierce loyalty to Him and a deep sense of responsibility to be the people who would bear the image of the one true God and reveal Him to the pagan world around them. The flood story was one of the many ways in this long and rich tradition by which they accomplished this. It is this tradition that finds its climax and fulfillment in the person of Jesus, who is the fulfillment of God’s promises to the patriarchs and prophets, proving the God of Israel to be the one true God. Jesus Himself is the ultimate revelation of God to mankind.</p>\r\n<p><strong>Further Reading:</strong></p>\r\n<p>For a great overview of the parallels between the Old Testament and other ANE literature see Enns, Peter. <em>Inspiration and Incarnation: Evangelicals and the Problem of the Old Testamen</em>t. 2nd ed. Grand Rapids, MI: Baker Academic, 2015.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deprecationerrors`
--

INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_galleries.twig:9', '2022-02-20 06:39:21', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_galleries.twig', 9, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\8f\\\\8f7456445b243e593f21a85e69f88b1f0fd993ffa2c8a94708feb48dba1333d5.php\",\"line\":66,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":182,\"class\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"method\":\"block_main\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\8f\\\\8f7456445b243e593f21a85e69f88b1f0fd993ffa2c8a94708feb48dba1333d5.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"main\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-20 06:39:21', '2022-02-20 06:39:21', '760e65c1-3a1c-49f1-bb43-53ad6231173a'),
(4, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_galleries.twig:10', '2022-02-21 12:03:39', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_galleries.twig', 10, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\8f\\\\8f7456445b243e593f21a85e69f88b1f0fd993ffa2c8a94708feb48dba1333d5.php\",\"line\":86,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":182,\"class\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"method\":\"block_main\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\8f\\\\8f7456445b243e593f21a85e69f88b1f0fd993ffa2c8a94708feb48dba1333d5.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"main\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-21 12:03:39', '2022-02-21 12:03:39', '8725d117-8686-4201-b3d2-060b7c7fdb61'),
(7, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_galleries.twig:12', '2022-02-20 06:56:39', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_galleries.twig', 12, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\8f\\\\8f7456445b243e593f21a85e69f88b1f0fd993ffa2c8a94708feb48dba1333d5.php\",\"line\":75,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":182,\"class\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"method\":\"block_main\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\8f\\\\8f7456445b243e593f21a85e69f88b1f0fd993ffa2c8a94708feb48dba1333d5.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"main\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_fe6f7f49d3d3d9b18d5c9e188be234e376933a96499110e771c6d1225090f9c3\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_galleries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_galleries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"galleries\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-20 06:56:39', '2022-02-20 06:56:39', '8fe16f3c-895f-4778-8ada-3848290d6525'),
(61, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_entiries.twig:9', '2022-02-20 17:09:57', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_entiries.twig', 9, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":72,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":182,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"block_main\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":48,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"main\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-20 17:09:58', '2022-02-20 17:09:58', '2edb801b-3c90-4170-9fe3-9c0bf9504e53');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(78, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_entiries.twig:11', '2022-02-21 12:30:24', 'C:\\MAMP\\htdocs\\cataldo\\templates\\_entiries.twig', 11, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":78,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":182,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"block_main\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":48,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"main\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\PreviewController.php\",\"line\":174,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request, true\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\PreviewController\",\"method\":\"actionPreview\",\"args\":\"\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\PreviewController, \\\"actionPreview\\\"], [\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-21 12:30:24', '2022-02-21 12:30:24', 'f4232ae4-afad-4413-bbb7-7ab33a86d3e5'),
(114, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_bio.twig:4', '2022-02-21 12:18:25', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_bio.twig', 4, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\47\\\\47fcc90922d87bfb4b8eb42dae85d6e8e38c965a13a5524e5d1ed5b95023bbfc.php\",\"line\":47,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":51,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\PreviewController.php\",\"line\":174,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request, true\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\PreviewController\",\"method\":\"actionPreview\",\"args\":\"\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\PreviewController, \\\"actionPreview\\\"], [\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-21 12:18:26', '2022-02-21 12:18:26', 'de332c3a-7eef-4302-9bba-8d4c614b6fd5'),
(167, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_recent-posts.twig:5', '2022-02-21 12:16:21', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_recent-posts.twig', 5, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\53\\\\5372f2a64e2227270e42af38ed8f0d0398895e755ee17c5e68abff6a4a8b3c8c.php\",\"line\":49,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":54,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\PreviewController.php\",\"line\":174,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request, true\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\PreviewController\",\"method\":\"actionPreview\",\"args\":\"\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\PreviewController, \\\"actionPreview\\\"], [\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-21 12:16:21', '2022-02-21 12:16:21', '040a423c-7034-41d7-b778-b721e47d76ea');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(173, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_recent-posts.twig:4', '2022-02-21 12:30:24', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_recent-posts.twig', 4, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\53\\\\5372f2a64e2227270e42af38ed8f0d0398895e755ee17c5e68abff6a4a8b3c8c.php\",\"line\":48,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\7c\\\\7c8e9110ba1c1cabaf38b250125b1e35c82c2a9732628907754e4027719f3d91.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":51,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\PreviewController.php\",\"line\":174,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request, true\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\PreviewController\",\"method\":\"actionPreview\",\"args\":\"\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\PreviewController, \\\"actionPreview\\\"], [\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-21 12:30:24', '2022-02-21 12:30:24', '3cb96c4f-3875-4e05-8b87-01ed1b391d5b'),
(175, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_bio.twig:3', '2022-02-21 12:30:24', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_bio.twig', 3, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\47\\\\47fcc90922d87bfb4b8eb42dae85d6e8e38c965a13a5524e5d1ed5b95023bbfc.php\",\"line\":46,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_f72ab64cbb6ba92beb48dfcf66252239d3df083d87c2613bae9bb523cc7e51fd\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\7c\\\\7c8e9110ba1c1cabaf38b250125b1e35c82c2a9732628907754e4027719f3d91.php\",\"line\":41,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":51,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\PreviewController.php\",\"line\":174,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request, true\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\PreviewController\",\"method\":\"actionPreview\",\"args\":\"\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\PreviewController, \\\"actionPreview\\\"], [\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-21 12:30:24', '2022-02-21 12:30:24', '753f43ff-75c4-4578-bf63-6d0285352bee'),
(208, 'ElementQuery::getIterator()', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_recent-posts.twig:14', '2022-02-21 12:30:24', 'C:\\MAMP\\htdocs\\cataldo\\templates\\components\\_recent-posts.twig', 14, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":595,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\CategoryQuery\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\53\\\\5372f2a64e2227270e42af38ed8f0d0398895e755ee17c5e68abff6a4a8b3c8c.php\",\"line\":75,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"method\":\"doDisplay\",\"args\":\"[\\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, \\\"currentUser\\\" => craft\\\\elements\\\\User, ...], []\"},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_8e7b4432bb414825f84efa603d10560c552ab865044bbee76657b16bf67b8b27\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\7c\\\\7c8e9110ba1c1cabaf38b250125b1e35c82c2a9732628907754e4027719f3d91.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], []\"},{\"objectClass\":\"__TwigTemplate_726e83eff68afbaab32afbe5bc67489a11f697106d8311feb98c12f6a3d506fa\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\storage\\\\runtime\\\\compiled_templates\\\\b9\\\\b9269e1432a525489ea6c3ceca6c6b3e414c118779319fcfb45e086b9867bdfb.php\",\"line\":51,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"craft\\\" => craft\\\\web\\\\twig\\\\variables\\\\CraftVariable, \\\"currentSite\\\" => craft\\\\models\\\\Site, ...], [\\\"main\\\" => [__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2, \\\"block_main\\\"]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_49631095e955985502e7b6bbc8e821857c64362dde443975a1f90157075ca0a2\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":408,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":461,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":201,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":102,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"_entiries.twig\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"_entiries.twig\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"blog/who-then-is-this-that-even-the-wind-and-sea-obey-him\\\", \\\"x-craft-preview\\\" => \\\"mCLVW5Tv46\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\PreviewController.php\",\"line\":174,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request, true\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\PreviewController\",\"method\":\"actionPreview\",\"args\":\"\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...\"},{\"objectClass\":null,\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\PreviewController, \\\"actionPreview\\\"], [\\\"craft\\\\elements\\\\Entry\\\", 58, 1, null, ...]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":178,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\PreviewController\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":552,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":293,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"preview/preview\\\", [\\\"elementType\\\" => \\\"craft\\\\elements\\\\Entry\\\", \\\"sourceId\\\" => 58, \\\"siteId\\\" => 1, \\\"draftId\\\" => null, ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":278,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":384,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"C:\\\\MAMP\\\\htdocs\\\\cataldo\\\\web\\\\index.php\",\"line\":12,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2022-02-21 12:30:24', '2022-02-21 12:30:24', '591fd2ba-8e77-4d02-a0f9-6c1c2d74966e');

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2022-02-20 04:49:59', '2022-02-20 06:40:50', NULL, NULL, '5ed8a3d6-803a-4380-9850-502bad199001'),
(2, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-20 05:44:34', '2022-02-20 06:23:29', NULL, NULL, '7096bba9-d3c9-42ed-ba4f-aec31df9b2db'),
(3, 2, NULL, 1, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-20 05:45:17', '2022-02-20 05:45:17', NULL, NULL, '29dc2a30-6591-406d-aea8-02fdc936d978'),
(4, 2, NULL, 2, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-20 05:45:53', '2022-02-20 05:45:53', NULL, NULL, '1390521a-7d82-4c27-9988-6fbb78837e4e'),
(6, 2, NULL, 3, 2, 'craft\\elements\\Entry', 1, 0, '2022-02-20 06:23:29', '2022-02-20 06:23:29', NULL, NULL, '0b1b1d4e-9b58-45af-9b37-9d626bf4cb2a'),
(7, NULL, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2022-02-20 06:29:02', '2022-02-20 06:49:15', NULL, NULL, 'ecbef6e6-9f64-4f69-b34c-108849fc1de2'),
(8, 7, NULL, 4, 3, 'craft\\elements\\Entry', 1, 0, '2022-02-20 06:29:02', '2022-02-20 06:29:02', NULL, NULL, '0172ab54-e3f8-4656-8879-090e7f794b93'),
(9, 7, NULL, 5, 3, 'craft\\elements\\Entry', 1, 0, '2022-02-20 06:30:21', '2022-02-20 06:30:21', NULL, NULL, 'c57682a2-a3cb-4d32-ba74-499120959df6'),
(12, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:34', '2022-02-20 06:32:34', NULL, NULL, '623381ce-97c3-4eae-b950-494546119740'),
(13, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:34', '2022-02-20 06:32:34', NULL, NULL, '6ed3046d-4ffc-4fcc-a8d5-5912343a5e7b'),
(14, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:35', '2022-02-20 06:32:35', NULL, NULL, 'e38e7f59-67c9-43c0-9ef4-016ff644527e'),
(15, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:35', '2022-02-20 06:32:35', NULL, NULL, '8d8516d2-b4e8-43d7-9ee1-621d15fae27a'),
(16, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:36', '2022-02-20 06:32:36', NULL, NULL, '0a639f51-a39b-48e4-b635-75d771307f25'),
(17, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:36', '2022-02-20 06:32:36', NULL, NULL, '585d610d-e429-4828-aef1-e1f2b40cba49'),
(18, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:37', '2022-02-20 06:32:37', NULL, NULL, '0ff73266-8df6-4734-9599-79a5a6d1f2e6'),
(19, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:37', '2022-02-20 06:32:37', NULL, NULL, '801dbc96-354d-4b6b-a8be-dd9a8b5d9a25'),
(20, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:37', '2022-02-20 06:32:37', NULL, NULL, '43f11db3-11a1-49dd-afb7-cc72fc1ce6d0'),
(21, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:38', '2022-02-20 06:32:38', NULL, NULL, '3e0e34c5-def3-4293-be83-8272d454f234'),
(22, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:38', '2022-02-20 06:32:38', NULL, NULL, 'b1dfcd80-4190-4758-830e-33937a1d9ca2'),
(23, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:39', '2022-02-20 06:32:39', NULL, NULL, '8af9c06b-ba39-4419-881e-aa8ab2884e57'),
(24, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:39', '2022-02-20 06:32:39', NULL, NULL, 'b988d0b1-0cae-406a-bc50-dc0c6a5caf97'),
(25, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:40', '2022-02-20 06:32:40', NULL, NULL, 'd92c2d5f-0320-4e0a-82ee-6c4c8aa97cc6'),
(26, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:40', '2022-02-20 06:32:40', NULL, NULL, 'feec6321-3e8f-491a-b802-5e65f60b40f3'),
(27, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:41', '2022-02-21 11:55:29', NULL, NULL, '749dd168-18a0-48ca-ac7c-4753c69d7723'),
(28, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:41', '2022-02-20 06:32:41', NULL, NULL, 'd3b6f18c-9137-4ca7-a98f-5a7cdfd30339'),
(29, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:42', '2022-02-20 06:32:42', NULL, NULL, '93084d61-f61e-4fea-a16a-afd319883af0'),
(30, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:42', '2022-02-20 06:32:42', NULL, NULL, 'f1bc7ee4-5fc8-4d1a-a797-d1765b921e1c'),
(31, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:43', '2022-02-20 06:32:43', NULL, NULL, '4e690646-d780-4472-929f-be0f25a2a68e'),
(32, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:43', '2022-02-20 06:32:43', NULL, NULL, '500f0f8f-dfef-4550-ab5a-7cc2429e6c1c'),
(33, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:44', '2022-02-20 06:32:44', NULL, NULL, '9beaeb90-7b3d-4aa2-9dc1-2109bd0bee97'),
(34, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:44', '2022-02-20 06:32:44', NULL, NULL, '6e2b2ec1-6c98-4bdd-84a5-b358560f3ecd'),
(35, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:45', '2022-02-20 06:32:45', NULL, NULL, '5d34cbaa-5f41-460b-a0ce-461c139ed4ce'),
(36, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:45', '2022-02-20 06:32:45', NULL, NULL, 'a5a94ad4-28a9-44ee-9e48-ee89ddd1db26'),
(37, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:46', '2022-02-20 06:32:46', NULL, NULL, 'f03d1a7b-930d-4e22-b54a-64b2fdc4782e'),
(38, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:46', '2022-02-20 06:32:46', NULL, NULL, 'cf3f7344-09fb-4d38-b063-472065deba33'),
(39, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:46', '2022-02-20 06:32:46', NULL, NULL, 'f30de3a6-3e48-4f3a-af7a-2c67465e3086'),
(40, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:47', '2022-02-20 06:32:47', NULL, NULL, 'a9beac29-054d-41ed-9172-64c662fce0bb'),
(41, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:48', '2022-02-20 06:32:48', NULL, NULL, 'c53a6047-a2d9-4eb7-ad26-6029c7c6cc50'),
(42, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:48', '2022-02-20 06:32:48', NULL, NULL, '59b891b9-3dbd-4d58-85fe-26dad5ba0570'),
(43, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:49', '2022-02-20 06:32:49', NULL, NULL, '6ee1f2a9-3e84-40ae-8c97-5ad57b9e789a'),
(44, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:49', '2022-02-20 06:32:49', NULL, NULL, 'e4802416-fa1e-474d-bc03-17414933bb88'),
(45, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 06:32:49', '2022-02-20 06:32:49', NULL, NULL, '19832d93-c129-4211-8049-8bf97cb4debd'),
(46, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2022-02-20 06:37:12', '2022-02-20 06:37:12', NULL, NULL, '3473a880-53d6-492a-900d-f95c06f5dc76'),
(47, 7, NULL, 6, 3, 'craft\\elements\\Entry', 1, 0, '2022-02-20 06:37:12', '2022-02-20 06:37:12', NULL, NULL, 'f7c81226-6003-4fdb-8e5f-101a0b6057f2'),
(48, 46, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2022-02-20 06:37:12', '2022-02-20 06:37:12', NULL, NULL, '2f7069fe-9fa9-4b47-856d-813d330d2951'),
(49, 7, NULL, 7, 3, 'craft\\elements\\Entry', 1, 0, '2022-02-20 06:41:13', '2022-02-20 06:41:13', NULL, NULL, '47f35f14-6a2d-4a0a-bf78-cd18334d9406'),
(50, 46, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2022-02-20 06:41:13', '2022-02-20 06:41:13', NULL, NULL, 'dfd7828a-c3ae-4dec-b71a-5be55f37dc7a'),
(51, 7, NULL, 8, 3, 'craft\\elements\\Entry', 1, 0, '2022-02-20 06:49:15', '2022-02-20 06:49:15', NULL, NULL, '5ac22c86-c888-49d7-bd7c-4a8ea87385a8'),
(52, 46, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2022-02-20 06:49:15', '2022-02-20 06:49:15', NULL, NULL, 'd72a551a-ea28-4514-9e52-cbf0c3164df1'),
(53, NULL, NULL, NULL, 5, 'craft\\elements\\GlobalSet', 1, 0, '2022-02-20 16:27:44', '2022-02-20 17:16:08', NULL, NULL, '42ecf3de-1855-4712-8a70-a5ffe8b5b546'),
(54, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 16:31:08', '2022-02-20 16:31:08', NULL, NULL, '2593fe65-799a-49b6-856e-0848d51329ea'),
(55, NULL, NULL, NULL, 7, 'craft\\elements\\Category', 1, 0, '2022-02-20 16:40:34', '2022-02-20 16:40:34', NULL, NULL, '58716136-b257-43c9-b6af-0f4f2c0578d3'),
(56, NULL, NULL, NULL, 7, 'craft\\elements\\Category', 1, 0, '2022-02-20 16:40:48', '2022-02-20 16:40:48', NULL, NULL, 'f42a0874-6216-4d87-96b4-0204d5c5f0a3'),
(57, NULL, NULL, NULL, 7, 'craft\\elements\\Category', 1, 0, '2022-02-20 16:40:56', '2022-02-20 16:40:56', NULL, NULL, 'e1fabf8d-111b-4100-b46b-fdb98ba81f72'),
(58, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-20 16:48:03', '2022-02-21 11:53:35', NULL, NULL, '10d637c5-3a45-40ba-b85e-ec744d570af5'),
(59, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-20 16:49:26', '2022-02-20 16:49:26', NULL, NULL, '46c5f3e3-ad82-4fb7-9430-4d1a9a38cdc4'),
(60, 58, NULL, 9, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-20 16:50:22', '2022-02-20 16:50:22', NULL, NULL, '6a20d1b9-aa36-49f5-909a-cb04e432d940'),
(62, NULL, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2022-02-21 11:53:27', '2022-02-21 11:53:27', NULL, NULL, '673f6737-fa7c-4299-9e70-5a327b65631d'),
(63, 58, NULL, 10, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:53:35', '2022-02-21 11:53:35', NULL, NULL, 'd83f1557-4b4c-46db-9fee-1194ff9d0cd8'),
(64, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:53:47', '2022-02-21 11:55:34', NULL, NULL, '739d6073-1bcd-4ef0-92ad-b8962f0ec570'),
(65, 64, NULL, 11, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:55:02', '2022-02-21 11:55:02', NULL, NULL, '4542653c-65bd-49b9-b018-962cf94c1f6f'),
(67, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-21 11:55:26', '2022-02-21 11:55:26', NULL, '2022-02-21 11:55:29', '6429ceaa-7f3c-4a43-ab0d-1576b533b5af'),
(68, 64, NULL, 12, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:55:34', '2022-02-21 11:55:34', NULL, NULL, '24d6b3c3-8cf1-463d-9a6e-45b889419e47'),
(69, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:55:48', '2022-02-21 11:56:30', NULL, NULL, '9a92769a-0f43-4c4e-bf0a-d3a7ba4cc08e'),
(70, 69, NULL, 13, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:56:30', '2022-02-21 11:56:30', NULL, NULL, '76e159da-dc58-4041-82c3-73629a68234e'),
(71, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:56:45', '2022-02-21 11:57:58', NULL, NULL, '45efc077-6ef2-4f25-8467-5f7bbd4b62fc'),
(72, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2022-02-21 11:57:40', '2022-02-21 11:57:40', NULL, NULL, 'ccccb6f7-ace2-47db-8257-286c6f33626c'),
(73, 71, NULL, 14, 6, 'craft\\elements\\Entry', 1, 0, '2022-02-21 11:57:58', '2022-02-21 11:57:58', NULL, NULL, '0ec0bb21-51d1-4b4c-b82f-607b51587a7c');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2022-02-20 04:49:59', '2022-02-20 04:49:59', '459fbe8e-2192-4966-b18e-b3e15cbe0f48'),
(2, 2, 1, 'about', 'page/about', 1, '2022-02-20 05:44:34', '2022-02-20 05:44:39', '26999bf6-553d-4f96-996e-0ba4e04d58a7'),
(3, 3, 1, 'about', 'page/about', 1, '2022-02-20 05:45:17', '2022-02-20 05:45:17', '6d3abe53-f98e-4bb4-bf95-f5fdae71891b'),
(4, 4, 1, 'about', 'page/about', 1, '2022-02-20 05:45:53', '2022-02-20 05:45:53', '44f48235-1f67-40f9-8783-51baee6faa3d'),
(6, 6, 1, 'about', 'page/about', 1, '2022-02-20 06:23:29', '2022-02-20 06:23:29', '75156aa4-5ae5-4914-8c6c-b5e9e89eac31'),
(7, 7, 1, 'galleries', 'galleries', 1, '2022-02-20 06:29:02', '2022-02-20 06:29:02', '1f35d945-328d-4891-bf5f-e72be466ab96'),
(8, 8, 1, 'galleries', 'galleries', 1, '2022-02-20 06:29:02', '2022-02-20 06:29:02', 'fa56d192-4b3b-46f1-879b-a171bb72941e'),
(9, 9, 1, 'galleries', 'galleries', 1, '2022-02-20 06:30:21', '2022-02-20 06:30:21', 'b543b8a6-5e86-4f08-bbb3-8e9d9f6479f7'),
(12, 12, 1, NULL, NULL, 1, '2022-02-20 06:32:34', '2022-02-20 06:32:34', '811738df-c910-4649-bcad-c609ad6f522d'),
(13, 13, 1, NULL, NULL, 1, '2022-02-20 06:32:34', '2022-02-20 06:32:34', 'd1d5337f-8faf-465f-8890-0ddeab1f0cee'),
(14, 14, 1, NULL, NULL, 1, '2022-02-20 06:32:35', '2022-02-20 06:32:35', '9dc02783-db99-4507-92df-ff1152290179'),
(15, 15, 1, NULL, NULL, 1, '2022-02-20 06:32:35', '2022-02-20 06:32:35', '9ee29e85-92ee-453b-9298-3e0eae7f7243'),
(16, 16, 1, NULL, NULL, 1, '2022-02-20 06:32:36', '2022-02-20 06:32:36', '8b02c430-8fab-4ffa-a362-98038b7ff959'),
(17, 17, 1, NULL, NULL, 1, '2022-02-20 06:32:36', '2022-02-20 06:32:36', '77a3229c-df36-4fa3-8645-93eb200b49a1'),
(18, 18, 1, NULL, NULL, 1, '2022-02-20 06:32:37', '2022-02-20 06:32:37', 'd5ab89a5-61ab-460e-a47e-e46f7bcdc11b'),
(19, 19, 1, NULL, NULL, 1, '2022-02-20 06:32:37', '2022-02-20 06:32:37', '35928f52-cf84-457b-864c-753dc32cf4e5'),
(20, 20, 1, NULL, NULL, 1, '2022-02-20 06:32:37', '2022-02-20 06:32:37', '05657a83-6e1d-45df-bfaa-4689a409a07d'),
(21, 21, 1, NULL, NULL, 1, '2022-02-20 06:32:38', '2022-02-20 06:32:38', '217d3df8-57fb-473a-a933-53802c29e4b8'),
(22, 22, 1, NULL, NULL, 1, '2022-02-20 06:32:38', '2022-02-20 06:32:38', '970d26b9-51d0-480b-be7a-a6d2e71308a9'),
(23, 23, 1, NULL, NULL, 1, '2022-02-20 06:32:39', '2022-02-20 06:32:39', '212f29cf-c173-4213-8c1d-c50c50ef654d'),
(24, 24, 1, NULL, NULL, 1, '2022-02-20 06:32:39', '2022-02-20 06:32:39', '529c0cdb-7c5d-40ab-a9cd-c6e85034d23a'),
(25, 25, 1, NULL, NULL, 1, '2022-02-20 06:32:40', '2022-02-20 06:32:40', 'da4ee725-ede2-4295-be1c-3d2129d42b42'),
(26, 26, 1, NULL, NULL, 1, '2022-02-20 06:32:40', '2022-02-20 06:32:40', 'a9bbe470-0e79-4754-ad86-e313789f2fb8'),
(27, 27, 1, NULL, NULL, 1, '2022-02-20 06:32:41', '2022-02-20 06:32:41', '12a73d00-0c09-43cc-8ef0-90537325bbe9'),
(28, 28, 1, NULL, NULL, 1, '2022-02-20 06:32:41', '2022-02-20 06:32:41', '121787fa-fa80-4358-affd-dd3618643450'),
(29, 29, 1, NULL, NULL, 1, '2022-02-20 06:32:42', '2022-02-20 06:32:42', 'a2ab4ab4-291f-4513-8210-5615ed31b147'),
(30, 30, 1, NULL, NULL, 1, '2022-02-20 06:32:42', '2022-02-20 06:32:42', '9a9a5d4e-fdfc-498b-bccb-a2ef1de2966a'),
(31, 31, 1, NULL, NULL, 1, '2022-02-20 06:32:43', '2022-02-20 06:32:43', '2b859ebc-3a50-48ed-ae1c-2fd98089d124'),
(32, 32, 1, NULL, NULL, 1, '2022-02-20 06:32:43', '2022-02-20 06:32:43', '845d550b-e4bc-454c-a822-f62b56907c7a'),
(33, 33, 1, NULL, NULL, 1, '2022-02-20 06:32:44', '2022-02-20 06:32:44', '9ac839dd-b240-4846-9e10-7d81d8c2c11b'),
(34, 34, 1, NULL, NULL, 1, '2022-02-20 06:32:44', '2022-02-20 06:32:44', '1de8658c-dd38-4e93-a31e-0053b0daad91'),
(35, 35, 1, NULL, NULL, 1, '2022-02-20 06:32:45', '2022-02-20 06:32:45', 'c19935fb-3cdc-401f-b4fa-8c4d84f4b222'),
(36, 36, 1, NULL, NULL, 1, '2022-02-20 06:32:45', '2022-02-20 06:32:45', '8ec11dee-11f5-435f-bd38-30ffbc2404ad'),
(37, 37, 1, NULL, NULL, 1, '2022-02-20 06:32:46', '2022-02-20 06:32:46', 'd78016f3-800d-46a6-b7c9-e70a23cc1f84'),
(38, 38, 1, NULL, NULL, 1, '2022-02-20 06:32:46', '2022-02-20 06:32:46', '6aa321c2-12a8-4d43-a5c5-f308fadfc923'),
(39, 39, 1, NULL, NULL, 1, '2022-02-20 06:32:46', '2022-02-20 06:32:46', '6b906fd4-01ab-4410-8d72-6eabe3a19e84'),
(40, 40, 1, NULL, NULL, 1, '2022-02-20 06:32:47', '2022-02-20 06:32:47', '047e59e5-5093-4349-ab3b-fa41e9ba06e8'),
(41, 41, 1, NULL, NULL, 1, '2022-02-20 06:32:48', '2022-02-20 06:32:48', '3e364338-d4d7-42c3-8a98-ce0442772c08'),
(42, 42, 1, NULL, NULL, 1, '2022-02-20 06:32:48', '2022-02-20 06:32:48', 'a4ba52e3-ba57-4207-bb07-ea2096c41a00'),
(43, 43, 1, NULL, NULL, 1, '2022-02-20 06:32:49', '2022-02-20 06:32:49', '7b5655c2-573a-4c74-abb5-4a83263a9f88'),
(44, 44, 1, NULL, NULL, 1, '2022-02-20 06:32:49', '2022-02-20 06:32:49', '2bda0dc0-8bc3-4461-ab3a-8db8ba4c6605'),
(45, 45, 1, NULL, NULL, 1, '2022-02-20 06:32:50', '2022-02-20 06:32:50', 'eabc8d4d-e54d-4d88-a94c-46186962987a'),
(46, 46, 1, NULL, NULL, 1, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'd4ab8d3f-b089-4bf2-9b1b-ef03cfd7cd7d'),
(47, 47, 1, 'galleries', 'galleries', 1, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'd3c27f6b-aebf-4ed7-8807-98e03f0d526a'),
(48, 48, 1, NULL, NULL, 1, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'c68f41a9-47c9-4ed6-8d3e-7fee5a8207c4'),
(49, 49, 1, 'galleries', 'galleries', 1, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'baa540c1-4046-4d12-9d58-b455220a1f23'),
(50, 50, 1, NULL, NULL, 1, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'e09a2fba-fd0f-49be-ad0e-f30f36ff8a26'),
(51, 51, 1, 'galleries', 'galleries', 1, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'cf033988-2748-464c-b2e9-8e8e57dc73a4'),
(52, 52, 1, NULL, NULL, 1, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'aeddc9c8-b0b6-48ee-a45d-617cb2b04bbc'),
(53, 53, 1, NULL, NULL, 1, '2022-02-20 16:27:44', '2022-02-20 16:27:44', '72f4d311-b3af-433f-bf44-cad0e72dada4'),
(54, 54, 1, NULL, NULL, 1, '2022-02-20 16:31:08', '2022-02-20 16:31:08', 'bc76bfee-b8b6-4941-bd50-bdbdee45c5a1'),
(55, 55, 1, 'new-testament', 'category/new-testament', 1, '2022-02-20 16:40:34', '2022-02-20 16:40:37', '106ca01e-d9c4-43b9-9ca9-a34db9251741'),
(56, 56, 1, 'apologetics', 'category/apologetics', 1, '2022-02-20 16:40:48', '2022-02-20 16:40:51', 'b29af098-1440-4e55-9039-47e473811ac7'),
(57, 57, 1, 'videos', 'category/videos', 1, '2022-02-20 16:40:56', '2022-02-20 16:40:59', 'e67a6e5e-8f8f-4f46-b73a-f6c35eaf0e31'),
(58, 58, 1, 'who-then-is-this-that-even-the-wind-and-sea-obey-him', 'blog/who-then-is-this-that-even-the-wind-and-sea-obey-him', 1, '2022-02-20 16:48:03', '2022-02-20 16:48:17', 'd1214a6b-25a2-4645-a8e6-47274cc6af7b'),
(59, 59, 1, NULL, NULL, 1, '2022-02-20 16:49:26', '2022-02-20 16:49:26', '3c10719e-eef7-4ef5-98f2-1b729f6fdb90'),
(60, 60, 1, 'who-then-is-this-that-even-the-wind-and-sea-obey-him', 'blog/who-then-is-this-that-even-the-wind-and-sea-obey-him', 1, '2022-02-20 16:50:22', '2022-02-20 16:50:22', '6cda1a3e-bf08-498a-a6c9-df0cfbcd4006'),
(62, 62, 1, NULL, NULL, 1, '2022-02-21 11:53:27', '2022-02-21 11:53:27', '46f45e70-eb0b-4919-add8-b99f697f18e1'),
(63, 63, 1, 'who-then-is-this-that-even-the-wind-and-sea-obey-him', 'blog/who-then-is-this-that-even-the-wind-and-sea-obey-him', 1, '2022-02-21 11:53:35', '2022-02-21 11:53:35', 'e47731b8-0f82-4fff-b7e1-d7aaf66c47d5'),
(64, 64, 1, 'jesus-the-historical-evidence-pt-1', 'blog/jesus-the-historical-evidence-pt-1', 1, '2022-02-21 11:53:47', '2022-02-21 11:53:55', '3ab517c8-b898-4a50-8e37-1bbf297c54bc'),
(65, 65, 1, 'jesus-the-historical-evidence-pt-1', 'blog/jesus-the-historical-evidence-pt-1', 1, '2022-02-21 11:55:02', '2022-02-21 11:55:02', '1b4ed09d-a477-4f86-b6b6-0243a86efe69'),
(67, 67, 1, NULL, NULL, 1, '2022-02-21 11:55:26', '2022-02-21 11:55:26', '78c2e8e9-e4b2-4a57-9c2b-2ceb806702ca'),
(68, 68, 1, 'jesus-the-historical-evidence-pt-1', 'blog/jesus-the-historical-evidence-pt-1', 1, '2022-02-21 11:55:34', '2022-02-21 11:55:34', '7fc4ea24-2942-44fb-8e8f-9ca611d53dad'),
(69, 69, 1, 'jesus-the-historical-evidence-pt-2', 'blog/jesus-the-historical-evidence-pt-2', 1, '2022-02-21 11:55:48', '2022-02-21 11:55:57', '9b4a94cf-d4de-44cf-93b7-b6adc0153823'),
(70, 70, 1, 'jesus-the-historical-evidence-pt-2', 'blog/jesus-the-historical-evidence-pt-2', 1, '2022-02-21 11:56:30', '2022-02-21 11:56:30', 'e8792b9c-41c2-44fc-8655-ea24140a302a'),
(71, 71, 1, 'yes-the-bible-contains-myth-so-what', 'blog/yes-the-bible-contains-myth-so-what', 1, '2022-02-21 11:56:45', '2022-02-21 11:56:57', '40ce3da0-d666-4d6e-a754-5718751aaf67'),
(72, 72, 1, NULL, NULL, 1, '2022-02-21 11:57:40', '2022-02-21 11:57:40', '0a5f412d-9060-4ea7-889c-ac085e89b4dd'),
(73, 73, 1, 'yes-the-bible-contains-myth-so-what', 'blog/yes-the-bible-contains-myth-so-what', 1, '2022-02-21 11:57:58', '2022-02-21 11:57:58', 'e4736791-95e1-4eae-a241-200b1fd06257');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, 1, '2022-02-20 05:44:00', NULL, NULL, '2022-02-20 05:44:34', '2022-02-20 05:44:34', 'd8b33639-fe7b-4133-9bc1-f4594cba16ff'),
(3, 1, NULL, 1, 1, '2022-02-20 05:44:00', NULL, NULL, '2022-02-20 05:45:17', '2022-02-20 05:45:17', 'ab4529f9-ea8b-4c53-aa95-fc9c18aa7e72'),
(4, 1, NULL, 1, 1, '2022-02-20 05:44:00', NULL, NULL, '2022-02-20 05:45:53', '2022-02-20 05:45:53', '346249e5-80bd-4479-9e4e-2b1267a8a3bf'),
(6, 1, NULL, 1, 1, '2022-02-20 05:44:00', NULL, NULL, '2022-02-20 06:23:29', '2022-02-20 06:23:29', '0e28978b-061e-4fec-a1db-530319c59ad6'),
(7, 2, NULL, 2, NULL, '2022-02-20 06:29:00', NULL, NULL, '2022-02-20 06:29:02', '2022-02-20 06:29:02', 'f41d7e38-d33b-49cc-9a8a-b3c0228d3795'),
(8, 2, NULL, 2, NULL, '2022-02-20 06:29:00', NULL, NULL, '2022-02-20 06:29:02', '2022-02-20 06:29:02', '64babfc3-b405-4c8b-91a8-8b3bbda62d74'),
(9, 2, NULL, 2, NULL, '2022-02-20 06:29:00', NULL, NULL, '2022-02-20 06:30:21', '2022-02-20 06:30:21', '6fa44f0d-bb59-48b0-bb07-dac18d52c768'),
(47, 2, NULL, 2, NULL, '2022-02-20 06:29:00', NULL, NULL, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '98ed6b0d-c21a-4f07-8973-a0dcb6e95628'),
(49, 2, NULL, 2, NULL, '2022-02-20 06:29:00', NULL, NULL, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '457362e4-3b73-4014-97d5-5cd3cb16b253'),
(51, 2, NULL, 2, NULL, '2022-02-20 06:29:00', NULL, NULL, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '1f9d40fb-edd8-482a-baa1-8c71659214e6'),
(58, 3, NULL, 3, 1, '2022-02-20 16:48:00', NULL, NULL, '2022-02-20 16:48:03', '2022-02-20 16:48:03', '7f7f239e-14bc-4846-962e-ae1f6993daf3'),
(60, 3, NULL, 3, 1, '2022-02-20 16:48:00', NULL, NULL, '2022-02-20 16:50:22', '2022-02-20 16:50:22', 'ec5cf011-70bf-4d4a-b3a4-9cdf2daa2c2c'),
(63, 3, NULL, 3, 1, '2022-02-20 16:48:00', NULL, NULL, '2022-02-21 11:53:35', '2022-02-21 11:53:35', 'd594f6dc-d72d-413c-b29c-3e64de4ac971'),
(64, 3, NULL, 3, 1, '2022-02-21 11:53:00', NULL, NULL, '2022-02-21 11:53:47', '2022-02-21 11:53:47', '87606da2-e294-4616-9d8e-6e4058047299'),
(65, 3, NULL, 3, 1, '2022-02-21 11:53:00', NULL, NULL, '2022-02-21 11:55:02', '2022-02-21 11:55:02', '51263c81-704d-41e5-bb7d-ac2b0605e677'),
(68, 3, NULL, 3, 1, '2022-02-21 11:53:00', NULL, NULL, '2022-02-21 11:55:34', '2022-02-21 11:55:34', 'fb55ec69-596a-41da-aca2-fa57b08a31c2'),
(69, 3, NULL, 3, 1, '2022-02-21 11:55:00', NULL, NULL, '2022-02-21 11:55:48', '2022-02-21 11:55:48', '02ef3fb5-1679-488f-ad5b-77ce1302fa35'),
(70, 3, NULL, 3, 1, '2022-02-21 11:55:00', NULL, NULL, '2022-02-21 11:56:30', '2022-02-21 11:56:30', '85f0a869-4949-445d-8535-227e57805b95'),
(71, 3, NULL, 3, 1, '2022-02-21 11:56:00', NULL, NULL, '2022-02-21 11:56:45', '2022-02-21 11:56:45', '03064499-e123-4bfa-b5df-3e475c291466'),
(73, 3, NULL, 3, 1, '2022-02-21 11:56:00', NULL, NULL, '2022-02-21 11:57:58', '2022-02-21 11:57:58', 'a25accfe-e2ae-4c35-b0f8-1735edc2e4ae');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 2, 'Default', 'default', 1, 'site', NULL, NULL, 1, '2022-02-20 05:42:08', '2022-02-20 05:42:08', NULL, '978256b4-4917-4876-8f86-256ffdfe172e'),
(2, 2, 3, 'Galleries', 'galleries', 0, 'site', NULL, '{section.name|raw}', 1, '2022-02-20 06:29:02', '2022-02-20 06:29:02', NULL, 'ee00171d-429b-41c1-8eda-df7ecf4eb46e'),
(3, 3, 6, 'Default', 'default', 1, 'site', NULL, NULL, 1, '2022-02-20 16:32:42', '2022-02-20 16:32:42', NULL, '63286c93-ccf3-4610-a89f-1aeef4ff2dda');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2022-02-20 04:49:59', '2022-02-20 04:49:59', NULL, 'af33e277-8e52-4332-aa0d-9efdbe5fdb0e'),
(2, 'Globals', '2022-02-20 16:27:58', '2022-02-20 16:27:58', NULL, '43b1aff8-18d4-4ba3-93ec-d0f2e3415d5b');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 3, 1, 0, 1, '2022-02-20 05:43:51', '2022-02-20 05:43:51', 'c7aa7a1a-336f-4d2b-87a8-d0e57aac38fe'),
(2, 4, 5, 3, 0, 0, '2022-02-20 06:29:57', '2022-02-20 06:29:57', 'd0eccdd3-837e-4a00-8b7f-91b52fece61d'),
(3, 3, 6, 2, 0, 1, '2022-02-20 06:30:21', '2022-02-20 06:30:21', '8a8a0b0e-a1f4-4ee7-8acc-dc70041af07b'),
(6, 6, 10, 6, 0, 1, '2022-02-20 16:42:07', '2022-02-20 16:42:07', 'd6f654e4-139a-480a-a7bb-e73379890ca0'),
(7, 6, 10, 1, 0, 2, '2022-02-20 16:42:07', '2022-02-20 16:42:07', '004c6f1d-30d0-48e9-8202-10565db2c3cc'),
(8, 6, 10, 7, 0, 3, '2022-02-20 16:42:07', '2022-02-20 16:42:07', 'ec267eac-20cd-4ca3-a9c9-d4c9dc0dcf81'),
(9, 5, 11, 4, 0, 0, '2022-02-20 17:15:58', '2022-02-20 17:15:58', '3afb75e7-3a77-4d7a-b5da-7bfea4eeaff0'),
(10, 5, 11, 5, 0, 1, '2022-02-20 17:15:58', '2022-02-20 17:15:58', '639c0f2c-09f0-41e7-83e1-013624603b9f'),
(11, 5, 11, 8, 0, 2, '2022-02-20 17:15:58', '2022-02-20 17:15:58', '363354a3-826d-4252-9952-a8f2bdc85efd');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Asset', '2022-02-20 05:40:22', '2022-02-20 05:40:22', NULL, '5e53b0cb-ec42-453c-aa50-7809be8bd79a'),
(2, 'craft\\elements\\Entry', '2022-02-20 05:42:08', '2022-02-20 05:42:08', NULL, '0bebf9d5-7e6e-4dcd-9374-e2753aeb2421'),
(3, 'craft\\elements\\Entry', '2022-02-20 06:29:02', '2022-02-20 06:29:02', NULL, '289d9488-1cb9-47d6-bdd1-adb99fb1e5c5'),
(4, 'craft\\elements\\MatrixBlock', '2022-02-20 06:29:57', '2022-02-20 06:29:57', NULL, 'd1d35c1a-5088-4380-a396-f851e3553a33'),
(5, 'craft\\elements\\GlobalSet', '2022-02-20 16:29:53', '2022-02-20 16:29:53', NULL, '2b1a640b-803b-4f94-885f-d45d6cb1ee3f'),
(6, 'craft\\elements\\Entry', '2022-02-20 16:32:42', '2022-02-20 16:32:42', NULL, '6455d723-1479-4c6a-af0d-27422ba8c0ba'),
(7, 'craft\\elements\\Category', '2022-02-20 16:40:08', '2022-02-20 16:40:08', NULL, '93b85de9-e380-46b7-bf4a-8b59161da4c9');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2022-02-20 05:40:22', '2022-02-20 05:40:22', 'a2180e7b-820b-43cf-840c-a131b8514885'),
(3, 2, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5b9d684d-5da2-445d-bc48-51b9ae352a6c\"}]', 1, '2022-02-20 05:43:51', '2022-02-20 05:43:51', '060dea77-ea9e-47dc-ac97-57a22d857317'),
(5, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"a1686e3d-1865-445a-852d-25a24e433860\"}]', 1, '2022-02-20 06:29:57', '2022-02-20 06:29:57', 'cfc4a7ff-bf5c-4747-9121-9d6ecbfff36f'),
(6, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e3d484bd-fc08-4e00-aa53-3d47583daa9f\"}]', 1, '2022-02-20 06:30:21', '2022-02-20 06:30:21', '29ce41c6-869b-4988-b3bb-5f936e88aa52'),
(9, 7, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2022-02-20 16:40:08', '2022-02-20 16:40:08', '0a0b7c8e-de27-4d39-955a-4fbb0179fbf9'),
(10, 6, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d20675ef-c5e0-4457-a05d-39531760cc5c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5b9d684d-5da2-445d-bc48-51b9ae352a6c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e5417985-058f-4465-9fca-c5cdf7815986\"}]', 1, '2022-02-20 16:42:07', '2022-02-20 16:42:07', '3d6134c7-f387-4b24-a9f9-4941b3451fd8'),
(11, 5, 'Author Info', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"3a37bd5e-2600-4ff2-ab18-fbaea082805f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"bb4dae1a-23b5-400a-b7cb-ccf8279434d4\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7\"}]', 1, '2022-02-20 17:15:58', '2022-02-20 17:15:58', '01d5dc57-b366-4dab-b2b3-0390642f73e8');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `translationKeyFormat` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Page Content', 'pageContent', 'global', 'vgbilypy', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"Example.json\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2022-02-20 05:43:45', '2022-02-20 06:18:04', '5b9d684d-5da2-445d-bc48-51b9ae352a6c'),
(2, 1, 'Gallery Images', 'galleryImages', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_galleryimages}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2022-02-20 06:29:56', '2022-02-20 06:29:56', 'e3d484bd-fc08-4e00-aa53-3d47583daa9f'),
(3, NULL, 'Gallery Image', 'galleryImage', 'matrixBlockType:082c475d-689f-427b-90b2-a941e80f665b', NULL, '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2022-02-20 06:29:57', '2022-02-20 06:29:57', 'a1686e3d-1865-445a-852d-25a24e433860'),
(4, 2, 'Author Bio', 'authorBio', 'global', 'njoljosf', 'Paste your Bio Here.', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2022-02-20 16:28:25', '2022-02-20 16:28:25', '3a37bd5e-2600-4ff2-ab18-fbaea082805f'),
(5, 2, 'Author Image', 'authorImage', 'global', NULL, 'Place an Image of yourself.', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2022-02-20 16:28:53', '2022-02-20 16:28:53', 'bb4dae1a-23b5-400a-b7cb-ccf8279434d4'),
(6, 1, 'Page Enty Image', 'pageEntyImage', 'global', NULL, 'Image that will go on the top of the page and be shown when searching articles.', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2022-02-20 16:37:53', '2022-02-20 16:37:53', 'd20675ef-c5e0-4457-a05d-39531760cc5c'),
(7, 1, 'Category', 'category', 'global', NULL, 'Select what type of post this will be related to.', 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"allowSelfRelations\":false,\"branchLimit\":\"1\",\"limit\":null,\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":false,\"source\":\"group:8ba2b35c-4f68-4570-b288-56f2e0dda92b\",\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2022-02-20 16:41:35', '2022-02-20 16:41:35', 'e5417985-058f-4465-9fca-c5cdf7815986'),
(8, 2, 'Author Name', 'authorName', 'global', 'aqetzcun', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-02-20 17:15:48', '2022-02-20 17:15:48', 'e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `globalsets`
--

INSERT INTO `globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(53, 'Globals', 'globals', 5, 1, '2022-02-20 16:27:44', '2022-02-20 16:29:53', '42ecf3de-1855-4712-8a70-a5ffe8b5b546');

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.7.33', '3.7.33', 0, 'wkystorcyfnh', '2@hftotlaget', '2022-02-20 04:49:59', '2022-02-20 17:15:58', '882eb8d4-1bd7-4db3-b4a4-0b88afe9e792');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(46, 7, 2, 1, 1, NULL, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '86aab0c5-8b9d-4d4a-9d55-ad1d8ab87812'),
(48, 47, 2, 1, 1, NULL, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '0a640eb1-ab08-4a3a-ac07-b80c44268988'),
(50, 49, 2, 1, 1, NULL, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '00be2ffb-eca3-45e2-9918-b063d66e60d2'),
(52, 51, 2, 1, 1, NULL, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'f72c50ce-bae5-44cc-806b-0bad35d7d411');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 4, 'Gallery', 'gallery', 1, '2022-02-20 06:29:57', '2022-02-20 06:29:57', '082c475d-689f-427b-90b2-a941e80f665b');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_galleryimages`
--

CREATE TABLE `matrixcontent_galleryimages` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matrixcontent_galleryimages`
--

INSERT INTO `matrixcontent_galleryimages` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 46, 1, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'dd264073-51a9-4730-9ef9-4aa4cd823779'),
(3, 48, 1, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'c05803c8-1619-4732-8a56-2d8adce2dd78'),
(4, 50, 1, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '167a1ade-9150-4ac5-bf05-6b5413240851'),
(5, 52, 1, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '762ab1c9-9392-466e-af9b-bac7ca2e125e');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '76ce369a-219b-416c-bafc-339ea6e4f55e'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '4ddaa975-ffc4-4726-a172-f01b14fb8b80'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '19187576-d45c-4328-9161-b8965960553d'),
(4, 'craft', 'm150403_184533_field_version', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'c374149c-896e-47a4-bb50-55b7cbd43975'),
(5, 'craft', 'm150403_184729_type_columns', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '9469e340-f238-4159-a00f-2d0138753b0e'),
(6, 'craft', 'm150403_185142_volumes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '8c7e3d46-dea9-47b2-8d13-e4383ee8829a'),
(7, 'craft', 'm150428_231346_userpreferences', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '17b5f99f-3a92-4482-97a5-6f8e3a9e9940'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '72979009-4cc6-4930-8604-1f79daff976b'),
(9, 'craft', 'm150617_213829_update_email_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '35a4fe57-d8c5-4f9f-8c6b-c5408729c480'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'c5b05c9f-72ae-479e-a81f-279d5f93325f'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'c851e372-f702-497e-9db0-5df9eeb30d92'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '660b3888-d305-4edd-9af7-2df62a296e15'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '639aee7c-1c04-441e-86fe-ca93fad70822'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'a4e0f59c-4d44-4551-91ae-5986f48172ba'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd2c97369-4d49-44d1-bb7e-9839abab31cb'),
(16, 'craft', 'm151209_000000_move_logo', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '7aa170bd-9243-4598-a43e-92b43b5e34ae'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '8d65414c-4872-4b6d-9e24-acd417af1fef'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '01f8b7c7-1141-431f-a5f3-11652d50cb6a'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2fe502c9-0615-4669-a8df-e50ba2662dac'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '634e211e-b7c8-4cea-aaec-205a356a9c7e'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6e3179c9-0271-4689-9f81-78c315650031'),
(22, 'craft', 'm160727_194637_column_cleanup', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '71950aa3-fe3e-4435-bd52-d74683fe913c'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '44f7ce98-e632-4413-8725-ee268fff3f0f'),
(24, 'craft', 'm160807_144858_sites', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'ba70d311-2048-4bbc-b2d3-bc23719c4ae8'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '9fc61275-1b3b-4349-9bc5-69fc8aa20c93'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '07873383-b766-4469-a4c1-6c8e4e52a31c'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'c49e6b36-b0a7-4cdf-b264-a6720820b920'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'a4fb0425-d1be-481b-9d3d-39a3d1af4097'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '7f7b2f20-e8d9-452c-b995-05eaf998a587'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'c0c73748-2799-427f-8a61-261310708d82'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'ea22768c-46b9-416b-8349-6b56dca6fd96'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '414d2536-5493-426a-b320-b5011ea7e2bf'),
(33, 'craft', 'm161007_130653_update_email_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd98cf66b-9ebd-417d-94ba-2787ec9d0ed4'),
(34, 'craft', 'm161013_175052_newParentId', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd2dce0b7-d479-44d5-8317-cc55afa53411'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2301f3de-3cee-4bc7-8768-4925e46fc093'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '54c48610-1d00-4375-b68f-4ca4b19400b2'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd7ac3866-812c-4806-87a8-79c2251494ca'),
(38, 'craft', 'm161029_124145_email_message_languages', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '16985214-c28f-45d3-a943-f9d6491dbc77'),
(39, 'craft', 'm161108_000000_new_version_format', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'ea148da2-e724-49a2-8cdb-2bd4bb13b538'),
(40, 'craft', 'm161109_000000_index_shuffle', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '03f7b161-2afd-43e0-aae3-c3379bca8904'),
(41, 'craft', 'm161122_185500_no_craft_app', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '4aefcdbc-2286-469f-9086-db7703ae7557'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '92d89f7e-adc1-4b1f-abfe-19776f856c70'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'f52c548e-534e-4602-b1bc-bd52fb9f95ad'),
(44, 'craft', 'm170114_161144_udates_permission', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '404d9eab-2e97-469d-a242-d539e664520c'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2740fd2a-769c-4476-81ba-5140914195cb'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '7dd2cb78-8a25-4da7-85fe-fd6e36a24b2b'),
(47, 'craft', 'm170206_142126_system_name', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '81409b9e-2e85-461a-94e0-e891aec8d984'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '0705b2ff-aa39-42e6-9c07-37a804ba2dbe'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '3b604b83-9eb9-4eeb-af18-4122edb4d5a8'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '7b281f80-5bcf-4e60-824b-e5bd161cf2da'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '4c024350-469c-4c4b-a7db-950d36cdee37'),
(52, 'craft', 'm170228_171113_system_messages', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5fd0a598-1c69-4aa1-9f38-0dd6b4f4a1fe'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '141b2869-7ba4-4c24-878f-422c4a9129e6'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6e9f80d1-891a-439d-9afb-218c5f244b40'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '65bf844c-22dc-4720-a74c-af5b66131cf1'),
(56, 'craft', 'm170621_195237_format_plugin_handles', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'e5f9cb3d-54d0-4b99-93d5-2eeec785a5ba'),
(57, 'craft', 'm170630_161027_deprecation_line_nullable', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '9b283b4a-0957-47c5-ba7c-151affcd0ad5'),
(58, 'craft', 'm170630_161028_deprecation_changes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '8c830ab6-0c13-4597-b108-aab4aa4ce588'),
(59, 'craft', 'm170703_181539_plugins_table_tweaks', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '31efa432-f7ed-46c3-8c02-0bd0afeb2e0d'),
(60, 'craft', 'm170704_134916_sites_tables', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '940eb9c5-f868-4329-892e-dd96fe825cf3'),
(61, 'craft', 'm170706_183216_rename_sequences', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'bd5e2668-e50c-40d6-ac5f-f0383a6ea28b'),
(62, 'craft', 'm170707_094758_delete_compiled_traits', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '68d52bdb-fb2a-4019-a485-b78e15bddeee'),
(63, 'craft', 'm170731_190138_drop_asset_packagist', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'e454f34b-f551-447e-bb12-586aa952240a'),
(64, 'craft', 'm170810_201318_create_queue_table', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5f02aa60-85a0-4422-a08f-343232b7e1b5'),
(65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '48dc9061-fbd5-427e-ac5e-8251d8cdf7a5'),
(66, 'craft', 'm170914_204621_asset_cache_shuffle', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '0e2d3b64-adb2-491b-aa39-bb2e246f3baf'),
(67, 'craft', 'm171011_214115_site_groups', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6a4b108d-ee67-40d6-b07e-52eb8bd9db7c'),
(68, 'craft', 'm171012_151440_primary_site', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'ed6f2ab6-81e7-45a9-85d6-3ef02087a581'),
(69, 'craft', 'm171013_142500_transform_interlace', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '65c2f7f8-8417-48af-aba3-5ff80d7129b3'),
(70, 'craft', 'm171016_092553_drop_position_select', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2e407e70-a29b-430f-86a3-effc829b5aad'),
(71, 'craft', 'm171016_221244_less_strict_translation_method', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5c89026b-1a17-441c-b0b7-20c42a8d181f'),
(72, 'craft', 'm171107_000000_assign_group_permissions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2b63dc7f-f9ba-4a6e-8b03-55002405b921'),
(73, 'craft', 'm171117_000001_templatecache_index_tune', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '209448fb-1cf4-4a21-92dc-3a118f3c0de8'),
(74, 'craft', 'm171126_105927_disabled_plugins', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '37f698c0-b023-475f-87fb-0158d3fc330e'),
(75, 'craft', 'm171130_214407_craftidtokens_table', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '97be552e-e66b-4b7a-bc88-a20ef2b8403c'),
(76, 'craft', 'm171202_004225_update_email_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5fa77680-815a-47ee-93a0-27a46861a76b'),
(77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '1880e5d5-235d-4a4b-bc1c-af867100edd3'),
(78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'dbb3ecc6-030b-495b-bb8b-fbad1b10e365'),
(79, 'craft', 'm171218_143135_longtext_query_column', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6de346cb-a2af-4436-a728-ba52b67f050c'),
(80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '67d84245-672a-4996-bb92-1f2ff2271fcd'),
(81, 'craft', 'm180113_153740_drop_users_archived_column', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'bb2bb594-3fd0-48f6-9bf4-0f671a94b44e'),
(82, 'craft', 'm180122_213433_propagate_entries_setting', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'fc811f45-b626-4b3e-a082-1401e3abbfc1'),
(83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd66f6312-4d86-4ccd-89df-be0e71fafc05'),
(84, 'craft', 'm180128_235202_set_tag_slugs', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd889595b-7b70-44fe-abec-c61debe1ebeb'),
(85, 'craft', 'm180202_185551_fix_focal_points', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '1bf082f6-abf1-4f10-be23-07366249975f'),
(86, 'craft', 'm180217_172123_tiny_ints', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'fa37f991-e9ec-49a5-927c-dd0dfad3e4f4'),
(87, 'craft', 'm180321_233505_small_ints', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'b45e3dd3-0630-433a-9d44-f5cd2511d372'),
(88, 'craft', 'm180404_182320_edition_changes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '656e1d3f-3c5a-40cb-ad6d-382f45bef73d'),
(89, 'craft', 'm180411_102218_fix_db_routes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '786ede8b-1b7c-4334-a445-5c2ef1383bb4'),
(90, 'craft', 'm180416_205628_resourcepaths_table', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'a5dbf257-dcd4-4b6c-9269-def740b8e16b'),
(91, 'craft', 'm180418_205713_widget_cleanup', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '0170a7e0-67e9-49ac-97fa-7e435b55fe2e'),
(92, 'craft', 'm180425_203349_searchable_fields', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '69d2d888-7a3d-42ce-a5c3-7bd8fb47abcd'),
(93, 'craft', 'm180516_153000_uids_in_field_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '569ba0e4-5924-4ce3-8b3e-6153535c2187'),
(94, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'eed9b33b-f71e-4c6e-ad27-79f15d3a1fa0'),
(95, 'craft', 'm180518_173000_permissions_to_uid', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '75e54387-0235-4bdf-a4fd-8e2f6b1471c9'),
(96, 'craft', 'm180520_173000_matrix_context_to_uids', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'b36e9ef9-4ef5-4944-804f-5a0a52afe0b0'),
(97, 'craft', 'm180521_172900_project_config_table', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '12551165-c63d-41d6-9c5f-0f8e5142db89'),
(98, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'cceea45d-877c-48a2-aedd-a2b83b8905b8'),
(99, 'craft', 'm180731_162030_soft_delete_sites', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '55151b4c-06b9-4942-b3d9-4b73fb031774'),
(100, 'craft', 'm180810_214427_soft_delete_field_layouts', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '008d03d7-77ca-47b0-a850-05b87bae9cf0'),
(101, 'craft', 'm180810_214439_soft_delete_elements', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '53e843b0-42f8-4f6d-a299-290c04e8060c'),
(102, 'craft', 'm180824_193422_case_sensitivity_fixes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd2c8a304-7520-4068-b383-1aef323acb6c'),
(103, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '633611dc-c9a4-497c-88ab-6863b21ce186'),
(104, 'craft', 'm180904_112109_permission_changes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '8c395e2a-384d-43c6-ba2d-9aa188e39d7b'),
(105, 'craft', 'm180910_142030_soft_delete_sitegroups', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2ac47b80-aaa2-4819-8d28-6000bfbd9216'),
(106, 'craft', 'm181011_160000_soft_delete_asset_support', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '3ed8b302-69f5-4b42-99fb-cc678c04d84b'),
(107, 'craft', 'm181016_183648_set_default_user_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5e8bd2f6-ecc6-4bba-b62a-501e506c86e4'),
(108, 'craft', 'm181017_225222_system_config_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '862ab34d-f5f3-49d9-a103-8a41277aa7cd'),
(109, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd9830b3d-3432-496e-aace-96e94e9f615a'),
(110, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'f6b7220c-b0f8-468a-9e33-5e725bed0842'),
(111, 'craft', 'm181112_203955_sequences_table', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '99037dae-158d-42ec-ac14-522f889263ea'),
(112, 'craft', 'm181121_001712_cleanup_field_configs', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '723c7020-03a8-4fa2-8281-a11233357823'),
(113, 'craft', 'm181128_193942_fix_project_config', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'f6f6d586-a972-429e-8092-a3ece7c06784'),
(114, 'craft', 'm181130_143040_fix_schema_version', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'eb0a8d54-4d40-4fc9-93a5-e0a0a5862a58'),
(115, 'craft', 'm181211_143040_fix_entry_type_uids', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '0f8048e3-22b5-47a1-a145-7e2a34322b28'),
(116, 'craft', 'm181217_153000_fix_structure_uids', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6819a0e9-810c-408c-9896-a22004024b2d'),
(117, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '8a3d238e-fbf7-4c10-8a41-1eda346ff61d'),
(118, 'craft', 'm190108_110000_cleanup_project_config', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '1e145601-2d11-419a-877a-2ce25d2eae2e'),
(119, 'craft', 'm190108_113000_asset_field_setting_change', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '86329fa3-7426-43de-b248-19821734320c'),
(120, 'craft', 'm190109_172845_fix_colspan', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '64b724be-2772-476d-a62c-7c445225bd74'),
(121, 'craft', 'm190110_150000_prune_nonexisting_sites', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '75ba501e-ab11-4607-b5f3-8868f5ee90c4'),
(122, 'craft', 'm190110_214819_soft_delete_volumes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '22f477b4-c3c9-42ab-a1eb-6a77d72cc2f5'),
(123, 'craft', 'm190112_124737_fix_user_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '8de632c2-1a28-4d0b-b185-bf0478efa93d'),
(124, 'craft', 'm190112_131225_fix_field_layouts', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '62da2479-d523-4fe7-a599-24a689bc4a0e'),
(125, 'craft', 'm190112_201010_more_soft_deletes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '713e529c-105c-4e89-8c56-89936ff728ab'),
(126, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd1b9285f-a930-460e-be00-a3af756a2fd5'),
(127, 'craft', 'm190121_120000_rich_text_config_setting', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '56a9f567-0132-4dcd-9469-8b92e6746c6a'),
(128, 'craft', 'm190125_191628_fix_email_transport_password', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'f92bb03c-ca96-4072-8956-2a4be0f6d439'),
(129, 'craft', 'm190128_181422_cleanup_volume_folders', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'f5de774c-49f0-429f-aee1-cf8f9cfa43f1'),
(130, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'fbec46bc-f3c8-4744-aab6-f14c3d9db664'),
(131, 'craft', 'm190218_143000_element_index_settings_uid', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5417074e-9907-4b1d-95a3-1267654e4889'),
(132, 'craft', 'm190312_152740_element_revisions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '98b2ab2f-1110-4e96-abf6-aea4e512d7f5'),
(133, 'craft', 'm190327_235137_propagation_method', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'e269291a-916e-4147-bc03-c27143dd1fac'),
(134, 'craft', 'm190401_223843_drop_old_indexes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '12297a3d-4e9f-44d4-9b40-4f738b08a38e'),
(135, 'craft', 'm190416_014525_drop_unique_global_indexes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '1cd21c60-5187-4462-bf53-aef415c0c0f9'),
(136, 'craft', 'm190417_085010_add_image_editor_permissions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2a0ef2c1-63d1-4856-883b-8f31dbc8439d'),
(137, 'craft', 'm190502_122019_store_default_user_group_uid', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2f8aadc6-68ad-4870-9a81-6b38b16171d2'),
(138, 'craft', 'm190504_150349_preview_targets', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '79bed81c-51c9-42ea-906e-fcba9c76e6a7'),
(139, 'craft', 'm190516_184711_job_progress_label', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '9883e588-207f-4f7b-9b40-f719956e6f18'),
(140, 'craft', 'm190523_190303_optional_revision_creators', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'a866844b-3b8c-444a-bbab-250cf59e3db9'),
(141, 'craft', 'm190529_204501_fix_duplicate_uids', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '86a17cbd-361b-423b-85c4-4e56e3ef6cda'),
(142, 'craft', 'm190605_223807_unsaved_drafts', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6caa3aaa-b7d7-42d5-a9cd-e3c36ca62cf5'),
(143, 'craft', 'm190607_230042_entry_revision_error_tables', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'aa0b32fe-de18-4064-95fe-95633709747a'),
(144, 'craft', 'm190608_033429_drop_elements_uid_idx', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '073d2d8c-5331-4743-b4f7-e89af5d32631'),
(145, 'craft', 'm190617_164400_add_gqlschemas_table', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '537fe8d6-4de8-4ed1-92c5-7b8c0b67b44a'),
(146, 'craft', 'm190624_234204_matrix_propagation_method', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '423c49b9-8d1d-4b8a-a2cc-5c57b1f3efec'),
(147, 'craft', 'm190711_153020_drop_snapshots', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '8b1a354f-ee93-4d13-aec0-443a3b991e9d'),
(148, 'craft', 'm190712_195914_no_draft_revisions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '264a858e-1bba-4431-b063-eb7c1b83203b'),
(149, 'craft', 'm190723_140314_fix_preview_targets_column', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '9cab726e-3ccb-4c30-8190-6e73c60f2965'),
(150, 'craft', 'm190820_003519_flush_compiled_templates', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '7be714a9-80ab-4e9d-8655-71ce0a1b636d'),
(151, 'craft', 'm190823_020339_optional_draft_creators', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '53a10c28-0d7e-41a9-ad3e-af0043e8e532'),
(152, 'craft', 'm190913_152146_update_preview_targets', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'f2ce1d12-48cc-42a0-bf46-1dc9bdc8efa2'),
(153, 'craft', 'm191107_122000_add_gql_project_config_support', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '736357f0-7e46-4977-a4cd-22885f63cb56'),
(154, 'craft', 'm191204_085100_pack_savable_component_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6f17f23d-ade6-45b7-80dc-3fd8ef1c895e'),
(155, 'craft', 'm191206_001148_change_tracking', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '270c83b8-a542-4e01-abea-c9a6c899ec29'),
(156, 'craft', 'm191216_191635_asset_upload_tracking', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '54c26566-2448-4b87-8536-a6bb2e947e28'),
(157, 'craft', 'm191222_002848_peer_asset_permissions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6f49d19f-d348-4863-be77-74611b938e85'),
(158, 'craft', 'm200127_172522_queue_channels', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '135bc351-9483-4e04-bf21-3145d1ebcb49'),
(159, 'craft', 'm200211_175048_truncate_element_query_cache', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '9eb09c20-cef9-4009-9f4f-65f5f75be753'),
(160, 'craft', 'm200213_172522_new_elements_index', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '88e9e75e-6637-44bf-95e7-b097935604d2'),
(161, 'craft', 'm200228_195211_long_deprecation_messages', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '226fad1f-3d93-4985-a90e-046713000d39'),
(162, 'craft', 'm200306_054652_disabled_sites', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'ed0cfc32-4205-46a4-b70e-032b91163e0c'),
(163, 'craft', 'm200522_191453_clear_template_caches', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '52ee597d-ef62-4c33-ac23-0b7029aabad8'),
(164, 'craft', 'm200606_231117_migration_tracks', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '38903e30-5b30-4e21-bc8a-847c28a4da6a'),
(165, 'craft', 'm200619_215137_title_translation_method', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'aa417628-701b-4b84-92da-1480d339dfed'),
(166, 'craft', 'm200620_005028_user_group_descriptions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'f2375fc7-9165-474f-9aad-e5687cdfccfb'),
(167, 'craft', 'm200620_230205_field_layout_changes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '510e765d-172f-4c5e-9a25-66e485413b26'),
(168, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'fb815ef2-13ae-446d-ab4e-11afe1f3eeab'),
(169, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '372693b2-9fe9-47a3-aa31-f26d70483b6d'),
(170, 'craft', 'm200630_183000_drop_configmap', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '218c85b3-92fd-4ea2-8e62-292b73961352'),
(171, 'craft', 'm200715_113400_transform_index_error_flag', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '1fc310e6-c5cc-4860-8901-879ebc145820'),
(172, 'craft', 'm200716_110900_replace_file_asset_permissions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '35216ad0-18a9-414c-89e6-2927280e766e'),
(173, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '409ed911-a2ef-47ad-a32f-197621db8960'),
(174, 'craft', 'm200720_175543_drop_unique_constraints', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '7c276fa6-2db6-414a-ab4c-6c9f98c39769'),
(175, 'craft', 'm200825_051217_project_config_version', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'ea947408-0964-4479-ad0a-68071594e4c1'),
(176, 'craft', 'm201116_190500_asset_title_translation_method', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'cc30659f-f9a7-4b17-81dd-e4bf85916b44'),
(177, 'craft', 'm201124_003555_plugin_trials', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '25e39860-c469-4cdb-9a0e-f19b3911227e'),
(178, 'craft', 'm210209_135503_soft_delete_field_groups', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5db3e909-582c-4ff7-bef8-891d865c6265'),
(179, 'craft', 'm210212_223539_delete_invalid_drafts', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '79ac5c43-237f-4b56-9553-303c91531071'),
(180, 'craft', 'm210214_202731_track_saved_drafts', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '5252ed18-123c-44a6-adcd-9a3181d0e974'),
(181, 'craft', 'm210223_150900_add_new_element_gql_schema_components', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '91a51ec8-8f67-45ac-9a05-9d3efce00d49'),
(182, 'craft', 'm210302_212318_canonical_elements', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '41e22198-0680-454e-94ae-e798e715f16e'),
(183, 'craft', 'm210326_132000_invalidate_projectconfig_cache', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '71386880-d833-406f-96ac-1983c5a00d94'),
(184, 'craft', 'm210329_214847_field_column_suffixes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'c07f95ca-a400-4014-a02a-3a335b861fa4'),
(185, 'craft', 'm210331_220322_null_author', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '4377addd-879a-46b3-854f-c5c219732370'),
(186, 'craft', 'm210405_231315_provisional_drafts', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '66cf6943-4216-40f2-aa1b-4e91beefa20a'),
(187, 'craft', 'm210602_111300_project_config_names_in_config', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '94ab3c19-8c3b-4045-bc90-e44ac3260f34'),
(188, 'craft', 'm210611_233510_default_placement_settings', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '76be5fc6-082c-4527-ae3f-9fb257e673bd'),
(189, 'craft', 'm210613_145522_sortable_global_sets', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2039b968-d1f6-4719-aca6-cabec17595fc'),
(190, 'craft', 'm210613_184103_announcements', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd64c6705-f1cc-4555-a6fa-c798c6d41417'),
(191, 'craft', 'm210829_000000_element_index_tweak', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '6d8db418-787b-40d4-891d-5d8598fff7f5'),
(192, 'craft', 'm220209_095604_add_indexes', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'd6e25a50-090a-4d18-9c6a-16025b7de1dc'),
(193, 'craft', 'm220214_000000_truncate_sessions', '2022-02-20 04:50:00', '2022-02-20 04:50:00', '2022-02-20 04:50:00', 'b52cc7dd-cdc2-47f8-a192-337aa5a0cf0f'),
(194, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2022-02-20 05:37:30', '2022-02-20 05:37:30', '2022-02-20 05:37:30', '5e473449-bfaf-4067-9843-2c27f1ed4154'),
(195, 'plugin:redactor', 'Install', '2022-02-20 05:37:30', '2022-02-20 05:37:30', '2022-02-20 05:37:30', 'f6eeea5d-0db1-4708-8690-08459d016338'),
(196, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2022-02-20 05:37:30', '2022-02-20 05:37:30', '2022-02-20 05:37:30', 'b606018b-a5ed-4611-b41b-7129db5a8f50');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '2.10.3', '2.3.0', 'unknown', NULL, '2022-02-20 05:37:30', '2022-02-20 05:37:30', '2022-02-21 11:53:40', '0d0f63ce-91a8-4ba8-a0a2-5c3e022b5fee'),
(2, 'redactor-custom-styles', '3.0.4', '1.0.0', 'unknown', NULL, '2022-02-20 05:54:44', '2022-02-20 05:54:44', '2022-02-21 11:53:40', 'c9363acd-e78c-4619-9d83-19eb7bd41e5f'),
(3, 'redactor-tweaks', '2.0.4', '1.0.0', 'unknown', NULL, '2022-02-20 05:57:05', '2022-02-20 05:57:05', '2022-02-21 11:53:40', '5f246567-85e0-4b4e-b529-998a3a3ddb74'),
(4, 'redactor-split', '1.1.1', '1.0.0', 'unknown', NULL, '2022-02-20 05:59:34', '2022-02-20 05:59:34', '2022-02-21 11:53:40', '0108362c-a525-4bb5-8fdd-fcbc07fb1b14');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.defaultPlacement', '\"end\"'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.autocapitalize', 'true'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.autocomplete', 'false'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.autocorrect', 'true'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.class', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.disabled', 'false'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.id', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.label', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.max', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.min', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.name', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.orientation', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.placeholder', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.readonly', 'false'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.requirable', 'false'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.size', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.step', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.tip', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.title', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.warning', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.elements.0.width', '100'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.name', '\"Content\"'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.fieldLayouts.93b85de9-e380-46b7-bf4a-8b59161da4c9.tabs.0.sortOrder', '1'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.handle', '\"category\"'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.name', '\"category\"'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.hasUrls', 'true'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.template', 'null'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.uriFormat', '\"category/{slug}\"'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.structure.maxLevels', '1'),
('categoryGroups.8ba2b35c-4f68-4570-b288-56f2e0dda92b.structure.uid', '\"01f86a2c-b5e0-4702-8858-ac29ae114d72\"'),
('dateModified', '1645377358'),
('email.fromEmail', '\"vargasman11@gmail.com\"'),
('email.fromName', '\"cataldo\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.class', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.disabled', 'false'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.id', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.instructions', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.label', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.max', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.min', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.name', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.orientation', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.readonly', 'false'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.requirable', 'false'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.size', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.step', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.tip', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.title', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.warning', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.0.width', '100'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.fieldUid', '\"d20675ef-c5e0-4457-a05d-39531760cc5c\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.instructions', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.label', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.required', 'false'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.tip', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.warning', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.1.width', '100'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.fieldUid', '\"5b9d684d-5da2-445d-bc48-51b9ae352a6c\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.instructions', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.label', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.required', 'false'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.tip', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.warning', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.2.width', '100'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.fieldUid', '\"e5417985-058f-4465-9fca-c5cdf7815986\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.instructions', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.label', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.required', 'false'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.tip', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.warning', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.elements.3.width', '100'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.name', '\"Content\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.fieldLayouts.6455d723-1479-4c6a-af0d-27422ba8c0ba.tabs.0.sortOrder', '1'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.handle', '\"default\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.hasTitleField', 'true'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.name', '\"Default\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.section', '\"02a36630-55a8-4e27-bff9-baf27ef9366f\"'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.sortOrder', '1'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.titleFormat', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.titleTranslationKeyFormat', 'null'),
('entryTypes.63286c93-ccf3-4610-a89f-1aeef4ff2dda.titleTranslationMethod', '\"site\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.class', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.disabled', 'false'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.id', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.instructions', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.label', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.max', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.min', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.name', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.orientation', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.readonly', 'false'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.requirable', 'false'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.size', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.step', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.tip', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.title', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.warning', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.0.width', '100'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.fieldUid', '\"5b9d684d-5da2-445d-bc48-51b9ae352a6c\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.instructions', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.label', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.required', 'false'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.tip', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.warning', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.elements.1.width', '100'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.name', '\"Content\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.fieldLayouts.0bebf9d5-7e6e-4dcd-9374-e2753aeb2421.tabs.0.sortOrder', '1'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.handle', '\"default\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.hasTitleField', 'true'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.name', '\"Default\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.section', '\"7798dd4a-df02-4fb9-bd74-ba5b3861a3b2\"'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.sortOrder', '1'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.titleFormat', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.titleTranslationKeyFormat', 'null'),
('entryTypes.978256b4-4917-4876-8f86-256ffdfe172e.titleTranslationMethod', '\"site\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.class', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.disabled', 'false'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.id', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.instructions', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.label', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.max', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.min', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.name', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.orientation', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.readonly', 'false'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.requirable', 'false'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.size', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.step', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.tip', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.title', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.warning', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.0.width', '100'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.fieldUid', '\"e3d484bd-fc08-4e00-aa53-3d47583daa9f\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.instructions', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.label', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.required', 'false'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.tip', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.warning', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.elements.1.width', '100'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.name', '\"Content\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.fieldLayouts.289d9488-1cb9-47d6-bdd1-adb99fb1e5c5.tabs.0.sortOrder', '1'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.handle', '\"galleries\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.hasTitleField', 'false'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.name', '\"Galleries\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.section', '\"6b7954cf-58df-4a94-ac7f-1064c8137e1d\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.sortOrder', '1'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.titleTranslationKeyFormat', 'null'),
('entryTypes.ee00171d-429b-41c1-8eda-df7ecf4eb46e.titleTranslationMethod', '\"site\"'),
('fieldGroups.43b1aff8-18d4-4ba3-93ec-d0f2e3415d5b.name', '\"Globals\"'),
('fieldGroups.af33e277-8e52-4332-aa0d-9efdbe5fdb0e.name', '\"Common\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.columnSuffix', '\"njoljosf\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.contentColumnType', '\"text\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.fieldGroup', '\"43b1aff8-18d4-4ba3-93ec-d0f2e3415d5b\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.handle', '\"authorBio\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.instructions', '\"Paste your Bio Here.\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.name', '\"Author Bio\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.searchable', 'false'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.availableTransforms', '\"*\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.availableVolumes', '\"*\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.columnType', '\"text\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.configSelectionMode', '\"choose\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.defaultTransform', '\"\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.manualConfig', '\"\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.purifierConfig', '\"\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.purifyHtml', '\"1\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.redactorConfig', '\"\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.removeEmptyTags', '\"1\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.removeInlineStyles', '\"1\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.removeNbsp', '\"1\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.showUnpermittedFiles', 'false'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.showUnpermittedVolumes', 'false'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.settings.uiMode', '\"enlarged\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.translationKeyFormat', 'null'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.translationMethod', '\"none\"'),
('fields.3a37bd5e-2600-4ff2-ab18-fbaea082805f.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.columnSuffix', '\"vgbilypy\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.contentColumnType', '\"text\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.fieldGroup', '\"af33e277-8e52-4332-aa0d-9efdbe5fdb0e\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.handle', '\"pageContent\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.instructions', '\"\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.name', '\"Page Content\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.searchable', 'false'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.availableTransforms', '\"*\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.availableVolumes', '\"*\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.columnType', '\"text\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.configSelectionMode', '\"choose\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.defaultTransform', '\"\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.manualConfig', '\"\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.purifierConfig', '\"\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.purifyHtml', '\"1\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.redactorConfig', '\"Example.json\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.removeEmptyTags', '\"1\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.removeInlineStyles', '\"1\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.removeNbsp', '\"1\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.showUnpermittedFiles', 'false'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.showUnpermittedVolumes', 'false'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.settings.uiMode', '\"enlarged\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.translationKeyFormat', 'null'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.translationMethod', '\"none\"'),
('fields.5b9d684d-5da2-445d-bc48-51b9ae352a6c.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.columnSuffix', 'null'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.contentColumnType', '\"string\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.fieldGroup', '\"43b1aff8-18d4-4ba3-93ec-d0f2e3415d5b\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.handle', '\"authorImage\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.instructions', '\"Place an Image of yourself.\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.name', '\"Author Image\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.searchable', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.allowedKinds', 'null'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.allowSelfRelations', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.allowUploads', 'true'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.defaultUploadLocationSource', '\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.limit', '\"1\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.localizeRelations', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.previewMode', '\"full\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.restrictFiles', '\"\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.selectionLabel', '\"\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.showSiteMenu', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.showUnpermittedFiles', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.showUnpermittedVolumes', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.singleUploadLocationSource', '\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.singleUploadLocationSubpath', '\"\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.source', 'null'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.sources', '\"*\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.targetSiteId', 'null'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.useSingleFolder', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.validateRelatedElements', 'false'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.settings.viewMode', '\"list\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.translationKeyFormat', 'null'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.translationMethod', '\"site\"'),
('fields.bb4dae1a-23b5-400a-b7cb-ccf8279434d4.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.columnSuffix', 'null'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.contentColumnType', '\"string\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.fieldGroup', '\"af33e277-8e52-4332-aa0d-9efdbe5fdb0e\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.handle', '\"pageEntyImage\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.instructions', '\"Image that will go on the top of the page and be shown when searching articles.\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.name', '\"Page Enty Image\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.searchable', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.allowedKinds', 'null'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.allowSelfRelations', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.allowUploads', 'true'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.defaultUploadLocationSource', '\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.limit', '\"\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.localizeRelations', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.previewMode', '\"full\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.restrictFiles', '\"\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.selectionLabel', '\"\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.showSiteMenu', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.showUnpermittedFiles', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.showUnpermittedVolumes', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.singleUploadLocationSource', '\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.singleUploadLocationSubpath', '\"\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.source', 'null'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.sources', '\"*\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.targetSiteId', 'null'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.useSingleFolder', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.validateRelatedElements', 'false'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.settings.viewMode', '\"list\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.translationKeyFormat', 'null'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.translationMethod', '\"site\"'),
('fields.d20675ef-c5e0-4457-a05d-39531760cc5c.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.columnSuffix', 'null'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.contentColumnType', '\"string\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.fieldGroup', '\"af33e277-8e52-4332-aa0d-9efdbe5fdb0e\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.handle', '\"galleryImages\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.instructions', '\"\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.name', '\"Gallery Images\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.searchable', 'false'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.settings.contentTable', '\"{{%matrixcontent_galleryimages}}\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.settings.maxBlocks', '\"\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.settings.minBlocks', '\"\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.settings.propagationKeyFormat', 'null'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.settings.propagationMethod', '\"all\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.translationKeyFormat', 'null'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.translationMethod', '\"site\"'),
('fields.e3d484bd-fc08-4e00-aa53-3d47583daa9f.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.columnSuffix', 'null'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.contentColumnType', '\"string\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.fieldGroup', '\"af33e277-8e52-4332-aa0d-9efdbe5fdb0e\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.handle', '\"category\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.instructions', '\"Select what type of post this will be related to.\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.name', '\"Category\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.searchable', 'false'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.allowLimit', 'false'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.allowMultipleSources', 'false'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.allowSelfRelations', 'false'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.branchLimit', '\"1\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.limit', 'null'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.localizeRelations', 'false'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.selectionLabel', '\"\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.showSiteMenu', 'false'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.source', '\"group:8ba2b35c-4f68-4570-b288-56f2e0dda92b\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.sources', '\"*\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.targetSiteId', 'null'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.validateRelatedElements', 'false'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.settings.viewMode', 'null'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.translationKeyFormat', 'null'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.translationMethod', '\"site\"'),
('fields.e5417985-058f-4465-9fca-c5cdf7815986.type', '\"craft\\\\fields\\\\Categories\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.columnSuffix', '\"aqetzcun\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.contentColumnType', '\"text\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.fieldGroup', '\"43b1aff8-18d4-4ba3-93ec-d0f2e3415d5b\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.handle', '\"authorName\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.instructions', '\"\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.name', '\"Author Name\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.searchable', 'false'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.byteLimit', 'null'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.charLimit', 'null'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.code', '\"\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.columnType', 'null'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.initialRows', '\"4\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.multiline', '\"\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.placeholder', 'null'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.settings.uiMode', '\"normal\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.translationKeyFormat', 'null'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.translationMethod', '\"none\"'),
('fields.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7.type', '\"craft\\\\fields\\\\PlainText\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.fieldUid', '\"3a37bd5e-2600-4ff2-ab18-fbaea082805f\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.instructions', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.label', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.required', 'false'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.tip', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.warning', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.0.width', '100'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.fieldUid', '\"bb4dae1a-23b5-400a-b7cb-ccf8279434d4\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.instructions', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.label', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.required', 'false'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.tip', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.warning', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.1.width', '100'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.fieldUid', '\"e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.instructions', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.label', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.required', 'false'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.tip', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.warning', 'null'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.elements.2.width', '100'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.name', '\"Author Info\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.fieldLayouts.2b1a640b-803b-4f94-885f-d45d6cb1ee3f.tabs.0.sortOrder', '1'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.handle', '\"globals\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.name', '\"Globals\"'),
('globalSets.42ecf3de-1855-4712-8a70-a5ffe8b5b546.sortOrder', '1'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.field', '\"e3d484bd-fc08-4e00-aa53-3d47583daa9f\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.fieldUid', '\"a1686e3d-1865-445a-852d-25a24e433860\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fieldLayouts.d1d35c1a-5088-4380-a396-f851e3553a33.tabs.0.sortOrder', '1'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.columnSuffix', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.contentColumnType', '\"string\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.fieldGroup', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.handle', '\"galleryImage\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.instructions', '\"\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.name', '\"Gallery Image\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.searchable', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.allowedKinds', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.allowUploads', 'true'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.defaultUploadLocationSource', '\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.defaultUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.limit', '\"\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.localizeRelations', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.previewMode', '\"full\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.restrictFiles', '\"\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.showSiteMenu', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.singleUploadLocationSource', '\"volume:bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.singleUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.source', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.sources', '\"*\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.targetSiteId', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.useSingleFolder', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.settings.viewMode', '\"list\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.translationKeyFormat', 'null'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.translationMethod', '\"site\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.fields.a1686e3d-1865-445a-852d-25a24e433860.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.handle', '\"gallery\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.name', '\"Gallery\"'),
('matrixBlockTypes.082c475d-689f-427b-90b2-a941e80f665b.sortOrder', '1'),
('meta.__names__.02a36630-55a8-4e27-bff9-baf27ef9366f', '\"Blog\"'),
('meta.__names__.082c475d-689f-427b-90b2-a941e80f665b', '\"Gallery\"'),
('meta.__names__.0f6e04df-ce19-4a89-b89d-e879e822e087', '\"cataldo\"'),
('meta.__names__.3a37bd5e-2600-4ff2-ab18-fbaea082805f', '\"Author Bio\"'),
('meta.__names__.42ecf3de-1855-4712-8a70-a5ffe8b5b546', '\"Globals\"'),
('meta.__names__.43b1aff8-18d4-4ba3-93ec-d0f2e3415d5b', '\"Globals\"'),
('meta.__names__.5b9d684d-5da2-445d-bc48-51b9ae352a6c', '\"Page Content\"'),
('meta.__names__.63286c93-ccf3-4610-a89f-1aeef4ff2dda', '\"Default\"'),
('meta.__names__.6b7954cf-58df-4a94-ac7f-1064c8137e1d', '\"Galleries\"'),
('meta.__names__.7637aad2-967f-4c26-8220-284ff09a09ab', '\"cataldo\"'),
('meta.__names__.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2', '\"Page\"'),
('meta.__names__.8ba2b35c-4f68-4570-b288-56f2e0dda92b', '\"category\"'),
('meta.__names__.978256b4-4917-4876-8f86-256ffdfe172e', '\"Default\"'),
('meta.__names__.a1686e3d-1865-445a-852d-25a24e433860', '\"Gallery Image\"'),
('meta.__names__.af33e277-8e52-4332-aa0d-9efdbe5fdb0e', '\"Common\"'),
('meta.__names__.bb4dae1a-23b5-400a-b7cb-ccf8279434d4', '\"Author Image\"'),
('meta.__names__.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6', '\"Uploads\"'),
('meta.__names__.d20675ef-c5e0-4457-a05d-39531760cc5c', '\"Page Enty Image\"'),
('meta.__names__.e3d484bd-fc08-4e00-aa53-3d47583daa9f', '\"Gallery Images\"'),
('meta.__names__.e5417985-058f-4465-9fca-c5cdf7815986', '\"Category\"'),
('meta.__names__.e5aeeef1-b40f-4e0b-8f8e-e4b445b9b1a7', '\"Author Name\"'),
('meta.__names__.ee00171d-429b-41c1-8eda-df7ecf4eb46e', '\"Galleries\"'),
('plugins.redactor-custom-styles.edition', '\"standard\"'),
('plugins.redactor-custom-styles.enabled', 'true'),
('plugins.redactor-custom-styles.schemaVersion', '\"1.0.0\"'),
('plugins.redactor-split.edition', '\"standard\"'),
('plugins.redactor-split.enabled', 'true'),
('plugins.redactor-split.schemaVersion', '\"1.0.0\"'),
('plugins.redactor-tweaks.edition', '\"standard\"'),
('plugins.redactor-tweaks.enabled', 'true'),
('plugins.redactor-tweaks.schemaVersion', '\"1.0.0\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.defaultPlacement', '\"end\"'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.enableVersioning', 'true'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.handle', '\"blog\"'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.name', '\"Blog\"'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.propagationMethod', '\"all\"'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.enabledByDefault', 'true'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.hasUrls', 'true'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.template', '\"_entiries.twig\"'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.uriFormat', '\"blog/{slug}\"'),
('sections.02a36630-55a8-4e27-bff9-baf27ef9366f.type', '\"channel\"'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.defaultPlacement', '\"end\"'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.enableVersioning', 'true'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.handle', '\"galleries\"'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.name', '\"Galleries\"'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.propagationMethod', '\"all\"'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.enabledByDefault', 'true'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.hasUrls', 'true'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.template', '\"_galleries.twig\"'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.uriFormat', '\"galleries\"'),
('sections.6b7954cf-58df-4a94-ac7f-1064c8137e1d.type', '\"single\"'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.defaultPlacement', '\"end\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.enableVersioning', 'true'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.handle', '\"page\"'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.name', '\"Page\"'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.propagationMethod', '\"all\"'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.enabledByDefault', 'true'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.hasUrls', 'true'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.template', '\"_page-entry.twig\"'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.siteSettings.0f6e04df-ce19-4a89-b89d-e879e822e087.uriFormat', '\"page/{slug}\"'),
('sections.7798dd4a-df02-4fb9-bd74-ba5b3861a3b2.type', '\"channel\"'),
('siteGroups.7637aad2-967f-4c26-8220-284ff09a09ab.name', '\"cataldo\"'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.baseUrl', 'null'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.enabled', 'true'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.handle', '\"default\"'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.hasUrls', 'false'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.language', '\"en-US\"'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.name', '\"cataldo\"'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.primary', 'true'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.siteGroup', '\"7637aad2-967f-4c26-8220-284ff09a09ab\"'),
('sites.0f6e04df-ce19-4a89-b89d-e879e822e087.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"cataldo\"'),
('system.schemaVersion', '\"3.7.33\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.autocomplete', 'false'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.autocorrect', 'true'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.class', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.disabled', 'false'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.id', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.instructions', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.label', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.max', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.min', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.name', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.orientation', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.placeholder', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.readonly', 'false'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.requirable', 'false'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.size', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.step', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.tip', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.title', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.warning', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.elements.0.width', '100'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.name', '\"Content\"'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.fieldLayouts.5e53b0cb-ec42-453c-aa50-7809be8bd79a.tabs.0.sortOrder', '1'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.handle', '\"uploads\"'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.hasUrls', 'true'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.name', '\"Uploads\"'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.settings.path', '\"@webroot/images/uploads\"'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.sortOrder', '1'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.titleTranslationKeyFormat', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.titleTranslationMethod', 'null'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6.url', '\"/images/uploads\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(35, 3, 46, NULL, 43, 1, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '89786e8c-2f32-4c55-80d2-d37eda61219f'),
(36, 3, 46, NULL, 44, 2, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'e9b1b90b-b704-452b-bd3f-a7befab30352'),
(37, 3, 46, NULL, 45, 3, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'bbc5bb27-0437-47ce-a3e8-6f423c6b1ea2'),
(38, 3, 46, NULL, 41, 4, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '8bd92475-4c0d-464f-863c-bac047f82c86'),
(39, 3, 46, NULL, 42, 5, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'd08d0ef4-8967-47cf-8d4d-fd06e1597cad'),
(40, 3, 46, NULL, 40, 6, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '57318809-dc3f-44d1-a5bc-0b62de2f0c34'),
(41, 3, 46, NULL, 37, 7, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '33598f09-a113-4636-9182-a1599487c4b9'),
(42, 3, 46, NULL, 38, 8, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '3db92fb3-dd02-42da-9136-c7418f5d816c'),
(43, 3, 46, NULL, 39, 9, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'c2e7ea44-f499-4036-9b74-47513197c1e9'),
(44, 3, 46, NULL, 35, 10, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '92a8d3c6-3af4-480b-a95d-e094a176d38d'),
(45, 3, 46, NULL, 36, 11, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'd6a49062-14e4-4791-af02-6f70020cde45'),
(46, 3, 46, NULL, 33, 12, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'd7aa72a5-ddce-4a35-a130-78e66e1aaf59'),
(47, 3, 46, NULL, 34, 13, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'f5ec9992-ccc8-40c0-ad90-65ded31da9cd'),
(48, 3, 46, NULL, 31, 14, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '217c5024-2177-4a0c-b3df-282fe32373dd'),
(49, 3, 46, NULL, 32, 15, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '8dabb402-957b-4e88-a7aa-d18cf49e919b'),
(50, 3, 46, NULL, 30, 16, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '3911d0e0-94f2-4755-82a3-f33969bb627a'),
(51, 3, 46, NULL, 29, 17, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'a2fd6655-5272-4310-b8b4-a579d9672849'),
(52, 3, 46, NULL, 27, 18, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'df1da956-ee79-4482-bf82-b306f408b79a'),
(53, 3, 46, NULL, 28, 19, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '66bbe3f2-9ef1-43e1-854b-da9b99fab345'),
(54, 3, 46, NULL, 25, 20, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'ebfcf4f3-18e8-4d79-8fb8-1ac713737fb1'),
(55, 3, 46, NULL, 26, 21, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '37a37a0f-ccef-4b47-9072-e33301dbfa87'),
(56, 3, 46, NULL, 23, 22, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'fa12092e-e65d-4719-9985-f6f8604e6200'),
(57, 3, 46, NULL, 24, 23, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'db3e5865-029f-4cc6-a292-5140b4ac7c34'),
(58, 3, 46, NULL, 21, 24, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'b2a8f3ae-b40b-44ac-8d0e-4e9c5435f732'),
(59, 3, 46, NULL, 22, 25, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'f1f099e6-e651-4dec-8425-bc054b284bc6'),
(60, 3, 46, NULL, 19, 26, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '7822c74f-e8f9-484f-bd70-7ed9ed8ffa9d'),
(61, 3, 46, NULL, 20, 27, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '0303eebe-524e-4803-bb14-d3c079920035'),
(62, 3, 46, NULL, 18, 28, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '3bd96f92-6d89-4b16-b2df-97aa9f89acdd'),
(63, 3, 46, NULL, 16, 29, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '501c9ac2-30af-43a7-9326-898822df1fae'),
(64, 3, 46, NULL, 17, 30, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '270d07b2-e399-46e1-aa1d-9a2762520353'),
(65, 3, 46, NULL, 14, 31, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'd4d39716-112b-4966-bd33-fdb6dcffbc2d'),
(66, 3, 46, NULL, 15, 32, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '08531471-3465-4dc6-a246-5faefbc487fa'),
(67, 3, 46, NULL, 12, 33, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '90416655-d12a-4796-863b-b46701279b8c'),
(68, 3, 46, NULL, 13, 34, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'f2f36495-4ed2-4932-89cd-ab0a2e033ba0'),
(69, 3, 48, NULL, 43, 1, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'a1d69e5f-5fa1-4c05-bb02-44826fd4c481'),
(70, 3, 48, NULL, 44, 2, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '5cbc0b10-e386-4739-8912-6f1a61c12699'),
(71, 3, 48, NULL, 45, 3, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '4fc591cd-1256-4163-8c60-11dba4a233d4'),
(72, 3, 48, NULL, 41, 4, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '2b758356-96ce-4b7d-a58c-3357a7d3914f'),
(73, 3, 48, NULL, 42, 5, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '1a46fd6c-0bdf-4c26-8227-feba23317fe8'),
(74, 3, 48, NULL, 40, 6, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'bf23463c-e8c7-4735-9dd7-8a6f4483ece1'),
(75, 3, 48, NULL, 37, 7, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '7f747dee-b9dd-4f98-ba84-43bebbf9c7d3'),
(76, 3, 48, NULL, 38, 8, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '813c8dad-c479-40bd-9d89-049b04bdaf1c'),
(77, 3, 48, NULL, 39, 9, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '2bec2aa5-81f8-45f3-80bb-6083af019436'),
(78, 3, 48, NULL, 35, 10, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'f1eff8ac-5ecd-46cb-a838-b9c2a5246545'),
(79, 3, 48, NULL, 36, 11, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '3e297af3-1408-4524-b30f-f2e99998e14e'),
(80, 3, 48, NULL, 33, 12, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '4799edd8-4b91-4025-8ba8-94984cdb02a6'),
(81, 3, 48, NULL, 34, 13, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '2460d23e-212a-424d-8a40-bd2dad723cab'),
(82, 3, 48, NULL, 31, 14, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '4c486008-0ea4-4489-ae3c-0402cc750c04'),
(83, 3, 48, NULL, 32, 15, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '62ee296f-f873-4559-82c0-77966e242e99'),
(84, 3, 48, NULL, 30, 16, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '1aa4c9e9-0e21-449e-9680-702a201a61f9'),
(85, 3, 48, NULL, 29, 17, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'a380fd2c-0782-43e2-b6ae-e37cd78733bd'),
(86, 3, 48, NULL, 27, 18, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '5483eb10-f94d-4406-98a4-683a1805eaad'),
(87, 3, 48, NULL, 28, 19, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '65549aea-3a7f-4df7-9ff6-2ad66c3feb60'),
(88, 3, 48, NULL, 25, 20, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '9ed5d86e-598b-48c6-b36b-1ea5a3b04929'),
(89, 3, 48, NULL, 26, 21, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'a223003c-e715-4389-a3f0-d85758c3d32c'),
(90, 3, 48, NULL, 23, 22, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'f3f866eb-7c7e-4686-854b-97bccc0bc6e0'),
(91, 3, 48, NULL, 24, 23, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'd8c81816-ba59-46cc-b44c-70591c7e3eb6'),
(92, 3, 48, NULL, 21, 24, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '7d49b4d4-0b92-431d-ba35-9d37d8d75dd3'),
(93, 3, 48, NULL, 22, 25, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '4c325625-4598-4f92-a050-33164efafa29'),
(94, 3, 48, NULL, 19, 26, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '3a007cdd-9c98-4787-9ff6-b2b606b9087f'),
(95, 3, 48, NULL, 20, 27, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '1c8d4d08-bfcd-40d2-8699-67f02620c147'),
(96, 3, 48, NULL, 18, 28, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '0a18f4a3-851d-4e9d-b947-1d5cb6856011'),
(97, 3, 48, NULL, 16, 29, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '4a7ea4a8-3a3c-460e-b8bd-8b62f52bfeb7'),
(98, 3, 48, NULL, 17, 30, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'daca24c0-ef6e-4b39-86af-f289306e6e72'),
(99, 3, 48, NULL, 14, 31, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '1ad9af89-4a42-44eb-a01d-76a231ea5352'),
(100, 3, 48, NULL, 15, 32, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '7ab0390b-6177-411b-adf1-c63cb9d6ed91'),
(101, 3, 48, NULL, 12, 33, '2022-02-20 06:37:12', '2022-02-20 06:37:12', '7cc72038-f110-4e6c-8434-ff42eca0b2ed'),
(102, 3, 48, NULL, 13, 34, '2022-02-20 06:37:12', '2022-02-20 06:37:12', 'ebc2d6eb-54ee-4542-8efb-7490bcd0a513'),
(103, 3, 50, NULL, 43, 1, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'e3b00b78-cc17-4227-a5fa-18ee8f192c05'),
(104, 3, 50, NULL, 44, 2, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'c0d41ab4-22d7-4f6d-8383-e99960336fe5'),
(105, 3, 50, NULL, 45, 3, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '53ddf24e-5e86-401c-9097-f99f61e06aeb'),
(106, 3, 50, NULL, 41, 4, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '91eb70b8-5dd5-499e-a483-983588fc4730'),
(107, 3, 50, NULL, 42, 5, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '99985095-6c1d-4a1b-8be1-38f0c391fe2f'),
(108, 3, 50, NULL, 40, 6, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '4732412e-d55e-4ffc-aaa0-34aae7057572'),
(109, 3, 50, NULL, 37, 7, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '825f592d-0cd4-4226-8d50-2f62463ec661'),
(110, 3, 50, NULL, 38, 8, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'd85032d7-b3f7-4176-ba9f-41f41d2e38e4'),
(111, 3, 50, NULL, 39, 9, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '8d8ab933-5f59-45ca-a693-d84a23734584'),
(112, 3, 50, NULL, 35, 10, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'f96605df-ef24-4873-bc2c-04cf6cd98760'),
(113, 3, 50, NULL, 36, 11, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '2d11cc2f-5c06-452d-b33e-dc7d822d42ba'),
(114, 3, 50, NULL, 33, 12, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '9065a9f7-061c-4ace-bda0-5fbf97848557'),
(115, 3, 50, NULL, 34, 13, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '01c5d050-9bbf-4af4-b99f-a9ee162affb3'),
(116, 3, 50, NULL, 31, 14, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'b613df5a-267f-43f6-9c35-895a75aef1f4'),
(117, 3, 50, NULL, 32, 15, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'b1c2e9de-1718-4379-8add-68fba4ea8ff8'),
(118, 3, 50, NULL, 30, 16, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '2568961c-1388-413c-b624-001bcd47ce42'),
(119, 3, 50, NULL, 29, 17, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '3af154e2-e6b9-4864-828a-9bbfcdd6575e'),
(120, 3, 50, NULL, 27, 18, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '1cc0d35b-a635-4a88-b239-c07881716d58'),
(121, 3, 50, NULL, 28, 19, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'b2955245-99f7-4b57-9e93-8876adf81666'),
(122, 3, 50, NULL, 25, 20, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'ae0137f3-bf74-4b0d-a70c-632dbd06c0d1'),
(123, 3, 50, NULL, 26, 21, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '34816bea-36dd-47a2-a6cd-34fb28bd56af'),
(124, 3, 50, NULL, 23, 22, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'e5ffdbfb-8536-49a7-8ce9-514a20cbbfad'),
(125, 3, 50, NULL, 24, 23, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'ffdc51e9-c3ab-4e44-86c5-04178603b2e0'),
(126, 3, 50, NULL, 21, 24, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '242bea42-2d4e-4a48-a3f2-1e2084fd4346'),
(127, 3, 50, NULL, 22, 25, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '005c136d-66d2-4170-a0e6-13babd862be6'),
(128, 3, 50, NULL, 19, 26, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '02172d5d-6500-49c0-9efa-27664fa07afe'),
(129, 3, 50, NULL, 20, 27, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '63d2f79a-e84f-44bb-9167-5e86aaf7d93a'),
(130, 3, 50, NULL, 18, 28, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '20ef2a25-21bf-4ccb-b7bd-44cb8271fa0a'),
(131, 3, 50, NULL, 16, 29, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '4dddb41c-7727-4c25-9054-40dda3e3fa3f'),
(132, 3, 50, NULL, 17, 30, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '22e54e7f-e7a6-4f77-8dd8-36519efd9e1e'),
(133, 3, 50, NULL, 14, 31, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '44e9189e-6a88-4171-94ac-70acb8aac5cb'),
(134, 3, 50, NULL, 15, 32, '2022-02-20 06:41:13', '2022-02-20 06:41:13', '0acdb271-a854-4296-98c0-9983be1aa404'),
(135, 3, 50, NULL, 12, 33, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'f7f0490b-8f52-40d3-9809-ff4571ecd071'),
(136, 3, 50, NULL, 13, 34, '2022-02-20 06:41:13', '2022-02-20 06:41:13', 'bc59bae1-ef42-4d6a-b529-4d1654131e16'),
(137, 3, 52, NULL, 43, 1, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'cfac08d7-05d0-4938-94c6-28c2573a37b8'),
(138, 3, 52, NULL, 44, 2, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'b7b1a71b-0790-48ad-8ec3-f87e0de9257c'),
(139, 3, 52, NULL, 45, 3, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '92d232ef-091c-4d9c-9938-8c2e4b42a5ee'),
(140, 3, 52, NULL, 41, 4, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'b6e5c146-1f4d-4ee8-a1d9-40d5359d379c'),
(141, 3, 52, NULL, 42, 5, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'c3e325f1-d1d6-4f11-8c32-6dc11415ab01'),
(142, 3, 52, NULL, 40, 6, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '965cb23b-b561-4887-a558-12c4c095c12f'),
(143, 3, 52, NULL, 37, 7, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '0fad7db8-a2a3-4dc4-939a-9f2eacac2bae'),
(144, 3, 52, NULL, 38, 8, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'c04f0d8f-bf76-4e4f-821e-c86272acc89c'),
(145, 3, 52, NULL, 39, 9, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '281e56f5-7e65-4078-85e5-c2f38408ac3f'),
(146, 3, 52, NULL, 35, 10, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '844559d9-ffd5-4fcd-bb4b-4975f43250b3'),
(147, 3, 52, NULL, 36, 11, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '510a212a-3f6a-471d-aefa-96b32cd12b81'),
(148, 3, 52, NULL, 33, 12, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '8e7dc619-2a70-4111-b3b9-2975cb152ed2'),
(149, 3, 52, NULL, 34, 13, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '18855882-6f7e-43d6-a361-b20038e2ad40'),
(150, 3, 52, NULL, 31, 14, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '012bb8a7-d5f5-416c-b2c7-677d50377c55'),
(151, 3, 52, NULL, 32, 15, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'a8f7d920-54f2-4140-bf2a-9090eced1c5b'),
(152, 3, 52, NULL, 30, 16, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '40addda0-a38c-4f81-a762-57158c6f1880'),
(153, 3, 52, NULL, 29, 17, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'fa0000a3-804b-47ae-ac8b-cd9466d4f72d'),
(154, 3, 52, NULL, 27, 18, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'e0204c12-46cf-4c0f-9583-9fd74158fc3a'),
(155, 3, 52, NULL, 28, 19, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '8dc5ed56-ea81-4cf2-b284-d390ce9941a9'),
(156, 3, 52, NULL, 25, 20, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '9f1804af-f4f6-47e2-8e09-013048ca1ce9'),
(157, 3, 52, NULL, 26, 21, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '3527ffd4-c15f-47ca-a0cf-c515607249fd'),
(158, 3, 52, NULL, 23, 22, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '40c04773-f0e1-4d22-b076-b8b55a18877a'),
(159, 3, 52, NULL, 24, 23, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '04620772-1052-4d27-8644-8142bdc971dd'),
(160, 3, 52, NULL, 21, 24, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '100bcb8f-dd23-4fa8-b2cd-d9f47e0db421'),
(161, 3, 52, NULL, 22, 25, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '2666b3ef-8c57-49a2-9833-7fc0f8c0181d'),
(162, 3, 52, NULL, 19, 26, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '41c91879-1dfb-45fe-b863-b482d72bb4ac'),
(163, 3, 52, NULL, 20, 27, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '387a17bf-5baf-442c-b2e8-cee8bed85120'),
(164, 3, 52, NULL, 18, 28, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '71bfa990-4f3d-4fb6-a045-1da6e8fcac82'),
(165, 3, 52, NULL, 16, 29, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '7ad4b466-28a4-4a5b-b2e0-e8637322f8db'),
(166, 3, 52, NULL, 17, 30, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '99e6619d-5141-47e3-b2eb-a0c4ea5aed5b'),
(167, 3, 52, NULL, 14, 31, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'a56cfe1e-7418-4017-8534-2cbfa917ac38'),
(168, 3, 52, NULL, 15, 32, '2022-02-20 06:49:15', '2022-02-20 06:49:15', '805ead5e-7867-45f0-9203-590e64460272'),
(169, 3, 52, NULL, 12, 33, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'e356ac0f-0ffc-4a9a-bcd1-e654511f10e1'),
(170, 3, 52, NULL, 13, 34, '2022-02-20 06:49:15', '2022-02-20 06:49:15', 'b488e142-cca7-4519-9e98-2cbd3e6d3a4e'),
(171, 5, 53, NULL, 54, 1, '2022-02-20 16:31:15', '2022-02-20 16:31:15', 'dbb74c35-a54d-4b89-8100-61568d0973f4'),
(172, 6, 58, NULL, 59, 1, '2022-02-20 16:49:29', '2022-02-20 16:49:29', '8d8acd24-3831-4b66-968b-b59109dbb02d'),
(173, 7, 58, NULL, 55, 1, '2022-02-20 16:50:20', '2022-02-20 16:50:20', 'fabd6e7f-ed55-4d29-bc97-5408d35ebc31'),
(174, 6, 60, NULL, 59, 1, '2022-02-20 16:50:22', '2022-02-20 16:50:22', '6317eff9-0b75-4f97-9d2a-92cfdf0c2814'),
(175, 7, 60, NULL, 55, 1, '2022-02-20 16:50:22', '2022-02-20 16:50:22', 'aa3ba60c-cb91-4b6c-9006-6894a70a3bcb'),
(180, 6, 63, NULL, 59, 1, '2022-02-21 11:53:35', '2022-02-21 11:53:35', '625c46a5-7eb2-4637-8f3c-dc908c161f34'),
(181, 7, 63, NULL, 55, 1, '2022-02-21 11:53:35', '2022-02-21 11:53:35', '9ebcda76-a587-445c-b117-9d27d48776f9'),
(182, 7, 64, NULL, 56, 1, '2022-02-21 11:54:33', '2022-02-21 11:54:33', 'a7007b0d-f17d-4631-b709-5f783eec9965'),
(185, 6, 65, NULL, 44, 1, '2022-02-21 11:55:02', '2022-02-21 11:55:02', '10ffd39f-d11a-4b3e-ae49-817597375c26'),
(186, 7, 65, NULL, 56, 1, '2022-02-21 11:55:02', '2022-02-21 11:55:02', '111d883a-6bc2-47e9-b35b-0389d28c9559'),
(190, 6, 64, NULL, 27, 1, '2022-02-21 11:55:34', '2022-02-21 11:55:34', '4d68b345-68bb-4818-98c7-6a2998ceac5f'),
(191, 6, 68, NULL, 27, 1, '2022-02-21 11:55:34', '2022-02-21 11:55:34', 'af2d0ed2-5db3-43b2-9b0d-cb08c2a5fcde'),
(192, 7, 68, NULL, 56, 1, '2022-02-21 11:55:34', '2022-02-21 11:55:34', '0d0b4074-f5b5-4cfa-b7b0-710400e3bf2f'),
(193, 6, 69, NULL, 30, 1, '2022-02-21 11:56:10', '2022-02-21 11:56:10', 'b8e254b8-3078-477c-9759-2f51fe4de345'),
(194, 7, 69, NULL, 56, 1, '2022-02-21 11:56:28', '2022-02-21 11:56:28', 'd6309053-b6f1-4b6a-a0ea-1637f966ed14'),
(195, 6, 70, NULL, 30, 1, '2022-02-21 11:56:30', '2022-02-21 11:56:30', 'e4cd4c76-ccea-4efc-85f0-f0e2a77bf9ab'),
(196, 7, 70, NULL, 56, 1, '2022-02-21 11:56:30', '2022-02-21 11:56:30', '11492b88-1eb2-4e75-948f-601691a8fa26'),
(197, 6, 71, NULL, 72, 1, '2022-02-21 11:57:43', '2022-02-21 11:57:43', '9ecc1065-1fc5-4fd5-a692-d5d4be453f13'),
(198, 7, 71, NULL, 56, 1, '2022-02-21 11:57:53', '2022-02-21 11:57:53', 'd83ecff5-d809-495e-8cec-eb91f45fd170'),
(199, 6, 73, NULL, 72, 1, '2022-02-21 11:57:58', '2022-02-21 11:57:58', '292657be-c504-4e3b-b6fe-3b70e5b374c3'),
(200, 7, 73, NULL, 56, 1, '2022-02-21 11:57:58', '2022-02-21 11:57:58', 'f2de54dd-db6c-41ad-8b52-1019561f4227');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('17217c7c', '@craft/web/assets/admintable/dist'),
('1e0f84a9', '@craft/web/assets/fields/dist'),
('20ef0c89', '@craft/web/assets/sites/dist'),
('24f9dcc4', '@venveo/redactorsplit/resources'),
('2e1d0894', '@craft/web/assets/fabric/dist'),
('34ea749d', '@verbb/base/resources/dist'),
('36ec4ad3', '@craft/web/assets/matrix/dist'),
('3e379eaa', '@craft/web/assets/utilities/dist'),
('40013d9f', '@craft/web/assets/recententries/dist'),
('49c27bc0', '@craft/web/assets/updater/dist'),
('58f4a8c6', '@craft/web/assets/axios/dist'),
('5e6b7423', '@craft/redactor/assets/field/dist'),
('64c5a660', '@craft/web/assets/cp/dist'),
('663e15fb', '@craft/web/assets/focusvisible/dist'),
('66e313f0', '@craft/redactor/assets/redactor-plugins/dist/fullscreen'),
('688d0428', '@craft/web/assets/selectize/dist'),
('69b9fdb6', '@craft/web/assets/installer/dist'),
('6af3f83', '@craft/web/assets/garnish/dist'),
('6b63e9db', '@carlcs/redactorcustomstyles/assets/redactorplugin/_redactorplugin'),
('6dbe961d', '@craft/web/assets/pluginstore/dist'),
('73f85ca8', '@craft/web/assets/fieldsettings/dist'),
('7591899e', '@craft/web/assets/iframeresizer/dist'),
('77942baa', '@craft/web/assets/generalsettings/dist'),
('7ebb7ff1', '@craft/web/assets/updateswidget/dist'),
('7ef08029', '@craft/web/assets/d3/dist'),
('808b711b', '@craft/web/assets/matrixsettings/dist'),
('84469104', '@craft/web/assets/edituser/dist'),
('9f419277', '@craft/web/assets/dashboard/dist'),
('a1af8730', '@config/redactor/resources'),
('a52af7fe', '@craft/web/assets/prismjs/dist'),
('aea2d497', '@craft/web/assets/fileupload/dist'),
('b0d9023c', '@craft/web/assets/jqueryui/dist'),
('ba3e922a', '@bower/jquery/dist'),
('bfde8dc2', '@craft/web/assets/elementresizedetector/dist'),
('bfe75077', '@craft/web/assets/editentry/dist'),
('c9324c19', '@craft/redactor/assets/redactor-plugins/dist/video'),
('cb675fba', '@craft/redactor/assets/redactor/dist'),
('d0cbe33c', '@craft/web/assets/picturefill/dist'),
('d1113e35', '@craft/web/assets/login/dist'),
('d91789f8', '@craft/web/assets/craftsupport/dist'),
('db735e3c', '@craft/web/assets/xregexp/dist'),
('dfb91380', '@craft/web/assets/timepicker/dist'),
('e602b4bc', '@craft/web/assets/feed/dist'),
('e61b74c4', '@craft/web/assets/clearcaches/dist'),
('e6a43e42', '@craft/web/assets/assetindexes/dist'),
('e84d7b3d', '@carlcs/redactorcustomstyles/assets/redactorplugin/dist'),
('e9073b55', '@craft/web/assets/velocity/dist'),
('eae9bd1d', '@verbb/redactortweaks/resources/dist'),
('ec9039e2', '@craft/web/assets/jquerypayment/dist'),
('ecc3e680', '@craft/web/assets/jquerytouchevents/dist'),
('fba64f43', '@craft/web/assets/plugins/dist'),
('fd27e30e', '@craft/web/assets/vue/dist'),
('fd7f1351', '@craft/web/assets/editsection/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, ''),
(2, 2, 1, 2, ''),
(3, 2, 1, 3, 'Applied “Draft 1”'),
(4, 7, 1, 1, NULL),
(5, 7, 1, 2, NULL),
(6, 7, 1, 3, 'Applied “Draft 1”'),
(7, 7, 1, 4, ''),
(8, 7, 1, 5, ''),
(9, 58, 1, 1, ''),
(10, 58, 1, 2, 'Applied “Draft 1”'),
(11, 64, 1, 1, ''),
(12, 64, 1, 2, 'Applied “Draft 1”'),
(13, 69, 1, 1, ''),
(14, 71, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'lastname', 0, 1, ''),
(1, 'firstname', 0, 1, ''),
(7, 'title', 0, 1, ' galleries '),
(2, 'slug', 0, 1, ' about '),
(2, 'title', 0, 1, ' about '),
(7, 'slug', 0, 1, ' galleries '),
(12, 'filename', 0, 1, ' ad 70 stones 683x1024 jpg '),
(12, 'extension', 0, 1, ' jpg '),
(12, 'kind', 0, 1, ' image '),
(12, 'slug', 0, 1, ''),
(12, 'title', 0, 1, ' ad 70 stones 683x1024 '),
(13, 'filename', 0, 1, ' ancient tombs2 1024x683 jpg '),
(13, 'extension', 0, 1, ' jpg '),
(13, 'kind', 0, 1, ' image '),
(13, 'slug', 0, 1, ''),
(13, 'title', 0, 1, ' ancient tombs2 1024x683 '),
(14, 'filename', 0, 1, ' ancient tombs2 1536x1024 jpg '),
(14, 'extension', 0, 1, ' jpg '),
(14, 'kind', 0, 1, ' image '),
(14, 'slug', 0, 1, ''),
(14, 'title', 0, 1, ' ancient tombs2 1536x1024 '),
(15, 'filename', 0, 1, ' caves at qumran 1024x683 jpg '),
(15, 'extension', 0, 1, ' jpg '),
(15, 'kind', 0, 1, ' image '),
(15, 'slug', 0, 1, ''),
(15, 'title', 0, 1, ' caves at qumran 1024x683 '),
(16, 'filename', 0, 1, ' caves at qumran 1536x1024 jpg '),
(16, 'extension', 0, 1, ' jpg '),
(16, 'kind', 0, 1, ' image '),
(16, 'slug', 0, 1, ''),
(16, 'title', 0, 1, ' caves at qumran 1536x1024 '),
(17, 'filename', 0, 1, ' dan temple2 1024x683 jpg '),
(17, 'extension', 0, 1, ' jpg '),
(17, 'kind', 0, 1, ' image '),
(17, 'slug', 0, 1, ''),
(17, 'title', 0, 1, ' dan temple2 1024x683 '),
(18, 'filename', 0, 1, ' dan temple2 1536x1024 jpg '),
(18, 'extension', 0, 1, ' jpg '),
(18, 'kind', 0, 1, ' image '),
(18, 'slug', 0, 1, ''),
(18, 'title', 0, 1, ' dan temple2 1536x1024 '),
(19, 'filename', 0, 1, ' jerusalem looking south 1024x683 jpg '),
(19, 'extension', 0, 1, ' jpg '),
(19, 'kind', 0, 1, ' image '),
(19, 'slug', 0, 1, ''),
(19, 'title', 0, 1, ' jerusalem looking south 1024x683 '),
(20, 'filename', 0, 1, ' jerusalem looking south 1536x1024 jpg '),
(20, 'extension', 0, 1, ' jpg '),
(20, 'kind', 0, 1, ' image '),
(20, 'slug', 0, 1, ''),
(20, 'title', 0, 1, ' jerusalem looking south 1536x1024 '),
(21, 'filename', 0, 1, ' jerusalem wall2 1 1024x683 jpg '),
(21, 'extension', 0, 1, ' jpg '),
(21, 'kind', 0, 1, ' image '),
(21, 'slug', 0, 1, ''),
(21, 'title', 0, 1, ' jerusalem wall2 1 1024x683 '),
(22, 'filename', 0, 1, ' jerusalem wall2 1 1536x1024 jpg '),
(22, 'extension', 0, 1, ' jpg '),
(22, 'kind', 0, 1, ' image '),
(22, 'slug', 0, 1, ''),
(22, 'title', 0, 1, ' jerusalem wall2 1 1536x1024 '),
(23, 'filename', 0, 1, ' jerusalem4 1024x683 jpg '),
(23, 'extension', 0, 1, ' jpg '),
(23, 'kind', 0, 1, ' image '),
(23, 'slug', 0, 1, ''),
(23, 'title', 0, 1, ' jerusalem4 1024x683 '),
(24, 'filename', 0, 1, ' jerusalem4 1536x1024 jpg '),
(24, 'extension', 0, 1, ' jpg '),
(24, 'kind', 0, 1, ' image '),
(24, 'slug', 0, 1, ''),
(24, 'title', 0, 1, ' jerusalem4 1536x1024 '),
(25, 'filename', 0, 1, ' jerusalem7 1024x683 jpg '),
(25, 'extension', 0, 1, ' jpg '),
(25, 'kind', 0, 1, ' image '),
(25, 'slug', 0, 1, ''),
(25, 'title', 0, 1, ' jerusalem7 1024x683 '),
(26, 'filename', 0, 1, ' jerusalem7 1536x1024 jpg '),
(26, 'extension', 0, 1, ' jpg '),
(26, 'kind', 0, 1, ' image '),
(26, 'slug', 0, 1, ''),
(26, 'title', 0, 1, ' jerusalem7 1536x1024 '),
(27, 'kind', 0, 1, ' image '),
(27, 'extension', 0, 1, ' jpg '),
(27, 'filename', 0, 1, ' jesusbeforepilate jpg '),
(28, 'filename', 0, 1, ' kidron valley 1 1024x683 jpg '),
(28, 'extension', 0, 1, ' jpg '),
(28, 'kind', 0, 1, ' image '),
(28, 'slug', 0, 1, ''),
(28, 'title', 0, 1, ' kidron valley 1 1024x683 '),
(29, 'filename', 0, 1, ' kidron valley 1 1536x1024 jpg '),
(29, 'extension', 0, 1, ' jpg '),
(29, 'kind', 0, 1, ' image '),
(29, 'slug', 0, 1, ''),
(29, 'title', 0, 1, ' kidron valley 1 1536x1024 '),
(30, 'filename', 0, 1, ' kidron valley 1 jpg '),
(30, 'extension', 0, 1, ' jpg '),
(30, 'kind', 0, 1, ' image '),
(30, 'slug', 0, 1, ''),
(30, 'title', 0, 1, ' kidron valley 1 '),
(31, 'filename', 0, 1, ' masada2 1 1024x683 jpg '),
(31, 'extension', 0, 1, ' jpg '),
(31, 'kind', 0, 1, ' image '),
(31, 'slug', 0, 1, ''),
(31, 'title', 0, 1, ' masada2 1 1024x683 '),
(32, 'filename', 0, 1, ' masada2 1 1536x1024 jpg '),
(32, 'extension', 0, 1, ' jpg '),
(32, 'kind', 0, 1, ' image '),
(32, 'slug', 0, 1, ''),
(32, 'title', 0, 1, ' masada2 1 1536x1024 '),
(33, 'filename', 0, 1, ' pilates judgment seat 1024x683 jpg '),
(33, 'extension', 0, 1, ' jpg '),
(33, 'kind', 0, 1, ' image '),
(33, 'slug', 0, 1, ''),
(33, 'title', 0, 1, ' pilates judgment seat 1024x683 '),
(34, 'filename', 0, 1, ' pilates judgment seat 1536x1024 jpg '),
(34, 'extension', 0, 1, ' jpg '),
(34, 'kind', 0, 1, ' image '),
(34, 'slug', 0, 1, ''),
(34, 'title', 0, 1, ' pilates judgment seat 1536x1024 '),
(35, 'filename', 0, 1, ' pilates judgment seat2 1024x683 jpg '),
(35, 'extension', 0, 1, ' jpg '),
(35, 'kind', 0, 1, ' image '),
(35, 'slug', 0, 1, ''),
(35, 'title', 0, 1, ' pilates judgment seat2 1024x683 '),
(36, 'filename', 0, 1, ' pilates judgment seat2 1536x1024 jpg '),
(36, 'extension', 0, 1, ' jpg '),
(36, 'kind', 0, 1, ' image '),
(36, 'slug', 0, 1, ''),
(36, 'title', 0, 1, ' pilates judgment seat2 1536x1024 '),
(37, 'filename', 0, 1, ' pilates judgment seat3 1024x683 jpg '),
(37, 'extension', 0, 1, ' jpg '),
(37, 'kind', 0, 1, ' image '),
(37, 'slug', 0, 1, ''),
(37, 'title', 0, 1, ' pilates judgment seat3 1024x683 '),
(38, 'filename', 0, 1, ' pilates judgment seat3 1536x1024 jpg '),
(38, 'extension', 0, 1, ' jpg '),
(38, 'kind', 0, 1, ' image '),
(38, 'slug', 0, 1, ''),
(38, 'title', 0, 1, ' pilates judgment seat3 1536x1024 '),
(39, 'filename', 0, 1, ' pilates judgment seat4 1024x683 jpg '),
(39, 'extension', 0, 1, ' jpg '),
(39, 'kind', 0, 1, ' image '),
(39, 'slug', 0, 1, ''),
(39, 'title', 0, 1, ' pilates judgment seat4 1024x683 '),
(40, 'filename', 0, 1, ' pilates judgment seat4 1536x1024 jpg '),
(40, 'extension', 0, 1, ' jpg '),
(40, 'kind', 0, 1, ' image '),
(40, 'slug', 0, 1, ''),
(40, 'title', 0, 1, ' pilates judgment seat4 1536x1024 '),
(41, 'filename', 0, 1, ' pilates judgment seat7 1024x683 jpg '),
(41, 'extension', 0, 1, ' jpg '),
(41, 'kind', 0, 1, ' image '),
(41, 'slug', 0, 1, ''),
(41, 'title', 0, 1, ' pilates judgment seat7 1024x683 '),
(42, 'filename', 0, 1, ' pilates judgment seat7 1536x1024 jpg '),
(42, 'extension', 0, 1, ' jpg '),
(42, 'kind', 0, 1, ' image '),
(42, 'slug', 0, 1, ''),
(42, 'title', 0, 1, ' pilates judgment seat7 1536x1024 '),
(43, 'filename', 0, 1, ' tamar jpg '),
(43, 'extension', 0, 1, ' jpg '),
(43, 'kind', 0, 1, ' image '),
(43, 'slug', 0, 1, ''),
(43, 'title', 0, 1, ' tamar '),
(44, 'filename', 0, 1, ' thorns 2 1024x683 jpg '),
(44, 'extension', 0, 1, ' jpg '),
(44, 'kind', 0, 1, ' image '),
(44, 'slug', 0, 1, ''),
(44, 'title', 0, 1, ' thorns 2 1024x683 '),
(45, 'filename', 0, 1, ' thorns 2 1536x1024 jpg '),
(45, 'extension', 0, 1, ' jpg '),
(45, 'kind', 0, 1, ' image '),
(45, 'slug', 0, 1, ''),
(45, 'title', 0, 1, ' thorns 2 1536x1024 '),
(46, 'slug', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' vargasman11 gmail com '),
(1, 'slug', 0, 1, ''),
(53, 'slug', 0, 1, ''),
(54, 'filename', 0, 1, ' screenshot 20200909 181944 gallery e1599703093436 1 jpg '),
(54, 'extension', 0, 1, ' jpg '),
(54, 'kind', 0, 1, ' image '),
(54, 'slug', 0, 1, ''),
(54, 'title', 0, 1, ' screenshot 20200909 181944 gallery e1599703093436 1 '),
(55, 'slug', 0, 1, ' new testament '),
(55, 'title', 0, 1, ' new testament '),
(56, 'slug', 0, 1, ' apologetics '),
(56, 'title', 0, 1, ' apologetics '),
(57, 'slug', 0, 1, ' videos '),
(57, 'title', 0, 1, ' videos '),
(58, 'slug', 0, 1, ' who then is this that even the wind and sea obey him '),
(58, 'title', 0, 1, ' who then is this that even the wind and sea obey him '),
(59, 'filename', 0, 1, ' picture jpg '),
(59, 'extension', 0, 1, ' jpg '),
(59, 'kind', 0, 1, ' image '),
(59, 'slug', 0, 1, ''),
(59, 'title', 0, 1, ' picture '),
(64, 'title', 0, 1, ' jesus the historical evidence pt 1 '),
(64, 'slug', 0, 1, ' jesus the historical evidence pt 1 '),
(27, 'title', 0, 1, ' jesusbeforepilate '),
(62, 'filename', 0, 1, ' picture jpg '),
(62, 'extension', 0, 1, ' jpg '),
(62, 'kind', 0, 1, ' image '),
(62, 'slug', 0, 1, ''),
(62, 'title', 0, 1, ' picture '),
(69, 'title', 0, 1, ' jesus the historical evidence pt 2 '),
(27, 'slug', 0, 1, ''),
(67, 'filename', 0, 1, ' jesusbeforepilate 2022 02 21 115526 bzoq jpg '),
(67, 'extension', 0, 1, ' jpg '),
(67, 'kind', 0, 1, ' image '),
(67, 'slug', 0, 1, ''),
(67, 'title', 0, 1, ' jesusbeforepilate '),
(69, 'slug', 0, 1, ' jesus the historical evidence pt 2 '),
(71, 'slug', 0, 1, ' yes the bible contains myth so what '),
(71, 'title', 0, 1, ' yes the bible contains myth so what '),
(72, 'filename', 0, 1, ' hebrew magnifying glass jpg '),
(72, 'extension', 0, 1, ' jpg '),
(72, 'kind', 0, 1, ' image '),
(72, 'slug', 0, 1, ''),
(72, 'title', 0, 1, ' hebrew magnifying glass ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `previewTargets` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Page', 'page', 'channel', 1, 'all', 'end', NULL, '2022-02-20 05:42:08', '2022-02-20 05:42:08', NULL, '7798dd4a-df02-4fb9-bd74-ba5b3861a3b2'),
(2, NULL, 'Galleries', 'galleries', 'single', 1, 'all', 'end', NULL, '2022-02-20 06:29:02', '2022-02-20 06:29:02', NULL, '6b7954cf-58df-4a94-ac7f-1064c8137e1d'),
(3, NULL, 'Blog', 'blog', 'channel', 1, 'all', 'end', NULL, '2022-02-20 16:32:42', '2022-02-20 16:32:42', NULL, '02a36630-55a8-4e27-bff9-baf27ef9366f');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'page/{slug}', '_page-entry.twig', 1, '2022-02-20 05:42:08', '2022-02-20 05:42:08', '17e78bb5-3504-41f3-ae33-2fb85c0ea39b'),
(2, 2, 1, 1, 'galleries', '_galleries.twig', 1, '2022-02-20 06:29:02', '2022-02-20 06:29:02', '34748ff5-3f26-489f-bc03-f720423e3b95'),
(3, 3, 1, 1, 'blog/{slug}', '_entiries.twig', 1, '2022-02-20 16:32:42', '2022-02-20 16:32:42', '9c5e0fd7-6cd1-44ec-9131-1b49d0dd193e');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 1, 'MF0wle8kuDRrcgmemZCdi-mC0DZIpsFjuxem8KKlIzRZ7R_9fulPo4N7z-rhi2GV93hJCM-AhXSk9matlmyc62AqZFaSd-4cbXQK', '2022-02-21 11:53:13', '2022-02-21 12:49:31', '64e9dab2-df86-40c8-9972-faf22b3a598b');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'cataldo', '2022-02-20 04:49:59', '2022-02-20 04:49:59', NULL, '7637aad2-967f-4c26-8220-284ff09a09ab');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'cataldo', 'default', 'en-US', 0, NULL, 1, '2022-02-20 04:49:59', '2022-02-20 05:46:13', NULL, '0f6e04df-ce19-4a89-b89d-e879e822e087');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 8, 0, '2022-02-20 16:40:34', '2022-02-20 16:40:56', 'f4b92c24-a3ab-4a1f-ae24-8221f869360f'),
(2, 1, 55, 1, 2, 3, 1, '2022-02-20 16:40:34', '2022-02-20 16:40:34', 'f80b1111-7f13-4f11-b0de-884d035d9a17'),
(3, 1, 56, 1, 4, 5, 1, '2022-02-20 16:40:48', '2022-02-20 16:40:48', '5553de81-b669-4e9c-b191-f5be0ca7f468'),
(4, 1, 57, 1, 6, 7, 1, '2022-02-20 16:40:56', '2022-02-20 16:40:56', '48a01bd1-a352-4c6e-8789-a3564ca517ae');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, '2022-02-20 16:40:08', '2022-02-20 16:40:08', NULL, '01f86a2c-b5e0-4702-8858-ac29ae114d72');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecachequeries`
--

CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'QXye5EMSggxwOPj6qkszSPMBfkeP_tLs', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":58,\"siteId\":1,\"draftId\":null,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2022-02-22 02:21:16', '2022-02-21 02:21:16', '2022-02-21 02:21:16', 'b843a466-650f-4670-8323-330cdd6cf4ac'),
(2, 'FpKn2qnDHJ0_JnT0sX45ogVbAXxafO2-', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":58,\"siteId\":1,\"draftId\":null,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2022-02-22 02:23:40', '2022-02-21 02:23:40', '2022-02-21 02:23:40', 'e6c24c5c-3dab-4903-91df-643f28a4c6cb'),
(3, 'REY3xoBJ4OkqvxP6JAR8Htm8mykkEwhT', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":64,\"siteId\":1,\"draftId\":6,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2022-02-22 11:55:03', '2022-02-21 11:55:03', '2022-02-21 11:55:03', 'eaf7f042-5681-49a2-84b9-b5f3904d0008');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\",\"locale\":null,\"weekStartDay\":\"1\",\"alwaysShowFocusRings\":false,\"useShapes\":false,\"underlineLinks\":false,\"showFieldHandles\":true,\"enableDebugToolbarForSite\":true,\"enableDebugToolbarForCp\":true,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, '', '', 'vargasman11@gmail.com', '$2y$13$RyDH13ZgPxnf6oiwZQQ2VOxdj4826hlNEcPuHUsprCA0LGt0pHYsy', 1, 0, 0, 0, '2022-02-21 11:53:13', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2022-02-20 04:49:59', '2022-02-20 04:49:59', '2022-02-21 11:53:13', '328cb87a-8543-47ed-895d-67b86c895be6');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Uploads', '', '2022-02-20 05:40:22', '2022-02-20 05:40:22', '20b97b07-ae7e-4a15-9603-d42447cf37e2'),
(2, NULL, NULL, 'Temporary source', NULL, '2022-02-20 06:22:55', '2022-02-20 06:22:55', 'cc0084a4-4420-45af-ad24-5d30d0f7d491'),
(3, 2, NULL, 'user_1', 'user_1/', '2022-02-20 06:22:55', '2022-02-20 06:22:55', '2f6885f7-3a96-4234-aba6-8f9fd24b65ad');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'Uploads', 'uploads', 'craft\\volumes\\Local', 1, '/images/uploads', 'site', NULL, '{\"path\":\"@webroot/images/uploads\"}', 1, '2022-02-20 05:40:22', '2022-02-20 05:40:22', NULL, 'bccbaeb1-4536-435a-8cf9-4fd3ffdf59e6');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2022-02-20 05:36:33', '2022-02-20 05:36:33', '834f1a8d-7653-42a4-9796-6a290f496e89'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2022-02-20 05:36:33', '2022-02-20 05:36:33', '3ce2b1c5-262f-4525-ae1c-e728fb317ba6'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2022-02-20 05:36:33', '2022-02-20 05:36:33', '80870021-8d71-401b-96e8-95ce3af95620'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2022-02-20 05:36:33', '2022-02-20 05:36:33', 'b35d73d4-edaf-4abd-9f55-dfac266921cf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gelxnlcwhxqpuduycibizldaxhdwpnhqebhe` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_rnxhflxatljwpfiecpigqawxufbpbqsavisq` (`dateRead`),
  ADD KEY `fk_ownkhorengdaektbixmkrsarispsvacrrntn` (`pluginId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_otrzqeszikscjqzvikafvzxhjntczfvbcecz` (`sessionId`,`volumeId`),
  ADD KEY `idx_jyjafzanahaavvechutxwtmfygfagfubesqb` (`volumeId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vezqbwdjgrwopbkjjevnnplgmspcciwsfujb` (`filename`,`folderId`),
  ADD KEY `idx_jtfuizzmvicvwetslcukbezednlfpdqojvql` (`folderId`),
  ADD KEY `idx_zkqgxsuhztpvokscvvunxaryscjxzbdtkfvo` (`volumeId`),
  ADD KEY `fk_akioypwpgamnwqsrkqjxesvpxcvxmlhyrkxb` (`uploaderId`);

--
-- Indexes for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fxlijaltxlrixomrdeeetyivmajrnxpekkxr` (`volumeId`,`assetId`,`location`),
  ADD KEY `idx_sybxqyqouziidpkvvhyhjveqhsctnbvkkyhb` (`assetId`,`format`,`location`);

--
-- Indexes for table `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_htrvxggabrltozaxlaixbebtwyitpfuyboet` (`name`),
  ADD KEY `idx_xumvfqrayspqcpliyuobtczkqztseguherzo` (`handle`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jokysgycyrzowoebksaeubczjvkfhnehbupv` (`groupId`),
  ADD KEY `fk_gqzqsenevilcocgcotmtfbiaxwvnkotkxgcr` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hqtpvxottholdrhihjhqrtryscdovsywovji` (`name`),
  ADD KEY `idx_znshiyiixdvahxvwewqyxuceftpaizttzihm` (`handle`),
  ADD KEY `idx_sccjwdhbsqiyaoutsaytygakifqddyajtkmn` (`structureId`),
  ADD KEY `idx_npngewvnnjltspfwhzguzvhthecaqqznhtah` (`fieldLayoutId`),
  ADD KEY `idx_krapiaoikelxouuhagrmkusijjgmotktsivg` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_cwmkgrttdurclxjuszarerkpioqmlowjvyod` (`groupId`,`siteId`),
  ADD KEY `idx_ckxrycbqxwgganafkmojudjifrbpcrcvduxv` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_qfocyuyxrmhnzyfolzpkchbcrxmmsaombtcw` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_gqwoegbxgsyatlivghkedcqzfsjwexrvgfvw` (`siteId`),
  ADD KEY `fk_cmlanurgalzqsbjkmabuelyizjlfllaxmgoh` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `idx_ausgzkywlaxanxtwbjpuxexxmmtdqtobwgft` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_dzroglrlytckrkpzmglgypxefxqzmtxyitik` (`siteId`),
  ADD KEY `fk_qjwnnxhywsuiseruadkzunkvzmxdwdbwalbv` (`fieldId`),
  ADD KEY `fk_rosajevpzxikebmkllwpgwfkyrwjvcjthhkr` (`userId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_zutuivtvlmdtbkggajtalskbnvxsaqvuuxwx` (`elementId`,`siteId`),
  ADD KEY `idx_sajnfgiusppnftgjivsdjpnamebohydnugcq` (`siteId`),
  ADD KEY `idx_fncnkromcjhucepdxkxaeacstbdxbgbacdhm` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rbfgemfbtcirkotjfyudjmptgddlkbtszefc` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wvpcvrolltxhffkdecjhirkrzxjhicvtuedx` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vplrkcgzptyaryngsrzyiykrzidwfssapsyu` (`creatorId`,`provisional`),
  ADD KEY `idx_eguogqmvuwweulzfyuwtdukovfebnupsqvaq` (`saved`),
  ADD KEY `fk_bwljfiayflzqjihpvchinlhtwekfrexyqbzv` (`sourceId`);

--
-- Indexes for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_agqpzwtwtxinurwrkpvmaixiknmqoeumslxc` (`type`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wsxawukboaczsnygrefyucinpybinyipadsn` (`dateDeleted`),
  ADD KEY `idx_cropaihwzvlydrccpjkaojgixbbfpatxzheq` (`fieldLayoutId`),
  ADD KEY `idx_uithhvkgpwxxnpkujrayfemcleruuaixmqnw` (`type`),
  ADD KEY `idx_fqltxirtrzshxeepyaepmxzndtxfqceupueu` (`enabled`),
  ADD KEY `idx_fwiamyqrflbuolvlxhzzjbzeepcxbgfdqprf` (`archived`,`dateCreated`),
  ADD KEY `idx_jvebpjmwonilakttmxeaozqrbviovozfwzun` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `idx_heubyfvtsjqivjgydczwaqjgvnjldblgahvx` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `fk_ockuuhojhfzumpoacbbvvtdvbyyjrcfzgnmr` (`canonicalId`),
  ADD KEY `fk_omndxlulenvdetyjuoaotfljwibgcwblpltj` (`draftId`),
  ADD KEY `fk_vwxexjfuwccvmbiawuakqsnmybdyzdospqao` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ufoussxspimeksbfqnplkwwcyvxviwexflbl` (`elementId`,`siteId`),
  ADD KEY `idx_nnjibjpcsvstqzwqyccholnoyxmanskmuhxl` (`siteId`),
  ADD KEY `idx_ozgjrvnxjzoujbnrojhuhnukouwyocgcyxdd` (`slug`,`siteId`),
  ADD KEY `idx_jhfhxowiyzgoiiuezgylzhxfgvxknqestchk` (`enabled`),
  ADD KEY `idx_pvfebqcfaigvyafhlydksmvqymwnfrldxonj` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wlbyhxtvrtkjnpufbideenfgtwzhdtjofmpb` (`postDate`),
  ADD KEY `idx_ctqfkocncncoemnkbirwzdjllyewqwuqbkde` (`expiryDate`),
  ADD KEY `idx_syacdsdbbyzficfwjdytqikyvgslyggwbhyv` (`authorId`),
  ADD KEY `idx_mlmgwxjdxbzsjsbaprmxhhatptldlqqeskgl` (`sectionId`),
  ADD KEY `idx_rpucmlvrwlznhsmtorhmzrpumqagopabubei` (`typeId`),
  ADD KEY `fk_rdhumxiokjlotnpmayaglixiivnboiwtzvlt` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rqnpcacqrvhqcxptjwnklupookexrebskhvd` (`name`,`sectionId`),
  ADD KEY `idx_vhaioprcdevahxrawogntgrkqqfivnjkiauc` (`handle`,`sectionId`),
  ADD KEY `idx_bvwzmscqxkdmsxjqibmvnhuhcisuknthrnrr` (`sectionId`),
  ADD KEY `idx_sxtybjvxppukygfggupfpanrnyisgtsllgjk` (`fieldLayoutId`),
  ADD KEY `idx_nbzgdsstxlnlpdlgdqkqrkuzalazbgkhsopg` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kkvngtymuhjqnbzgavktonbvjmtkcdacrbrp` (`name`),
  ADD KEY `idx_umaxofdmbolvihandiacnbebwxvjwonczwlv` (`dateDeleted`,`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_govenrsgfbmeoozpfyocumdphtttavflbigv` (`layoutId`,`fieldId`),
  ADD KEY `idx_guredbypxcxqvyhnfhfalimhkckxjuzxxlnu` (`sortOrder`),
  ADD KEY `idx_ewdidmkqtngmfsgfnbghnnptolpwbtcokzor` (`tabId`),
  ADD KEY `idx_ynwoxioqezfbchrrgkpjrxzuhagdxsjeoluj` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vofgxbscajyugsnlflvwkudnpxfnhauhdfmb` (`dateDeleted`),
  ADD KEY `idx_pvfwvzyuryrykjtabrzmfxjghibucmappnia` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jvxckcczqeialvackergfdxhiuroqjgbccfj` (`sortOrder`),
  ADD KEY `idx_dpulplmkbydyryezyjhpujfsixvcexwvclto` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sscxjdkznwshhnipgjmxowqpzwqkhomdhemx` (`handle`,`context`),
  ADD KEY `idx_ajdgvxtqywxkojlqxmvlvgfheoyibdahmsoc` (`groupId`),
  ADD KEY `idx_bzhdvremrhpdkmpqoanrzjesdqidasfibnkt` (`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eyolkoklcawvyckbwfvyoeekfwmglmmzebtz` (`name`),
  ADD KEY `idx_nbfqrgqciketrpiomqjletvvafzuydwayywj` (`handle`),
  ADD KEY `idx_chpajelcrzkwreojiaavrpfpadeceqhbslbb` (`fieldLayoutId`),
  ADD KEY `idx_fsxftraerbpfcquqdcqnxizktixiyhjqnihk` (`sortOrder`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_nocakkcljqshpcxcqqpfedqrgllewtloygfc` (`accessToken`),
  ADD UNIQUE KEY `idx_htykipbmfmdblbctkhefwvazzqyuxgzodauh` (`name`),
  ADD KEY `fk_wdisxskyzcfrtkldzaipwsoupjmnzigodwzv` (`schemaId`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tawtefpvkdszdywpvuwtyqvwbqtlighfdviz` (`ownerId`),
  ADD KEY `idx_ixcufckeopplkumeozmulhqlxqvkbbvitpfc` (`fieldId`),
  ADD KEY `idx_qncoclgmddcmnxpxmklemsqbogmsupgpmaew` (`typeId`),
  ADD KEY `idx_apsofamuyqliypokaqeutalxphfxqxahlsiv` (`sortOrder`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_idljsnzhgvvcdkhayzoxjfzdpflvpicwtcjh` (`name`,`fieldId`),
  ADD KEY `idx_ttziqdlvfirwzefloxdikebjfegjwdmpibaz` (`handle`,`fieldId`),
  ADD KEY `idx_bxzsjbjexsnzbgdhovpkzuorwidapvwthdmx` (`fieldId`),
  ADD KEY `idx_nklhgwsssdlplbmmgsyxnhecitseyrlwcwog` (`fieldLayoutId`);

--
-- Indexes for table `matrixcontent_galleryimages`
--
ALTER TABLE `matrixcontent_galleryimages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ppwoveidxwjphixsxpqspyferdobujlufzak` (`elementId`,`siteId`),
  ADD KEY `fk_oukslhagznrymdufqnjbtndlngbxoqwsxzke` (`siteId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ywlzereutdilxbibhcinuszjurnfvzbpwflg` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rwyxaolnrgwdqgegfqnhtybjwbfmhycyelpq` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kuophsdsiavkzcgkgjgyaoakiebtzcwlajia` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_dlesurmmuhobhwbmohjovyssdyhmcmdxowzt` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_fqirblrukgsqxkptficzqbrwijcdoqgvrnhv` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_yspmikwqtcofeczwqendonceufibcinybfti` (`sourceId`),
  ADD KEY `idx_ltzswxwjsqcllkcdawwhcloidmqpaigzlgfq` (`targetId`),
  ADD KEY `idx_caszqkkblglcdpcnyfubywlracwrbpwzyszy` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vzipgdkumwvkqefcqfjupvwasetpxztdghru` (`sourceId`,`num`),
  ADD KEY `fk_hpdkvquplpdkpdxcctsrxkkirzeualtkpbqk` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_akyvocfxaedvlspaasgdptnlltcdegpxpygl` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_atsofukltuncmbsbdjxhgaioilwkwldbiwyx` (`handle`),
  ADD KEY `idx_ixamdfmnprnocrwlfpzksynoggagknssrzgn` (`name`),
  ADD KEY `idx_slcynpxfslrgxcwfxanvzckkcnjhryoxzdqp` (`structureId`),
  ADD KEY `idx_qbycypmncrfzxexsgaeupfmbvnospzlaoyaj` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hpflwvpdmgcvrwwdzshdpiuixdodkdfobjoh` (`sectionId`,`siteId`),
  ADD KEY `idx_scxrwisacrklszxhlrzdvfaucebrlnovzkut` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qjvimxrlyihgzspfunxvhzsrhucdbqpiuspq` (`uid`),
  ADD KEY `idx_lqseymfdaiezkdhymeujseyczceoyvzhgsvl` (`token`),
  ADD KEY `idx_iptzbjtucxrdghlraidczszpjrupgzkbehfx` (`dateUpdated`),
  ADD KEY `idx_oxfanubcxpidsrebtrrwzwfsnnhaautmfwqb` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_zeiwxpzzxzueqtvhmctdxhbplwzdahrbcoys` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jdughxuqobqdlqyzocqyjiuhcctgtsiygdij` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ypbngvohcwrheeroxfpmcgwwbzosofbavspv` (`dateDeleted`),
  ADD KEY `idx_zjrufeqtxghyzszgigsozkhdcajdnojoebwy` (`handle`),
  ADD KEY `idx_wbapgqygigwrwmpywyrwdzvfwsybydnemila` (`sortOrder`),
  ADD KEY `fk_bzxjlxspodrrizrdmzusgegbmiihsohqcjbo` (`groupId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_qyxnrlwbtqxhbkzsncgrcqpxhclzdoxviqfh` (`structureId`,`elementId`),
  ADD KEY `idx_rpkrehmabnvcbzeovfmzxsbzdmalwxdqlegu` (`root`),
  ADD KEY `idx_lvqhcswiescguixfldcuftrhdfotkvgbtwia` (`lft`),
  ADD KEY `idx_aiwiibrwbykdtcwxlcmwwokywoveqcpslyao` (`rgt`),
  ADD KEY `idx_vlvmrqtlhewazvrqlnngbarprhjonqnvztyx` (`level`),
  ADD KEY `idx_jxhcjzgpxhpvhrnyxyhjqoxzhaypdcbenmxr` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jbdeukcdfxigaiuprxbsvhlenhcqcuszkmvk` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ncazstsrzkoagpizehotbcjeqckmhabdthtz` (`key`,`language`),
  ADD KEY `idx_qpblvnjbpkkvulabllupthyajljsaoorqnsn` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mfvjirgkiulqicadtridnzcaitqnekizqdmk` (`name`),
  ADD KEY `idx_eammoarattdmiizpnnbswmpfounhphpflxrc` (`handle`),
  ADD KEY `idx_inwyynqguxhdaylzbbznrggcymhlcodbdaph` (`dateDeleted`),
  ADD KEY `fk_sqwogzuqkojbthsqiuonzmlstsdpxetppesa` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_naouksxivcxfnmgivzwesrlplxqmjrojakmw` (`groupId`);

--
-- Indexes for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qrlvikfggzicqdjheboonitnztcpnmlluoig` (`cacheId`),
  ADD KEY `idx_ojnyybpevklaoapjzarjndqqnevjrufvhord` (`elementId`);

--
-- Indexes for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bfcxoucwrvqwaucinrkirbhcysvxbufzujpm` (`cacheId`),
  ADD KEY `idx_uyemzdfezhmmllufqswhypdyfffzoagropyr` (`type`);

--
-- Indexes for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_naeqnifdwxfegygnijkybohfbqtnleuydohn` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `idx_wsoiyicraoqxkggfdmhqxriuhgikqgdujnbl` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `idx_etnyhhsnbysgbupmhdeohmlfqvcdxepwbujc` (`siteId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wstygcvdnmilsywhiniptpodtxhlsrlwuoto` (`token`),
  ADD KEY `idx_cztffpcfzcoldkmvtktxiwqfcednfwpvzfro` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xvjwkdbehwfdaozmrylpphtapcutnvlsvqxo` (`handle`),
  ADD KEY `idx_aobrrtkcxmifpnjgjziuygdxtwbpibvszxxi` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vehqmbhrdmgpgdhhokscxukcbigjvpjlbgbi` (`groupId`,`userId`),
  ADD KEY `idx_ozofdycvfqncxgbqlyxgnbxbfadaolixkjxr` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_jyfgehlbnsnyldpmemrdvmsemgdvqxelzgpw` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hsbwkorqioiaxordmobldfhpivwzjaunmqsb` (`permissionId`,`groupId`),
  ADD KEY `idx_psnwvwuswkcxutpfybtxvztjejwxeysahdeg` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rxlvpsuyxgauqpedsgkjudphykfpkcdkvuuj` (`permissionId`,`userId`),
  ADD KEY `idx_hijhvwbhnucaylzejlvtpxuufkupoqyypnwe` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cbeqyhwzvhlfjrossqbfftoltbduxmaluhqg` (`uid`),
  ADD KEY `idx_nbityluppnqxqlqjvuoxnrkqvqycbkdfcxlt` (`verificationCode`),
  ADD KEY `idx_pcpsclxhrzojznzuenjipztxavvfetfffrfw` (`email`),
  ADD KEY `idx_wqfyoedlvsocddjwnzttmdzacgkyjsukpfbw` (`username`),
  ADD KEY `fk_tqfmtespextbqgkqsqudbeyybwadtiiiiebq` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rydmblnicpkardrerrrepvuqkatclwnuuunp` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_wouamokmimwvsgcbqhlcfknasioemxdkggtp` (`parentId`),
  ADD KEY `idx_jmwsevdsqzzirwghdorkfwtcwvdrhywlbnxh` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fvfzqufshuvlxhsvemfbpwzlqttdgdiimndr` (`name`),
  ADD KEY `idx_tjunfaydiqrzsgbttpemhwvicimbaanutesa` (`handle`),
  ADD KEY `idx_bzzgjjmsecsuemsayqodlugmeeynkmhavpmw` (`fieldLayoutId`),
  ADD KEY `idx_fquolvcbtenigfcswnpglfiebkyryqajhqtp` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tchxxwqeewylijkyuqvknvttoycjdumkhxox` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixcontent_galleryimages`
--
ALTER TABLE `matrixcontent_galleryimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecaches`
--
ALTER TABLE `templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_ownkhorengdaektbixmkrsarispsvacrrntn` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uqgphzdvmezanbaqduhhcqcftzgmbfiycutg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_fjyoiiwylnfoonuooxlmalqbcsldauumvmdt` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_akioypwpgamnwqsrkqjxesvpxcvxmlhyrkxb` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_gtdqhaktkdvyxkivaqaaxsqxiugzxmrzydjw` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kyxcpyflofvgzudohvbvwohwzrifxdkjxewc` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lnazyaskdiyaudverlodstxximlceypmuioh` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_gqzqsenevilcocgcotmtfbiaxwvnkotkxgcr` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_kbnptewyyxcogoxjswpqzhwmtjqdlmjjjbmk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lmsgjsdyshvhbydgfiqkupbtjwwehntvakcn` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_jdbhvydbmtlctwdfwyygmklrjwbpfymcpbba` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ryrkfhyhhmajupvjzxjcvmvdvoegavxbcvyl` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_ezmdxhnwcgzsnfqtupdpuvblkjzxuxghoeth` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vkxdxroiacmyegxfwfgsegodfpmipleeybrt` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_bvrrvsfsowflgehbtbvoxtzxyfvdtbyzertj` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cmlanurgalzqsbjkmabuelyizjlfllaxmgoh` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_gqwoegbxgsyatlivghkedcqzfsjwexrvgfvw` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_dzroglrlytckrkpzmglgypxefxqzmtxyitik` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jabbxrrpwarnxwefkvlcqehxcemetfgjrpax` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_qjwnnxhywsuiseruadkzunkvzmxdwdbwalbv` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rosajevpzxikebmkllwpgwfkyrwjvcjthhkr` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_hkqkopqkkeifydfetaulztevniuxmbwqumak` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rxjmntmzxhhcfrcgrbjkwgojllxfbkspmzxc` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_rbfgemfbtcirkotjfyudjmptgddlkbtszefc` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_bwljfiayflzqjihpvchinlhtwekfrexyqbzv` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rxkghkwyfrxnvvoedcesaojqcvdrrmkpqlgq` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_ockuuhojhfzumpoacbbvvtdvbyyjrcfzgnmr` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_omndxlulenvdetyjuoaotfljwibgcwblpltj` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vwxexjfuwccvmbiawuakqsnmybdyzdospqao` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yvtbaffuefudrkuranlgocirjitytxncqoks` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_cpbhsncwcrblapvbzjcefedwnqeexgstlepv` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_povjpqakyqjjqgyagwrayivhbhoxbxxwtfre` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_ggwjknyehhfnjppmnmuhirsgfnzuulfdfazo` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mepxhflqlatkulolvvydjexyevjyyirpwodj` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_mturkfirkitmenxpqrhxsmxdngknhpzkhick` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_nydkuilpkubgrsplxdddkjuwrrlbxevklduk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rdhumxiokjlotnpmayaglixiivnboiwtzvlt` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_ditnykrgmfzvxrjzgfqsazpdcxqyhnbejiob` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fvobxplgcunujkfdjwbdvmyrrlavxiyzjrzw` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fk_awdckdmwagsnqxykvcfgqxvcyockzsvqruej` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hmftsxlszhdpyrlppmjxngoopqxfwgmbsein` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xujxlzxtkeakhknrplcoxzsosqfonfnavfwy` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fk_uipkcwlvmdgkzuppaqyxqwndefwmteqkmrpn` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fk_rriymzaodnnimndbdrcqzkgeldjwblpirykr` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_cgqweeqqnighwvhevfkprhndtmhldhlzslhb` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_foamqgheicidudldhaidvtkucofylxifnawc` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_wdisxskyzcfrtkldzaipwsoupjmnzigodwzv` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `fk_ayarhmplftmodtzrppsjhbjgyyntyemqoxef` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_iolrozhpenmhsqzbrfeaqheclsxwyirfatag` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jggiehjtjomategzmoxnfzpwemrllzfmwzbt` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vzemscarvmdyobbfbtktxwbamlavquehsctw` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `fk_aioddywypoiyiszsnljtogiysmqsilkcdgym` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wkgezmccbjhirnasbwitycfnqraibqfpzfuj` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixcontent_galleryimages`
--
ALTER TABLE `matrixcontent_galleryimages`
  ADD CONSTRAINT `fk_oukslhagznrymdufqnjbtndlngbxoqwsxzke` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sjwscbuuhrdzvhakkwsxadrmyvrbpyhyosuj` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_aiqvjnofljlmqqgycjlfaqdpnmfvgnnvkkac` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kwzpeizndsftyxcufciqsgbzuyhgqjlnidlb` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wfizvjkiweggcrvnvxshineqymjmblfsywin` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yhkkluyybnkoqlgwwywvimuwmxwfxtrdpobz` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_hpdkvquplpdkpdxcctsrxkkirzeualtkpbqk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_slulvudcbczruhalmgajgcdtnhuyevzvrikb` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_ahetcxupuuxhcljgrqgakwgqzqjglghgwvrr` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_aeboyeasbizuzzomiwcumyurfjnqnygdxwqx` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qyvqsjqnvlgxeychqlgdvxblvtuulssaumws` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_ulczjvvrhunfzmehwsphobpkbayuxyjynkpa` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_jpjnnhenjmwpnmbjnemnsryiapitjiytygzl` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_bzxjlxspodrrizrdmzusgegbmiihsohqcjbo` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_vtymgrgvhrzymzxjocyzgdkzkxzhqfcuitay` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xowupdsapobfvxhbznohezswppyevvduhzxp` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_sqwogzuqkojbthsqiuonzmlstsdpxetppesa` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_dyjnifjtphsoliuzjjohritqpyndyxmmacnz` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kxvkvppwiycvihuzbxvlcaapckhczkavwskg` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `fk_gcabusdnjzscisozfvtvizsjpltthmlzwvpv` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ndkfnjydesejsmzrgvjfxzcawmcnlqemooji` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `fk_drrakzxusiummrwattemyrhzurkddjehqksr` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `fk_cjxtuuvxynaskskpsaqszhmnzlxgvpetfqdf` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_pfykctbgxfzrkujyfkxyxsqlvwvaozjkhfpo` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zbuudkvrwwhgvdjltsekchdkydevpcqxqaeu` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_emyflrzqeacxsoivzzkgwhrpjzhvqbgnliou` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ocmsbxghssbokerhqjeqneatuckckewgyqwc` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_mqwskkycrerzddghwexmgnersvqvinopdygz` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ovvfhrurmpnhdddniasfcxligqdilxowqahk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_amtavmnjjcfucamtxtpgvqwwnzfbkmhmtawr` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_tqfmtespextbqgkqsqudbeyybwadtiiiiebq` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_xnukfksuvestcgstpnvynjjddowrrbldkpbd` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_cfvumvlskikjrdueuygcebdtujjaonohzogg` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_opxueyyuvgjgluxookvzfmhqqkohggimrpoz` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_seflduokdidwnggknkfbzlcpvdaxqnugbhay` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_kxiirpwecqxhbhgozohgudzskkeducbpihds` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
