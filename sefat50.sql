-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2024 at 12:25 PM
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
  `a_id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL,

  --TAMBAHAN MY VERSI--
  'a_nomorinduk' int(20) NOT NULL,
  'a_photo' varchar(255) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(1, 'System Admin', 'admin1@mail.com', 'admin1', '001', NULL),
(2, 'System Admin', 'admin2@mail.com', 'admin2', '002', NULL),
(3, 'System Admin', 'admin3@mail.com', 'admin3', '003', NULL),
(4, 'System Admin', 'admin4@mail.com', 'admi4', '004', NULL),
(5, 'System Admin', 'admin@mail.com', 'admin5', '005', NULL),
(6, 'System Admin', 'admin5@mail.com', 'admin6', '006', NULL),
(7, 'System Admin', 'admin6@mail.com', 'admin7', '007', NULL),
(8, 'System Admin', 'admin7@mail.com', 'admin8', '0087', NULL),
(9, 'System Admin', 'admin8@mail.com', 'admin9', '009', NULL),
(10, 'System Admin', 'admin9@mail.com', 'admin10', '010', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_feedback`
--

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(4, 'reeya khatiwada ', 'Ekdam ramro daam maaa dherai nai sajilai sanga jana paye. Highly Recommended...', 'Published'),
(5, 'reeya khatiwada ', 'hi', 'Published'),
(6, 'reeya khatiwada ', 'Nice', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_pwd_resets`
--

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(1, 'admin@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,

  `u_ip` varbinary(200) NULL,
  `u_city` varchar(200)  NULL,
  `u_country` varchar(200)  NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,

  --Tambahan my Version--
  'u_license' varchar(200) NULL,
  'u_kettambahan' longtext NULL,

  --AKHIR Tambahan my Version--
  `u_category` varchar(200) NULL,
  `u_email` varchar(200) NOT NULL,

  `u_pwd` varchar(20) NULL,
  `u_car_type` varchar(255) NULL,
  `u_car_regno` varchar(255) NULL DEFAULT 'Not Specified',
  `u_car_bookdate` int(15) NOT NULL,
  `u_car_book_status` varchar(255) NULL DEFAULT 'Not Specified',
  `u_source` varchar(255) NULL,
  `u_destination` varchar(255) NULL,
  'ruangan_id' int (20) NULL,
  'barang_id' int (20) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`, `u_source`, `u_destination`) VALUES
(1, 'Arif', 'Rahman', '0811', 'Test', 'Mahasiswa', 'arif@mail.com', 'password', 'Not Specified', NULL, NULL, NULL, 'Kathmandu', 'Pokhara'),
(2, 'Adly', 'Lerian', '0812', 'Test', 'User', 'adly@mail.com', 'password', 'SUV', 'CA1001', '2024-10-26', 'Approved', 'Kathmandu', 'Biratnagar'),
(3, 'Najwa', 'Naura', '0813', 'ithari', 'Test', 'naura@mail.com', 'password', 'Not Specified', 'Not Specified', 'Not Specified', 'Not Specified', NULL, NULL),
(4, 'Yunisa', 'Yunisa', '0814', '114 Test', 'User', 'yunisa@mail.com', 'password', 'Bus', 'CA7766', '2024-10-10', 'Approved', 'Kathmandu', 'Pokhara'),
(5, 'Abhi', 'Adhikari', '9898966556', 'Dharan', 'User', 'abhi@mail.com', 'password', 'Sedan', 'CA2077', '2024-10-30', 'Pending', 'Kathmandu', 'Lalitpur');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicle`
--


--
-- Dumping data for table `tms_vehicle`
--

INSERT INTO `tms_vehicle` (`v_id`, `v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_dpic`, `v_status`) VALUES
(3, 'Euro Bond', 'CA7766', '50', 'Vincent Pelletier', 'Bus', 'buscch.jpg', 'Available'),
(4, 'Honda Accord', 'CA2077', '5', 'Joseph Yung', 'Sedan', '2019_honda_accord_angularfront.jpg', 'Available'),
(5, 'Volkswagen Passat', 'CA1690', '5', 'Jesse Robinson', 'Sedan', 'volkswagen-passat-500.jpg', 'Available'),
(6, 'Nissan Rogue', 'CA1001', '7', 'Demo User', 'SUV', 'Nissan_Rogue_SV_2021.jpg', 'Available'),
(7, 'Subaru Legacy', 'CA7700', '5', 'John Settles', 'Sedan', 'Subaru_Legacy_Premium_2022_2.jpg', 'Available');

--
-- Indexes for dumped tables
--
CREATE TABLE `tms_vehicle` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NULL,
  `v_pass_no` varchar(200) NULL,
  `v_driver` varchar(200) NULL,
  `v_category` varchar(200) NULL,
  `v_dpic` varchar(200) NULL,
  `v_status` varchar(200) NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
--

-- Membuat tabel tms_ruangan
CREATE TABLE `tms_ruangan` (
  `id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ruangan_name` varchar(255) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




-- Membuat tabel tms_barang
CREATE TABLE `tms_barang` (
  `id` int(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `barang_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `tms_user_ruangan` (
    `user_id` INT(20) NOT NULL,
    `ruangan_id` INT(20) NOT NULL,
    PRIMARY KEY (`user_id`, `ruangan_id`),
    CONSTRAINT `fk_user_ruangan_user` FOREIGN KEY (`user_id`) REFERENCES `tms_user` (`u_id`) ON DELETE CASCADE,
    CONSTRAINT `fk_user_ruangan_ruangan` FOREIGN KEY (`ruangan_id`) REFERENCES `tms_ruangan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




CREATE TABLE `tms_user_barang` (
    `user_id` INT(20) NOT NULL,
    `barang_id` INT(20) NOT NULL,
    PRIMARY KEY (`user_id`, `barang_id`),
    CONSTRAINT `fk_user_barang_user` FOREIGN KEY (`user_id`) REFERENCES `tms_user` (`u_id`) ON DELETE CASCADE,
    CONSTRAINT `fk_user_barang_barang` FOREIGN KEY (`barang_id`) REFERENCES `tms_barang` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

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
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD COLUMN `ruangan_id` int(20) NULL,
  ADD COLUMN `barang_id` int(20) NULL;

-- Menambahkan foreign key untuk kolom ruangan_id dan barang_id
ALTER TABLE `tms_user`
  ADD CONSTRAINT `fk_ruangan` FOREIGN KEY (`ruangan_id`) REFERENCES `tms_ruangan`(`id`),
  ADD CONSTRAINT `fk_barang` FOREIGN KEY (`barang_id`) REFERENCES `tms_barang`(`id`);


  

ALTER TABLE `tms_user`
MODIFY `u_car_bookdate` DATE NULL;

ALTER TABLE `tms_user`
MODIFY `ruangan_id` varchar(255) NULL;
MODIFY `barang_id` varchar(255) NULL;

ALTER TABLE `tms_barang`
MODIFY COLUMN `barang_name` varchar(255) NULL;



--
-- AUTO_INCREMENT for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;



-- Data Dummy --
INSERT INTO `tms_barang` (`barang_name`) VALUES
('Barang A'),
('Barang B'),
('Barang C'),
('Barang D'),
('Barang E');


INSERT INTO `tms_ruangan` (`ruangan_name`) VALUES
('Ruangan A'),
('Ruangan B'),
('Ruangan C'),
('Ruangan D'),
('Ruangan E');
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
