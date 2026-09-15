-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 03:14 AM
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
-- Database: `windowfunctionsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `applogins`
--

CREATE TABLE `applogins` (
  `user_id` int(11) NOT NULL,
  `last_login_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applogins`
--

INSERT INTO `applogins` (`user_id`, `last_login_date`) VALUES
(101, '2026-09-10'),
(102, '2026-07-15'),
(103, '2026-09-01'),
(104, '2026-05-20'),
(105, '2026-08-01'),
(106, '2026-09-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applogins`
--
ALTER TABLE `applogins`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
