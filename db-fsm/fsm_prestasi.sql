-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2018 at 05:24 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsm_prestasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `namalengkap` varchar(100) NOT NULL,
  `jurusan` varchar(15) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `namalengkap`, `jurusan`, `nim`, `email`, `password`, `date_created`) VALUES
(1, 'sadasd', '3', '29291919191919', 'asdasdsa@sad.com', 'coba', '2018-01-31 00:00:00'),
(2, 'sadasd', '1', '29291919191919', 'asdasdsa@sad.com', 'coba', '2018-01-31 00:00:00'),
(5, 'Dinar Yuliani', '1', '24010314130109', 'dinar@yuliani.com', 'c3ec0f7b054e729c5a716c8125839829', '2018-01-31 11:28:15'),
(6, 'Asdasd', '3', '12121212121212', 'dfdsffd@sdas.com', '1621a5dc746d5d19665ed742b2ef9736', '2018-01-31 11:31:48'),
(7, 'Amriza Putra', '3', '29312930123912', 'amriza.wibowo@yahoo.com', 'c3ec0f7b054e729c5a716c8125839829', '2018-01-31 11:37:10'),
(8, 'Fabian Bajili', '1', '24010314130101', 'fabian@mail.com', 'c3ec0f7b054e729c5a716c8125839829', '2018-01-31 17:41:58'),
(9, 'Amajona Adorada', '5', '24010314130129', 'amajona@sa.com', 'c3ec0f7b054e729c5a716c8125839829', '2018-01-31 17:44:18'),
(10, 'Asdlsajaskd Saasd', '2', '12454456535656', 'ajsjas@saksa.com', '7e6750a177bdb38d67980de28a884681', '2018-01-31 18:42:49'),
(11, 'Asdasd', '1', '24010888888888', 'ads@csa.com', '7e6750a177bdb38d67980de28a884681', '2018-01-31 19:19:55'),
(12, 'Statistika', '5', '24010214130107', 'stat@stat.com', '7e6750a177bdb38d67980de28a884681', '2018-01-31 19:31:25'),
(13, 'Fisika', '4', '24040123456789', 'fis@fis.com', '7e6750a177bdb38d67980de28a884681', '2018-01-31 19:32:34'),
(14, 'Amriza Putra', '6', '24060888888888', 'amriza@amri.com', '7e6750a177bdb38d67980de28a884681', '2018-01-31 19:35:06'),
(15, 'Johan Eko Purnomo', '6', '24010314130107', 'johanrahar@gmail.com', 'e5378e038bbd4c32dfdc08b2fde8225b', '2018-02-01 11:12:57'),
(16, 'Utin', '6', '24010314130111', 'utin@utin.com', '7e6750a177bdb38d67980de28a884681', '2018-02-03 18:08:05'),
(17, 'Akun A', '6', '24010314130222', 'akun@akun.com', '7e6750a177bdb38d67980de28a884681', '2018-02-03 18:19:09'),
(18, 'Akun B', '6', '24010314130333', 'akun1@akun.com', '7e6750a177bdb38d67980de28a884681', '2018-02-03 18:20:08'),
(19, 'Akun C', '6', '24010314130155', 'akunc@akun.com', '7e6750a177bdb38d67980de28a884681', '2018-02-03 18:39:36'),
(20, 'Cinta', '6', '24010314130108', 'll@gmail.com', 'c3653e4408832e6611f37dcd90544de8', '2018-02-06 12:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_prestasi`
--

CREATE TABLE `user_prestasi` (
  `id_prestasi` int(5) NOT NULL,
  `nim` varchar(14) NOT NULL,
  `nama_prestasi` varchar(150) NOT NULL,
  `peringkat_prestasi` varchar(100) NOT NULL,
  `tipe_prestasi` int(2) NOT NULL,
  `role_prestasi` varchar(70) NOT NULL,
  `jenis_prestasi` int(2) NOT NULL,
  `level_prestasi` varchar(2) NOT NULL,
  `deskripsi_prestasi` text NOT NULL,
  `reward_poin` int(3) NOT NULL,
  `tgl_prestasi_start` date NOT NULL,
  `tgl_prestasi_end` date NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_prestasi`
--

INSERT INTO `user_prestasi` (`id_prestasi`, `nim`, `nama_prestasi`, `peringkat_prestasi`, `tipe_prestasi`, `role_prestasi`, `jenis_prestasi`, `level_prestasi`, `deskripsi_prestasi`, `reward_poin`, `tgl_prestasi_start`, `tgl_prestasi_end`, `date_modified`) VALUES
(1, '24010314130107', 'dsfds', 'asdas', 2, 'ddfdfsf', 1, '3', 'asd', 0, '2018-02-02', '0000-00-00', '2018-02-05 12:33:01'),
(4, '24010314130107', 'dfhdfh', 'sdsdf', 2, 'sdfsdfsd', 1, '2', 'sdfsdfsd', 3, '0000-00-00', '0000-00-00', '2018-02-05 16:38:16'),
(5, '24010314130107', 'asdasdfasf', 'asdsa', 2, 'asdasdas', 1, '4', 'asdasdas', 5, '2018-02-07', '2018-02-02', '2018-02-05 20:54:54'),
(6, '24010314130107', 'edit1', 'edit1', 2, 'edit1', 1, '4', 'edit1', 5, '2018-02-08', '2018-02-12', '2018-02-05 20:56:41'),
(7, '24010314130107', 'etdr', 'dsrsdr', 1, 'srsrsr', 2, '3', 'srsrsr', 4, '2018-02-21', '2018-02-11', '2018-02-06 12:08:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_prestasi`
--
ALTER TABLE `user_prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user_prestasi`
--
ALTER TABLE `user_prestasi`
  MODIFY `id_prestasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
