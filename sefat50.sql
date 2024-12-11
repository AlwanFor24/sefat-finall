-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 11, 2024 at 03:17 PM
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
-- Database: `sefat50`
--

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_license` varchar(200) DEFAULT NULL,
  `u_kettambahan` longtext DEFAULT NULL,
  `u_category` varchar(200) DEFAULT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(20) DEFAULT NULL,
  `u_car_type` varchar(255) DEFAULT NULL,
  `u_car_regno` varchar(255) DEFAULT 'Not Specified',
  `u_car_bookdate` date DEFAULT NULL,
  `u_car_book_status` varchar(255) DEFAULT 'Not Specified',
  `u_source` varchar(255) DEFAULT NULL,
  `u_destination` varchar(255) DEFAULT NULL,
  `ruangan_id` varchar(255) DEFAULT NULL,
  `barang_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_license`, `u_kettambahan`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`, `u_source`, `u_destination`, `ruangan_id`, `barang_id`) VALUES
(37, 'Trial', 'Trial', '12777', 'IF', NULL, NULL, NULL, 'afu@mail.com', 'arif', '', '', '0000-00-00', '', NULL, NULL, NULL, NULL),
(38, 'Trial', 'Trial', '193710', 'IF', NULL, NULL, NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Not Specified', NULL, NULL, NULL, NULL),
(39, 'Trial', 'Trial', '1999', 'IF', 'rps-4gEbd1Bf9XxIX2h8yuSz3509I4w16xakP9vztwD3.pdf', NULL, NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Approved', NULL, NULL, '1', '2'),
(40, 'Trial', 'Trial', '1133', 'IF', NULL, 'INFEST', NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Approved', NULL, NULL, '4', '5'),
(41, 'Yu', 'Yi', '811992', 'IF', NULL, 'INFEST', NULL, 'yiyu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Approved', NULL, NULL, '3', '1'),
(42, 'Trial', 'Yi', '171721', 'IF', 'rps-4gEbd1Bf9XxIX2h8yuSz3509I4w16xakP9vztwD3.pdf', 'INFEST', NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Pending', NULL, NULL, '4', '1'),
(43, 'Trial', 'Yi', '171721', 'IF', 'rps-4gEbd1Bf9XxIX2h8yuSz3509I4w16xakP9vztwD3.pdf', 'INFEST', NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Pending', NULL, NULL, NULL, NULL),
(44, 'Trial', 'Yi', '171721', 'IF', 'rps-4gEbd1Bf9XxIX2h8yuSz3509I4w16xakP9vztwD3.pdf', 'INFEST', NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Approved', NULL, NULL, NULL, NULL),
(45, 'Yu', 'yu', '90888', 'IF', NULL, 'INFEST', NULL, 'yu@mail.com', NULL, NULL, 'Not Specified', '0000-00-00', 'Approved', NULL, NULL, '1', '1'),
(46, 'Trial', 'Yi', '7767', 'IF', 'rps-4gEbd1Bf9XxIX2h8yuSz3509I4w16xakP9vztwD3.pdf', 'INFEST', NULL, 'yu@mail.com', NULL, NULL, 'Not Specified', '2024-12-12', 'Approved', NULL, NULL, NULL, NULL),
(47, 'Trial', 'Yun', '7767', 'IF', NULL, 'INFEST', NULL, 'yu@mail.com', NULL, '', '', '0000-00-00', 'Approved', NULL, NULL, 'Ruangan D', 'Barang C'),
(48, 'Trial', 'Yi', '7767', 'IF', 'rps-4gEbd1Bf9XxIX2h8yuSz3509I4w16xakP9vztwD3.pdf', 'INFEST', NULL, 'yu@mail.com', NULL, NULL, 'Not Specified', '2024-12-12', 'Pending', NULL, NULL, NULL, NULL),
(49, 'Trial', 'Yi', '17171', 'IF', 'rps-4gEbd1Bf9XxIX2h8yuSz3509I4w16xakP9vztwD3.pdf', 'INFEST', NULL, 'yiyu@mail.com', NULL, NULL, 'Not Specified', '2024-12-12', 'Pending', NULL, NULL, NULL, NULL),
(51, 'Trial', 'Yi', '889991', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'yiyu@mail.com', NULL, NULL, 'Not Specified', '2024-12-14', 'Pending', NULL, NULL, '3', '4'),
(52, 'Trial', 'Trial', '181818', 'IF', NULL, 'INFEST', NULL, 'yu@mail.com', NULL, '', '', '0000-00-00', 'Approved', NULL, NULL, '1', '1'),
(53, 'Yu', 'Trial', '19919191', 'IF', 'https://github.com/', 'INFEST', NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '2024-12-20', 'Pending', NULL, NULL, '5', '1'),
(54, 'Atila', 'Pol', '1109290', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'atila@mail.com', NULL, NULL, 'Not Specified', '2024-12-13', 'Approved', NULL, NULL, NULL, NULL),
(56, 'Yu', 'yu', '777', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'atila@mail.com', NULL, NULL, 'Not Specified', '2024-12-18', 'Pending', NULL, NULL, NULL, NULL),
(57, 'Atila', 'Ai', '11111', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'atila@mail.com', NULL, '', '', '0000-00-00', '', NULL, NULL, NULL, NULL),
(64, 'Atila', 'aai', '111', 'IF', 'https://github.com/', 'INFEST', NULL, 'yu@mail.com', NULL, NULL, 'Not Specified', '2024-12-14', 'Pending', NULL, NULL, '2', '5'),
(67, 'Yu', 'Pol', '1', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'atila@mail.com', NULL, NULL, 'Not Specified', '2024-12-28', 'Pending', NULL, NULL, '5', '1'),
(68, 'Lu', 'Pua', '2', 'IF', 'https://github.com/', 'INFEST', NULL, 'lupua@mail.com', NULL, NULL, 'Not Specified', '2024-12-12', 'Pending', NULL, NULL, '3', '4'),
(70, 'Leisu', 'Yu', '11112', 'IF', NULL, 'INFEST', NULL, '2025-01-11', NULL, NULL, 'Not Specified', '2025-01-04', 'Approved', NULL, NULL, 'Ruangan B', 'Barang E'),
(71, 'YuJi', 'Yi', '1111', '', 'https://www.youtube.com/', 'INFEST', NULL, 'yiyu@mail.com', NULL, '', '', '0000-00-00', '', NULL, NULL, 'Ruangan B', 'Barang C'),
(73, 'Atila', 'Yi', '191919', 'IF', 'https://github.com/', 'INFEST', NULL, 'yiyu@mail.com', NULL, NULL, 'Not Specified', '2025-01-04', 'Pending', NULL, NULL, 'Ruangan B', 'Barang E'),
(74, 'Yu', 'Ai', '1112', 'IF', 'https://github.com/', 'INFEST', NULL, 'atila@mail.com', NULL, NULL, 'Not Specified', '2024-12-13', 'Pending', NULL, NULL, 'Ruangan D', 'Barang C'),
(75, 'Lu', 'Yi', '7999', 'IF', NULL, 'INFEST', NULL, 'yu@mail.com', NULL, NULL, 'Not Specified', '2024-12-13', 'Approved', NULL, NULL, 'Ruangan E', 'Barang C'),
(76, 'Rausa', 'Polishet', '18899', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'lupua@mail.com', NULL, NULL, 'Not Specified', '2024-12-19', 'Pending', NULL, NULL, 'Ruang 4.10', 'Barang C'),
(77, 'Yu', 'Pol', '77777', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'afu@mail.com', NULL, NULL, 'Not Specified', '2024-12-14', 'Pending', NULL, NULL, 'Ruangan D', 'Barang D'),
(78, 'atila', 'Pi', '123', 'if', 'https://github.com/', 'lomba', NULL, 'yu@mail.com', NULL, NULL, 'Not Specified', '2024-12-20', 'Pending', NULL, NULL, 'Ruangan B', 'Barang C'),
(79, 'Arif', 'Rahman', '026', 'IF', 'https://www.youtube.com/', 'INFEST', NULL, 'arif@mail.com', NULL, NULL, 'Not Specified', '2024-12-12', 'Approved', NULL, NULL, 'Ruangan D', 'Barang D'),
(80, 'Arif ', 'Mubarok', '026', 'IF', NULL, 'INFEST', NULL, 'arif@mail.com', NULL, NULL, 'Not Specified', '2024-12-14', 'Approved', NULL, NULL, 'Ruang 4.01', 'Barang C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `fk_ruangan` (`ruangan_id`),
  ADD KEY `fk_barang` (`barang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
