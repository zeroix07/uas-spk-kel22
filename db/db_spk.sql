-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Mar 2023 pada 17.58
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

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
-- Struktur dari tabel `admin`
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
-- Dumping data untuk tabel `admin`
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
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_calon_kr` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_calon_kr`, `nama`) VALUES
(28, 'IR64'),
(29, 'CIHERANG'),
(30, 'INPARI 30'),
(31, 'MEKONGGA'),
(32, 'CISADANE'),
(33, 'SERTANI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_spk`
--

CREATE TABLE `hasil_spk` (
  `id_spk` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `hasil_spk` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil_spk`
--

INSERT INTO `hasil_spk` (`id_spk`, `id_calon_kr`, `hasil_spk`) VALUES
(67, 28, 84.00),
(68, 29, 87.25),
(69, 30, 94.00),
(70, 31, 82.25),
(71, 32, 76.50),
(72, 33, 80.25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_tpa`
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
-- Dumping data untuk tabel `hasil_tpa`
--

INSERT INTO `hasil_tpa` (`id_test`, `id_calon_kr`, `KETAHANAN_TERHADAP_PENYAKIT_ATAU_HAMA`, `PRODUKTIVITAS`, `WAKTU_TANAM`, `KUALITAS_BERAS`, `KETAHANAN_KEKERINGAN_ATAU_CUACA_EKSTRIM`, `BIAYA_PRODUKSI`) VALUES
(78, 28, 172.00, 178.00, 182.00, 191.00, 197.00, 200.00),
(79, 29, 173.00, 178.00, 183.00, 192.00, 196.00, 201.00),
(80, 30, 173.00, 178.00, 182.00, 191.00, 197.00, 200.00),
(81, 31, 173.00, 177.00, 182.00, 191.00, 198.00, 203.00),
(82, 32, 173.00, 177.00, 183.00, 191.00, 197.00, 203.00),
(83, 33, 173.00, 177.00, 182.00, 191.00, 197.00, 203.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(50) DEFAULT NULL,
  `bobot` float(5,2) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `bobot`, `type`) VALUES
(57, 'KETAHANAN_TERHADAP_PENYAKIT_ATAU_HAMA', 15.00, 'Benefit'),
(58, 'PRODUKTIVITAS', 25.00, 'Benefit'),
(59, 'WAKTU_TANAM', 15.00, 'Cost'),
(60, 'KUALITAS_BERAS', 20.00, 'Benefit'),
(61, 'KETAHANAN_KEKERINGAN_ATAU_CUACA_EKSTRIM', 10.00, 'Benefit'),
(62, 'BIAYA_PRODUKSI', 15.00, 'Cost');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `subkriteria` varchar(255) NOT NULL,
  `nilai` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_subkriteria`, `id_kriteria`, `subkriteria`, `nilai`) VALUES
(172, 57, '<= 2 Penyakit', 1.00),
(173, 57, '3-4 Penyakit', 3.00),
(174, 57, '>= 5 Penyakit', 5.00),
(175, 58, '<= 2,5 Ton/Ha', 1.00),
(176, 58, '2,6 - 4,5 Ton/Ha', 2.00),
(177, 58, '4,6 - 6,5 Ton/Ha', 3.00),
(178, 58, '6,6 - 8,5 Ton/Ha', 4.00),
(179, 58, '>= 8,6 Ton / Ha', 5.00),
(180, 59, '> 140 Hari', 1.00),
(181, 59, '> 130 - 140 Hari', 2.00),
(182, 59, '> 120 - 130 Hari', 3.00),
(183, 59, '110 - 120 Hari', 4.00),
(184, 59, '< 110 Hari', 5.00),
(188, 60, 'SANGAT KURANG', 1.00),
(189, 60, 'KURANG', 2.00),
(190, 60, 'CUKUP BAIK', 3.00),
(191, 60, 'BAIK', 4.00),
(192, 60, 'SANGAT BAIK', 5.00),
(193, 61, 'SANGAT KURANG', 1.00),
(195, 61, 'KURANG', 2.00),
(196, 61, 'CUKUP BAIK', 3.00),
(197, 61, 'BAIK', 4.00),
(198, 61, 'SANGAT BAIK', 5.00),
(199, 62, '> 15.000.000', 1.00),
(200, 62, '> 12.500.000 - 15.000.000', 2.00),
(201, 62, '> 10.000.000 - 12.500.000', 3.00),
(203, 62, '7.500.000 - 10.000.000', 4.00),
(204, 62, '< 7.500.000', 5.00);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_calon_kr`);

--
-- Indeks untuk tabel `hasil_spk`
--
ALTER TABLE `hasil_spk`
  ADD PRIMARY KEY (`id_spk`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indeks untuk tabel `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  ADD PRIMARY KEY (`id_test`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_calon_kr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `hasil_spk`
--
ALTER TABLE `hasil_spk`
  MODIFY `id_spk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
