-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2019 at 08:07 AM
-- Server version: 8.0.15
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mechanic`
--
CREATE DATABASE IF NOT EXISTS `mechanic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mechanic`;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(4) NOT NULL,
  `role_description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_description`) VALUES
(1, 'Citizen'),
(2, 'Mechanic'),
(3, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `a_id` int(4) NOT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `zipcode` varchar(40) DEFAULT NULL,
  `u_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`a_id`, `street`, `city`, `state`, `zipcode`, `u_id`) VALUES
(25, 'Winterveld', 'Mabopane', 'Gauteng', '0198', 24),
(27, '275 Helen Joseph Street Pretoria Centr', 'Pretoria', 'Gauteng', '0001', 26),
(28, 'Witbank', 'Emalahleni', 'Mpumalanga', '1035', 27),
(29, 'Kingbolt Crescent Wapadrand Security Vi', 'Mabopane', 'Gauteng', '0198', 28),
(30, 'Troye Street Muckleneuk', 'Pretoria', 'Gauteng', '1233', 29),
(31, 'Troye Street Muckleneuk', 'Pretoria', 'Gauteng', '1233', 30),
(32, '77 Commissioner Street Johannesburg', 'Johannesburg', 'Gauteng', '2000', 31),
(33, '77 Commissioner Street Johannesburg', 'Johannesburg', 'Gauteng', '2000', 32),
(34, '77 Commissioner Street Johannesburg', 'Johannesburg', 'Gauteng', '2000', 33),
(37, '77 Commissioner Street Johannesburg', 'Johannesburg', 'Gauteng', '2000', 34),
(38, '    Soshanguve - L', 'Soshanguve', 'Gauteng', '0152', 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_call`
--

CREATE TABLE `tbl_call` (
  `c_id` int(4) NOT NULL,
  `u_id` int(4) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_attended` date DEFAULT NULL,
  `c_description` text,
  `c_addrss_id` int(4) DEFAULT NULL,
  `c_status` int(4) DEFAULT NULL,
  `m_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_call`
--

INSERT INTO `tbl_call` (`c_id`, `u_id`, `date_attended`, `c_description`, `c_addrss_id`, `c_status`, `m_id`) VALUES
(36, 25, '2018-12-04', 'Flat tire', NULL, 3, 26),
(40, 27, NULL, 'you\'re so stupid', NULL, 1, 29),
(45, 28, '2018-12-03', 'need assistance asap', NULL, 2, 29),
(49, 202, '2018-12-04', 'Help!!!', NULL, 3, 34),
(50, 202, '2018-12-04', 'Come', NULL, 3, 26),
(51, 202, NULL, 'Come now please!!!', NULL, 1, 34),
(52, 202, NULL, 'Come now please!!!', NULL, 1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(6) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zip` varchar(4) DEFAULT NULL,
  `u_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `street`, `city`, `province`, `zip`, `u_id`) VALUES
(35, '1023 Soshanguve Block H', 'Pretoria', 'Gauteng', '0152', 26),
(36, 'Troye Street Muckleneuk', 'Pretoria', 'Gauteng', '1233', 25),
(37, '1023 Soshanguve Block H', 'Pretoria', 'Gauteng', '0152', 27),
(38, '  Dykor Street Silverton', 'Pretoria', 'Gauteng', '0127', 28),
(43, '77 Commissioner Street Johannesburg', 'Johannesburg', 'Gauteng', '2000', 202),
(44, '77 Commissioner Street Soshanguve - K', 'Soshanguve', 'Gauteng', '0152', 202),
(45, '77 Commissioner Street Johannesburg', 'Johannesburg', 'Gauteng', '2000', 202),
(46, '180 Marshall Street Marshalltown', 'Johannesburg', 'Gauteng', '2107', 202);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mechanic`
--

CREATE TABLE `tbl_mechanic` (
  `m_id` int(4) NOT NULL,
  `m_name` varchar(30) DEFAULT NULL,
  `m_surname` varchar(30) DEFAULT NULL,
  `m_email` varchar(30) DEFAULT NULL,
  `m_password` varchar(20) DEFAULT NULL,
  `m_phone` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mechanic`
--

INSERT INTO `tbl_mechanic` (`m_id`, `m_name`, `m_surname`, `m_email`, `m_password`, `m_phone`, `status`) VALUES
(26, 'Khalizolo', 'lato', 'khalizolo@email.com', 'password', '0795655554', 1),
(27, 'lizy', 'makro', 'lizy@email.com', 'password', '0812347865', 1),
(28, 'kulane', 'maooza', 'kulani@email.com', 'password', '0766654244', 0),
(29, 'Stupid', 'mechanic', 'stupid@email.com', 'password', '0795654244', 1),
(30, 'Khali', 'late', 'khali@email.com', 'password', '0795654244', 0),
(34, 'Xolani', 'Tambani', 'xo@gmail.com', 'password', '0825178130', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(4) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_name`) VALUES
(1, 'Open'),
(2, 'In Progress'),
(3, 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(4) NOT NULL,
  `u_name` varchar(30) DEFAULT NULL,
  `u_surname` varchar(30) DEFAULT NULL,
  `u_email` varchar(30) DEFAULT NULL,
  `u_phone` varchar(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `kin_name` varchar(30) DEFAULT NULL,
  `kin_phone` varchar(10) DEFAULT NULL,
  `Kin_email` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `u_name`, `u_surname`, `u_email`, `u_phone`, `password`, `kin_name`, `kin_phone`, `Kin_email`, `status`) VALUES
(13, 'felicia', 'mkhonza', 'felicia@email.com', '0712345678', 'password', NULL, NULL, NULL, 1),
(25, 'lebza', 'mackay', 'lebza@email.com', '0814568762', 'password', 'Khalizolo latezana', '0795655555', NULL, 1),
(26, 'Laura', 'latezana', 'yes@email.com', '0795655554', 'password', 'max', '0812347865', NULL, 1),
(27, 'again', 'next time', 'again@email.com', '0812347865', 'password', 'lizy makro', '0812347865', NULL, 0),
(28, 'Dez', 'byle', 'dez@email.com', '0798756879', 'password', 'zoo', '0812476894', NULL, 1),
(200, 'Khali', 'late', 'khali@email.com', '0795654244', 'password', 'Jane late', '0795655555', NULL, 1),
(202, 'Thabo Xolani', 'Mnguni', 'xolanithabo@gmail.com', '0723269339', 'Kaysto2#', 'Anna', '0825178130', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(4) DEFAULT NULL,
  `role_id` int(4) DEFAULT NULL,
  `m_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`, `m_id`) VALUES
(13, 3, NULL),
(200, 1, NULL),
(25, 1, NULL),
(NULL, 2, 28),
(26, 1, NULL),
(NULL, 2, 26),
(NULL, 2, 29),
(27, 1, NULL),
(28, 1, NULL),
(NULL, 2, 30),
(201, 1, NULL),
(202, 1, NULL),
(NULL, 2, 31),
(NULL, 2, 32),
(NULL, 2, 33),
(203, 2, NULL),
(203, 2, NULL),
(NULL, 2, 34),
(NULL, 2, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `FK_tbl_address_user` (`u_id`);

--
-- Indexes for table `tbl_call`
--
ALTER TABLE `tbl_call`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `FK_tbl_call_user` (`u_id`),
  ADD KEY `FK_tbl_call_address` (`c_addrss_id`),
  ADD KEY `c_status` (`c_status`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tbl_location` (`u_id`);

--
-- Indexes for table `tbl_mechanic`
--
ALTER TABLE `tbl_mechanic`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FK_user_role_role` (`role_id`),
  ADD KEY `FK_user_role_user` (`user_id`),
  ADD KEY `FK_user_role_mech` (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `a_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_call`
--
ALTER TABLE `tbl_call`
  MODIFY `c_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_mechanic`
--
ALTER TABLE `tbl_mechanic`
  MODIFY `m_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_call`
--
ALTER TABLE `tbl_call`
  ADD CONSTRAINT `FK_tbl_call_address` FOREIGN KEY (`c_addrss_id`) REFERENCES `tbl_address` (`a_id`),
  ADD CONSTRAINT `FK_tbl_call_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `tbl_call_ibfk_1` FOREIGN KEY (`c_status`) REFERENCES `tbl_status` (`status_id`);

--
-- Constraints for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD CONSTRAINT `FK_tbl_location` FOREIGN KEY (`u_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
