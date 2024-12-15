-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 02:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sementara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(3, 'demo1@gmail.com', 'demo1');

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `id_pekerja` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pekerja` varchar(30) NOT NULL,
  `kontak` int(12) NOT NULL,
  PRIMARY KEY (`id_pekerja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`id_pekerja`, `nama_pekerja`, `kontak`) VALUES
(42, 'ANDIKAAAA', 123),
(43, 'ABIM', 129876),
(44, 'BAGUS', 342121),
(45, 'BUNGA MAWAR', 2345678),
(46, 'CACA FARIDA', 23454321);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(20) NOT NULL,
  `nama_pemesan` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `total_pekerja` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `id_user`, `nama_pemesan`, `metode_pembayaran`, `status`, `total_pekerja`) VALUES
(14, 3, '123', '12', 'Rejected', 2),
(15, 3, '123', '12', 'Accepted', 2),
(16, 3, '123123', 'DANA', 'Accepted', 0),
(17, 3, '123123', 'DANA', 'Accepted', 0),
(18, 3, 'jhofan', 'DANA', 'pending', 0),
(19, 3, 'dila', 'OVO', 'pending', 0),
(20, 5, 'muse', 'GOPAY', 'pending', 0),
(21, 7, 'firma', 'GOPAY', 'Accepted', 0),
(22, 7, 'baron', 'OVO', 'pending', 0),
(23, 9, 'sukirman', 'GOPAY', 'pending', 0),
(24, 10, 'Juki', 'OVO', 'pending', 0),
(25, 11, 'yaa', 'GOPAY', 'Accepted', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `phone`, `password`) VALUES
(1, 'jhofany', 'dadasd@gmail.com', 77267821, 'pbkdf2:sha256:600000$6LZRXbUA2jPVeCaZ$10ddfd87cdde871c42dc47c81be7565444df2e07edb5da8cdb13e0876dc993ef'),
(2, 'pertemuan5', 'a23sd@gmail.com', 213, 'pbkdf2:sha256:600000$TfmYlaflTiNUTnrQ$b88df3691bdc2dc7f0f0a91a00516abcbe0f2449a51f69f520d328a52c7d4912'),
(3, 'demo1', 'demo1@gmail.com', 21323, 'pbkdf2:sha256:600000$RkW6kY6Ff6DRwU4q$ccc509834554026b27d0587aef9375fb8bf1323f41301cc2dc4460dbcb67eac4'),
(4, 'coba1', 'coba1@gmail.com', 2147483647, 'pbkdf2:sha256:600000$UWCukcLR2g4jjdJF$2f1bf7f3e720b420ff689655113f388632c3ba3de5aee344077204203f7dffc0'),
(5, 'dila', 'dila@gmail.com', 8172112, 'pbkdf2:sha256:600000$c5UiPHQWZXPDc4Y0$fc17b9f06783352149588e14f818713bd26c6a18c498705560250ef1e146c4bc');

-- --------------------------------------------------------

--
-- Foreign Keys
--

ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
