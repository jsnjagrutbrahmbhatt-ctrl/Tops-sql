-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 01:22 PM
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
-- Table structure for table `zomato_bangalore`
--

CREATE TABLE `zomato_bangalore` (
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `restaurant_type` text DEFAULT NULL,
  `cuisines` text DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `votes` bigint(20) DEFAULT NULL,
  `cost_for_two` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zomato_bangalore`
--

INSERT INTO `zomato_bangalore` (`restaurant_id`, `name`, `location`, `restaurant_type`, `cuisines`, `rating`, `votes`, `cost_for_two`) VALUES
(1, 'Truffles', 'Koramangala', 'Cafe', 'American, Fast Food, Burger', 4.7, 4850, 900),
(2, 'Meghana Foods', 'Koramangala', 'Casual Dining', 'Biryani, Andhra, North Indian', 4.6, 3900, 800),
(3, 'The Black Pearl', 'Koramangala', 'Fine Dining', 'North Indian, BBQ, European', 4.8, 2750, 2200),
(4, 'Koramangala Social', 'Koramangala', 'Pub', 'Continental, American, North Indian', 4.5, 3100, 1600),
(5, 'Echoes Koramangala', 'Koramangala', 'Cafe', 'Cafe, Italian, Continental', 4.6, 1950, 1000),
(6, 'China Bistro', 'Koramangala', 'Casual Dining', 'Chinese, Asian', 4.4, 1420, 1500),
(7, 'Spicy Delight', 'Koramangala', 'Quick Bites', 'North Indian, Fast Food', 2.8, 340, 350),
(8, 'Toit', 'Indiranagar', 'Pub', 'Italian, American, Pizza', 4.8, 5200, 2000),
(9, 'Glen\'s Bakehouse', 'Indiranagar', 'Cafe', 'Bakery, Desserts, Italian', 4.5, 2600, 850),
(10, 'Chianti', 'Indiranagar', 'Fine Dining', 'Italian, Continental, Pasta', 4.7, 1800, 2400),
(11, 'Milano Ice Cream', 'Indiranagar', 'Dessert Parlor', 'Desserts, Ice Cream', 4.6, 1400, 400),
(12, 'Empire Restaurant', 'Indiranagar', 'Casual Dining', 'North Indian, Biryani, Mughlai', 4.1, 2900, 950),
(13, 'Indiranagar Chaat Hub', 'Indiranagar', 'Quick Bites', 'Street Food, Fast Food', 4.2, 680, 250),
(14, 'Royal Biryani Corner', 'Indiranagar', 'Casual Dining', 'Biryani, North Indian', 2.7, 410, 600),
(15, 'Karavalli', 'Residency Road', 'Fine Dining', 'South Indian, Coastal, Seafood', 4.9, 2100, 3500),
(16, 'Vidyarthi Bhavan', 'Gandhi Bazaar', 'Quick Bites', 'South Indian', 4.6, 4300, 200),
(17, 'CTR Shri Sagar', 'Malleshwaram', 'Quick Bites', 'South Indian, Street Food', 4.7, 3800, 250),
(18, 'Windmills Craftworks', 'Whitefield', 'Pub', 'American, Continental, North Indian', 4.8, 3200, 2800),
(19, 'Fast Bite Express', 'Whitefield', 'Quick Bites', 'Fast Food, Chinese', 2.9, 260, 300),
(20, 'Smoke House Deli', 'Lavelle Road', 'Casual Dining', 'European, Continental, Italian', 4.4, 1250, 2000),
(21, 'Brahmin\'s Coffee Bar', 'Shankarapuram', 'Quick Bites', 'South Indian', 4.8, 4100, 150),
(22, 'Corner House Ice Cream', 'Jayanagar', 'Dessert Parlor', 'Desserts, Ice Cream', 4.7, 3400, 450),
(23, 'Mavalli Tiffin Room (MTR)', 'Basavanagudi', 'Casual Dining', 'South Indian', 4.5, 3600, 550),
(24, 'Nagarjuna', 'Residency Road', 'Casual Dining', 'Andhra, Biryani, South Indian', 4.5, 2800, 1100),
(25, 'Taste of Hyderabad', 'HSR Layout', 'Casual Dining', 'Biryani, North Indian', 2.8, 220, 750);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
