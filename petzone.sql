-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 11:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `ID` int(11) NOT NULL,
  `petOwner` varchar(50) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  `petname` varchar(50) NOT NULL,
  `aDate` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`ID`, `petOwner`, `EmployeeName`, `petname`, `aDate`, `price`) VALUES
(15, 'cccSDsdsafdsafsad', 'e', 'dfhgfdhdfhfd', '2023-12-19', 300);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `ID` int(11) NOT NULL,
  `addedBy` varchar(50) NOT NULL,
  `petname` varchar(50) NOT NULL,
  `species` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`ID`, `addedBy`, `petname`, `species`, `age`, `weight`) VALUES
(16, 'aewsreqw', 'sadaaaaaaa', 'aewsreqwaaaaaaaaaa', 48, 4),
(17, 'sad', 'sad', 'sad', 34, 534),
(24, 'safsafsadfsaf', 'sad4334erfdesardsf', 'saddsfdsfdsf', 34, 34),
(25, 'cccSDsdsafdsafsad', 'dfhgfdhdfhfd', 'hgfdgfdsgfd', 44, 43);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `accountType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `Username`, `Email`, `password`, `accountType`) VALUES
(2, 'aa', 'aa', 'a', 'aa', 'a', 'Admin'),
(10, 'c2', 'c2', 'c2', 'c2', 'c2', 'Client'),
(11, 'c4', 'c4', 'c4', 'c4', 'c4', 'Client'),
(12, 'sad', 'asfd', 'daf', 'sadf', 'asfd', 'Admin'),
(13, 'azr', 'azr', 'az', 'azr', '', 'Client'),
(17, 'xx', 'xx', 'xx', 'xx', 'xx', 'Admin'),
(18, 'qqqq', 'qqqqq', 'q', 'q', 'q', 'Admin'),
(20, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'Admin'),
(21, 'qqq', 'qqq', 'qqq', 'qqq', 'qqq', 'Admin'),
(22, 'zzz', 'zzz', 'zzz', 'zzz', 'zzz', 'Client'),
(23, 'e', 'e', 'e', 'e', 'e', 'Employee'),
(24, 'asd', 'asdsaf', 'dsafsa', 'safdsa', 'safdadsf', 'Client'),
(25, 'sadafs', 'dsgdsgf', 'dsagsdgdsa', 'fdsagfsa', 'dgfsafsaf', 'Client'),
(26, 'zz', 'zz', 'zz', 'zz', 'zz', 'Admin'),
(28, 'sadsafdsafdsf', 'safsafdsafdsa', 'safsafsadfsaf', 'safsaf@fdsf', 'sadsafsafsa', 'Client'),
(29, 'sadsfsafdsaf', 'fdasffdsa', 'dsafsadfsad', 'fdsafadsf@safdsa', '343453rfdsarewrf', 'Employee'),
(30, 'cccccccccccccccccccccccc', 'ccccccccccc', 'cccSDsdsafdsafsad', 'cccccccc@fdsa', 'ccccccccccccccccccccccccccc', 'Client'),
(31, 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaa', 'ADssad@sad', 'safdsafdsad', 'Client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
