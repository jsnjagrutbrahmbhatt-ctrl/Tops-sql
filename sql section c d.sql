-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 06:04 PM
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
-- Table structure for table `customers1`
--

CREATE TABLE `customers1` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `joined_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers1`
--

INSERT INTO `customers1` (`customer_id`, `customer_name`, `city`, `email`, `phone`, `joined_date`) VALUES
(1, 'Ananya Bose', 'Mumbai', 'ananya.bose@email.com', '9811001001', '2022-01-10'),
(2, 'Rahul Joshi', 'Mumbai', 'rahul.joshi@email.com', '9811001002', '2021-06-15'),
(3, 'Meena Gupta', 'Delhi', 'meena.gupta@email.com', '9811001003', '2022-09-20'),
(4, 'Sanjay Kapoor', 'Delhi', 'sanjay.kapoor@email.com', '9811001004', '2021-03-05'),
(5, 'Lakshmi Rao', 'Bangalore', 'lakshmi.rao@email.com', '9811001005', '2023-01-18'),
(6, 'Aditya Menon', 'Bangalore', 'aditya.menon@email.com', '9811001006', '2022-11-22'),
(7, 'Pooja Choudhary', 'Mumbai', 'pooja.choudhary@email.com', '9811001007', '2021-08-30'),
(8, 'Nikhil Saxena', 'Delhi', 'nikhil.saxena@email.com', '9811001008', '2023-03-14'),
(9, 'Divya Krishnan', 'Bangalore', 'divya.krishnan@email.com', '9811001009', '2022-05-09'),
(10, 'Aryan Malhotra', 'Mumbai', 'aryan.malhotra@email.com', '9811001010', '2021-12-25'),
(11, 'Sunita Devi', 'Delhi', 'sunita.devi@email.com', '9811001011', '2022-07-07'),
(12, 'Rohan Shetty', 'Bangalore', 'rohan.shetty@email.com', '9811001012', '2023-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `customers2`
--

CREATE TABLE `customers2` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers2`
--

INSERT INTO `customers2` (`customer_id`, `customer_name`, `city`) VALUES
(1, 'Rahul Sharma', 'Ahmedabad'),
(2, 'Priya Patel', 'Ahmedabad'),
(3, 'Amit Shah', 'Ahmedabad'),
(4, 'Neha Mehta', 'Ahmedabad'),
(5, 'Karan Desai', 'Vadodara'),
(6, 'Riya Joshi', 'Vadodara'),
(7, 'Arjun Patel', 'Vadodara'),
(8, 'Sneha Shah', 'Mumbai'),
(9, 'Vivek Kumar', 'Mumbai'),
(10, 'Anjali Mehta', 'Mumbai');

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
-- Table structure for table `delivery_agents`
--

CREATE TABLE `delivery_agents` (
  `agent_id` int(11) NOT NULL,
  `agent_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `joined_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_agents`
--

INSERT INTO `delivery_agents` (`agent_id`, `agent_name`, `city`, `phone`, `rating`, `joined_date`) VALUES
(1, 'Ravi Kumar', 'Mumbai', '9876501001', 4.80, '2022-03-15'),
(2, 'Suresh Yadav', 'Mumbai', '9876501002', 4.50, '2021-11-20'),
(3, 'Arjun Mehta', 'Mumbai', '9876501003', 4.20, '2023-01-10'),
(4, 'Priya Sharma', 'Delhi', '9876501004', 4.90, '2022-06-05'),
(5, 'Vikram Singh', 'Delhi', '9876501005', 4.60, '2021-08-18'),
(6, 'Nisha Patel', 'Delhi', '9876501006', 4.30, '2023-02-28'),
(7, 'Kiran Reddy', 'Bangalore', '9876501007', 4.70, '2022-09-12'),
(8, 'Manoj Nair', 'Bangalore', '9876501008', 4.40, '2021-12-01'),
(9, 'Deepa Thomas', 'Bangalore', '9876501009', 4.10, '2023-04-22'),
(10, 'Amit Verma', 'Mumbai', '9876501010', 4.60, '2022-07-30'),
(11, 'Sneha Iyer', 'Delhi', '9876501011', 4.80, '2021-05-14'),
(12, 'Rajesh Pillai', 'Bangalore', '9876501012', 4.50, '2023-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_agents2`
--

CREATE TABLE `delivery_agents2` (
  `agent_id` int(11) NOT NULL,
  `agent_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_agents2`
--

INSERT INTO `delivery_agents2` (`agent_id`, `agent_name`, `city`) VALUES
(1, 'Ravi Kumar', 'Ahmedabad'),
(2, 'Manish Patel', 'Ahmedabad'),
(3, 'Sahil Shah', 'Ahmedabad'),
(4, 'Vishal Mehta', 'Ahmedabad'),
(5, 'Harsh Desai', 'Vadodara'),
(6, 'Nikhil Patel', 'Vadodara'),
(7, 'Jay Joshi', 'Vadodara'),
(8, 'Rohan Sharma', 'Mumbai'),
(9, 'Akash Kumar', 'Mumbai'),
(10, 'Dev Patel', 'Mumbai');

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
-- Table structure for table `orders1`
--

CREATE TABLE `orders1` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `delivery_time_mins` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Delivered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders2`
--

CREATE TABLE `orders2` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_time_mins` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders2`
--

INSERT INTO `orders2` (`order_id`, `customer_id`, `restaurant_id`, `agent_id`, `order_amount`, `order_date`, `delivery_time_mins`) VALUES
(1, 1, 1, 1, 1200.00, '2026-09-09', 32),
(2, 2, 1, 2, 1500.00, '2026-09-10', 28),
(3, 3, 1, 3, 1800.00, '2026-09-11', 35),
(4, 4, 1, 1, 1100.00, '2026-09-12', 30),
(5, 5, 2, 2, 900.00, '2026-09-10', 25),
(6, 6, 2, 3, 1300.00, '2026-09-11', 27),
(7, 7, 2, 4, 1600.00, '2026-09-13', 31),
(8, 5, 2, 2, 1400.00, '2026-09-14', 29),
(9, 8, 5, 5, 2200.00, '2026-09-09', 40),
(10, 9, 5, 6, 2500.00, '2026-09-12', 38),
(11, 10, 5, 7, 1900.00, '2026-09-14', 42),
(12, 8, 5, 5, 2100.00, '2026-09-15', 36),
(13, 9, 8, 8, 3000.00, '2026-09-10', 35),
(14, 10, 8, 9, 2800.00, '2026-09-11', 33),
(15, 8, 8, 10, 3200.00, '2026-09-13', 37),
(16, 9, 8, 8, 2700.00, '2026-09-15', 34),
(17, 1, 3, 1, 800.00, '2026-09-12', 26),
(18, 2, 4, 2, 1700.00, '2026-09-13', 29),
(19, 6, 6, 5, 1200.00, '2026-09-14', 32),
(20, 7, 7, 6, 950.00, '2026-09-15', 27),
(21, 3, 1, 1, 1300.00, '2026-09-08', 30),
(22, 2, 2, 1, 1450.00, '2026-09-09', 28),
(23, 4, 3, 1, 900.00, '2026-09-10', 31),
(24, 1, 4, 1, 1600.00, '2026-09-11', 29),
(25, 5, 5, 5, 2100.00, '2026-09-08', 39),
(26, 6, 6, 5, 1400.00, '2026-09-09', 35),
(27, 7, 5, 5, 1800.00, '2026-09-10', 41),
(28, 5, 6, 5, 1250.00, '2026-09-11', 33),
(29, 8, 8, 8, 2900.00, '2026-09-08', 36),
(30, 9, 9, 8, 2600.00, '2026-09-09', 34),
(31, 10, 8, 8, 3100.00, '2026-09-10', 38),
(32, 8, 9, 8, 2400.00, '2026-09-11', 32);

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

-- --------------------------------------------------------

--
-- Table structure for table `restaurants1`
--

CREATE TABLE `restaurants1` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(150) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cuisine_type` varchar(50) DEFAULT NULL,
  `avg_prep_mins` int(11) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants1`
--

INSERT INTO `restaurants1` (`restaurant_id`, `restaurant_name`, `city`, `cuisine_type`, `avg_prep_mins`, `contact`) VALUES
(1, 'Spice Garden', 'Mumbai', 'Indian', 25, '2241001001'),
(2, 'Burger Barn', 'Mumbai', 'Fast Food', 15, '2241001002'),
(3, 'The Pasta House', 'Mumbai', 'Italian', 30, '2241001003'),
(4, 'Tandoor Tales', 'Delhi', 'North Indian', 35, '1141001001'),
(5, 'Wok & Roll', 'Delhi', 'Chinese', 20, '1141001002'),
(6, 'Pizza Paradise', 'Delhi', 'Italian', 25, '1141001003'),
(7, 'Dosa Delight', 'Bangalore', 'South Indian', 15, '8041001001'),
(8, 'The Biryani Box', 'Bangalore', 'Mughlai', 40, '8041001002'),
(9, 'Sushi Street', 'Bangalore', 'Japanese', 30, '8041001003'),
(10, 'Curry & Co.', 'Mumbai', 'Indian', 25, '2241001004'),
(11, 'Rolls Republic', 'Delhi', 'Street Food', 10, '1141001004'),
(12, 'Wrap & Go', 'Bangalore', 'Continental', 20, '8041001004');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants2`
--

CREATE TABLE `restaurants2` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants2`
--

INSERT INTO `restaurants2` (`restaurant_id`, `restaurant_name`, `city`) VALUES
(1, 'Spice Hub', 'Ahmedabad'),
(2, 'Pizza Palace', 'Ahmedabad'),
(3, 'Burger House', 'Ahmedabad'),
(4, 'Tandoori Treat', 'Ahmedabad'),
(5, 'Royal Bites', 'Vadodara'),
(6, 'Food Junction', 'Vadodara'),
(7, 'Green Leaf', 'Vadodara'),
(8, 'Mumbai Masala', 'Mumbai'),
(9, 'Street Food Corner', 'Mumbai'),
(10, 'Urban Kitchen', 'Mumbai');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_daily_order_summary`
-- (See below for the actual view)
--
CREATE TABLE `vw_daily_order_summary` (
`order_date` date
,`customer_name` varchar(100)
,`restaurant_name` varchar(100)
,`agent_name` varchar(100)
,`order_amount` decimal(10,2)
,`delivery_time_mins` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_daily_order_summary`
--
DROP TABLE IF EXISTS `vw_daily_order_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_daily_order_summary`  AS SELECT `o`.`order_date` AS `order_date`, `c`.`customer_name` AS `customer_name`, `r`.`restaurant_name` AS `restaurant_name`, `d`.`agent_name` AS `agent_name`, `o`.`order_amount` AS `order_amount`, `o`.`delivery_time_mins` AS `delivery_time_mins` FROM (((`orders2` `o` join `customers2` `c` on(`o`.`customer_id` = `c`.`customer_id`)) join `restaurants2` `r` on(`o`.`restaurant_id` = `r`.`restaurant_id`)) join `delivery_agents2` `d` on(`o`.`agent_id` = `d`.`agent_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers1`
--
ALTER TABLE `customers1`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customers2`
--
ALTER TABLE `customers2`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `delivery_agents`
--
ALTER TABLE `delivery_agents`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `delivery_agents2`
--
ALTER TABLE `delivery_agents2`
  ADD PRIMARY KEY (`agent_id`);

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
-- Indexes for table `orders1`
--
ALTER TABLE `orders1`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `restaurant_id` (`restaurant_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `orders2`
--
ALTER TABLE `orders2`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `restaurant_id` (`restaurant_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `restaurants1`
--
ALTER TABLE `restaurants1`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `restaurants2`
--
ALTER TABLE `restaurants2`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers2`
--
ALTER TABLE `customers2`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_agents2`
--
ALTER TABLE `delivery_agents2`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders2`
--
ALTER TABLE `orders2`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `restaurants2`
--
ALTER TABLE `restaurants2`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`);

--
-- Constraints for table `orders1`
--
ALTER TABLE `orders1`
  ADD CONSTRAINT `orders1_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders1_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`),
  ADD CONSTRAINT `orders1_ibfk_3` FOREIGN KEY (`agent_id`) REFERENCES `delivery_agents` (`agent_id`);

--
-- Constraints for table `orders2`
--
ALTER TABLE `orders2`
  ADD CONSTRAINT `orders2_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers2` (`customer_id`),
  ADD CONSTRAINT `orders2_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants2` (`restaurant_id`),
  ADD CONSTRAINT `orders2_ibfk_3` FOREIGN KEY (`agent_id`) REFERENCES `delivery_agents2` (`agent_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
