-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2021 at 05:23 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 6, '2021-08-24', '2021-08-19 01:14:04', '2021-08-19 01:14:04'),
(2, 6, '2021-08-25', '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(3, 4, '2021-08-26', '2021-08-24 10:34:56', '2021-08-24 10:34:56'),
(4, 9, '2021-08-26', '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(5, 3, '2021-08-27', '2021-08-24 10:47:13', '2021-08-24 10:47:13'),
(6, 3, '2021-08-29', '2021-08-29 10:37:23', '2021-08-29 10:37:23'),
(7, 3, '2021-08-30', '2021-08-29 15:01:53', '2021-08-29 15:01:53'),
(8, 4, '2021-08-30', '2021-08-29 15:06:14', '2021-08-29 15:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `doctor_id`, `time`, `status`, `created_at`, `updated_at`, `date`) VALUES
(1, 1, 3, '7pm', 1, '2021-08-29 21:42:11', '2021-08-29 16:15:12', '2021-08-30'),
(2, 10, 3, '7.20pm', 1, '2021-08-29 21:43:04', '2021-08-29 16:15:07', '2021-08-30'),
(3, 11, 4, '10am', 1, '2021-08-29 21:43:54', '2021-08-29 16:15:02', '2021-08-30'),
(4, 12, 3, '9pm', 1, '2021-08-30 15:00:00', '2021-08-30 09:32:20', '2021-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Cardiologist', '2021-09-01 10:01:01', '2021-09-01 10:01:01'),
(2, 'Neurologist', '2021-09-01 10:01:57', '2021-09-01 10:01:57'),
(3, 'Family-physician', '2021-09-01 10:02:12', '2021-09-01 10:02:12'),
(4, 'General-physician', '2021-09-01 10:10:23', '2021-09-01 10:10:23'),
(5, 'Opthalmologist', '2021-09-01 10:10:55', '2021-09-01 10:10:55');

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
(4, '2021_08_13_180149_create_roles_table', 1),
(5, '2021_08_13_192533_add_gender_to_users_table', 2),
(6, '2021_08_17_152106_create_appointments_table', 3),
(7, '2021_08_19_055226_create_times_table', 3),
(8, '2021_08_25_162748_create_bookings_table', 4),
(9, '2021_08_26_070435_add_date_to_bookings_table', 5),
(10, '2021_08_29_152102_create_prescriptions_table', 6),
(11, '2021_09_01_145722_create_departments_table', 7);

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
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_disease` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptoms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `procedure_to_use_medicine` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `name_of_disease`, `symptoms`, `user_id`, `doctor_id`, `date`, `medicine`, `procedure_to_use_medicine`, `feedback`, `signature`, `created_at`, `updated_at`) VALUES
(1, 'asasa', 'asasasa', 10, 3, '2021-08-30', 'asa1,as2,as3', 'aaafsdfsdagfsdgdsf', 'adsdasd', 'sdsfsfsfs', '2021-08-29 16:18:05', '2021-08-29 16:18:05'),
(2, 'asasa55', 'wewewe55', 1, 3, '2021-08-30', 'asa1,as2', 'asasasa', 'asasas', 'mac', '2021-08-29 16:18:33', '2021-08-29 16:18:33'),
(3, 'fever', 'high temparature', 11, 4, '2021-08-30', 'aaaa,wwww', 'aaaaa', 'bbb', 'Dr Natali', '2021-08-30 02:38:52', '2021-08-30 02:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'doctor', '2021-08-13 14:06:32', '2021-08-13 14:06:32'),
(2, 'admin', '2021-08-13 14:06:32', '2021-08-13 14:06:32'),
(3, 'patient', '2021-08-13 14:06:32', '2021-08-13 14:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`id`, `appointment_id`, `time`, `status`, `created_at`, `updated_at`) VALUES
(58, 1, '11am', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(59, 1, '11.20am', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(60, 1, '11.40am', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(61, 1, '7pm', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(62, 1, '7.20pm', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(63, 1, '7.40pm', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(64, 1, '8pm', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(65, 1, '8.20pm', 0, '2021-08-21 01:28:28', '2021-08-21 01:28:28'),
(66, 1, '8.40pm', 0, '2021-08-21 01:28:29', '2021-08-21 01:28:29'),
(67, 2, '6pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(68, 2, '6.20pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(69, 2, '6.40pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(70, 2, '7pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(71, 2, '7.20pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(72, 2, '7.40pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(73, 2, '8pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(74, 2, '8.20pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(75, 2, '8.40pm', 0, '2021-08-21 02:31:20', '2021-08-21 02:31:20'),
(76, 3, '5pm', 0, '2021-08-24 10:34:56', '2021-08-26 17:59:18'),
(77, 3, '5.20pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(78, 3, '5.40pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(79, 3, '6pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(80, 3, '6.20pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(81, 3, '6.40pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(82, 3, '7pm', 0, '2021-08-24 10:34:57', '2021-08-26 02:04:07'),
(83, 3, '7.20pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(84, 3, '7.40pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(85, 3, '8pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(86, 3, '8.20pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(87, 3, '8.40pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(88, 3, '9pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(89, 3, '9.20pm', 0, '2021-08-24 10:34:57', '2021-08-24 10:34:57'),
(90, 3, '9.40pm', 0, '2021-08-24 10:34:57', '2021-08-26 16:06:14'),
(91, 4, '7pm', 0, '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(92, 4, '7.20pm', 0, '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(93, 4, '7.40pm', 0, '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(94, 4, '8pm', 0, '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(95, 4, '8.20pm', 0, '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(96, 4, '8.40pm', 0, '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(97, 4, '9pm', 0, '2021-08-24 10:45:43', '2021-08-24 10:45:43'),
(98, 4, '9.20pm', 0, '2021-08-24 10:45:44', '2021-08-24 10:45:44'),
(99, 4, '9.40pm', 0, '2021-08-24 10:45:44', '2021-08-24 10:45:44'),
(100, 5, '7pm', 0, '2021-08-24 10:47:13', '2021-08-24 10:47:13'),
(101, 5, '7.20pm', 0, '2021-08-24 10:47:13', '2021-08-24 10:47:13'),
(102, 5, '7.40pm', 0, '2021-08-24 10:47:13', '2021-08-24 10:47:13'),
(103, 5, '8pm', 0, '2021-08-24 10:47:14', '2021-08-24 10:47:14'),
(104, 5, '8.20pm', 0, '2021-08-24 10:47:14', '2021-08-24 10:47:14'),
(105, 5, '8.40pm', 0, '2021-08-24 10:47:14', '2021-08-24 10:47:14'),
(106, 5, '9pm', 0, '2021-08-24 10:47:14', '2021-08-24 10:47:14'),
(107, 5, '9.20pm', 0, '2021-08-24 10:47:14', '2021-08-24 10:47:14'),
(108, 5, '9.40pm', 0, '2021-08-24 10:47:14', '2021-08-27 16:44:40'),
(109, 6, '8pm', 0, '2021-08-29 10:37:23', '2021-08-29 10:37:23'),
(110, 6, '8.20pm', 0, '2021-08-29 10:37:24', '2021-08-29 10:37:24'),
(111, 6, '8.40pm', 0, '2021-08-29 10:37:24', '2021-08-29 10:37:24'),
(112, 6, '9pm', 0, '2021-08-29 10:37:24', '2021-08-29 10:37:24'),
(113, 6, '9.20pm', 0, '2021-08-29 10:37:24', '2021-08-29 10:37:24'),
(114, 6, '9.40pm', 0, '2021-08-29 10:37:24', '2021-08-29 16:08:08'),
(115, 7, '7pm', 1, '2021-08-29 15:01:53', '2021-08-29 21:42:12'),
(116, 7, '7.20pm', 1, '2021-08-29 15:01:53', '2021-08-29 21:43:04'),
(117, 7, '7.40pm', 0, '2021-08-29 15:01:53', '2021-08-29 15:01:53'),
(118, 7, '8pm', 0, '2021-08-29 15:01:53', '2021-08-29 15:01:53'),
(119, 7, '8.20pm', 0, '2021-08-29 15:01:53', '2021-08-29 15:01:53'),
(120, 7, '8.40pm', 0, '2021-08-29 15:01:53', '2021-08-29 15:01:53'),
(121, 7, '9pm', 1, '2021-08-29 15:01:53', '2021-08-30 15:00:00'),
(122, 7, '9.20pm', 0, '2021-08-29 15:01:53', '2021-08-29 15:01:53'),
(123, 7, '9.40pm', 0, '2021-08-29 15:01:53', '2021-08-29 20:34:32'),
(124, 8, '10am', 1, '2021-08-29 15:06:14', '2021-08-29 21:43:54'),
(125, 8, '10.20am', 0, '2021-08-29 15:06:14', '2021-08-29 15:06:14'),
(126, 8, '10.40am', 0, '2021-08-29 15:06:14', '2021-08-29 15:06:14'),
(127, 8, '11am', 0, '2021-08-29 15:06:14', '2021-08-29 15:06:14'),
(128, 8, '11.20am', 0, '2021-08-29 15:06:14', '2021-08-29 15:06:14'),
(129, 8, '11.40am', 0, '2021-08-29 15:06:14', '2021-08-29 15:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `address`, `phone_number`, `department`, `image`, `education`, `description`, `remember_token`, `created_at`, `updated_at`, `gender`) VALUES
(1, 'ARINDAM DAS', 'tcsarindam@gmail.com', NULL, '$2y$10$/f8cs4sTRE/YVIgMv9ptb.uJN/s4nPLkmPO/zpxrQs.Z8zUNTGv2O', 3, '7/4 D.P.P ROAD', '8910947015', NULL, '1630079908.png', NULL, 'I am Arindam. A male patient from kolkata.', NULL, '2021-08-13 15:12:36', '2021-08-27 10:28:28', 'male'),
(3, 'Mac', 'mac@gmail.com', NULL, '$2y$10$t6FcKl9rbC3dXE0X2GLk7.yZO2DoFmdJoXOcNfASh8epkHrq8pSsK', 1, 'Moscow', '1234567899', 'Neurologist', 'tzjYm4Whr7SvngjR3y2YnUPACobh66T0tVp8cAHx.png', 'MBBS', 'doctor in neurology specialization.', NULL, '2021-08-17 01:32:35', '2021-08-22 11:53:46', 'male'),
(4, 'Natali', 'natali@gmail.com', NULL, '$2y$10$Iide4b5UXextxobIfEAI.O/faBAaxJPIuy30758Q17NnLGU4mdhNu', 1, 'uzbekistan', '2345677855', 'General-physician', 'I2bp6soSCAWXlygY5VMZ82zfEhjSVNJBdZx0YrnG.jpg', 'MD', 'general physician department head', NULL, '2021-08-17 01:40:21', '2021-08-17 01:40:21', 'female'),
(5, 'Pandher', 'pandher@gamil.com', NULL, '$2y$10$Qn9Jmuz3DlVlBUC5b3oiOuR86PCXjwRQQi4TlpCHhvFjVnBSy0i02', 1, 'Toronto', '8910947015', 'Family-physician', 'HQxNtwJ60kRyoqQk6zKmy1X18Q8lKCs6TJXqQKa2.jpg', 'MBBS', 'Family-physician of toronto health care clinic', NULL, '2021-08-17 01:42:25', '2021-08-17 01:42:25', 'male'),
(6, 'Greg', 'greg@gmail.com', NULL, '$2y$10$.ok70t9n7Bh1U1OPssH7sOKMDBs2/lRSRZahvVuNYZl37d4PgPaYC', 1, 'New Jersy', '01123456591', 'Opthalmologist', 'mh7hfkQ9A38MntPwdwwFfG0bMUjo6SxPohB1gnbT.png', 'MD', 'eye sergeon', NULL, '2021-08-17 01:44:50', '2021-08-17 01:44:50', 'male'),
(8, 'Admin', 'admin@gmail.com', NULL, '$2y$10$j/VaiqFEOTYvm01yBVx6vOxlj6wuHXT.EtJqbGZ8qYGhUWDXmZ6he', 2, 'Kolkata', '9836645235', 'General-physician', 'ZKERZJSQlg2xaer1EZDknYyJ3vb9bAfoM1o94itr.png', 'Bachelors Degree', 'Admin', NULL, '2021-08-17 02:11:26', '2021-08-17 02:11:26', 'male'),
(9, 'John Doe', 'johnd@gmail.com', NULL, '$2y$10$JPQ4vw0/rQhUvKasSHxHUuzipYnWoTe24dCh3zmKgEQynNakcphK2', 1, 'New Jersy', '0221002345', 'Cardiologist', 'oseMTOR2EEZ4gxAKFKY7pD1MxXxpWz75o7rJuO0I.jpg', 'MD', 'Doctor', NULL, '2021-08-24 10:44:32', '2021-08-24 10:44:32', 'male'),
(10, 'testuser', 'test1@gmail.com', NULL, '$2y$10$qXi6Hu.9dHVURjboM3mUxeLb6xw99/IZl4xosjqmXpjadN7Ek2J5q', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-25 10:33:07', '2021-08-25 10:33:07', 'male'),
(11, 'test3', 'test3@gmail.com', NULL, '$2y$10$AONMfl9y1O65i7h8LtI.nON9S/tgUu6DzK4aSLQ0xQMxCIbp7pDTa', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-29 15:07:36', '2021-08-29 15:07:36', 'male'),
(12, 'test4', 'test4@gmail.com', NULL, '$2y$10$/TtLJlnkdIXugZ20seJc6up2DwvRAZ.ak1Y9PVFy3pHVa/K3/iBhK', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 09:29:47', '2021-08-30 09:29:47', 'female'),
(13, 'test doctor1', 'testdotor1@gmail.com', NULL, '$2y$10$xcSw3zgztCQQ3nXiviaKUufDcDRpOlInw/orfs4iVoTCqKQXRvJYq', 1, '7/4 D.P.P ROAD', '8910947015', 'Opthalmologist', '1u0Fhl1yubFQ3oJ2FSGdTEOU9EgF87d8cYGNvuQq.png', 'MBBS', 'eye department', NULL, '2021-09-01 10:40:37', '2021-09-01 10:40:37', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
