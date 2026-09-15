-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 02:31 AM
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
-- Database: `sql_task_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `zomato_reviews`
--

CREATE TABLE `zomato_reviews` (
  `review_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `review_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zomato_reviews`
--

INSERT INTO `zomato_reviews` (`review_id`, `name`, `rating`, `review_text`) VALUES
(1, 'Rahul', 4.5, 'Great food and service'),
(2, 'Priya', 4.0, 'Good taste'),
(3, 'Amit', 3.5, 'Food was average'),
(4, 'Neha', 5.0, 'Excellent restaurant'),
(5, 'Karan', 4.2, 'Nice ambience');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zomato_reviews`
--
ALTER TABLE `zomato_reviews`
  ADD PRIMARY KEY (`review_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
