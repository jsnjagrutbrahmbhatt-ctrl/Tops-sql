-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 03:02 AM
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
  `genre` varchar(50) NOT NULL,
  `rating` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `genre`, `rating`) VALUES
(1, 'Sci-Fi', 9.0),
(2, 'Sci-Fi', 8.8),
(3, 'Sci-Fi', 8.8),
(4, 'Sci-Fi', 8.5),
(5, 'Drama', 9.2),
(6, 'Drama', 8.9),
(7, 'Drama', 8.9),
(8, 'Drama', 8.6),
(9, 'Action', 8.7),
(10, 'Action', 8.5);

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
(1, 101, '2026-01-10', 450.00),
(2, 101, '2026-01-15', 700.00),
(3, 101, '2026-02-01', 300.00),
(4, 102, '2026-01-05', 1200.00),
(5, 102, '2026-01-20', 850.00),
(6, 103, '2026-01-12', 2500.00),
(7, 103, '2026-02-14', 1500.00),
(8, 103, '2026-02-28', 900.00);

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

--
-- Indexes for dumped tables
--

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
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
