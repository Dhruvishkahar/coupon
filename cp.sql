-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2019 at 04:10 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greengra_Bharat_jewels`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `cpid` int(11) NOT NULL,
  `usrname` text NOT NULL,
  `cpcode` text NOT NULL,
  `regdate` date NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `listid` int(11) NOT NULL,
  `cp_code` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` enum('yes','no') NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`listid`, `cp_code`, `phone`, `status`, `username`) VALUES
(1, '100', '7046170679', 'no', 'vikas'),
(3, '501', '9824273709', 'yes', ''),
(4, '501', '9714531470', 'no', 'dhruvish'),
(5, '100', '1', 'no', 'vikas'),
(6, '100', '2', 'no', 'vikas'),
(7, '100', '3', 'yes', ''),
(8, '100', '4', 'yes', ''),
(9, '100', '5', 'yes', ''),
(10, '100', '6', 'yes', ''),
(11, '100', '7', 'yes', ''),
(12, '100', '8', 'yes', ''),
(13, '100', '9', 'yes', ''),
(14, '100', '10', 'yes', ''),
(15, 'BHTJ102019', '1234567890', 'no', 'vikas'),
(16, 'BHTJ102019', '9876543210', 'no', 'vikas');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `expdate` date NOT NULL,
  `status` enum('Yes','No') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `expdate`, `status`) VALUES
(1, 'vikas', 'vikas', '2019-10-16', 'Yes'),
(2, 'dhruvish', 'dhruvish', '2019-10-15', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`listid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
