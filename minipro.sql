-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 11:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minipro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaintid` int(255) NOT NULL,
  `complaint_date` date NOT NULL DEFAULT current_timestamp(),
  `Student_Id` varchar(15) NOT NULL,
  `phoneno` varchar(11) NOT NULL,
  `roomno` varchar(10) NOT NULL,
  `complaint_type` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaintid`, `complaint_date`, `Student_Id`, `phoneno`, `roomno`, `complaint_type`, `description`) VALUES
(7, '2022-09-20', 'S170288', '9573750586', 'SF54', 'Electricity issue', 'Lights  are not working.'),
(8, '2022-09-20', 'S170288', '9573750586', 'SF54', 'Carpentry issue', 'Room Door Issue'),
(9, '2022-09-20', 'S170510', '6302621489', 'SF55', 'housekeeping issue', 'Clean the room.'),
(11, '2022-09-20', 'S170288', '9573750586', 'SF54', 'Other issue', 'rreview'),
(12, '2022-09-21', 'S170849', '9391420709', 'TF34', 'Mess food issue', 'Today food is not good.'),
(13, '2022-09-21', 'S170505', '8688080329', 'SF43B', 'leakage issue', 'water leakage');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Student_Id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `hostel` varchar(255) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobileno` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Student_Id`, `username`, `email`, `gender`, `hostel`, `roomno`, `password`, `mobileno`) VALUES
('S170288', 'mohanraj', 's170288@gmail.com', 'Male', 'I1', 'SF54', 'eb5440cfc395b5927d36f336fd44697b', 9573750586),
('S170505', 'Lallitha', 's170505@gmail.com', 'Female', 'K4', 'SF43B', '9baf7945cd5b390044d59bcbb940d364', 7997844059),
('S170510', 'Dhanya', 's170510@gmail.com', 'Female', 'K4', 'SF55', 'ee49d65319f42e5e594c24832d81961b', 6302621489),
('S170849', 'Reddemma', 'S170849@gmail.com', 'female', 'K4', 'TF36', '03e8a3585abb67d9cd8e7136c2c62ee9', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaintid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Student_Id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaintid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
