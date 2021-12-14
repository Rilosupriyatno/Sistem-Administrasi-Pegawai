-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 03:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_admin_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '6ba8f43e059faeb52755e3646da07eeb', '2021-10-21 05:37:20'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '924cee38b3fc38c42cd83b857472d3af', '2021-10-21 21:55:53'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2005983f4fe821621c44bd6459f91157', '2021-10-26 03:03:50'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'dc57b6463069300df6ce7643371fdf83', '2021-10-28 00:32:07'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'b40b4375901f8ff313925394481b6db0', '2021-11-25 01:29:06'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'f01b275bb076b34e4fe7b6e43ba1dc82', '2021-11-25 01:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 16),
(2, 13),
(2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Rilo Supriyatno', 5, '2021-10-21 00:56:02', 0),
(2, '::1', 'Rilo Supriyatno', 6, '2021-10-21 01:01:50', 0),
(3, '::1', 'rilobahtiar21@gmail.com', 6, '2021-10-21 01:02:17', 0),
(4, '::1', 'rilobahtiar21@gmail.com', 6, '2021-10-21 01:06:34', 0),
(5, '::1', 'Rilo Supriyatno', 6, '2021-10-21 01:14:37', 0),
(6, '::1', 'rilosupr@gmail.com', NULL, '2021-10-21 01:15:02', 0),
(7, '::1', 'Rilo Supriyatno', 6, '2021-10-21 01:18:40', 0),
(8, '::1', 'rilobahtiar21@gmail.com', NULL, '2021-10-21 01:24:05', 0),
(9, '::1', 'rilobahtiar21@gmail.com', 8, '2021-10-21 01:24:18', 0),
(10, '::1', 'rilobahtiar21@gmail.com', 8, '2021-10-21 01:26:40', 0),
(11, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 05:37:34', 1),
(12, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 05:39:20', 1),
(13, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 06:00:40', 1),
(14, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 06:00:57', 1),
(15, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 06:26:54', 1),
(16, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 06:32:57', 1),
(17, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 06:50:01', 1),
(18, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-21 21:56:09', 1),
(19, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 22:12:32', 1),
(20, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 22:16:56', 1),
(21, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-21 22:18:14', 1),
(22, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 22:18:29', 1),
(23, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-21 22:26:04', 1),
(24, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-21 22:31:14', 1),
(25, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-22 08:56:43', 1),
(26, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 01:46:14', 1),
(27, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 01:47:12', 1),
(28, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 01:48:20', 1),
(29, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 01:48:30', 1),
(30, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 01:54:02', 1),
(31, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 01:56:28', 1),
(32, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 01:59:50', 1),
(33, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 02:00:34', 1),
(34, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 02:00:44', 1),
(35, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 02:06:12', 1),
(36, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 02:06:23', 1),
(37, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 02:14:56', 1),
(38, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 02:15:08', 1),
(39, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 02:15:33', 1),
(40, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 02:26:08', 1),
(41, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 02:26:23', 1),
(42, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 02:30:53', 1),
(43, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 02:33:22', 1),
(44, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 02:36:11', 1),
(45, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 07:10:39', 1),
(46, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 21:37:11', 1),
(47, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 22:42:45', 1),
(48, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-23 22:47:45', 1),
(49, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-23 22:47:59', 1),
(50, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-24 02:22:31', 1),
(51, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-24 06:33:04', 1),
(52, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-25 05:40:40', 1),
(53, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-25 21:14:20', 1),
(54, '::1', 'rilobahtiar21@gmail.com', 12, '2021-10-26 03:04:02', 1),
(55, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-26 03:04:58', 1),
(56, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-26 06:00:15', 1),
(57, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-26 22:56:50', 1),
(58, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-26 23:21:56', 1),
(59, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-26 23:46:54', 1),
(60, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-26 23:52:07', 1),
(61, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-26 23:53:05', 1),
(62, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-27 00:05:01', 1),
(63, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-27 00:08:23', 1),
(64, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-27 00:10:09', 1),
(65, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-27 01:14:29', 1),
(66, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-27 01:15:30', 1),
(67, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-27 01:17:02', 1),
(68, '::1', 'rilobahtiar4@gmail.com', 11, '2021-10-27 01:24:10', 1),
(69, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-27 01:24:46', 1),
(70, '::1', 'rilosupriyatno21@gmail.com', 10, '2021-10-27 23:51:31', 1),
(71, '::1', 'rilobahtiar21@gmail.com', 13, '2021-10-28 00:32:20', 1),
(72, '::1', 'Rilo Supriyatno', NULL, '2021-10-30 06:07:17', 0),
(73, '::1', 'Rilo Supriyatno', NULL, '2021-10-30 06:07:24', 0),
(74, '::1', 'rilobahtiar21@gmail.com', 13, '2021-10-30 06:07:43', 1),
(75, '::1', 'rilobahtiar21@gmail.com', 13, '2021-10-31 00:18:40', 1),
(76, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-03 19:58:00', 1),
(77, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-10 05:27:05', 1),
(78, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-11 19:24:15', 1),
(79, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-12 00:35:08', 1),
(80, '::1', 'Rilobahtiar', NULL, '2021-11-13 06:53:08', 0),
(81, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-13 06:53:21', 1),
(82, '::1', 'Rilobahtiar', NULL, '2021-11-21 06:24:24', 0),
(83, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-21 06:24:42', 1),
(84, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-22 00:46:57', 1),
(85, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-24 06:58:57', 1),
(86, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-24 23:57:10', 1),
(87, '::1', 'rilobahtiar4@gmail.com', 14, '2021-11-25 01:29:23', 1),
(88, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-25 01:30:03', 1),
(89, '::1', 'muinyesh@gmail.com', 16, '2021-11-25 01:42:18', 1),
(90, '::1', 'rilobahtiar21@gmail.com', 13, '2021-11-25 01:52:23', 1),
(91, '::1', 'muinyesh@gmail.com', 16, '2021-11-25 02:37:20', 1),
(92, '::1', 'Arnis', NULL, '2021-12-02 20:01:31', 0),
(93, '::1', 'muinyesh@gmail.com', 16, '2021-12-02 20:01:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage User`s Profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id` int(11) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenkel` varchar(10) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pendikte` varchar(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id`, `NIK`, `nama`, `jenkel`, `foto`, `tanggal_lahir`, `alamat`, `pendikte`, `deleted_at`) VALUES
(80, '3173050708650005', 'Ujang Sodikin', 'Laki-Laki', 'default.svg', '1965-08-07', 'jln Sawo no 52a, RT 004, RW 001, Kel. Kelapa Dua Kec. Kebon Jeruk Kab. Jakarta Barat', 'S2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `histori`
--

CREATE TABLE `histori` (
  `id` int(11) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `id_jabatan` int(11) UNSIGNED DEFAULT NULL,
  `no_sk` varchar(50) NOT NULL,
  `sk` varchar(255) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_berakhir` date DEFAULT NULL,
  `creator` varchar(20) NOT NULL,
  `updator` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histori`
--

INSERT INTO `histori` (`id`, `NIK`, `id_jabatan`, `no_sk`, `sk`, `tgl_mulai`, `tgl_berakhir`, `creator`, `updator`) VALUES
(70, '3173050708650005', 7, '04/PT.PSI-RUPSLB/I/2021', '1637825242_d45dd8d01a8a4bac776c.pdf', '2021-01-01', '2026-01-01', 'Arnis', 'Arnis');

-- --------------------------------------------------------

--
-- Table structure for table `histori_akun`
--

CREATE TABLE `histori_akun` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histori_akun`
--

INSERT INTO `histori_akun` (`id`, `keterangan`, `username`, `user_image`, `waktu`) VALUES
(9, 'Tambah Data', 'Rilobahtiar', 'default.svg', '2021-10-28 12:31:51'),
(12, 'Update', 'Rilobahtiar', 'default.svg', '2021-11-12 15:30:22'),
(13, 'Update', 'Rilobahtiar', '1636705841_08492394cc1d49ebf198.jpg', '2021-11-12 15:30:41'),
(14, 'Tambah Data', 'Rilo', 'default.svg', '2021-11-25 14:28:49'),
(15, 'Update', 'Rilo', 'default.svg', '2021-11-25 14:29:07'),
(16, 'Update', 'Rilo', 'default.svg', '2021-11-25 14:29:40'),
(17, 'Tambah Data', 'Arnis', 'default.svg', '2021-11-25 14:38:43'),
(18, 'Tambah Data', 'Arnis', 'default.svg', '2021-11-25 14:40:54'),
(19, 'Update', 'Arnis', 'default.svg', '2021-11-25 14:42:10'),
(20, 'Update', 'Arnis', 'default.svg', '2021-11-25 14:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) UNSIGNED NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
(1, 'Karyawan'),
(2, 'HRD'),
(3, 'Direktur'),
(4, 'Sekretaris'),
(5, 'Keuangan'),
(6, 'Staff'),
(7, 'Direksi');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1634736761, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'rilobahtiar21@gmail.com', 'Rilobahtiar', 'Rilo Bahtiar', '1636705841_08492394cc1d49ebf198.jpg', '$2y$10$k6vc3GDAMLgb6p/a8TrNlek2awWbKNLTxyovOZ1mSlZOyPLJrL8qG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-28 00:31:51', '2021-10-28 00:32:07', NULL),
(16, 'muinyesh@gmail.com', 'Arnis', 'Arnis Muin', 'default.svg', '$2y$10$97FMX3BHJBywpWBfLkk5c.W9OTVq4AGSxlUIcT/CEdKZFCmk.Chs6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-25 01:40:54', '2021-11-25 01:42:10', NULL);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `log_HA` AFTER INSERT ON `users` FOR EACH ROW BEGIN
INSERT INTO histori_akun (keterangan, username, user_image, waktu) VALUES ('Tambah Data', new.username, new.user_image, now());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_update_HA` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
INSERT INTO histori_akun (keterangan, username, user_image, waktu) VALUES ('Update', new.username, new.user_image, now());
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NIK` (`NIK`);

--
-- Indexes for table `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NIK` (`NIK`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `histori_akun`
--
ALTER TABLE `histori_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `histori`
--
ALTER TABLE `histori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `histori_akun`
--
ALTER TABLE `histori_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `histori`
--
ALTER TABLE `histori`
  ADD CONSTRAINT `histori_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`),
  ADD CONSTRAINT `histori_ibfk_3` FOREIGN KEY (`NIK`) REFERENCES `data_pegawai` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
