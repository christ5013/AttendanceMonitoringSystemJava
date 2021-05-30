-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 04:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemsfjava`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_no` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `log_type` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_no`, `fullname`, `log_type`, `datetime`) VALUES
(2, '62928958', 'Jeric Dumaguit Baterna', 1, '2021-05-29 15:41:03'),
(3, '84383691', 'Rehnan Ybañez Ramil', 1, '2021-05-29 19:21:32'),
(4, '62928958', 'Jeric Dumaguit Baterna', 2, '2021-05-29 19:25:34'),
(5, '84383691', 'Rehnan Ybañez Ramil', 1, '2021-05-30 21:23:17'),
(6, '84383691', 'Rehnan Ybañez Ramil', 2, '2021-05-30 21:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employee_no` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `started_at` date NOT NULL DEFAULT current_timestamp(),
  `ended_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_no`, `firstname`, `middlename`, `lastname`, `department`, `position`, `started_at`, `ended_at`) VALUES
(26, '51588223', 'Winabel Marie', 'Cabactulan', 'Anore', 'IT', 'Software Developer', '2021-05-23', NULL),
(27, '64582554', 'Christine', 'Godinez', 'Rubio', 'IT ', 'Programmer', '2021-05-23', NULL),
(28, '95001824', 'Marjorie', 'Ontolan', 'Entoma', 'IT', 'Full stack Developer', '2021-05-27', NULL),
(34, '84383691', 'Rehnan', 'Ybañez', 'Ramil', 'IT', 'Programmer', '2021-05-29', NULL),
(41, '70422642', 'Raven ', 'Soriano', 'Torres', 'Operational Marketing', 'Project Manager', '2021-05-30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_stated` datetime NOT NULL DEFAULT current_timestamp(),
  `date_ended` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_title`, `department`, `status`, `date_stated`, `date_ended`) VALUES
(1, 'Pseudo Scientific Calculator (python)', 'IT', 'COMPLETE', '0000-00-00 00:00:00', 'Sun May 30 20:58:49 CST 2021'),
(2, 'Calculator Java Application', 'IT', 'COMPLETE', '2021-05-14 17:51:42', 'Sun May 30 20:59:10 CST 2021'),
(3, 'MilkTea Store Management System', 'IT', 'COMPLETE', '2021-05-14 17:51:42', 'Sun May 30 20:59:03 CST 2021'),
(4, 'Personal Blog', 'IT', 'COMPLETE', '2021-05-14 17:51:42', 'Sun May 30 20:59:19 CST 2021'),
(5, 'Attendance Monitoring System web application', 'IT', 'Complete', '2021-05-14 17:51:42', 'Sun May 30 20:56:44 CST 2021'),
(6, 'Attendance Monitoring System java application', 'IT', 'COMPLETE', '2021-05-14 17:51:42', 'Sun May 30 21:14:14 CST 2021'),
(7, 'Employee Java Application', 'IT', 'COMPLETE', '2021-05-22 14:56:40', 'Sun May 30 20:58:39 CST 2021'),
(10, 'Todolist', 'IT', 'COMPLETE', '2021-05-27 15:51:23', NULL),
(20, 'Inventory Management System', 'IT ', 'Complete', '2021-05-30 21:06:19', 'Sun May 30 21:06:43 CST 2021'),
(21, 'Restaurant POS', 'IT', 'in progress', '2021-05-30 21:13:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL DEFAULT 'p@$$w0rd123',
  `age` int(50) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `age`, `mobile_no`, `gender`, `created_at`, `deleted_at`) VALUES
(1, 'admin@gmail.com', 'admin123', 0, '0', '', '2021-05-18 20:10:29', NULL),
(5, '51588223', 'winabz123', 22, '09071284596', 'Female', '2021-05-23 16:06:49', NULL),
(6, '64582554', 'p@$$w0rd123', 20, '09655844534', 'Female', '2021-05-23 20:19:07', NULL),
(7, '95001824', '[C@5f6842f8', 20, '09224587895', 'Female', '2021-05-27 15:56:23', NULL),
(13, '84383691', 'p@$$w0rd123', 20, '09658745845', 'Male', '2021-05-29 15:52:14', NULL),
(18, '70422642', 'p@$$w0rd123', 20, '09654218563', 'Female', '2021-05-30 21:16:59', NULL),
(19, 'XhianneVanesse', '[C@47974571', 22, '09074589632', 'Female', '2021-05-30 21:20:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_no` (`employee_no`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
