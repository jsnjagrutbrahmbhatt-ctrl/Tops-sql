-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 03:25 AM
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

-- --------------------------------------------------------

--
-- Stand-in structure for view `dailyordersummary`
-- (See below for the actual view)
--
CREATE TABLE `dailyordersummary` (
`order_date` date
,`total_orders` bigint(21)
,`total_revenue` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `order_id`, `delivery_date`) VALUES
(1, 1001, '2026-09-20'),
(2, 1002, '2026-10-05'),
(3, 1003, '2026-10-12'),
(4, 1004, '2026-11-01'),
(5, 1005, '2026-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `flipkartproducts`
--

CREATE TABLE `flipkartproducts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flipkartproducts`
--

INSERT INTO `flipkartproducts` (`product_id`, `product_name`, `price`) VALUES
(1, 'USB Cable', 199.00),
(2, 'Wireless Mouse', 699.00),
(3, 'Mechanical Keyboard', 1899.00),
(4, 'Gaming Monitor', 14500.00),
(5, 'Notebook Diary', 350.00),
(6, 'Bluetooth Speaker', 2500.00);

-- --------------------------------------------------------

--
-- Table structure for table `foodorders`
--

CREATE TABLE `foodorders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foodorders`
--

INSERT INTO `foodorders` (`order_id`, `customer_name`, `total_amount`) VALUES
(1, 'Rahul', 250.00),
(2, 'Priya', 650.00),
(3, 'Amit', 1250.00),
(4, 'Sneha', 999.00),
(5, 'Vikram', 150.00),
(6, 'Neha', 3000.00);

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`item_id`, `item_name`, `item_code`) VALUES
(1, 'Burger', '   BGR-101   '),
(2, 'Pizza', 'PIZ-202   '),
(3, 'Pasta', '   PAS-303'),
(4, 'Sandwich', '  SND-404  '),
(5, 'Fries', 'FRS-505');

-- --------------------------------------------------------

--
-- Table structure for table `influencers`
--

CREATE TABLE `influencers` (
  `id` int(11) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `followers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `influencers`
--

INSERT INTO `influencers` (`id`, `platform`, `followers`) VALUES
(1, 'Instagram', 5000000),
(2, 'Instagram', 4200000),
(3, 'Instagram', 3800000),
(4, 'Instagram', 2100000),
(5, 'YouTube', 8000000),
(6, 'YouTube', 6500000),
(7, 'YouTube', 6100000),
(8, 'YouTube', 4000000),
(9, 'TikTok', 9500000),
(10, 'TikTok', 7200000),
(11, 'TikTok', 6800000),
(12, 'TikTok', 3500000);

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
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `rating` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `rating`) VALUES
(1, 'Inception', 8.8),
(2, '3 Idiots', 8.4),
(3, 'Housefull 4', 4.2),
(4, 'Dangal', 8.3),
(5, 'Tiger Zinda Hai', 6.0),
(6, 'Race 3', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `total_amount`) VALUES
(1, 101, '2026-01-15', 450.00),
(2, 102, '2026-05-22', 1200.50),
(3, 103, '2025-11-09', 350.00),
(4, 104, '2026-08-30', 2500.00),
(5, 105, '2025-12-25', 850.00);

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

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `song_id` int(11) NOT NULL,
  `song_title` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`song_id`, `song_title`, `artist`) VALUES
(1, 'Blinding Lights', 'The Weeknd'),
(2, 'Shape of You', 'Ed Sheeran'),
(3, 'Levitating', 'Dua Lipa'),
(4, 'Stay', 'Justin Bieber'),
(5, 'Save Your Tears', 'The Weeknd');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `sku_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `sku_code`) VALUES
(1, 'Smartphone', 'MOB-123-XY'),
(2, 'Laptop', 'LAP-998-AZ'),
(3, 'Headphones', 'AUD-456-HD'),
(4, 'Smartwatch', 'WCH-789-SM'),
(5, 'Tablet', 'TAB-321-LT');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cuisine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `restaurant_name`, `city`, `cuisine`) VALUES
(1, 'The Spice House', 'Ahmedabad', 'North Indian'),
(2, 'Green Leaf', 'Anand', 'Gujarati'),
(3, 'Pizza Corner', 'Nadiad', 'Italian'),
(4, 'Dragon Bowl', 'Vadodara', 'Chinese'),
(5, 'Royal Dine', 'Ahmedabad', 'Mughlai');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_reviews`
--

CREATE TABLE `restaurant_reviews` (
  `review_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `review_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_reviews`
--

