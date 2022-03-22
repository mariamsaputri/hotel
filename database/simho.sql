-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 10:14 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simho`
--

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE `check_in` (
  `idcheck_in` int(11) NOT NULL,
  `jumlah` tinyint(4) NOT NULL,
  `biaya` int(11) NOT NULL,
  `tgl_check_in` date NOT NULL,
  `idpelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `check_in`
--

INSERT INTO `check_in` (`idcheck_in`, `jumlah`, `biaya`, `tgl_check_in`, `idpelanggan`) VALUES
(5, 1, 500000, '2022-03-15', 30),
(6, 1, 250000, '2022-03-16', 31),
(7, 1, 750000, '2022-03-23', 32),
(9, 1, 500000, '2022-03-07', 33),
(10, 1, 250000, '2022-03-20', 35),
(11, 1, 500000, '2022-03-21', 36);

-- --------------------------------------------------------

--
-- Table structure for table `check_in_kamar`
--

CREATE TABLE `check_in_kamar` (
  `idcheck_in` int(11) NOT NULL,
  `idruang_kamar` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `check_in_kamar`
--

INSERT INTO `check_in_kamar` (`idcheck_in`, `idruang_kamar`, `created_at`) VALUES
(1, 6, '2022-03-14 17:33:40'),
(1, 7, '2022-03-14 17:33:40'),
(1, 8, '2022-03-14 17:33:40'),
(1, 9, '2022-03-14 17:33:40'),
(1, 10, '2022-03-14 17:33:40'),
(2, 1, '2022-03-14 17:33:40'),
(2, 2, '2022-03-14 17:33:40'),
(2, 3, '2022-03-14 17:33:40'),
(3, 18, '2022-03-14 17:33:40'),
(3, 19, '2022-03-14 17:33:40'),
(3, 20, '2022-03-14 17:33:40'),
(5, 7, '2022-03-14 17:33:40'),
(6, 4, '2022-03-14 19:46:07'),
(7, 13, '2022-03-14 19:48:25'),
(0, 10, '2022-03-17 07:59:25'),
(9, 7, '2022-03-17 08:00:49'),
(10, 1, '2022-03-20 11:15:02'),
(11, 6, '2022-03-21 10:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `check_out`
--

CREATE TABLE `check_out` (
  `idcheck_out` int(11) NOT NULL,
  `tgl_check_out` date NOT NULL,
  `biaya_lain` int(11) DEFAULT '0',
  `idcheck_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `check_out`
--

INSERT INTO `check_out` (`idcheck_out`, `tgl_check_out`, `biaya_lain`, `idcheck_in`) VALUES
(5, '2022-03-16', 0, 5),
(6, '2022-03-15', 0, 6),
(7, '2022-03-29', 0, 7),
(8, '2003-04-03', 0, 0),
(9, '2022-03-18', 0, 9),
(10, '2022-03-21', 0, 10),
(11, '2022-03-22', 0, 11);

-- --------------------------------------------------------

--
-- Stand-in structure for view `histori_order`
--
CREATE TABLE `histori_order` (
`status_order` enum('baru','lunas','selesai','batal')
,`idorder` int(11)
,`nama` varchar(45)
,`no_ktp` varchar(18)
,`tgl_check_in` date
,`tgl_check_out` date
,`biaya` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `lihat_bayar`
--
CREATE TABLE `lihat_bayar` (
`idorder` int(11)
,`nama` varchar(45)
,`no_ktp` varchar(18)
,`tgl_check_in` date
,`tgl_check_out` date
,`biaya` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `idorder` int(11) NOT NULL,
  `status_order` enum('baru','lunas','selesai','batal') NOT NULL,
  `idcheck_in` int(11) NOT NULL,
  `tgl_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`idorder`, `status_order`, `idcheck_in`, `tgl_order`) VALUES
(5, 'selesai', 5, '2022-03-14 10:33:40'),
(6, 'selesai', 6, '2022-03-14 12:46:07'),
(7, 'selesai', 7, '2022-03-14 12:48:25'),
(8, 'baru', 0, '2022-03-17 00:59:25'),
(9, 'selesai', 9, '2022-03-17 01:00:50'),
(10, 'selesai', 10, '2022-03-20 04:15:02'),
(11, 'selesai', 11, '2022-03-21 03:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `no_ktp` varchar(18) NOT NULL,
  `telepon` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `nama`, `alamat`, `no_ktp`, `telepon`) VALUES
(30, 'mariam', 'jalan mana aja', '12345', '085723892378462897'),
(31, 'iki', 'jalan batujajar', '12345', '120012012'),
(32, 'arfan', 'jalan atas', '1232313', '121121212'),
(33, 'riski', 'JALAN', '24325470323', '435242332445'),
(35, 'leo', 'JALAN', '24325470323', '435242332445'),
(36, 'leo', 'jalan batujajar', '24325470323', '089244567432'),
(37, 'cici', 'jalan batujajar', '24325470323', '089244567432'),
(38, 'desi', 'JALAN', '24325470323', '435242332445'),
(39, 'mariam', 'JALAN', '24325470323', '089244567432');

-- --------------------------------------------------------

--
-- Table structure for table `ruang_kamar`
--

CREATE TABLE `ruang_kamar` (
  `idruang_kamar` int(11) NOT NULL,
  `id_tipe_kamar` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ruang_kamar`
--

INSERT INTO `ruang_kamar` (`idruang_kamar`, `id_tipe_kamar`, `status`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 2, 1),
(7, 2, 1),
(8, 2, 1),
(9, 2, 1),
(10, 2, 0),
(11, 3, 1),
(12, 3, 1),
(13, 3, 1),
(14, 3, 1),
(15, 3, 1),
(16, 4, 1),
(17, 4, 1),
(18, 4, 0),
(19, 4, 0),
(20, 4, 0),
(21, 1, 1),
(22, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kamar`
--

CREATE TABLE `tipe_kamar` (
  `idtipe_kamar` tinyint(4) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `singkatan` varchar(15) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipe_kamar`
--

INSERT INTO `tipe_kamar` (`idtipe_kamar`, `nama`, `singkatan`, `harga`) VALUES
(1, 'Basic', 'Bas', 250000),
(2, 'Premium', 'Prem', 500000),
(3, 'Grand', 'Grd', 750000),
(4, 'Royal', 'Roy', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','pelanggan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'pelanggan', '7f78f06d2d1262a0a222ca9834b15d9d', 'pelanggan'),
(3, 'test', '45edd741812abf42a7b799a6fc558d9c', 'pelanggan'),
(4, 'mariam', '81dc9bdb52d04dc20036dbd8313ed055', 'pelanggan'),
(5, 'hari', 'a9bcf1e4d7b95a22e2975c812d938889', 'pelanggan');

-- --------------------------------------------------------

--
-- Structure for view `histori_order`
--
DROP TABLE IF EXISTS `histori_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `histori_order`  AS  select `o`.`status_order` AS `status_order`,`o`.`idorder` AS `idorder`,`p`.`nama` AS `nama`,`p`.`no_ktp` AS `no_ktp`,`ci`.`tgl_check_in` AS `tgl_check_in`,`co`.`tgl_check_out` AS `tgl_check_out`,`ci`.`biaya` AS `biaya` from (((`order` `o` join `pelanggan` `p`) join `check_in` `ci`) join `check_out` `co`) where ((`o`.`idcheck_in` = `ci`.`idcheck_in`) and (`ci`.`idpelanggan` = `p`.`idpelanggan`) and (`co`.`idcheck_in` = `ci`.`idcheck_in`)) ;

-- --------------------------------------------------------

--
-- Structure for view `lihat_bayar`
--
DROP TABLE IF EXISTS `lihat_bayar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lihat_bayar`  AS  select `o`.`idorder` AS `idorder`,`p`.`nama` AS `nama`,`p`.`no_ktp` AS `no_ktp`,`ci`.`tgl_check_in` AS `tgl_check_in`,`co`.`tgl_check_out` AS `tgl_check_out`,`ci`.`biaya` AS `biaya` from (((`order` `o` join `pelanggan` `p`) join `check_in` `ci`) join `check_out` `co`) where ((`o`.`idcheck_in` = `ci`.`idcheck_in`) and (`ci`.`idpelanggan` = `p`.`idpelanggan`) and (`co`.`idcheck_in` = `ci`.`idcheck_in`) and (`o`.`status_order` = 'baru')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `check_in`
--
ALTER TABLE `check_in`
  ADD PRIMARY KEY (`idcheck_in`),
  ADD KEY `fk_check_in_pelanggan_idx` (`idpelanggan`);

--
-- Indexes for table `check_in_kamar`
--
ALTER TABLE `check_in_kamar`
  ADD KEY `fk_check_in_kamar_ruang_kamar_idx` (`idruang_kamar`),
  ADD KEY `fk_check_in_kamar_check_in` (`idcheck_in`);

--
-- Indexes for table `check_out`
--
ALTER TABLE `check_out`
  ADD PRIMARY KEY (`idcheck_out`),
  ADD KEY `fk_check_out_check_in_idx` (`idcheck_in`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idorder`),
  ADD KEY `fk_order_check_in_idx` (`idcheck_in`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `ruang_kamar`
--
ALTER TABLE `ruang_kamar`
  ADD PRIMARY KEY (`idruang_kamar`);

--
-- Indexes for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  ADD PRIMARY KEY (`idtipe_kamar`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `check_in`
--
ALTER TABLE `check_in`
  MODIFY `idcheck_in` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `check_out`
--
ALTER TABLE `check_out`
  MODIFY `idcheck_out` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `idorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `ruang_kamar`
--
ALTER TABLE `ruang_kamar`
  MODIFY `idruang_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  MODIFY `idtipe_kamar` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `check_in`
--
ALTER TABLE `check_in`
  ADD CONSTRAINT `fk_check_in_pelanggan` FOREIGN KEY (`idpelanggan`) REFERENCES `pelanggan` (`idpelanggan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
