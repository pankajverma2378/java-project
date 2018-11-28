-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 03:02 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `CNumber` int(12) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`Name`, `Email`, `CNumber`, `Address`, `Pincode`, `user_id`) VALUES
('pankaj', 'pankajverma2378@gmail.com', 256498, 'fbdfe', 15661, 268),
('ds', 'bhjjk', 2626, 'vjhhj', 126, 268);

-- --------------------------------------------------------

--
-- Table structure for table `cardir`
--

CREATE TABLE `cardir` (
  `CARNAME` varchar(15) NOT NULL,
  `PRICE` int(20) NOT NULL,
  `YOP` int(5) NOT NULL,
  `COLOR` varchar(10) NOT NULL,
  `S.NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardir`
--

INSERT INTO `cardir` (`CARNAME`, `PRICE`, `YOP`, `COLOR`, `S.NO`) VALUES
('swift', 100000, 2000, 'white', 1),
('i10', 100000, 2012, 'white', 2);

-- --------------------------------------------------------

--
-- Table structure for table `car_dir2`
--

CREATE TABLE `car_dir2` (
  `s_no` int(11) NOT NULL,
  `pname` varchar(15) NOT NULL,
  `pprice` int(15) NOT NULL,
  `pcolor` varchar(15) NOT NULL,
  `pyop` int(15) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_dir2`
--

INSERT INTO `car_dir2` (`s_no`, `pname`, `pprice`, `pcolor`, `pyop`, `Category`, `user_id`) VALUES
(7, 'bolero', 200000, 'blue', 2005, 'Car', 268),
(9, 'pc', 25000, 'black', 2010, 'Electronic', 268),
(10, 'Table', 2500, 'brown', 2010, 'furniture', 268),
(11, 'devjeet', 1234, 'white', 2000, 'Car', 268),
(12, 'swift', 20000000, 'hjhk', 2045, 'Car', 268);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(15) NOT NULL,
  `pass` int(15) NOT NULL,
  `Fav_color` varchar(20) NOT NULL,
  `Bname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pass`, `Fav_color`, `Bname`) VALUES
('pankaj', 268, 'black', 'milan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardir`
--
ALTER TABLE `cardir`
  ADD PRIMARY KEY (`S.NO`);

--
-- Indexes for table `car_dir2`
--
ALTER TABLE `car_dir2`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_dir2`
--
ALTER TABLE `car_dir2`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
