-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230407.35874a1172
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 01:12 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_surat_keterangan_berdomisili`
--
ALTER TABLE `form_surat_keterangan_berdomisili`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_surat_keterangan_berdomisili`
--
ALTER TABLE `form_surat_keterangan_berdomisili`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
