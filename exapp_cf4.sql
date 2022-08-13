-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2022 at 01:23 PM
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
-- Table structure for table `evidence`
--

CREATE TABLE `evidence` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evidence`
--

INSERT INTO `evidence` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'GH1', 'Bentuk daun berlubang-lubang atau rusak', '2022-08-09 00:25:15', '2022-08-09 00:25:15'),
(2, 'GH2', 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan', '2022-08-09 00:25:15', '2022-08-09 00:25:15'),
(3, 'GH3', 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang\n            sehingga tanaman menjadi kuning dan akhirnya', '2022-08-09 00:25:15', '2022-08-09 00:25:15'),
(4, 'GH4', 'Pertumbuhan terlambat, menguning, jaringan membusuk atau gejala sundep', '2022-08-09 00:25:15', '2022-08-09 00:25:15'),
(5, 'GH5', 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-08-09 00:25:15', '2022-08-09 00:25:15'),
(6, 'GH6', 'Larva kecil merusak daun serta serentak bergerombol dengan meninggalkan sisa-sisa epidermis\n            bagian atas, bahkan hanya menyisakan tulang daunnya saja', '2022-08-09 00:25:15', '2022-08-09 00:25:15'),
(7, 'GH7', 'Biasanya larva berada di permukaan bawah daun', '2022-08-09 00:25:15', '2022-08-09 00:25:15'),
(8, 'GH8', 'Umumnya hama muncul pada saat musim kemarau daun', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(9, 'GH9', 'Membuat lubang kecil pada daun', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(10, 'GH10', 'Membuat lubang gorokan pada batang, bunga jantan atau pangkal tongkol, sehingga batang tassel\n            mudah patah', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(11, 'GH11', 'Terdapat kerusakan pada bagian tongkol', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(12, 'GH12', 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke\n        tongkol.', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(13, 'GH13', 'Kotoran yang ditinggalkan larva menyebabkan bertumbuhnya jamur yang menghasilkan mikotoksin sehingga\n        tongkol rusak.', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(14, 'GH14', 'Hama ini menyerang tanaman muda, terutama pada pucuk atau malai yang. Dapat mengakibatkan tidak\n        terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(15, 'GH15', 'Hama ini menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(16, 'GH16', 'Menyerang mulai dari tepi daun', '2022-08-09 00:25:16', '2022-08-09 00:25:16'),
(17, 'GH17', 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber\n        makanan terbatas', '2022-08-09 00:25:17', '2022-08-09 00:25:17');

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
(24, 'GH0001', 'Bentuk daun berlubang-lubang atau rusak', NULL, NULL),
(25, 'GH0002', 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan', '2022-08-09 08:34:45', '2022-08-09 08:35:12'),
(26, 'GH0003', 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya', '2022-08-09 08:52:41', '2022-08-09 08:52:41'),
(27, 'GH0004', 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya', '2022-08-09 08:53:31', '2022-08-09 08:53:31'),
(28, 'GH0005', 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-08-09 08:53:47', '2022-08-09 08:53:47'),
(29, 'GH0006', 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-08-09 08:54:15', '2022-08-09 08:54:15'),
(30, 'GH0007', 'Biasanya larva berada di permukaan bawah daun', '2022-08-09 08:54:25', '2022-08-09 08:54:25'),
(31, 'GH0008', 'Umumnya hama muncul pada saat musim kemarau daun', '2022-08-09 08:54:36', '2022-08-09 08:54:36'),
(32, 'GH0009', 'Membuat lubang kecil pada daun', '2022-08-09 08:54:47', '2022-08-09 08:54:47'),
(33, 'GH0010', 'Membuat lubang kecil pada daun', '2022-08-09 08:54:59', '2022-08-09 08:54:59'),
(34, 'GH0011', 'Terdapat kerusakan pada bagian tongkol', '2022-08-09 08:55:08', '2022-08-09 08:55:08'),
(35, 'GH0012', 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke tongkol.', '2022-08-09 08:55:17', '2022-08-09 08:55:37'),
(36, 'GH0013', 'Kotoran yang ditinggalkan larva menyebabkan bertum...', '2022-08-09 08:55:47', '2022-08-09 08:55:47'),
(37, 'GH0014', 'Hama ini menyerang tanaman muda, terutama pada pucuk atau malai yang. Dapat mengakibatkan tidak terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati', '2022-08-09 08:56:06', '2022-08-09 08:56:06'),
(38, 'GH0015', 'Hama ini menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang', '2022-08-09 08:56:17', '2022-08-09 08:56:17'),
(39, 'GH0016', 'Menyerang mulai dari tepi daun', '2022-08-09 08:56:37', '2022-08-09 08:56:37'),
(40, 'GH0017', 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber makanan terbatas', '2022-08-09 08:57:06', '2022-08-09 08:57:06');

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
(3, 'CP0002', 'Gejala awalnya muncul bercak-bercak kecil, jorong, hijau tua/hijau kelabu kebasahan yang kemudian menjadi coklat kehijauan.', '2022-08-11 03:16:47', '2022-08-11 03:16:47'),
(4, 'CP0003', 'Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.', '2022-08-11 03:16:56', '2022-08-11 03:16:56'),
(5, 'CP0004', 'Spora banyak terbentuk pada kedua sisi bercak pada kondisi banyak embun atau setelah turun hujan, yang menyebabkan bercak berwarna hijau tua beledu, yang makin ke tepi warnanya makin muda.', '2022-08-11 03:19:21', '2022-08-11 03:19:21'),
(6, 'CP0005', 'Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan daun', '2022-08-11 03:19:41', '2022-08-11 03:19:41'),
(7, 'CP0006', 'Warna daun menjadi memudar', '2022-08-11 03:19:57', '2022-08-11 03:19:57'),
(8, 'CP0007', 'Gejala daun yang terinfeksi berwarna khlorotik, biasanya memanjang sejajar tulang daun, dengan batas yang jelas, dan bagian daun yang masih sehat berwarna hijau normal', '2022-08-11 03:20:05', '2022-08-11 03:20:05'),
(9, 'CP0008', 'Warna putih seperti tepung pada permukaan bawah maupun atas bagian daun yang berwarna khlorotik, tampak dengan jelas pada pagi hari.', '2022-08-11 03:20:15', '2022-08-11 03:20:15'),
(10, 'CP0009', 'Daun yang khlorotik sistemik menjadi sempit dan kaku.', '2022-08-11 03:20:24', '2022-08-11 03:20:24'),
(11, 'CP0010', 'Tanaman menjadi terhambat pertumbuhannya dan pembentukan tongkol terganggu sampai tidak bertongkol sama sekali.', '2022-08-11 03:20:33', '2022-08-11 03:20:33'),
(12, 'CP0011', 'Tanaman yang terinfeksi sistemik sejak muda di bawah umur 1 bulan biasanya mati.', '2022-08-11 03:20:42', '2022-08-11 03:20:42'),
(13, 'CP0012', 'Daun menjadi kering', '2022-08-11 03:22:39', '2022-08-11 03:22:39'),
(14, 'CP0013', 'Tanaman jagung tampak layu atau seluruh daun mengering. Gejala ini umumnya terjadi pada stadia generatif, yaitu setelah fase pembungaan', '2022-08-11 03:22:49', '2022-08-11 03:22:49'),
(15, 'CP0014', 'Pangkal batang yang terinfeksi berubah warna dari hijau menjadi kecoklatan, bagian dalam busuk, sehingga mudah rebah, dan bagian kulit luarnya tipis.', '2022-08-11 03:22:58', '2022-08-11 03:22:58'),
(16, 'CP0015', 'Pada pangkal batang yang terinfeksi tersebut terlihat warna merah jambu, merah kecoklatan atau coklat.', '2022-08-11 03:23:09', '2022-08-11 03:23:09'),
(17, 'CP0016', 'Terbentuk bisul pada kedua permukaan daun bagian atas dan bawah', '2022-08-11 03:23:18', '2022-08-11 03:23:18'),
(18, 'CP0017', 'Bisul berwarna coklat kemerahan tersebar pada permukaan daun dan berubah warna menjadi hitam kecoklatan setelah teliospora berkembang', '2022-08-11 03:23:27', '2022-08-11 03:23:27'),
(19, 'CP0018', 'Pada saat terjadi penularan berat, daun menjadi kering.', '2022-08-11 03:23:35', '2022-08-11 03:23:35'),
(20, 'CP0019', 'Gejala jelas tampak pada daun muda, terutama pada daun yang baru membuka sebagian, berupa mosaik atau adanya warna-warna hijau muda dan tua.', '2022-08-11 03:23:44', '2022-08-11 03:23:44'),
(21, 'CP0020', 'Terdapat warna hijau muda atau kekuning-kuningan biasanya memanjang sejajar dengan tulang daun', '2022-08-11 03:23:53', '2022-08-11 03:23:53'),
(22, 'CP0021', 'Tanaman terinfeksi sedikit mengalami hambatan pertumbuhan (stunting) dan ukuran tongkol serta jumlah biji berkurang.', '2022-08-11 03:24:04', '2022-08-11 03:24:04'),
(23, 'CP0022', 'Gejala yang semula jelas pada daun muda, dapat menjadi tidak jelas setelah daun menjadi lebih tua terutama pada suhu tinggi.', '2022-08-11 03:24:11', '2022-08-11 03:24:11'),
(24, 'CP0023', 'Gejala dapat mulai tampak pada umur tanaman 15 hari setelah berkecambah.', '2022-08-11 03:24:19', '2022-08-11 03:24:19'),
(25, 'CP001', 'Terdapat bercak-bercak pada daun', '2022-08-11 03:44:53', '2022-08-11 03:44:53');

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
(17, 'GH0001', 'Hama Lalat Bibit', 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.', 'Solution Belum Tersedia', '1660064555.png', NULL, '2022-08-09 09:02:35'),
(20, 'GH0002', 'Hama Ulat Grayak', 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.', 'Solution Belum Tersedia', '1660064804.jpg', '2022-08-09 09:06:44', '2022-08-09 09:06:44'),
(21, 'GH0003', 'Hama Larva Penggerek Batang', 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.', 'Solution Belum Tersedia', '1660064873.jpg', '2022-08-09 09:07:53', '2022-08-09 09:07:53'),
(22, 'GH0004', 'Hama Penggerek Tongkol', 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.', 'Solution Belum Tersedia', '1660064902.png', '2022-08-09 09:08:22', '2022-08-09 09:08:22'),
(23, 'GH0005', 'Hama Belalang Kembara', 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.', 'Solution Belum Tersedia', '1660064933.jpg', '2022-08-09 09:08:53', '2022-08-09 09:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `hasilhamas`
--

CREATE TABLE `hasilhamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hama_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejalahama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisihama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hasilhamas`
--

INSERT INTO `hasilhamas` (`id`, `hama_id`, `name`, `description`, `hama`, `gejalahama`, `kondisihama`, `value`, `created_at`, `updated_at`) VALUES
(6, 17, 'Audy Ruslan', 'ndsjkfnsdkn', 'a:5:{i:0;a:5:{s:2:\"id\";i:17;s:4:\"nama\";s:16:\"Hama Lalat Bibit\";s:3:\"hsl\";s:5:\"60.48\";s:4:\"slsi\";s:23:\"Solution Belum Tersedia\";s:3:\"img\";s:14:\"1660064555.png\";}i:1;a:5:{s:2:\"id\";i:20;s:4:\"nama\";s:16:\"Hama Ulat Grayak\";s:3:\"hsl\";s:5:\"32.00\";s:4:\"slsi\";s:23:\"Solution Belum Tersedia\";s:3:\"img\";s:14:\"1660064804.jpg\";}i:2;a:5:{s:2:\"id\";i:21;s:4:\"nama\";s:27:\"Hama Larva Penggerek Batang\";s:3:\"hsl\";s:4:\"0.00\";s:4:\"slsi\";s:23:\"Solution Belum Tersedia\";s:3:\"img\";s:14:\"1660064873.jpg\";}i:3;a:5:{s:2:\"id\";i:22;s:4:\"nama\";s:22:\"Hama Penggerek Tongkol\";s:3:\"hsl\";s:4:\"0.00\";s:4:\"slsi\";s:23:\"Solution Belum Tersedia\";s:3:\"img\";s:14:\"1660064902.png\";}i:4;a:5:{s:2:\"id\";i:23;s:4:\"nama\";s:21:\"Hama Belalang Kembara\";s:3:\"hsl\";s:4:\"0.00\";s:4:\"slsi\";s:23:\"Solution Belum Tersedia\";s:3:\"img\";s:14:\"1660064933.jpg\";}}', 'a:15:{i:0;a:1:{s:6:\"gejala\";i:25;}i:1;a:1:{s:6:\"gejala\";i:28;}i:2;a:1:{s:6:\"gejala\";i:31;}i:3;a:1:{s:6:\"gejala\";i:25;}i:4;a:1:{s:6:\"gejala\";i:28;}i:5;a:1:{s:6:\"gejala\";i:31;}i:6;a:1:{s:6:\"gejala\";i:25;}i:7;a:1:{s:6:\"gejala\";i:28;}i:8;a:1:{s:6:\"gejala\";i:31;}i:9;a:1:{s:6:\"gejala\";i:25;}i:10;a:1:{s:6:\"gejala\";i:28;}i:11;a:1:{s:6:\"gejala\";i:31;}i:12;a:1:{s:6:\"gejala\";i:25;}i:13;a:1:{s:6:\"gejala\";i:28;}i:14;a:1:{s:6:\"gejala\";i:31;}}', 'a:15:{i:0;a:2:{s:8:\"cf_pakar\";d:0.8;s:7:\"cf_user\";s:3:\"0.6\";}i:1;a:2:{s:8:\"cf_pakar\";d:0.6;s:7:\"cf_user\";s:3:\"0.4\";}i:2;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.8\";}i:3;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.6\";}i:4;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.4\";}i:5;a:2:{s:8:\"cf_pakar\";d:0.4;s:7:\"cf_user\";s:3:\"0.8\";}i:6;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.6\";}i:7;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.4\";}i:8;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.8\";}i:9;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.6\";}i:10;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.4\";}i:11;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.8\";}i:12;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.6\";}i:13;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.4\";}i:14;a:2:{s:8:\"cf_pakar\";d:0;s:7:\"cf_user\";s:3:\"0.8\";}}', 60.48, '2022-08-13 02:29:26', '2022-08-13 02:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `hasilpenyakits`
--

CREATE TABLE `hasilpenyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penyakit_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hasilpenyakits`
--

INSERT INTO `hasilpenyakits` (`id`, `penyakit_id`, `name`, `description`, `value`, `created_at`, `updated_at`) VALUES
(1, 3, 'Audy', 'jsdfjks', 64.00, '2022-08-11 04:13:56', '2022-08-11 04:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hypothesis_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `hypothesis_id`, `name`, `description`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jonahtan', 'A Patient', 75.40, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(2, 1, 'Zeppeli', 'A Patient', 87.60, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(3, 1, 'Speedwagon', 'A Patient', 98.70, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(4, 1, 'Erina', 'A Patient', 96.80, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(5, 1, 'Joseph', 'A Patient', 98.60, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(6, 1, 'Cesar', 'A Patient', 90.70, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(7, 1, 'Lisa Lisa', 'A Patient', 76.65, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(8, 1, 'Jotaro', 'A Patient', 67.78, '2022-08-09 00:25:31', '2022-08-09 00:25:31'),
(9, 2, 'Kakyoin', 'A Patient', 67.80, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(10, 2, 'Avdol', 'A Patient', 78.90, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(11, 2, 'Polnaref', 'A Patient', 79.70, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(12, 2, 'Josuke', 'A Patient', 87.56, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(13, 2, 'Okuyasu', 'A Patient', 56.67, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(14, 2, 'Koichi', 'A Patient', 76.89, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(15, 2, 'Rohan', 'A Patient', 87.65, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(16, 2, 'Giorno', 'A Patient', 98.76, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(17, 2, 'Bucalati', 'A Patient', 87.66, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(18, 3, 'Mista', 'A Patient', 99.65, '2022-08-09 00:25:32', '2022-08-09 00:25:32'),
(19, 3, 'Abachiro', 'A Patient', 77.76, '2022-08-09 00:25:33', '2022-08-09 00:25:33'),
(20, 3, 'Narancia', 'A Patient', 67.86, '2022-08-09 00:25:33', '2022-08-09 00:25:33'),
(21, 3, 'Jolyne', 'A Patient', 100.78, '2022-08-09 00:25:33', '2022-08-09 00:25:33'),
(22, 3, 'Ermes', 'A Patient', 87.65, '2022-08-09 00:25:33', '2022-08-09 00:25:33'),
(23, 4, 'Foo Fighters', 'A Patient', 76.55, '2022-08-09 00:25:33', '2022-08-09 00:25:33'),
(24, 4, 'Emporio', 'A Patient', 100.55, '2022-08-09 00:25:33', '2022-08-09 00:25:33'),
(25, 4, 'Weather Report', 'A Patient', 65.88, '2022-08-09 00:25:34', '2022-08-09 00:25:34'),
(26, 4, 'Dio', 'A Patient', 87.76, '2022-08-09 00:25:34', '2022-08-09 00:25:34'),
(27, 4, 'Kars', 'A Patient', 100.65, '2022-08-09 00:25:34', '2022-08-09 00:25:34'),
(28, 4, 'Kira', 'A Patient', 56.75, '2022-08-09 00:25:34', '2022-08-09 00:25:34'),
(29, 4, 'Diavolo', 'A Patient', 87.56, '2022-08-09 00:25:34', '2022-08-09 00:25:34'),
(30, 4, 'Pucci', 'A Patient', 67.88, '2022-08-09 00:25:34', '2022-08-09 00:25:34'),
(31, 1, 'Audy Ruslan', 'dsfdsfs', 60.00, '2022-08-09 11:55:23', '2022-08-09 11:55:23'),
(32, 1, 'Audy Ruslan', 'dsfdsfs', 60.00, '2022-08-09 11:57:08', '2022-08-09 11:57:08'),
(33, 1, 'Audy Ruslan', 'dsfdsfs', 60.00, '2022-08-09 11:57:53', '2022-08-09 11:57:53'),
(34, 2, 'Audy Ruslan', 'asdasdasd', 78.40, '2022-08-09 12:01:05', '2022-08-09 12:01:05'),
(35, 2, 'Audy Ruslan', 'asdasdasd', 78.40, '2022-08-09 12:02:48', '2022-08-09 12:02:48'),
(36, 2, 'Audy Ruslan', 'asdasdasd', 78.40, '2022-08-09 12:03:11', '2022-08-09 12:03:11'),
(37, 1, 'Audy Ruslan', 'asdsad', 60.00, '2022-08-09 12:22:00', '2022-08-09 12:22:00'),
(38, 1, 'Audy Ruslan', 'asdsad', 60.00, '2022-08-09 12:23:02', '2022-08-09 12:23:02'),
(39, 2, 'Audy Ruslan', 'asdsadsa', 60.00, '2022-08-09 12:23:35', '2022-08-09 12:23:35'),
(40, 5, 'Audy Ruslan', 'sadsadsa', 80.00, '2022-08-09 12:30:36', '2022-08-09 12:30:36'),
(41, 1, 'sdfsfsd', 'sdfsdfsd', 72.96, '2022-08-10 03:25:52', '2022-08-10 03:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `hypotheses`
--

CREATE TABLE `hypotheses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hypotheses`
--

INSERT INTO `hypotheses` (`id`, `user_id`, `code`, `name`, `description`, `solution`, `created_at`, `updated_at`) VALUES
(1, 1, 'GH1', 'Hama Lalat Bibit', 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.', 'Solution Belum Tersedia', '2022-08-09 00:25:17', '2022-08-09 00:25:17'),
(2, 2, 'GH2', 'Hama Ulat Grayak', 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.', 'Solution Belum Tersedia', '2022-08-09 00:25:17', '2022-08-09 00:25:17'),
(3, 1, 'GH3', 'Hama Larva Penggerek Batang', 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.', 'Solution Belum Tersedia', '2022-08-09 00:25:17', '2022-08-09 00:25:17'),
(4, 2, 'GH4', 'Hama Penggerek Tongkol', 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.', 'Solution Belum Tersedia', '2022-08-09 00:25:18', '2022-08-09 00:25:18'),
(5, 1, 'GH5', 'Hama Belalang Kembara ', 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.', 'Solution Belum Tersedia', '2022-08-09 00:25:18', '2022-08-09 00:25:18');

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
(25, '2022_08_12_162426_create_hasilhamas_table', 8);

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
(3, 'CP0001', 'Hawar Daun', 'sdfsd', 'sdfsd', '1660217383.jpg', '2022-08-11 03:29:43', '2022-08-11 03:29:43'),
(4, 'CP0002', 'Bulai', 'sdfsdfsd', 'sdfsdfs', '1660217523.jpg', '2022-08-11 03:32:03', '2022-08-11 03:32:03'),
(5, 'CP0003', 'Busuk Tongkol Fusarium', 'sdfdsfds', 'asdas', '1660217581.jpg', '2022-08-11 03:33:01', '2022-08-11 03:33:01'),
(6, 'CP0004', 'Karat Daun', 'sfndskf', 'sdkjfnds', '1660217633.jpeg', '2022-08-11 03:33:53', '2022-08-11 03:33:53'),
(7, 'CP0005', 'Virus Mosaik Kerdil Jagung', 'sdjkjdskb', 'jkdsfdskj', '1660217698.jpg', '2022-08-11 03:34:58', '2022-08-11 03:34:58');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hypothesis_id` bigint(20) UNSIGNED NOT NULL,
  `evidence_id` bigint(20) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `hypothesis_id`, `evidence_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.40, '2022-08-09 00:25:18', '2022-08-09 00:25:18'),
(2, 1, 2, 0.80, '2022-08-09 00:25:19', '2022-08-09 00:25:19'),
(3, 1, 3, 0.80, '2022-08-09 00:25:20', '2022-08-09 00:25:20'),
(4, 1, 4, 1.00, '2022-08-09 00:25:20', '2022-08-09 00:25:20'),
(5, 1, 5, 0.60, '2022-08-09 00:25:20', '2022-08-09 00:25:20'),
(6, 1, 6, 0.00, '2022-08-09 00:25:20', '2022-08-09 00:25:20'),
(7, 1, 7, 0.00, '2022-08-09 00:25:20', '2022-08-09 00:25:20'),
(8, 1, 8, 0.00, '2022-08-09 00:25:20', '2022-08-09 00:25:20'),
(9, 1, 9, 0.00, '2022-08-09 00:25:20', '2022-08-09 00:25:20'),
(10, 1, 10, 0.00, '2022-08-09 00:25:21', '2022-08-09 00:25:21'),
(11, 1, 11, 0.00, '2022-08-09 00:25:21', '2022-08-09 00:25:21'),
(12, 1, 12, 0.00, '2022-08-09 00:25:21', '2022-08-09 00:25:21'),
(13, 1, 13, 0.00, '2022-08-09 00:25:21', '2022-08-09 00:25:21'),
(14, 1, 14, 0.00, '2022-08-09 00:25:21', '2022-08-09 00:25:21'),
(15, 1, 15, 0.00, '2022-08-09 00:25:21', '2022-08-09 00:25:21'),
(16, 1, 16, 0.00, '2022-08-09 00:25:22', '2022-08-09 00:25:22'),
(17, 1, 17, 0.00, '2022-08-09 00:25:22', '2022-08-09 00:25:22'),
(18, 2, 1, 0.40, '2022-08-09 00:25:23', '2022-08-09 00:25:23'),
(19, 2, 2, 0.00, '2022-08-09 00:25:23', '2022-08-09 00:25:23'),
(20, 2, 3, 0.00, '2022-08-09 00:25:23', '2022-08-09 00:25:23'),
(21, 2, 4, 0.00, '2022-08-09 00:25:23', '2022-08-09 00:25:23'),
(22, 2, 5, 0.00, '2022-08-09 00:25:23', '2022-08-09 00:25:23'),
(23, 2, 6, 0.80, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(24, 2, 7, 0.60, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(25, 2, 8, 0.40, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(26, 2, 9, 0.00, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(27, 2, 10, 0.00, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(28, 2, 11, 0.00, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(29, 2, 12, 0.00, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(30, 2, 13, 0.00, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(31, 2, 14, 0.00, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(32, 2, 15, 0.00, '2022-08-09 00:25:24', '2022-08-09 00:25:24'),
(33, 2, 16, 0.00, '2022-08-09 00:25:25', '2022-08-09 00:25:25'),
(34, 2, 17, 0.00, '2022-08-09 00:25:25', '2022-08-09 00:25:25'),
(35, 3, 1, 0.40, '2022-08-09 00:25:25', '2022-08-09 00:25:25'),
(36, 3, 2, 0.00, '2022-08-09 00:25:25', '2022-08-09 00:25:25'),
(37, 3, 3, 0.00, '2022-08-09 00:25:25', '2022-08-09 00:25:25'),
(38, 3, 4, 0.00, '2022-08-09 00:25:25', '2022-08-09 00:25:25'),
(39, 3, 5, 0.00, '2022-08-09 00:25:25', '2022-08-09 00:25:25'),
(40, 3, 6, 0.00, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(41, 3, 7, 0.00, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(42, 3, 8, 0.00, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(43, 3, 9, 0.80, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(44, 3, 10, 1.00, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(45, 4, 11, 0.40, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(46, 4, 12, 0.80, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(47, 4, 13, 1.00, '2022-08-09 00:25:26', '2022-08-09 00:25:26'),
(48, 4, 14, 0.60, '2022-08-09 00:25:27', '2022-08-09 00:25:27'),
(49, 4, 15, 0.00, '2022-08-09 00:25:27', '2022-08-09 00:25:27'),
(50, 4, 16, 0.00, '2022-08-09 00:25:27', '2022-08-09 00:25:27'),
(51, 4, 17, 0.00, '2022-08-09 00:25:27', '2022-08-09 00:25:27'),
(52, 5, 1, 0.40, '2022-08-09 00:25:27', '2022-08-09 00:25:27'),
(53, 5, 2, 0.00, '2022-08-09 00:25:28', '2022-08-09 00:25:28'),
(54, 5, 3, 0.00, '2022-08-09 00:25:28', '2022-08-09 00:25:28'),
(55, 5, 4, 0.00, '2022-08-09 00:25:28', '2022-08-09 00:25:28'),
(56, 5, 5, 0.00, '2022-08-09 00:25:28', '2022-08-09 00:25:28'),
(57, 5, 6, 0.00, '2022-08-09 00:25:28', '2022-08-09 00:25:28'),
(58, 5, 7, 0.00, '2022-08-09 00:25:28', '2022-08-09 00:25:28'),
(59, 5, 8, 0.00, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(60, 5, 9, 0.00, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(61, 5, 10, 0.00, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(62, 5, 11, 0.00, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(63, 5, 12, 0.00, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(64, 5, 13, 0.00, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(65, 5, 14, 0.00, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(66, 5, 15, 0.80, '2022-08-09 00:25:29', '2022-08-09 00:25:29'),
(67, 5, 16, 0.80, '2022-08-09 00:25:30', '2022-08-09 00:25:30'),
(68, 5, 17, 0.60, '2022-08-09 00:25:30', '2022-08-09 00:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `ruleshamas`
--

CREATE TABLE `ruleshamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hama_id` bigint(20) UNSIGNED NOT NULL,
  `gejalahama_id` bigint(20) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruleshamas`
