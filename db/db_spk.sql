-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 10:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_calon_kr`, `nama`) VALUES
(22, 'IR64'),
(23, 'CIHERANG'),
(24, 'INPARI 30'),
(25, 'MEKONGGA'),
(26, 'CISADANE'),
(27, 'SERTANI');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_spk`
--

CREATE TABLE `hasil_spk` (
  `id_spk` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `hasil_spk` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil_spk`
--

INSERT INTO `hasil_spk` (`id_spk`, `id_calon_kr`, `hasil_spk`) VALUES
(50, 7, 80.25),
(51, 11, 80.25),
(52, 12, 80.25),
(53, 13, 80.25),
(54, 14, 80.25),
(55, 16, 80.25),
(56, 21, 80.25),
(57, 17, 80.25),
(58, 18, 80.25),
(59, 19, 80.25),
(60, 20, 80.25),
(61, 22, 84.00),
(62, 23, 87.25),
(63, 24, 94.00),
(64, 25, 82.25),
(65, 26, 76.50),
(66, 27, 80.25);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_tpa`
--

CREATE TABLE `hasil_tpa` (
  `id_test` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `KETAHANAN_TERHADAP_PENYAKIT_ATAU_HAMA` float(10,2) DEFAULT NULL,
  `PRODUKTIVITAS` float(10,2) DEFAULT NULL,
  `WAKTU_TANAM` float(10,2) DEFAULT NULL,
  `KUALITAS_BERAS` float(10,2) DEFAULT NULL,
  `KETAHANAN_KEKERINGAN_ATAU_CUACA_EKSTRIM` float(10,2) DEFAULT NULL,
  `BIAYA_PRODUKSI` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil_tpa`
--

INSERT INTO `hasil_tpa` (`id_test`, `id_calon_kr`, `KETAHANAN_TERHADAP_PENYAKIT_ATAU_HAMA`, `PRODUKTIVITAS`, `WAKTU_TANAM`, `KUALITAS_BERAS`, `KETAHANAN_KEKERINGAN_ATAU_CUACA_EKSTRIM`, `BIAYA_PRODUKSI`) VALUES
(66, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 17, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 18, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 19, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 22, 144.00, 150.00, 154.00, 160.00, 165.00, 168.00),
(73, 23, 145.00, 150.00, 155.00, 161.00, 164.00, 169.00),
(74, 24, 145.00, 150.00, 154.00, 160.00, 165.00, 168.00),
(75, 25, 145.00, 149.00, 154.00, 160.00, 166.00, 170.00),
(76, 26, 145.00, 149.00, 155.00, 160.00, 165.00, 170.00),
(77, 27, 145.00, 149.00, 154.00, 160.00, 165.00, 170.00);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(50) DEFAULT NULL,
  `bobot` float(5,2) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `bobot`, `type`) VALUES
(51, 'KETAHANAN_TERHADAP_PENYAKIT_ATAU_HAMA', 15.00, 'Benefit'),
(52, 'PRODUKTIVITAS', 25.00, 'Benefit'),
(53, 'WAKTU_TANAM', 15.00, 'Cost'),
(54, 'KUALITAS_BERAS', 20.00, 'Benefit'),
(55, 'KETAHANAN_KEKERINGAN_ATAU_CUACA_EKSTRIM', 10.00, 'Benefit'),
(56, 'BIAYA_PRODUKSI', 15.00, 'Cost');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `subkriteria` varchar(255) NOT NULL,
  `nilai` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(92, 39, 'Sangat Baik', 5.00),
(104, 40, 'Sangat Buruk', 1.00),
(105, 40, 'Buruk', 2.00),
(106, 40, 'Cukup', 3.00),
(107, 40, 'Baik', 4.00),
(108, 40, 'Sangat Baik', 5.00),
(109, 41, 'Sangat Buruk', 1.00),
(110, 41, 'Buruk', 2.00),
(111, 41, 'Cukup', 3.00),
(112, 41, 'Baik', 4.00),
(113, 41, 'Sangat Baik', 5.00),
(114, 42, 'Sangat Buruk', 1.00),
(115, 42, 'Buruk', 2.00),
(116, 42, 'Cukup', 3.00),
(117, 42, 'Baik', 4.00),
(118, 42, 'Sangat Baik', 5.00),
(119, 43, 'Sangat Buruk', 1.00),
(120, 43, 'Buruk', 2.00),
(121, 43, 'Cukup', 3.00),
(122, 43, 'Baik', 4.00),
(123, 43, 'Sangat Baik', 5.00),
(124, 44, 'Sangat Buruk', 1.00),
(125, 44, 'Buruk', 2.00),
(128, 44, 'Cukup', 3.00),
(129, 44, 'Baik', 4.00),
(130, 44, 'Sangat Baik', 5.00),
(131, 45, 'Sangat Buruk', 1.00),
(132, 45, 'Buruk', 2.00),
(133, 45, 'Cukup', 3.00),
(135, 45, 'Baik', 4.00),
(136, 45, 'Sangat Baik', 5.00),
(137, 46, 'Sangat Buruk', 1.00),
(138, 46, 'Buruk', 2.00),
(139, 46, 'Cukup', 3.00),
(140, 46, 'Baik', 4.00),
(141, 46, 'Sangat Baik', 5.00),
(144, 51, '<= 2 Penyakit', 1.00),
(145, 51, '3 - 4 Penyakit', 3.00),
(146, 51, '>= 5 Penyakit', 5.00),
(147, 52, '<= 2,5 Ton/Ha', 1.00),
(148, 52, '2,6 - 4,5 Ton/Ha', 2.00),
(149, 52, '4,6 - 6,5 Ton/Ha', 3.00),
(150, 52, '6,6 - 8,5 Ton/Ha', 4.00),
(151, 52, '>= 8,6 Ton / Ha', 5.00),
(152, 53, '> 140 Hari', 1.00),
(153, 53, '> 130 - 140 Hari', 2.00),
(154, 53, '> 120 - 130 Hari', 3.00),
(155, 53, '110 - 120 Hari', 4.00),
(156, 53, '< 110 Hari', 5.00),
(157, 54, 'Sangat Kurang', 1.00),
(158, 54, 'Kurang', 2.00),
(159, 54, 'Cukup Baik', 3.00),
(160, 54, 'Baik', 4.00),
(161, 54, 'Sangat Baik', 5.00),
(162, 55, 'Sangat Kurang', 1.00),
(163, 55, 'Kurang', 2.00),
(164, 55, 'Cukup Baik', 3.00),
(165, 55, 'Baik', 4.00),
(166, 55, 'Sangat Baik', 5.00),
(167, 56, '> 15.000.000', 1.00),
(168, 56, '> 12.500.000 - 15.000.000', 2.00),
(169, 56, '> 10.000.000 - 12.500.000', 3.00),
(170, 56, '7.500.000 - 10.000.000', 4.00),
(171, 56, '< 7.500.000', 5.00);

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
  MODIFY `id_calon_kr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `hasil_spk`
--
ALTER TABLE `hasil_spk`
  MODIFY `id_spk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
