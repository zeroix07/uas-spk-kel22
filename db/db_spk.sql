-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 11:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `alamat`, `telepon`, `email`, `username`, `password`) VALUES
(1, 'admin', 'Tasik', '097126371123', 'admin@gmail.com', 'admin', '202cb962ac59075b964b07152d234b70'),
(2, 'Fadhel Muhammad Apriansyah', 'Tasik', '08984851966', 'fmapriansyah3@gmail.com', 'fadhel', '202cb962ac59075b964b07152d234b70'),
(3, 'Rikza Fauzan Nurfadilah', 'Tasik', '082241999922', 'rikza@gmail.com', 'rikza', '202cb962ac59075b964b07152d234b70'),
(4, 'Livia Nur Meilinda', 'Tasik', '086312318123', 'livia@gmail.com', 'livia', '202cb962ac59075b964b07152d234b70'),
(5, 'Rosi Maelani', 'Tasik', '0861231821', 'rosi@gmail.com', 'rosi', '202cb962ac59075b964b07152d234b70'),
(6, 'Yusri Azra Lazwardi', 'Tasik', '0861231312', 'yusri@gmail.com', 'yusri', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_calon_kr` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_calon_kr`, `nama`) VALUES
(7, 'IR 64'),
(11, 'Inpari 30'),
(12, 'Ciherang'),
(13, 'Mekongga'),
(14, 'Cigeulis');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_spk`
--

CREATE TABLE `hasil_spk` (
  `id_spk` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `hasil_spk` float(10,2) DEFAULT NULL,
  `minggu` varchar(2) NOT NULL,
  `bulan` varchar(2) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_spk`
--

INSERT INTO `hasil_spk` (`id_spk`, `id_calon_kr`, `hasil_spk`, `minggu`, `bulan`, `tahun`) VALUES
(45, 5, 64.25, '2', '11', '2019'),
(46, 6, 64.25, '2', '11', '2019'),
(47, 7, 64.25, '2', '11', '2019'),
(48, 8, 64.25, '2', '11', '2019'),
(49, 9, 64.25, '2', '11', '2019'),
(50, 7, 64.25, '5', '02', '2023'),
(51, 11, 64.25, '5', '02', '2023'),
(52, 12, 64.25, '5', '02', '2023'),
(53, 13, 64.25, '5', '02', '2023'),
(54, 14, 64.25, '5', '02', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_tpa`
--

CREATE TABLE `hasil_tpa` (
  `id_test` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `Berat` float(10,2) DEFAULT NULL,
  `Hasil_Produksi` int(11) DEFAULT NULL,
  `Ketahanan` float(10,2) DEFAULT NULL,
  `Tinggi` float(10,2) DEFAULT NULL,
  `Warna` float(10,2) DEFAULT NULL,
  `Rumpun` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_tpa`
--

INSERT INTO `hasil_tpa` (`id_test`, `id_calon_kr`, `Berat`, `Hasil_Produksi`, `Ketahanan`, `Tinggi`, `Warna`, `Rumpun`) VALUES
(55, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 6, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 7, 62.00, 71, 76.00, 82.00, 85.00, 91.00),
(58, 8, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 11, 64.00, 71, 73.00, 79.00, 85.00, 90.00),
(62, 12, 65.00, 67, 73.00, 79.00, 83.00, 89.00),
(63, 13, 64.00, 69, 74.00, 80.00, 85.00, 90.00),
(64, 14, 65.00, 69, 72.00, 79.00, 85.00, 89.00);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(32) DEFAULT NULL,
  `bobot` float(5,2) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `bobot`, `type`) VALUES
(34, 'Berat', 20.00, 'Benefit'),
(35, 'Hasil_Produksi', 20.00, 'Benefit'),
(36, 'Ketahanan', 15.00, 'Benefit'),
(37, 'Tinggi', 15.00, 'Benefit'),
(38, 'Warna', 15.00, 'Benefit'),
(39, 'Rumpun', 15.00, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `subkriteria` varchar(255) NOT NULL,
  `nilai` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_subkriteria`, `id_kriteria`, `subkriteria`, `nilai`) VALUES
(62, 34, 'Sangat Buruk', 1.00),
(63, 34, 'Buruk', 2.00),
(64, 34, 'Cukup', 3.00),
(65, 34, 'Baik', 4.00),
(66, 34, 'Sangat Baik', 5.00),
(67, 35, 'Sangat Buruk', 1.00),
(68, 35, 'Buruk', 2.00),
(69, 35, 'Cukup', 3.00),
(70, 35, 'Baik', 4.00),
(71, 35, 'Sangat Baik', 5.00),
(72, 36, 'Sangat Buruk', 1.00),
(73, 36, 'Buruk', 2.00),
(74, 36, 'Cukup', 3.00),
(76, 36, 'Baik', 4.00),
(77, 36, 'Sangat Baik', 5.00),
(78, 37, 'Sangat Buruk', 1.00),
(79, 37, 'Buruk', 2.00),
(80, 37, 'Cukup', 3.00),
(81, 37, 'Baik', 4.00),
(82, 37, 'Sangat Baik', 5.00),
(83, 38, 'Sangat Buruk', 1.00),
(84, 38, 'Buruk', 2.00),
(85, 38, 'Cukup', 3.00),
(86, 38, 'Baik', 4.00),
(87, 38, 'Sangat Baik', 5.00),
(88, 39, 'Sangat Buruk', 1.00),
(89, 39, 'Buruk', 2.00),
(90, 39, 'Cukup', 3.00),
(91, 39, 'Baik', 4.00),
(92, 39, 'Sangat Baik', 5.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_calon_kr`);

--
-- Indexes for table `hasil_spk`
--
ALTER TABLE `hasil_spk`
  ADD PRIMARY KEY (`id_spk`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indexes for table `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  ADD PRIMARY KEY (`id_test`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_calon_kr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hasil_spk`
--
ALTER TABLE `hasil_spk`
  MODIFY `id_spk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
