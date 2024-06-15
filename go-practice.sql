-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 06:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go-practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `courseonline`
--

CREATE TABLE `courseonline` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(250) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image_url` varchar(1025) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseonline`
--

INSERT INTO `courseonline` (`courseid`, `coursename`, `price`, `image_url`) VALUES
(1, 'LifeCoach', 200000, '');

-- --------------------------------------------------------

--
-- Table structure for table `onlinecourse`
--

CREATE TABLE `onlinecourse` (
  `id` int(11) NOT NULL,
  `coursename` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `instructor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `onlinecourse`
--

INSERT INTO `onlinecourse` (`id`, `coursename`, `price`, `instructor`) VALUES
(1, 'LifeCoach', 200000, 'Coach Donny'),
(2, 'Politics', 0, 'Coach Donny'),
(3, 'Self Defense', 5000, 'Coach Donny');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(3, 'tylerswitch', '1234', '2024-04-25 10:30:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `onlinecourse`
--
ALTER TABLE `onlinecourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
