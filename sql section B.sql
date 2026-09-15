-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 04:27 PM
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
-- Database: `m4a1_food_analytics`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `city`, `phone`) VALUES
(1, 'Aarav Shah', 'Mumbai', '9876543210'),
(2, 'Priya Mehta', 'Delhi', '9812345678'),
(3, 'Rohan Verma', 'Mumbai', '9823456789'),
(4, 'Sneha Patil', 'Bangalore', '9834567890'),
(5, 'Karan Joshi', 'Chennai', '9845678901'),
(6, 'Ananya Iyer', 'Kolkata', '9856789012');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int(11) NOT NULL,
  `agent_name` varchar(100) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `delivery_time_mins` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `agent_name`, `restaurant_name`, `delivery_time_mins`, `order_date`) VALUES
(1, 'Ravi Kumar', 'Spice Garden', 28, '2026-09-01'),
(2, 'Ravi Kumar', 'Green Leaf', 32, '2026-09-02'),
(3, 'Ravi Kumar', 'Biryani Bros', 25, '2026-09-03'),
(4, 'Amit Singh', 'The Curry House', 45, '2026-09-01'),
(5, 'Amit Singh', 'Dragon Wok', 50, '2026-09-04'),
(6, 'Amit Singh', 'Green Leaf', 48, '2026-09-06'),
(7, 'Deepa Nair', 'Spice Garden', 35, '2026-09-02'),
(8, 'Deepa Nair', 'Biryani Bros', 30, '2026-09-05'),
(9, 'Sahil Gupta', 'The Curry House', 22, '2026-09-03'),
(10, 'Sahil Gupta', 'Dragon Wok', 18, '2026-09-07'),
(11, 'Sahil Gupta', 'Spice Garden', 20, '2026-09-08'),
(12, 'Deepa Nair', 'The Curry House', 38, '2026-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_orders`
--

CREATE TABLE `delivery_orders` (
  `order_id` int(11) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_orders`
--

INSERT INTO `delivery_orders` (`order_id`, `restaurant_name`, `city`, `total_amount`, `order_status`, `order_date`) VALUES
(1, 'Spice Garden', 'Mumbai', 1200.00, 'Delivered', '2026-09-01'),
(2, 'Spice Garden', 'Mumbai', 1850.00, 'Delivered', '2026-09-02'),
(3, 'Spice Garden', 'Mumbai', 3100.00, 'Delivered', '2026-09-05'),
(4, 'The Curry House', 'Delhi', 2200.00, 'Delivered', '2026-09-02'),
(5, 'The Curry House', 'Delhi', 1750.00, 'Cancelled', '2026-09-04'),
(6, 'The Curry House', 'Delhi', 3400.00, 'Delivered', '2026-09-06'),
(7, 'Biryani Bros', 'Hyderabad', 4500.00, 'Delivered', '2026-09-03'),
(8, 'Biryani Bros', 'Hyderabad', 2300.00, 'Delivered', '2026-09-07'),
(9, 'Green Leaf', 'Bangalore', 980.00, 'Delivered', '2026-09-04'),
(10, 'Green Leaf', 'Bangalore', 1100.00, 'Delivered', '2026-09-08'),
(11, 'Biryani Bros', 'Hyderabad', 5200.00, 'Delivered', '2026-09-09'),
(12, 'Spice Garden', 'Mumbai', 2500.00, 'Delivered', '2026-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `item_ordered` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_per_item` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_orders`
--

INSERT INTO `food_orders` (`order_id`, `customer_name`, `restaurant_name`, `item_ordered`, `quantity`, `price_per_item`, `order_date`, `city`) VALUES
(1, 'Aarav Shah', 'Spice Garden', 'Butter Chicken', 2, 320.00, '2026-09-01', 'Mumbai'),
(2, 'Priya Mehta', 'The Curry House', 'Paneer Tikka', 1, 280.00, '2026-09-02', 'Delhi'),
(3, 'Rohan Verma', 'Spice Garden', 'Dal Makhani', 3, 180.00, '2026-09-03', 'Mumbai'),
(4, 'Sneha Patil', 'Biryani Bros', 'Hyderabadi Biryani', 1, 450.00, '2026-09-04', 'Mumbai'),
(5, 'Karan Joshi', 'Green Leaf', 'Masala Dosa', 2, 120.00, '2026-09-05', 'Bangalore'),
(6, 'Ananya Iyer', 'Biryani Bros', 'Chicken 65', 2, 350.00, '2026-09-06', 'Delhi'),
(7, 'Vikram Nair', 'The Curry House', 'Fish Curry', 1, 390.00, '2026-09-07', 'Delhi'),
(8, 'Meera Rao', 'Green Leaf', 'Idli Sambar', 4, 90.00, '2026-09-08', 'Bangalore'),
(9, 'Dev Sharma', 'Spice Garden', 'Mutton Rogan Josh', 1, 520.00, '2026-09-09', 'Mumbai'),
(10, 'Lata Kulkarni', 'Green Leaf', 'Veg Thali', 2, 210.00, '2026-09-10', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `restaurant_id`, `amount`, `order_date`) VALUES
(1, 1, 1, 850.00, '2026-09-01'),
(2, 2, 2, 1200.00, '2026-09-02'),
(3, 3, 5, 650.00, '2026-09-03'),
(4, 4, 3, 420.00, '2026-09-04'),
(5, 1, 4, 980.00, '2026-09-05'),
(6, 2, 6, 760.00, '2026-09-06');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cuisine_type` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `name`, `cuisine_type`, `city`) VALUES
(1, 'Spice Garden', 'North Indian', 'Mumbai'),
(2, 'The Curry House', 'Multi-cuisine', 'Delhi'),
(3, 'Green Leaf', 'South Indian', 'Bangalore'),
(4, 'Biryani Bros', 'Mughlai', 'Delhi'),
(5, 'Dragon Wok', 'Chinese', 'Mumbai'),
(6, 'Punjab da Dhaba', 'Punjabi', 'Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `delivery_orders`
--
ALTER TABLE `delivery_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
