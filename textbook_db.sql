-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2019 at 12:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textbook_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_tb`
--

CREATE TABLE `class_tb` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `students` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_tb`
--

INSERT INTO `class_tb` (`id`, `name`, `students`) VALUES
(1, 'test', 11),
(2, 'test1', 12),
(3, 'math class', 13),
(4, 'physics', 13),
(5, 'math', 123),
(6, 'test', 111);

-- --------------------------------------------------------

--
-- Table structure for table `textbook_tb`
--

CREATE TABLE `textbook_tb` (
  `id` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `textbook_name` text NOT NULL,
  `author` text NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `textbook_tb`
--

INSERT INTO `textbook_tb` (`id`, `class`, `textbook_name`, `author`, `cost`) VALUES
(1, 1, 'test', 'test', 11),
(2, 3, 'math', 'math', 20),
(3, 4, 'test', 'test', 123),
(4, 2, 'good', 'good', 11),
(5, 2, 'qqq', 'qqq', 11),
(6, 3, 'qq', 'qq', 111),
(7, 5, 'sss', 'sss', 111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_tb`
--
ALTER TABLE `class_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textbook_tb`
--
ALTER TABLE `textbook_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_tb`
--
ALTER TABLE `class_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `textbook_tb`
--
ALTER TABLE `textbook_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
