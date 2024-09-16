-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 02:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `children`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `casedetail`
--

CREATE TABLE `casedetail` (
  `id` int(11) NOT NULL,
  `child` varchar(32) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(130) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `imageurl` varchar(200) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Not match'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Table structure for table `childinfo`
--

CREATE TABLE `childinfo` (
  `id` int(11) NOT NULL,
  `age` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `imageurl` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Indexes for dumped tables
--

--
-- Indexes for table `casedetail`
--
ALTER TABLE `casedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childinfo`
--
ALTER TABLE `childinfo`
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
-- AUTO_INCREMENT for table `casedetail`
--
ALTER TABLE `casedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `childinfo`
--
ALTER TABLE `childinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
