-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 07:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exapp_cf4`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejalahamas`
--

CREATE TABLE `gejalahamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalahamas`
--

INSERT INTO `gejalahamas` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(24, 'GH01', 'Bentuk daun berlubang-lubang atau rusak', NULL, '2022-09-11 19:22:39'),
(25, 'GH02', 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan', '2022-08-09 08:34:45', '2022-09-11 19:22:50'),
(26, 'GH03', 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya', '2022-08-09 08:52:41', '2022-09-11 19:23:00'),
(27, 'GH04', 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya', '2022-08-09 08:53:31', '2022-09-11 19:23:10'),
(28, 'GH05', 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-08-09 08:53:47', '2022-09-11 19:23:22'),
(29, 'GH06', 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-08-09 08:54:15', '2022-09-11 19:23:31'),
(30, 'GH07', 'Biasanya larva berada di permukaan bawah daun', '2022-08-09 08:54:25', '2022-09-11 19:23:44'),
(31, 'GH08', 'Umumnya hama muncul pada saat musim kemarau daun', '2022-08-09 08:54:36', '2022-09-11 19:23:56'),
(32, 'GH09', 'Membuat lubang kecil pada daun', '2022-08-09 08:54:47', '2022-09-11 19:24:08'),
(33, 'GH10', 'Membuat lubang kecil pada daun', '2022-08-09 08:54:59', '2022-09-11 19:24:18'),
(34, 'GH11', 'Terdapat kerusakan pada bagian tongkol', '2022-08-09 08:55:08', '2022-09-11 19:24:31'),
(35, 'GH12', 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke tongkol.', '2022-08-09 08:55:17', '2022-09-11 19:24:50'),
(36, 'GH13', 'Kotoran yang ditinggalkan larva menyebabkan bertum...', '2022-08-09 08:55:47', '2022-09-11 19:25:06'),
(37, 'GH14', 'Hama ini menyerang tanaman muda, terutama pada pucuk atau malai yang. Dapat mengakibatkan tidak terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati', '2022-08-09 08:56:06', '2022-09-11 19:25:30'),
(38, 'GH15', 'Hama ini menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang', '2022-08-09 08:56:17', '2022-09-11 19:25:49'),
(39, 'GH16', 'Menyerang mulai dari tepi daun', '2022-08-09 08:56:37', '2022-09-11 19:26:02'),
(40, 'GH17', 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber makanan terbatas', '2022-08-09 08:57:06', '2022-09-11 19:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `gejalahama_hama`
--

CREATE TABLE `gejalahama_hama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hama_id` bigint(20) UNSIGNED NOT NULL,
  `gejalahama_id` bigint(20) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalahama_hama`
--

INSERT INTO `gejalahama_hama` (`id`, `hama_id`, `gejalahama_id`, `value`, `updated_at`) VALUES
(95, 17, 24, 0.60, '2022-09-07 05:09:36'),
(96, 17, 25, 0.80, '2022-09-07 05:09:36'),
(97, 17, 26, 0.80, '2022-09-07 05:09:36'),
(98, 17, 27, 1.00, '2022-09-07 05:09:36'),
(99, 17, 28, 0.60, '2022-09-07 05:09:37'),
(100, 17, 29, 0.00, '2022-09-07 05:09:37'),
(101, 17, 30, 0.00, '2022-09-07 05:09:37'),
(102, 17, 31, 0.00, '2022-09-07 05:09:37'),
(103, 17, 32, 0.00, '2022-09-07 05:09:37'),
(104, 17, 33, 0.00, '2022-09-07 05:09:37'),
(105, 17, 34, 0.00, '2022-09-07 05:09:37'),
(106, 17, 35, 0.00, '2022-09-07 05:09:37'),
(107, 17, 36, 0.00, '2022-09-07 05:09:37'),
(108, 17, 37, 0.00, '2022-09-07 05:09:37'),
(109, 17, 38, 0.00, '2022-09-07 05:09:37'),
(110, 17, 39, 0.00, '2022-09-07 05:09:37'),
(111, 17, 40, 0.00, '2022-09-07 05:09:38'),
(129, 20, 24, 0.40, '2022-09-07 05:09:38'),
(130, 20, 25, 0.00, '2022-09-07 05:09:38'),
(131, 20, 26, 0.00, '2022-09-07 05:09:38'),
(132, 20, 27, 0.00, '2022-09-07 05:09:38'),
(133, 20, 28, 0.00, '2022-09-07 05:09:38'),
(134, 20, 29, 0.80, '2022-09-07 05:09:38'),
(135, 20, 30, 0.60, '2022-09-07 05:09:38'),
(136, 20, 31, 0.40, '2022-09-07 05:09:38'),
(137, 20, 32, 0.00, '2022-09-07 05:09:38'),
(138, 20, 33, 0.00, '2022-09-07 05:09:38'),
(139, 20, 34, 0.00, '2022-09-07 05:09:38'),
(140, 20, 35, 0.00, '2022-09-07 05:09:38'),
(141, 20, 36, 0.00, '2022-09-07 05:09:38'),
(142, 20, 37, 0.00, '2022-09-07 05:09:38'),
(143, 20, 38, 0.00, '2022-09-07 05:09:38'),
(144, 20, 39, 0.00, '2022-09-07 05:09:39'),
(145, 20, 40, 0.00, '2022-09-07 05:09:39'),
(146, 21, 24, 0.40, '2022-09-07 05:09:39'),
(147, 21, 25, 0.00, '2022-09-07 05:09:39'),
(148, 21, 26, 0.00, '2022-09-07 05:09:39'),
(149, 21, 27, 0.00, '2022-09-07 05:09:39'),
(150, 21, 28, 0.00, '2022-09-07 05:09:39'),
(151, 21, 29, 0.00, '2022-09-07 05:09:39'),
(152, 21, 30, 0.00, '2022-09-07 05:09:39'),
(153, 21, 31, 0.00, '2022-09-07 05:09:39'),
(154, 21, 32, 0.80, '2022-09-07 05:09:39'),
(155, 21, 33, 1.00, '2022-09-07 05:09:39'),
(156, 21, 34, 0.00, '2022-09-07 05:09:40'),
(157, 21, 35, 0.00, '2022-09-07 05:09:40'),
(158, 21, 36, 0.00, '2022-09-07 05:09:40'),
(159, 21, 37, 0.00, '2022-09-07 05:09:40'),
(160, 21, 38, 0.00, '2022-09-07 05:09:40'),
(161, 21, 39, 0.00, '2022-09-07 05:09:40'),
(162, 21, 40, 0.00, '2022-09-07 05:09:40'),
(163, 22, 24, 0.00, '2022-09-07 05:09:40'),
(164, 22, 25, 0.00, '2022-09-07 05:09:40'),
(165, 22, 26, 0.00, '2022-09-07 05:09:41'),
(166, 22, 27, 0.00, '2022-09-07 05:09:41'),
(167, 22, 28, 0.00, '2022-09-07 05:09:41'),
(168, 22, 29, 0.00, '2022-09-07 05:09:41'),
(169, 22, 30, 0.00, '2022-09-07 05:09:41'),
(170, 22, 31, 0.00, '2022-09-07 05:09:41'),
(171, 22, 32, 0.00, '2022-09-07 05:09:41'),
(172, 22, 33, 0.00, '2022-09-07 05:09:41'),
(173, 22, 34, 0.40, '2022-09-07 05:09:41'),
(174, 22, 35, 0.80, '2022-09-07 05:09:41'),
(175, 22, 36, 1.00, '2022-09-07 05:09:41'),
(176, 22, 37, 0.60, '2022-09-07 05:09:42'),
(177, 22, 38, 0.00, '2022-09-07 05:09:42'),
(178, 22, 39, 0.00, '2022-09-07 05:09:42'),
(179, 22, 40, 0.00, '2022-09-07 05:09:42'),
(180, 23, 24, 0.40, '2022-09-07 05:09:42'),
(181, 23, 25, 0.00, '2022-09-07 05:09:42'),
(182, 23, 26, 0.00, '2022-09-07 05:09:42'),
(183, 23, 27, 0.00, '2022-09-07 05:09:42'),
(184, 23, 28, 0.00, '2022-09-07 05:09:42'),
(185, 23, 29, 0.00, '2022-09-07 05:09:42'),
(186, 23, 30, 0.00, '2022-09-07 05:09:42'),
(187, 23, 31, 0.00, '2022-09-07 05:09:42'),
(188, 23, 32, 0.00, '2022-09-07 05:09:42'),
(189, 23, 33, 0.00, '2022-09-07 05:09:42'),
(190, 23, 34, 0.00, '2022-09-07 05:09:42'),
(191, 23, 35, 0.00, '2022-09-07 05:09:42'),
(192, 23, 36, 0.00, '2022-09-07 05:09:42'),
(193, 23, 37, 0.00, '2022-09-07 05:09:42'),
(194, 23, 38, 0.80, '2022-09-07 05:09:42'),
(195, 23, 39, 0.80, '2022-09-07 05:09:42'),
(196, 23, 40, 0.60, '2022-09-07 05:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `gejalapenyakits`
--

CREATE TABLE `gejalapenyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalapenyakits`
--

INSERT INTO `gejalapenyakits` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(3, 'GP02', 'Gejala awalnya muncul bercak-bercak kecil, jorong, hijau tua/hijau kelabu kebasahan yang kemudian menjadi coklat kehijauan.', '2022-08-11 03:16:47', '2022-09-11 19:33:17'),
(4, 'GP03', 'Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.', '2022-08-11 03:16:56', '2022-09-11 19:34:56'),
(5, 'GP04', 'Spora banyak terbentuk pada kedua sisi bercak pada kondisi banyak embun atau setelah turun hujan, yang menyebabkan bercak berwarna hijau tua beledu, yang makin ke tepi warnanya makin muda.', '2022-08-11 03:19:21', '2022-09-11 19:35:30'),
(6, 'GP05', 'Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun', '2022-08-11 03:19:41', '2022-09-11 19:35:43'),
(7, 'GP06', 'Warna daun menjadi memudar', '2022-08-11 03:19:57', '2022-09-11 19:36:21'),
(8, 'GP07', 'Gejala daun yang terinfeksi berwarna khlorotik, biasanya memanjang sejajar tulang daun, dengan batas yang jelas, dan bagian daun yang masih sehat berwarna hijau normal', '2022-08-11 03:20:05', '2022-09-11 19:36:39'),
(9, 'GP08', 'Warna putih seperti tepung pada permukaan bawah maupun atas bagian daun yang berwarna khlorotik, tampak dengan jelas pada pagi hari.', '2022-08-11 03:20:15', '2022-09-11 19:36:52'),
(10, 'GP09', 'Daun yang khlorotik sistemik menjadi sempit dan kaku.', '2022-08-11 03:20:24', '2022-09-11 19:37:07'),
(11, 'GP10', 'Tanaman menjadi terhambat pertumbuhannya dan pembentukan tongkol terganggu sampai tidak bertongkol sama sekali.', '2022-08-11 03:20:33', '2022-09-11 19:37:23'),
(12, 'GP11', 'Tanaman yang terinfeksi sistemik sejak muda di bawah umur 1 bulan biasanya mati.', '2022-08-11 03:20:42', '2022-09-11 19:37:34'),
(13, 'GP12', 'Daun menjadi kering', '2022-08-11 03:22:39', '2022-09-11 19:37:45'),
(14, 'GP13', 'Tanaman jagung tampak layu atau seluruh daun mengering. Gejala ini umumnya terjadi pada stadia generatif, yaitu setelah fase pembungaan', '2022-08-11 03:22:49', '2022-09-11 19:37:56'),
(15, 'GP14', 'Pangkal batang yang terinfeksi berubah warna dari hijau menjadi kecoklatan, bagian dalam busuk, sehingga mudah rebah, dan bagian kulit luarnya tipis.', '2022-08-11 03:22:58', '2022-09-11 19:38:06'),
(16, 'GP15', 'Pada pangkal batang yang terinfeksi tersebut terlihat warna merah jambu, merah kecoklatan atau coklat.', '2022-08-11 03:23:09', '2022-09-11 19:38:17'),
(17, 'GP16', 'Terbentuk bisul pada kedua permukaan daun bagian atas dan bawah', '2022-08-11 03:23:18', '2022-09-11 19:38:27'),
(18, 'GP17', 'Bisul berwarna coklat kemerahan tersebar pada permukaan daun dan berubah warna menjadi hitam kecoklatan setelah teliospora berkembang', '2022-08-11 03:23:27', '2022-09-11 19:38:44'),
(19, 'GP18', 'Pada saat terjadi penularan berat, daun menjadi kering.', '2022-08-11 03:23:35', '2022-09-11 19:38:54'),
(20, 'GP19', 'Gejala jelas tampak pada daun muda, terutama pada daun yang baru membuka sebagian, berupa mosaik atau adanya warna-warna hijau muda dan tua.', '2022-08-11 03:23:44', '2022-09-11 19:39:03'),
(21, 'GP20', 'Terdapat warna hijau muda atau kekuning-kuningan biasanya memanjang sejajar dengan tulang daun', '2022-08-11 03:23:53', '2022-09-11 19:39:13'),
(22, 'GP21', 'Tanaman terinfeksi sedikit mengalami hambatan pertumbuhan (stunting) dan ukuran tongkol serta jumlah biji berkurang.', '2022-08-11 03:24:04', '2022-09-11 19:39:23'),
(23, 'GP22', 'Gejala yang semula jelas pada daun muda, dapat menjadi tidak jelas setelah daun menjadi lebih tua terutama pada suhu tinggi.', '2022-08-11 03:24:11', '2022-09-11 19:39:33'),
(24, 'GP23', 'Gejala dapat mulai tampak pada umur tanaman 15 hari setelah berkecambah.', '2022-08-11 03:24:19', '2022-09-11 19:39:51'),
(25, 'GP01', 'Terdapat bercak-bercak pada daun', '2022-08-11 03:44:53', '2022-09-11 19:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `gejalapenyakit_penyakit`
--

CREATE TABLE `gejalapenyakit_penyakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penyakit_id` bigint(20) UNSIGNED NOT NULL,
  `gejalapenyakit_id` bigint(20) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalapenyakit_penyakit`
--

INSERT INTO `gejalapenyakit_penyakit` (`id`, `penyakit_id`, `gejalapenyakit_id`, `value`, `updated_at`) VALUES
(25, 3, 3, 0.80, '2022-09-07 11:05:14'),
(26, 3, 4, 0.00, '2022-09-07 11:05:14'),
(27, 3, 5, 0.00, '2022-09-07 11:05:14'),
(28, 3, 6, 0.00, '2022-09-07 11:05:14'),
(29, 3, 7, 0.00, '2022-09-07 11:05:14'),
(30, 3, 8, 0.00, '2022-09-07 11:05:15'),
(31, 3, 9, 0.00, '2022-09-07 11:05:15'),
(32, 3, 10, 0.00, '2022-09-07 11:05:15'),
(33, 3, 11, 0.00, '2022-09-07 11:05:15'),
(34, 3, 12, 0.00, '2022-09-07 11:05:15'),
(35, 3, 13, 0.00, '2022-09-07 11:05:15'),
(36, 3, 14, 0.00, '2022-09-07 11:05:15'),
(37, 3, 15, 0.00, '2022-09-07 11:05:15'),
(38, 3, 16, 0.00, '2022-09-07 11:05:15'),
(39, 3, 17, 0.00, '2022-09-07 11:05:15'),
(40, 3, 18, 0.00, '2022-09-07 11:05:15'),
(41, 3, 19, 0.00, '2022-09-07 11:05:16'),
(42, 3, 20, 0.00, '2022-09-07 11:05:16'),
(43, 3, 21, 0.00, '2022-09-07 11:05:16'),
(44, 3, 22, 0.00, '2022-09-07 11:05:16'),
(45, 3, 23, 0.00, '2022-09-07 11:05:16'),
(46, 3, 24, 0.00, '2022-09-07 11:05:16'),
(48, 4, 3, 0.00, '2022-09-07 11:05:16'),
(49, 4, 4, 0.00, '2022-09-07 11:05:16'),
(50, 4, 5, 0.00, '2022-09-07 11:05:16'),
(51, 4, 6, 0.00, '2022-09-07 11:05:16'),
(52, 4, 7, 0.00, '2022-09-07 11:05:16'),
(53, 4, 8, 0.00, '2022-09-07 11:05:16'),
(54, 4, 9, 0.00, '2022-09-07 11:05:16'),
(55, 4, 10, 0.00, '2022-09-07 11:05:16'),
(56, 4, 11, 0.00, '2022-09-07 11:05:16'),
(57, 4, 12, 0.00, '2022-09-07 11:05:16'),
(58, 4, 13, 0.00, '2022-09-07 11:05:17'),
(59, 4, 14, 0.00, '2022-09-07 11:05:17'),
(60, 4, 15, 0.00, '2022-09-07 11:05:17'),
(61, 4, 16, 0.00, '2022-09-07 11:05:17'),
(62, 4, 17, 0.00, '2022-09-07 11:05:17'),
(63, 4, 18, 0.00, '2022-09-07 11:05:17'),
(64, 4, 19, 0.00, '2022-09-07 11:05:17'),
(65, 4, 20, 0.00, '2022-09-07 11:05:17'),
(66, 4, 21, 0.00, '2022-09-07 11:05:17'),
(67, 4, 22, 0.00, '2022-09-07 11:05:17'),
(68, 4, 23, 0.00, '2022-09-07 11:05:17'),
(69, 4, 24, 0.00, '2022-09-07 11:05:17'),
(71, 5, 3, 0.00, '2022-09-07 11:05:18'),
(72, 5, 4, 0.00, '2022-09-07 11:05:18'),
(73, 5, 5, 0.00, '2022-09-07 11:05:18'),
(74, 5, 6, 0.00, '2022-09-07 11:05:18'),
(75, 5, 7, 0.00, '2022-09-07 11:05:18'),
(76, 5, 8, 0.00, '2022-09-07 11:05:18'),
(77, 5, 9, 0.00, '2022-09-07 11:05:18'),
(78, 5, 10, 0.00, '2022-09-07 11:05:18'),
(79, 5, 11, 0.00, '2022-09-07 11:05:18'),
(80, 5, 12, 0.00, '2022-09-07 11:05:18'),
(81, 5, 13, 0.00, '2022-09-07 11:05:18'),
(82, 5, 14, 0.00, '2022-09-07 11:05:18'),
(83, 5, 15, 0.00, '2022-09-07 11:05:18'),
(84, 5, 16, 0.00, '2022-09-07 11:05:18'),
(85, 5, 17, 0.00, '2022-09-07 11:05:18'),
(86, 5, 18, 0.00, '2022-09-07 11:05:19'),
(87, 5, 19, 0.00, '2022-09-07 11:05:19'),
(88, 5, 20, 0.00, '2022-09-07 11:05:19'),
(89, 5, 21, 0.00, '2022-09-07 11:05:19'),
(90, 5, 22, 0.00, '2022-09-07 11:05:19'),
(91, 5, 23, 0.00, '2022-09-07 11:05:19'),
(92, 5, 24, 0.00, '2022-09-07 11:05:19'),
(94, 6, 3, 0.00, '2022-09-07 11:05:19'),
(95, 6, 4, 0.00, '2022-09-07 11:05:19'),
(96, 6, 5, 0.00, '2022-09-07 11:05:19'),
(97, 6, 6, 0.00, '2022-09-07 11:05:19'),
(98, 6, 7, 0.00, '2022-09-07 11:05:19'),
(99, 6, 8, 0.00, '2022-09-07 11:05:19'),
(100, 6, 9, 0.00, '2022-09-07 11:05:19'),
(101, 6, 10, 0.00, '2022-09-07 11:05:20'),
(102, 6, 11, 0.00, '2022-09-07 11:05:20'),
(103, 6, 12, 0.00, '2022-09-07 11:05:20'),
(104, 6, 13, 0.00, '2022-09-07 11:05:20'),
(105, 6, 14, 0.00, '2022-09-07 11:05:20'),
(106, 6, 15, 0.00, '2022-09-07 11:05:20'),
(107, 6, 16, 0.00, '2022-09-07 11:05:20'),
(108, 6, 17, 0.00, '2022-09-07 11:05:20'),
(109, 6, 18, 0.00, '2022-09-07 11:05:20'),
(110, 6, 19, 0.00, '2022-09-07 11:05:20'),
(111, 6, 20, 0.00, '2022-09-07 11:05:20'),
(112, 6, 21, 0.00, '2022-09-07 11:05:20'),
(113, 6, 22, 0.00, '2022-09-07 11:05:20'),
(114, 6, 23, 0.00, '2022-09-07 11:05:20'),
(115, 6, 24, 0.00, '2022-09-07 11:05:20'),
(117, 7, 3, 0.00, '2022-09-07 11:05:21'),
(118, 7, 4, 0.00, '2022-09-07 11:05:21'),
(119, 7, 5, 0.00, '2022-09-07 11:05:21'),
(120, 7, 6, 0.00, '2022-09-07 11:05:21'),
(121, 7, 7, 0.00, '2022-09-07 11:05:21'),
(122, 7, 8, 0.00, '2022-09-07 11:05:21'),
(123, 7, 9, 0.00, '2022-09-07 11:05:21'),
(124, 7, 10, 0.00, '2022-09-07 11:05:21'),
(125, 7, 11, 0.00, '2022-09-07 11:05:21'),
(126, 7, 12, 0.00, '2022-09-07 11:05:21'),
(127, 7, 13, 0.00, '2022-09-07 11:05:21'),
(128, 7, 14, 0.00, '2022-09-07 11:05:21'),
(129, 7, 15, 0.00, '2022-09-07 11:05:21'),
(130, 7, 16, 0.00, '2022-09-07 11:05:21'),
(131, 7, 17, 0.00, '2022-09-07 11:05:21'),
(132, 7, 18, 0.00, '2022-09-07 11:05:21'),
(133, 7, 19, 0.00, '2022-09-07 11:05:21'),
(134, 7, 20, 0.00, '2022-09-07 11:05:21'),
(135, 7, 21, 0.00, '2022-09-07 11:05:21'),
(136, 7, 22, 0.00, '2022-09-07 11:05:21'),
(137, 7, 23, 0.00, '2022-09-07 11:05:22'),
(138, 7, 24, 0.00, '2022-09-07 11:05:22'),
(140, 3, 25, 0.00, '2022-09-07 11:05:16'),
(141, 4, 25, 0.00, '2022-09-07 11:05:17'),
(142, 5, 25, 0.00, '2022-09-07 11:05:19'),
(143, 6, 25, 0.00, '2022-09-07 11:05:20'),
(144, 7, 25, 0.00, '2022-09-07 11:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `hamas`
--

CREATE TABLE `hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `det_hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `srn_hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hamas`
--

INSERT INTO `hamas` (`id`, `code`, `name`, `det_hama`, `srn_hama`, `images`, `created_at`, `updated_at`) VALUES
(17, 'H1', 'Hama Lalat Bibit', 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.', 'Solution Belum Tersedia', '1660404549.png', NULL, '2022-09-11 19:26:51'),
(20, 'H2', 'Hama Ulat Grayak', 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.', 'Solution Belum Tersedia', '1660404567.jpg', '2022-08-09 09:06:44', '2022-09-11 19:27:03'),
(21, 'H3', 'Hama Larva Penggerek Batang', 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.', 'Solution Belum Tersedia', '1660404597.png', '2022-08-09 09:07:53', '2022-09-11 19:27:15'),
(22, 'H4', 'Hama Penggerek Tongkol', 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.', 'Solution Belum Tersedia', '1660404676.png', '2022-08-09 09:08:22', '2022-09-11 19:27:25'),
(23, 'H5', 'Hama Belalang Kembara', 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.', 'Solution Belum Tersedia', '1660404689.png', '2022-08-09 09:08:53', '2022-09-11 19:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `hasilhamas`
--

CREATE TABLE `hasilhamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_hama` int(11) NOT NULL,
  `hasil_diagnosa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_max` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejala_terpilih` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hasilhamas`
--

INSERT INTO `hasilhamas` (`id`, `nama`, `id_hama`, `hasil_diagnosa`, `cf_max`, `gejala_terpilih`, `file_pdf`, `created_at`, `updated_at`) VALUES
(2, 'Audy Ruslan', 17, 'a:5:{i:17;a:6:{s:7:\"id_hama\";i:17;s:9:\"nama_hama\";s:16:\"Hama Lalat Bibit\";s:9:\"code_hama\";s:6:\"GH0001\";s:10:\"image_hama\";s:14:\"1660404549.png\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:70:\"Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan\";s:4:\"code\";s:6:\"GH0002\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.6400000000000001;}i:1;a:6:{s:4:\"nama\";s:137:\"Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya\";s:4:\"code\";s:6:\"GH0004\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:1;s:15:\"hasil_perkalian\";d:0.6;}}s:8:\"hasil_cf\";d:0.8560000000000001;}i:20;a:6:{s:7:\"id_hama\";i:20;s:9:\"nama_hama\";s:16:\"Hama Ulat Grayak\";s:9:\"code_hama\";s:6:\"GH0002\";s:10:\"image_hama\";s:14:\"1660404567.jpg\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:70:\"Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan\";s:4:\"code\";s:6:\"GH0002\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:137:\"Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya\";s:4:\"code\";s:6:\"GH0004\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:21;a:6:{s:7:\"id_hama\";i:21;s:9:\"nama_hama\";s:27:\"Hama Larva Penggerek Batang\";s:9:\"code_hama\";s:6:\"GH0003\";s:10:\"image_hama\";s:14:\"1660404597.png\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:70:\"Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan\";s:4:\"code\";s:6:\"GH0002\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:137:\"Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya\";s:4:\"code\";s:6:\"GH0004\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:22;a:6:{s:7:\"id_hama\";i:22;s:9:\"nama_hama\";s:22:\"Hama Penggerek Tongkol\";s:9:\"code_hama\";s:6:\"GH0004\";s:10:\"image_hama\";s:14:\"1660404676.png\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:70:\"Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan\";s:4:\"code\";s:6:\"GH0002\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:137:\"Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya\";s:4:\"code\";s:6:\"GH0004\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:23;a:6:{s:7:\"id_hama\";i:23;s:9:\"nama_hama\";s:21:\"Hama Belalang Kembara\";s:9:\"code_hama\";s:6:\"GH0005\";s:10:\"image_hama\";s:14:\"1660404689.png\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:70:\"Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan\";s:4:\"code\";s:6:\"GH0002\";s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:137:\"Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya\";s:4:\"code\";s:6:\"GH0004\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}}', 'a:4:{i:0;d:0.8560000000000001;i:1;i:17;i:2;s:25:\"Hama Lalat Bibit (GH0001)\";i:3;s:14:\"1660404549.png\";}', 'a:2:{i:25;a:4:{s:4:\"nama\";s:70:\"Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan\";s:4:\"kode\";s:6:\"GH0002\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:5:\"Yakin\";}i:27;a:4:{s:4:\"nama\";s:137:\"Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya\";s:4:\"kode\";s:6:\"GH0004\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:5:\"Cukup\";}}', 'DiagnosaHama-Audy Ruslan-1662576689.pdf', '2022-09-07 10:51:29', '2022-09-07 10:51:34'),
(4, 'Ummul Fajri Rahmat', 20, 'a:5:{i:17;a:6:{s:7:\"id_hama\";i:17;s:9:\"nama_hama\";s:16:\"Hama Lalat Bibit\";s:9:\"code_hama\";s:6:\"GH0001\";s:10:\"image_hama\";s:14:\"1660404549.png\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:68:\"Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.\";s:4:\"code\";s:6:\"GH0005\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.36;}i:1;a:6:{s:4:\"nama\";s:45:\"Biasanya larva berada di permukaan bawah daun\";s:4:\"code\";s:6:\"GH0007\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:2;a:6:{s:4:\"nama\";s:30:\"Membuat lubang kecil pada daun\";s:4:\"code\";s:6:\"GH0009\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0.36;}i:20;a:6:{s:7:\"id_hama\";i:20;s:9:\"nama_hama\";s:16:\"Hama Ulat Grayak\";s:9:\"code_hama\";s:6:\"GH0002\";s:10:\"image_hama\";s:14:\"1660404567.jpg\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:68:\"Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.\";s:4:\"code\";s:6:\"GH0005\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:45:\"Biasanya larva berada di permukaan bawah daun\";s:4:\"code\";s:6:\"GH0007\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0.6;s:15:\"hasil_perkalian\";d:0.48;}i:2;a:6:{s:4:\"nama\";s:30:\"Membuat lubang kecil pada daun\";s:4:\"code\";s:6:\"GH0009\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0.48;}i:21;a:6:{s:7:\"id_hama\";i:21;s:9:\"nama_hama\";s:27:\"Hama Larva Penggerek Batang\";s:9:\"code_hama\";s:6:\"GH0003\";s:10:\"image_hama\";s:14:\"1660404597.png\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:68:\"Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.\";s:4:\"code\";s:6:\"GH0005\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:45:\"Biasanya larva berada di permukaan bawah daun\";s:4:\"code\";s:6:\"GH0007\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:2;a:6:{s:4:\"nama\";s:30:\"Membuat lubang kecil pada daun\";s:4:\"code\";s:6:\"GH0009\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0.8;s:15:\"hasil_perkalian\";d:0.32000000000000006;}}s:8:\"hasil_cf\";d:0.32000000000000006;}i:22;a:6:{s:7:\"id_hama\";i:22;s:9:\"nama_hama\";s:22:\"Hama Penggerek Tongkol\";s:9:\"code_hama\";s:6:\"GH0004\";s:10:\"image_hama\";s:14:\"1660404676.png\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:68:\"Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.\";s:4:\"code\";s:6:\"GH0005\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:45:\"Biasanya larva berada di permukaan bawah daun\";s:4:\"code\";s:6:\"GH0007\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:2;a:6:{s:4:\"nama\";s:30:\"Membuat lubang kecil pada daun\";s:4:\"code\";s:6:\"GH0009\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:23;a:6:{s:7:\"id_hama\";i:23;s:9:\"nama_hama\";s:21:\"Hama Belalang Kembara\";s:9:\"code_hama\";s:6:\"GH0005\";s:10:\"image_hama\";s:14:\"1660404689.png\";s:6:\"gejala\";a:3:{i:0;a:5:{s:4:\"nama\";s:68:\"Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.\";s:4:\"code\";s:6:\"GH0005\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:45:\"Biasanya larva berada di permukaan bawah daun\";s:4:\"code\";s:6:\"GH0007\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:2;a:6:{s:4:\"nama\";s:30:\"Membuat lubang kecil pada daun\";s:4:\"code\";s:6:\"GH0009\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.4\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}}', 'a:4:{i:0;d:0.48;i:1;i:20;i:2;s:25:\"Hama Ulat Grayak (GH0002)\";i:3;s:14:\"1660404567.jpg\";}', 'a:3:{i:28;a:4:{s:4:\"nama\";s:68:\"Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.\";s:4:\"kode\";s:6:\"GH0005\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:5:\"Cukup\";}i:30;a:4:{s:4:\"nama\";s:45:\"Biasanya larva berada di permukaan bawah daun\";s:4:\"kode\";s:6:\"GH0007\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:5:\"Yakin\";}i:32;a:4:{s:4:\"nama\";s:30:\"Membuat lubang kecil pada daun\";s:4:\"kode\";s:6:\"GH0009\";s:7:\"cf_user\";s:3:\"0.4\";s:9:\"keyakinan\";s:12:\"Kurang Yakin\";}}', 'DiagnosaHama-Ummul Fajri Rahmat-1662578683.pdf', '2022-09-07 11:24:43', '2022-09-07 11:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `hasilpenyakits`
--

CREATE TABLE `hasilpenyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `hasil_diagnosa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_max` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejala_terpilih` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hasilpenyakits`
--

INSERT INTO `hasilpenyakits` (`id`, `nama`, `id_penyakit`, `hasil_diagnosa`, `cf_max`, `gejala_terpilih`, `file_pdf`, `created_at`, `updated_at`) VALUES
(7, 'Fadli Nur Zaman', 3, 'a:5:{i:3;a:5:{s:13:\"nama_penyakit\";s:10:\"Hawar Daun\";s:13:\"code_penyakit\";s:6:\"CP0001\";s:14:\"image_penyakit\";s:14:\"1660217383.jpg\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:163:\"Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.\";s:4:\"code\";s:6:\"CP0003\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:102:\"Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun\";s:4:\"code\";s:6:\"CP0005\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:4;a:5:{s:13:\"nama_penyakit\";s:5:\"Bulai\";s:13:\"code_penyakit\";s:6:\"CP0002\";s:14:\"image_penyakit\";s:14:\"1660217523.jpg\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:163:\"Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.\";s:4:\"code\";s:6:\"CP0003\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:102:\"Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun\";s:4:\"code\";s:6:\"CP0005\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:5;a:5:{s:13:\"nama_penyakit\";s:22:\"Busuk Tongkol Fusarium\";s:13:\"code_penyakit\";s:6:\"CP0003\";s:14:\"image_penyakit\";s:14:\"1660217581.jpg\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:163:\"Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.\";s:4:\"code\";s:6:\"CP0003\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:102:\"Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun\";s:4:\"code\";s:6:\"CP0005\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:6;a:5:{s:13:\"nama_penyakit\";s:10:\"Karat Daun\";s:13:\"code_penyakit\";s:6:\"CP0004\";s:14:\"image_penyakit\";s:15:\"1660217633.jpeg\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:163:\"Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.\";s:4:\"code\";s:6:\"CP0003\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:102:\"Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun\";s:4:\"code\";s:6:\"CP0005\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}i:7;a:5:{s:13:\"nama_penyakit\";s:26:\"Virus Mosaik Kerdil Jagung\";s:13:\"code_penyakit\";s:6:\"CP0005\";s:14:\"image_penyakit\";s:14:\"1660217698.jpg\";s:6:\"gejala\";a:2:{i:0;a:5:{s:4:\"nama\";s:163:\"Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.\";s:4:\"code\";s:6:\"CP0003\";s:7:\"cf_user\";s:3:\"0.6\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}i:1;a:6:{s:4:\"nama\";s:102:\"Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun\";s:4:\"code\";s:6:\"CP0005\";s:5:\"image\";N;s:7:\"cf_user\";s:3:\"0.8\";s:7:\"cf_role\";d:0;s:15:\"hasil_perkalian\";d:0;}}s:8:\"hasil_cf\";d:0;}}', 'a:4:{i:0;d:0;i:1;i:3;i:2;s:19:\"Hawar Daun (CP0001)\";i:3;s:14:\"1660217383.jpg\";}', 'a:2:{i:4;a:4:{s:4:\"nama\";s:163:\"Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.\";s:4:\"kode\";s:6:\"CP0003\";s:7:\"cf_user\";s:3:\"0.6\";s:9:\"keyakinan\";s:5:\"Cukup\";}i:6;a:4:{s:4:\"nama\";s:102:\"Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun\";s:4:\"kode\";s:6:\"CP0005\";s:7:\"cf_user\";s:3:\"0.8\";s:9:\"keyakinan\";s:5:\"Yakin\";}}', 'Diagnosapenyakit-Fadli Nur Zaman-1662576749.pdf', '2022-09-07 10:52:28', '2022-09-07 10:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `kondisihamas`
--

CREATE TABLE `kondisihamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kondisihamas`
--

INSERT INTO `kondisihamas` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Sangat Yakin', 1.00, '2022-08-09 06:23:03', '2022-08-09 06:23:03'),
(2, 'Yakin', 0.80, '2022-08-09 06:23:19', '2022-08-09 06:23:19'),
(3, 'Cukup Yakin', 0.60, '2022-08-09 06:23:37', '2022-08-09 06:23:37'),
(4, 'Sedikit Yakin', 0.40, '2022-08-09 06:23:50', '2022-08-09 06:23:50'),
(5, 'Tidak Yakin', 0.20, '2022-08-09 06:24:06', '2022-08-09 06:24:06'),
(6, 'Tidak Tahu', 0.00, '2022-08-09 06:24:30', '2022-08-09 06:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `kondisipenyakits`
--

CREATE TABLE `kondisipenyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kondisipenyakits`
--

INSERT INTO `kondisipenyakits` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Sangat Yakin', 1.00, '2022-08-10 03:12:28', '2022-08-10 03:12:28'),
(2, 'Yakin', 0.80, '2022-08-10 03:12:51', '2022-08-10 03:12:51'),
(3, 'Cukup Yakin', 0.60, '2022-08-10 03:13:54', '2022-08-10 03:13:54'),
(4, 'Sedikit Yakin', 0.40, '2022-08-10 03:14:08', '2022-08-10 03:14:08'),
(5, 'Tidak Yakin', 0.20, '2022-08-10 03:14:28', '2022-08-10 03:14:28'),
(6, 'Tidak Tahu', 0.00, '2022-08-10 03:14:43', '2022-08-10 03:14:43');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_05_032942_create_evidence_table', 1),
(6, '2022_05_05_033350_create_hypotheses_table', 1),
(7, '2022_05_05_034134_create_roles_table', 1),
(8, '2022_05_05_034746_create_histories_table', 1),
(9, '2022_05_15_002502_create_values_table', 1),
(10, '2022_05_15_010111_create_settings_table', 1),
(11, '2022_07_30_142417_create_penyakits_table', 1),
(12, '2022_07_30_212712_create_gejalahamas_table', 1),
(13, '2022_07_30_213134_create_gejalapenyakits_table', 1),
(14, '2022_07_30_213308_create_rulespenyakits_table', 1),
(15, '2022_08_03_155937_create_kondisipenyakits_table', 1),
(16, '2022_08_07_154653_create_posts_table', 1),
(17, '2022_08_07_173019_create_kondisihamas_table', 1),
(18, '2022_08_09_080943_create_hamas_table', 1),
(19, '2022_08_09_143455_create_ruleshama_table', 2),
(20, '2022_08_09_144242_create_ruleshamas_table', 3),
(21, '2022_08_09_173604_create_hasilhamas_table', 4),
(22, '2022_08_10_110059_create_penyakits_table', 5),
(23, '2022_08_11_120501_create_hasilpenyakits_table', 6),
(24, '2022_08_11_134004_create_hasilhamas_table', 7),
(25, '2022_08_12_162426_create_hasilhamas_table', 8),
(26, '2022_08_30_062045_create_riwayathamas_table', 9),
(27, '2022_08_31_010148_create_hasilhamas_table', 10),
(28, '2022_09_05_143412_create_hasilpenyakits_table', 11),
(29, '2022_09_07_175357_create_hasilhamas_table', 12),
(30, '2022_09_07_181118_create_hasilpenyakits_table', 13);

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
-- Table structure for table `penyakits`
--

CREATE TABLE `penyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `det_penyakit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `srn_penyakit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penyakits`
--

INSERT INTO `penyakits` (`id`, `code`, `name`, `det_penyakit`, `srn_penyakit`, `images`, `created_at`, `updated_at`) VALUES
(3, 'P1', 'Hawar Daun', 'Detail Penyakit Belum Tersedia', 'sdfsd', '1662959733.png', '2022-08-11 03:29:43', '2022-09-11 21:24:14'),
(4, 'P2', 'Bulai', 'sdfsdfsd', 'sdfsdfs', '1662961340.png', '2022-08-11 03:32:03', '2022-09-11 21:42:20'),
(5, 'P3', 'Busuk Tongkol Fusarium', 'sdfdsfds', 'asdas', '1662961206.png', '2022-08-11 03:33:01', '2022-09-11 21:40:06'),
(6, 'P4', 'Karat Daun', 'sfndskf', 'sdkjfnds', '1662961220.png', '2022-08-11 03:33:53', '2022-09-11 21:40:20'),
(7, 'P5', 'Virus Mosaik Kerdil Jagung', 'sdjkjdskb', 'jkdsfdskj', '1662961233.png', '2022-08-11 03:34:58', '2022-09-11 21:40:33');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `det_post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `srn_post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `evidence_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hypothesis_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_type` enum('range','select') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `evidence_name`, `hypothesis_name`, `input_type`, `created_at`, `updated_at`) VALUES
(1, 'Sistem Pakar Tanaman Jagung', '<p>Sistem pakar adalah sistem yang membantu para pakar untuk melakuakan diagnosa suatu penyakit apapun seperti penyakit pada manusia, hewan, tumbuhan dan makhluk hidup lainnya. dengan bantuan komputasi komputer untuk melakukan diagnosa berdasarkan ilmu atau pemahaman pakar.</p><p>Pada sistem pakar Exapp ini metode pakar yang digunakan untuk mendiagnosa adalah metode Ceratainty Factor. Ceratinty Factor atau faktor kepastian adalah salah satu metode sistem pakar untuk membuktikan apakah suatu fakta itu pasti ataukah tidak pasti yang berbentuk metric yang biasanya digunakan dalam sistem pakar.</p><p>Exapp memiliki kelebihan untuk menambakan jenis hipotesisi seperti penyakit dan evidence seperti gejala dan juga bisa digunakan untuk melakukan diagnosa apapun.</p>', 'Gejala', 'Penyakit', 'select', '2022-08-09 00:25:30', '2022-08-17 03:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fadli', 'admin@mail.com', '$2y$10$jXUpacz00k/NmceC7o3s9.OLW2Ho6/kVaUElKmRGWMiqVCAnvzQuG', 'admin', NULL, NULL, '2022-08-09 00:25:14', '2022-09-08 09:16:08'),
(2, 'Seorang User', 'user@mail.com', '$2y$10$renoVBFbltlUwVxHxBtoGumDoi0VYZFwSiPhqVsJUlce1bs1R/FoW', 'user', NULL, NULL, '2022-08-09 00:25:15', '2022-08-09 00:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Sangat Yakin', 1.00, '2022-08-09 00:25:30', '2022-08-09 00:25:30'),
(2, 'Yakin', 0.80, '2022-08-09 00:25:30', '2022-08-09 00:25:30'),
(3, 'Cukup', 0.60, '2022-08-09 00:25:30', '2022-08-09 00:25:30'),
(4, 'Kurang Yakin', 0.40, '2022-08-09 00:25:30', '2022-08-09 00:25:30'),
(5, 'Tidak Yakin', 0.20, '2022-08-09 00:25:30', '2022-08-09 00:25:30'),
(6, 'Tidak Tahu', 0.00, '2022-08-09 00:25:30', '2022-08-09 00:25:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gejalahamas`
--
ALTER TABLE `gejalahamas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gejalahamas_code_unique` (`code`);

--
-- Indexes for table `gejalahama_hama`
--
ALTER TABLE `gejalahama_hama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruleshamas_hama_id_foreign` (`hama_id`),
  ADD KEY `ruleshamas_gejalahama_id_foreign` (`gejalahama_id`);

--
-- Indexes for table `gejalapenyakits`
--
ALTER TABLE `gejalapenyakits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gejalapenyakits_code_unique` (`code`);

--
-- Indexes for table `gejalapenyakit_penyakit`
--
ALTER TABLE `gejalapenyakit_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rulespenyakits_penyakit_id_foreign` (`penyakit_id`),
  ADD KEY `rulespenyakits_gejalapenyakit_id_foreign` (`gejalapenyakit_id`);

--
-- Indexes for table `hamas`
--
ALTER TABLE `hamas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hamas_code_unique` (`code`);

--
-- Indexes for table `hasilhamas`
--
ALTER TABLE `hasilhamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasilpenyakits`
--
ALTER TABLE `hasilpenyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisihamas`
--
ALTER TABLE `kondisihamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisipenyakits`
--
ALTER TABLE `kondisipenyakits`
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
-- Indexes for table `penyakits`
--
ALTER TABLE `penyakits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penyakits_code_unique` (`code`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejalahamas`
--
ALTER TABLE `gejalahamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `gejalahama_hama`
--
ALTER TABLE `gejalahama_hama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `gejalapenyakits`
--
ALTER TABLE `gejalapenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gejalapenyakit_penyakit`
--
ALTER TABLE `gejalapenyakit_penyakit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `hamas`
--
ALTER TABLE `hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hasilhamas`
--
ALTER TABLE `hasilhamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hasilpenyakits`
--
ALTER TABLE `hasilpenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kondisihamas`
--
ALTER TABLE `kondisihamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kondisipenyakits`
--
ALTER TABLE `kondisipenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
