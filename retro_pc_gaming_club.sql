-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2017 at 10:41 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retro_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_info`
--

CREATE TABLE `booking_info` (
  `Bk_No` varchar(15) NOT NULL,
  `Bk_Date` varchar(50) NOT NULL,
  `Cost` float(5,2) NOT NULL,
  `Prepaid` varchar(15) NOT NULL,
  `Session_No` int(11) NOT NULL,
  `Customer_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_info`
--

INSERT INTO `booking_info` (`Bk_No`, `Bk_Date`, `Cost`, `Prepaid`, `Session_No`, `Customer_no`) VALUES
('b20', '14/05/2017', 0.00, 'n/a', 1, 102),
('b21', '14/05/2017', 10.00, 'No', 1, 105),
('b22', '14/05/2017', 9.00, 'Yes', 1, 101),
('b23', '21/05/2017', 10.00, 'No', 1, 106),
('b24', '14/05/2017', 4.50, 'No', 2, 104),
('b25', '06/05/2017', 4.50, 'Yes', 4, 104);

-- --------------------------------------------------------

--
-- Table structure for table `console_gaming`
--

CREATE TABLE `console_gaming` (
  `Console_Gaming_ID` varchar(10) NOT NULL,
  `Console_No` int(11) NOT NULL,
  `Game_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `console_gaming`
--

INSERT INTO `console_gaming` (`Console_Gaming_ID`, `Console_No`, `Game_No`) VALUES
('CG1', 201, 21),
('CG2', 202, 21),
('CG3', 203, 22),
('CG4', 202, 22),
('CG5', 204, 23),
('CG6', 205, 24);

-- --------------------------------------------------------

--
-- Table structure for table `console_info`
--

