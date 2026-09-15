-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 02:57 AM
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
-- Table structure for table `movieratings`
--

CREATE TABLE `movieratings` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `rating` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movieratings`
--

INSERT INTO `movieratings` (`rating_id`, `user_id`, `movie_name`, `rating`) VALUES
(1, 101, 'Inception', 5.0),
(2, 102, 'Inception', 4.0),
(3, 103, 'Inception', 4.0),
(4, 101, 'Interstellar', 5.0),
(5, 102, 'Interstellar', 3.0),
(6, 104, 'Interstellar', 4.0),
(7, 105, 'Interstellar', 5.0),
(8, 103, 'Avatar', 3.0),
(9, 104, 'Avatar', 4.0),
(10, 105, 'Avatar', 2.0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `app_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_amount`, `app_name`) VALUES
(1, 101, 450.00, 'Zomato'),
(2, 102, 1200.50, 'Flipkart'),
(3, 101, 350.00, 'Swiggy'),
(4, 103, 2500.00, 'Amazon'),
(5, 102, 850.00, 'Zomato'),
(6, 104, 150.00, 'Blinkit'),
(7, 101, 600.00, 'Flipkart'),
(8, 105, 3200.00, 'Amazon'),
(9, 103, 400.00, 'Swiggy'),
(10, 104, 950.00, 'Zomato'),
(11, 105, 1100.00, 'Flipkart'),
(12, 102, 500.00, 'Swiggy');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `duration_sec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`song_id`, `user_id`, `duration_sec`) VALUES
(1, 101, 200),
(2, 101, 230),
(3, 102, 233),
(4, 102, 263),
(5, 102, 240),
(6, 103, 203),
(7, 103, 183),
(8, 104, 141),
(9, 101, 215),
(10, 104, 198);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movieratings`
--
ALTER TABLE `movieratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