--

INSERT INTO `ruleshamas` (`id`, `hama_id`, `gejalahama_id`, `value`, `created_at`, `updated_at`) VALUES
(95, 17, 24, 0.40, '2022-08-09 09:01:04', '2022-08-09 18:45:23'),
(96, 17, 25, 0.80, '2022-08-09 09:01:04', '2022-08-09 18:45:23'),
(97, 17, 26, 0.80, '2022-08-09 09:01:05', '2022-08-09 18:45:23'),
(98, 17, 27, 1.00, '2022-08-09 09:01:05', '2022-08-09 18:45:23'),
(99, 17, 28, 0.60, '2022-08-09 09:01:05', '2022-08-09 18:45:23'),
(100, 17, 29, 0.00, '2022-08-09 09:01:05', '2022-08-09 18:45:23'),
(101, 17, 30, 0.00, '2022-08-09 09:01:05', '2022-08-09 18:45:23'),
(102, 17, 31, 0.00, '2022-08-09 09:01:05', '2022-08-09 18:45:23'),
(103, 17, 32, 0.00, '2022-08-09 09:01:05', '2022-08-09 18:45:24'),
(104, 17, 33, 0.00, '2022-08-09 09:01:05', '2022-08-09 18:45:24'),
(105, 17, 34, 0.00, '2022-08-09 09:01:06', '2022-08-09 18:45:24'),
(106, 17, 35, 0.00, '2022-08-09 09:01:06', '2022-08-09 18:45:24'),
(107, 17, 36, 0.00, '2022-08-09 09:01:06', '2022-08-09 18:45:24'),
(108, 17, 37, 0.00, '2022-08-09 09:01:06', '2022-08-09 18:45:24'),
(109, 17, 38, 0.00, '2022-08-09 09:01:06', '2022-08-09 18:45:24'),
(110, 17, 39, 0.00, '2022-08-09 09:01:06', '2022-08-09 18:45:24'),
(111, 17, 40, 0.00, '2022-08-09 09:01:06', '2022-08-09 18:45:24'),
(129, 20, 24, 0.40, '2022-08-09 09:06:44', '2022-08-09 18:45:24'),
(130, 20, 25, 0.00, '2022-08-09 09:06:44', '2022-08-09 18:45:24'),
(131, 20, 26, 0.00, '2022-08-09 09:06:44', '2022-08-09 18:45:24'),
(132, 20, 27, 0.00, '2022-08-09 09:06:44', '2022-08-09 18:45:24'),
(133, 20, 28, 0.00, '2022-08-09 09:06:44', '2022-08-09 18:45:24'),
(134, 20, 29, 0.80, '2022-08-09 09:06:45', '2022-08-09 18:45:24'),
(135, 20, 30, 0.60, '2022-08-09 09:06:45', '2022-08-09 18:45:24'),
(136, 20, 31, 0.40, '2022-08-09 09:06:45', '2022-08-09 18:45:24'),
(137, 20, 32, 0.00, '2022-08-09 09:06:45', '2022-08-09 18:45:24'),
(138, 20, 33, 0.00, '2022-08-09 09:06:45', '2022-08-09 18:45:24'),
(139, 20, 34, 0.00, '2022-08-09 09:06:45', '2022-08-09 18:45:24'),
(140, 20, 35, 0.00, '2022-08-09 09:06:45', '2022-08-09 18:45:25'),
(141, 20, 36, 0.00, '2022-08-09 09:06:45', '2022-08-09 18:45:25'),
(142, 20, 37, 0.00, '2022-08-09 09:06:45', '2022-08-09 18:45:25'),
(143, 20, 38, 0.00, '2022-08-09 09:06:46', '2022-08-09 18:45:25'),
(144, 20, 39, 0.00, '2022-08-09 09:06:46', '2022-08-09 18:45:25'),
(145, 20, 40, 0.00, '2022-08-09 09:06:46', '2022-08-09 18:45:25'),
(146, 21, 24, 0.40, '2022-08-09 09:07:53', '2022-08-09 18:45:25'),
(147, 21, 25, 0.00, '2022-08-09 09:07:53', '2022-08-09 18:45:25'),
(148, 21, 26, 0.00, '2022-08-09 09:07:53', '2022-08-09 18:45:25'),
(149, 21, 27, 0.00, '2022-08-09 09:07:53', '2022-08-09 18:45:25'),
(150, 21, 28, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:25'),
(151, 21, 29, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:25'),
(152, 21, 30, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:25'),
(153, 21, 31, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:25'),
(154, 21, 32, 0.80, '2022-08-09 09:07:54', '2022-08-09 18:45:25'),
(155, 21, 33, 1.00, '2022-08-09 09:07:54', '2022-08-09 18:45:25'),
(156, 21, 34, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:25'),
(157, 21, 35, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:26'),
(158, 21, 36, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:26'),
(159, 21, 37, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:26'),
(160, 21, 38, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:26'),
(161, 21, 39, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:26'),
(162, 21, 40, 0.00, '2022-08-09 09:07:54', '2022-08-09 18:45:26'),
(163, 22, 24, 0.00, '2022-08-09 09:08:22', '2022-08-09 18:45:26'),
(164, 22, 25, 0.00, '2022-08-09 09:08:22', '2022-08-09 18:45:26'),
(165, 22, 26, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(166, 22, 27, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(167, 22, 28, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(168, 22, 29, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(169, 22, 30, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(170, 22, 31, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(171, 22, 32, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(172, 22, 33, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(173, 22, 34, 0.40, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(174, 22, 35, 0.80, '2022-08-09 09:08:23', '2022-08-09 18:45:26'),
(175, 22, 36, 1.00, '2022-08-09 09:08:23', '2022-08-09 18:45:27'),
(176, 22, 37, 0.60, '2022-08-09 09:08:23', '2022-08-09 18:45:27'),
(177, 22, 38, 0.00, '2022-08-09 09:08:23', '2022-08-09 18:45:27'),
(178, 22, 39, 0.00, '2022-08-09 09:08:24', '2022-08-09 18:45:27'),
(179, 22, 40, 0.00, '2022-08-09 09:08:24', '2022-08-09 18:45:27'),
(180, 23, 24, 0.40, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(181, 23, 25, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(182, 23, 26, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(183, 23, 27, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(184, 23, 28, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(185, 23, 29, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(186, 23, 30, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(187, 23, 31, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(188, 23, 32, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(189, 23, 33, 0.00, '2022-08-09 09:08:53', '2022-08-09 18:45:27'),
(190, 23, 34, 0.00, '2022-08-09 09:08:54', '2022-08-09 18:45:27'),
(191, 23, 35, 0.00, '2022-08-09 09:08:54', '2022-08-09 18:45:28'),
(192, 23, 36, 0.00, '2022-08-09 09:08:54', '2022-08-09 18:45:28'),
(193, 23, 37, 0.00, '2022-08-09 09:08:54', '2022-08-09 18:45:28'),
(194, 23, 38, 0.80, '2022-08-09 09:08:54', '2022-08-09 18:45:28'),
(195, 23, 39, 0.80, '2022-08-09 09:08:54', '2022-08-09 18:45:28'),
(196, 23, 40, 0.60, '2022-08-09 09:08:54', '2022-08-09 18:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `rulespenyakits`
--

CREATE TABLE `rulespenyakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penyakit_id` bigint(20) UNSIGNED NOT NULL,
  `gejalapenyakit_id` bigint(20) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rulespenyakits`
--

INSERT INTO `rulespenyakits` (`id`, `penyakit_id`, `gejalapenyakit_id`, `value`, `created_at`, `updated_at`) VALUES
(25, 3, 3, 0.80, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(26, 3, 4, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(27, 3, 5, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(28, 3, 6, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(29, 3, 7, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(30, 3, 8, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(31, 3, 9, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(32, 3, 10, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(33, 3, 11, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(34, 3, 12, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(35, 3, 13, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(36, 3, 14, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(37, 3, 15, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(38, 3, 16, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(39, 3, 17, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(40, 3, 18, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(41, 3, 19, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(42, 3, 20, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(43, 3, 21, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(44, 3, 22, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(45, 3, 23, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(46, 3, 24, 0.00, '2022-08-11 03:29:43', '2022-08-11 03:49:47'),
(48, 4, 3, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(49, 4, 4, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(50, 4, 5, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(51, 4, 6, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(52, 4, 7, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(53, 4, 8, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(54, 4, 9, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(55, 4, 10, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(56, 4, 11, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(57, 4, 12, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(58, 4, 13, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(59, 4, 14, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(60, 4, 15, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(61, 4, 16, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(62, 4, 17, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(63, 4, 18, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(64, 4, 19, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(65, 4, 20, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(66, 4, 21, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(67, 4, 22, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(68, 4, 23, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(69, 4, 24, 0.00, '2022-08-11 03:32:03', '2022-08-11 03:49:47'),
(71, 5, 3, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(72, 5, 4, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(73, 5, 5, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(74, 5, 6, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(75, 5, 7, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(76, 5, 8, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(77, 5, 9, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(78, 5, 10, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(79, 5, 11, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(80, 5, 12, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(81, 5, 13, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(82, 5, 14, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(83, 5, 15, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(84, 5, 16, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(85, 5, 17, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(86, 5, 18, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(87, 5, 19, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(88, 5, 20, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(89, 5, 21, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(90, 5, 22, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(91, 5, 23, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(92, 5, 24, 0.00, '2022-08-11 03:33:01', '2022-08-11 03:49:47'),
(94, 6, 3, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(95, 6, 4, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(96, 6, 5, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(97, 6, 6, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(98, 6, 7, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(99, 6, 8, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(100, 6, 9, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(101, 6, 10, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(102, 6, 11, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(103, 6, 12, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(104, 6, 13, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(105, 6, 14, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(106, 6, 15, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(107, 6, 16, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(108, 6, 17, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(109, 6, 18, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(110, 6, 19, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(111, 6, 20, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(112, 6, 21, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(113, 6, 22, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(114, 6, 23, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(115, 6, 24, 0.00, '2022-08-11 03:33:53', '2022-08-11 03:49:47'),
(117, 7, 3, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(118, 7, 4, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(119, 7, 5, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(120, 7, 6, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(121, 7, 7, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(122, 7, 8, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(123, 7, 9, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(124, 7, 10, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(125, 7, 11, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(126, 7, 12, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(127, 7, 13, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(128, 7, 14, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(129, 7, 15, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(130, 7, 16, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(131, 7, 17, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(132, 7, 18, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(133, 7, 19, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(134, 7, 20, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(135, 7, 21, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(136, 7, 22, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(137, 7, 23, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(138, 7, 24, 0.00, '2022-08-11 03:34:58', '2022-08-11 03:49:47'),
(140, 3, 25, 0.00, '2022-08-11 03:44:53', '2022-08-11 03:49:47'),
(141, 4, 25, 0.00, '2022-08-11 03:44:53', '2022-08-11 03:49:47'),
(142, 5, 25, 0.00, '2022-08-11 03:44:53', '2022-08-11 03:49:47'),
(143, 6, 25, 0.00, '2022-08-11 03:44:53', '2022-08-11 03:49:47'),
(144, 7, 25, 0.00, '2022-08-11 03:44:53', '2022-08-11 03:49:47');

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
(1, 'Sistem Pakar Penyakit Manusia', '<p>Sistem pakar adalah sistem yang membantu para pakar untuk melakuakan diagnosa suatu penyakit apapun seperti penyakit pada manusia, hewan, tumbuhan dan makhluk hidup lainnya. dengan bantuan komputasi komputer untuk melakukan diagnosa berdasarkan ilmu atau pemahaman pakar.</p><p>Pada sistem pakar Exapp ini metode pakar yang digunakan untuk mendiagnosa adalah metode Ceratainty Factor. Ceratinty Factor atau faktor kepastian adalah salah satu metode sistem pakar untuk membuktikan apakah suatu fakta itu pasti ataukah tidak pasti yang berbentuk metric yang biasanya digunakan dalam sistem pakar.</p><p>Exapp memiliki kelebihan untuk menambakan jenis hipotesisi seperti penyakit dan evidence seperti gejala dan juga bisa digunakan untuk melakukan diagnosa apapun.</p>', 'Gejala', 'Penyakit', 'select', '2022-08-09 00:25:30', '2022-08-09 00:25:30');

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
(1, 'Seorang Admin', 'admin@mail.com', '$2y$10$hERXUF7CNZhP84aBP7Nlf.4JIwBiOhOBOAJSaC2OHQiopdkzEOWV2', 'admin', NULL, NULL, '2022-08-09 00:25:14', '2022-08-09 00:25:14'),
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
-- Indexes for table `evidence`
--
ALTER TABLE `evidence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evidence_code_unique` (`code`);

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
-- Indexes for table `gejalapenyakits`
--
ALTER TABLE `gejalapenyakits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gejalapenyakits_code_unique` (`code`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `hasilhamas_hama_id_foreign` (`hama_id`);

--
-- Indexes for table `hasilpenyakits`
--
ALTER TABLE `hasilpenyakits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hasilpenyakits_penyakit_id_foreign` (`penyakit_id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_hypothesis_id_foreign` (`hypothesis_id`);

--
-- Indexes for table `hypotheses`
--
ALTER TABLE `hypotheses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hypotheses_code_unique` (`code`),
  ADD KEY `hypotheses_user_id_foreign` (`user_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_hypothesis_id_foreign` (`hypothesis_id`),
  ADD KEY `roles_evidence_id_foreign` (`evidence_id`);

--
-- Indexes for table `ruleshamas`
--
ALTER TABLE `ruleshamas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruleshamas_hama_id_foreign` (`hama_id`),
  ADD KEY `ruleshamas_gejalahama_id_foreign` (`gejalahama_id`);

--
-- Indexes for table `rulespenyakits`
--
ALTER TABLE `rulespenyakits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rulespenyakits_penyakit_id_foreign` (`penyakit_id`),
  ADD KEY `rulespenyakits_gejalapenyakit_id_foreign` (`gejalapenyakit_id`);

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
-- AUTO_INCREMENT for table `evidence`
--
ALTER TABLE `evidence`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- AUTO_INCREMENT for table `gejalapenyakits`
--
ALTER TABLE `gejalapenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hamas`
--
ALTER TABLE `hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hasilhamas`
--
ALTER TABLE `hasilhamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hasilpenyakits`
--
ALTER TABLE `hasilpenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `hypotheses`
--
ALTER TABLE `hypotheses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `ruleshamas`
--
ALTER TABLE `ruleshamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `rulespenyakits`
--
ALTER TABLE `rulespenyakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasilhamas`
--
ALTER TABLE `hasilhamas`
  ADD CONSTRAINT `hasilhamas_hama_id_foreign` FOREIGN KEY (`hama_id`) REFERENCES `hamas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hasilpenyakits`
--
ALTER TABLE `hasilpenyakits`
  ADD CONSTRAINT `hasilpenyakits_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_hypothesis_id_foreign` FOREIGN KEY (`hypothesis_id`) REFERENCES `hypotheses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hypotheses`
--
ALTER TABLE `hypotheses`
  ADD CONSTRAINT `hypotheses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_evidence_id_foreign` FOREIGN KEY (`evidence_id`) REFERENCES `evidence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_hypothesis_id_foreign` FOREIGN KEY (`hypothesis_id`) REFERENCES `hypotheses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ruleshamas`
--
ALTER TABLE `ruleshamas`
  ADD CONSTRAINT `ruleshamas_gejalahama_id_foreign` FOREIGN KEY (`gejalahama_id`) REFERENCES `gejalahamas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ruleshamas_hama_id_foreign` FOREIGN KEY (`hama_id`) REFERENCES `hamas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rulespenyakits`
--
ALTER TABLE `rulespenyakits`
  ADD CONSTRAINT `rulespenyakits_gejalapenyakit_id_foreign` FOREIGN KEY (`gejalapenyakit_id`) REFERENCES `gejalapenyakits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rulespenyakits_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
