-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 11:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengadilan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti_pegawai`
--

CREATE TABLE `cuti_pegawai` (
  `id_cutipegawai` int(25) NOT NULL,
  `id_pegawai` int(25) NOT NULL,
  `jenis_cuti` varchar(225) NOT NULL,
  `alasan_cuti` varchar(225) NOT NULL,
  `lama_cuti` varchar(225) NOT NULL,
  `ket_lama_cuti` varchar(225) NOT NULL,
  `dari_tanggal` varchar(225) NOT NULL,
  `sampai_dengan` varchar(225) NOT NULL,
  `panmud_kasubag` varchar(225) DEFAULT NULL,
  `panitera_sekretaris` varchar(225) DEFAULT NULL,
  `ketua` varchar(225) DEFAULT NULL,
  `app_panmud_kasubag` int(25) NOT NULL,
  `app_panitera_sekretaris` int(25) NOT NULL,
  `app_ketua` int(25) NOT NULL,
  `status_cuti` varchar(225) NOT NULL,
  `ket_status_cuti` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuti_pegawai`
--

INSERT INTO `cuti_pegawai` (`id_cutipegawai`, `id_pegawai`, `jenis_cuti`, `alasan_cuti`, `lama_cuti`, `ket_lama_cuti`, `dari_tanggal`, `sampai_dengan`, `panmud_kasubag`, `panitera_sekretaris`, `ketua`, `app_panmud_kasubag`, `app_panitera_sekretaris`, `app_ketua`, `status_cuti`, `ket_status_cuti`) VALUES
(1, 36, 'Cuti Tahunan', 'aaaaaa', '3', 'Hari', '2023-02-08', '2023-02-10', NULL, NULL, '196507021992031005', 1, 1, 0, 'Diajukan', 'Menunggu Approval Ketua'),
(2, 36, 'Cuti Karena Alasan Penting', 'asdasd', '1', 'Minggu', '2023-02-09', '2023-02-18', NULL, NULL, '196507021992031005', 1, 1, 0, 'Diajukan', 'Menunggu Approval Ketua'),
(3, 37, 'Cuti Sakit', 'aaaaaa', '3', 'Hari', '2023-02-09', '2023-02-11', NULL, NULL, NULL, 1, 1, 1, 'Disetujui', 'Pengajuan Cuti Disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id_golongan` int(25) NOT NULL,
  `nama_golongan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_golongan`, `nama_golongan`) VALUES
(1, 'IV A'),
(2, 'IV B'),
(3, 'IV C'),
(4, 'IV D'),
(5, 'IV E'),
(6, 'III A'),
(7, 'III B'),
(8, 'III C'),
(9, 'III D'),
(10, 'II A');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(25) NOT NULL,
  `nama_jabatan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'KETUA'),
(2, 'WAKIL KETUA'),
(3, 'HAKIM UTAMA MUDA'),
(4, 'HAKIM MADYA UTAMA'),
(5, 'PANITERA'),
(6, 'SEKRETARIS'),
(7, 'PANMUD HUKUM'),
(8, 'PANMUD  GUGATAN'),
(9, 'PANMUD PERMOHONAN'),
(10, 'STAFF PELAKSANA PANMUD HUKUM'),
(11, 'STAFF PELAKSANA PANMUD GUGATAN'),
(12, 'STAFF PELAKSANA PANMUD PERMOHONAN'),
(13, 'PANITERA PENGGANTI'),
(14, 'JURU SITA'),
(15, 'JURU SITA PENGGANTI'),
(16, 'KASUBAG KEPEGAWAIAN DAN ORTALA'),
(17, 'KASUBAG PERNCANAAN, IT DAN PELAPORAN'),
(18, 'KASUBAG UMUM DAN KEUANGAN'),
(19, 'STAFF PELAKSANA KEPEGAWAIAN DAN ORTALA'),
(20, 'STAFF PELAKSANA PERNCANAAN, IT DAN PELAPORAN'),
(21, 'STAFF PELAKSANA UMUM DAN KEUANGAN');

-- --------------------------------------------------------

--
-- Table structure for table `kgb_pegawai`
--

CREATE TABLE `kgb_pegawai` (
  `id_kgbpegawai` int(25) NOT NULL,
  `id_pegawai` int(25) NOT NULL,
  `kgb_terakhir` varchar(225) NOT NULL,
  `kgb_datang` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `timestamp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knp_pegawai`
--

CREATE TABLE `knp_pegawai` (
  `id_knppegawai` int(25) NOT NULL,
  `id_pegawai` int(25) NOT NULL,
  `knp_terakhir` varchar(225) NOT NULL,
  `knp_datang` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `pensiun` varchar(225) NOT NULL,
  `timestamp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(25) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `nip` varchar(225) NOT NULL,
  `id_jabatan` int(25) NOT NULL,
  `id_golongan` int(25) NOT NULL,
  `unit_kerja` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nip`, `id_jabatan`, `id_golongan`, `unit_kerja`) VALUES
(35, 'Asep ganteng', '123456789', 1, 10, 'PENGADILAN AGAMA KARAWANG'),
(36, 'udin burik', '123456798', 2, 3, 'PENGADILAN AGAMA KARAWANG'),
(37, 'dimas', '987654321', 1, 10, 'PENGADILAN AGAMA KARAWANG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `nip` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` text NOT NULL,
  `foto` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nip`, `password`, `role`, `foto`) VALUES
(35, '123456789', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', NULL),
(36, '123456798', '81dc9bdb52d04dc20036dbd8313ed055', 'User', NULL),
(37, '987654321', '81dc9bdb52d04dc20036dbd8313ed055', 'User', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti_pegawai`
--
ALTER TABLE `cuti_pegawai`
  ADD PRIMARY KEY (`id_cutipegawai`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kgb_pegawai`
--
ALTER TABLE `kgb_pegawai`
  ADD PRIMARY KEY (`id_kgbpegawai`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `knp_pegawai`
--
ALTER TABLE `knp_pegawai`
  ADD PRIMARY KEY (`id_knppegawai`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_golongan` (`id_golongan`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuti_pegawai`
--
ALTER TABLE `cuti_pegawai`
  MODIFY `id_cutipegawai` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id_golongan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kgb_pegawai`
--
ALTER TABLE `kgb_pegawai`
  MODIFY `id_kgbpegawai` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knp_pegawai`
--
ALTER TABLE `knp_pegawai`
  MODIFY `id_knppegawai` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cuti_pegawai`
--
ALTER TABLE `cuti_pegawai`
  ADD CONSTRAINT `cuti_pegawai_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kgb_pegawai`
--
ALTER TABLE `kgb_pegawai`
  ADD CONSTRAINT `kgb_pegawai_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `knp_pegawai`
--
ALTER TABLE `knp_pegawai`
  ADD CONSTRAINT `knp_pegawai_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_golongan`) REFERENCES `golongan` (`id_golongan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
