-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Jun 2017 pada 10.32
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fishfeeder`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datalog`
--

CREATE TABLE `datalog` (
  `id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `temperature` float NOT NULL,
  `kelembapan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datalog`
--

INSERT INTO `datalog` (`id`, `datetime`, `temperature`, `kelembapan`) VALUES
(1, '2017-06-01 08:17:56', 25, 60),
(2, '2017-06-01 08:18:00', 25, 60),
(3, '2017-06-01 08:18:04', 25, 60),
(4, '2017-06-01 08:18:08', 25, 60),
(5, '2017-06-01 08:18:12', 25, 60),
(6, '2017-06-01 08:18:16', 25, 60),
(7, '2017-06-01 08:18:20', 25, 60),
(8, '2017-06-01 08:18:24', 25, 60),
(9, '2017-06-01 08:18:28', 25, 60),
(10, '2017-06-01 08:18:32', 25, 60),
(11, '2017-06-01 08:18:36', 25, 60),
(12, '2017-06-01 08:18:41', 25, 60),
(13, '2017-06-01 08:18:45', 25, 60),
(14, '2017-06-01 08:18:49', 25, 60),
(15, '2017-06-01 08:19:09', 25, 60),
(16, '2017-06-01 08:19:13', 25, 60),
(17, '2017-06-01 08:19:17', 25, 60),
(18, '2017-06-01 08:19:21', 25, 60),
(19, '2017-06-01 08:19:25', 25, 60),
(20, '2017-06-01 08:19:29', 25, 60),
(21, '2017-06-01 08:19:33', 25, 60),
(22, '2017-06-01 08:19:37', 25, 60),
(23, '2017-06-01 08:19:42', 25, 60),
(24, '2017-06-01 08:19:46', 25, 60),
(25, '2017-06-01 08:19:50', 25, 60),
(26, '2017-06-01 08:19:54', 25, 60),
(27, '2017-06-01 08:19:58', 25, 60),
(28, '2017-06-01 08:20:02', 25, 60),
(29, '2017-06-01 08:20:06', 25, 60),
(30, '2017-06-01 08:20:10', 25, 60),
(31, '2017-06-01 08:20:14', 25, 60),
(32, '2017-06-01 08:20:18', 25, 60),
(33, '2017-06-01 08:20:22', 25, 60),
(34, '2017-06-01 08:20:26', 25, 60),
(35, '2017-06-01 08:20:30', 25, 60),
(36, '2017-06-01 08:20:34', 25, 60),
(37, '2017-06-01 08:20:38', 25, 60),
(38, '2017-06-01 08:20:43', 25, 60),
(39, '2017-06-01 08:20:47', 25, 60),
(40, '2017-06-01 08:20:51', 25, 60),
(41, '2017-06-01 08:20:55', 25, 60),
(42, '2017-06-01 08:20:59', 25, 60),
(43, '2017-06-01 08:21:03', 25, 60),
(44, '2017-06-01 08:21:07', 25, 60),
(45, '2017-06-01 08:21:11', 25, 60),
(46, '2017-06-01 08:21:15', 25, 60),
(47, '2017-06-01 08:21:19', 25, 60),
(48, '2017-06-01 08:21:23', 25, 60),
(49, '2017-06-01 08:21:27', 25, 60),
(50, '2017-06-01 08:21:31', 25, 60),
(51, '2017-06-01 08:21:35', 25, 60),
(52, '2017-06-01 08:21:39', 25, 60),
(53, '2017-06-01 08:21:44', 25, 60),
(54, '2017-06-01 08:21:48', 25, 60),
(55, '2017-06-01 08:21:52', 25, 60),
(56, '2017-06-01 08:21:56', 25, 60),
(57, '2017-06-01 08:22:00', 25, 60),
(58, '2017-06-01 08:22:04', 25, 60),
(59, '2017-06-01 08:22:08', 25, 60),
(60, '2017-06-01 08:22:12', 25, 60),
(61, '2017-06-01 08:22:16', 25, 60),
(62, '2017-06-01 08:22:20', 25, 60),
(63, '2017-06-01 08:22:24', 25, 60),
(64, '2017-06-01 08:22:28', 25, 60),
(65, '2017-06-01 08:22:32', 25, 60),
(66, '2017-06-01 08:22:36', 25, 60),
(67, '2017-06-01 08:22:40', 25, 60),
(68, '2017-06-01 08:22:45', 25, 60),
(69, '2017-06-01 08:22:49', 25, 60),
(70, '2017-06-01 08:22:53', 25, 60),
(71, '2017-06-01 08:22:57', 25, 60),
(72, '2017-06-01 08:23:01', 25, 60),
(73, '2017-06-01 08:23:05', 25, 60),
(74, '2017-06-01 08:23:09', 25, 60),
(75, '2017-06-01 08:23:17', 25, 60),
(76, '2017-06-01 08:23:21', 25, 60),
(77, '2017-06-01 08:23:25', 25, 60),
(78, '2017-06-01 08:23:29', 25, 60),
(79, '2017-06-01 08:23:33', 25, 60),
(80, '2017-06-01 08:23:37', 25, 60),
(81, '2017-06-01 08:23:41', 25, 60),
(82, '2017-06-01 08:23:46', 25, 60),
(83, '2017-06-01 08:23:50', 25, 60),
(84, '2017-06-01 08:23:54', 25, 60),
(85, '2017-06-01 08:23:58', 25, 60),
(86, '2017-06-01 08:24:02', 25, 60),
(87, '2017-06-01 08:24:06', 25, 60),
(88, '2017-06-01 08:24:10', 25, 60),
(89, '2017-06-01 08:24:14', 25, 60),
(90, '2017-06-01 08:24:18', 25, 60),
(91, '2017-06-01 08:24:22', 25, 60),
(92, '2017-06-01 08:24:26', 25, 60),
(93, '2017-06-01 08:24:30', 25, 60),
(94, '2017-06-01 08:24:34', 25, 60),
(95, '2017-06-01 08:24:38', 25, 60),
(96, '2017-06-01 08:24:42', 25, 60),
(97, '2017-06-01 08:24:47', 25, 60),
(98, '2017-06-01 08:24:51', 25, 60),
(99, '2017-06-01 08:24:55', 25, 60),
(100, '2017-06-01 08:24:59', 25, 60),
(101, '2017-06-01 08:25:03', 25, 60),
(102, '2017-06-01 08:25:07', 25, 60),
(103, '2017-06-01 08:25:11', 25, 60),
(104, '2017-06-01 08:25:15', 25, 60),
(105, '2017-06-01 08:25:19', 25, 60),
(106, '2017-06-01 08:25:23', 25, 60),
(107, '2017-06-01 08:25:27', 25, 60),
(108, '2017-06-01 08:25:31', 25, 60),
(109, '2017-06-01 08:25:35', 25, 60),
(110, '2017-06-01 08:25:39', 25, 60),
(111, '2017-06-01 08:25:43', 25, 60),
(112, '2017-06-01 08:25:48', 25, 60),
(113, '2017-06-01 08:25:52', 25, 60),
(114, '2017-06-01 08:25:56', 25, 60),
(115, '2017-06-01 08:26:00', 25, 60),
(116, '2017-06-01 08:26:04', 25, 60),
(117, '2017-06-01 08:26:16', 25, 60),
(118, '2017-06-01 08:26:20', 25, 60),
(119, '2017-06-01 08:26:24', 25, 60),
(120, '2017-06-01 08:26:28', 25, 60),
(121, '2017-06-01 08:26:32', 25, 60),
(122, '2017-06-01 08:26:36', 25, 60),
(123, '2017-06-01 08:26:40', 25, 60),
(124, '2017-06-01 08:26:44', 25, 60),
(125, '2017-06-01 08:26:49', 25, 60),
(126, '2017-06-01 08:26:53', 25, 60),
(127, '2017-06-01 08:26:57', 25, 60),
(128, '2017-06-01 08:27:01', 25, 60),
(129, '2017-06-01 08:27:05', 25, 60),
(130, '2017-06-01 08:27:09', 25, 60),
(131, '2017-06-01 08:27:13', 25, 60),
(132, '2017-06-01 08:27:17', 25, 60),
(133, '2017-06-01 08:27:21', 25, 60),
(134, '2017-06-01 08:27:25', 25, 60),
(135, '2017-06-01 08:27:29', 25, 60),
(136, '2017-06-01 08:27:33', 25, 60),
(137, '2017-06-01 08:27:37', 25, 60),
(138, '2017-06-01 08:27:41', 25, 60),
(139, '2017-06-01 08:27:45', 25, 60),
(140, '2017-06-01 08:27:50', 25, 60),
(141, '2017-06-01 08:27:54', 25, 60),
(142, '2017-06-01 08:27:58', 25, 60),
(143, '2017-06-01 08:28:02', 25, 60),
(144, '2017-06-01 08:28:06', 25, 60),
(145, '2017-06-01 08:28:10', 25, 60),
(146, '2017-06-01 08:28:14', 25, 60),
(147, '2017-06-01 08:28:18', 25, 60),
(148, '2017-06-01 08:28:22', 25, 60),
(149, '2017-06-01 08:28:26', 25, 60),
(150, '2017-06-01 08:28:38', 25, 60),
(151, '2017-06-01 08:28:42', 25, 60),
(152, '2017-06-01 08:28:46', 25, 60),
(153, '2017-06-01 08:28:51', 25, 60),
(154, '2017-06-01 08:28:55', 25, 60),
(155, '2017-06-01 08:28:59', 25, 60),
(156, '2017-06-01 08:29:03', 25, 60),
(157, '2017-06-01 08:29:07', 25, 60),
(158, '2017-06-01 08:29:11', 25, 60),
(159, '2017-06-01 08:29:15', 25, 60),
(160, '2017-06-01 08:29:19', 25, 60),
(161, '2017-06-01 08:29:23', 25, 60),
(162, '2017-06-01 08:29:27', 25, 60),
(163, '2017-06-01 08:29:31', 25, 60),
(164, '2017-06-01 08:29:35', 25, 60),
(165, '2017-06-01 08:29:39', 25, 60),
(166, '2017-06-01 08:29:43', 25, 60),
(167, '2017-06-01 08:29:47', 25, 60),
(168, '2017-06-01 08:29:52', 25, 60),
(169, '2017-06-01 08:29:56', 25, 60),
(170, '2017-06-01 08:30:00', 25, 60),
(171, '2017-06-01 08:30:04', 25, 60),
(172, '2017-06-01 08:30:08', 25, 60),
(173, '2017-06-01 08:30:12', 25, 60),
(174, '2017-06-01 08:30:16', 25, 60),
(175, '2017-06-01 08:30:20', 25, 60),
(176, '2017-06-01 08:30:24', 25, 60),
(177, '2017-06-01 08:30:28', 25, 60),
(178, '2017-06-01 08:30:32', 25, 60),
(179, '2017-06-01 08:30:36', 25, 60),
(180, '2017-06-01 08:30:40', 25, 60),
(181, '2017-06-01 08:30:44', 25, 60),
(182, '2017-06-01 08:30:48', 25, 60),
(183, '2017-06-01 08:30:53', 25, 60),
(184, '2017-06-01 08:30:57', 25, 60),
(185, '2017-06-01 08:31:01', 25, 60),
(186, '2017-06-01 08:31:05', 25, 60),
(187, '2017-06-01 08:31:09', 25, 60),
(188, '2017-06-01 08:31:13', 25, 60),
(189, '2017-06-01 08:31:17', 25, 60),
(190, '2017-06-01 08:31:21', 25, 60),
(191, '2017-06-01 08:31:25', 25, 60),
(192, '2017-06-01 08:31:29', 25, 60),
(193, '2017-06-01 08:31:33', 25, 60),
(194, '2017-06-01 08:31:37', 25, 60),
(195, '2017-06-01 08:31:41', 25, 60),
(196, '2017-06-01 08:31:45', 25, 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datalog`
--
ALTER TABLE `datalog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datalog`
--
ALTER TABLE `datalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
