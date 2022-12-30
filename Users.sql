-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 30, 2022 at 06:29 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `nip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `nip`, `nama`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 189, 'theo', '123', '2022-12-27 06:52:21', '2022-12-27 06:52:21'),
(2, 456, 'thosik', '$2b$10$tduJXKfUZJ/0Uk7b3qVIT.ZnbrNOX2cyyaQ5OpgnyHmK8gaYPT/F6', '2022-12-27 06:17:54', '2022-12-27 06:17:54'),
(3, 788, 'sasuke', '$2b$10$w.7IYL0e2cqqkHQ8Rmm9buQSikXHkG2AU.X7nD2YPqybNCQaLwNkC', '2022-12-27 11:22:29', '2022-12-30 05:27:09'),
(4, 234, 'kurogami', '$2b$10$/qO0zqtcJNPXlKk8VaMOPeDI4f1Q5DAcez4Efnr2STg2rqWLCSDoK', '2022-12-29 11:28:47', '2022-12-29 11:28:47'),
(5, 199, 'andruw', '$2b$10$Ei/jD.RdDqFd1vSXT4XGNO27fv.5LkA/c.geXhkD9Y0LxGPyxeZja', '2022-12-29 22:45:18', '2022-12-29 22:45:18'),
(6, 2000, 'kurogami', '$2b$10$Uy44q.CGYtJSHGT76rFsq.QEGk97X7vFtJtNZz8.b6oUh26I7pHUO', '2022-12-30 02:42:41', '2022-12-30 02:42:41'),
(8, 5000, 'kiri', '$2b$10$SR9zC9.eyQaftv7G.U.dxeMsx26Fe9gOr8PpntL1EqnrUE4lhfe/m', '2022-12-30 02:50:02', '2022-12-30 02:50:02'),
(9, 4200, 'test5', '$2b$10$OR.b.wTKERcmrIiXXDANrusTxwio5ZgvZr9XWw9S.EFJ3gw2WVMfa', '2022-12-30 02:52:02', '2022-12-30 02:52:02'),
(12, 16, 'test7', '$2b$10$NG9kJPSqvQ8cSFWoiHp30eFFumD/RN77QABjva5haEssoRzHWNvJu', '2022-12-30 02:53:57', '2022-12-30 02:53:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
