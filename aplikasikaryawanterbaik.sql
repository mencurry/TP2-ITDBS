-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 03:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasikaryawanterbaik`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `nik` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  `proses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `nik`, `alamat`, `no_hp`, `pendidikan`, `status`, `username`, `password`, `id_level`, `proses`) VALUES
(1, 'Is Suryani', '2017-01-01', 'semarang', '081326632236', 'Strata 1', 'Tetap', 'admin', 'admin', 1, 1),
(2, 'Elizabeth Drimierda Primasari', '1998-08-08', 'semarang', '0812345678', 'Strata 2', 'Tetap', 'manager', 'manager', 2, 0),
(3, 'Sigit Yulianto', '1988-09-09', 'semarang', '0812345679', 'Strata 1', 'Tetap', 'supervisor', 'supervisor', 2, 0),
(4, 'Bernadus Adi Dewanto', '1988-09-09', 'semarang', '08123456710', 'Strata 1', 'Tetap', 'supervisor2', 'supervisor2', 3, 0),
(5, 'Bambang Broto', '1988-09-09', 'semarang', '08123456711', 'Strata 1', 'Tetap', 'supervisor3', 'supervisor3', 3, 0),
(6, 'Ismedi Yuliarso', '1988-09-09', 'semarang', '08123456712', 'Strata 1', 'Tetap', 'supervisor4', 'supervisor4', 3, 0),
(7, 'Henox Claudian', '1995-10-10', 'semarang', '082345678911', 'SMA', 'Tetap', '', '', 4, 1),
(8, 'Sumanto', '1995-10-10', 'semarang', '082345678912', 'SMK', 'Kontrak', '', '', 4, 1),
(9, 'Triyanti', '1995-10-10', 'semarang', '082345678912', 'SMK', 'Kontrak', '', '', 4, 1),
(10, 'Pasiran', '1995-10-10', 'semarang', '082345678914', 'SMK', 'Kontrak', '', '', 4, 1),
(11, 'Elda Yunita Sari', '1995-10-10', 'semarang', '082345678915', 'SMK', 'Tetap', '', '', 4, 1),
(14, 'test', '1995-10-10', 'palembang', '081326632236', 'SMA', 'Outsource', '', '', 4, 0),
(15, 'rian', '1998-08-08', 'semarang', '086554688', 'SMA', 'Outsource', '', '', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(255) DEFAULT NULL,
  `bobot` float DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `keterangan`, `jenis`) VALUES
(1, 'karakter', 0.2, 'karakter yang dimiliki oleh pramuniaga', 'benefit'),
(2, 'kedisiplinan', 0.25, 'kedisiplinan pramuniaga dalam bekerja', 'benefit'),
(3, 'tanggung jawab', 0.25, 'tanggung jawab pramuniaga dengan pekerjaannya', 'benefit'),
(4, 'etika', 0.3, 'etika dan perilaku pramuniaga', 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`, `keterangan`) VALUES
(1, 'admin', 'pengelola sistem'),
(2, 'store manager', 'melihat hasil penilaian'),
(3, 'supervisor', 'kepala pramuniaga dan pemberi nilai pramuniaga'),
(4, 'pramuniaga', 'pelayan toko buku gramedia'),
(8, 'testing', 'testing data');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `id_karyawan` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `penilai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_kriteria`, `id_karyawan`, `nilai`, `penilai`) VALUES
(13, 1, 10, 50, 'Bernadus Adi Dewanto'),
(14, 2, 10, 60, 'Bernadus Adi Dewanto'),
(15, 3, 10, 70, 'Bernadus Adi Dewanto'),
(16, 4, 10, 80, 'Bernadus Adi Dewanto'),
(17, 1, 11, 80, 'Bambang Broto'),
(18, 2, 11, 80, 'Bambang Broto'),
(19, 3, 11, 85, 'Bambang Broto'),
(20, 4, 11, 85, 'Bambang Broto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`);

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`),
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
