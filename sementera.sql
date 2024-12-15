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
-- Database: `sementera`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
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
  `id_pekerja` int(11) NOT NULL,
  `nama_pekerja` varchar(30) NOT NULL,
  `kontak` int(12) NOT NULL
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
  `id` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `nama_pemesan` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `total_pekerja` int(12) NOT NULL
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
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `phone`, `password`) VALUES
(1, 'jhofany', 'dadasd@gmail.com', 77267821, 'pbkdf2:sha256:600000$6LZRXbUA2jPVeCaZ$10ddfd87cdde871c42dc47c81be7565444df2e07edb5da8cdb13e0876dc993ef'),
(2, 'pertemuan5', 'a23sd@gmail.com', 213, 'pbkdf2:sha256:600000$TfmYlaflTiNUTnrQ$b88df3691bdc2dc7f0f0a91a00516abcbe0f2449a51f69f520d328a52c7d4912'),
(3, 'demo1', 'demo1@gmail.com', 21323, 'pbkdf2:sha256:600000$RkW6kY6Ff6DRwU4q$ccc509834554026b27d0587aef9375fb8bf1323f41301cc2dc4460dbcb67eac4'),
(4, 'coba1', 'coba1@gmail.com', 2147483647, 'pbkdf2:sha256:600000$UWCukcLR2g4jjdJF$2f1bf7f3e720b420ff689655113f388632c3ba3de5aee344077204203f7dffc0'),
(5, 'dila', 'dila@gmail.com', 8172112, 'pbkdf2:sha256:600000$c5UiPHQWZXPDc4Y0$fc17b9f06783352149588e14f818713bd26c6a18c498705560250ef1e146c4bc'),
(6, 'firma', 'firma@gmail.com', 81231212, 'pbkdf2:sha256:600000$3Py9zyBJxWmWtv9a$b880d455f522a7b1aa28abeb38ad7eeb39a6be8cec1f726840b0d887e0a4d731'),
(7, 'demo123', 'demo123@gmail.com', 812343112, 'pbkdf2:sha256:600000$GhPbuFtFV6124zCv$091b781ab3d9ca246cdb23187947b6a9f12ee6ae73698f40c7ab4acb88a85e8f'),
(8, 'dem3', 'demo3@gmail.com', 9281212, 'pbkdf2:sha256:600000$Qgek98b5IN2wwjxW$2a317d31880cc4ed6b2d6cedf298cc35c577d819171eb87ce1ff431e769b24b4'),
(9, 'sukirman', 'sukirman@gmail.com', 2147483647, 'pbkdf2:sha256:600000$1W5PTRIYKgaQK3Iy$9681ef7b9ee1d824cbc995f04b594beccde268b6a701caab2a63d9aed2b7717e'),
(10, 'juki', 'juki@gmail.com', 2147483647, 'pbkdf2:sha256:600000$3fmFEBc7upA4INJh$5b1d4d6f4a2fa41f79ed9727ddc61decb999f6816c6922b73f633d8aa6d1db58'),
(11, 'yyaa', 'yaudah@gmail.com', 2147483647, 'pbkdf2:sha256:600000$PDo0Esc3d8OPsS6h$fcf953183f6c3cbe29f24b9a94171bbca998c0fb3898df6cc020489bf0a610bb'),
(12, 'demo12', 'demo12@gmail.com', 23234234, 'pbkdf2:sha256:600000$mFQqiMKLJrZdpaE2$5759fc15b211a6ebcfd83b3d091dd6cc54f517427a1b038ad10946700567d24b'),
(13, 'qq', 'qq@gmail.com', 23, 'pbkdf2:sha256:600000$BNTvNahwcQETMMiP$6acc3753a3e5a78e633a381179b58719a21b935918f33974a8266b23cd25bceb'),
(14, 'rdry', 'eryr@gmail.com', 1234567, 'pbkdf2:sha256:600000$wjpQAg8yzmT7DUjg$0b39704d73cd178389dc0bb1737510a2c9269971b3b1cf7e8050c0a7ca54b901'),
(15, 'dg', 'fd@gmail.com', 12345678, 'pbkdf2:sha256:600000$7zdGx6HegnhxhdXf$39e22d1d1a9eeb908e5da65f51a1d8f284df1a48f61c3817302186b887577b22'),
(21, 'wes', 'wes@gmail.com', 23456780, 'pbkdf2:sha256:600000$pAbIIbexE4o99PdJ$badb8e8578e9e31fff7fcfd422411ba814a5e7210524b01151f69e96a254e61e'),
(22, 'rw', 'rw@gmail.com', 98763456, 'pbkdf2:sha256:600000$9HNEaL6KabD2S129$0a9e70d319347a9034b5865f9b075ed98b8eea134880e9c59f56548c488bf75c'),
(23, 'ad', 'as@gmail.com', 234532, 'pbkdf2:sha256:600000$TOYw05vAfRAOzh9v$4d52839b2d169329a2fa11f4c3ed65e13af03314c9f8e7329f5827aa715001fc'),
(24, 'qw', 'qw@gmail.com', 1244, 'pbkdf2:sha256:600000$40qQH1esrAAciWp8$752249cee78a8be40ace78675a3278a533a1cec2fcacbd3f6f42b66d9d864e2b'),
(25, 'fg', 'fg@gmail.com', 234, 'pbkdf2:sha256:600000$ERxqgWj6noARAxag$54d8ea1b671b4e950475803e4dda39bd91933c712ab67e8b8f3c8efc29c56e9a'),
(26, 'eq', 'e@gmail.com', 2345432, 'pbkdf2:sha256:600000$FSzUeUHNX8gevLoB$5ec6751dba98aab5d6627e7240d1cd0352918fa361cfe9f2d14f9655782d911b'),
(27, 'fab', 'f@gmail.com', 121341, 'pbkdf2:sha256:600000$Auu7gqg2X6clJp9v$0d0b831dad0a0547ad46b4ac4fd1fd964d756a63a84bcab936001da094f1c18d'),
(28, 'fad', 'ade@gmail.com', 234567654, 'pbkdf2:sha256:600000$vJFzF8bmt9osKaYh$99b47dbb90b48b60089da21b07a3bfc8c414825e40bc57a3815d7cbb2b27814e'),
(29, 'ya', 'ya@gmaiol.com', 12, 'pbkdf2:sha256:600000$g4kUu1geYNzsqn1R$45eea11e370fee36c22d350fc8ba8f06084400769c10f335abafe33f73abd060'),
(30, 'uyy', 'uyy@gmail.com', 123, 'pbkdf2:sha256:600000$OxNq4AVKp11pO4Sy$f187882405b7f7e32c12f70384a27ac88d1364bd3a74ba562b9d290a4bdd6e8e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`id_pekerja`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `id_pekerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
