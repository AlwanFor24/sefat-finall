-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 11, 2024 at 03:57 PM
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
-- Table structure for table `tms_admin`
--

CREATE TABLE `tms_admin` (
  `a_id` int(20) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL,
  `a_nomorinduk` int(20) NOT NULL,
  `a_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`, `a_nomorinduk`, `a_photo`) VALUES
(1, 'System Admin', 'admin1@mail.com', 'admin1', 1, NULL),
(2, 'System Admin', 'admin2@mail.com', 'admin2', 2, NULL),
(3, 'System Admin', 'admin3@mail.com', 'admin3', 3, NULL),
(4, 'System Admin', 'admin4@mail.com', 'admi4', 4, NULL),
(5, 'System Admin', 'admin@mail.com', 'admin5', 5, NULL),
(6, 'System Admin', 'admin5@mail.com', 'admin6', 6, NULL),
(7, 'System Admin', 'admin6@mail.com', 'admin7', 7, NULL),
(8, 'System Admin', 'admin7@mail.com', 'admin8', 87, NULL),
(9, 'System Admin', 'admin8@mail.com', 'admin9', 9, NULL),
(10, 'System Admin', 'admin9@mail.com', 'admin10', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tms_barang`
--

CREATE TABLE `tms_barang` (
  `id` int(20) NOT NULL,
  `barang_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_barang`
--

INSERT INTO `tms_barang` (`id`, `barang_name`) VALUES
(1, 'Barang A'),
(2, 'Barang B'),
(3, 'Barang C'),
(4, 'Barang D'),
(5, 'Barang E'),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_ruangan`
--

CREATE TABLE `tms_ruangan` (
  `id` int(20) NOT NULL,
  `ruangan_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_ruangan`
--

INSERT INTO `tms_ruangan` (`id`, `ruangan_name`) VALUES
(1, 'Ruangan A'),
(2, 'Ruangan B'),
(3, 'Ruangan C'),
(4, 'Ruangan D'),
(5, 'Ruangan E'),
(6, 'Ruang 4.01'),
(8, 'Ruang 4.10'),
(9, 'Ruang 4.10');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) DEFAULT NULL,
  `u_city` varchar(200) DEFAULT NULL,
  `u_country` varchar(200) DEFAULT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `tms_user_barang`
--

CREATE TABLE `tms_user_barang` (
  `user_id` int(20) NOT NULL,
  `barang_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_user_barang`
--

INSERT INTO `tms_user_barang` (`user_id`, `barang_id`) VALUES
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 2),
(46, 3),
(47, 2),
(47, 3),
(48, 2),
(48, 3),
(49, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_user_ruangan`
--

CREATE TABLE `tms_user_ruangan` (
  `user_id` int(20) NOT NULL,
  `ruangan_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_user_ruangan`
--

INSERT INTO `tms_user_ruangan` (`user_id`, `ruangan_id`) VALUES
(43, 4),
(43, 5),
(44, 4),
(44, 5),
(45, 2),
(45, 3),
(45, 4),
(46, 1),
(46, 2),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 3),
(49, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicle`
--

CREATE TABLE `tms_vehicle` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) DEFAULT NULL,
  `v_pass_no` varchar(200) DEFAULT NULL,
  `v_driver` varchar(200) DEFAULT NULL,
  `v_category` varchar(200) DEFAULT NULL,
  `v_dpic` varchar(200) DEFAULT NULL,
  `v_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicletype`
--

CREATE TABLE `vehicletype` (
  `id` int(20) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `unique_email` (`a_email`),
  ADD UNIQUE KEY `a_nomorinduk` (`a_nomorinduk`);

--
-- Indexes for table `tms_barang`
--
ALTER TABLE `tms_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `tms_ruangan`
--
ALTER TABLE `tms_ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `fk_ruangan` (`ruangan_id`),
  ADD KEY `fk_barang` (`barang_id`);

--
-- Indexes for table `tms_user_barang`
--
ALTER TABLE `tms_user_barang`
  ADD PRIMARY KEY (`user_id`,`barang_id`),
  ADD KEY `fk_user_barang_barang` (`barang_id`);

--
-- Indexes for table `tms_user_ruangan`
--
ALTER TABLE `tms_user_ruangan`
  ADD PRIMARY KEY (`user_id`,`ruangan_id`),
  ADD KEY `fk_user_ruangan_ruangan` (`ruangan_id`);

--
-- Indexes for table `vehicletype`
--
ALTER TABLE `vehicletype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tms_barang`
--
ALTER TABLE `tms_barang`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_ruangan`
--
ALTER TABLE `tms_ruangan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `vehicletype`
--
ALTER TABLE `vehicletype`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tms_user_barang`
--
ALTER TABLE `tms_user_barang`
  ADD CONSTRAINT `fk_user_barang_barang` FOREIGN KEY (`barang_id`) REFERENCES `tms_barang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_barang_user` FOREIGN KEY (`user_id`) REFERENCES `tms_user` (`u_id`) ON DELETE CASCADE;

--
-- Constraints for table `tms_user_ruangan`
--
ALTER TABLE `tms_user_ruangan`
  ADD CONSTRAINT `fk_user_ruangan_ruangan` FOREIGN KEY (`ruangan_id`) REFERENCES `tms_ruangan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_ruangan_user` FOREIGN KEY (`user_id`) REFERENCES `tms_user` (`u_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
