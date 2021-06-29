-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 12:18 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukom`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nisn` int(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `jeniskelamin` varchar(128) NOT NULL,
  `agama` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status_pendaftaran` varchar(255) NOT NULL,
  `mtk` int(3) NOT NULL,
  `bing` int(3) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nisn`, `alamat`, `tgl`, `jeniskelamin`, `agama`, `created_at`, `updated_at`, `status_pendaftaran`, `mtk`, `bing`, `photo`) VALUES
(1, 'Azriel', 11223344, 'KP.Srengseng Jaya RT.001, RW.001,Desa Sukadarma,Kecamatan Sukatani,Kabupaten Bekasi', '2021-06-16', 'Laki', 'Islam', '2021-06-27 03:43:37', '2021-06-27 08:08:08', 'Ditolak', 100, 100, ''),
(15, 'saputra', 1234536789, 'KP.Srengseng Jaya RT.001, RW.001,Desa Sukadarma,Kecamatan Sukatani,Kabupaten Bekasi', '2021-06-20', 'Laki', 'Islam', '2021-06-27 10:52:37', '2021-06-27 10:52:37', '', 32, 96, ''),
(16, 'Ridho', 1234536789, 'KP.Srengseng Jaya RT.001, RW.001,Desa Sukadarma,Kecamatan Sukatani,Kabupaten Bekasi', '2021-06-01', 'Laki', 'Islam', '2021-06-27 11:04:01', '2021-06-27 11:04:01', '', 62, 56, 'line_228651416843137.jpg'),
(18, 'Azriel Bintang', 1234536789, 'KP.Srengseng Jaya RT.001, RW.001,Desa Sukadarma,Kecamatan Sukatani,Kabupaten Bekasi', '2021-06-11', 'Laki', 'Islam', '2021-06-27 11:07:44', '2021-06-27 11:07:44', '', 45, 56, '21 April_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', 'admin', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Azriel', 'azriel@gmail.com', '123', 'pendaftar', '2021-06-27 00:43:46', '2021-06-27 00:43:46'),
(12, 'Ridho', 'dho@gmail.com', '123', 'pendaftar', '2021-06-27 03:47:40', '2021-06-27 03:47:40'),
(18, 'Muhammad Azriel Bintang Saputra', 'a@gmail.com', '1234', 'pendaftar', '2021-06-27 10:13:21', '2021-06-27 10:13:21'),
(20, 'Azriel Bintang', 'bintang@gmail.com', '1234', 'pendaftar', '2021-06-27 10:36:32', '2021-06-27 10:36:32'),
(21, 'saputra', 'sapu@gmail.com', '1234', 'pendaftar', '2021-06-27 10:43:59', '2021-06-27 10:43:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
