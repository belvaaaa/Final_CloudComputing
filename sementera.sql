-- phpMyAdmin SQL Dump
-- version 5.2.1
-- Host: 127.0.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Character set settings
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `sementera`
CREATE DATABASE IF NOT EXISTS sementera;
USE sementera;

-- Table structure for table `users`
CREATE TABLE `users` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` BIGINT(20) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data for table `users`
INSERT INTO `users` (`id_user`, `name`, `email`, `phone`, `password`) VALUES
(1, 'jhofany', 'dadasd@gmail.com', 77267821, 'pbkdf2:sha256:600000$6LZRXbUA2jPVeCaZ$10ddfd87cdde871c42dc47c81be7565444df2e07edb5da8cdb13e0876dc993ef'),
(2, 'pertemuan5', 'a23sd@gmail.com', 213, 'pbkdf2:sha256:600000$TfmYlaflTiNUTnrQ$b88df3691bdc2dc7f0f0a91a00516abcbe0f2449a51f69f520d328a52c7d4912');

-- Table structure for table `pemesanan`
CREATE TABLE `pemesanan` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_user` INT(11) NOT NULL,
  `nama_pemesan` VARCHAR(20) NOT NULL,
  `metode_pembayaran` VARCHAR(20) NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  `total_pekerja` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data for table `pemesanan`
INSERT INTO `pemesanan` (`id`, `id_user`, `nama_pemesan`, `metode_pembayaran`, `status`, `total_pekerja`) VALUES
(1, 1, 'jhofany', 'DANA', 'Accepted', 2);

-- Table structure for table `admin`
CREATE TABLE `admin` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data for table `admin`
INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@example.com', 'adminpass');

-- Table structure for table `pekerja`
CREATE TABLE `pekerja` (
  `id_pekerja` INT(11) NOT NULL AUTO_INCREMENT,
  `nama_pekerja` VARCHAR(30) NOT NULL,
  `kontak` BIGINT(12) NOT NULL,
  PRIMARY KEY (`id_pekerja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data for table `pekerja`
INSERT INTO `pekerja` (`id_pekerja`, `nama_pekerja`, `kontak`) VALUES
(1, 'Andika', 123456789);

-- End of transaction
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
