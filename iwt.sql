-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 11:38 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `Name`, `Email`, `Password`, `Phone`, `Address`) VALUES
(1, 'Shruti Gajwa', 'shruti6268@gmail.com', 'Shruti@123', '9575033977', 'braj nagae colony');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Tital` varchar(512) NOT NULL,
  `Source_Name` varchar(64) NOT NULL,
  `Source_Address` varchar(256) NOT NULL,
  `Source_phone` varchar(10) NOT NULL,
  `Destination_Name` varchar(64) NOT NULL,
  `Destination_Address` varchar(256) NOT NULL,
  `Destination_Phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `Name`, `Email`, `Tital`, `Source_Name`, `Source_Address`, `Source_phone`, `Destination_Name`, `Destination_Address`, `Destination_Phone`) VALUES
(1, 'Shruti Gajwa', 'shruti6268@gmail.com', 'book', 'hjdk kjd', 'fhf hf', '4444444444', 'gf kjg', '', ''),
(2, 'Shruti Gajwa', 'shruti6268@gmail.com', 'book', 'Anu ', 'braj nagar ', '4444444444', 'kanu', 'shanu', '6666666666'),
(3, 'shruti', 'shruti6268@gmail.com', 'book', 'fdhsdhfl', 'ugdfjkghkjf', '7575757575', 'fhgkj', 'jkfg', '9999999999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
