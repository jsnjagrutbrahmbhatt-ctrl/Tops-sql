-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 02:11 AM
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
-- Table structure for table `Orders_1`
--

CREATE TABLE `orders_1` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Orders_1`
--

INSERT INTO `Orders_1` (`order_id`, `user_id`, `product`, `amount`) VALUES
(1, 1, 'Pizza', 450.00),
(2, 1, 'Burger', 300.00),
(3, 2, 'Biryani', 550.00),
(4, 4, 'Sandwich', 250.00),
(5, 4, 'Pasta', 400.00),
(6, 99, 'Coffee', 150.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Orders_1`
--
ALTER TABLE `Orders_1`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Orders_1`
--
ALTER TABLE `Orders_1`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
