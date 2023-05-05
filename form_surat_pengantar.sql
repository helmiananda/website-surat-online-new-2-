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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_surat_pengantar`
--
ALTER TABLE `form_surat_pengantar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_surat_pengantar`
--
ALTER TABLE `form_surat_pengantar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
