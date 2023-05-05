-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230407.35874a1172
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 01:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `input_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_surat_keterangan`
--

CREATE TABLE `form_surat_keterangan` (
  `id` int(200) NOT NULL,
  `surat_keterangan` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `no_rumah` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_surat_keterangan`
--

INSERT INTO `form_surat_keterangan` (`id`, `surat_keterangan`, `nik`, `nama`, `jk`, `no_rumah`) VALUES
(6, 'K-HQ-11829-001', '919231890189023123', 'Naufal Sakha', 'Laki-laki', '24');

-- --------------------------------------------------------

--
-- Table structure for table `form_surat_keterangan_berdomisili`
--

CREATE TABLE `form_surat_keterangan_berdomisili` (
  `id` int(100) NOT NULL,
  `surat_keterangan_berdomisili` varchar(200) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `no_rumah` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_surat_keterangan_berdomisili`
--

INSERT INTO `form_surat_keterangan_berdomisili` (`id`, `surat_keterangan_berdomisili`, `nik`, `nama`, `jk`, `no_rumah`) VALUES
(3, 'K-HQ-11829-001', '435235', 'Tita', 'Perempuan', '121'),
(4, 'K-HQ-11829-002', '10294908129041', 'Siti Yulita', 'Perempuan', '25');

-- --------------------------------------------------------

--
-- Table structure for table `form_surat_pengantar`
--

CREATE TABLE `form_surat_pengantar` (
  `id` int(11) NOT NULL,
  `surat_pengantar` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `no_rumah` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_surat_pengantar`
--

INSERT INTO `form_surat_pengantar` (`id`, `surat_pengantar`, `nik`, `nama`, `jk`, `no_rumah`) VALUES
(16, 'K-HQ-11829-001', '89480984124', 'Helmi Ananda', 'Laki-laki', 24),
(17, 'K-HQ-11829-001', '89480984124', 'Helmi Ananda', 'Laki-laki', 24),
(18, 'K-HQ-11829-002', '1234567', 'rima', 'Laki-laki', 2),
(19, 'K-HQ-11829-003', '1234567', 'rima', 'Laki-laki', 2);

-- --------------------------------------------------------

--
-- Table structure for table `input_data_surat`
--

CREATE TABLE `input_data_surat` (
  `id` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jk` varchar(200) NOT NULL,
  `no_rumah` varchar(255) NOT NULL,
  `jenis_surat` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `input_data_surat`
--

INSERT INTO `input_data_surat` (`id`, `nik`, `nama`, `jk`, `no_rumah`, `jenis_surat`, `no_surat`) VALUES
(46, '1234124124 ', 'hahaha', 'Laki-laki', '12', 'Surat Keterangan', '14214124'),
(47, '37674899019023', 'Helmi Ananda Yustian', 'Laki-laki', '69', 'Surat Pengantar', 'f1231d1d1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_surat_keterangan`
--
ALTER TABLE `form_surat_keterangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_surat_keterangan_berdomisili`
--
ALTER TABLE `form_surat_keterangan_berdomisili`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_surat_pengantar`
--
ALTER TABLE `form_surat_pengantar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_data_surat`
--
ALTER TABLE `input_data_surat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_surat_keterangan`
--
ALTER TABLE `form_surat_keterangan`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `form_surat_keterangan_berdomisili`
--
ALTER TABLE `form_surat_keterangan_berdomisili`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_surat_pengantar`
--
ALTER TABLE `form_surat_pengantar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `input_data_surat`
--
ALTER TABLE `input_data_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
