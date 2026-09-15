-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2026 at 03:57 AM
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
-- Table structure for table `ipl_matches`
--

CREATE TABLE `ipl_matches` (
  `match_id` bigint(20) DEFAULT NULL,
  `season` bigint(20) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `team1` text DEFAULT NULL,
  `team2` text DEFAULT NULL,
  `toss_winner` text DEFAULT NULL,
  `toss_decision` text DEFAULT NULL,
  `winner` text DEFAULT NULL,
  `result` text DEFAULT NULL,
  `result_margin` bigint(20) DEFAULT NULL,
  `player_of_match` text DEFAULT NULL,
  `venue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ipl_matches`
--

INSERT INTO `ipl_matches` (`match_id`, `season`, `city`, `date`, `team1`, `team2`, `toss_winner`, `toss_decision`, `winner`, `result`, `result_margin`, `player_of_match`, `venue`) VALUES
(1, 2023, 'Ahmedabad', '2023-03-31', 'Gujarat Titans', 'Chennai Super Kings', 'Gujarat Titans', 'field', 'Gujarat Titans', 'wickets', 5, 'Mohammed Shami', 'Narendra Modi Stadium'),
(2, 2023, 'Bengaluru', '2023-04-02', 'Royal Challengers Bangalore', 'Mumbai Indians', 'Royal Challengers Bangalore', 'field', 'Royal Challengers Bangalore', 'wickets', 8, 'Faf du Plessis', 'M Chinnaswamy Stadium'),
(3, 2023, 'Mumbai', '2023-04-08', 'Mumbai Indians', 'Chennai Super Kings', 'Chennai Super Kings', 'field', 'Chennai Super Kings', 'wickets', 7, 'Ravindra Jadeja', 'Wankhede Stadium'),
(4, 2023, 'Delhi', '2023-04-11', 'Delhi Capitals', 'Mumbai Indians', 'Mumbai Indians', 'field', 'Mumbai Indians', 'wickets', 6, 'Rohit Sharma', 'Arun Jaitley Stadium'),
(5, 2023, 'Kolkata', '2023-04-14', 'Kolkata Knight Riders', 'Sunrisers Hyderabad', 'Kolkata Knight Riders', 'field', 'Sunrisers Hyderabad', 'runs', 23, 'Harry Brook', 'Eden Gardens'),
(6, 2023, 'Mumbai', '2023-04-16', 'Mumbai Indians', 'Kolkata Knight Riders', 'Mumbai Indians', 'field', 'Mumbai Indians', 'wickets', 5, 'Venkatesh Iyer', 'Wankhede Stadium'),
(7, 2023, 'Hyderabad', '2023-04-18', 'Sunrisers Hyderabad', 'Mumbai Indians', 'Sunrisers Hyderabad', 'field', 'Mumbai Indians', 'runs', 14, 'Cameron Green', 'Rajiv Gandhi International Stadium'),
(8, 2023, 'Mumbai', '2023-04-22', 'Mumbai Indians', 'Punjab Kings', 'Mumbai Indians', 'field', 'Punjab Kings', 'runs', 13, 'Sam Curran', 'Wankhede Stadium'),
(9, 2023, 'Ahmedabad', '2023-04-25', 'Gujarat Titans', 'Mumbai Indians', 'Mumbai Indians', 'field', 'Gujarat Titans', 'runs', 55, 'Abhinav Manohar', 'Narendra Modi Stadium'),
(10, 2023, 'Mumbai', '2023-04-30', 'Mumbai Indians', 'Rajasthan Royals', 'Rajasthan Royals', 'bat', 'Mumbai Indians', 'wickets', 6, 'Yashasvi Jaiswal', 'Wankhede Stadium'),
(11, 2023, 'Mohali', '2023-05-03', 'Punjab Kings', 'Mumbai Indians', 'Mumbai Indians', 'field', 'Mumbai Indians', 'wickets', 6, 'Ishan Kishan', 'IS Bindra Stadium'),
(12, 2023, 'Chennai', '2023-05-06', 'Chennai Super Kings', 'Mumbai Indians', 'Chennai Super Kings', 'field', 'Chennai Super Kings', 'wickets', 6, 'Matheesha Pathirana', 'MA Chidambaram Stadium'),
(13, 2023, 'Mumbai', '2023-05-09', 'Mumbai Indians', 'Royal Challengers Bangalore', 'Mumbai Indians', 'field', 'Mumbai Indians', 'wickets', 6, 'Suryakumar Yadav', 'Wankhede Stadium'),
(14, 2023, 'Mumbai', '2023-05-12', 'Mumbai Indians', 'Gujarat Titans', 'Gujarat Titans', 'field', 'Mumbai Indians', 'runs', 27, 'Suryakumar Yadav', 'Wankhede Stadium'),
(15, 2023, 'Lucknow', '2023-05-16', 'Lucknow Super Giants', 'Mumbai Indians', 'Mumbai Indians', 'field', 'Lucknow Super Giants', 'runs', 5, 'Marcus Stoinis', 'BRSABV Ekana Cricket Stadium'),
(16, 2023, 'Mumbai', '2023-05-21', 'Mumbai Indians', 'Sunrisers Hyderabad', 'Mumbai Indians', 'field', 'Mumbai Indians', 'wickets', 8, 'Cameron Green', 'Wankhede Stadium'),
(17, 2023, 'Chennai', '2023-05-24', 'Lucknow Super Giants', 'Mumbai Indians', 'Mumbai Indians', 'bat', 'Mumbai Indians', 'runs', 81, 'Akash Madhwal', 'MA Chidambaram Stadium'),
(18, 2023, 'Ahmedabad', '2023-05-26', 'Gujarat Titans', 'Mumbai Indians', 'Mumbai Indians', 'field', 'Gujarat Titans', 'runs', 62, 'Shubman Gill', 'Narendra Modi Stadium'),
(19, 2023, 'Ahmedabad', '2023-05-28', 'Chennai Super Kings', 'Gujarat Titans', 'Chennai Super Kings', 'field', 'Chennai Super Kings', 'wickets', 5, 'Devon Conway', 'Narendra Modi Stadium'),
(20, 2023, 'Jaipur', '2023-05-07', 'Rajasthan Royals', 'Sunrisers Hyderabad', 'Rajasthan Royals', 'bat', 'Sunrisers Hyderabad', 'wickets', 4, 'Glenn Phillips', 'Sawai Mansingh Stadium');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
