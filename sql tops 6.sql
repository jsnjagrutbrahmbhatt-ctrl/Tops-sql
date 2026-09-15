-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2026 at 10:22 PM
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
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `booking_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `movie_name`, `booking_date`) VALUES
(1, 'Avengers', '2026-09-01'),
(2, 'Interstellar', '2026-09-05'),
(3, 'Inception', '2026-09-07'),
(4, 'Dune', '2026-09-09'),
(5, 'Oppenheimer', '2026-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `bookmyshow_reviews`
--

CREATE TABLE `bookmyshow_reviews` (
  `review_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmyshow_reviews`
--

INSERT INTO `bookmyshow_reviews` (`review_id`, `movie_id`, `rating`) VALUES
(1, 101, 4.2),
(2, 101, 4.5),
(3, 101, 3.8),
(4, 101, 4.7);

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_orders`
--

INSERT INTO `food_orders` (`order_id`, `user_id`, `amount`) VALUES
(1, 1, 450.00),
(2, 1, 300.00),
(3, 2, 550.00),
(4, 2, 250.00);

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
-- Table structure for table `myntra_orders`
--

CREATE TABLE `myntra_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myntra_orders`
--

INSERT INTO `myntra_orders` (`order_id`, `user_id`, `total_price`) VALUES
(1, 1, 1200.00),
(2, 1, 800.00),
(3, 2, 2500.00),
(4, 2, 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_method`) VALUES
(1, 'UPI'),
(2, 'Credit Card'),
(3, 'Cash on Delivery'),
(4, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `paytm_transactions`
--

CREATE TABLE `paytm_transactions` (
  `txn_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paytm_transactions`
--

INSERT INTO `paytm_transactions` (`txn_id`, `user_id`, `amount`) VALUES
(1, 1, 500.00),
(2, 1, 1200.00),
(3, 1, 250.00),
(4, 2, 800.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sold_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`, `stock`, `sold_count`) VALUES
(1, 'Laptop', 'Electronics', 55000.00, 10, 2500),
(2, 'Mouse', 'Electronics', 800.00, 25, 1800),
(3, 'Keyboard', 'Electronics', 1500.00, 15, 3200),
(4, 'Notebook', 'Stationery', 120.00, 50, 1200),
(5, 'Backpack', 'Accessories', 1800.00, 20, 0);

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
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `artist_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `song_name`, `artist_name`) VALUES
(1, 'Perfect', 'Arijit Singh'),
(2, 'Shape of You', 'Ed Sheeran'),
(3, 'Believer', 'Imagine Dragons'),
(4, 'Tum Hi Ho', 'Armaan Malik');

-- --------------------------------------------------------

--
-- Table structure for table `spotify_playlists`
--

CREATE TABLE `spotify_playlists` (
  `playlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spotify_playlists`
--

INSERT INTO `spotify_playlists` (`playlist_id`, `user_id`, `song_id`) VALUES
(1, 1, 101),
(2, 1, 102),
(3, 1, 103),
(4, 2, 104);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `followers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `city`, `followers`) VALUES
(1, 'Rahul', 'Ahmedabad', 1500),
(2, 'Priya', 'Vadodara', 2500),
(3, 'Amit', 'Ahmedabad', 800),
(4, 'Karan', 'Mumbai', 3500);

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
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmyshow_reviews`
--
ALTER TABLE `bookmyshow_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `myntra_orders`
--
ALTER TABLE `myntra_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paytm_transactions`
--
ALTER TABLE `paytm_transactions`
  ADD PRIMARY KEY (`txn_id`);

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
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spotify_playlists`
--
ALTER TABLE `spotify_playlists`
  ADD PRIMARY KEY (`playlist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zomato_reviews`
--
ALTER TABLE `zomato_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookmyshow_reviews`
--
ALTER TABLE `bookmyshow_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food_orders`
--
ALTER TABLE `food_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `myntra_orders`
--
ALTER TABLE `myntra_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paytm_transactions`
--
ALTER TABLE `paytm_transactions`
  MODIFY `txn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spotify_playlists`
--
ALTER TABLE `spotify_playlists`
  MODIFY `playlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
