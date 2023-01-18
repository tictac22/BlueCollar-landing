-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 01:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluecollar`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(83, 'action_scheduler/migration_hook', 'complete', '2023-01-15 21:05:21', '2023-01-15 21:05:21', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1673816721;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1673816721;}', 1, 1, '2023-01-15 21:05:24', '2023-01-15 21:05:24', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 83, 'action created', '2023-01-15 21:04:21', '2023-01-15 21:04:21'),
(2, 83, 'action started via Async Request', '2023-01-15 21:05:24', '2023-01-15 21:05:24'),
(3, 83, 'action complete via Async Request', '2023-01-15 21:05:24', '2023-01-15 21:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-01-14 19:44:35', '2023-01-14 19:44:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ewwwio_images`
--

CREATE TABLE `wp_ewwwio_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gallery` varchar(10) DEFAULT NULL,
  `resize` varchar(75) DEFAULT NULL,
  `path` text NOT NULL,
  `converted` text NOT NULL,
  `results` varchar(75) NOT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `backup` varchar(100) DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `pending` tinyint(4) NOT NULL DEFAULT 0,
  `updates` int(10) UNSIGNED DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trace` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ewwwio_images`
--

INSERT INTO `wp_ewwwio_images` (`id`, `attachment_id`, `gallery`, `resize`, `path`, `converted`, `results`, `image_size`, `orig_size`, `backup`, `level`, `pending`, `updates`, `updated`, `trace`) VALUES
(1, 89, 'media', 'full', 'ABSPATHwp-content/uploads/2023/01/welcome.jpg', '', 'No savings', 43466, 43466, '', 10, 0, 1, '2023-01-15 22:01:39', NULL),
(2, 10, 'media', 'full', 'ABSPATHwp-content/uploads/2023/01/favicon-32x32-2.png', '', 'No savings', 613, 613, '', 10, 0, 1, '2023-01-15 22:01:42', NULL),
(3, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\favicon-32x32.png', '', 'No savings', 613, 613, '', 10, 0, 1, '2023-01-15 22:01:43', NULL),
(4, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\commercal.jpg', '', 'No savings', 19341, 19341, '', 10, 0, 1, '2023-01-15 22:01:45', NULL),
(5, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\hero.png', '', 'No savings', 658860, 658860, '', 10, 0, 1, '2023-01-15 22:01:49', NULL),
(6, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\projects\\project1.jpg', '', 'No savings', 13096, 13096, '', 10, 0, 1, '2023-01-15 22:01:50', NULL),
(7, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\projects\\project2.jpg', '', 'No savings', 16173, 16173, '', 10, 0, 1, '2023-01-15 22:01:51', NULL),
(8, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\projects\\project3.png', '', 'No savings', 141674, 141674, '', 10, 0, 1, '2023-01-15 22:01:53', NULL),
(9, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\projects\\project4.png', '', 'No savings', 173250, 173250, '', 10, 0, 1, '2023-01-15 22:01:55', NULL),
(10, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\slider\\client.jpg', '', 'No savings', 1435, 1435, '', 10, 0, 1, '2023-01-15 22:01:57', NULL),
(11, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\welcome.jpg', '', 'No savings', 43466, 43466, '', 10, 0, 1, '2023-01-15 22:01:58', NULL),
(12, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\assets\\img\\why.png', '', 'No savings', 591313, 591313, '', 10, 0, 1, '2023-01-15 22:02:02', NULL),
(13, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\Screenshot.png', '', 'No savings', 1403742, 1403742, '', 10, 0, 1, '2023-01-15 22:02:14', NULL),
(14, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\commercal.jpg', '', 'No savings', 19341, 19341, '', 10, 0, 1, '2023-01-15 22:02:15', NULL),
(15, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\hero.png', '', 'No savings', 658860, 658860, '', 10, 0, 1, '2023-01-15 22:02:20', NULL),
(16, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\icons\\residential.jpg', '', 'No savings', 726, 726, '', 10, 0, 1, '2023-01-15 22:02:22', NULL),
(17, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\news\\news1.jpg', '', 'No savings', 29959, 29959, '', 10, 0, 1, '2023-01-15 22:02:25', NULL),
(18, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\news\\news2.jpg', '', 'No savings', 22188, 22188, '', 10, 0, 1, '2023-01-15 22:02:26', NULL),
(19, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\projects\\project1.jpg', '', 'No savings', 13096, 13096, '', 10, 0, 1, '2023-01-15 22:02:29', NULL),
(20, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\projects\\project2.jpg', '', 'No savings', 16173, 16173, '', 10, 0, 1, '2023-01-15 22:02:31', NULL),
(21, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\projects\\project3.png', '', 'No savings', 141674, 141674, '', 10, 0, 1, '2023-01-15 22:02:33', NULL),
(22, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\projects\\project4.png', '', 'No savings', 173250, 173250, '', 10, 0, 1, '2023-01-15 22:02:36', NULL),
(23, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\slider\\client.jpg', '', 'No savings', 1435, 1435, '', 10, 0, 1, '2023-01-15 22:02:39', NULL),
(24, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\welcome.jpg', '', 'No savings', 43466, 43466, '', 10, 0, 1, '2023-01-15 22:02:41', NULL),
(25, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\build\\img\\why.png', '', 'No savings', 591313, 591313, '', 10, 0, 1, '2023-01-15 22:02:46', NULL),
(26, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\boom\\images\\boom.png', '', 'No savings', 25076, 25076, '', 10, 0, 1, '2023-01-15 22:02:50', NULL),
(27, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\browser-sync-ui\\public\\img\\ps-bg.gif', '', 'No savings', 1120, 1120, '', 10, 0, 1, '2023-01-15 22:02:52', NULL),
(28, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\hawk\\images\\hawk.png', '', 'No savings', 3793, 3793, '', 10, 0, 1, '2023-01-15 22:02:54', NULL),
(29, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\hawk\\images\\logo.png', '', 'No savings', 57785, 57785, '', 10, 0, 1, '2023-01-15 22:02:57', NULL),
(30, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\hoek\\images\\hoek.png', '', 'No savings', 31719, 31719, '', 10, 0, 1, '2023-01-15 22:03:01', NULL),
(31, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\phridge\\test\\helpers\\alamid.png', '', 'No savings', 22401, 22401, '', 10, 0, 1, '2023-01-15 22:03:05', NULL),
(32, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\application_xp.png', '', 'No savings', 373, 373, '', 10, 0, 1, '2023-01-15 22:03:08', NULL),
(33, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\application_xp_terminal.png', '', 'No savings', 454, 454, '', 10, 0, 1, '2023-01-15 22:03:10', NULL),
(34, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\box.png', '', 'No savings', 502, 502, '', 10, 0, 1, '2023-01-15 22:03:12', NULL),
(35, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\cd.png', '', 'No savings', 620, 620, '', 10, 0, 1, '2023-01-15 22:03:17', NULL),
(36, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\controller.png', '', 'No savings', 613, 613, '', 10, 0, 1, '2023-01-15 22:03:18', NULL),
(37, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\drive.png', '', 'No savings', 293, 293, '', 10, 0, 1, '2023-01-15 22:03:20', NULL),
(38, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\film.png', '', 'No savings', 600, 600, '', 10, 0, 1, '2023-01-15 22:03:23', NULL),
(39, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\folder.png', '', 'No savings', 618, 618, '', 10, 0, 1, '2023-01-15 22:03:25', NULL),
(40, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\font.png', '', 'No savings', 514, 514, '', 10, 0, 1, '2023-01-15 22:03:27', NULL),
(41, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\image.png', '', 'No savings', 463, 463, '', 10, 0, 1, '2023-01-15 22:03:28', NULL),
(42, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\map.png', '', 'No savings', 751, 751, '', 10, 0, 1, '2023-01-15 22:03:30', NULL),
(43, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page.png', '', 'No savings', 582, 582, '', 10, 0, 1, '2023-01-15 22:03:34', NULL),
(44, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_add.png', '', 'No savings', 686, 686, '', 10, 0, 1, '2023-01-15 22:03:35', NULL),
(45, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_attach.png', '', 'No savings', 741, 741, '', 10, 0, 1, '2023-01-15 22:03:36', NULL),
(46, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_code.png', '', 'No savings', 765, 765, '', 10, 0, 1, '2023-01-15 22:03:37', NULL),
(47, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_copy.png', '', 'No savings', 610, 610, '', 10, 0, 1, '2023-01-15 22:03:38', NULL),
(48, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_delete.png', '', 'No savings', 687, 687, '', 10, 0, 1, '2023-01-15 22:03:39', NULL),
(49, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_edit.png', '', 'No savings', 754, 754, '', 10, 0, 1, '2023-01-15 22:03:40', NULL),
(50, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_error.png', '', 'No savings', 740, 740, '', 10, 0, 1, '2023-01-15 22:03:42', NULL),
(51, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_excel.png', '', 'No savings', 764, 764, '', 10, 0, 1, '2023-01-15 22:03:44', NULL),
(52, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_find.png', '', 'No savings', 826, 826, '', 10, 0, 1, '2023-01-15 22:03:47', NULL),
(53, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_gear.png', '', 'No savings', 780, 780, '', 10, 0, 1, '2023-01-15 22:03:49', NULL),
(54, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_go.png', '', 'No savings', 726, 726, '', 10, 0, 1, '2023-01-15 22:03:51', NULL),
(55, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_green.png', '', 'No savings', 568, 568, '', 10, 0, 1, '2023-01-15 22:03:52', NULL),
(56, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_key.png', '', 'No savings', 748, 748, '', 10, 0, 1, '2023-01-15 22:03:54', NULL),
(57, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_lightning.png', '', 'No savings', 786, 786, '', 10, 0, 1, '2023-01-15 22:03:55', NULL),
(58, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_link.png', '', 'No savings', 777, 777, '', 10, 0, 1, '2023-01-15 22:03:59', NULL),
(59, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_paintbrush.png', '', 'No savings', 760, 760, '', 10, 0, 1, '2023-01-15 22:04:00', NULL),
(60, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_paste.png', '', 'No savings', 650, 650, '', 10, 0, 1, '2023-01-15 22:04:02', NULL),
(61, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_red.png', '', 'No savings', 588, 588, '', 10, 0, 1, '2023-01-15 22:04:04', NULL),
(62, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_refresh.png', '', 'No savings', 805, 805, '', 10, 0, 1, '2023-01-15 22:04:05', NULL),
(63, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_save.png', '', 'No savings', 721, 721, '', 10, 0, 1, '2023-01-15 22:04:06', NULL),
(64, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white.png', '', 'No savings', 241, 241, '', 10, 0, 1, '2023-01-15 22:04:08', NULL),
(65, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_acrobat.png', '', 'No savings', 538, 538, '', 10, 0, 1, '2023-01-15 22:04:11', NULL),
(66, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_actionscript.png', '', 'No savings', 611, 611, '', 10, 0, 1, '2023-01-15 22:04:13', NULL),
(67, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_add.png', '', 'No savings', 459, 459, '', 10, 0, 1, '2023-01-15 22:04:15', NULL),
(68, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_c.png', '', 'No savings', 534, 534, '', 10, 0, 1, '2023-01-15 22:04:16', NULL),
(69, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_camera.png', '', 'No savings', 603, 603, '', 10, 0, 1, '2023-01-15 22:04:19', NULL),
(70, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_cd.png', '', 'No savings', 613, 613, '', 10, 0, 1, '2023-01-15 22:04:20', NULL),
(71, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_code.png', '', 'No savings', 550, 550, '', 10, 0, 1, '2023-01-15 22:04:21', NULL),
(72, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_code_red.png', '', 'No savings', 534, 534, '', 10, 0, 1, '2023-01-15 22:04:22', NULL),
(73, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_coldfusion.png', '', 'No savings', 539, 539, '', 10, 0, 1, '2023-01-15 22:04:23', NULL),
(74, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_compressed.png', '', 'No savings', 671, 671, '', 10, 0, 1, '2023-01-15 22:04:26', NULL),
(75, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_copy.png', '', 'No savings', 256, 256, '', 10, 0, 1, '2023-01-15 22:04:28', NULL),
(76, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_cplusplus.png', '', 'No savings', 568, 568, '', 10, 0, 1, '2023-01-15 22:04:29', NULL),
(77, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_csharp.png', '', 'No savings', 647, 647, '', 10, 0, 1, '2023-01-15 22:04:30', NULL),
(78, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_cup.png', '', 'No savings', 586, 586, '', 10, 0, 1, '2023-01-15 22:04:31', NULL),
(79, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_database.png', '', 'No savings', 526, 526, '', 10, 0, 1, '2023-01-15 22:04:32', NULL),
(80, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_delete.png', '', 'No savings', 483, 483, '', 10, 0, 1, '2023-01-15 22:04:34', NULL),
(81, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_dvd.png', '', 'No savings', 585, 585, '', 10, 0, 1, '2023-01-15 22:04:35', NULL),
(82, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_edit.png', '', 'No savings', 565, 565, '', 10, 0, 1, '2023-01-15 22:04:36', NULL),
(83, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_error.png', '', 'No savings', 570, 570, '', 10, 0, 1, '2023-01-15 22:04:37', NULL),
(84, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_excel.png', '', 'No savings', 610, 610, '', 10, 0, 1, '2023-01-15 22:04:38', NULL),
(85, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_find.png', '', 'No savings', 623, 623, '', 10, 0, 1, '2023-01-15 22:04:39', NULL),
(86, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_flash.png', '', 'No savings', 529, 529, '', 10, 0, 1, '2023-01-15 22:04:42', NULL),
(87, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_freehand.png', '', 'No savings', 586, 586, '', 10, 0, 1, '2023-01-15 22:04:43', NULL),
(88, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_gear.png', '', 'No savings', 349, 349, '', 10, 0, 1, '2023-01-15 22:04:45', NULL),
(89, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_get.png', '', 'No savings', 463, 463, '', 10, 0, 1, '2023-01-15 22:04:47', NULL),
(90, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_go.png', '', 'No savings', 559, 559, '', 10, 0, 1, '2023-01-15 22:04:48', NULL),
(91, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_h.png', '', 'No savings', 550, 550, '', 10, 0, 1, '2023-01-15 22:04:49', NULL),
(92, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_horizontal.png', '', 'No savings', 243, 243, '', 10, 0, 1, '2023-01-15 22:04:50', NULL),
(93, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_key.png', '', 'No savings', 563, 563, '', 10, 0, 1, '2023-01-15 22:04:53', NULL),
(94, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_lightning.png', '', 'No savings', 616, 616, '', 10, 0, 1, '2023-01-15 22:04:55', NULL),
(95, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_link.png', '', 'No savings', 561, 561, '', 10, 0, 1, '2023-01-15 22:04:58', NULL),
(96, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_magnify.png', '', 'No savings', 501, 501, '', 10, 0, 1, '2023-01-15 22:05:00', NULL),
(97, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_medal.png', '', 'No savings', 653, 653, '', 10, 0, 1, '2023-01-15 22:05:00', NULL),
(98, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_office.png', '', 'No savings', 726, 726, '', 10, 0, 1, '2023-01-15 22:05:02', NULL),
(99, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_paint.png', '', 'No savings', 635, 635, '', 10, 0, 1, '2023-01-15 22:05:03', NULL),
(100, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_paintbrush.png', '', 'No savings', 565, 565, '', 10, 0, 1, '2023-01-15 22:05:05', NULL),
(101, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_paste.png', '', 'No savings', 567, 567, '', 10, 0, 1, '2023-01-15 22:05:07', NULL),
(102, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_php.png', '', 'No savings', 485, 485, '', 10, 0, 1, '2023-01-15 22:05:08', NULL),
(103, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_picture.png', '', 'No savings', 597, 597, '', 10, 0, 1, '2023-01-15 22:05:08', NULL),
(104, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_powerpoint.png', '', 'No savings', 535, 535, '', 10, 0, 1, '2023-01-15 22:05:09', NULL),
(105, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_put.png', '', 'No savings', 470, 470, '', 10, 0, 1, '2023-01-15 22:05:10', NULL),
(106, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_ruby.png', '', 'No savings', 573, 573, '', 10, 0, 1, '2023-01-15 22:05:11', NULL),
(107, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_stack.png', '', 'No savings', 264, 264, '', 10, 0, 1, '2023-01-15 22:05:13', NULL),
(108, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_star.png', '', 'No savings', 512, 512, '', 10, 0, 1, '2023-01-15 22:05:14', NULL),
(109, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_swoosh.png', '', 'No savings', 581, 581, '', 10, 0, 1, '2023-01-15 22:05:15', NULL),
(110, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_text.png', '', 'No savings', 289, 289, '', 10, 0, 1, '2023-01-15 22:05:16', NULL),
(111, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_text_width.png', '', 'No savings', 262, 262, '', 10, 0, 1, '2023-01-15 22:05:17', NULL),
(112, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_tux.png', '', 'No savings', 615, 615, '', 10, 0, 1, '2023-01-15 22:05:18', NULL),
(113, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_vector.png', '', 'No savings', 591, 591, '', 10, 0, 1, '2023-01-15 22:05:20', NULL),
(114, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_visualstudio.png', '', 'No savings', 649, 649, '', 10, 0, 1, '2023-01-15 22:05:21', NULL),
(115, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_width.png', '', 'No savings', 256, 256, '', 10, 0, 1, '2023-01-15 22:05:22', NULL),
(116, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_word.png', '', 'No savings', 598, 598, '', 10, 0, 1, '2023-01-15 22:05:23', NULL),
(117, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_world.png', '', 'No savings', 681, 681, '', 10, 0, 1, '2023-01-15 22:05:23', NULL),
(118, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_wrench.png', '', 'No savings', 560, 560, '', 10, 0, 1, '2023-01-15 22:05:25', NULL),
(119, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_white_zip.png', '', 'No savings', 333, 333, '', 10, 0, 1, '2023-01-15 22:05:25', NULL),
(120, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_word.png', '', 'No savings', 724, 724, '', 10, 0, 1, '2023-01-15 22:05:26', NULL),
(121, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\serve-index\\public\\icons\\page_world.png', '', 'No savings', 850, 850, '', 10, 0, 1, '2023-01-15 22:05:28', NULL),
(122, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\webp-converter\\images\\nlogo.gif', '', 'Reduced by 12.6% (681 B)', 4734, 5415, '', 10, 0, 1, '2023-01-15 22:05:30', NULL),
(123, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\webp-converter\\linux_logo.gif', '', 'Reduced by 0.0% (3 B)', 27484, 27487, '', 10, 0, 1, '2023-01-15 22:05:32', NULL),
(124, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\webp-converter\\nodejs_logo.jpg', '', 'Reduced by 2.1% (1.1 KB)', 51894, 53025, '', 10, 0, 1, '2023-01-15 22:05:33', NULL),
(125, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\node_modules\\webpcss\\node_modules\\webp-converter\\images\\nlogo.gif', '', 'Reduced by 12.6% (681 B)', 4734, 5415, '', 10, 0, 1, '2023-01-15 22:05:35', NULL),
(126, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\commercal.jpg', '', 'Reduced by 10.8% (9.3 KB)', 78458, 87949, '', 10, 0, 1, '2023-01-15 22:05:36', NULL),
(127, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\hero.png', '', 'Reduced by 16.8% (130.3 KB)', 659372, 792847, '', 10, 0, 1, '2023-01-15 22:05:42', NULL),
(128, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\icons\\residential.jpg', '', 'Reduced by 22.5% (687 B)', 2373, 3060, '', 10, 0, 1, '2023-01-15 22:05:43', NULL),
(129, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\news\\news1.jpg', '', 'Reduced by 9.3% (19.8 KB)', 196968, 217212, '', 10, 0, 1, '2023-01-15 22:05:45', NULL),
(130, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\news\\news2.jpg', '', 'Reduced by 8.1% (13.0 KB)', 151967, 165279, '', 10, 0, 1, '2023-01-15 22:05:46', NULL),
(131, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\projects\\project1.jpg', '', 'Reduced by 8.7% (8.7 KB)', 93456, 102316, '', 10, 0, 1, '2023-01-15 22:05:47', NULL),
(132, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\projects\\project2.jpg', '', 'Reduced by 9.9% (11.4 KB)', 106347, 117989, '', 10, 0, 1, '2023-01-15 22:05:50', NULL),
(133, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\projects\\project3.png', '', 'Reduced by 15.1% (24.7 KB)', 141776, 167031, '', 10, 0, 1, '2023-01-15 22:05:54', NULL),
(134, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\projects\\project4.png', '', 'Reduced by 11.1% (21.1 KB)', 173251, 194853, '', 10, 0, 1, '2023-01-15 22:05:57', NULL),
(135, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\slider\\client.jpg', '', 'Reduced by 10.6% (865 B)', 7331, 8196, '', 10, 0, 1, '2023-01-15 22:06:01', NULL),
(136, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\welcome.jpg', '', 'Reduced by 9.6% (29.4 KB)', 284585, 314653, '', 10, 0, 1, '2023-01-15 22:06:02', NULL),
(137, NULL, NULL, NULL, 'ABSPATHwp-content/themes/BlueCollar\\sources\\src\\img\\why.png', '', 'Reduced by 17.1% (119.4 KB)', 591831, 714050, '', 10, 0, 1, '2023-01-15 22:06:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ewwwio_queue`
--

CREATE TABLE `wp_ewwwio_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gallery` varchar(20) DEFAULT NULL,
  `scanned` tinyint(4) NOT NULL DEFAULT 0,
  `new` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_fbv`
--

CREATE TABLE `wp_fbv` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `type` int(2) NOT NULL DEFAULT 0,
  `ord` int(11) DEFAULT 0,
  `created_by` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_fbv`
--

INSERT INTO `wp_fbv` (`id`, `name`, `parent`, `type`, `ord`, `created_by`) VALUES
(1, 'services', 0, 0, 0, 0),
(2, 'projects', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_fbv_attachment_folder`
--

CREATE TABLE `wp_fbv_attachment_folder` (
  `folder_id` int(11) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_fbv_attachment_folder`
--

INSERT INTO `wp_fbv_attachment_folder` (`folder_id`, `attachment_id`) VALUES
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(2, 136),
(2, 137),
(2, 138),
(2, 139);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'BlueCollar', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fominsartems947@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:159:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"index.php/services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:39:\"index.php/services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:47:\"index.php/services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:54:\"index.php/services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:35:\"index.php/services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"index.php/projects/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/projects/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/projects/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/projects/([^/]+)/embed/?$\";s:41:\"index.php?projects=$matches[1]&embed=true\";s:39:\"index.php/projects/([^/]+)/trackback/?$\";s:35:\"index.php?projects=$matches[1]&tb=1\";s:47:\"index.php/projects/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&paged=$matches[2]\";s:54:\"index.php/projects/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?projects=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/projects/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?projects=$matches[1]&page=$matches[2]\";s:35:\"index.php/projects/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/projects/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/projects/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/project_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project_type=$matches[1]&feed=$matches[2]\";s:58:\"index.php/project_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project_type=$matches[1]&feed=$matches[2]\";s:39:\"index.php/project_type/([^/]+)/embed/?$\";s:45:\"index.php?project_type=$matches[1]&embed=true\";s:51:\"index.php/project_type/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?project_type=$matches[1]&paged=$matches[2]\";s:33:\"index.php/project_type/([^/]+)/?$\";s:34:\"index.php?project_type=$matches[1]\";s:43:\"index.php/plans/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"index.php/plans/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"index.php/plans/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/plans/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/plans/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"index.php/plans/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"index.php/plans/([^/]+)/embed/?$\";s:38:\"index.php?plans=$matches[1]&embed=true\";s:36:\"index.php/plans/([^/]+)/trackback/?$\";s:32:\"index.php?plans=$matches[1]&tb=1\";s:44:\"index.php/plans/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?plans=$matches[1]&paged=$matches[2]\";s:51:\"index.php/plans/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?plans=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/plans/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?plans=$matches[1]&page=$matches[2]\";s:32:\"index.php/plans/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"index.php/plans/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"index.php/plans/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/plans/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/plans/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/plans/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:60:\"index.php/plans-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?plans-tag=$matches[1]&feed=$matches[2]\";s:55:\"index.php/plans-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?plans-tag=$matches[1]&feed=$matches[2]\";s:36:\"index.php/plans-tag/([^/]+)/embed/?$\";s:42:\"index.php?plans-tag=$matches[1]&embed=true\";s:48:\"index.php/plans-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?plans-tag=$matches[1]&paged=$matches[2]\";s:30:\"index.php/plans-tag/([^/]+)/?$\";s:31:\"index.php?plans-tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:21:\"filebird/filebird.php\";i:3;s:21:\"safe-svg/safe-svg.php\";i:4;s:44:\"shortpixel-image-optimiser/wp-shortpixel.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'BlueCollar', 'yes'),
(41, 'stylesheet', 'BlueCollar', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:53:\"webp-converter-for-media/webp-converter-for-media.php\";a:2:{i:0;s:30:\"WebpConverter\\Plugin\\Uninstall\";i:1;s:22:\"load_uninstall_actions\";}s:44:\"shortpixel-image-optimiser/wp-shortpixel.php\";a:2:{i:0;s:32:\"\\ShortPixel\\Helper\\InstallHelper\";i:1;s:15:\"uninstallPlugin\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '10', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1689277462', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '2', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1673999077;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1674006544;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674027877;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674028093;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674071076;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674071293;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674071297;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674416676;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1673726476;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(130, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(139, '_site_transient_timeout_browser_a818ab359804517f2549e94c88d03c0b', '1674330494', 'no'),
(140, '_site_transient_browser_a818ab359804517f2549e94c88d03c0b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(141, '_site_transient_timeout_php_check_133413fa91fc050a1c5770fd6e67cbaa', '1674330495', 'no'),
(142, '_site_transient_php_check_133413fa91fc050a1c5770fd6e67cbaa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(150, 'can_compress_scripts', '1', 'no'),
(157, 'recently_activated', 'a:5:{s:23:\"ml-slider/ml-slider.php\";i:1673918920;s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";i:1673820559;s:53:\"webp-converter-for-media/webp-converter-for-media.php\";i:1673817030;s:19:\"imagify/imagify.php\";i:1673816834;s:25:\"menu-icons/menu-icons.php\";i:1673807240;}', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(164, 'theme_mods_BlueCollar', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:11:\"header_menu\";i:2;s:14:\"header_socials\";i:3;}}', 'yes'),
(165, 'current_theme', 'BlueCollar', 'yes'),
(166, 'theme_switched', '', 'yes'),
(200, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:5:\"19.14\";}', 'yes'),
(201, 'wpseo', 'a:99:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:20:\"taxonomy_made_public\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:5:\"19.14\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1673747345;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:46:\"/index.php/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:26:\"http://localhost/wordpress\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:2:{s:12:\"project_type\";s:12:\"project_type\";s:9:\"plans-tag\";s:9:\"plans-tag\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1673747350;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:6:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:8:\"services\";i:4;s:8:\"projects\";i:5;s:5:\"plans\";}s:28:\"last_known_public_taxonomies\";a:5:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:12:\"project_type\";i:4;s:9:\"plans-tag\";}}', 'yes'),
(202, 'wpseo_titles', 'a:110:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(203, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}', 'yes'),
(237, 'category_children', 'a:0:{}', 'yes'),
(274, 'acf_version', '6.0.6', 'yes'),
(290, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(389, 'menu_icons_install', '1673800282', 'yes'),
(390, '_transient_timeout_menu_icons_0132versions', '1674232283', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(391, '_transient_menu_icons_0132versions', 'a:47:{i:0;a:2:{s:7:\"version\";s:5:\"0.1.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.0.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"0.1.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.1.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"0.1.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.2.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"0.1.3\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.3.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"0.1.4\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.4.zip\";}i:5;a:2:{s:7:\"version\";s:5:\"0.1.5\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.1.5.zip\";}i:6;a:2:{s:7:\"version\";s:6:\"0.10.0\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.10.0.zip\";}i:7;a:2:{s:7:\"version\";s:6:\"0.10.1\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.10.1.zip\";}i:8;a:2:{s:7:\"version\";s:6:\"0.10.2\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.10.2.zip\";}i:9;a:2:{s:7:\"version\";s:6:\"0.11.0\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.0.zip\";}i:10;a:2:{s:7:\"version\";s:6:\"0.11.1\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.1.zip\";}i:11;a:2:{s:7:\"version\";s:6:\"0.11.2\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.2.zip\";}i:12;a:2:{s:7:\"version\";s:6:\"0.11.3\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.3.zip\";}i:13;a:2:{s:7:\"version\";s:6:\"0.11.4\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.4.zip\";}i:14;a:2:{s:7:\"version\";s:6:\"0.11.5\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.11.5.zip\";}i:15;a:2:{s:7:\"version\";s:6:\"0.12.0\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.0.zip\";}i:16;a:2:{s:7:\"version\";s:6:\"0.12.1\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.1.zip\";}i:17;a:2:{s:7:\"version\";s:7:\"0.12.10\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.10.zip\";}i:18;a:2:{s:7:\"version\";s:7:\"0.12.11\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.11.zip\";}i:19;a:2:{s:7:\"version\";s:7:\"0.12.12\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.12.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"0.12.2\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.2.zip\";}i:21;a:2:{s:7:\"version\";s:6:\"0.12.3\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.3.zip\";}i:22;a:2:{s:7:\"version\";s:6:\"0.12.4\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.4.zip\";}i:23;a:2:{s:7:\"version\";s:6:\"0.12.5\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.5.zip\";}i:24;a:2:{s:7:\"version\";s:6:\"0.12.6\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.6.zip\";}i:25;a:2:{s:7:\"version\";s:6:\"0.12.7\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.7.zip\";}i:26;a:2:{s:7:\"version\";s:6:\"0.12.8\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.8.zip\";}i:27;a:2:{s:7:\"version\";s:6:\"0.12.9\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.12.9.zip\";}i:28;a:2:{s:7:\"version\";s:6:\"0.13.0\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.13.0.zip\";}i:29;a:2:{s:7:\"version\";s:6:\"0.13.1\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.13.1.zip\";}i:30;a:2:{s:7:\"version\";s:6:\"0.13.2\";s:3:\"url\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.13.2.zip\";}i:31;a:2:{s:7:\"version\";s:5:\"0.2.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.0.zip\";}i:32;a:2:{s:7:\"version\";s:5:\"0.2.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.1.zip\";}i:33;a:2:{s:7:\"version\";s:5:\"0.2.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.2.zip\";}i:34;a:2:{s:7:\"version\";s:5:\"0.2.3\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.2.3.zip\";}i:35;a:2:{s:7:\"version\";s:5:\"0.3.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.3.0.zip\";}i:36;a:2:{s:7:\"version\";s:5:\"0.3.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.3.1.zip\";}i:37;a:2:{s:7:\"version\";s:5:\"0.3.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.3.2.zip\";}i:38;a:2:{s:7:\"version\";s:5:\"0.4.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.4.0.zip\";}i:39;a:2:{s:7:\"version\";s:5:\"0.5.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.5.0.zip\";}i:40;a:2:{s:7:\"version\";s:5:\"0.5.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.5.1.zip\";}i:41;a:2:{s:7:\"version\";s:5:\"0.6.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.6.0.zip\";}i:42;a:2:{s:7:\"version\";s:5:\"0.7.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.7.0.zip\";}i:43;a:2:{s:7:\"version\";s:5:\"0.8.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.8.0.zip\";}i:44;a:2:{s:7:\"version\";s:5:\"0.8.1\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.8.1.zip\";}i:45;a:2:{s:7:\"version\";s:5:\"0.9.0\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.9.0.zip\";}i:46;a:2:{s:7:\"version\";s:5:\"0.9.2\";s:3:\"url\";s:59:\"https://downloads.wordpress.org/plugin/menu-icons.0.9.2.zip\";}}', 'no'),
(392, 'menu-icons', 'a:2:{s:6:\"global\";a:2:{s:10:\"icon_types\";a:7:{i:0;s:9:\"dashicons\";i:1;s:7:\"elusive\";i:2;s:2:\"fa\";i:3;s:16:\"foundation-icons\";i:4;s:9:\"genericon\";i:5;s:5:\"image\";i:6;s:3:\"svg\";}s:15:\"fa5_extra_icons\";s:0:\"\";}s:6:\"menu_3\";a:6:{s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}}', 'yes'),
(504, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":1}', 'yes'),
(558, 'action_scheduler_hybrid_store_demarkation', '82', 'yes'),
(559, 'schema-ActionScheduler_StoreSchema', '6.0.1673816658', 'yes'),
(560, 'schema-ActionScheduler_LoggerSchema', '3.0.1673816659', 'yes'),
(563, 'action_scheduler_lock_async-request-runner', '1673816844', 'yes'),
(617, 'ewww_image_optimizer_relative_migration_status', 'done', 'yes'),
(619, 'ewww_image_optimizer_background_optimization', '1', 'yes'),
(620, 'ewww_image_optimizer_noauto', '', 'yes'),
(621, 'ewww_image_optimizer_disable_editor', '', 'yes'),
(622, 'ewww_image_optimizer_debug', '', 'yes'),
(623, 'ewww_image_optimizer_metadata_remove', '1', 'yes'),
(624, 'ewww_image_optimizer_jpg_level', '10', 'yes'),
(625, 'ewww_image_optimizer_png_level', '10', 'yes'),
(626, 'ewww_image_optimizer_gif_level', '10', 'yes'),
(627, 'ewww_image_optimizer_pdf_level', '0', 'yes'),
(628, 'ewww_image_optimizer_svg_level', '0', 'yes'),
(629, 'ewww_image_optimizer_jpg_quality', '', 'yes'),
(630, 'ewww_image_optimizer_webp_quality', '', 'yes'),
(631, 'ewww_image_optimizer_backup_files', '', 'yes'),
(632, 'ewww_image_optimizer_resize_existing', '1', 'yes'),
(633, 'ewww_image_optimizer_exactdn', '', 'yes'),
(635, 'exactdn_all_the_things', '1', 'yes'),
(636, 'exactdn_lossy', '1', 'yes'),
(637, 'exactdn_exclude', '', 'yes'),
(638, 'exactdn_sub_folder', '', 'no'),
(639, 'exactdn_prevent_db_queries', '', 'yes'),
(640, 'ewww_image_optimizer_lazy_load', '', 'yes'),
(641, 'ewww_image_optimizer_use_siip', '', 'yes'),
(642, 'ewww_image_optimizer_use_lqip', '', 'yes'),
(643, 'ewww_image_optimizer_ll_exclude', '', 'yes'),
(644, 'ewww_image_optimizer_ll_all_things', '', 'yes'),
(645, 'ewww_image_optimizer_disable_pngout', '1', 'yes'),
(646, 'ewww_image_optimizer_disable_svgcleaner', '1', 'yes'),
(647, 'ewww_image_optimizer_optipng_level', '2', 'yes'),
(648, 'ewww_image_optimizer_pngout_level', '2', 'yes'),
(649, 'ewww_image_optimizer_webp_for_cdn', '', 'yes'),
(650, 'ewww_image_optimizer_force_gif2webp', '1', 'yes'),
(651, 'ewww_image_optimizer_picture_webp', '', 'yes'),
(652, 'ewww_image_optimizer_webp_rewrite_exclude', '', 'yes'),
(654, 'ewww_image_optimizer_ll_autoscale', '1', 'no'),
(655, 'exactdn_never_been_active', '1', 'no'),
(656, 'ewww_image_optimizer_bulk_resume', '', 'yes'),
(657, 'ewww_image_optimizer_aux_resume', '', 'yes'),
(658, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(659, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(661, 'ewww_image_optimizer_review_time', '1674422128', 'no'),
(662, 'ewww_image_optimizer_version', '693', 'yes'),
(665, 'ewww_image_optimizer_wizard_complete', '1', 'no'),
(677, 'ewww_image_optimizer_avif_quality', '', 'yes'),
(678, 'ewww_image_optimizer_aux_paths', '', 'yes'),
(679, 'ewww_image_optimizer_exclude_paths', '', 'yes'),
(680, 'ewww_image_optimizer_maxmediawidth', '0', 'yes'),
(681, 'ewww_image_optimizer_maxmediaheight', '0', 'yes'),
(682, 'ewww_image_optimizer_disable_resizes', '', 'yes'),
(683, 'ewww_image_optimizer_disable_resizes_opt', '', 'yes'),
(684, 'ewww_image_optimizer_jpg_background', '', 'yes'),
(685, 'ewww_image_optimizer_webp', '1', 'yes'),
(686, 'ewww_image_optimizer_webp_paths', '', 'yes'),
(699, 'ewww_image_optimizer_aux_folders_completed', 'a:0:{}', 'no'),
(792, 'ewww_image_optimizer_dismiss_media_notice', '1', 'no'),
(1269, 'wp-short-pixel-activation-notice', '1', 'no'),
(1270, 'wp-short-pixel-activation-date', '1673820605', 'no'),
(1271, 'wp-short-pixel-currentVersion', '5.1.6', 'yes'),
(1272, 'wp-short-pixel-view-mode', '1', 'yes'),
(1273, 'wp-short-pixel-apiKey', 'b5vt6KMoadPaCoPI0hnV', 'yes'),
(1274, 'wp-short-pixel-redirected-settings', '2', 'yes'),
(1275, 'wp-short-pixel-apiKeyTried', '', 'yes'),
(1278, 'shortqwp_SPIO', 'a:1:{s:6:\"queues\";a:4:{s:11:\"mediaSingle\";O:24:\"ShortPixel\\ShortQ\\Status\":15:{s:8:\"\0*\0items\";i:0;s:13:\"\0*\0in_process\";i:0;s:12:\"\0*\0preparing\";b:0;s:10:\"\0*\0running\";b:0;s:11:\"\0*\0finished\";b:1;s:15:\"\0*\0bulk_running\";b:0;s:7:\"\0*\0done\";i:0;s:9:\"\0*\0errors\";i:0;s:15:\"\0*\0fatal_errors\";i:0;s:11:\"\0*\0last_run\";i:1673925144;s:14:\"\0*\0last_update\";i:1673925144;s:12:\"\0*\0times_ran\";i:488;s:14:\"\0*\0average_ask\";i:0;s:15:\"\0*\0last_item_id\";i:173;s:14:\"\0*\0custom_data\";N;}s:12:\"customSingle\";O:24:\"ShortPixel\\ShortQ\\Status\":15:{s:8:\"\0*\0items\";i:0;s:13:\"\0*\0in_process\";i:0;s:12:\"\0*\0preparing\";b:0;s:10:\"\0*\0running\";b:0;s:11:\"\0*\0finished\";b:1;s:15:\"\0*\0bulk_running\";b:0;s:7:\"\0*\0done\";i:0;s:9:\"\0*\0errors\";i:0;s:15:\"\0*\0fatal_errors\";i:0;s:11:\"\0*\0last_run\";i:1673925144;s:14:\"\0*\0last_update\";i:1673925144;s:12:\"\0*\0times_ran\";i:1481;s:14:\"\0*\0average_ask\";i:0;s:15:\"\0*\0last_item_id\";i:0;s:14:\"\0*\0custom_data\";N;}s:5:\"media\";O:24:\"ShortPixel\\ShortQ\\Status\":15:{s:8:\"\0*\0items\";i:5;s:13:\"\0*\0in_process\";i:4;s:12:\"\0*\0preparing\";b:0;s:10:\"\0*\0running\";b:1;s:11:\"\0*\0finished\";b:0;s:15:\"\0*\0bulk_running\";b:1;s:7:\"\0*\0done\";i:0;s:9:\"\0*\0errors\";i:0;s:15:\"\0*\0fatal_errors\";i:0;s:11:\"\0*\0last_run\";i:1673925488;s:14:\"\0*\0last_update\";i:1673925489;s:12:\"\0*\0times_ran\";i:2;s:14:\"\0*\0average_ask\";i:0;s:15:\"\0*\0last_item_id\";i:10;s:14:\"\0*\0custom_data\";O:8:\"stdClass\":4:{s:9:\"webpCount\";i:7;s:9:\"avifCount\";i:0;s:9:\"baseCount\";i:9;s:15:\"customOperation\";b:0;}}s:6:\"custom\";O:24:\"ShortPixel\\ShortQ\\Status\":15:{s:8:\"\0*\0items\";i:0;s:13:\"\0*\0in_process\";i:0;s:12:\"\0*\0preparing\";b:0;s:10:\"\0*\0running\";b:0;s:11:\"\0*\0finished\";b:1;s:15:\"\0*\0bulk_running\";b:1;s:7:\"\0*\0done\";i:0;s:9:\"\0*\0errors\";i:0;s:15:\"\0*\0fatal_errors\";i:0;s:11:\"\0*\0last_run\";i:1673925489;s:14:\"\0*\0last_update\";i:1673925489;s:12:\"\0*\0times_ran\";i:62;s:14:\"\0*\0average_ask\";i:0;s:15:\"\0*\0last_item_id\";i:0;s:14:\"\0*\0custom_data\";N;}}}', 'yes'),
(1285, 'wp-short-pixel-quota-exceeded', '0', 'yes'),
(1286, 'ShortPixel-notices', 'a:1:{i:0;O:30:\"ShortPixel\\Notices\\NoticeModel\":15:{s:7:\"message\";s:553:\"<p> With ShortPixel you can now <a href=\"https://shortpixel.com/knowledge-base/article/182-what-is-smart-cropping\" target=\"_blank\">smartly crop</a> thumbnails on your website. This is especially useful for eCommerce websites <a href=\"https://shortpixel.com/blog/how-to-smart-crop-wordpress-images/#how-to-crop-wordpress-images-automatically-smart-solution\" target=\"_blank\">(read more)</a>. </p> <p> Enable the option on the <a href=\"http://localhost/wordpress/wp-admin/options-general.php?page=wp-shortpixel-settings\" >ShortPixel Settings</a> page. </p>\";s:7:\"details\";a:0:{}s:4:\"code\";N;s:34:\"\0ShortPixel\\Notices\\NoticeModel\0id\";s:21:\"MSG_FEATURE_SMARTCROP\";s:9:\"\0*\0viewed\";b:1;s:16:\"\0*\0is_persistent\";b:1;s:15:\"\0*\0is_dismissed\";b:0;s:17:\"\0*\0suppress_until\";N;s:18:\"\0*\0suppress_period\";i:31536000;s:18:\"\0*\0include_screens\";a:0:{}s:18:\"\0*\0exclude_screens\";a:1:{i:0;s:36:\"settings_page_wp-shortpixel-settings\";}s:12:\"is_removable\";b:1;s:11:\"messageType\";i:1;s:13:\"notice_action\";s:18:\"ShortPixel-notices\";s:11:\"\0*\0callback\";N;}}', 'yes'),
(1287, 'wp-short-pixel-verifiedKey', '1', 'yes'),
(1290, 'wp-short-pixel-compression', '1', 'yes'),
(1291, 'wp-short-process_thumbnails', '1', 'yes'),
(1292, 'wp-short-backup_images', '1', 'yes'),
(1293, 'wp-short-pixel-resize-type', 'outer', 'yes'),
(1294, 'wp-short-create-webp', '1', 'yes'),
(1295, 'wp-short-pixel-auto-media-library', '1', 'yes'),
(1296, 'wp-short-pixel-optimize-pdfs', '1', 'yes'),
(1297, 'wp-short-pixel-optimize-retina', '1', 'yes'),
(1298, 'wp-short-pixel-exclude-patterns', 'a:0:{}', 'yes'),
(1299, 'wp-short-pixel-site-auth-user', '', 'yes'),
(1300, 'wp-short-pixel-site-auth-pass', '', 'yes'),
(1301, 'wp-short-pixel-cloudflareAPIZoneID', '', 'yes'),
(1302, 'wp-short-pixel-cloudflareToken', '', 'yes'),
(1303, 'wp-short-pixel-keep-exif', '0', 'yes'),
(1304, 'wp-short-pixel-png2jpg', '0', 'yes'),
(1305, 'wp-short-pixel-excludeSizes', 'a:0:{}', 'yes'),
(1306, 'wp-short-pixel-create-webp-markup', '2', 'yes'),
(1307, 'wp-short-pixel_cmyk2rgb', '1', 'yes'),
(1308, 'wp-short-pixel-resize-width', '', 'yes'),
(1309, 'wp-short-pixel-resize-height', '', 'yes'),
(1310, 'wpspio-usesmartcrop', '0', 'yes'),
(1311, 'wp-short-pixel-resize-images', '0', 'yes'),
(1312, 'wp-short-pixel-include-next-gen', '0', 'yes'),
(1313, 'wp-short-create-avif', '', 'yes'),
(1314, 'wp-short-pixel-optimize-unlisted', '0', 'yes'),
(1315, 'wp-short-pixel-front-bootstrap', '0', 'yes'),
(1316, 'wp-short-pixel-cloudflareAPIEmail', '', 'yes'),
(1317, 'wp-short-pixel-cloudflareAuthKey', '', 'yes'),
(1328, 'shortpixel-bulk-logs', 'a:1:{i:0;a:8:{s:9:\"processed\";i:0;s:13:\"not_processed\";i:0;s:6:\"errors\";i:0;s:12:\"fatal_errors\";i:2;s:12:\"total_images\";i:0;s:4:\"type\";s:5:\"media\";s:4:\"date\";i:1673821124;s:7:\"logfile\";s:25:\"bulk_media_1673821124.log\";}}', 'no'),
(1437, 'fbv_is_new_user', '1', 'yes'),
(1438, 'fbv_first_time_active', '1', 'yes'),
(1439, 'fbv_version', '5.1.4', 'yes'),
(1440, 'fbv_review', '1674088285', 'yes'),
(1518, '_transient_timeout_wpseo_total_unindexed_general_items', '1674002461', 'no'),
(1519, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(1549, 'wp-short-pixel-unlisted-counter', '90', 'yes'),
(1588, 'recovery_mode_email_last_sent', '1673839334', 'yes'),
(1682, 'ms_was_installed_on', '1673918332', 'yes'),
(1683, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1684, 'ms_hide_all_ads_until', '1675127947', 'yes'),
(1685, 'metaslider_systemcheck', 'a:1:{s:16:\"wordPressVersion\";b:0;}', 'no'),
(1686, 'metagallery_opened', '1', 'yes'),
(1705, '_transient_timeout_wpseo_total_unindexed_posts', '1674005613', 'no'),
(1706, '_transient_wpseo_total_unindexed_posts', '0', 'no'),
(1707, '_transient_timeout_wpseo_total_unindexed_terms', '1674005613', 'no'),
(1708, '_transient_wpseo_total_unindexed_terms', '0', 'no'),
(1741, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1674007345', 'no'),
(1742, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(1743, '_transient_timeout_wpseo_unindexed_post_link_count', '1674007345', 'no'),
(1744, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(1745, '_transient_timeout_wpseo_unindexed_term_link_count', '1674007346', 'no'),
(1746, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(1756, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1673997672;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1757, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673997678;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:21:\"filebird/filebird.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/filebird\";s:4:\"slug\";s:8:\"filebird\";s:6:\"plugin\";s:21:\"filebird/filebird.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/filebird/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/filebird.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/filebird/assets/icon-128x128.gif?rev=2299145\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/filebird/assets/banner-1544x500.png?rev=2350008\";s:2:\"1x\";s:63:\"https://ps.w.org/filebird/assets/banner-772x250.png?rev=2350008\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.0.3\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=2683939\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:44:\"shortpixel-image-optimiser/wp-shortpixel.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/shortpixel-image-optimiser\";s:4:\"slug\";s:26:\"shortpixel-image-optimiser\";s:6:\"plugin\";s:44:\"shortpixel-image-optimiser/wp-shortpixel.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/shortpixel-image-optimiser/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/shortpixel-image-optimiser.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/shortpixel-image-optimiser/assets/icon-256x256.png?rev=1038819\";s:2:\"1x\";s:79:\"https://ps.w.org/shortpixel-image-optimiser/assets/icon-128x128.png?rev=1038819\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/shortpixel-image-optimiser/assets/banner-772x250.png?rev=1730573\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.8.0\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"19.14\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.14.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.2\";s:21:\"filebird/filebird.php\";s:5:\"5.1.4\";s:21:\"safe-svg/safe-svg.php\";s:5:\"2.0.3\";s:44:\"shortpixel-image-optimiser/wp-shortpixel.php\";s:5:\"5.1.6\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"19.14\";}}', 'no'),
(1758, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673997677;s:7:\"checked\";a:6:{s:10:\"BlueCollar\";s:0:\"\";s:4:\"auto\";s:0:\"\";s:4:\"blog\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1759, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1673921541;s:7:\"version\";s:5:\"5.7.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1782, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(1851, 'secret_key', 'wf$k[>qR%iVnjn.1m<#u#<#OYbn`AT2xp_?8zBLe[@P[))myyuA.mhfhC4KjHvIG', 'no'),
(1862, 'wp-short-pixel-current-total-files', 'a:5:{s:5:\"media\";a:6:{s:5:\"items\";i:0;s:6:\"images\";i:-1;s:6:\"thumbs\";i:0;s:10:\"itemsTotal\";i:17;s:11:\"thumbsTotal\";i:48;s:9:\"isLimited\";b:0;}s:6:\"custom\";a:3:{s:5:\"items\";i:0;s:6:\"images\";i:-1;s:10:\"itemsTotal\";i:0;}s:6:\"period\";a:1:{s:6:\"months\";a:4:{i:1;i:-1;i:2;i:-1;i:3;i:-1;i:4;i:-1;}}s:5:\"total\";a:5:{s:5:\"items\";i:-1;s:6:\"images\";i:-1;s:6:\"thumbs\";i:-1;s:10:\"itemsTotal\";i:-1;s:11:\"thumbsTotal\";i:-1;}s:4:\"time\";i:1673925145;}', 'yes'),
(1872, '_transient_timeout_global_styles_BlueCollar', '1673997727', 'no'),
(1873, '_transient_global_styles_BlueCollar', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(1875, '_site_transient_timeout_theme_roots', '1673999476', 'no'),
(1876, '_site_transient_theme_roots', 'a:6:{s:10:\"BlueCollar\";s:7:\"/themes\";s:4:\"auto\";s:7:\"/themes\";s:4:\"blog\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1673747707:1'),
(4, 3, '_wp_trash_meta_status', 'draft'),
(5, 3, '_wp_trash_meta_time', '1673747860'),
(6, 3, '_wp_desired_post_slug', 'privacy-policy'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1673747860'),
(9, 2, '_wp_desired_post_slug', 'sample-page'),
(10, 7, '_edit_lock', '1673918232:1'),
(13, 7, '_edit_last', '1'),
(14, 7, '_yoast_wpseo_focuskw', 'electrical installations services air condition general builder house extensions'),
(15, 7, '_yoast_wpseo_title', '%%sitename%%'),
(16, 7, '_yoast_wpseo_metadesc', 'Provision of electrical work in residential and commercial premises. We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(17, 7, '_yoast_wpseo_linkdex', '22'),
(18, 7, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(19, 7, '_yoast_wpseo_wordproof_timestamp', ''),
(20, 7, '_yoast_wpseo_opengraph-title', 'Blue Collar'),
(21, 7, '_yoast_wpseo_opengraph-description', 'bla bl abl abla'),
(22, 7, '_yoast_wpseo_opengraph-image', 'http://localhost/wordpress/wp-content/uploads/2023/01/Screenshot.png'),
(23, 7, '_yoast_wpseo_opengraph-image-id', '8'),
(24, 7, '_yoast_wpseo_twitter-title', 'Blue Collar'),
(25, 7, '_yoast_wpseo_twitter-description', 'bla bla bla bla'),
(26, 7, '_yoast_wpseo_twitter-image', 'http://localhost/wordpress/wp-content/uploads/2023/01/Screenshot.png'),
(27, 7, '_yoast_wpseo_twitter-image-id', '8'),
(28, 10, '_wp_attached_file', '2023/01/favicon-32x32-2.png'),
(29, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:27:\"2023/01/favicon-32x32-2.png\";s:8:\"filesize\";i:613;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 11, '_wp_trash_meta_status', 'publish'),
(31, 11, '_wp_trash_meta_time', '1673749522'),
(32, 1, '_edit_lock', '1673824172:1'),
(34, 13, '_customize_changeset_uuid', 'ae85d4d0-e61f-4ee0-a4bb-b5f701f71785'),
(35, 14, '_edit_lock', '1673753097:1'),
(36, 16, '_menu_item_type', 'custom'),
(37, 16, '_menu_item_menu_item_parent', '0'),
(38, 16, '_menu_item_object_id', '16'),
(39, 16, '_menu_item_object', 'custom'),
(40, 16, '_menu_item_target', ''),
(41, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 16, '_menu_item_xfn', ''),
(43, 16, '_menu_item_url', '#home'),
(44, 17, '_menu_item_type', 'custom'),
(45, 17, '_menu_item_menu_item_parent', '0'),
(46, 17, '_menu_item_object_id', '17'),
(47, 17, '_menu_item_object', 'custom'),
(48, 17, '_menu_item_target', ''),
(49, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 17, '_menu_item_xfn', ''),
(51, 17, '_menu_item_url', '#offer'),
(52, 18, '_menu_item_type', 'custom'),
(53, 18, '_menu_item_menu_item_parent', '0'),
(54, 18, '_menu_item_object_id', '18'),
(55, 18, '_menu_item_object', 'custom'),
(56, 18, '_menu_item_target', ''),
(57, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 18, '_menu_item_xfn', ''),
(59, 18, '_menu_item_url', '#services'),
(60, 19, '_menu_item_type', 'custom'),
(61, 19, '_menu_item_menu_item_parent', '0'),
(62, 19, '_menu_item_object_id', '19'),
(63, 19, '_menu_item_object', 'custom'),
(64, 19, '_menu_item_target', ''),
(65, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 19, '_menu_item_xfn', ''),
(67, 19, '_menu_item_url', '#projects'),
(68, 20, '_menu_item_type', 'custom'),
(69, 20, '_menu_item_menu_item_parent', '0'),
(70, 20, '_menu_item_object_id', '20'),
(71, 20, '_menu_item_object', 'custom'),
(72, 20, '_menu_item_target', ''),
(73, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 20, '_menu_item_xfn', ''),
(75, 20, '_menu_item_url', '#contacts'),
(76, 14, '_wp_trash_meta_status', 'publish'),
(77, 14, '_wp_trash_meta_time', '1673753101'),
(78, 21, '_wp_trash_meta_status', 'publish'),
(79, 21, '_wp_trash_meta_time', '1673753244'),
(80, 13, '_edit_lock', '1673797901:1'),
(81, 13, '_wp_trash_meta_status', 'publish'),
(82, 13, '_wp_trash_meta_time', '1673798048'),
(83, 13, '_wp_desired_post_slug', 'dadad'),
(84, 22, '_edit_last', '1'),
(85, 22, '_edit_lock', '1673812458:1'),
(86, 7, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(87, 7, '_subtitle', 'Why Choose Us'),
(88, 7, 'hero_title', 'A Recognized Leader In Services Industry'),
(89, 7, '_hero_title', 'field_63c422f5b947b'),
(90, 27, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(91, 27, '_subtitle', 'field_63c422d7b947a'),
(92, 27, 'hero_title', 'A Recognized Leader In Services Industry'),
(93, 27, '_hero_title', 'field_63c422f5b947b'),
(94, 7, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(95, 7, '_hero_subtitle', 'field_63c422d7b947a'),
(96, 30, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(97, 30, '_subtitle', 'field_63c422d7b947a'),
(98, 30, 'hero_title', 'A Recognized Leader In Services Industry'),
(99, 30, '_hero_title', 'field_63c422f5b947b'),
(100, 30, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(101, 30, '_hero_subtitle', 'field_63c422d7b947a'),
(103, 32, '_menu_item_type', 'custom'),
(104, 32, '_menu_item_menu_item_parent', '0'),
(105, 32, '_menu_item_object_id', '32'),
(106, 32, '_menu_item_object', 'custom'),
(107, 32, '_menu_item_target', ''),
(108, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 32, '_menu_item_xfn', ''),
(110, 32, '_menu_item_url', 'http://instagram.com'),
(111, 32, '_menu_item_orphaned', '1673800222'),
(112, 33, '_menu_item_type', 'custom'),
(113, 33, '_menu_item_menu_item_parent', '0'),
(114, 33, '_menu_item_object_id', '33'),
(115, 33, '_menu_item_object', 'custom'),
(116, 33, '_menu_item_target', ''),
(117, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 33, '_menu_item_xfn', ''),
(119, 33, '_menu_item_url', 'http://instgram.com'),
(120, 33, '_menu_item_orphaned', '1673800334'),
(121, 34, '_menu_item_type', 'custom'),
(122, 34, '_menu_item_menu_item_parent', '0'),
(123, 34, '_menu_item_object_id', '34'),
(124, 34, '_menu_item_object', 'custom'),
(125, 34, '_menu_item_target', ''),
(126, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 34, '_menu_item_xfn', ''),
(128, 34, '_menu_item_url', 'http://instagram'),
(129, 34, '_menu_item_orphaned', '1673800685'),
(130, 35, '_menu_item_type', 'custom'),
(131, 35, '_menu_item_menu_item_parent', '0'),
(132, 35, '_menu_item_object_id', '35'),
(133, 35, '_menu_item_object', 'custom'),
(134, 35, '_menu_item_target', ''),
(135, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 35, '_menu_item_xfn', ''),
(137, 35, '_menu_item_url', 'http://instagram.com'),
(139, 35, 'menu-icons', 'a:8:{s:4:\"type\";s:2:\"fa\";s:4:\"icon\";s:16:\"fab fa-instagram\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.3\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(149, 37, '_menu_item_type', 'post_type'),
(150, 37, '_menu_item_menu_item_parent', '0'),
(151, 37, '_menu_item_object_id', '7'),
(152, 37, '_menu_item_object', 'page'),
(153, 37, '_menu_item_target', ''),
(154, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 37, '_menu_item_xfn', ''),
(156, 37, '_menu_item_url', ''),
(157, 37, '_menu_item_orphaned', '1673800932'),
(158, 31, '_customize_restore_dismissed', '1'),
(159, 38, '_wp_trash_meta_status', 'publish'),
(160, 38, '_wp_trash_meta_time', '1673800980'),
(161, 39, '_wp_trash_meta_status', 'publish'),
(162, 39, '_wp_trash_meta_time', '1673800988'),
(163, 40, '_wp_trash_meta_status', 'publish'),
(164, 40, '_wp_trash_meta_time', '1673805497'),
(165, 41, '_menu_item_type', 'custom'),
(166, 41, '_menu_item_menu_item_parent', '0'),
(167, 41, '_menu_item_object_id', '41'),
(168, 41, '_menu_item_object', 'custom'),
(169, 41, '_menu_item_target', ''),
(170, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 41, '_menu_item_xfn', ''),
(172, 41, '_menu_item_url', 'http://facebook.com'),
(174, 41, 'menu-icons', 'a:8:{s:4:\"type\";s:9:\"dashicons\";s:4:\"icon\";s:18:\"dashicons-facebook\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(175, 42, '_edit_last', '1'),
(176, 42, '_edit_lock', '1673812487:1'),
(177, 7, 'facebook_link', 'https://www.facebook.com/'),
(178, 7, '_facebook_link', 'field_63c44b9d7e2cd'),
(179, 7, 'twitter-link', 'https://twitter.com/home'),
(180, 7, '_twitter-link', 'field_63c44c237e2ce'),
(181, 7, 'pintereset-link', 'https://www.pinterest.com/'),
(182, 7, '_pintereset-link', 'field_63c44c767e2cf'),
(183, 7, 'instagram-link', 'https://www.instagram.com/'),
(184, 7, '_instagram-link', 'field_63c44c8d7e2d0'),
(185, 49, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(186, 49, '_subtitle', 'field_63c422d7b947a'),
(187, 49, 'hero_title', 'A Recognized Leader In Services Industry'),
(188, 49, '_hero_title', 'field_63c422f5b947b'),
(189, 49, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(190, 49, '_hero_subtitle', 'field_63c422d7b947a'),
(191, 49, 'facebook_link', 'https://www.facebook.com/'),
(192, 49, '_facebook_link', 'field_63c44b9d7e2cd'),
(193, 49, 'twitter-link', 'https://twitter.com/home'),
(194, 49, '_twitter-link', 'field_63c44c237e2ce'),
(195, 49, 'pintereset-link', 'https://www.pinterest.com/'),
(196, 49, '_pintereset-link', 'field_63c44c767e2cf'),
(197, 49, 'instagram-link', 'https://www.instagram.com/'),
(198, 49, '_instagram-link', 'field_63c44c8d7e2d0'),
(199, 50, '_edit_last', '1'),
(200, 50, '_edit_lock', '1673811755:1'),
(201, 7, 'contact-email_text', 'text'),
(202, 7, '_contact-email_text', 'field_63c4539475d95'),
(203, 7, 'contact-email_something', 'text'),
(204, 7, '_contact-email_something', 'field_63c453aa75d96'),
(205, 7, 'contact-email', ''),
(206, 7, '_contact-email', 'field_63c4535e75d94'),
(207, 54, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(208, 54, '_subtitle', 'field_63c422d7b947a'),
(209, 54, 'hero_title', 'A Recognized Leader In Services Industry'),
(210, 54, '_hero_title', 'field_63c422f5b947b'),
(211, 54, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(212, 54, '_hero_subtitle', 'field_63c422d7b947a'),
(213, 54, 'facebook_link', 'https://www.facebook.com/'),
(214, 54, '_facebook_link', 'field_63c44b9d7e2cd'),
(215, 54, 'twitter-link', 'https://twitter.com/home'),
(216, 54, '_twitter-link', 'field_63c44c237e2ce'),
(217, 54, 'pintereset-link', 'https://www.pinterest.com/'),
(218, 54, '_pintereset-link', 'field_63c44c767e2cf'),
(219, 54, 'instagram-link', 'https://www.instagram.com/'),
(220, 54, '_instagram-link', 'field_63c44c8d7e2d0'),
(221, 54, 'contact-email_text', 'text'),
(222, 54, '_contact-email_text', 'field_63c4539475d95'),
(223, 54, 'contact-email_something', 'text'),
(224, 54, '_contact-email_something', 'field_63c453aa75d96'),
(225, 54, 'contact-email', ''),
(226, 54, '_contact-email', 'field_63c4535e75d94'),
(227, 50, '_wp_trash_meta_status', 'publish'),
(228, 50, '_wp_trash_meta_time', '1673811906'),
(229, 50, '_wp_desired_post_slug', 'group_63c4535ea0740'),
(230, 51, '_wp_trash_meta_status', 'publish'),
(231, 51, '_wp_trash_meta_time', '1673811907'),
(232, 51, '_wp_desired_post_slug', 'field_63c4535e75d94'),
(233, 22, '_wp_trash_meta_status', 'publish'),
(234, 22, '_wp_trash_meta_time', '1673812637'),
(235, 22, '_wp_desired_post_slug', 'group_63c421adf35f2'),
(236, 23, '_wp_trash_meta_status', 'publish'),
(237, 23, '_wp_trash_meta_time', '1673812637'),
(238, 23, '_wp_desired_post_slug', 'field_63c421aea7a27'),
(239, 25, '_wp_trash_meta_status', 'publish'),
(240, 25, '_wp_trash_meta_time', '1673812638'),
(241, 25, '_wp_desired_post_slug', 'field_63c422d7b947a'),
(242, 26, '_wp_trash_meta_status', 'publish'),
(243, 26, '_wp_trash_meta_time', '1673812638'),
(244, 26, '_wp_desired_post_slug', 'field_63c422f5b947b'),
(245, 55, '_wp_trash_meta_status', 'publish'),
(246, 55, '_wp_trash_meta_time', '1673812638'),
(247, 55, '_wp_desired_post_slug', 'field_63c45954b80a4'),
(248, 57, '_wp_trash_meta_status', 'publish'),
(249, 57, '_wp_trash_meta_time', '1673812639'),
(250, 57, '_wp_desired_post_slug', 'field_63c45a37ef579'),
(251, 42, '_wp_trash_meta_status', 'publish'),
(252, 42, '_wp_trash_meta_time', '1673812639'),
(253, 42, '_wp_desired_post_slug', 'group_63c44b8444b8e'),
(254, 43, '_wp_trash_meta_status', 'publish'),
(255, 43, '_wp_trash_meta_time', '1673812639'),
(256, 43, '_wp_desired_post_slug', 'field_63c44b847e2cc'),
(257, 44, '_wp_trash_meta_status', 'publish'),
(258, 44, '_wp_trash_meta_time', '1673812639'),
(259, 44, '_wp_desired_post_slug', 'field_63c44b9d7e2cd'),
(260, 45, '_wp_trash_meta_status', 'publish'),
(261, 45, '_wp_trash_meta_time', '1673812640'),
(262, 45, '_wp_desired_post_slug', 'field_63c44c237e2ce'),
(263, 46, '_wp_trash_meta_status', 'publish'),
(264, 46, '_wp_trash_meta_time', '1673812641'),
(265, 46, '_wp_desired_post_slug', 'field_63c44c767e2cf'),
(266, 47, '_wp_trash_meta_status', 'publish'),
(267, 47, '_wp_trash_meta_time', '1673812641'),
(268, 47, '_wp_desired_post_slug', 'field_63c44c8d7e2d0'),
(269, 60, '_edit_last', '1'),
(270, 60, '_edit_lock', '1673918553:1'),
(271, 7, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(272, 7, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(273, 7, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(274, 7, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(275, 7, 'hero_section_info', ''),
(276, 7, '_hero_section_info', 'field_63c45ac773b99'),
(277, 65, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(278, 65, '_subtitle', 'field_63c422d7b947a'),
(279, 65, 'hero_title', 'A Recognized Leader In Services Industry'),
(280, 65, '_hero_title', 'field_63c422f5b947b'),
(281, 65, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(282, 65, '_hero_subtitle', 'field_63c422d7b947a'),
(283, 65, 'facebook_link', 'https://www.facebook.com/'),
(284, 65, '_facebook_link', 'field_63c44b9d7e2cd'),
(285, 65, 'twitter-link', 'https://twitter.com/home'),
(286, 65, '_twitter-link', 'field_63c44c237e2ce'),
(287, 65, 'pintereset-link', 'https://www.pinterest.com/'),
(288, 65, '_pintereset-link', 'field_63c44c767e2cf'),
(289, 65, 'instagram-link', 'https://www.instagram.com/'),
(290, 65, '_instagram-link', 'field_63c44c8d7e2d0'),
(291, 65, 'contact-email_text', 'text'),
(292, 65, '_contact-email_text', 'field_63c4539475d95'),
(293, 65, 'contact-email_something', 'text'),
(294, 65, '_contact-email_something', 'field_63c453aa75d96'),
(295, 65, 'contact-email', ''),
(296, 65, '_contact-email', 'field_63c4535e75d94'),
(297, 65, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(298, 65, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(299, 65, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(300, 65, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(301, 65, 'hero_section_info', ''),
(302, 65, '_hero_section_info', 'field_63c45ac773b99'),
(303, 7, 'provide__info_provide_title', 'We Provide Your Future'),
(304, 7, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(305, 7, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(306, 7, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(307, 7, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(308, 7, '_provide__info_provide_items', 'field_63c462d9fd540'),
(309, 7, 'provide__info', ''),
(310, 7, '_provide__info', 'field_63c45c5936b9c'),
(311, 73, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(312, 73, '_subtitle', 'field_63c422d7b947a'),
(313, 73, 'hero_title', 'A Recognized Leader In Services Industry'),
(314, 73, '_hero_title', 'field_63c422f5b947b'),
(315, 73, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(316, 73, '_hero_subtitle', 'field_63c422d7b947a'),
(317, 73, 'facebook_link', 'https://www.facebook.com/'),
(318, 73, '_facebook_link', 'field_63c44b9d7e2cd'),
(319, 73, 'twitter-link', 'https://twitter.com/home'),
(320, 73, '_twitter-link', 'field_63c44c237e2ce'),
(321, 73, 'pintereset-link', 'https://www.pinterest.com/'),
(322, 73, '_pintereset-link', 'field_63c44c767e2cf'),
(323, 73, 'instagram-link', 'https://www.instagram.com/'),
(324, 73, '_instagram-link', 'field_63c44c8d7e2d0'),
(325, 73, 'contact-email_text', 'text'),
(326, 73, '_contact-email_text', 'field_63c4539475d95'),
(327, 73, 'contact-email_something', 'text'),
(328, 73, '_contact-email_something', 'field_63c453aa75d96'),
(329, 73, 'contact-email', ''),
(330, 73, '_contact-email', 'field_63c4535e75d94'),
(331, 73, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(332, 73, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(333, 73, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(334, 73, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(335, 73, 'hero_section_info', ''),
(336, 73, '_hero_section_info', 'field_63c45ac773b99'),
(337, 73, 'provide__info_provide_title', 'We Provide Your Future'),
(338, 73, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(339, 73, 'provide__info_provide_text', 'Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.\r\nWe have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(340, 73, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(341, 73, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(342, 73, '_provide__info_provide_items', 'field_63c462d9fd540'),
(343, 73, 'provide__info', ''),
(344, 73, '_provide__info', 'field_63c45c5936b9c'),
(345, 75, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(346, 75, '_subtitle', 'field_63c422d7b947a'),
(347, 75, 'hero_title', 'A Recognized Leader In Services Industry'),
(348, 75, '_hero_title', 'field_63c422f5b947b'),
(349, 75, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(350, 75, '_hero_subtitle', 'field_63c422d7b947a'),
(351, 75, 'facebook_link', 'https://www.facebook.com/'),
(352, 75, '_facebook_link', 'field_63c44b9d7e2cd'),
(353, 75, 'twitter-link', 'https://twitter.com/home'),
(354, 75, '_twitter-link', 'field_63c44c237e2ce'),
(355, 75, 'pintereset-link', 'https://www.pinterest.com/'),
(356, 75, '_pintereset-link', 'field_63c44c767e2cf'),
(357, 75, 'instagram-link', 'https://www.instagram.com/'),
(358, 75, '_instagram-link', 'field_63c44c8d7e2d0'),
(359, 75, 'contact-email_text', 'text'),
(360, 75, '_contact-email_text', 'field_63c4539475d95'),
(361, 75, 'contact-email_something', 'text'),
(362, 75, '_contact-email_something', 'field_63c453aa75d96'),
(363, 75, 'contact-email', ''),
(364, 75, '_contact-email', 'field_63c4535e75d94'),
(365, 75, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(366, 75, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(367, 75, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(368, 75, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(369, 75, 'hero_section_info', ''),
(370, 75, '_hero_section_info', 'field_63c45ac773b99'),
(371, 75, 'provide__info_provide_title', 'We Provide Your Future'),
(372, 75, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(373, 75, 'provide__info_provide_text', 'Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.\r\nWe have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(374, 75, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(375, 75, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(376, 75, '_provide__info_provide_items', 'field_63c462d9fd540'),
(377, 75, 'provide__info', ''),
(378, 75, '_provide__info', 'field_63c45c5936b9c'),
(379, 7, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(380, 7, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(381, 76, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(382, 76, '_subtitle', 'field_63c422d7b947a'),
(383, 76, 'hero_title', 'A Recognized Leader In Services Industry'),
(384, 76, '_hero_title', 'field_63c422f5b947b'),
(385, 76, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(386, 76, '_hero_subtitle', 'field_63c422d7b947a'),
(387, 76, 'facebook_link', 'https://www.facebook.com/'),
(388, 76, '_facebook_link', 'field_63c44b9d7e2cd'),
(389, 76, 'twitter-link', 'https://twitter.com/home'),
(390, 76, '_twitter-link', 'field_63c44c237e2ce'),
(391, 76, 'pintereset-link', 'https://www.pinterest.com/'),
(392, 76, '_pintereset-link', 'field_63c44c767e2cf'),
(393, 76, 'instagram-link', 'https://www.instagram.com/'),
(394, 76, '_instagram-link', 'field_63c44c8d7e2d0'),
(395, 76, 'contact-email_text', 'text'),
(396, 76, '_contact-email_text', 'field_63c4539475d95'),
(397, 76, 'contact-email_something', 'text'),
(398, 76, '_contact-email_something', 'field_63c453aa75d96'),
(399, 76, 'contact-email', ''),
(400, 76, '_contact-email', 'field_63c4535e75d94'),
(401, 76, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(402, 76, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(403, 76, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(404, 76, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(405, 76, 'hero_section_info', ''),
(406, 76, '_hero_section_info', 'field_63c45ac773b99'),
(407, 76, 'provide__info_provide_title', 'We Provide Your Future'),
(408, 76, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(409, 76, 'provide__info_provide_text', '<p style=\"text-align: left;\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</p>\r\n<p style=\"text-align: left;\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</p>'),
(410, 76, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(411, 76, 'provide__info_provide_items', '<ul>\r\n 	<li>For all your system requirements</li>\r\n 	<li>All work undertaken by qualified</li>\r\n 	<li>Experienced office staff on hand</li>\r\n 	<li>A Full Guarantee On Workmanship</li>\r\n 	<li>Properties at a reasonable price.</li>\r\n</ul>'),
(412, 76, '_provide__info_provide_items', 'field_63c462d9fd540'),
(413, 76, 'provide__info', ''),
(414, 76, '_provide__info', 'field_63c45c5936b9c'),
(415, 76, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(416, 76, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(417, 77, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(418, 77, '_subtitle', 'field_63c422d7b947a'),
(419, 77, 'hero_title', 'A Recognized Leader In Services Industry'),
(420, 77, '_hero_title', 'field_63c422f5b947b'),
(421, 77, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(422, 77, '_hero_subtitle', 'field_63c422d7b947a'),
(423, 77, 'facebook_link', 'https://www.facebook.com/'),
(424, 77, '_facebook_link', 'field_63c44b9d7e2cd'),
(425, 77, 'twitter-link', 'https://twitter.com/home'),
(426, 77, '_twitter-link', 'field_63c44c237e2ce'),
(427, 77, 'pintereset-link', 'https://www.pinterest.com/'),
(428, 77, '_pintereset-link', 'field_63c44c767e2cf'),
(429, 77, 'instagram-link', 'https://www.instagram.com/'),
(430, 77, '_instagram-link', 'field_63c44c8d7e2d0'),
(431, 77, 'contact-email_text', 'text'),
(432, 77, '_contact-email_text', 'field_63c4539475d95'),
(433, 77, 'contact-email_something', 'text'),
(434, 77, '_contact-email_something', 'field_63c453aa75d96'),
(435, 77, 'contact-email', ''),
(436, 77, '_contact-email', 'field_63c4535e75d94'),
(437, 77, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(438, 77, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(439, 77, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(440, 77, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(441, 77, 'hero_section_info', ''),
(442, 77, '_hero_section_info', 'field_63c45ac773b99'),
(443, 77, 'provide__info_provide_title', 'We Provide Your Future'),
(444, 77, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(445, 77, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(446, 77, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(447, 77, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>\r\n'),
(448, 77, '_provide__info_provide_items', 'field_63c462d9fd540'),
(449, 77, 'provide__info', ''),
(450, 77, '_provide__info', 'field_63c45c5936b9c'),
(451, 77, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(452, 77, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(453, 79, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(454, 79, '_subtitle', 'field_63c422d7b947a'),
(455, 79, 'hero_title', 'A Recognized Leader In Services Industry'),
(456, 79, '_hero_title', 'field_63c422f5b947b'),
(457, 79, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(458, 79, '_hero_subtitle', 'field_63c422d7b947a'),
(459, 79, 'facebook_link', 'https://www.facebook.com/'),
(460, 79, '_facebook_link', 'field_63c44b9d7e2cd'),
(461, 79, 'twitter-link', 'https://twitter.com/home'),
(462, 79, '_twitter-link', 'field_63c44c237e2ce'),
(463, 79, 'pintereset-link', 'https://www.pinterest.com/'),
(464, 79, '_pintereset-link', 'field_63c44c767e2cf'),
(465, 79, 'instagram-link', 'https://www.instagram.com/'),
(466, 79, '_instagram-link', 'field_63c44c8d7e2d0'),
(467, 79, 'contact-email_text', 'text'),
(468, 79, '_contact-email_text', 'field_63c4539475d95'),
(469, 79, 'contact-email_something', 'text'),
(470, 79, '_contact-email_something', 'field_63c453aa75d96'),
(471, 79, 'contact-email', ''),
(472, 79, '_contact-email', 'field_63c4535e75d94'),
(473, 79, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(474, 79, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(475, 79, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(476, 79, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(477, 79, 'hero_section_info', ''),
(478, 79, '_hero_section_info', 'field_63c45ac773b99'),
(479, 79, 'provide__info_provide_title', 'We Provide Your Future'),
(480, 79, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(481, 79, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(482, 79, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(483, 79, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>\r\n'),
(484, 79, '_provide__info_provide_items', 'field_63c462d9fd540'),
(485, 79, 'provide__info', ''),
(486, 79, '_provide__info', 'field_63c45c5936b9c'),
(487, 79, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(488, 79, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(491, 7, 'provide__info_provide_image', '89'),
(492, 7, '_provide__info_provide_image', 'field_63c468622065a'),
(493, 81, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(494, 81, '_subtitle', 'field_63c422d7b947a'),
(495, 81, 'hero_title', 'A Recognized Leader In Services Industry'),
(496, 81, '_hero_title', 'field_63c422f5b947b'),
(497, 81, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(498, 81, '_hero_subtitle', 'field_63c422d7b947a'),
(499, 81, 'facebook_link', 'https://www.facebook.com/'),
(500, 81, '_facebook_link', 'field_63c44b9d7e2cd'),
(501, 81, 'twitter-link', 'https://twitter.com/home'),
(502, 81, '_twitter-link', 'field_63c44c237e2ce'),
(503, 81, 'pintereset-link', 'https://www.pinterest.com/'),
(504, 81, '_pintereset-link', 'field_63c44c767e2cf'),
(505, 81, 'instagram-link', 'https://www.instagram.com/'),
(506, 81, '_instagram-link', 'field_63c44c8d7e2d0'),
(507, 81, 'contact-email_text', 'text'),
(508, 81, '_contact-email_text', 'field_63c4539475d95'),
(509, 81, 'contact-email_something', 'text'),
(510, 81, '_contact-email_something', 'field_63c453aa75d96'),
(511, 81, 'contact-email', ''),
(512, 81, '_contact-email', 'field_63c4535e75d94'),
(513, 81, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(514, 81, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(515, 81, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(516, 81, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(517, 81, 'hero_section_info', ''),
(518, 81, '_hero_section_info', 'field_63c45ac773b99'),
(519, 81, 'provide__info_provide_title', 'We Provide Your Future'),
(520, 81, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(521, 81, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(522, 81, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(523, 81, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(524, 81, '_provide__info_provide_items', 'field_63c462d9fd540'),
(525, 81, 'provide__info', ''),
(526, 81, '_provide__info', 'field_63c45c5936b9c'),
(527, 81, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(528, 81, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(529, 81, 'provide__info_provide_image', '80'),
(530, 81, '_provide__info_provide_image', 'field_63c468622065a'),
(536, 83, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(537, 83, '_subtitle', 'field_63c422d7b947a'),
(538, 83, 'hero_title', 'A Recognized Leader In Services Industry'),
(539, 83, '_hero_title', 'field_63c422f5b947b'),
(540, 83, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(541, 83, '_hero_subtitle', 'field_63c422d7b947a'),
(542, 83, 'facebook_link', 'https://www.facebook.com/'),
(543, 83, '_facebook_link', 'field_63c44b9d7e2cd'),
(544, 83, 'twitter-link', 'https://twitter.com/home'),
(545, 83, '_twitter-link', 'field_63c44c237e2ce'),
(546, 83, 'pintereset-link', 'https://www.pinterest.com/'),
(547, 83, '_pintereset-link', 'field_63c44c767e2cf'),
(548, 83, 'instagram-link', 'https://www.instagram.com/'),
(549, 83, '_instagram-link', 'field_63c44c8d7e2d0'),
(550, 83, 'contact-email_text', 'text'),
(551, 83, '_contact-email_text', 'field_63c4539475d95'),
(552, 83, 'contact-email_something', 'text'),
(553, 83, '_contact-email_something', 'field_63c453aa75d96'),
(554, 83, 'contact-email', ''),
(555, 83, '_contact-email', 'field_63c4535e75d94'),
(556, 83, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(557, 83, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(558, 83, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(559, 83, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(560, 83, 'hero_section_info', ''),
(561, 83, '_hero_section_info', 'field_63c45ac773b99'),
(562, 83, 'provide__info_provide_title', 'We Provide Your Future'),
(563, 83, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(564, 83, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(565, 83, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(566, 83, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(567, 83, '_provide__info_provide_items', 'field_63c462d9fd540'),
(568, 83, 'provide__info', ''),
(569, 83, '_provide__info', 'field_63c45c5936b9c'),
(570, 83, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(571, 83, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(572, 83, 'provide__info_provide_image', '82'),
(573, 83, '_provide__info_provide_image', 'field_63c468622065a'),
(574, 84, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(575, 84, '_subtitle', 'field_63c422d7b947a'),
(576, 84, 'hero_title', 'A Recognized Leader In Services Industry'),
(577, 84, '_hero_title', 'field_63c422f5b947b'),
(578, 84, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(579, 84, '_hero_subtitle', 'field_63c422d7b947a'),
(580, 84, 'facebook_link', 'https://www.facebook.com/'),
(581, 84, '_facebook_link', 'field_63c44b9d7e2cd'),
(582, 84, 'twitter-link', 'https://twitter.com/home'),
(583, 84, '_twitter-link', 'field_63c44c237e2ce'),
(584, 84, 'pintereset-link', 'https://www.pinterest.com/'),
(585, 84, '_pintereset-link', 'field_63c44c767e2cf'),
(586, 84, 'instagram-link', 'https://www.instagram.com/'),
(587, 84, '_instagram-link', 'field_63c44c8d7e2d0'),
(588, 84, 'contact-email_text', 'text'),
(589, 84, '_contact-email_text', 'field_63c4539475d95'),
(590, 84, 'contact-email_something', 'text'),
(591, 84, '_contact-email_something', 'field_63c453aa75d96'),
(592, 84, 'contact-email', ''),
(593, 84, '_contact-email', 'field_63c4535e75d94'),
(594, 84, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(595, 84, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(596, 84, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(597, 84, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(598, 84, 'hero_section_info', ''),
(599, 84, '_hero_section_info', 'field_63c45ac773b99'),
(600, 84, 'provide__info_provide_title', 'We Provide Your Future'),
(601, 84, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(602, 84, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(603, 84, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(604, 84, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(605, 84, '_provide__info_provide_items', 'field_63c462d9fd540'),
(606, 84, 'provide__info', ''),
(607, 84, '_provide__info', 'field_63c45c5936b9c'),
(608, 84, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(609, 84, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(610, 84, 'provide__info_provide_image', '82'),
(611, 84, '_provide__info_provide_image', 'field_63c468622065a'),
(620, 89, '_wp_attached_file', '2023/01/welcome.jpg'),
(621, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:575;s:6:\"height\";i:582;s:4:\"file\";s:19:\"2023/01/welcome.jpg\";s:8:\"filesize\";i:43466;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(622, 90, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(623, 90, '_subtitle', 'field_63c422d7b947a'),
(624, 90, 'hero_title', 'A Recognized Leader In Services Industry'),
(625, 90, '_hero_title', 'field_63c422f5b947b'),
(626, 90, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(627, 90, '_hero_subtitle', 'field_63c422d7b947a'),
(628, 90, 'facebook_link', 'https://www.facebook.com/'),
(629, 90, '_facebook_link', 'field_63c44b9d7e2cd'),
(630, 90, 'twitter-link', 'https://twitter.com/home'),
(631, 90, '_twitter-link', 'field_63c44c237e2ce'),
(632, 90, 'pintereset-link', 'https://www.pinterest.com/'),
(633, 90, '_pintereset-link', 'field_63c44c767e2cf'),
(634, 90, 'instagram-link', 'https://www.instagram.com/'),
(635, 90, '_instagram-link', 'field_63c44c8d7e2d0'),
(636, 90, 'contact-email_text', 'text'),
(637, 90, '_contact-email_text', 'field_63c4539475d95'),
(638, 90, 'contact-email_something', 'text'),
(639, 90, '_contact-email_something', 'field_63c453aa75d96'),
(640, 90, 'contact-email', ''),
(641, 90, '_contact-email', 'field_63c4535e75d94'),
(642, 90, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(643, 90, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(644, 90, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(645, 90, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(646, 90, 'hero_section_info', ''),
(647, 90, '_hero_section_info', 'field_63c45ac773b99'),
(648, 90, 'provide__info_provide_title', 'We Provide Your Future'),
(649, 90, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(650, 90, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(651, 90, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(652, 90, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(653, 90, '_provide__info_provide_items', 'field_63c462d9fd540'),
(654, 90, 'provide__info', ''),
(655, 90, '_provide__info', 'field_63c45c5936b9c'),
(656, 90, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(657, 90, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(658, 90, 'provide__info_provide_image', '89'),
(659, 90, '_provide__info_provide_image', 'field_63c468622065a'),
(660, 100, '_wp_attached_file', '2023/01/commercal.jpg'),
(661, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:416;s:6:\"height\";i:366;s:4:\"file\";s:21:\"2023/01/commercal.jpg\";s:8:\"filesize\";i:19341;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(662, 7, 'offer_subtitle', 'What We Offer'),
(663, 7, '_offer_subtitle', 'field_63c4835327146'),
(664, 7, 'offer_title', 'Professional Main Services'),
(665, 7, '_offer_title', 'field_63c4836127147'),
(666, 7, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(667, 7, '_offer_text', 'field_63c4836c27148'),
(668, 7, 'offer_commercial_subtitle', 'Electrical installation'),
(669, 7, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(670, 7, 'offer_commercial_title', 'Commercial'),
(671, 7, '_offer_commercial_title', 'field_63c4837727149'),
(672, 7, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>'),
(673, 7, '_offer_commercial_text', 'field_63c485ce2714b'),
(674, 7, 'offer_commercial_image', '100'),
(675, 7, '_offer_commercial_image', 'field_63c485da2714c'),
(676, 7, 'offer', ''),
(677, 7, '_offer', 'field_63c4834127145'),
(678, 101, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(679, 101, '_subtitle', 'field_63c422d7b947a'),
(680, 101, 'hero_title', 'A Recognized Leader In Services Industry'),
(681, 101, '_hero_title', 'field_63c422f5b947b'),
(682, 101, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(683, 101, '_hero_subtitle', 'field_63c422d7b947a'),
(684, 101, 'facebook_link', 'https://www.facebook.com/'),
(685, 101, '_facebook_link', 'field_63c44b9d7e2cd'),
(686, 101, 'twitter-link', 'https://twitter.com/home'),
(687, 101, '_twitter-link', 'field_63c44c237e2ce'),
(688, 101, 'pintereset-link', 'https://www.pinterest.com/'),
(689, 101, '_pintereset-link', 'field_63c44c767e2cf'),
(690, 101, 'instagram-link', 'https://www.instagram.com/'),
(691, 101, '_instagram-link', 'field_63c44c8d7e2d0'),
(692, 101, 'contact-email_text', 'text'),
(693, 101, '_contact-email_text', 'field_63c4539475d95'),
(694, 101, 'contact-email_something', 'text'),
(695, 101, '_contact-email_something', 'field_63c453aa75d96'),
(696, 101, 'contact-email', ''),
(697, 101, '_contact-email', 'field_63c4535e75d94'),
(698, 101, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(699, 101, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(700, 101, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(701, 101, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(702, 101, 'hero_section_info', ''),
(703, 101, '_hero_section_info', 'field_63c45ac773b99'),
(704, 101, 'provide__info_provide_title', 'We Provide Your Future'),
(705, 101, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(706, 101, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(707, 101, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(708, 101, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(709, 101, '_provide__info_provide_items', 'field_63c462d9fd540'),
(710, 101, 'provide__info', ''),
(711, 101, '_provide__info', 'field_63c45c5936b9c'),
(712, 101, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(713, 101, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(714, 101, 'provide__info_provide_image', '89'),
(715, 101, '_provide__info_provide_image', 'field_63c468622065a'),
(716, 101, 'offer_subtitle', 'What We Offer'),
(717, 101, '_offer_subtitle', 'field_63c4835327146'),
(718, 101, 'offer_title', 'Professional Main Services'),
(719, 101, '_offer_title', 'field_63c4836127147'),
(720, 101, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(721, 101, '_offer_text', 'field_63c4836c27148'),
(722, 101, 'offer_commercial_subtitle', 'Electrical installation'),
(723, 101, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(724, 101, 'offer_commercial_title', 'Commercial'),
(725, 101, '_offer_commercial_title', 'field_63c4837727149');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(726, 101, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n&nbsp;\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n&nbsp;'),
(727, 101, '_offer_commercial_text', 'field_63c485ce2714b'),
(728, 101, 'offer_commercial_image', '100'),
(729, 101, '_offer_commercial_image', 'field_63c485da2714c'),
(730, 101, 'offer', ''),
(731, 101, '_offer', 'field_63c4834127145'),
(732, 102, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(733, 102, '_subtitle', 'field_63c422d7b947a'),
(734, 102, 'hero_title', 'A Recognized Leader In Services Industry'),
(735, 102, '_hero_title', 'field_63c422f5b947b'),
(736, 102, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(737, 102, '_hero_subtitle', 'field_63c422d7b947a'),
(738, 102, 'facebook_link', 'https://www.facebook.com/'),
(739, 102, '_facebook_link', 'field_63c44b9d7e2cd'),
(740, 102, 'twitter-link', 'https://twitter.com/home'),
(741, 102, '_twitter-link', 'field_63c44c237e2ce'),
(742, 102, 'pintereset-link', 'https://www.pinterest.com/'),
(743, 102, '_pintereset-link', 'field_63c44c767e2cf'),
(744, 102, 'instagram-link', 'https://www.instagram.com/'),
(745, 102, '_instagram-link', 'field_63c44c8d7e2d0'),
(746, 102, 'contact-email_text', 'text'),
(747, 102, '_contact-email_text', 'field_63c4539475d95'),
(748, 102, 'contact-email_something', 'text'),
(749, 102, '_contact-email_something', 'field_63c453aa75d96'),
(750, 102, 'contact-email', ''),
(751, 102, '_contact-email', 'field_63c4535e75d94'),
(752, 102, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(753, 102, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(754, 102, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(755, 102, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(756, 102, 'hero_section_info', ''),
(757, 102, '_hero_section_info', 'field_63c45ac773b99'),
(758, 102, 'provide__info_provide_title', 'We Provide Your Future'),
(759, 102, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(760, 102, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(761, 102, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(762, 102, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(763, 102, '_provide__info_provide_items', 'field_63c462d9fd540'),
(764, 102, 'provide__info', ''),
(765, 102, '_provide__info', 'field_63c45c5936b9c'),
(766, 102, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(767, 102, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(768, 102, 'provide__info_provide_image', '89'),
(769, 102, '_provide__info_provide_image', 'field_63c468622065a'),
(770, 102, 'offer_subtitle', 'What We Offer'),
(771, 102, '_offer_subtitle', 'field_63c4835327146'),
(772, 102, 'offer_title', 'Professional Main Services'),
(773, 102, '_offer_title', 'field_63c4836127147'),
(774, 102, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(775, 102, '_offer_text', 'field_63c4836c27148'),
(776, 102, 'offer_commercial_subtitle', 'Electrical installation'),
(777, 102, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(778, 102, 'offer_commercial_title', 'Commercial'),
(779, 102, '_offer_commercial_title', 'field_63c4837727149'),
(780, 102, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n&nbsp;\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n&nbsp;'),
(781, 102, '_offer_commercial_text', 'field_63c485ce2714b'),
(782, 102, 'offer_commercial_image', '100'),
(783, 102, '_offer_commercial_image', 'field_63c485da2714c'),
(784, 102, 'offer', ''),
(785, 102, '_offer', 'field_63c4834127145'),
(786, 103, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(787, 103, '_subtitle', 'field_63c422d7b947a'),
(788, 103, 'hero_title', 'A Recognized Leader In Services Industry'),
(789, 103, '_hero_title', 'field_63c422f5b947b'),
(790, 103, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(791, 103, '_hero_subtitle', 'field_63c422d7b947a'),
(792, 103, 'facebook_link', 'https://www.facebook.com/'),
(793, 103, '_facebook_link', 'field_63c44b9d7e2cd'),
(794, 103, 'twitter-link', 'https://twitter.com/home'),
(795, 103, '_twitter-link', 'field_63c44c237e2ce'),
(796, 103, 'pintereset-link', 'https://www.pinterest.com/'),
(797, 103, '_pintereset-link', 'field_63c44c767e2cf'),
(798, 103, 'instagram-link', 'https://www.instagram.com/'),
(799, 103, '_instagram-link', 'field_63c44c8d7e2d0'),
(800, 103, 'contact-email_text', 'text'),
(801, 103, '_contact-email_text', 'field_63c4539475d95'),
(802, 103, 'contact-email_something', 'text'),
(803, 103, '_contact-email_something', 'field_63c453aa75d96'),
(804, 103, 'contact-email', ''),
(805, 103, '_contact-email', 'field_63c4535e75d94'),
(806, 103, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(807, 103, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(808, 103, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(809, 103, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(810, 103, 'hero_section_info', ''),
(811, 103, '_hero_section_info', 'field_63c45ac773b99'),
(812, 103, 'provide__info_provide_title', 'We Provide Your Future'),
(813, 103, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(814, 103, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(815, 103, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(816, 103, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(817, 103, '_provide__info_provide_items', 'field_63c462d9fd540'),
(818, 103, 'provide__info', ''),
(819, 103, '_provide__info', 'field_63c45c5936b9c'),
(820, 103, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(821, 103, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(822, 103, 'provide__info_provide_image', '89'),
(823, 103, '_provide__info_provide_image', 'field_63c468622065a'),
(824, 103, 'offer_subtitle', 'What We Offer'),
(825, 103, '_offer_subtitle', 'field_63c4835327146'),
(826, 103, 'offer_title', 'Professional Main Services'),
(827, 103, '_offer_title', 'field_63c4836127147'),
(828, 103, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(829, 103, '_offer_text', 'field_63c4836c27148'),
(830, 103, 'offer_commercial_subtitle', 'Electrical installation'),
(831, 103, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(832, 103, 'offer_commercial_title', 'Commercial'),
(833, 103, '_offer_commercial_title', 'field_63c4837727149'),
(834, 103, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n&nbsp;'),
(835, 103, '_offer_commercial_text', 'field_63c485ce2714b'),
(836, 103, 'offer_commercial_image', '100'),
(837, 103, '_offer_commercial_image', 'field_63c485da2714c'),
(838, 103, 'offer', ''),
(839, 103, '_offer', 'field_63c4834127145'),
(840, 104, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(841, 104, '_subtitle', 'field_63c422d7b947a'),
(842, 104, 'hero_title', 'A Recognized Leader In Services Industry'),
(843, 104, '_hero_title', 'field_63c422f5b947b'),
(844, 104, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(845, 104, '_hero_subtitle', 'field_63c422d7b947a'),
(846, 104, 'facebook_link', 'https://www.facebook.com/'),
(847, 104, '_facebook_link', 'field_63c44b9d7e2cd'),
(848, 104, 'twitter-link', 'https://twitter.com/home'),
(849, 104, '_twitter-link', 'field_63c44c237e2ce'),
(850, 104, 'pintereset-link', 'https://www.pinterest.com/'),
(851, 104, '_pintereset-link', 'field_63c44c767e2cf'),
(852, 104, 'instagram-link', 'https://www.instagram.com/'),
(853, 104, '_instagram-link', 'field_63c44c8d7e2d0'),
(854, 104, 'contact-email_text', 'text'),
(855, 104, '_contact-email_text', 'field_63c4539475d95'),
(856, 104, 'contact-email_something', 'text'),
(857, 104, '_contact-email_something', 'field_63c453aa75d96'),
(858, 104, 'contact-email', ''),
(859, 104, '_contact-email', 'field_63c4535e75d94'),
(860, 104, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(861, 104, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(862, 104, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(863, 104, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(864, 104, 'hero_section_info', ''),
(865, 104, '_hero_section_info', 'field_63c45ac773b99'),
(866, 104, 'provide__info_provide_title', 'We Provide Your Future'),
(867, 104, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(868, 104, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(869, 104, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(870, 104, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(871, 104, '_provide__info_provide_items', 'field_63c462d9fd540'),
(872, 104, 'provide__info', ''),
(873, 104, '_provide__info', 'field_63c45c5936b9c'),
(874, 104, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(875, 104, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(876, 104, 'provide__info_provide_image', '89'),
(877, 104, '_provide__info_provide_image', 'field_63c468622065a'),
(878, 104, 'offer_subtitle', 'What We Offer'),
(879, 104, '_offer_subtitle', 'field_63c4835327146'),
(880, 104, 'offer_title', 'Professional Main Services'),
(881, 104, '_offer_title', 'field_63c4836127147'),
(882, 104, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(883, 104, '_offer_text', 'field_63c4836c27148'),
(884, 104, 'offer_commercial_subtitle', 'Electrical installation'),
(885, 104, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(886, 104, 'offer_commercial_title', 'Commercial'),
(887, 104, '_offer_commercial_title', 'field_63c4837727149'),
(888, 104, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n&nbsp;'),
(889, 104, '_offer_commercial_text', 'field_63c485ce2714b'),
(890, 104, 'offer_commercial_image', '100'),
(891, 104, '_offer_commercial_image', 'field_63c485da2714c'),
(892, 104, 'offer', ''),
(893, 104, '_offer', 'field_63c4834127145'),
(894, 1, '_wp_trash_meta_status', 'publish'),
(895, 1, '_wp_trash_meta_time', '1673824320'),
(896, 1, '_wp_desired_post_slug', 'hello-world'),
(897, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(898, 106, '_edit_last', '1'),
(899, 106, '_edit_lock', '1673829805:1'),
(900, 107, '_wp_attached_file', '2023/01/builder.svg'),
(901, 107, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:19:\"2023/01/builder.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"builder.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"builder.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"builder.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"builder.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"builder.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"builder.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(902, 107, 'fb_filesize', '7382'),
(903, 108, '_wp_attached_file', '2023/01/condition.svg'),
(904, 108, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:21:\"2023/01/condition.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"condition.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"condition.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"condition.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"condition.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"condition.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"condition.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(905, 108, 'fb_filesize', '5942'),
(906, 109, '_wp_attached_file', '2023/01/electrical.svg'),
(907, 109, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:22:\"2023/01/electrical.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"electrical.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"electrical.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"electrical.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"electrical.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"electrical.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"electrical.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(908, 109, 'fb_filesize', '3014'),
(909, 110, '_wp_attached_file', '2023/01/house.svg'),
(910, 110, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:17:\"2023/01/house.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"house.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"house.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"house.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"house.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"house.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"house.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(911, 110, 'fb_filesize', '4274'),
(912, 111, '_wp_attached_file', '2023/01/maintaince.svg'),
(913, 111, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:22:\"2023/01/maintaince.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"maintaince.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"maintaince.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"maintaince.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"maintaince.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"maintaince.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"maintaince.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(914, 111, 'fb_filesize', '10309'),
(915, 112, '_wp_attached_file', '2023/01/security.svg'),
(916, 112, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:20:\"2023/01/security.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:12:\"security.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"security.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"security.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"security.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"security.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"security.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(917, 112, 'fb_filesize', '8654'),
(918, 113, '_wp_attached_file', '2023/01/title-image.svg'),
(919, 113, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:22;s:6:\"height\";i:27;s:4:\"file\";s:23:\"2023/01/title-image.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:15:\"title-image.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"title-image.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"title-image.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"title-image.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"title-image.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"title-image.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(920, 113, 'fb_filesize', '1176'),
(921, 114, '_edit_last', '1'),
(922, 114, '_edit_lock', '1673829500:1'),
(923, 114, '_wp_trash_meta_status', 'publish'),
(924, 114, '_wp_trash_meta_time', '1673829872'),
(925, 114, '_wp_desired_post_slug', 'group_63c49ce270207'),
(926, 115, '_wp_trash_meta_status', 'publish'),
(927, 115, '_wp_trash_meta_time', '1673829872'),
(928, 115, '_wp_desired_post_slug', 'field_63c49ce269db7'),
(929, 106, '_thumbnail_id', '109'),
(930, 106, '_yoast_wpseo_content_score', '90'),
(931, 106, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(932, 106, '_yoast_wpseo_wordproof_timestamp', ''),
(933, 116, '_edit_last', '1'),
(934, 116, '_edit_lock', '1673829838:1'),
(935, 116, '_thumbnail_id', '108'),
(936, 116, '_yoast_wpseo_content_score', '90'),
(937, 116, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(938, 116, '_yoast_wpseo_wordproof_timestamp', ''),
(939, 117, '_edit_last', '1'),
(940, 117, '_edit_lock', '1673829857:1'),
(941, 117, '_thumbnail_id', '107'),
(942, 117, '_yoast_wpseo_content_score', '90'),
(943, 117, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(944, 117, '_yoast_wpseo_wordproof_timestamp', ''),
(945, 118, '_edit_last', '1'),
(946, 118, '_edit_lock', '1673829875:1'),
(947, 118, '_thumbnail_id', '112'),
(948, 118, '_yoast_wpseo_content_score', '90'),
(949, 118, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(950, 118, '_yoast_wpseo_wordproof_timestamp', ''),
(951, 119, '_edit_last', '1'),
(952, 119, '_edit_lock', '1673838969:1'),
(953, 119, '_thumbnail_id', '111'),
(954, 119, '_yoast_wpseo_content_score', '90'),
(955, 119, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(956, 119, '_yoast_wpseo_wordproof_timestamp', ''),
(957, 120, '_edit_last', '1'),
(958, 120, '_edit_lock', '1673920859:1'),
(959, 120, '_thumbnail_id', '110'),
(960, 120, '_yoast_wpseo_content_score', '90'),
(961, 120, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(962, 120, '_yoast_wpseo_wordproof_timestamp', ''),
(963, 7, 'services__info_subtitle', 'Area Of Service'),
(964, 7, '_services__info_subtitle', 'field_63c4a28855302'),
(965, 7, 'services__info_title', 'Our Services'),
(966, 7, '_services__info_title', 'field_63c4a29355303'),
(967, 7, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(968, 7, '_services__info_text', 'field_63c4a29e55304'),
(969, 7, 'services__info', ''),
(970, 7, '_services__info', 'field_63c4a27b55301'),
(971, 126, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(972, 126, '_subtitle', 'field_63c422d7b947a'),
(973, 126, 'hero_title', 'A Recognized Leader In Services Industry'),
(974, 126, '_hero_title', 'field_63c422f5b947b'),
(975, 126, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(976, 126, '_hero_subtitle', 'field_63c422d7b947a'),
(977, 126, 'facebook_link', 'https://www.facebook.com/'),
(978, 126, '_facebook_link', 'field_63c44b9d7e2cd'),
(979, 126, 'twitter-link', 'https://twitter.com/home'),
(980, 126, '_twitter-link', 'field_63c44c237e2ce'),
(981, 126, 'pintereset-link', 'https://www.pinterest.com/'),
(982, 126, '_pintereset-link', 'field_63c44c767e2cf'),
(983, 126, 'instagram-link', 'https://www.instagram.com/'),
(984, 126, '_instagram-link', 'field_63c44c8d7e2d0'),
(985, 126, 'contact-email_text', 'text'),
(986, 126, '_contact-email_text', 'field_63c4539475d95'),
(987, 126, 'contact-email_something', 'text'),
(988, 126, '_contact-email_something', 'field_63c453aa75d96'),
(989, 126, 'contact-email', ''),
(990, 126, '_contact-email', 'field_63c4535e75d94'),
(991, 126, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(992, 126, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(993, 126, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(994, 126, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(995, 126, 'hero_section_info', ''),
(996, 126, '_hero_section_info', 'field_63c45ac773b99'),
(997, 126, 'provide__info_provide_title', 'We Provide Your Future'),
(998, 126, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(999, 126, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(1000, 126, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(1001, 126, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(1002, 126, '_provide__info_provide_items', 'field_63c462d9fd540'),
(1003, 126, 'provide__info', ''),
(1004, 126, '_provide__info', 'field_63c45c5936b9c'),
(1005, 126, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(1006, 126, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(1007, 126, 'provide__info_provide_image', '89'),
(1008, 126, '_provide__info_provide_image', 'field_63c468622065a'),
(1009, 126, 'offer_subtitle', 'What We Offer'),
(1010, 126, '_offer_subtitle', 'field_63c4835327146'),
(1011, 126, 'offer_title', 'Professional Main Services'),
(1012, 126, '_offer_title', 'field_63c4836127147'),
(1013, 126, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(1014, 126, '_offer_text', 'field_63c4836c27148'),
(1015, 126, 'offer_commercial_subtitle', 'Electrical installation'),
(1016, 126, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(1017, 126, 'offer_commercial_title', 'Commercial'),
(1018, 126, '_offer_commercial_title', 'field_63c4837727149'),
(1019, 126, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>\r\n&nbsp;'),
(1020, 126, '_offer_commercial_text', 'field_63c485ce2714b'),
(1021, 126, 'offer_commercial_image', '100'),
(1022, 126, '_offer_commercial_image', 'field_63c485da2714c'),
(1023, 126, 'offer', ''),
(1024, 126, '_offer', 'field_63c4834127145'),
(1025, 126, 'services__info_subtitle', 'Area Of Service'),
(1026, 126, '_services__info_subtitle', 'field_63c4a28855302'),
(1027, 126, 'services__info_title', 'Our Services'),
(1028, 126, '_services__info_title', 'field_63c4a29355303'),
(1029, 126, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(1030, 126, '_services__info_text', 'field_63c4a29e55304'),
(1031, 126, 'services__info', ''),
(1032, 126, '_services__info', 'field_63c4a27b55301'),
(1033, 127, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1034, 127, '_subtitle', 'field_63c422d7b947a'),
(1035, 127, 'hero_title', 'A Recognized Leader In Services Industry'),
(1036, 127, '_hero_title', 'field_63c422f5b947b'),
(1037, 127, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1038, 127, '_hero_subtitle', 'field_63c422d7b947a'),
(1039, 127, 'facebook_link', 'https://www.facebook.com/'),
(1040, 127, '_facebook_link', 'field_63c44b9d7e2cd'),
(1041, 127, 'twitter-link', 'https://twitter.com/home'),
(1042, 127, '_twitter-link', 'field_63c44c237e2ce'),
(1043, 127, 'pintereset-link', 'https://www.pinterest.com/'),
(1044, 127, '_pintereset-link', 'field_63c44c767e2cf'),
(1045, 127, 'instagram-link', 'https://www.instagram.com/'),
(1046, 127, '_instagram-link', 'field_63c44c8d7e2d0'),
(1047, 127, 'contact-email_text', 'text'),
(1048, 127, '_contact-email_text', 'field_63c4539475d95'),
(1049, 127, 'contact-email_something', 'text'),
(1050, 127, '_contact-email_something', 'field_63c453aa75d96'),
(1051, 127, 'contact-email', ''),
(1052, 127, '_contact-email', 'field_63c4535e75d94'),
(1053, 127, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(1054, 127, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(1055, 127, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1056, 127, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(1057, 127, 'hero_section_info', ''),
(1058, 127, '_hero_section_info', 'field_63c45ac773b99'),
(1059, 127, 'provide__info_provide_title', 'We Provide Your Future'),
(1060, 127, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(1061, 127, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(1062, 127, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(1063, 127, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(1064, 127, '_provide__info_provide_items', 'field_63c462d9fd540'),
(1065, 127, 'provide__info', ''),
(1066, 127, '_provide__info', 'field_63c45c5936b9c'),
(1067, 127, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(1068, 127, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(1069, 127, 'provide__info_provide_image', '89'),
(1070, 127, '_provide__info_provide_image', 'field_63c468622065a'),
(1071, 127, 'offer_subtitle', 'What We Offer'),
(1072, 127, '_offer_subtitle', 'field_63c4835327146'),
(1073, 127, 'offer_title', 'Professional Main Services'),
(1074, 127, '_offer_title', 'field_63c4836127147'),
(1075, 127, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(1076, 127, '_offer_text', 'field_63c4836c27148'),
(1077, 127, 'offer_commercial_subtitle', 'Electrical installation'),
(1078, 127, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(1079, 127, 'offer_commercial_title', 'Commercial'),
(1080, 127, '_offer_commercial_title', 'field_63c4837727149'),
(1081, 127, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>'),
(1082, 127, '_offer_commercial_text', 'field_63c485ce2714b'),
(1083, 127, 'offer_commercial_image', '100'),
(1084, 127, '_offer_commercial_image', 'field_63c485da2714c'),
(1085, 127, 'offer', ''),
(1086, 127, '_offer', 'field_63c4834127145'),
(1087, 127, 'services__info_subtitle', 'Area Of Service'),
(1088, 127, '_services__info_subtitle', 'field_63c4a28855302'),
(1089, 127, 'services__info_title', 'Our Services'),
(1090, 127, '_services__info_title', 'field_63c4a29355303'),
(1091, 127, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(1092, 127, '_services__info_text', 'field_63c4a29e55304'),
(1093, 127, 'services__info', ''),
(1094, 127, '_services__info', 'field_63c4a27b55301'),
(1120, 136, '_wp_attached_file', '2023/01/project1.jpg'),
(1121, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:278;s:6:\"height\";i:334;s:4:\"file\";s:20:\"2023/01/project1.jpg\";s:8:\"filesize\";i:13096;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1122, 136, 'fb_filesize', '13096'),
(1123, 137, '_wp_attached_file', '2023/01/project2.jpg'),
(1124, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:278;s:6:\"height\";i:334;s:4:\"file\";s:20:\"2023/01/project2.jpg\";s:8:\"filesize\";i:16173;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1125, 137, 'fb_filesize', '16173'),
(1126, 138, '_wp_attached_file', '2023/01/project3.png'),
(1127, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:278;s:6:\"height\";i:334;s:4:\"file\";s:20:\"2023/01/project3.png\";s:8:\"filesize\";i:141674;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1128, 138, 'fb_filesize', '141674'),
(1129, 139, '_wp_attached_file', '2023/01/project4.png'),
(1130, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:278;s:6:\"height\";i:334;s:4:\"file\";s:20:\"2023/01/project4.png\";s:8:\"filesize\";i:173250;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1131, 139, 'fb_filesize', '173250'),
(1132, 142, '_edit_lock', '1673837799:1'),
(1133, 143, '_edit_last', '1'),
(1134, 143, '_edit_lock', '1673838198:1'),
(1135, 143, '_thumbnail_id', '136'),
(1136, 143, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(1137, 143, '_yoast_wpseo_wordproof_timestamp', ''),
(1138, 144, '_edit_last', '1'),
(1139, 144, '_edit_lock', '1673838192:1'),
(1140, 144, '_thumbnail_id', '137'),
(1141, 144, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(1142, 144, '_yoast_wpseo_wordproof_timestamp', ''),
(1143, 145, '_edit_last', '1'),
(1144, 145, '_edit_lock', '1673838220:1'),
(1145, 145, '_thumbnail_id', '138'),
(1146, 145, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(1147, 145, '_yoast_wpseo_wordproof_timestamp', ''),
(1148, 146, '_edit_last', '1'),
(1149, 146, '_edit_lock', '1673839367:1'),
(1150, 146, '_thumbnail_id', '139'),
(1151, 146, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(1152, 146, '_yoast_wpseo_wordproof_timestamp', ''),
(1153, 7, '__subtitle', 'field_63c5ef3c610dc'),
(1154, 7, '_title', 'Few Reasons Why You Should Choose Us'),
(1155, 7, '__title', 'field_63c5ef4c610dd'),
(1156, 7, '_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1157, 7, '__text', 'field_63c5ef53610de'),
(1158, 7, '_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1159, 7, '__projects_amount', 'field_63c5ef61610df'),
(1160, 7, '_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1161, 7, '__projects_arguments', 'field_63c5efa5610e0'),
(1162, 7, '_', 'field_63c5ef33610db'),
(1163, 154, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1164, 154, '_subtitle', 'Why Choose Us'),
(1165, 154, '__subtitle', 'field_63c5ef3c610dc'),
(1166, 154, 'hero_title', 'A Recognized Leader In Services Industry'),
(1167, 154, '_hero_title', 'field_63c422f5b947b'),
(1168, 154, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1169, 154, '_hero_subtitle', 'field_63c422d7b947a'),
(1170, 154, 'facebook_link', 'https://www.facebook.com/'),
(1171, 154, '_facebook_link', 'field_63c44b9d7e2cd'),
(1172, 154, 'twitter-link', 'https://twitter.com/home'),
(1173, 154, '_twitter-link', 'field_63c44c237e2ce'),
(1174, 154, 'pintereset-link', 'https://www.pinterest.com/'),
(1175, 154, '_pintereset-link', 'field_63c44c767e2cf'),
(1176, 154, 'instagram-link', 'https://www.instagram.com/'),
(1177, 154, '_instagram-link', 'field_63c44c8d7e2d0'),
(1178, 154, 'contact-email_text', 'text'),
(1179, 154, '_contact-email_text', 'field_63c4539475d95'),
(1180, 154, 'contact-email_something', 'text'),
(1181, 154, '_contact-email_something', 'field_63c453aa75d96'),
(1182, 154, 'contact-email', ''),
(1183, 154, '_contact-email', 'field_63c4535e75d94'),
(1184, 154, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(1185, 154, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(1186, 154, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1187, 154, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(1188, 154, 'hero_section_info', ''),
(1189, 154, '_hero_section_info', 'field_63c45ac773b99'),
(1190, 154, 'provide__info_provide_title', 'We Provide Your Future'),
(1191, 154, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(1192, 154, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(1193, 154, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(1194, 154, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(1195, 154, '_provide__info_provide_items', 'field_63c462d9fd540'),
(1196, 154, 'provide__info', ''),
(1197, 154, '_provide__info', 'field_63c45c5936b9c'),
(1198, 154, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(1199, 154, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(1200, 154, 'provide__info_provide_image', '89'),
(1201, 154, '_provide__info_provide_image', 'field_63c468622065a'),
(1202, 154, 'offer_subtitle', 'What We Offer'),
(1203, 154, '_offer_subtitle', 'field_63c4835327146'),
(1204, 154, 'offer_title', 'Professional Main Services'),
(1205, 154, '_offer_title', 'field_63c4836127147'),
(1206, 154, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(1207, 154, '_offer_text', 'field_63c4836c27148'),
(1208, 154, 'offer_commercial_subtitle', 'Electrical installation'),
(1209, 154, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(1210, 154, 'offer_commercial_title', 'Commercial'),
(1211, 154, '_offer_commercial_title', 'field_63c4837727149'),
(1212, 154, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>'),
(1213, 154, '_offer_commercial_text', 'field_63c485ce2714b'),
(1214, 154, 'offer_commercial_image', '100'),
(1215, 154, '_offer_commercial_image', 'field_63c485da2714c'),
(1216, 154, 'offer', ''),
(1217, 154, '_offer', 'field_63c4834127145'),
(1218, 154, 'services__info_subtitle', 'Area Of Service'),
(1219, 154, '_services__info_subtitle', 'field_63c4a28855302'),
(1220, 154, 'services__info_title', 'Our Services'),
(1221, 154, '_services__info_title', 'field_63c4a29355303'),
(1222, 154, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(1223, 154, '_services__info_text', 'field_63c4a29e55304'),
(1224, 154, 'services__info', ''),
(1225, 154, '_services__info', 'field_63c4a27b55301'),
(1226, 154, '_title', 'Few Reasons Why You Should Choose Us'),
(1227, 154, '__title', 'field_63c5ef4c610dd'),
(1228, 154, '_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1229, 154, '__text', 'field_63c5ef53610de'),
(1230, 154, '_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1231, 154, '__projects_amount', 'field_63c5ef61610df'),
(1232, 154, '_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1233, 154, '__projects_arguments', 'field_63c5efa5610e0'),
(1234, 7, 'why_we_subtitle', 'Why Choose Us');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1235, 7, '_why_we_subtitle', 'field_63c5ef3c610dc'),
(1236, 7, 'why_we_title', 'Few Reasons Why You Should Choose Us'),
(1237, 7, '_why_we_title', 'field_63c5ef4c610dd'),
(1238, 7, 'why_we_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1239, 7, '_why_we_text', 'field_63c5ef53610de'),
(1240, 7, 'why_we_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">3956</span></span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">854</span></span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">265</span></span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">845+</span></span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1241, 7, '_why_we_projects_amount', 'field_63c5ef61610df'),
(1242, 7, 'why_we_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1243, 7, '_why_we_projects_arguments', 'field_63c5efa5610e0'),
(1244, 7, 'why_we', ''),
(1245, 7, '_why_we', 'field_63c5ef33610db'),
(1246, 155, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1247, 155, '_subtitle', 'Why Choose Us'),
(1248, 155, '__subtitle', 'field_63c5ef3c610dc'),
(1249, 155, 'hero_title', 'A Recognized Leader In Services Industry'),
(1250, 155, '_hero_title', 'field_63c422f5b947b'),
(1251, 155, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1252, 155, '_hero_subtitle', 'field_63c422d7b947a'),
(1253, 155, 'facebook_link', 'https://www.facebook.com/'),
(1254, 155, '_facebook_link', 'field_63c44b9d7e2cd'),
(1255, 155, 'twitter-link', 'https://twitter.com/home'),
(1256, 155, '_twitter-link', 'field_63c44c237e2ce'),
(1257, 155, 'pintereset-link', 'https://www.pinterest.com/'),
(1258, 155, '_pintereset-link', 'field_63c44c767e2cf'),
(1259, 155, 'instagram-link', 'https://www.instagram.com/'),
(1260, 155, '_instagram-link', 'field_63c44c8d7e2d0'),
(1261, 155, 'contact-email_text', 'text'),
(1262, 155, '_contact-email_text', 'field_63c4539475d95'),
(1263, 155, 'contact-email_something', 'text'),
(1264, 155, '_contact-email_something', 'field_63c453aa75d96'),
(1265, 155, 'contact-email', ''),
(1266, 155, '_contact-email', 'field_63c4535e75d94'),
(1267, 155, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(1268, 155, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(1269, 155, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1270, 155, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(1271, 155, 'hero_section_info', ''),
(1272, 155, '_hero_section_info', 'field_63c45ac773b99'),
(1273, 155, 'provide__info_provide_title', 'We Provide Your Future'),
(1274, 155, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(1275, 155, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(1276, 155, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(1277, 155, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(1278, 155, '_provide__info_provide_items', 'field_63c462d9fd540'),
(1279, 155, 'provide__info', ''),
(1280, 155, '_provide__info', 'field_63c45c5936b9c'),
(1281, 155, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(1282, 155, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(1283, 155, 'provide__info_provide_image', '89'),
(1284, 155, '_provide__info_provide_image', 'field_63c468622065a'),
(1285, 155, 'offer_subtitle', 'What We Offer'),
(1286, 155, '_offer_subtitle', 'field_63c4835327146'),
(1287, 155, 'offer_title', 'Professional Main Services'),
(1288, 155, '_offer_title', 'field_63c4836127147'),
(1289, 155, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(1290, 155, '_offer_text', 'field_63c4836c27148'),
(1291, 155, 'offer_commercial_subtitle', 'Electrical installation'),
(1292, 155, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(1293, 155, 'offer_commercial_title', 'Commercial'),
(1294, 155, '_offer_commercial_title', 'field_63c4837727149'),
(1295, 155, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>'),
(1296, 155, '_offer_commercial_text', 'field_63c485ce2714b'),
(1297, 155, 'offer_commercial_image', '100'),
(1298, 155, '_offer_commercial_image', 'field_63c485da2714c'),
(1299, 155, 'offer', ''),
(1300, 155, '_offer', 'field_63c4834127145'),
(1301, 155, 'services__info_subtitle', 'Area Of Service'),
(1302, 155, '_services__info_subtitle', 'field_63c4a28855302'),
(1303, 155, 'services__info_title', 'Our Services'),
(1304, 155, '_services__info_title', 'field_63c4a29355303'),
(1305, 155, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(1306, 155, '_services__info_text', 'field_63c4a29e55304'),
(1307, 155, 'services__info', ''),
(1308, 155, '_services__info', 'field_63c4a27b55301'),
(1309, 155, '_title', 'Few Reasons Why You Should Choose Us'),
(1310, 155, '__title', 'field_63c5ef4c610dd'),
(1311, 155, '_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1312, 155, '__text', 'field_63c5ef53610de'),
(1313, 155, '_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1314, 155, '__projects_amount', 'field_63c5ef61610df'),
(1315, 155, '_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1316, 155, '__projects_arguments', 'field_63c5efa5610e0'),
(1317, 155, 'why_we_subtitle', 'Why Choose Us'),
(1318, 155, '_why_we_subtitle', 'field_63c5ef3c610dc'),
(1319, 155, 'why_we_title', 'Few Reasons Why You Should Choose Us'),
(1320, 155, '_why_we_title', 'field_63c5ef4c610dd'),
(1321, 155, 'why_we_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1322, 155, '_why_we_text', 'field_63c5ef53610de'),
(1323, 155, 'why_we_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1324, 155, '_why_we_projects_amount', 'field_63c5ef61610df'),
(1325, 155, 'why_we_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1326, 155, '_why_we_projects_arguments', 'field_63c5efa5610e0'),
(1327, 155, 'why_we', ''),
(1328, 155, '_why_we', 'field_63c5ef33610db'),
(1329, 156, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1330, 156, '_subtitle', 'Why Choose Us'),
(1331, 156, '__subtitle', 'field_63c5ef3c610dc'),
(1332, 156, 'hero_title', 'A Recognized Leader In Services Industry'),
(1333, 156, '_hero_title', 'field_63c422f5b947b'),
(1334, 156, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1335, 156, '_hero_subtitle', 'field_63c422d7b947a'),
(1336, 156, 'facebook_link', 'https://www.facebook.com/'),
(1337, 156, '_facebook_link', 'field_63c44b9d7e2cd'),
(1338, 156, 'twitter-link', 'https://twitter.com/home'),
(1339, 156, '_twitter-link', 'field_63c44c237e2ce'),
(1340, 156, 'pintereset-link', 'https://www.pinterest.com/'),
(1341, 156, '_pintereset-link', 'field_63c44c767e2cf'),
(1342, 156, 'instagram-link', 'https://www.instagram.com/'),
(1343, 156, '_instagram-link', 'field_63c44c8d7e2d0'),
(1344, 156, 'contact-email_text', 'text'),
(1345, 156, '_contact-email_text', 'field_63c4539475d95'),
(1346, 156, 'contact-email_something', 'text'),
(1347, 156, '_contact-email_something', 'field_63c453aa75d96'),
(1348, 156, 'contact-email', ''),
(1349, 156, '_contact-email', 'field_63c4535e75d94'),
(1350, 156, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(1351, 156, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(1352, 156, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1353, 156, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(1354, 156, 'hero_section_info', ''),
(1355, 156, '_hero_section_info', 'field_63c45ac773b99'),
(1356, 156, 'provide__info_provide_title', 'We Provide Your Future'),
(1357, 156, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(1358, 156, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(1359, 156, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(1360, 156, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(1361, 156, '_provide__info_provide_items', 'field_63c462d9fd540'),
(1362, 156, 'provide__info', ''),
(1363, 156, '_provide__info', 'field_63c45c5936b9c'),
(1364, 156, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(1365, 156, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(1366, 156, 'provide__info_provide_image', '89'),
(1367, 156, '_provide__info_provide_image', 'field_63c468622065a'),
(1368, 156, 'offer_subtitle', 'What We Offer'),
(1369, 156, '_offer_subtitle', 'field_63c4835327146'),
(1370, 156, 'offer_title', 'Professional Main Services'),
(1371, 156, '_offer_title', 'field_63c4836127147'),
(1372, 156, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(1373, 156, '_offer_text', 'field_63c4836c27148'),
(1374, 156, 'offer_commercial_subtitle', 'Electrical installation'),
(1375, 156, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(1376, 156, 'offer_commercial_title', 'Commercial'),
(1377, 156, '_offer_commercial_title', 'field_63c4837727149'),
(1378, 156, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>'),
(1379, 156, '_offer_commercial_text', 'field_63c485ce2714b'),
(1380, 156, 'offer_commercial_image', '100'),
(1381, 156, '_offer_commercial_image', 'field_63c485da2714c'),
(1382, 156, 'offer', ''),
(1383, 156, '_offer', 'field_63c4834127145'),
(1384, 156, 'services__info_subtitle', 'Area Of Service'),
(1385, 156, '_services__info_subtitle', 'field_63c4a28855302'),
(1386, 156, 'services__info_title', 'Our Services'),
(1387, 156, '_services__info_title', 'field_63c4a29355303'),
(1388, 156, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(1389, 156, '_services__info_text', 'field_63c4a29e55304'),
(1390, 156, 'services__info', ''),
(1391, 156, '_services__info', 'field_63c4a27b55301'),
(1392, 156, '_title', 'Few Reasons Why You Should Choose Us'),
(1393, 156, '__title', 'field_63c5ef4c610dd'),
(1394, 156, '_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1395, 156, '__text', 'field_63c5ef53610de'),
(1396, 156, '_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1397, 156, '__projects_amount', 'field_63c5ef61610df'),
(1398, 156, '_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1399, 156, '__projects_arguments', 'field_63c5efa5610e0'),
(1400, 156, 'why_we_subtitle', 'Why Choose Us'),
(1401, 156, '_why_we_subtitle', 'field_63c5ef3c610dc'),
(1402, 156, 'why_we_title', 'Few Reasons Why You Should Choose Us'),
(1403, 156, '_why_we_title', 'field_63c5ef4c610dd'),
(1404, 156, 'why_we_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1405, 156, '_why_we_text', 'field_63c5ef53610de'),
(1406, 156, 'why_we_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span></span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1407, 156, '_why_we_projects_amount', 'field_63c5ef61610df'),
(1408, 156, 'why_we_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1409, 156, '_why_we_projects_arguments', 'field_63c5efa5610e0'),
(1410, 156, 'why_we', ''),
(1411, 156, '_why_we', 'field_63c5ef33610db'),
(1412, 157, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1413, 157, '_subtitle', 'Why Choose Us'),
(1414, 157, '__subtitle', 'field_63c5ef3c610dc'),
(1415, 157, 'hero_title', 'A Recognized Leader In Services Industry'),
(1416, 157, '_hero_title', 'field_63c422f5b947b'),
(1417, 157, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1418, 157, '_hero_subtitle', 'field_63c422d7b947a'),
(1419, 157, 'facebook_link', 'https://www.facebook.com/'),
(1420, 157, '_facebook_link', 'field_63c44b9d7e2cd'),
(1421, 157, 'twitter-link', 'https://twitter.com/home'),
(1422, 157, '_twitter-link', 'field_63c44c237e2ce'),
(1423, 157, 'pintereset-link', 'https://www.pinterest.com/'),
(1424, 157, '_pintereset-link', 'field_63c44c767e2cf'),
(1425, 157, 'instagram-link', 'https://www.instagram.com/'),
(1426, 157, '_instagram-link', 'field_63c44c8d7e2d0'),
(1427, 157, 'contact-email_text', 'text'),
(1428, 157, '_contact-email_text', 'field_63c4539475d95'),
(1429, 157, 'contact-email_something', 'text'),
(1430, 157, '_contact-email_something', 'field_63c453aa75d96'),
(1431, 157, 'contact-email', ''),
(1432, 157, '_contact-email', 'field_63c4535e75d94'),
(1433, 157, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(1434, 157, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(1435, 157, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1436, 157, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(1437, 157, 'hero_section_info', ''),
(1438, 157, '_hero_section_info', 'field_63c45ac773b99'),
(1439, 157, 'provide__info_provide_title', 'We Provide Your Future'),
(1440, 157, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(1441, 157, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(1442, 157, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(1443, 157, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(1444, 157, '_provide__info_provide_items', 'field_63c462d9fd540'),
(1445, 157, 'provide__info', ''),
(1446, 157, '_provide__info', 'field_63c45c5936b9c'),
(1447, 157, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(1448, 157, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(1449, 157, 'provide__info_provide_image', '89'),
(1450, 157, '_provide__info_provide_image', 'field_63c468622065a'),
(1451, 157, 'offer_subtitle', 'What We Offer'),
(1452, 157, '_offer_subtitle', 'field_63c4835327146'),
(1453, 157, 'offer_title', 'Professional Main Services'),
(1454, 157, '_offer_title', 'field_63c4836127147'),
(1455, 157, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(1456, 157, '_offer_text', 'field_63c4836c27148'),
(1457, 157, 'offer_commercial_subtitle', 'Electrical installation'),
(1458, 157, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(1459, 157, 'offer_commercial_title', 'Commercial'),
(1460, 157, '_offer_commercial_title', 'field_63c4837727149'),
(1461, 157, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>'),
(1462, 157, '_offer_commercial_text', 'field_63c485ce2714b'),
(1463, 157, 'offer_commercial_image', '100'),
(1464, 157, '_offer_commercial_image', 'field_63c485da2714c'),
(1465, 157, 'offer', ''),
(1466, 157, '_offer', 'field_63c4834127145'),
(1467, 157, 'services__info_subtitle', 'Area Of Service'),
(1468, 157, '_services__info_subtitle', 'field_63c4a28855302'),
(1469, 157, 'services__info_title', 'Our Services'),
(1470, 157, '_services__info_title', 'field_63c4a29355303'),
(1471, 157, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(1472, 157, '_services__info_text', 'field_63c4a29e55304'),
(1473, 157, 'services__info', ''),
(1474, 157, '_services__info', 'field_63c4a27b55301'),
(1475, 157, '_title', 'Few Reasons Why You Should Choose Us'),
(1476, 157, '__title', 'field_63c5ef4c610dd'),
(1477, 157, '_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1478, 157, '__text', 'field_63c5ef53610de'),
(1479, 157, '_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1480, 157, '__projects_amount', 'field_63c5ef61610df'),
(1481, 157, '_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1482, 157, '__projects_arguments', 'field_63c5efa5610e0'),
(1483, 157, 'why_we_subtitle', 'Why Choose Us'),
(1484, 157, '_why_we_subtitle', 'field_63c5ef3c610dc'),
(1485, 157, 'why_we_title', 'Few Reasons Why You Should Choose Us'),
(1486, 157, '_why_we_title', 'field_63c5ef4c610dd'),
(1487, 157, 'why_we_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1488, 157, '_why_we_text', 'field_63c5ef53610de'),
(1489, 157, 'why_we_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">3956</span></span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1490, 157, '_why_we_projects_amount', 'field_63c5ef61610df'),
(1491, 157, 'why_we_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1492, 157, '_why_we_projects_arguments', 'field_63c5efa5610e0'),
(1493, 157, 'why_we', ''),
(1494, 157, '_why_we', 'field_63c5ef33610db'),
(1495, 158, 'subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1496, 158, '_subtitle', 'Why Choose Us'),
(1497, 158, '__subtitle', 'field_63c5ef3c610dc'),
(1498, 158, 'hero_title', 'A Recognized Leader In Services Industry'),
(1499, 158, '_hero_title', 'field_63c422f5b947b'),
(1500, 158, 'hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1501, 158, '_hero_subtitle', 'field_63c422d7b947a'),
(1502, 158, 'facebook_link', 'https://www.facebook.com/'),
(1503, 158, '_facebook_link', 'field_63c44b9d7e2cd'),
(1504, 158, 'twitter-link', 'https://twitter.com/home'),
(1505, 158, '_twitter-link', 'field_63c44c237e2ce'),
(1506, 158, 'pintereset-link', 'https://www.pinterest.com/'),
(1507, 158, '_pintereset-link', 'field_63c44c767e2cf'),
(1508, 158, 'instagram-link', 'https://www.instagram.com/'),
(1509, 158, '_instagram-link', 'field_63c44c8d7e2d0'),
(1510, 158, 'contact-email_text', 'text'),
(1511, 158, '_contact-email_text', 'field_63c4539475d95'),
(1512, 158, 'contact-email_something', 'text'),
(1513, 158, '_contact-email_something', 'field_63c453aa75d96'),
(1514, 158, 'contact-email', ''),
(1515, 158, '_contact-email', 'field_63c4535e75d94'),
(1516, 158, 'hero_section_info_hero_title', 'A Recognized Leader In Services Industry'),
(1517, 158, '_hero_section_info_hero_title', 'field_63c45af473b9a'),
(1518, 158, 'hero_section_info_hero_subtitle', 'Improve our customers’ lives by providing effective solutions.'),
(1519, 158, '_hero_section_info_hero_subtitle', 'field_63c45b0473b9b'),
(1520, 158, 'hero_section_info', ''),
(1521, 158, '_hero_section_info', 'field_63c45ac773b99'),
(1522, 158, 'provide__info_provide_title', 'We Provide Your Future'),
(1523, 158, '_provide__info_provide_title', 'field_63c45c6636b9d'),
(1524, 158, 'provide__info_provide_text', '<div class=\"welcome__paragraph\">Bluecollar Electrical services was established in 2008. We are trusted and reliable electricians who serve customers in the city as well as throughout United States Of America.</div>\r\n<div class=\"welcome__paragraph\">We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.</div>'),
(1525, 158, '_provide__info_provide_text', 'field_63c45c7836b9e'),
(1526, 158, 'provide__info_provide_items', '<ul class=\"welcome-statistics__list\">\r\n 	<li class=\"welcome-statistics__item\">For all your system requirements</li>\r\n 	<li class=\"welcome-statistics__item\">All work undertaken by qualified</li>\r\n 	<li class=\"welcome-statistics__item\">Experienced office staff on hand</li>\r\n 	<li class=\"welcome-statistics__item\">A Full Guarantee On Workmanship</li>\r\n 	<li class=\"welcome-statistics__item\">Properties at a reasonable price.</li>\r\n</ul>'),
(1527, 158, '_provide__info_provide_items', 'field_63c462d9fd540'),
(1528, 158, 'provide__info', ''),
(1529, 158, '_provide__info', 'field_63c45c5936b9c'),
(1530, 158, 'provide__info_provide_subtitle', 'Welcome BlueColla'),
(1531, 158, '_provide__info_provide_subtitle', 'field_63c46376cfc3c'),
(1532, 158, 'provide__info_provide_image', '89'),
(1533, 158, '_provide__info_provide_image', 'field_63c468622065a'),
(1534, 158, 'offer_subtitle', 'What We Offer'),
(1535, 158, '_offer_subtitle', 'field_63c4835327146'),
(1536, 158, 'offer_title', 'Professional Main Services'),
(1537, 158, '_offer_title', 'field_63c4836127147'),
(1538, 158, 'offer_text', 'We have extensive experience of domestic and business electrical installations and no job is too small. Our customers value our professionalism, work ethic and our competitive prices.'),
(1539, 158, '_offer_text', 'field_63c4836c27148'),
(1540, 158, 'offer_commercial_subtitle', 'Electrical installation'),
(1541, 158, '_offer_commercial_subtitle', 'field_63c485bf2714a'),
(1542, 158, 'offer_commercial_title', 'Commercial'),
(1543, 158, '_offer_commercial_title', 'field_63c4837727149'),
(1544, 158, 'offer_commercial_text', '<p class=\"commercal__text\">Electrical &amp; Maintenance Services Ltd offers a full range of electrical services to suit your needs – from moving a light switch to complete house rewires.</p>\r\n<p class=\"commercal__text\">In addition to providing fully qualified, competent electricians in and around London, the company also runs an electrical wholesale shop.</p>'),
(1545, 158, '_offer_commercial_text', 'field_63c485ce2714b'),
(1546, 158, 'offer_commercial_image', '100'),
(1547, 158, '_offer_commercial_image', 'field_63c485da2714c'),
(1548, 158, 'offer', ''),
(1549, 158, '_offer', 'field_63c4834127145'),
(1550, 158, 'services__info_subtitle', 'Area Of Service'),
(1551, 158, '_services__info_subtitle', 'field_63c4a28855302'),
(1552, 158, 'services__info_title', 'Our Services'),
(1553, 158, '_services__info_title', 'field_63c4a29355303'),
(1554, 158, 'services__info_text', 'We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.'),
(1555, 158, '_services__info_text', 'field_63c4a29e55304'),
(1556, 158, 'services__info', ''),
(1557, 158, '_services__info', 'field_63c4a27b55301'),
(1558, 158, '_title', 'Few Reasons Why You Should Choose Us'),
(1559, 158, '__title', 'field_63c5ef4c610dd'),
(1560, 158, '_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1561, 158, '__text', 'field_63c5ef53610de'),
(1562, 158, '_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n             <span class=\"why-stats__amount-number\">3956</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">854</span>\r\n        </span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number why-stats__amount-number-1\">265</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\">\r\n		<span class=\"why-stats__amount-number\">845+</span>\r\n	</span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1563, 158, '__projects_amount', 'field_63c5ef61610df'),
(1564, 158, '_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1565, 158, '__projects_arguments', 'field_63c5efa5610e0'),
(1566, 158, 'why_we_subtitle', 'Why Choose Us'),
(1567, 158, '_why_we_subtitle', 'field_63c5ef3c610dc'),
(1568, 158, 'why_we_title', 'Few Reasons Why You Should Choose Us'),
(1569, 158, '_why_we_title', 'field_63c5ef4c610dd'),
(1570, 158, 'why_we_text', 'We are offering the following information\'s about us that what we actually do in the electrical sector. To Improve our customers’ lives by providing creative and cost-effective solutions to their needs.'),
(1571, 158, '_why_we_text', 'field_63c5ef53610de'),
(1572, 158, 'why_we_projects_amount', '<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">3956</span></span>\r\n	<div class=\"why-stats__text\">Project Done</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">854</span></span>\r\n	<div class=\"why-stats__text\">People Working</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">265</span></span>\r\n	<div class=\"why-stats__text\">Business Partners</div>\r\n</div>\r\n<div class=\"why-stats__item\">\r\n	<span class=\"why-stats__amount\"><span class=\"why-stats__amount-number\">845+</span></span>\r\n	<div class=\"why-stats__text\">Happy Customers</div>\r\n</div>'),
(1573, 158, '_why_we_projects_amount', 'field_63c5ef61610df'),
(1574, 158, 'why_we_projects_arguments', '<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n       <h4 class=\"why-facts__title\">35 Years Experience</h4>\r\n       <p class=\"why-facts__text text\">\r\n        Effective communication is the key to success for any business. From our\r\n        office staff, to our field.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Excellence Certificate</h4>\r\n        <p class=\"why-facts__text text\">\r\n           We understand fully that your time is of extreme value. We are committed\r\n           to meeting deadlines.\r\n       </p>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"why-facts__item\">\r\n    <div class=\"why-facts__descr\">\r\n        <h4 class=\"why-facts__title\">Affordable Price</h4>\r\n         <p class=\"why-facts__text text\">\r\n         We adhere strictly to the current National Electrical Code, and we\r\n         conduct regular in-house sessions.\r\n         </p> \r\n    </div>\r\n</div>'),
(1575, 158, '_why_we_projects_arguments', 'field_63c5efa5610e0'),
(1576, 158, 'why_we', ''),
(1577, 158, '_why_we', 'field_63c5ef33610db'),
(1578, 139, '_edit_lock', '1673917912:1'),
(1579, 159, 'metagallery-title', 'clients'),
(1580, 159, 'metagallery-images', 'a:1:{i:0;a:8:{s:4:\"_uid\";i:1673919320925;s:6:\"height\";i:47;s:5:\"width\";i:148;s:5:\"title\";s:7:\"client1\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:2:{s:4:\"main\";a:4:{s:6:\"height\";i:47;s:5:\"width\";i:148;s:3:\"url\";s:65:\"http://localhost/wordpress/wp-content/uploads/2023/01/client1.svg\";s:11:\"orientation\";s:8:\"portrait\";}s:9:\"thumbnail\";a:4:{s:6:\"height\";s:3:\"150\";s:5:\"width\";s:3:\"150\";s:3:\"url\";s:65:\"http://localhost/wordpress/wp-content/uploads/2023/01/client1.svg\";s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:160;}}}'),
(1581, 159, 'metagallery-settings', 'a:4:{s:13:\"maxImageWidth\";i:600;s:13:\"minImageWidth\";i:315;s:17:\"percentImageWidth\";i:25;s:12:\"imageSpacing\";i:15;}'),
(1582, 160, '_wp_attached_file', '2023/01/client1.svg'),
(1583, 160, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:148;s:6:\"height\";i:47;s:4:\"file\";s:19:\"2023/01/client1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"client1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"client1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"client1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"client1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"client1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"client1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1584, 160, 'fb_filesize', '9355'),
(1585, 162, '_edit_last', '1'),
(1586, 162, '_edit_lock', '1673919256:1'),
(1587, 163, '_edit_last', '1'),
(1588, 163, '_edit_lock', '1673919184:1'),
(1589, 166, '_edit_last', '1'),
(1590, 166, '_edit_lock', '1673920721:1'),
(1591, 166, 'type', 'Per Visit Charge'),
(1592, 166, '_type', 'field_63c5fb2970ff5'),
(1593, 166, 'price', '$ 799.00'),
(1594, 166, '_price', 'field_63c5fb3a70ff6'),
(1595, 166, '_yoast_wpseo_content_score', '90'),
(1596, 166, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(1597, 166, '_yoast_wpseo_wordproof_timestamp', ''),
(1598, 167, '_edit_last', '1'),
(1599, 167, '_edit_lock', '1673920774:1'),
(1600, 167, 'type', 'Per Visit Charge'),
(1601, 167, '_type', 'field_63c5fb2970ff5'),
(1602, 167, 'price', '$ 699.00'),
(1603, 167, '_price', 'field_63c5fb3a70ff6'),
(1604, 167, '_yoast_wpseo_content_score', '90'),
(1605, 167, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(1606, 167, '_yoast_wpseo_wordproof_timestamp', ''),
(1607, 168, '_edit_last', '1'),
(1608, 168, 'type', 'Per Visit Charge'),
(1609, 168, '_type', 'field_63c5fb2970ff5'),
(1610, 168, 'price', '$ 599.00'),
(1611, 168, '_price', 'field_63c5fb3a70ff6'),
(1612, 168, '_yoast_wpseo_content_score', '90'),
(1613, 168, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(1614, 168, '_yoast_wpseo_wordproof_timestamp', ''),
(1615, 168, '_edit_lock', '1673919991:1'),
(1616, 170, '_form', '<div class=\"form__wrapper\">\n   [text* username class:form__input placeholder \"Your name\"]\n</div>\n<div class=\"form__wrapper\">\n   [email* email class:form__input placeholder \"Your email\"]\n</div>\n<div class=\"form__wrapper\">\n   [number* phone class:form__input placeholder \"Phone Number\"]\n</div>\n<div class=\"form__wrapper\">\n   [date* date class:form__input class:form__date placeholder \"Date\"]\n\n</div>\n<div class=\"form__wrapper\">\n   [textarea textarea-26 class:form__input class:form__textarea placeholder \"Service Description\"]\n</div>\n<div class=\"form__wrapper\">\n   [submit class:form__button \"Submit\"]\n</div>'),
(1617, 170, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <fominsartems947@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1618, 170, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <fominsartems947@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1619, 170, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(1620, 170, '_additional_settings', ''),
(1621, 170, '_locale', 'en_US'),
(1630, 170, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(1631, 171, '_edit_lock', '1673924706:1'),
(1632, 172, '_wp_attached_file', '2023/01/news1.jpg'),
(1633, 172, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:580;s:6:\"height\";i:364;s:4:\"file\";s:17:\"2023/01/news1.jpg\";s:8:\"filesize\";i:29959;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1634, 172, 'fb_filesize', '29959'),
(1635, 173, '_wp_attached_file', '2023/01/news2.jpg'),
(1636, 173, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:580;s:6:\"height\";i:364;s:4:\"file\";s:17:\"2023/01/news2.jpg\";s:8:\"filesize\";i:22188;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1637, 173, 'fb_filesize', '22188'),
(1640, 171, '_thumbnail_id', '173'),
(1641, 171, '_edit_last', '1'),
(1644, 171, '_yoast_wpseo_primary_category', '1'),
(1645, 171, '_yoast_wpseo_content_score', '90'),
(1646, 171, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(1647, 171, '_yoast_wpseo_wordproof_timestamp', ''),
(1648, 175, '_edit_lock', '1673924642:1'),
(1651, 175, '_thumbnail_id', '172'),
(1652, 175, '_edit_last', '1'),
(1655, 175, '_yoast_wpseo_primary_category', '1'),
(1656, 175, '_yoast_wpseo_content_score', '90'),
(1657, 175, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(1658, 175, '_yoast_wpseo_wordproof_timestamp', ''),
(1669, 171, '_pingme', '1'),
(1670, 171, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-01-14 19:44:35', '2023-01-14 19:44:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-01-15 23:12:00', '2023-01-15 23:12:00', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-01-14 19:44:35', '2023-01-14 19:44:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-01-15 01:57:40', '2023-01-15 01:57:40', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-01-14 19:44:35', '2023-01-14 19:44:35', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-01-15 01:57:40', '2023-01-15 01:57:40', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-01-14 19:48:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-01-14 19:48:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2023-01-15 01:57:40', '2023-01-15 01:57:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-01-15 01:57:40', '2023-01-15 01:57:40', '', 3, 'http://localhost/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2023-01-15 01:57:40', '2023-01-15 01:57:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-01-15 01:57:40', '2023-01-15 01:57:40', '', 2, 'http://localhost/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-01-15 02:06:18', '2023-01-15 02:06:18', '', 'BlueCollar', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-01-17 01:04:42', '2023-01-17 01:04:42', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(9, 1, '2023-01-15 02:06:18', '2023-01-15 02:06:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 02:06:18', '2023-01-15 02:06:18', '', 7, 'http://localhost/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-01-15 02:25:12', '2023-01-15 02:25:12', '', 'favicon-32x32', '', 'inherit', 'open', 'closed', '', 'favicon-32x32', '', '', '2023-01-15 02:25:12', '2023-01-15 02:25:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/favicon-32x32-2.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2023-01-15 02:25:22', '2023-01-15 02:25:22', '{\n    \"site_icon\": {\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 02:25:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'adf82b4a-87df-4778-81c9-882dfb6a5f16', '', '', '2023-01-15 02:25:22', '2023-01-15 02:25:22', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/adf82b4a-87df-4778-81c9-882dfb6a5f16/', 0, 'customize_changeset', '', 0),
(12, 1, '2023-01-15 02:26:04', '2023-01-15 02:26:04', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 02:26:04', '2023-01-15 02:26:04', '', 7, 'http://localhost/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-01-15 03:24:54', '2023-01-15 03:24:54', '', 'dadad', '', 'trash', 'closed', 'closed', '', 'dadad__trashed', '', '', '2023-01-15 15:54:08', '2023-01-15 15:54:08', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-01-15 03:24:54', '2023-01-15 03:24:54', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            13\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:21:47\"\n    },\n    \"nav_menu[-4158550278310101000]\": {\n        \"value\": {\n            \"name\": \"header menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:24:54\"\n    },\n    \"nav_menu_item[-411528055084754940]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:21:47\"\n    },\n    \"nav_menu_item[-7577630149673585000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:21:47\"\n    },\n    \"nav_menu_item[-5363711542987690000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:21:47\"\n    },\n    \"nav_menu_item[-3160635308382601000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:21:47\"\n    },\n    \"nav_menu_item[-5262521385653850000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:21:47\"\n    },\n    \"nav_menu_item[-7169671247476453000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"#home\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -4158550278310101000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:21:57\"\n    },\n    \"nav_menu_item[-6486927155235856000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"About us\",\n            \"url\": \"#offer\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"offer\",\n            \"nav_menu_term_id\": -4158550278310101000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:23:09\"\n    },\n    \"nav_menu_item[-7929312473346853000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Services\",\n            \"url\": \"#services\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"services\",\n            \"nav_menu_term_id\": -4158550278310101000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:23:09\"\n    },\n    \"nav_menu_item[-7426787243698678000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:23:09\"\n    },\n    \"nav_menu_item[-6779393967350489000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Projects\",\n            \"url\": \"#projects\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Projects\",\n            \"nav_menu_term_id\": -4158550278310101000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:24:26\"\n    },\n    \"nav_menu_item[-8874841783807336000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"Conctac Us\",\n            \"url\": \"#contacts\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Conctac Us\",\n            \"nav_menu_term_id\": -4158550278310101000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:24:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ae85d4d0-e61f-4ee0-a4bb-b5f701f71785', '', '', '2023-01-15 03:24:54', '2023-01-15 03:24:54', '', 0, 'http://localhost/wordpress/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2023-01-15 03:24:54', '2023-01-15 03:24:54', '', 'dadad', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-01-15 03:24:54', '2023-01-15 03:24:54', '', 13, 'http://localhost/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-01-15 03:52:31', '2023-01-15 03:24:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-01-15 03:52:31', '2023-01-15 03:52:31', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/home/', 1, 'nav_menu_item', '', 0),
(17, 1, '2023-01-15 03:52:31', '2023-01-15 03:24:57', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2023-01-15 03:52:31', '2023-01-15 03:52:31', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/about-us/', 2, 'nav_menu_item', '', 0),
(18, 1, '2023-01-15 03:52:31', '2023-01-15 03:24:58', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2023-01-15 03:52:31', '2023-01-15 03:52:31', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/services/', 3, 'nav_menu_item', '', 0),
(19, 1, '2023-01-15 03:52:31', '2023-01-15 03:24:59', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2023-01-15 03:52:31', '2023-01-15 03:52:31', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/projects/', 4, 'nav_menu_item', '', 0),
(20, 1, '2023-01-15 03:52:31', '2023-01-15 03:25:00', '', 'Conctact Us', '', 'publish', 'closed', 'closed', '', 'conctac-us', '', '', '2023-01-15 03:52:31', '2023-01-15 03:52:31', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/conctac-us/', 5, 'nav_menu_item', '', 0),
(21, 1, '2023-01-15 03:27:23', '2023-01-15 03:27:23', '{\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"header_menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 03:27:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b734c9c5-6ff7-41d8-bd5b-6859be50c03d', '', '', '2023-01-15 03:27:23', '2023-01-15 03:27:23', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/b734c9c5-6ff7-41d8-bd5b-6859be50c03d/', 0, 'customize_changeset', '', 0),
(22, 1, '2023-01-15 15:58:19', '2023-01-15 15:58:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'hero', 'hero', 'trash', 'closed', 'closed', '', 'group_63c421adf35f2__trashed', '', '', '2023-01-15 19:57:17', '2023-01-15 19:57:17', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2023-01-15 15:58:18', '2023-01-15 15:58:18', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'hero', '', 'trash', 'closed', 'closed', '', 'field_63c421aea7a27__trashed', '', '', '2023-01-15 19:57:17', '2023-01-15 19:57:17', '', 22, 'http://localhost/wordpress/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(25, 1, '2023-01-15 15:59:58', '2023-01-15 15:59:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"subtitle for hero section\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'subtitle', 'hero_subtitle', 'trash', 'closed', 'closed', '', 'field_63c422d7b947a__trashed', '', '', '2023-01-15 19:57:18', '2023-01-15 19:57:18', '', 22, 'http://localhost/wordpress/?post_type=acf-field&#038;p=25', 1, 'acf-field', '', 0),
(26, 1, '2023-01-15 15:59:59', '2023-01-15 15:59:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:22:\"title for hero_section\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'hero_title', 'trash', 'closed', 'closed', '', 'field_63c422f5b947b__trashed', '', '', '2023-01-15 19:57:18', '2023-01-15 19:57:18', '', 22, 'http://localhost/wordpress/?post_type=acf-field&#038;p=26', 2, 'acf-field', '', 0),
(27, 1, '2023-01-15 16:01:23', '2023-01-15 16:01:23', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 16:01:23', '2023-01-15 16:01:23', '', 7, 'http://localhost/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-01-15 16:12:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-15 16:12:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=28', 0, 'acf-field-group', '', 0),
(29, 1, '2023-01-15 16:12:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-15 16:12:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2023-01-15 16:15:13', '2023-01-15 16:15:13', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 16:15:13', '2023-01-15 16:15:13', '', 7, 'http://localhost/wordpress/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-01-15 16:18:12', '0000-00-00 00:00:00', '{\n    \"nav_menu[-7390685272147960000]\": {\n        \"value\": {\n            \"name\": \"Social\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 16:18:12\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1d39bd55-a7c7-44db-b7cd-f724383efa81', '', '', '2023-01-15 16:18:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2023-01-15 16:30:21', '0000-00-00 00:00:00', '', 'instagram', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-01-15 16:30:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2023-01-15 16:32:13', '0000-00-00 00:00:00', '', 'isntagram', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-01-15 16:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2023-01-15 16:38:04', '0000-00-00 00:00:00', '', 'instagram', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-01-15 16:38:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2023-01-15 18:24:06', '2023-01-15 16:39:48', '', 'instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2023-01-15 18:24:06', '2023-01-15 18:24:06', '', 0, 'http://localhost/wordpress/?p=35', 1, 'nav_menu_item', '', 0),
(37, 1, '2023-01-15 16:42:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-01-15 16:42:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2023-01-15 16:42:59', '2023-01-15 16:42:59', '{\n    \"BlueCollar::nav_menu_locations[header_menu]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 16:42:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ba96699-f549-4d14-af32-f0203219466d', '', '', '2023-01-15 16:42:59', '2023-01-15 16:42:59', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/2ba96699-f549-4d14-af32-f0203219466d/', 0, 'customize_changeset', '', 0),
(39, 1, '2023-01-15 16:43:08', '2023-01-15 16:43:08', '{\n    \"BlueCollar::nav_menu_locations[header_menu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 16:43:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd0fee4b3-dd01-4b3d-9874-6ed821083f1c', '', '', '2023-01-15 16:43:08', '2023-01-15 16:43:08', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/d0fee4b3-dd01-4b3d-9874-6ed821083f1c/', 0, 'customize_changeset', '', 0),
(40, 1, '2023-01-15 17:58:17', '2023-01-15 17:58:17', '{\n    \"BlueCollar::nav_menu_locations[header_socials]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-15 17:58:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e69fba45-4457-403c-859e-77408e3c0239', '', '', '2023-01-15 17:58:17', '2023-01-15 17:58:17', '', 0, 'http://localhost/wordpress/index.php/2023/01/15/e69fba45-4457-403c-859e-77408e3c0239/', 0, 'customize_changeset', '', 0),
(41, 1, '2023-01-15 18:24:07', '2023-01-15 18:24:07', '', 'facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2023-01-15 18:24:07', '2023-01-15 18:24:07', '', 0, 'http://localhost/wordpress/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2023-01-15 18:58:26', '2023-01-15 18:58:26', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'socials', 'socials', 'trash', 'closed', 'closed', '', 'group_63c44b8444b8e__trashed', '', '', '2023-01-15 19:57:19', '2023-01-15 19:57:19', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2023-01-15 18:58:24', '2023-01-15 18:58:24', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:1;}', 'socials', '', 'trash', 'closed', 'closed', '', 'field_63c44b847e2cc__trashed', '', '', '2023-01-15 19:57:19', '2023-01-15 19:57:19', '', 42, 'http://localhost/wordpress/?post_type=acf-field&#038;p=43', 0, 'acf-field', '', 0),
(44, 1, '2023-01-15 18:58:24', '2023-01-15 18:58:24', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"https://www.facebook.com/\";}', 'Link to facebook', 'facebook_link', 'trash', 'closed', 'closed', '', 'field_63c44b9d7e2cd__trashed', '', '', '2023-01-15 19:57:19', '2023-01-15 19:57:19', '', 42, 'http://localhost/wordpress/?post_type=acf-field&#038;p=44', 1, 'acf-field', '', 0),
(45, 1, '2023-01-15 18:58:25', '2023-01-15 18:58:25', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:24:\"https://twitter.com/home\";s:11:\"placeholder\";s:0:\"\";}', 'Link on twitter', 'twitter-link', 'trash', 'closed', 'closed', '', 'field_63c44c237e2ce__trashed', '', '', '2023-01-15 19:57:20', '2023-01-15 19:57:20', '', 42, 'http://localhost/wordpress/?post_type=acf-field&#038;p=45', 2, 'acf-field', '', 0),
(46, 1, '2023-01-15 18:58:25', '2023-01-15 18:58:25', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link to pinterest', 'pintereset-link', 'trash', 'closed', 'closed', '', 'field_63c44c767e2cf__trashed', '', '', '2023-01-15 19:57:21', '2023-01-15 19:57:21', '', 42, 'http://localhost/wordpress/?post_type=acf-field&#038;p=46', 3, 'acf-field', '', 0),
(47, 1, '2023-01-15 18:58:26', '2023-01-15 18:58:26', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:26:\"https://www.instagram.com/\";s:11:\"placeholder\";s:0:\"\";}', 'Link to instagram', 'instagram-link', 'trash', 'closed', 'closed', '', 'field_63c44c8d7e2d0__trashed', '', '', '2023-01-15 19:57:21', '2023-01-15 19:57:21', '', 42, 'http://localhost/wordpress/?post_type=acf-field&#038;p=47', 4, 'acf-field', '', 0),
(48, 1, '2023-01-15 19:08:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-15 19:08:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2023-01-15 19:12:45', '2023-01-15 19:12:45', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 19:12:45', '2023-01-15 19:12:45', '', 7, 'http://localhost/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-01-15 19:27:50', '2023-01-15 19:27:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'contacts', 'contacts', 'trash', 'closed', 'closed', '', 'group_63c4535ea0740__trashed', '', '', '2023-01-15 19:45:07', '2023-01-15 19:45:07', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2023-01-15 19:27:48', '2023-01-15 19:27:48', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'email', 'contact-email', 'trash', 'closed', 'closed', '', 'field_63c4535e75d94__trashed', '', '', '2023-01-15 19:45:07', '2023-01-15 19:45:07', '', 50, 'http://localhost/wordpress/?post_type=acf-field&#038;p=51', 0, 'acf-field', '', 0),
(52, 1, '2023-01-15 19:27:48', '2023-01-15 19:27:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_63c4539475d95', '', '', '2023-01-15 19:27:48', '2023-01-15 19:27:48', '', 51, 'http://localhost/wordpress/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2023-01-15 19:27:48', '2023-01-15 19:27:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'something', 'something', 'publish', 'closed', 'closed', '', 'field_63c453aa75d96', '', '', '2023-01-15 19:27:48', '2023-01-15 19:27:48', '', 51, 'http://localhost/wordpress/?post_type=acf-field&p=53', 1, 'acf-field', '', 0),
(54, 1, '2023-01-15 19:29:59', '2023-01-15 19:29:59', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 19:29:59', '2023-01-15 19:29:59', '', 7, 'http://localhost/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-01-15 19:53:37', '2023-01-15 19:53:37', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Provide', 'provide', 'trash', 'closed', 'closed', '', 'field_63c45954b80a4__trashed', '', '', '2023-01-15 19:57:18', '2023-01-15 19:57:18', '', 22, 'http://localhost/wordpress/?post_type=acf-field&#038;p=55', 3, 'acf-field', '', 0),
(56, 1, '2023-01-15 19:53:38', '2023-01-15 19:53:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:25:\"title for provide section\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'provide_title', 'publish', 'closed', 'closed', '', 'field_63c4599db80a5', '', '', '2023-01-15 19:53:38', '2023-01-15 19:53:38', '', 55, 'http://localhost/wordpress/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2023-01-15 19:56:20', '2023-01-15 19:56:20', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'provide', 'provide__info', 'trash', 'closed', 'closed', '', 'field_63c45a37ef579__trashed', '', '', '2023-01-15 19:57:19', '2023-01-15 19:57:19', '', 22, 'http://localhost/wordpress/?post_type=acf-field&#038;p=57', 4, 'acf-field', '', 0),
(58, 1, '2023-01-15 19:56:20', '2023-01-15 19:56:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'provide text', 'provide_text', 'publish', 'closed', 'closed', '', 'field_63c45a4aef57a', '', '', '2023-01-15 19:56:20', '2023-01-15 19:56:20', '', 57, 'http://localhost/wordpress/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2023-01-15 19:56:20', '2023-01-15 19:56:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'provide title', 'provide_title', 'publish', 'closed', 'closed', '', 'field_63c45a58ef57b', '', '', '2023-01-15 19:56:20', '2023-01-15 19:56:20', '', 57, 'http://localhost/wordpress/?post_type=acf-field&p=59', 1, 'acf-field', '', 0),
(60, 1, '2023-01-15 19:59:16', '2023-01-15 19:59:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_63c45ab1e7960', '', '', '2023-01-17 01:00:47', '2023-01-17 01:00:47', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2023-01-15 19:59:14', '2023-01-15 19:59:14', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'hero section', 'hero_section', 'publish', 'closed', 'closed', '', 'field_63c45ab273b98', '', '', '2023-01-15 20:08:59', '2023-01-15 20:08:59', '', 60, 'http://localhost/wordpress/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(62, 1, '2023-01-15 19:59:14', '2023-01-15 19:59:14', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', '', 'hero_section_info', 'publish', 'closed', 'closed', '', 'field_63c45ac773b99', '', '', '2023-01-15 20:09:00', '2023-01-15 20:09:00', '', 60, 'http://localhost/wordpress/?post_type=acf-field&#038;p=62', 1, 'acf-field', '', 0),
(63, 1, '2023-01-15 19:59:15', '2023-01-15 19:59:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'hero title', 'hero_title', 'publish', 'closed', 'closed', '', 'field_63c45af473b9a', '', '', '2023-01-15 19:59:15', '2023-01-15 19:59:15', '', 62, 'http://localhost/wordpress/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2023-01-15 19:59:15', '2023-01-15 19:59:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'hero subtitle', 'hero_subtitle', 'publish', 'closed', 'closed', '', 'field_63c45b0473b9b', '', '', '2023-01-15 19:59:15', '2023-01-15 19:59:15', '', 62, 'http://localhost/wordpress/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2023-01-15 20:00:04', '2023-01-15 20:00:04', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 20:00:04', '2023-01-15 20:00:04', '', 7, 'http://localhost/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-01-15 20:07:47', '2023-01-15 20:07:47', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Provide', 'provide', 'publish', 'closed', 'closed', '', 'field_63c45c4136b9b', '', '', '2023-01-15 20:17:55', '2023-01-15 20:17:55', '', 60, 'http://localhost/wordpress/?post_type=acf-field&#038;p=66', 2, 'acf-field', '', 0),
(67, 1, '2023-01-15 20:07:47', '2023-01-15 20:07:47', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', '', 'provide__info', 'publish', 'closed', 'closed', '', 'field_63c45c5936b9c', '', '', '2023-01-15 20:17:56', '2023-01-15 20:17:56', '', 60, 'http://localhost/wordpress/?post_type=acf-field&#038;p=67', 3, 'acf-field', '', 0),
(68, 1, '2023-01-15 20:07:48', '2023-01-15 20:07:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'provide title', 'provide_title', 'publish', 'closed', 'closed', '', 'field_63c45c6636b9d', '', '', '2023-01-15 20:35:42', '2023-01-15 20:35:42', '', 67, 'http://localhost/wordpress/?post_type=acf-field&#038;p=68', 1, 'acf-field', '', 0),
(69, 1, '2023-01-15 20:07:48', '2023-01-15 20:07:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'provide text', 'provide_text', 'publish', 'closed', 'closed', '', 'field_63c45c7836b9e', '', '', '2023-01-15 20:35:42', '2023-01-15 20:35:42', '', 67, 'http://localhost/wordpress/?post_type=acf-field&#038;p=69', 2, 'acf-field', '', 0),
(72, 1, '2023-01-15 20:32:52', '2023-01-15 20:32:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'provide items', 'provide_items', 'publish', 'closed', 'closed', '', 'field_63c462d9fd540', '', '', '2023-01-15 20:57:04', '2023-01-15 20:57:04', '', 67, 'http://localhost/wordpress/?post_type=acf-field&#038;p=72', 3, 'acf-field', '', 0),
(73, 1, '2023-01-15 20:34:50', '2023-01-15 20:34:50', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 20:34:50', '2023-01-15 20:34:50', '', 7, 'http://localhost/wordpress/?p=73', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(74, 1, '2023-01-15 20:35:41', '2023-01-15 20:35:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'provide subtitle', 'provide_subtitle', 'publish', 'closed', 'closed', '', 'field_63c46376cfc3c', '', '', '2023-01-15 20:57:02', '2023-01-15 20:57:02', '', 67, 'http://localhost/wordpress/?post_type=acf-field&#038;p=74', 0, 'acf-field', '', 0),
(75, 1, '2023-01-15 20:50:08', '2023-01-15 20:50:08', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 20:50:08', '2023-01-15 20:50:08', '', 7, 'http://localhost/wordpress/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-01-15 20:54:58', '2023-01-15 20:54:58', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 20:54:58', '2023-01-15 20:54:58', '', 7, 'http://localhost/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-01-15 20:55:46', '2023-01-15 20:55:46', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 20:55:46', '2023-01-15 20:55:46', '', 7, 'http://localhost/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-01-15 20:56:24', '2023-01-15 20:56:24', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'provide image', 'provide_image', 'publish', 'closed', 'closed', '', 'field_63c468622065a', '', '', '2023-01-15 20:57:04', '2023-01-15 20:57:04', '', 67, 'http://localhost/wordpress/?post_type=acf-field&#038;p=78', 4, 'acf-field', '', 0),
(79, 1, '2023-01-15 20:56:30', '2023-01-15 20:56:30', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 20:56:30', '2023-01-15 20:56:30', '', 7, 'http://localhost/wordpress/?p=79', 0, 'revision', '', 0),
(81, 1, '2023-01-15 20:58:03', '2023-01-15 20:58:03', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 20:58:03', '2023-01-15 20:58:03', '', 7, 'http://localhost/wordpress/?p=81', 0, 'revision', '', 0),
(83, 1, '2023-01-15 21:05:26', '2023-01-15 21:05:26', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 21:05:26', '2023-01-15 21:05:26', '', 7, 'http://localhost/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-01-15 21:06:25', '2023-01-15 21:06:25', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 21:06:25', '2023-01-15 21:06:25', '', 7, 'http://localhost/wordpress/?p=84', 0, 'revision', '', 0),
(89, 1, '2023-01-15 21:51:02', '2023-01-15 21:51:02', '', 'welcome', '', 'inherit', 'open', 'closed', '', 'welcome', '', '', '2023-01-15 21:51:02', '2023-01-15 21:51:02', '', 7, 'http://localhost/wordpress/wp-content/uploads/2023/01/welcome.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2023-01-15 21:51:10', '2023-01-15 21:51:10', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 21:51:10', '2023-01-15 21:51:10', '', 7, 'http://localhost/wordpress/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-01-15 23:02:29', '2023-01-15 23:02:29', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Offer', 'offer', 'publish', 'closed', 'closed', '', 'field_63c4833227144', '', '', '2023-01-15 23:02:29', '2023-01-15 23:02:29', '', 60, 'http://localhost/wordpress/?post_type=acf-field&p=91', 4, 'acf-field', '', 0),
(92, 1, '2023-01-15 23:02:30', '2023-01-15 23:02:30', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', '', 'offer', 'publish', 'closed', 'closed', '', 'field_63c4834127145', '', '', '2023-01-15 23:02:30', '2023-01-15 23:02:30', '', 60, 'http://localhost/wordpress/?post_type=acf-field&p=92', 5, 'acf-field', '', 0),
(93, 1, '2023-01-15 23:02:30', '2023-01-15 23:02:30', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_63c4835327146', '', '', '2023-01-15 23:02:30', '2023-01-15 23:02:30', '', 92, 'http://localhost/wordpress/?post_type=acf-field&p=93', 0, 'acf-field', '', 0),
(94, 1, '2023-01-15 23:02:31', '2023-01-15 23:02:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_63c4836127147', '', '', '2023-01-15 23:02:31', '2023-01-15 23:02:31', '', 92, 'http://localhost/wordpress/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2023-01-15 23:02:31', '2023-01-15 23:02:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_63c4836c27148', '', '', '2023-01-15 23:02:31', '2023-01-15 23:02:31', '', 92, 'http://localhost/wordpress/?post_type=acf-field&p=95', 2, 'acf-field', '', 0),
(96, 1, '2023-01-15 23:02:32', '2023-01-15 23:02:32', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'commercial subtitle', 'commercial_subtitle', 'publish', 'closed', 'closed', '', 'field_63c485bf2714a', '', '', '2023-01-15 23:10:02', '2023-01-15 23:10:02', '', 92, 'http://localhost/wordpress/?post_type=acf-field&#038;p=96', 3, 'acf-field', '', 0),
(97, 1, '2023-01-15 23:02:32', '2023-01-15 23:02:32', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'commercial title', 'commercial_title', 'publish', 'closed', 'closed', '', 'field_63c4837727149', '', '', '2023-01-15 23:02:32', '2023-01-15 23:02:32', '', 92, 'http://localhost/wordpress/?post_type=acf-field&p=97', 4, 'acf-field', '', 0),
(98, 1, '2023-01-15 23:02:32', '2023-01-15 23:02:32', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'commercial text', 'commercial_text', 'publish', 'closed', 'closed', '', 'field_63c485ce2714b', '', '', '2023-01-15 23:02:32', '2023-01-15 23:02:32', '', 92, 'http://localhost/wordpress/?post_type=acf-field&p=98', 5, 'acf-field', '', 0),
(99, 1, '2023-01-15 23:02:33', '2023-01-15 23:02:33', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'commercial image', 'commercial_image', 'publish', 'closed', 'closed', '', 'field_63c485da2714c', '', '', '2023-01-15 23:10:03', '2023-01-15 23:10:03', '', 92, 'http://localhost/wordpress/?post_type=acf-field&#038;p=99', 6, 'acf-field', '', 0),
(100, 1, '2023-01-15 23:05:10', '2023-01-15 23:05:10', '', 'commercal', '', 'inherit', 'open', 'closed', '', 'commercal', '', '', '2023-01-15 23:05:10', '2023-01-15 23:05:10', '', 7, 'http://localhost/wordpress/wp-content/uploads/2023/01/commercal.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2023-01-15 23:05:19', '2023-01-15 23:05:19', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 23:05:19', '2023-01-15 23:05:19', '', 7, 'http://localhost/wordpress/?p=101', 0, 'revision', '', 0),
(102, 1, '2023-01-15 23:08:51', '2023-01-15 23:08:51', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 23:08:51', '2023-01-15 23:08:51', '', 7, 'http://localhost/wordpress/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-01-15 23:09:08', '2023-01-15 23:09:08', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 23:09:08', '2023-01-15 23:09:08', '', 7, 'http://localhost/wordpress/?p=103', 0, 'revision', '', 0),
(104, 1, '2023-01-15 23:10:09', '2023-01-15 23:10:09', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-15 23:10:09', '2023-01-15 23:10:09', '', 7, 'http://localhost/wordpress/?p=104', 0, 'revision', '', 0),
(105, 1, '2023-01-15 23:12:00', '2023-01-15 23:12:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-01-15 23:12:00', '2023-01-15 23:12:00', '', 1, 'http://localhost/wordpress/?p=105', 0, 'revision', '', 0),
(106, 1, '2023-01-16 00:45:40', '2023-01-16 00:45:40', 'The art electrical installations that provide all the necessary electrical solutions to suit your business, home or industrial premises.', 'Electrical installation', '', 'publish', 'closed', 'closed', '', 'electrical-installation', '', '', '2023-01-16 00:45:40', '2023-01-16 00:45:40', '', 0, 'http://localhost/wordpress/?post_type=services&#038;p=106', 0, 'services', '', 0),
(107, 1, '2023-01-16 00:32:40', '2023-01-16 00:32:40', '', 'builder', '', 'inherit', 'open', 'closed', '', 'builder', '', '', '2023-01-16 00:32:40', '2023-01-16 00:32:40', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/01/builder.svg', 0, 'attachment', 'image/svg+xml', 0),
(108, 1, '2023-01-16 00:32:42', '2023-01-16 00:32:42', '', 'condition', '', 'inherit', 'open', 'closed', '', 'condition', '', '', '2023-01-16 00:32:42', '2023-01-16 00:32:42', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/01/condition.svg', 0, 'attachment', 'image/svg+xml', 0),
(109, 1, '2023-01-16 00:32:43', '2023-01-16 00:32:43', '', 'electrical', '', 'inherit', 'open', 'closed', '', 'electrical', '', '', '2023-01-16 00:32:43', '2023-01-16 00:32:43', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/01/electrical.svg', 0, 'attachment', 'image/svg+xml', 0),
(110, 1, '2023-01-16 00:32:44', '2023-01-16 00:32:44', '', 'house', '', 'inherit', 'open', 'closed', '', 'house', '', '', '2023-01-16 00:32:44', '2023-01-16 00:32:44', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/01/house.svg', 0, 'attachment', 'image/svg+xml', 0),
(111, 1, '2023-01-16 00:32:45', '2023-01-16 00:32:45', '', 'maintaince', '', 'inherit', 'open', 'closed', '', 'maintaince', '', '', '2023-01-16 00:32:45', '2023-01-16 00:32:45', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/01/maintaince.svg', 0, 'attachment', 'image/svg+xml', 0),
(112, 1, '2023-01-16 00:32:46', '2023-01-16 00:32:46', '', 'security', '', 'inherit', 'open', 'closed', '', 'security', '', '', '2023-01-16 00:32:46', '2023-01-16 00:32:46', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/01/security.svg', 0, 'attachment', 'image/svg+xml', 0),
(113, 1, '2023-01-16 00:32:47', '2023-01-16 00:32:47', '', 'title-image', '', 'inherit', 'open', 'closed', '', 'title-image', '', '', '2023-01-16 00:32:47', '2023-01-16 00:32:47', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/01/title-image.svg', 0, 'attachment', 'image/svg+xml', 0),
(114, 1, '2023-01-16 00:40:41', '2023-01-16 00:40:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'services', 'services', 'trash', 'closed', 'closed', '', 'group_63c49ce270207__trashed', '', '', '2023-01-16 00:44:32', '2023-01-16 00:44:32', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=114', 0, 'acf-field-group', '', 0),
(115, 1, '2023-01-16 00:40:40', '2023-01-16 00:40:40', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'image', 'image', 'trash', 'closed', 'closed', '', 'field_63c49ce269db7__trashed', '', '', '2023-01-16 00:44:32', '2023-01-16 00:44:32', '', 114, 'http://localhost/wordpress/?post_type=acf-field&#038;p=115', 0, 'acf-field', '', 0),
(116, 1, '2023-01-16 00:46:18', '2023-01-16 00:46:18', 'Services are able to service your entire electrical infrastructure from Thermal Imaging of your air condition from switch boards.', 'Air condition service', '', 'publish', 'closed', 'closed', '', 'air-condition-service', '', '', '2023-01-16 00:46:18', '2023-01-16 00:46:18', '', 0, 'http://localhost/wordpress/?post_type=services&#038;p=116', 0, 'services', '', 0),
(117, 1, '2023-01-16 00:46:36', '2023-01-16 00:46:36', 'We provide impeccable safety assessments to both commercial, residential properties. Our adept & knowledgeable electricians.', 'General Builder', '', 'publish', 'closed', 'closed', '', 'general-builder', '', '', '2023-01-16 00:46:36', '2023-01-16 00:46:36', '', 0, 'http://localhost/wordpress/?post_type=services&#038;p=117', 0, 'services', '', 0),
(118, 1, '2023-01-16 00:46:54', '2023-01-16 00:46:54', 'Utilized for measuring flow, temperature level & pressure in the manufacturing industry array of technology is ensure productivity.', 'Security System', '', 'publish', 'closed', 'closed', '', 'security-system', '', '', '2023-01-16 00:46:54', '2023-01-16 00:46:54', '', 0, 'http://localhost/wordpress/?post_type=services&#038;p=118', 0, 'services', '', 0),
(119, 1, '2023-01-16 00:47:12', '2023-01-16 00:47:12', 'Electrical Services are able to service your entire electrical infrastructure from Thermal Imaging of your switch boards.', 'Service & maintenance', '', 'publish', 'closed', 'closed', '', 'service-maintenance', '', '', '2023-01-16 00:47:12', '2023-01-16 00:47:12', '', 0, 'http://localhost/wordpress/?post_type=services&#038;p=119', 0, 'services', '', 0),
(120, 1, '2023-01-16 00:47:30', '2023-01-16 00:47:30', 'Traditionally, electricity is supplied through overhead network poles, where the cable is connected to your building.', 'House Extensions', '', 'publish', 'closed', 'closed', '', 'house-extensions', '', '', '2023-01-16 00:47:30', '2023-01-16 00:47:30', '', 0, 'http://localhost/wordpress/?post_type=services&#038;p=120', 0, 'services', '', 0),
(121, 1, '2023-01-16 01:04:40', '2023-01-16 01:04:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'services', 'services', 'publish', 'closed', 'closed', '', 'field_63c4a27155300', '', '', '2023-01-16 01:04:40', '2023-01-16 01:04:40', '', 60, 'http://localhost/wordpress/?post_type=acf-field&p=121', 6, 'acf-field', '', 0),
(122, 1, '2023-01-16 01:04:40', '2023-01-16 01:04:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', '', 'services__info', 'publish', 'closed', 'closed', '', 'field_63c4a27b55301', '', '', '2023-01-16 01:04:40', '2023-01-16 01:04:40', '', 60, 'http://localhost/wordpress/?post_type=acf-field&p=122', 7, 'acf-field', '', 0),
(123, 1, '2023-01-16 01:04:40', '2023-01-16 01:04:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_63c4a28855302', '', '', '2023-01-16 01:04:40', '2023-01-16 01:04:40', '', 122, 'http://localhost/wordpress/?post_type=acf-field&p=123', 0, 'acf-field', '', 0),
(124, 1, '2023-01-16 01:04:40', '2023-01-16 01:04:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_63c4a29355303', '', '', '2023-01-16 01:04:40', '2023-01-16 01:04:40', '', 122, 'http://localhost/wordpress/?post_type=acf-field&p=124', 1, 'acf-field', '', 0),
(125, 1, '2023-01-16 01:04:41', '2023-01-16 01:04:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_63c4a29e55304', '', '', '2023-01-16 01:04:41', '2023-01-16 01:04:41', '', 122, 'http://localhost/wordpress/?post_type=acf-field&p=125', 2, 'acf-field', '', 0),
(126, 1, '2023-01-16 01:05:11', '2023-01-16 01:05:11', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-16 01:05:11', '2023-01-16 01:05:11', '', 7, 'http://localhost/wordpress/?p=126', 0, 'revision', '', 0),
(127, 1, '2023-01-16 02:01:57', '2023-01-16 02:01:57', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-16 02:01:57', '2023-01-16 02:01:57', '', 7, 'http://localhost/wordpress/?p=127', 0, 'revision', '', 0),
(136, 1, '2023-01-16 02:54:10', '2023-01-16 02:54:10', '', 'project1', '', 'inherit', 'open', 'closed', '', 'project1', '', '', '2023-01-16 02:54:10', '2023-01-16 02:54:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/project1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2023-01-16 02:54:12', '2023-01-16 02:54:12', '', 'project2', '', 'inherit', 'open', 'closed', '', 'project2', '', '', '2023-01-16 02:54:12', '2023-01-16 02:54:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/project2.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2023-01-16 02:54:13', '2023-01-16 02:54:13', '', 'project3', '', 'inherit', 'open', 'closed', '', 'project3', '', '', '2023-01-16 02:54:13', '2023-01-16 02:54:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/project3.png', 0, 'attachment', 'image/png', 0),
(139, 1, '2023-01-16 02:54:15', '2023-01-16 02:54:15', '', 'project4', '', 'inherit', 'open', 'closed', '', 'project4', '', '', '2023-01-16 02:54:15', '2023-01-16 02:54:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/project4.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2023-01-16 02:54:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-16 02:54:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=projects&p=140', 0, 'projects', '', 0),
(141, 1, '2023-01-16 02:58:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-16 02:58:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=projects&p=141', 0, 'projects', '', 0),
(142, 1, '2023-01-16 02:58:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-01-16 02:58:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=142', 0, 'post', '', 0),
(143, 1, '2023-01-16 03:05:05', '2023-01-16 03:05:05', '', 'Fiber cable change', '', 'publish', 'closed', 'closed', '', 'fiber-cable-change', '', '', '2023-01-16 03:05:05', '2023-01-16 03:05:05', '', 0, 'http://localhost/wordpress/?post_type=projects&#038;p=143', 0, 'projects', '', 0),
(144, 1, '2023-01-16 03:05:32', '2023-01-16 03:05:32', '', 'Industry machine issue', '', 'publish', 'closed', 'closed', '', 'industry-machine-issue', '', '', '2023-01-16 03:05:32', '2023-01-16 03:05:32', '', 0, 'http://localhost/wordpress/?post_type=projects&#038;p=144', 0, 'projects', '', 0),
(145, 1, '2023-01-16 03:05:59', '2023-01-16 03:05:59', '', 'Wheel Alloy Change', '', 'publish', 'closed', 'closed', '', 'wheel-alloy-change', '', '', '2023-01-16 03:05:59', '2023-01-16 03:05:59', '', 0, 'http://localhost/wordpress/?post_type=projects&#038;p=145', 0, 'projects', '', 0),
(146, 1, '2023-01-16 03:06:20', '2023-01-16 03:06:20', '', 'Roof Cleaning', '', 'publish', 'closed', 'closed', '', 'roof-cleaning', '', '', '2023-01-16 03:06:20', '2023-01-16 03:06:20', '', 0, 'http://localhost/wordpress/?post_type=projects&#038;p=146', 0, 'projects', '', 0),
(147, 1, '2023-01-17 00:45:49', '2023-01-17 00:45:49', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'why we', 'why_we', 'publish', 'closed', 'closed', '', 'field_63c5ef24610da', '', '', '2023-01-17 00:45:49', '2023-01-17 00:45:49', '', 60, 'http://localhost/wordpress/?post_type=acf-field&p=147', 8, 'acf-field', '', 0),
(148, 1, '2023-01-17 00:45:50', '2023-01-17 00:45:50', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', '', 'why_we', 'publish', 'closed', 'closed', '', 'field_63c5ef33610db', '', '', '2023-01-17 01:00:47', '2023-01-17 01:00:47', '', 60, 'http://localhost/wordpress/?post_type=acf-field&#038;p=148', 9, 'acf-field', '', 0),
(149, 1, '2023-01-17 00:45:50', '2023-01-17 00:45:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_63c5ef3c610dc', '', '', '2023-01-17 00:45:50', '2023-01-17 00:45:50', '', 148, 'http://localhost/wordpress/?post_type=acf-field&p=149', 0, 'acf-field', '', 0),
(150, 1, '2023-01-17 00:45:51', '2023-01-17 00:45:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_63c5ef4c610dd', '', '', '2023-01-17 00:45:51', '2023-01-17 00:45:51', '', 148, 'http://localhost/wordpress/?post_type=acf-field&p=150', 1, 'acf-field', '', 0),
(151, 1, '2023-01-17 00:45:51', '2023-01-17 00:45:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_63c5ef53610de', '', '', '2023-01-17 00:45:51', '2023-01-17 00:45:51', '', 148, 'http://localhost/wordpress/?post_type=acf-field&p=151', 2, 'acf-field', '', 0),
(152, 1, '2023-01-17 00:45:51', '2023-01-17 00:45:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'projects amount', 'projects_amount', 'publish', 'closed', 'closed', '', 'field_63c5ef61610df', '', '', '2023-01-17 00:45:51', '2023-01-17 00:45:51', '', 148, 'http://localhost/wordpress/?post_type=acf-field&p=152', 3, 'acf-field', '', 0),
(153, 1, '2023-01-17 00:45:52', '2023-01-17 00:45:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'projects_arguments', 'projects_arguments', 'publish', 'closed', 'closed', '', 'field_63c5efa5610e0', '', '', '2023-01-17 00:45:52', '2023-01-17 00:45:52', '', 148, 'http://localhost/wordpress/?post_type=acf-field&p=153', 4, 'acf-field', '', 0),
(154, 1, '2023-01-17 01:00:38', '2023-01-17 01:00:38', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-17 01:00:38', '2023-01-17 01:00:38', '', 7, 'http://localhost/wordpress/?p=154', 0, 'revision', '', 0),
(155, 1, '2023-01-17 01:00:52', '2023-01-17 01:00:52', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-17 01:00:52', '2023-01-17 01:00:52', '', 7, 'http://localhost/wordpress/?p=155', 0, 'revision', '', 0),
(156, 1, '2023-01-17 01:03:40', '2023-01-17 01:03:40', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-17 01:03:40', '2023-01-17 01:03:40', '', 7, 'http://localhost/wordpress/?p=156', 0, 'revision', '', 0),
(157, 1, '2023-01-17 01:04:06', '2023-01-17 01:04:06', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-17 01:04:06', '2023-01-17 01:04:06', '', 7, 'http://localhost/wordpress/?p=157', 0, 'revision', '', 0),
(158, 1, '2023-01-17 01:04:42', '2023-01-17 01:04:42', '', 'BlueCollar', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-17 01:04:42', '2023-01-17 01:04:42', '', 7, 'http://localhost/wordpress/?p=158', 0, 'revision', '', 0),
(159, 1, '2023-01-17 01:19:45', '2023-01-17 01:19:45', '', '', '', 'publish', 'closed', 'closed', '', '159', '', '', '2023-01-17 01:20:07', '2023-01-17 01:20:07', '', 0, 'http://localhost/wordpress/?p=159', 0, 'metagallery', '', 0),
(160, 1, '2023-01-17 01:19:58', '2023-01-17 01:19:58', '', 'client1', '', 'inherit', 'open', 'closed', '', 'client1', '', '', '2023-01-17 01:19:58', '2023-01-17 01:19:58', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/01/client1.svg', 0, 'attachment', 'image/svg+xml', 0),
(161, 1, '2023-01-17 01:33:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-17 01:33:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=plans&p=161', 0, 'plans', '', 0),
(162, 1, '2023-01-17 01:34:16', '0000-00-00 00:00:00', '', 'Basic Plan', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-01-17 01:34:16', '2023-01-17 01:34:16', '', 0, 'http://localhost/wordpress/?post_type=projects&#038;p=162', 0, 'projects', '', 0),
(163, 1, '2023-01-17 01:35:23', '2023-01-17 01:35:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"plans\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'plans', 'plans', 'publish', 'closed', 'closed', '', 'group_63c5fb28f0666', '', '', '2023-01-17 01:35:23', '2023-01-17 01:35:23', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=163', 0, 'acf-field-group', '', 0),
(164, 1, '2023-01-17 01:35:22', '2023-01-17 01:35:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'type', 'type', 'publish', 'closed', 'closed', '', 'field_63c5fb2970ff5', '', '', '2023-01-17 01:35:22', '2023-01-17 01:35:22', '', 163, 'http://localhost/wordpress/?post_type=acf-field&p=164', 0, 'acf-field', '', 0),
(165, 1, '2023-01-17 01:35:23', '2023-01-17 01:35:23', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'price', 'price', 'publish', 'closed', 'closed', '', 'field_63c5fb3a70ff6', '', '', '2023-01-17 01:35:23', '2023-01-17 01:35:23', '', 163, 'http://localhost/wordpress/?post_type=acf-field&p=165', 1, 'acf-field', '', 0),
(166, 1, '2023-01-17 01:36:22', '2023-01-17 01:36:22', '<ul class=\"plans__list\">\r\n 	<li class=\"plans__item text\"><span>Cable Tray Installations</span></li>\r\n 	<li class=\"plans__item text\"><span>Wiring Upgrades</span></li>\r\n 	<li class=\"plans__item text\"><span>Energy Efficient Lighting</span></li>\r\n 	<li class=\"plans__item text\"><span>Emergency Generating</span></li>\r\n 	<li class=\"plans__item text\"><span>Pools And Hot Tubs</span></li>\r\n 	<li class=\"plans__item text\"><span>Air Conditioning Units</span></li>\r\n 	<li class=\"plans__item text\"><span>Generating Systems</span></li>\r\n</ul>', 'Professional', '', 'publish', 'closed', 'closed', '', 'basic-plan', '', '', '2023-01-17 01:49:02', '2023-01-17 01:49:02', '', 0, 'http://localhost/wordpress/?post_type=plans&#038;p=166', 0, 'plans', '', 0),
(167, 1, '2023-01-17 01:37:18', '2023-01-17 01:37:18', '<ul class=\"plans__list\">\r\n	<li class=\"plans__item text\">\r\n		<span>PLC Controls</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Conveyor systems</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Wiring renovations</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Electric Water Heater Repair</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Service And Panel Upgrades</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Efficient Lighting Solutions</span>\r\n	</li>\r\n</ul>', 'Standard', '', 'publish', 'closed', 'closed', '', 'standard', '', '', '2023-01-17 01:37:18', '2023-01-17 01:37:18', '', 0, 'http://localhost/wordpress/?post_type=plans&#038;p=167', 0, 'plans', '', 0),
(168, 1, '2023-01-17 01:37:46', '2023-01-17 01:37:46', '<ul class=\"plans__list\">\r\n	<li class=\"plans__item text\">\r\n		<span>Electrical Service</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Distribution Power Systems</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>High & Medium Voltages</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Industrial Control Systems</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Switch Installation</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Generator Installations</span>\r\n	</li>\r\n	<li class=\"plans__item text\">\r\n		<span>Innovative Construction</span>\r\n	</li>\r\n</ul>', 'Basic Plan', '', 'publish', 'closed', 'closed', '', 'professional', '', '', '2023-01-17 01:48:51', '2023-01-17 01:48:51', '', 0, 'http://localhost/wordpress/?post_type=plans&#038;p=168', 0, 'plans', '', 0),
(169, 1, '2023-01-17 01:42:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-17 01:42:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=plans&p=169', 0, 'plans', '', 0),
(170, 1, '2023-01-17 02:12:20', '2023-01-17 02:12:20', '<div class=\"form__wrapper\">\r\n   [text* username class:form__input placeholder \"Your name\"]\r\n</div>\r\n<div class=\"form__wrapper\">\r\n   [email* email class:form__input placeholder \"Your email\"]\r\n</div>\r\n<div class=\"form__wrapper\">\r\n   [number* phone class:form__input placeholder \"Phone Number\"]\r\n</div>\r\n<div class=\"form__wrapper\">\r\n   [date* date class:form__input class:form__date placeholder \"Date\"]\r\n\r\n</div>\r\n<div class=\"form__wrapper\">\r\n   [textarea textarea-26 class:form__input class:form__textarea placeholder \"Service Description\"]\r\n</div>\r\n<div class=\"form__wrapper\">\r\n   [submit class:form__button \"Submit\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <fominsartems947@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <fominsartems947@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-01-17 02:27:07', '2023-01-17 02:27:07', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=170', 0, 'wpcf7_contact_form', '', 0),
(171, 1, '2023-01-17 02:31:24', '2023-01-17 02:31:24', '<!-- wp:paragraph {\"className\":\"news__text text\"} -->\n<p class=\"news__text text\">Capitalize on low-hanging fruit to identify a ballpark value added matrix economically activity to beta test override the multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'How Outside Lighting can Transform Your Summer Garden', '', 'publish', 'closed', 'closed', '', 'how-outside-lighting-can-transform-your-summer-garden', '', '', '2023-01-17 03:04:21', '2023-01-17 03:04:21', '', 0, 'http://localhost/wordpress/?p=171', 0, 'post', '', 0),
(172, 1, '2023-01-17 02:30:54', '2023-01-17 02:30:54', '', 'news1', '', 'inherit', 'open', 'closed', '', 'news1', '', '', '2023-01-17 02:30:54', '2023-01-17 02:30:54', '', 171, 'http://localhost/wordpress/wp-content/uploads/2023/01/news1.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2023-01-17 02:30:57', '2023-01-17 02:30:57', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2', '', '', '2023-01-17 02:30:57', '2023-01-17 02:30:57', '', 171, 'http://localhost/wordpress/wp-content/uploads/2023/01/news2.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2023-01-17 02:31:24', '2023-01-17 02:31:24', '<!-- wp:paragraph -->\n<p>Capitalize on low-hanging fruit to identify a ballpark value added matrix economically activity to beta test override the multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'How Outside Lighting can Transform Your Summer Garden', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2023-01-17 02:31:24', '2023-01-17 02:31:24', '', 171, 'http://localhost/wordpress/?p=174', 0, 'revision', '', 0),
(175, 1, '2023-01-17 02:31:53', '2023-01-17 02:31:53', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#7e7e7e\"}},\"className\":\"news__text text\"} -->\n<p class=\"news__text text has-text-color\" style=\"color:#7e7e7e;font-size:17px\">Strategies on low-hanging fruit to identify a ballpark value added activity matrix economically to beta test override multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'Easy Energy Saving Solutions for Industrial Businesses', '', 'publish', 'open', 'open', '', 'easy-energy-saving-solutions-for-industrial-businesses', '', '', '2023-01-17 03:04:00', '2023-01-17 03:04:00', '', 0, 'http://localhost/wordpress/?p=175', 0, 'post', '', 0),
(176, 1, '2023-01-17 02:31:53', '2023-01-17 02:31:53', '<!-- wp:paragraph -->\n<p>Strategies on low-hanging fruit to identify a ballpark value added activity matrix economically to beta test override multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'Easy Energy Saving Solutions for Industrial Businesses', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-01-17 02:31:53', '2023-01-17 02:31:53', '', 175, 'http://localhost/wordpress/?p=176', 0, 'revision', '', 0),
(178, 1, '2023-01-17 03:02:11', '2023-01-17 03:02:11', '<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#e7e7e7\"}}} -->\n<p class=\"has-text-color\" style=\"color:#e7e7e7\">Strategies on low-hanging fruit to identify a ballpark value added activity matrix economically to beta test override multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'Easy Energy Saving Solutions for Industrial Businesses', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-01-17 03:02:11', '2023-01-17 03:02:11', '', 175, 'http://localhost/wordpress/?p=178', 0, 'revision', '', 0),
(179, 1, '2023-01-17 03:02:59', '2023-01-17 03:02:59', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#7e7e7e\"}}} -->\n<p class=\"has-text-color\" style=\"color:#7e7e7e;font-size:17px\">Strategies on low-hanging fruit to identify a ballpark value added activity matrix economically to beta test override multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'Easy Energy Saving Solutions for Industrial Businesses', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-01-17 03:02:59', '2023-01-17 03:02:59', '', 175, 'http://localhost/wordpress/?p=179', 0, 'revision', '', 0),
(180, 1, '2023-01-17 03:03:40', '2023-01-17 03:03:40', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#7e7e7e\"}},\"className\":\"news__text\"} -->\n<p class=\"news__text has-text-color\" style=\"color:#7e7e7e;font-size:17px\">Strategies on low-hanging fruit to identify a ballpark value added activity matrix economically to beta test override multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'Easy Energy Saving Solutions for Industrial Businesses', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-01-17 03:03:40', '2023-01-17 03:03:40', '', 175, 'http://localhost/wordpress/?p=180', 0, 'revision', '', 0),
(181, 1, '2023-01-17 03:03:57', '2023-01-17 03:03:57', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#7e7e7e\"}},\"className\":\"news__text text\"} -->\n<p class=\"news__text text has-text-color\" style=\"color:#7e7e7e;font-size:17px\">Strategies on low-hanging fruit to identify a ballpark value added activity matrix economically to beta test override multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'Easy Energy Saving Solutions for Industrial Businesses', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-01-17 03:03:57', '2023-01-17 03:03:57', '', 175, 'http://localhost/wordpress/?p=181', 0, 'revision', '', 0),
(182, 1, '2023-01-17 03:04:17', '2023-01-17 03:04:17', '<!-- wp:paragraph {\"className\":\"news__text text\"} -->\n<p class=\"news__text text\">Capitalize on low-hanging fruit to identify a ballpark value added matrix economically activity to beta test override the multiple touchpoints for offshoring the digital divide with DevOps. the digital divide with DevOps. the digital divide with DevOps.</p>\n<!-- /wp:paragraph -->', 'How Outside Lighting can Transform Your Summer Garden', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2023-01-17 03:04:17', '2023-01-17 03:04:17', '', 171, 'http://localhost/wordpress/?p=182', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shortpixel_folders`
--

CREATE TABLE `wp_shortpixel_folders` (
  `id` mediumint(9) NOT NULL,
  `path` varchar(512) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `path_md5` char(32) DEFAULT NULL,
  `file_count` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `ts_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ts_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shortpixel_meta`
--

CREATE TABLE `wp_shortpixel_meta` (
  `id` mediumint(10) NOT NULL,
  `folder_id` mediumint(9) NOT NULL,
  `ext_meta_id` int(10) DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `path_md5` char(32) DEFAULT NULL,
  `compressed_size` int(10) NOT NULL DEFAULT 0,
  `compression_type` tinyint(4) DEFAULT NULL,
  `keep_exif` tinyint(4) DEFAULT 0,
  `cmyk2rgb` tinyint(4) DEFAULT 0,
  `resize` tinyint(4) DEFAULT NULL,
  `resize_width` smallint(6) DEFAULT NULL,
  `resize_height` smallint(6) DEFAULT NULL,
  `backup` tinyint(4) DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `retries` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(255) DEFAULT NULL,
  `ts_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ts_optimized` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extra_info` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shortpixel_postmeta`
--

CREATE TABLE `wp_shortpixel_postmeta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attach_id` bigint(20) UNSIGNED NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL,
  `image_type` tinyint(4) DEFAULT 0,
  `size` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `compression_type` tinyint(4) DEFAULT NULL,
  `compressed_size` int(11) DEFAULT NULL,
  `original_size` int(11) DEFAULT NULL,
  `tsAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tsOptimized` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extra_info` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shortpixel_queue`
--

CREATE TABLE `wp_shortpixel_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue_name` varchar(30) NOT NULL,
  `plugin_slug` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `list_order` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_count` int(11) DEFAULT 1,
  `value` longtext NOT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_shortpixel_queue`
--

INSERT INTO `wp_shortpixel_queue` (`id`, `queue_name`, `plugin_slug`, `status`, `list_order`, `item_id`, `item_count`, `value`, `tries`, `created`, `updated`) VALUES
(19, 'media', 'SPIO', 2, 10, 173, 2, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/news2.jpg?ver=1673922657\"],\"paramlist\":[{\"convertto\":\"+webp\"}],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"news2.jpg\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":2,\"baseCount\":1,\"avifCount\":0,\"webpCount\":1}}}', 28, '2023-01-17 01:12:34', '2023-01-17 01:18:01'),
(20, 'media', 'SPIO', 2, 11, 172, 2, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/news1.jpg?ver=1673922654\"],\"paramlist\":[{\"convertto\":\"+webp\"}],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"news1.jpg\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":2,\"baseCount\":1,\"avifCount\":0,\"webpCount\":1}}}', 28, '2023-01-17 01:12:34', '2023-01-17 01:18:01'),
(21, 'media', 'SPIO', 2, 12, 139, 2, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/project4.png?ver=1673837655\"],\"paramlist\":[{\"convertto\":\"+webp\"}],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"project4.png\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":2,\"baseCount\":1,\"avifCount\":0,\"webpCount\":1}}}', 26, '2023-01-17 01:12:34', '2023-01-17 01:18:07'),
(22, 'media', 'SPIO', 2, 13, 138, 2, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/project3.png?ver=1673837653\"],\"paramlist\":[{\"convertto\":\"+webp\"}],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"project3.png\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":2,\"baseCount\":1,\"avifCount\":0,\"webpCount\":1}}}', 26, '2023-01-17 01:12:34', '2023-01-17 01:18:07'),
(23, 'media', 'SPIO', 0, 14, 137, 2, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/project2.jpg?ver=1673837652\"],\"paramlist\":[{\"convertto\":\"+webp\"}],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"project2.jpg\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":2,\"baseCount\":1,\"avifCount\":0,\"webpCount\":1}}}', 0, '2023-01-17 01:12:34', '2023-01-17 01:12:34'),
(24, 'media', 'SPIO', 0, 15, 136, 2, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/project1.jpg?ver=1673837650\"],\"paramlist\":[{\"convertto\":\"+webp\"}],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"project1.jpg\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":2,\"baseCount\":1,\"avifCount\":0,\"webpCount\":1}}}', 0, '2023-01-17 01:12:34', '2023-01-17 01:12:34'),
(25, 'media', 'SPIO', 0, 16, 100, 2, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/commercal.jpg?ver=1673823910\"],\"paramlist\":[{\"convertto\":\"+webp\"}],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"commercal.jpg\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":2,\"baseCount\":1,\"avifCount\":0,\"webpCount\":1}}}', 0, '2023-01-17 01:12:34', '2023-01-17 01:12:34'),
(26, 'media', 'SPIO', 0, 17, 89, 1, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/welcome.jpg?ver=1673819462\"],\"paramlist\":[[]],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"welcome.jpg\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":1,\"baseCount\":1,\"avifCount\":0,\"webpCount\":0}}}', 0, '2023-01-17 01:12:34', '2023-01-17 01:12:34'),
(27, 'media', 'SPIO', 0, 18, 10, 1, '{\"was_array\":false,\"value\":{\"compressionType\":\"1\",\"urls\":[\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2023\\/01\\/favicon-32x32-2.png?ver=1673749512\"],\"paramlist\":[[]],\"returndatalist\":{\"sizes\":{\"shortpixel_main_donotuse\":\"favicon-32x32-2.png\"},\"doubles\":[],\"duplicates\":[]},\"counts\":{\"creditCount\":1,\"baseCount\":1,\"avifCount\":0,\"webpCount\":0}}}', 0, '2023-01-17 01:12:34', '2023-01-17 01:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'header_menu', 'header_menu', 0),
(3, 'socials', 'socials', 0),
(4, 'Commercial', 'commercial', 0),
(5, 'Industry', 'industry', 0),
(6, 'Residential', 'residential', 0),
(7, 'Commercial', 'commercial', 0),
(8, 'Industry', 'industry', 0),
(9, 'Residential', 'residential', 0),
(10, 'popular', 'popular', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(35, 3, 0),
(41, 3, 0),
(143, 7, 0),
(144, 8, 0),
(145, 9, 0),
(146, 7, 0),
(167, 10, 0),
(171, 1, 0),
(175, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'post_tag', '', 0, 0),
(5, 5, 'post_tag', 'Industry tag', 0, 0),
(6, 6, 'post_tag', 'Residential tag', 0, 0),
(7, 7, 'project_type', 'Commercial tag', 0, 2),
(8, 8, 'project_type', 'Industry tag', 0, 1),
(9, 9, 'project_type', 'Residential tag', 0, 1),
(10, 10, 'plans-tag', 'popular tag', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Alex'),
(3, 1, 'last_name', 'Christin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c580b0b477f3bb93c911b50a338a8d974332cfd13d689f9fb985ba8e085ed3fd\";a:4:{s:10:\"expiration\";i:1673898493;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1673725693;}s:64:\"87fbaf575baf10701f676f107cefdb8c46ad79442614d85f409563163b69ab24\";a:4:{s:10:\"expiration\";i:1675007621;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1673798021;}}'),
(17, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=html&hidetb=1&editor_expand=on'),
(18, 1, 'wp_user-settings-time', '1673918692'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(21, 1, '_yoast_wpseo_profile_updated', '1673923554'),
(22, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:6:{i:0;s:14:\"featured-image\";i:1;s:11:\"post-status\";i:2;s:24:\"yoast-seo/document-panel\";i:3;s:23:\"taxonomy-panel-post_tag\";i:4;s:12:\"post-excerpt\";i:5;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2023-01-17T03:04:09.099Z\";}'),
(24, 1, '_yoast_alerts_dismissed', 'a:1:{s:26:\"webinar-promo-notification\";b:1;}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(29, 1, 'closedpostboxes_page', 'a:2:{i:0;s:10:\"wpseo_meta\";i:1;s:23:\"acf-group_63c44b8444b8e\";}'),
(30, 1, 'metaboxhidden_page', 'a:0:{}'),
(31, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(32, 1, 'metaboxhidden_acf-field-group', 'a:2:{i:0;s:28:\"acf-field-group-pro-features\";i:1;s:7:\"slugdiv\";}'),
(33, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:34:\"wpseo_meta,acf-group_63c45ab1e7960\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(34, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(35, 1, 'metaboxhidden_post', 'a:0:{}'),
(37, 1, 'wp_media_library_mode', 'list'),
(40, 1, 'closedpostboxes_services', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(41, 1, 'metaboxhidden_services', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(42, 1, 'meta-box-order_services', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:42:\"wpseo_meta,acf-group_63c49ce270207,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(43, 1, 'screen_layout_services', '2'),
(44, 1, 'closedpostboxes_projects', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(45, 1, 'metaboxhidden_projects', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(48, 1, 'closedpostboxes_plans', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(49, 1, 'metaboxhidden_plans', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(50, 2, 'nickname', 'test'),
(51, 2, 'first_name', 'Alex'),
(52, 2, 'last_name', 'Louis'),
(53, 2, 'description', ''),
(54, 2, 'rich_editing', 'true'),
(55, 2, 'syntax_highlighting', 'true'),
(56, 2, 'comment_shortcuts', 'false'),
(57, 2, 'admin_color', 'fresh'),
(58, 2, 'use_ssl', '0'),
(59, 2, 'show_admin_bar_front', 'true'),
(60, 2, 'locale', ''),
(61, 2, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(62, 2, 'wp_user_level', '2'),
(63, 2, '_yoast_wpseo_profile_updated', '1673920986'),
(64, 2, 'dismissed_wp_pointers', ''),
(65, 1, 'wpseo_title', ''),
(66, 1, 'wpseo_metadesc', ''),
(67, 1, 'wpseo_noindex_author', ''),
(68, 1, 'wpseo_content_analysis_disable', ''),
(69, 1, 'wpseo_keyword_analysis_disable', ''),
(70, 1, 'wpseo_inclusive_language_analysis_disable', ''),
(71, 1, 'facebook', ''),
(72, 1, 'instagram', ''),
(73, 1, 'linkedin', ''),
(74, 1, 'myspace', ''),
(75, 1, 'pinterest', ''),
(76, 1, 'soundcloud', ''),
(77, 1, 'tumblr', ''),
(78, 1, 'twitter', ''),
(79, 1, 'youtube', ''),
(80, 1, 'wikipedia', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BHC7z06I703C6dFtDYESp6qNSzrrET0', 'admin', 'fominsartems947@gmail.com', 'http://localhost/wordpress', '2023-01-14 19:44:33', '', 0, 'admin'),
(2, 'test', '$P$BZcYxkIIJBoKZSSiELT/RTa7U9gHvK1', 'test', 'test@test.com', '', '2023-01-17 02:03:05', '', 0, 'Alex Louis');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://localhost/wordpress/?page_id=3', '37:8974cd9472d7efb35f574c376af4e91c', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-15 01:49:11', '2023-01-16 22:40:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-15 01:57:40', '2023-01-14 19:44:35'),
(3, 'http://localhost/wordpress/?page_id=2', '37:627577ca9d10844ef70b63b8cd163bd2', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-01-15 01:49:11', '2023-01-16 22:40:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-15 01:57:40', '2023-01-14 19:44:35'),
(4, 'http://localhost/wordpress/?p=1', '31:f82dd86f53c7698254b48e4a1bf56d97', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-15 01:49:11', '2023-01-16 22:40:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-15 23:12:00', '2023-01-14 19:44:35'),
(5, 'http://localhost/wordpress/index.php/category/uncategorized/', '60:b5997c4459e78c774b37f1a9e1bfd68c', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-15 01:49:12', '2023-01-17 01:04:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-17 03:04:21', NULL),
(6, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-15 01:49:12', '2023-01-16 00:01:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(7, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-15 01:49:12', '2023-01-16 00:01:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(8, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-15 01:49:12', '2023-01-16 00:01:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(9, 'http://localhost/wordpress/', '27:f6ce664b63cd5429c9dfe0e29670b4df', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-01-15 01:49:12', '2023-01-17 01:04:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-17 03:04:21', NULL),
(10, 'http://localhost/wordpress/', '27:f6ce664b63cd5429c9dfe0e29670b4df', 7, 'post', 'page', 1, 0, '%%sitename%%', 'Provision of electrical work in residential and commercial premises. We offers a comprehensive range of electrical services for domestic and commercial properties at a reasonable price.', 'BlueCollar', 'publish', NULL, 0, NULL, NULL, NULL, 'electrical installations services air condition general builder house extensions', 22, 0, 0, NULL, 0, NULL, NULL, NULL, 'Blue Collar', '', 'bla bla bla bla', '8', 'set-by-user', 'Blue Collar', 'bla bl abl abla', 'http://localhost/wordpress/wp-content/uploads/2023/01/Screenshot.png', '8', 'set-by-user', NULL, 0, NULL, NULL, '2023-01-15 01:58:47', '2023-01-16 23:04:48', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-17 01:04:42', '2023-01-15 02:06:18'),
(12, 'http://localhost/wordpress/wp-content/uploads/2023/01/favicon-32x32-2.png', '73:65a56c090b04a85c189ff652170690f6', 10, 'post', 'attachment', 1, 0, NULL, NULL, 'favicon-32&#215;32', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/favicon-32x32-2.png', NULL, '10', 'attachment-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/favicon-32x32-2.png', '10', 'attachment-image', '{\n    \"width\": 32,\n    \"height\": 32,\n    \"filesize\": 613,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/favicon-32x32-2.png\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/favicon-32x32-2.png\",\n    \"size\": \"full\",\n    \"id\": 10,\n    \"alt\": \"\",\n    \"pixels\": 1024,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2023-01-15 02:25:13', '2023-01-16 22:40:55', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-15 02:25:12', '2023-01-15 02:25:12'),
(13, 'http://localhost/wordpress/?page_id=13', '38:ccfc190b72f8a7d8b6ee9837b0e06a89', 13, 'post', 'page', 1, 0, NULL, NULL, 'dadad', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-15 03:24:54', '2023-01-16 22:40:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-15 15:54:08', '2023-01-15 03:24:54'),
(20, 'http://localhost/wordpress/wp-content/uploads/2023/01/welcome.jpg', '65:2f2d59ded484af458cd95eedadfb13cf', 89, 'post', 'attachment', 1, 7, NULL, NULL, 'welcome', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/welcome.jpg', NULL, '89', 'attachment-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/welcome.jpg', '89', 'attachment-image', '{\n    \"width\": 575,\n    \"height\": 582,\n    \"filesize\": 43466,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/welcome.jpg\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/welcome.jpg\",\n    \"size\": \"full\",\n    \"id\": 89,\n    \"alt\": \"\",\n    \"pixels\": 334650,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2023-01-15 21:51:02', '2023-01-16 22:40:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-15 21:51:02', '2023-01-15 21:51:02'),
(21, 'http://localhost/wordpress/wp-content/uploads/2023/01/commercal.jpg', '67:dccba85d9e5492feb2b7982244d1e4e3', 100, 'post', 'attachment', 1, 7, NULL, NULL, 'commercal', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/commercal.jpg', NULL, '100', 'attachment-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/commercal.jpg', '100', 'attachment-image', '{\n    \"width\": 416,\n    \"height\": 366,\n    \"filesize\": 19341,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/commercal.jpg\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/commercal.jpg\",\n    \"size\": \"full\",\n    \"id\": 100,\n    \"alt\": \"\",\n    \"pixels\": 152256,\n    \"type\": \"image/jpeg\"\n}', NULL, NULL, NULL, '2023-01-15 23:05:10', '2023-01-16 22:40:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-15 23:05:10', '2023-01-15 23:05:10'),
(22, 'http://localhost/wordpress/index.php/services/electrical-installation/', '70:8dee4d1c7cdb797ae2626531f78e2b0b', 106, 'post', 'services', 1, 0, NULL, NULL, 'Electrical installation', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/electrical.svg', NULL, '109', 'featured-image', NULL, NULL, NULL, '109', 'featured-image', NULL, 0, NULL, NULL, '2023-01-16 00:28:51', '2023-01-16 01:18:24', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-16 00:45:40', '2023-01-16 00:45:40'),
(23, 'http://localhost/wordpress/wp-content/uploads/2023/01/builder.svg', '65:2699383e032e4ba7090c15f73d34b82c', 107, 'post', 'attachment', 1, 106, NULL, NULL, 'builder', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 00:32:41', '2023-01-16 22:40:57', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-16 00:32:40', '2023-01-16 00:32:40'),
(24, 'http://localhost/wordpress/wp-content/uploads/2023/01/condition.svg', '67:c6d61b304e71f321bf35b64efe6371e2', 108, 'post', 'attachment', 1, 106, NULL, NULL, 'condition', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 00:32:43', '2023-01-16 22:40:57', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-16 00:32:42', '2023-01-16 00:32:42'),
(25, 'http://localhost/wordpress/wp-content/uploads/2023/01/electrical.svg', '68:598d8a51f2b959c781cf824f2b784583', 109, 'post', 'attachment', 1, 106, NULL, NULL, 'electrical', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 00:32:43', '2023-01-16 22:40:57', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-16 00:32:43', '2023-01-16 00:32:43'),
(26, 'http://localhost/wordpress/wp-content/uploads/2023/01/house.svg', '63:d0d35570506cd239c5635d85e3e283c4', 110, 'post', 'attachment', 1, 106, NULL, NULL, 'house', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 00:32:44', '2023-01-16 22:40:58', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-16 00:32:44', '2023-01-16 00:32:44'),
(27, 'http://localhost/wordpress/wp-content/uploads/2023/01/maintaince.svg', '68:8ec400adbe2ae49a9f83bd82f01a887c', 111, 'post', 'attachment', 1, 106, NULL, NULL, 'maintaince', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 00:32:45', '2023-01-16 22:40:58', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-16 00:32:45', '2023-01-16 00:32:45'),
(28, 'http://localhost/wordpress/wp-content/uploads/2023/01/security.svg', '66:91255c5ad5b4791283027f278eb920c1', 112, 'post', 'attachment', 1, 106, NULL, NULL, 'security', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 00:32:46', '2023-01-16 22:40:58', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-16 00:32:46', '2023-01-16 00:32:46'),
(29, 'http://localhost/wordpress/wp-content/uploads/2023/01/title-image.svg', '69:d4e53f7f6f5a8d5cf9c6e1a8c8a9b86b', 113, 'post', 'attachment', 1, 106, NULL, NULL, 'title-image', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 00:32:47', '2023-01-16 22:40:58', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-16 00:32:47', '2023-01-16 00:32:47'),
(30, 'http://localhost/wordpress/index.php/services/air-condition-service/', '68:36cd05bbd00b1cbed2c4a965f4334a27', 116, 'post', 'services', 1, 0, NULL, NULL, 'Air condition service', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/condition.svg', NULL, '108', 'featured-image', NULL, NULL, NULL, '108', 'featured-image', NULL, 0, NULL, NULL, '2023-01-16 00:45:58', '2023-01-16 01:18:25', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 00:46:18', '2023-01-16 00:46:18'),
(31, 'http://localhost/wordpress/index.php/services/general-builder/', '62:3cfdcc2c8b0a922a0affa0daa44902f1', 117, 'post', 'services', 1, 0, NULL, NULL, 'General Builder', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/builder.svg', NULL, '107', 'featured-image', NULL, NULL, NULL, '107', 'featured-image', NULL, 0, NULL, NULL, '2023-01-16 00:46:31', '2023-01-16 01:18:25', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 00:46:36', '2023-01-16 00:46:36'),
(32, 'http://localhost/wordpress/index.php/services/security-system/', '62:c828c3c78dd10f7b5de643825ccec39f', 118, 'post', 'services', 1, 0, NULL, NULL, 'Security System', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/security.svg', NULL, '112', 'featured-image', NULL, NULL, NULL, '112', 'featured-image', NULL, 0, NULL, NULL, '2023-01-16 00:46:44', '2023-01-16 01:18:25', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 00:46:54', '2023-01-16 00:46:54'),
(33, 'http://localhost/wordpress/index.php/services/service-maintenance/', '66:9c8b5d89f5fda53aea23cb9a5b50e7d4', 119, 'post', 'services', 1, 0, NULL, NULL, 'Service &#038; maintenance', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/maintaince.svg', NULL, '111', 'featured-image', NULL, NULL, NULL, '111', 'featured-image', NULL, 0, NULL, NULL, '2023-01-16 00:47:02', '2023-01-16 01:18:26', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 00:47:12', '2023-01-16 00:47:12'),
(34, 'http://localhost/wordpress/index.php/services/house-extensions/', '63:e5887fafaa94a5e1a48388da6a1a9df7', 120, 'post', 'services', 1, 0, NULL, NULL, 'House Extensions', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/house.svg', NULL, '110', 'featured-image', NULL, NULL, NULL, '110', 'featured-image', NULL, 0, NULL, NULL, '2023-01-16 00:47:19', '2023-01-16 01:18:26', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 00:47:30', '2023-01-16 00:47:30'),
(43, 'http://localhost/wordpress/wp-content/uploads/2023/01/project1.jpg', '66:c6255ee6720aa8f30edb5d18b8ffe83c', 136, 'post', 'attachment', 1, 0, NULL, NULL, 'project1', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project1.jpg', NULL, '136', 'attachment-image', NULL, NULL, NULL, '136', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-16 02:54:11', '2023-01-16 00:54:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 02:54:10', '2023-01-16 02:54:10'),
(44, 'http://localhost/wordpress/wp-content/uploads/2023/01/project2.jpg', '66:caea80371006a7ba22610959a100b4fb', 137, 'post', 'attachment', 1, 0, NULL, NULL, 'project2', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project2.jpg', NULL, '137', 'attachment-image', NULL, NULL, NULL, '137', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-16 02:54:12', '2023-01-16 00:54:12', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 02:54:12', '2023-01-16 02:54:12'),
(45, 'http://localhost/wordpress/wp-content/uploads/2023/01/project3.png', '66:26be5750b5cdcd52909e8e36d8db062c', 138, 'post', 'attachment', 1, 0, NULL, NULL, 'project3', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project3.png', NULL, '138', 'attachment-image', NULL, NULL, NULL, '138', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-16 02:54:13', '2023-01-16 00:54:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 02:54:13', '2023-01-16 02:54:13'),
(46, 'http://localhost/wordpress/wp-content/uploads/2023/01/project4.png', '66:c5fb03a1c35489e3671caae1edb3b625', 139, 'post', 'attachment', 1, 0, NULL, NULL, 'project4', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project4.png', NULL, '139', 'attachment-image', NULL, NULL, NULL, '139', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-16 02:54:16', '2023-01-16 00:54:16', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 02:54:15', '2023-01-16 02:54:15'),
(47, 'http://localhost/wordpress/index.php/tag/commercial/', '52:a5774da6dfb34272db5d78a98e5c7f36', 4, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Commercial', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-16 02:55:46', '2023-01-16 00:55:46', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 02:55:46', NULL),
(48, 'http://localhost/wordpress/index.php/tag/industry/', '50:5a34799d3b734edd3bd2dadf03b14c68', 5, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Industry', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-16 02:55:56', '2023-01-16 00:55:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 02:55:56', NULL),
(49, 'http://localhost/wordpress/index.php/tag/residential/', '53:a115dd91137acb5106f6269756510e97', 6, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Residential', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-16 02:56:00', '2023-01-16 00:56:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 02:56:00', NULL),
(50, 'http://localhost/wordpress/index.php/project_type/commercial/', '61:fa2892fea9c9d46b167d157435348783', 7, 'term', 'project_type', NULL, NULL, NULL, NULL, 'Commercial', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-16 03:04:14', '2023-01-16 01:06:21', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 03:06:20', NULL),
(51, 'http://localhost/wordpress/index.php/project_type/industry/', '59:3e2e0c8eafb4e887bfb3dcb9ea2ad97f', 8, 'term', 'project_type', NULL, NULL, NULL, NULL, 'Industry', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-16 03:04:19', '2023-01-16 01:05:32', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 03:05:32', NULL),
(52, 'http://localhost/wordpress/index.php/project_type/residential/', '62:21512ab98c25de5ae41044f980fc8cfb', 9, 'term', 'project_type', NULL, NULL, NULL, NULL, 'Residential', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-16 03:04:25', '2023-01-16 01:06:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-16 03:05:59', NULL),
(53, 'http://localhost/wordpress/index.php/projects/fiber-cable-change/', '65:6feb85ddcdaf7d82a7a8dd35638d761a', 143, 'post', 'projects', 1, 0, NULL, NULL, 'Fiber cable change', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project1.jpg', NULL, '136', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project1.jpg', '136', 'featured-image', '{\n    \"width\": 278,\n    \"height\": 334,\n    \"filesize\": 13096,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/project1.jpg\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/project1.jpg\",\n    \"size\": \"full\",\n    \"id\": 136,\n    \"alt\": \"\",\n    \"pixels\": 92852,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-01-16 03:04:37', '2023-01-16 01:05:06', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 03:05:05', '2023-01-16 03:05:05'),
(54, 'http://localhost/wordpress/index.php/projects/industry-machine-issue/', '69:e39edb7afaac690b7a15e9e30deaa0df', 144, 'post', 'projects', 1, 0, NULL, NULL, 'Industry machine issue', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project2.jpg', NULL, '137', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project2.jpg', '137', 'featured-image', '{\n    \"width\": 278,\n    \"height\": 334,\n    \"filesize\": 16173,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/project2.jpg\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/project2.jpg\",\n    \"size\": \"full\",\n    \"id\": 137,\n    \"alt\": \"\",\n    \"pixels\": 92852,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-01-16 03:05:18', '2023-01-16 01:05:33', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 03:05:32', '2023-01-16 03:05:32'),
(55, 'http://localhost/wordpress/index.php/projects/wheel-alloy-change/', '65:8e27aa8dec07764f02434190b6d064db', 145, 'post', 'projects', 1, 0, NULL, NULL, 'Wheel Alloy Change', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project3.png', NULL, '138', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project3.png', '138', 'featured-image', '{\n    \"width\": 278,\n    \"height\": 334,\n    \"filesize\": 141674,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/project3.png\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/project3.png\",\n    \"size\": \"full\",\n    \"id\": 138,\n    \"alt\": \"\",\n    \"pixels\": 92852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-01-16 03:05:49', '2023-01-16 01:06:00', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 03:05:59', '2023-01-16 03:05:59'),
(56, 'http://localhost/wordpress/index.php/projects/roof-cleaning/', '60:bf67222a17858ce74ba751a2068d7d8f', 146, 'post', 'projects', 1, 0, NULL, NULL, 'Roof Cleaning', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project4.png', NULL, '139', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/project4.png', '139', 'featured-image', '{\n    \"width\": 278,\n    \"height\": 334,\n    \"filesize\": 173250,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/project4.png\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/project4.png\",\n    \"size\": \"full\",\n    \"id\": 139,\n    \"alt\": \"\",\n    \"pixels\": 92852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2023-01-16 03:06:09', '2023-01-16 01:06:21', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-16 03:06:20', '2023-01-16 03:06:20'),
(57, 'http://localhost/wordpress/wp-content/uploads/2023/01/client1.svg', '65:eb1382e8e3a661c45e47d257320347a5', 160, 'post', 'attachment', 1, 0, NULL, NULL, 'client1', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 01:19:58', '2023-01-16 23:19:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-17 01:19:58', '2023-01-17 01:19:58'),
(58, 'http://localhost/wordpress/index.php/plans-tag/popular/', '55:11b585f85f532c03cd986ebb5dde0370', 10, 'term', 'plans-tag', NULL, NULL, NULL, NULL, 'popular', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-17 01:33:59', '2023-01-16 23:37:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-17 01:37:18', NULL),
(59, 'http://localhost/wordpress/?post_type=projects&p=162', '52:a4363b30934ad1036738424497be3f11', 162, 'post', 'projects', 1, 0, NULL, NULL, 'Basic Plan', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-17 01:34:16', '2023-01-16 23:34:16', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-17 01:34:16', '0000-00-00 00:00:00'),
(60, 'http://localhost/wordpress/index.php/plans/basic-plan/', '54:a1ecffd477a0eb837555f37bf7e6ee51', 166, 'post', 'plans', 1, 0, NULL, NULL, 'Professional', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-17 01:35:39', '2023-01-16 23:49:03', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-17 01:49:02', '2023-01-17 01:36:22'),
(61, 'http://localhost/wordpress/index.php/plans/standard/', '52:adc1c75a9d7130b4eaf14c82032089ff', 167, 'post', 'plans', 1, 0, NULL, NULL, 'Standard', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-17 01:36:34', '2023-01-16 23:37:19', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-17 01:37:18', '2023-01-17 01:37:18'),
(62, 'http://localhost/wordpress/index.php/plans/professional/', '56:33635047f6704d98dee7b848381c972c', 168, 'post', 'plans', 1, 0, NULL, NULL, 'Basic Plan', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-17 01:37:47', '2023-01-16 23:48:53', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-17 01:48:51', '2023-01-17 01:37:46'),
(63, 'http://localhost/wordpress/index.php/2023/01/17/how-outside-lighting-can-transform-your-summer-garden/', '102:6d6e285918f2274212b80202c454bb72', 171, 'post', 'post', 1, 0, NULL, NULL, 'How Outside Lighting can Transform Your Summer Garden', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/news2.jpg', NULL, '173', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/news2.jpg', '173', 'featured-image', '{\n    \"width\": 580,\n    \"height\": 364,\n    \"filesize\": 22188,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/news2.jpg\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/news2.jpg\",\n    \"size\": \"full\",\n    \"id\": 173,\n    \"alt\": \"\",\n    \"pixels\": 211120,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-01-17 02:30:14', '2023-01-17 01:04:23', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-17 03:04:21', '2023-01-17 02:31:24'),
(64, 'http://localhost/wordpress/wp-content/uploads/2023/01/news1.jpg', '63:8c7a10456aa9718ba19aea8ae3378616', 172, 'post', 'attachment', 1, 171, NULL, NULL, 'news1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/news1.jpg', NULL, '172', 'attachment-image', NULL, NULL, NULL, '172', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-17 02:30:55', '2023-01-17 02:31:26', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-17 02:30:54', '2023-01-17 02:30:54'),
(65, 'http://localhost/wordpress/wp-content/uploads/2023/01/news2.jpg', '63:1d50248860c1f1ff822a3af7d2176925', 173, 'post', 'attachment', 1, 171, NULL, NULL, 'news2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/news2.jpg', NULL, '173', 'attachment-image', NULL, NULL, NULL, '173', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-17 02:30:57', '2023-01-17 02:31:26', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-17 02:30:57', '2023-01-17 02:30:57'),
(66, 'http://localhost/wordpress/index.php/author/admin/', '50:5e70a50ad9f9be1a42a021706edd9725', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/fb09eb324085a86f7cac1bcf9fcda002?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/fb09eb324085a86f7cac1bcf9fcda002?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-01-17 02:31:26', '2023-01-17 01:04:22', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-17 03:04:21', '2023-01-15 02:06:18'),
(67, 'http://localhost/wordpress/index.php/2023/01/17/easy-energy-saving-solutions-for-industrial-businesses/', '103:476a2fb4bc4bd682bd5f5392660e3039', 175, 'post', 'post', 1, 0, NULL, NULL, 'Easy Energy Saving Solutions for Industrial Businesses', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/news1.jpg', NULL, '172', 'featured-image', NULL, NULL, 'http://localhost/wordpress/wp-content/uploads/2023/01/news1.jpg', '172', 'featured-image', '{\n    \"width\": 580,\n    \"height\": 364,\n    \"filesize\": 29959,\n    \"url\": \"http://localhost/wordpress/wp-content/uploads/2023/01/news1.jpg\",\n    \"path\": \"D:\\\\programs\\\\hampp\\\\htdocs\\\\wordpress/wp-content/uploads/2023/01/news1.jpg\",\n    \"size\": \"full\",\n    \"id\": 172,\n    \"alt\": \"\",\n    \"pixels\": 211120,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2023-01-17 02:31:54', '2023-01-17 01:04:02', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-17 03:04:00', '2023-01-17 02:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(20, 10, 1, 1),
(21, 10, 1, 1),
(22, 0, 0, 1),
(23, 22, 1, 1),
(24, 22, 1, 1),
(25, 22, 1, 1),
(26, 22, 1, 1),
(27, 22, 1, 1),
(28, 22, 1, 1),
(29, 22, 1, 1),
(30, 0, 0, 1),
(31, 0, 0, 1),
(32, 0, 0, 1),
(33, 0, 0, 1),
(34, 0, 0, 1),
(43, 0, 0, 1),
(44, 0, 0, 1),
(45, 0, 0, 1),
(46, 0, 0, 1),
(47, 0, 0, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(53, 0, 0, 1),
(54, 0, 0, 1),
(55, 0, 0, 1),
(56, 0, 0, 1),
(57, 0, 0, 1),
(58, 0, 0, 1),
(59, 0, 0, 1),
(60, 0, 0, 1),
(61, 0, 0, 1),
(62, 0, 0, 1),
(63, 0, 0, 1),
(64, 63, 1, 1),
(65, 63, 1, 1),
(66, 0, 0, 1),
(67, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 171, 1, 'category', '2023-01-17 02:31:29', '2023-01-17 01:04:22', 1),
(2, 175, 1, 'category', '2023-01-17 02:31:57', '2023-01-17 01:04:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost/wordpress/wp-admin/', 2, NULL, 'internal', 3, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_ewwwio_images`
--
ALTER TABLE `wp_ewwwio_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `path` (`path`(191)),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Indexes for table `wp_ewwwio_queue`
--
ALTER TABLE `wp_ewwwio_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Indexes for table `wp_fbv`
--
ALTER TABLE `wp_fbv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_fbv_attachment_folder`
--
ALTER TABLE `wp_fbv_attachment_folder`
  ADD UNIQUE KEY `folder_id` (`folder_id`,`attachment_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_shortpixel_folders`
--
ALTER TABLE `wp_shortpixel_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `path` (`path`);

--
-- Indexes for table `wp_shortpixel_meta`
--
ALTER TABLE `wp_shortpixel_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `path` (`path`);

--
-- Indexes for table `wp_shortpixel_postmeta`
--
ALTER TABLE `wp_shortpixel_postmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attach_id` (`attach_id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `size` (`size`),
  ADD KEY `status` (`status`),
  ADD KEY `compression_type` (`compression_type`);

--
-- Indexes for table `wp_shortpixel_queue`
--
ALTER TABLE `wp_shortpixel_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_wp_` (`plugin_slug`,`queue_name`,`item_id`),
  ADD KEY `queue_name` (`queue_name`),
  ADD KEY `plugin_slug` (`plugin_slug`),
  ADD KEY `status` (`status`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `list_order` (`list_order`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_ewwwio_images`
--
ALTER TABLE `wp_ewwwio_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `wp_ewwwio_queue`
--
ALTER TABLE `wp_ewwwio_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_fbv`
--
ALTER TABLE `wp_fbv`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1877;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1671;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `wp_shortpixel_folders`
--
ALTER TABLE `wp_shortpixel_folders`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shortpixel_meta`
--
ALTER TABLE `wp_shortpixel_meta`
  MODIFY `id` mediumint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shortpixel_postmeta`
--
ALTER TABLE `wp_shortpixel_postmeta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shortpixel_queue`
--
ALTER TABLE `wp_shortpixel_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
