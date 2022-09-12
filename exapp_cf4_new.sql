-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 09:15 AM
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
(1, 'GH01', 'Bentuk daun berlubang-lubang atau rusak', '2022-09-11 23:10:00', '2022-09-11 23:10:00'),
(2, 'GH02', 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan', '2022-09-11 23:10:00', '2022-09-11 23:10:00'),
(3, 'GH03', 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang\n      sehingga tanaman menjadi kuning dan akhirnya', '2022-09-11 23:10:00', '2022-09-11 23:10:00'),
(4, 'GH04', 'Pertumbuhan terlambat, menguning, jaringan membusuk atau gejala sundep', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(5, 'GH05', 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(6, 'GH06', 'Larva kecil merusak daun serta serentak bergerombol dengan meninggalkan sisa-sisa epidermis\n      bagian atas, bahkan hanya menyisakan tulang daunnya saja', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(7, 'GH07', 'Biasanya larva berada di permukaan bawah daun', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(8, 'GH08', 'Umumnya hama muncul pada saat musim kemarau daun', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(9, 'GH09', 'Membuat lubang kecil pada daun', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(10, 'GH10', 'Membuat lubang gorokan pada batang, bunga jantan atau pangkal tongkol, sehingga batang tassel\n      mudah patah', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(11, 'GH11', 'Terdapat kerusakan pada bagian tongkol', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(12, 'GH12', 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke\n      tongkol.', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(13, 'GH13', 'Kotoran yang ditinggalkan larva menyebabkan bertumbuhnya jamur yang menghasilkan mikotoksin sehingga\n      tongkol rusak.', '2022-09-11 23:10:01', '2022-09-11 23:10:01'),
(14, 'GH14', 'Hama ini menyerang tanaman muda, terutama pada pucuk atau malai yang. Dapat mengakibatkan tidak\n      terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(15, 'GH15', 'Hama ini menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(16, 'GH16', 'Menyerang mulai dari tepi daun', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(17, 'GH17', 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber\n      makanan terbatas', '2022-09-11 23:10:02', '2022-09-11 23:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `gejalahama_hama`
--

CREATE TABLE `gejalahama_hama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hama_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejalahama_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalahama_hama`
--

INSERT INTO `gejalahama_hama` (`id`, `hama_id`, `gejalahama_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 0.4, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(2, '1', '2', 0.8, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(3, '1', '3', 0.8, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(4, '1', '4', 1, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(5, '1', '5', 0.6, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(6, '1', '6', 0, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(7, '1', '7', 0, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(8, '1', '8', 0, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(9, '1', '9', 0, '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(10, '1', '10', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(11, '1', '11', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(12, '1', '12', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(13, '1', '13', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(14, '1', '14', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(15, '1', '15', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(16, '1', '16', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(17, '1', '17', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(18, '2', '1', 0.4, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(19, '2', '2', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(20, '2', '3', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(21, '2', '4', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(22, '2', '5', 0, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(23, '2', '6', 0.8, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(24, '2', '7', 0.6, '2022-09-11 23:10:05', '2022-09-11 23:10:05'),
(25, '2', '8', 0.4, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(26, '2', '9', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(27, '2', '10', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(28, '2', '11', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(29, '2', '12', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(30, '2', '13', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(31, '2', '14', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(32, '2', '15', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(33, '2', '16', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(34, '2', '17', 0, '2022-09-11 23:10:06', '2022-09-11 23:10:06'),
(35, '3', '1', 0.4, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(36, '3', '2', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(37, '3', '3', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(38, '3', '4', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(39, '3', '5', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(40, '3', '6', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(41, '3', '7', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(42, '3', '8', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(43, '3', '9', 0.8, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(44, '3', '10', 1, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(45, '3', '11', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(46, '3', '12', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(47, '3', '13', 0, '2022-09-11 23:10:07', '2022-09-11 23:10:07'),
(48, '3', '14', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(49, '3', '15', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(50, '3', '16', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(51, '3', '17', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(52, '4', '1', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(53, '4', '2', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(54, '4', '3', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(55, '4', '4', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(56, '4', '5', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(57, '4', '6', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(58, '4', '7', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(59, '4', '8', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(60, '4', '9', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(61, '4', '10', 0, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(62, '4', '11', 0.4, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(63, '4', '12', 0.8, '2022-09-11 23:10:08', '2022-09-11 23:10:08'),
(64, '4', '13', 1, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(65, '4', '14', 0.6, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(66, '4', '15', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(67, '4', '16', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(68, '4', '17', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(69, '5', '1', 0.4, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(70, '5', '2', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(71, '5', '3', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(72, '5', '4', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(73, '5', '5', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(74, '5', '6', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(75, '5', '7', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(76, '5', '8', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(77, '5', '9', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(78, '5', '10', 0, '2022-09-11 23:10:09', '2022-09-11 23:10:09'),
(79, '5', '11', 0, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(80, '5', '12', 0, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(81, '5', '13', 0, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(82, '5', '14', 0, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(83, '5', '15', 0.8, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(84, '5', '16', 0.8, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(85, '5', '17', 0.6, '2022-09-11 23:10:10', '2022-09-11 23:10:10');

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
(1, 'GP01', 'Terdapat bercak-bercak pada daun', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(2, 'GP02', 'Gejala awalnya muncul bercak-bercak kecil, jorong, hijau tua/hijau kelabu kebasahan yang kemudian menjadi coklat kehijauan.', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(3, 'GP03', 'Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(4, 'GP04', 'Spora banyak terbentuk pada kedua sisi bercak pada kondisi banyak embun atau setelah turun hujan, yang menyebabkan bercak berwarna hijau tua beledu, yang makin ke tepi warnanya makin muda.', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(5, 'GP05', 'Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan\n        daun', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(6, 'GP06', 'Warna daun menjadi memudar', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(7, 'GP07', 'Gejala daun yang terinfeksi berwarna khlorotik, biasanya memanjang sejajar tulang daun, dengan batas yang jelas, dan bagian daun yang masih sehat berwarna hijau normal', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(8, 'GP08', 'Warna putih seperti tepung pada permukaan bawah maupun atas bagian daun yang berwarna khlorotik, tampak dengan jelas pada pagi hari.', '2022-09-11 23:10:02', '2022-09-11 23:10:02'),
(9, 'GP09', 'Daun yang khlorotik sistemik menjadi sempit dan kaku.', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(10, 'GP10', 'Tanaman menjadi terhambat pertumbuhannya dan pembentukan tongkol terganggu sampai tidak bertongkol sama sekali.', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(11, 'GP11', 'Tanaman yang terinfeksi sistemik sejak muda di bawah umur 1 bulan biasanya mati.', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(12, 'GP12', 'Daun menjadi kering', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(13, 'GP13', 'Tanaman jagung tampak layu atau seluruh daun mengering. Gejala ini umumnya terjadi pada stadia generatif, yaitu setelah fase pembungaan', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(14, 'GP14', 'Pangkal batang yang terinfeksi berubah warna dari hijau menjadi kecoklatan, bagian dalam busuk, sehingga mudah rebah, dan bagian kulit luarnya tipis.', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(15, 'GP15', 'Pada pangkal batang yang terinfeksi tersebut terlihat warna merah jambu, merah kecoklatan atau coklat', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(16, 'GP16', 'Terbentuk bisul pada kedua permukaan daun bagian atas dan bawah', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(17, 'GP17', 'Bisul berwarna coklat kemerahan tersebar pada permukaan daun dan berubah warna menjadi hitam kecoklatan setelah teliospora berkembang', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(18, 'GP18', 'Pada saat terjadi penularan berat, daun menjadi kering.', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(19, 'GP19', 'Gejala jelas tampak pada daun muda, terutama pada daun yang baru membuka sebagian, berupa mosaik atau adanya warna-warna hijau muda dan tua.', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(20, 'GP20', 'Terdapat warna hijau muda atau kekuning-kuningan biasanya memanjang sejajar dengan tulang daun', '2022-09-11 23:10:03', '2022-09-11 23:10:03'),
(21, 'GP21', 'Tanaman terinfeksi sedikit mengalami hambatan pertumbuhan (stunting) dan ukuran tongkol serta jumlah biji berkurang.', '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(22, 'GP22', 'Gejala yang semula jelas pada daun muda, dapat menjadi tidak jelas setelah daun menjadi lebih tua terutama pada suhu tinggi.', '2022-09-11 23:10:04', '2022-09-11 23:10:04'),
(23, 'GP23', 'Gejala dapat mulai tampak pada umur tanaman 15 hari setelah berkecambah.', '2022-09-11 23:10:04', '2022-09-11 23:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `gejalapenyakit_penyakit`
--

CREATE TABLE `gejalapenyakit_penyakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penyakit_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejalapenyakit_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalapenyakit_penyakit`
--

INSERT INTO `gejalapenyakit_penyakit` (`id`, `penyakit_id`, `gejalapenyakit_id`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 0.4, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(2, '1', '2', 1, '2022-09-11 23:10:10', '2022-09-11 23:10:10'),
(3, '1', '3', 1, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(4, '1', '4', 0.8, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(5, '1', '5', 0.8, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(6, '1', '6', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(7, '1', '7', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(8, '1', '8', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(9, '1', '9', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(10, '1', '10', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(11, '1', '11', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(12, '1', '12', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(13, '1', '13', 0, '2022-09-11 23:10:11', '2022-09-11 23:10:11'),
(14, '1', '14', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(15, '1', '15', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(16, '1', '16', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(17, '1', '17', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(18, '1', '18', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(19, '1', '19', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(20, '1', '20', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(21, '1', '21', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(22, '1', '22', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(23, '1', '23', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(24, '2', '1', 0, '2022-09-11 23:10:12', '2022-09-11 23:10:12'),
(25, '2', '2', 0, '2022-09-11 23:10:13', '2022-09-11 23:10:13'),
(26, '2', '3', 0, '2022-09-11 23:10:13', '2022-09-11 23:10:13'),
(27, '2', '4', 0, '2022-09-11 23:10:13', '2022-09-11 23:10:13'),
(28, '2', '5', 0, '2022-09-11 23:10:13', '2022-09-11 23:10:13'),
(29, '2', '6', 0.4, '2022-09-11 23:10:13', '2022-09-11 23:10:13'),
(30, '2', '7', 1, '2022-09-11 23:10:13', '2022-09-11 23:10:13'),
(31, '2', '8', 1, '2022-09-11 23:10:13', '2022-09-11 23:10:13'),
(32, '2', '9', 0.8, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(33, '2', '10', 0.8, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(34, '2', '11', 1, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(35, '2', '12', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(36, '2', '13', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(37, '2', '14', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(38, '2', '15', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(39, '2', '16', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(40, '2', '17', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(41, '2', '18', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(42, '2', '19', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(43, '2', '20', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(44, '2', '21', 0, '2022-09-11 23:10:14', '2022-09-11 23:10:14'),
(45, '2', '22', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(46, '2', '23', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(47, '3', '1', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(48, '3', '2', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(49, '3', '3', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(50, '3', '4', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(51, '3', '5', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(52, '3', '6', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(53, '3', '7', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(54, '3', '8', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(55, '3', '9', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(56, '3', '10', 0, '2022-09-11 23:10:15', '2022-09-11 23:10:15'),
(57, '3', '11', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(58, '3', '12', 0.4, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(59, '3', '13', 1, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(60, '3', '14', 1, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(61, '3', '15', 0.8, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(62, '3', '16', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(63, '3', '17', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(64, '3', '18', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(65, '3', '19', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(66, '3', '20', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(67, '3', '21', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(68, '3', '22', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(69, '3', '23', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(70, '4', '1', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(71, '4', '2', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(72, '4', '3', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(73, '4', '4', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(74, '4', '5', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(75, '4', '6', 0, '2022-09-11 23:10:16', '2022-09-11 23:10:16'),
(76, '4', '7', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(77, '4', '8', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(78, '4', '9', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(79, '4', '10', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(80, '4', '11', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(81, '4', '12', 0.4, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(82, '4', '13', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(83, '4', '14', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(84, '4', '15', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(85, '4', '16', 1, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(86, '4', '17', 1, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(87, '4', '18', 0.8, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(88, '4', '19', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(89, '4', '20', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(90, '4', '21', 0, '2022-09-11 23:10:17', '2022-09-11 23:10:17'),
(91, '4', '22', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(92, '4', '23', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(93, '5', '1', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(94, '5', '2', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(95, '5', '3', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(96, '5', '4', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(97, '5', '5', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(98, '5', '6', 0.4, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(99, '5', '7', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(100, '5', '8', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(101, '5', '9', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(102, '5', '10', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(103, '5', '11', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(104, '5', '12', 0, '2022-09-11 23:10:18', '2022-09-11 23:10:18'),
(105, '5', '13', 0, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(106, '5', '14', 0, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(107, '5', '15', 0, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(108, '5', '16', 0, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(109, '5', '17', 0, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(110, '5', '18', 0, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(111, '5', '19', 1, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(112, '5', '20', 0.8, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(113, '5', '21', 0.8, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(114, '5', '22', 0.8, '2022-09-11 23:10:19', '2022-09-11 23:10:19'),
(115, '5', '23', 1, '2022-09-11 23:10:19', '2022-09-11 23:10:19');

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
(1, 'H1', 'Hama Lalat Bibit', 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.', 'Solution Belum Tersedia', '1660404549.png', '2022-09-11 23:09:58', '2022-09-11 23:09:58'),
(2, 'H2', 'Hama Ulat Grayak', 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.', 'Solution Belum Tersedia', '1660404567.jpg', '2022-09-11 23:09:58', '2022-09-11 23:09:58'),
(3, 'H3', 'Hama Larva Penggerek Batang', 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.', 'Solution Belum Tersedia', '1660404597.png', '2022-09-11 23:09:58', '2022-09-11 23:09:58'),
(4, 'H4', 'Hama Penggerek Tongkol', 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.', 'Solution Belum Tersedia', '1660404676.png', '2022-09-11 23:09:58', '2022-09-11 23:09:58'),
(5, 'H5', 'Hama Belalang Kembara ', 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan\n        satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.', 'Solution Belum Tersedia', '1660404689.png', '2022-09-11 23:09:58', '2022-09-11 23:09:58');

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
(5, '2022_05_15_002502_create_values_table', 1),
(6, '2022_05_15_010111_create_settings_table', 1),
(7, '2022_07_30_212712_create_gejalahamas_table', 1),
(8, '2022_07_30_213134_create_gejalapenyakits_table', 1),
(9, '2022_08_07_154653_create_posts_table', 1),
(10, '2022_08_09_080943_create_hamas_table', 1),
(11, '2022_08_10_110059_create_penyakits_table', 1),
(12, '2022_09_07_175357_create_hasilhamas_table', 1),
(13, '2022_09_07_181118_create_hasilpenyakits_table', 1),
(14, '2022_09_12_061426_create_gejalahama_hama_table', 1),
(15, '2022_09_12_061518_create_gejalapenyakit_penyakit_table', 1);

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
(1, 'P1', 'Penyakit Hawar Daun', 'Hawar daun Exserohilum turcicum (Pass.) Leonard et Suggs merupakan penyakit pada tanaman jagung\n        yang disebabkan oleh jamur E. turcicum (Pass.) Leonard et Suggs', 'Solution Belum Tersedia', '1662959733.png', '2022-09-11 23:09:59', '2022-09-11 23:09:59'),
(2, 'P2', 'Penyakit Bulai', 'Penyakit bulai merupakan penyakit utama pada tanaman jagung yang disebabkan oleh jamur\n        Peronosclerospora Maydis. Perkembangan penyakit ini dimulai dengan infeksi konidia (spora jamur) yang jatuh di permukaan daun jagung. Konidia tersebut kemudian berkembang dan masuk ke dalam jaringan tanaman muda melalui stomata dan selanjutnya berkembang hingga ke titik tumbuh tanaman.', 'Solution Belum Tersedia', '1662961340.png', '2022-09-11 23:09:59', '2022-09-11 23:09:59'),
(3, 'P3', 'Penyakit Busuk Tongkol Fusarium', 'Penyakit busuk tongkol Fusarium disebabkan oleh infeksi cendawan Fusarium moniliforme dan penyakit\n        busuk batang jagung ini tersebar luas di Eropa, Amerika, Afrika, Australia, dan Asia.', 'Solution Belum Tersedia', '1662961206.png', '2022-09-11 23:09:59', '2022-09-11 23:09:59'),
(4, 'P4', 'Penyakit Karat Daun', 'Penyakit karat adalah segolongan penyakit tumbuhan yang disebabkan oleh golongan cendawan (fungi)\n        yang termasuk dalam bangsa (ordo) Pucciniales. Penyakit ini paling jelas gejalanya terlihat pada daun, sehingga\n        disebut karat daun.', 'Solution Belum Tersedia', '1662961220.png', '2022-09-11 23:10:00', '2022-09-11 23:10:00'),
(5, 'P5', 'Penyakit Virus Mosaik Kerdil Jagung', 'Penyakit ini merupakan penyakit virus jagung yang pertama dilaporkan di Indonesia. Penyebarannya sangat luas, meliputi hampir di semua negara penghasil jagung di dunia.', 'Solution Belum Tersedia', '1662961233.png', '2022-09-11 23:10:00', '2022-09-11 23:10:00');

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
(1, 'Sistem Pakar Penyakit Manusia', '<p>Sistem pakar adalah sistem yang membantu para pakar untuk melakuakan diagnosa suatu penyakit apapun seperti penyakit pada manusia, hewan, tumbuhan dan makhluk hidup lainnya. dengan bantuan komputasi komputer untuk melakukan diagnosa berdasarkan ilmu atau pemahaman pakar.</p><p>Pada sistem pakar Exapp ini metode pakar yang digunakan untuk mendiagnosa adalah metode Ceratainty Factor. Ceratinty Factor atau faktor kepastian adalah salah satu metode sistem pakar untuk membuktikan apakah suatu fakta itu pasti ataukah tidak pasti yang berbentuk metric yang biasanya digunakan dalam sistem pakar.</p><p>Exapp memiliki kelebihan untuk menambakan jenis hipotesisi seperti penyakit dan evidence seperti gejala dan juga bisa digunakan untuk melakukan diagnosa apapun.</p>', 'Gejala', 'Penyakit', 'select', '2022-09-11 23:10:21', '2022-09-11 23:10:21');

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
(1, 'Fadli', 'admin@mail.com', '$2y$10$8iJlRC1mPmmRwQzD9D8ITegbEmmL7KOmf10lEuiMEreflQH.2KLvS', 'admin', NULL, NULL, '2022-09-11 23:10:20', '2022-09-11 23:10:20'),
(2, 'User', 'user@mail.com', '$2y$10$iyVe0s.v8YBHIH2wm/0VvuT20VJr6dDJypv1PUQNSsNP4ItsI1Syi', 'user', NULL, NULL, '2022-09-11 23:10:20', '2022-09-11 23:10:20');

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
(1, 'Sangat Yakin', 1.00, '2022-09-11 23:10:20', '2022-09-11 23:10:20'),
(2, 'Yakin', 0.80, '2022-09-11 23:10:20', '2022-09-11 23:10:20'),
(3, 'Cukup', 0.60, '2022-09-11 23:10:20', '2022-09-11 23:10:20'),
(4, 'Kurang Yakin', 0.40, '2022-09-11 23:10:20', '2022-09-11 23:10:20'),
(5, 'Tidak Yakin', 0.20, '2022-09-11 23:10:21', '2022-09-11 23:10:21'),
(6, 'Tidak Tahu', 0.00, '2022-09-11 23:10:21', '2022-09-11 23:10:21');

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gejalahama_hama`
--
ALTER TABLE `gejalahama_hama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `gejalapenyakits`
--
ALTER TABLE `gejalapenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gejalapenyakit_penyakit`
--
ALTER TABLE `gejalapenyakit_penyakit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `hamas`
--
ALTER TABLE `hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hasilhamas`
--
ALTER TABLE `hasilhamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasilpenyakits`
--
ALTER TABLE `hasilpenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
