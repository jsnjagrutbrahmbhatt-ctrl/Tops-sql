-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2026 at 09:03 PM
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
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(100) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `release_year`, `genre`) VALUES
(1, '3 Idiots', 2009, 'Comedy Drama'),
(2, 'Dangal', 2016, 'Sports Drama'),
(3, 'Interstellar', 2014, 'Science Fiction'),
(4, 'Inception', 2010, 'Science Fiction'),
(5, 'Lagaan', 2001, 'Sports Drama');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`, `stock`) VALUES
(1, 'Laptop', 'Electronics', 55000.00, 10),
(2, 'Mouse', 'Electronics', 800.00, 25),
(3, 'Keyboard', 'Electronics', 1500.00, 15),
(4, 'Notebook', 'Stationery', 120.00, 50),
(5, 'Backpack', 'Accessories', 1800.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(100) DEFAULT NULL,
  `cuisine` varchar(50) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `restaurant_name`, `cuisine`, `rating`, `location`) VALUES
(1, 'The Spice House', 'Indian', 4.5, 'Ahmedabad'),
(2, 'Green Leaf', 'Gujarati', 4.2, 'Anand'),
(3, 'Pizza Corner', 'Italian', 4.0, 'Nadiad'),
(4, 'Dragon Bowl', 'Chinese', 4.3, 'Vadodara'),
(5, 'Royal Dine', 'Indian', 4.7, 'Ahmedabad');

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
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `zomato_reviews`
--
ALTER TABLE `zomato_reviews`
  ADD PRIMARY KEY (`review_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