INSERT INTO `restaurant_reviews` (`review_id`, `restaurant_id`, `restaurant_name`, `rating`, `review_text`) VALUES
(1, 1, 'The Spice House', 4.5, 'Excellent flavor'),
(2, 1, 'The Spice House', 4.7, 'Great service'),
(3, 2, 'Green Leaf', 3.8, 'Average food'),
(4, 2, 'Green Leaf', 4.0, 'Decent thali'),
(5, 3, 'Pizza Corner', 3.5, 'Crust was dry'),
(6, 4, 'Dragon Bowl', 4.2, 'Loved the noodles'),
(7, 4, 'Dragon Bowl', 4.4, 'Authentic taste'),
(8, 5, 'Royal Dine', 4.8, 'Outstanding ambience'),
(9, 5, 'Royal Dine', 4.6, 'Delicious biryani');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `streams` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `artist`, `streams`) VALUES
(1, 'The Weeknd', 3500000),
(2, 'The Weeknd', 3500000),
(3, 'The Weeknd', 2100000),
(4, 'Ed Sheeran', 4200000),
(5, 'Ed Sheeran', 3100000),
(6, 'Ed Sheeran', 1800000),
(7, 'Dua Lipa', 2900000),
(8, 'Dua Lipa', 2900000),
(9, 'Dua Lipa', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `spotifytracks`
--

CREATE TABLE `spotifytracks` (
  `track_id` int(11) NOT NULL,
  `track_name` varchar(100) NOT NULL,
  `duration_sec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spotifytracks`
--

INSERT INTO `spotifytracks` (`track_id`, `track_name`, `duration_sec`) VALUES
(1, 'Stay', 141),
(2, 'Blinding Lights', 200),
(3, 'Shape of You', 233),
(4, 'All Too Well (10 Min)', 613),
(5, 'Industry Baby', 212),
(6, 'Intro Track', 90);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`subscription_id`, `user_id`, `start_date`, `end_date`) VALUES
(1, 101, '2026-01-01', '2026-01-31'),
(2, 102, '2026-01-15', '2026-04-15'),
(3, 103, '2026-03-01', '2026-09-01'),
(4, 104, '2026-01-01', '2026-12-31'),
(5, 105, '2026-06-01', '2026-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `swiggy_orders`
--

CREATE TABLE `swiggy_orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `order_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `swiggy_orders`
--

INSERT INTO `swiggy_orders` (`order_id`, `customer_name`, `order_date`, `order_amount`) VALUES
(1, 'Rahul', '2026-09-14', 450.00),
(2, 'Priya', '2026-09-14', 650.00),
(3, 'Amit', '2026-09-12', 1200.00),
(4, 'Sneha', '2026-09-10', 350.00),
(5, 'Vikram', '2026-09-10', 850.00),
(6, 'Neha', '2026-08-25', 500.00),
(7, 'Karan', '2026-08-20', 950.00),
(8, 'Anjali', '2026-07-01', 1500.00);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topratedrestaurants`
-- (See below for the actual view)
--
CREATE TABLE `topratedrestaurants` (
`restaurant_name` varchar(100)
,`city` varchar(50)
,`avg_rating` decimal(4,2)
,`total_reviews` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`) VALUES
(1, 'Rahul', 'Sharma'),
(2, 'Priya', 'Patel'),
(3, 'Amit', 'Verma'),
(4, 'Sneha', 'Gupta'),
(5, 'Vikram', 'Singh');

-- --------------------------------------------------------

--
-- Structure for view `dailyordersummary`
--
DROP TABLE IF EXISTS `dailyordersummary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dailyordersummary`  AS SELECT `swiggy_orders`.`order_date` AS `order_date`, count(`swiggy_orders`.`order_id`) AS `total_orders`, sum(`swiggy_orders`.`order_amount`) AS `total_revenue` FROM `swiggy_orders` WHERE `swiggy_orders`.`order_date` >= curdate() - interval 30 day GROUP BY `swiggy_orders`.`order_date` ORDER BY `swiggy_orders`.`order_date` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `topratedrestaurants`
--
DROP TABLE IF EXISTS `topratedrestaurants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topratedrestaurants`  AS SELECT `r`.`restaurant_name` AS `restaurant_name`, `r`.`city` AS `city`, round(avg(`rv`.`rating`),2) AS `avg_rating`, count(`rv`.`review_id`) AS `total_reviews` FROM (`restaurants` `r` join `restaurant_reviews` `rv` on(`r`.`restaurant_id` = `rv`.`restaurant_id`)) GROUP BY `r`.`restaurant_id`, `r`.`restaurant_name`, `r`.`city` HAVING avg(`rv`.`rating`) > 4.0 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applogins`
--
ALTER TABLE `applogins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `flipkartproducts`
--
ALTER TABLE `flipkartproducts`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `foodorders`
--
ALTER TABLE `foodorders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `influencers`
--
ALTER TABLE `influencers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movieratings`
--
ALTER TABLE `movieratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

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

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`song_id`);

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
-- Indexes for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `spotifytracks`
--
ALTER TABLE `spotifytracks`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `swiggy_orders`
--
ALTER TABLE `swiggy_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
