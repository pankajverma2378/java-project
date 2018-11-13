-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2018 at 11:08 AM
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
  `pname` varchar(15) NOT NULL,
  `pprice` int(15) NOT NULL,
  `pcolor` varchar(15) NOT NULL,
  `pyop` int(15) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_dir2`
--

INSERT INTO `car_dir2` (`pname`, `pprice`, `pcolor`, `pyop`, `user_id`) VALUES
('i10', 100000, 'white', 2012, 222),
('cr', 25, 'blue', 456, 257),
('bolero', 200000, 'black', 2005, 268),
('bolero', 200000, 'black', 2005, 268);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(15) NOT NULL,
  `pass` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pass`) VALUES
('milan', 222),
('jain', 257),
('pankaj', 268),
('mishra', 365);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardir`
--
ALTER TABLE `cardir`
  ADD PRIMARY KEY (`S.NO`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pass`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