CREATE TABLE `console_info` (
  `Console_No` int(11) NOT NULL,
  `Console_Name` varchar(20) NOT NULL,
  `Console_Qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `console_info`
--

INSERT INTO `console_info` (`Console_No`, `Console_Name`, `Console_Qty`) VALUES
(201, 'PS1', 3),
(202, 'PS2', 2),
(203, 'PS4', 3),
(204, 'Nintendo Switch', 2),
(205, 'X Box 360', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `Customer_no` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `SurName` varchar(25) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `JoinDate` varchar(50) NOT NULL,
  `DateOf_Birth` varchar(50) NOT NULL,
  `Membership_No` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`Customer_no`, `FirstName`, `SurName`, `Address`, `JoinDate`, `DateOf_Birth`, `Membership_No`) VALUES
(101, 'Kylie', 'Mason', '10 Smith St, Southwark', '01/02/2017 ', '01/03/1999', 10),
(102, 'Martin', 'Abed', '20 Walker Way, Southwark', '25/03/2017', '14/02/2002', 11),
(103, 'Saleya', 'Hussain', 'Flat 1, Warner Way, Bromley', '30/01/2017', '25/04/1999', 11),
(104, 'CJ', 'Marley', '35 Spencer St, Brent Cross', '05/02/2017', '14/02/1970', 10),
(105, 'Jessica', 'Jones', '25 Walker Way, Southwark', '02/03/2017', '12/03/1985', 12),
(106, 'Sarah', 'Shaw ', '30 Spencer St, Brent Cross', '01/02/2017', '10/02/1993', 12);

-- --------------------------------------------------------

--
-- Table structure for table `game_info`
--

CREATE TABLE `game_info` (
  `Game_No` int(11) NOT NULL,
  `Game_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_info`
--

INSERT INTO `game_info` (`Game_No`, `Game_Name`) VALUES
(21, 'Spiro'),
(22, 'Crash Bandicoot'),
(23, 'Legend of Zelda'),
(24, 'Halo 3'),
(26, 'Space Invader'),
(27, 'Poker'),
(28, 'Mario');

-- --------------------------------------------------------

--
-- Table structure for table `machine_info`
--

CREATE TABLE `machine_info` (
  `Machine_No` int(11) NOT NULL,
  `Access_Year` varchar(10) NOT NULL,
  `Floor_Number` int(10) NOT NULL,
  `Game_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine_info`
--

INSERT INTO `machine_info` (`Machine_No`, `Access_Year`, `Floor_Number`, `Game_No`) VALUES
(13, '1996 year', 2, 27),
(23, '1982 year', 1, 26),
(45, '1983 year', 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `membership_info`
--

CREATE TABLE `membership_info` (
  `Membership_No` int(11) NOT NULL,
  `Membership_Type` varchar(50) NOT NULL,
  `Membership_Cost` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_info`
--

INSERT INTO `membership_info` (`Membership_No`, `Membership_Type`, `Membership_Cost`) VALUES
(10, 'Standard', 10.00),
(11, 'Premium', 165.00),
(12, 'Free', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `session_console_info`
--

CREATE TABLE `session_console_info` (
  `Session_Console_ID` varchar(10) NOT NULL,
  `Session_No` int(11) NOT NULL,
  `Console_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_console_info`
--

INSERT INTO `session_console_info` (`Session_Console_ID`, `Session_No`, `Console_No`) VALUES
('SC1', 1, 201),
('SC2', 2, 202),
('SC3', 3, 203),
('SC4', 2, 204),
('SC5', 4, 202);

-- --------------------------------------------------------

--
-- Table structure for table `session_info`
--

CREATE TABLE `session_info` (
  `Session_No` int(11) NOT NULL,
  `Session_Day` varchar(15) NOT NULL,
  `Session_StartTime` varchar(20) NOT NULL,
  `Session_EndTime` varchar(20) NOT NULL,
  `Session_Type` varchar(12) NOT NULL,
  `Session_Floor` int(10) NOT NULL,
  `Session_Cost` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_info`
--

INSERT INTO `session_info` (`Session_No`, `Session_Day`, `Session_StartTime`, `Session_EndTime`, `Session_Type`, `Session_Floor`, `Session_Cost`) VALUES
(1, 'Sunday', '11:30 am', '6pm', 'Freeplay', 1, 10.00),
(2, 'Sunday', '11am', '6pm', 'Freeplay', 2, 5.00),
(3, 'Saturday', '11am', '6pm', 'Freeplay', 1, 10.00),
(4, 'Monday', '6pm', '9pm', 'Special', 2, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `session_staff_info`
--

CREATE TABLE `session_staff_info` (
  `Session_Staff_ID` varchar(10) NOT NULL,
  `Session_No` int(11) NOT NULL,
  `Staff_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_staff_info`
--

INSERT INTO `session_staff_info` (`Session_Staff_ID`, `Session_No`, `Staff_No`) VALUES
('SS13', 1, 2),
('SS14', 1, 3),
('SS15', 2, 4),
('SS16', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `Staff_No` int(11) NOT NULL,
  `Staff_name` varchar(25) NOT NULL,
  `Staff_Role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`Staff_No`, `Staff_name`, `Staff_Role`) VALUES
(2, 'Sally Riley', 'Maintenance'),
(3, 'James Howard', 'Counter'),
(4, 'Kelsie Brookes', 'Counter'),
(5, 'Jabbed Merza', 'Maintenance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD PRIMARY KEY (`Bk_No`),
  ADD KEY `Customer_no` (`Customer_no`),
  ADD KEY `Session_No` (`Session_No`);

--
-- Indexes for table `console_gaming`
--
ALTER TABLE `console_gaming`
  ADD PRIMARY KEY (`Console_Gaming_ID`),
  ADD KEY `Console_No` (`Console_No`),
  ADD KEY `Game_No` (`Game_No`);

--
-- Indexes for table `console_info`
--
ALTER TABLE `console_info`
  ADD PRIMARY KEY (`Console_No`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`Customer_no`),
  ADD KEY `Membership_No` (`Membership_No`);

--
-- Indexes for table `game_info`
--
ALTER TABLE `game_info`
  ADD PRIMARY KEY (`Game_No`);

--
-- Indexes for table `machine_info`
--
ALTER TABLE `machine_info`
  ADD PRIMARY KEY (`Machine_No`),
  ADD KEY `Game_No` (`Game_No`);

--
-- Indexes for table `membership_info`
--
ALTER TABLE `membership_info`
  ADD PRIMARY KEY (`Membership_No`);

--
-- Indexes for table `session_console_info`
--
ALTER TABLE `session_console_info`
  ADD PRIMARY KEY (`Session_Console_ID`),
  ADD KEY `Session_No` (`Session_No`),
  ADD KEY `Console_No` (`Console_No`);

--
-- Indexes for table `session_info`
--
ALTER TABLE `session_info`
  ADD PRIMARY KEY (`Session_No`);

--
-- Indexes for table `session_staff_info`
--
ALTER TABLE `session_staff_info`
  ADD PRIMARY KEY (`Session_Staff_ID`),
  ADD KEY `Session_No` (`Session_No`),
  ADD KEY `Staff_No` (`Staff_No`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`Staff_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD CONSTRAINT `booking_info_ibfk_1` FOREIGN KEY (`Customer_no`) REFERENCES `customer_info` (`Customer_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_info_ibfk_2` FOREIGN KEY (`Session_No`) REFERENCES `session_info` (`Session_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `console_gaming`
--
ALTER TABLE `console_gaming`
  ADD CONSTRAINT `console_gaming_ibfk_1` FOREIGN KEY (`Console_No`) REFERENCES `console_info` (`Console_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `console_gaming_ibfk_2` FOREIGN KEY (`Game_No`) REFERENCES `game_info` (`Game_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD CONSTRAINT `customer_info_ibfk_1` FOREIGN KEY (`Membership_No`) REFERENCES `membership_info` (`Membership_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `machine_info`
--
ALTER TABLE `machine_info`
  ADD CONSTRAINT `machine_info_ibfk_1` FOREIGN KEY (`Game_No`) REFERENCES `game_info` (`Game_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_console_info`
--
ALTER TABLE `session_console_info`
  ADD CONSTRAINT `session_console_info_ibfk_1` FOREIGN KEY (`Session_No`) REFERENCES `session_info` (`Session_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_console_info_ibfk_2` FOREIGN KEY (`Console_No`) REFERENCES `console_info` (`Console_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_staff_info`
--
ALTER TABLE `session_staff_info`
  ADD CONSTRAINT `session_staff_info_ibfk_1` FOREIGN KEY (`Session_No`) REFERENCES `session_info` (`Session_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_staff_info_ibfk_2` FOREIGN KEY (`Staff_No`) REFERENCES `staff_info` (`Staff_No`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
