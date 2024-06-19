-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 07:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courierdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adlogin`
--

CREATE TABLE `adlogin` (
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adlogin`
--

INSERT INTO `adlogin` (`email`, `password`, `a_id`) VALUES
('admin1@gmail.com', '12345', 1),
('admin2@gmail.com', '12345', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pnumber` int(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `email`, `name`, `pnumber`) VALUES
(1, 'admin1@gmail.com', 'Admin1', 12345),
(2, 'admin2@gmail.com', 'Admin2', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `email` varchar(50) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `msg` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `c_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `semail` varchar(50) DEFAULT NULL,
  `remail` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `rname` varchar(50) DEFAULT NULL,
  `sphone` varchar(20) DEFAULT NULL,
  `rphone` varchar(20) DEFAULT NULL,
  `saddress` varchar(50) DEFAULT NULL,
  `raddress` varchar(50) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `billno` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`c_id`, `u_id`, `semail`, `remail`, `sname`, `rname`, `sphone`, `rphone`, `saddress`, `raddress`, `weight`, `billno`, `image`, `date`) VALUES
(10, 5, 'dhilipan', 'peol@gmail.com', 'dhilipan', 'peo', '77777777', '55555555', '1', '4/9', 5, 5665566, 'IMG_20220827_191653.jpg', '2023-03-20'),
(11, 5, 'dhilipan', 'peol@gmail.com', 'dhilipan', 'peo', '909090909', '9898989898', '3/9', '4/9', 5, 867565, 'post 7.jpg', '2023-03-20'),
(12, 6, '8072270077', '9090909090', 'dhilipan', 'peo', '8072270077', '9090909090', '3/9', '4/9', 1, 1234567, 'IMG_20220827_191653.jpg', '2023-03-21'),
(13, 11, '1212121212', '9090909090', 'dhilipan', 'peo', 'dhilipan18012003@gma', 'peo@gmail.com', '3/9', '4/9', 1, 123455, 'post 7.jpg', '2023-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `u_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pnumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`u_id`, `email`, `name`, `pnumber`) VALUES
(1, 'premkumar1215225@gmail.com', 'prem', '56665'),
(4, 'love@gmail.com', 'LOVE RAJ', '2147483647'),
(5, 'dhilipan', 'Dhilipan', '2147483647'),
(6, '8072270077', 'Dhilipan', '2147483647'),
(9, '1111111111', 'Dhilipan', '1111111111'),
(11, '1212121212', 'peo', 'peo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `u_id`) VALUES
('premkumar1215225@gmail.com', '12345', 1),
('love@gmail.com', '12345', 4),
('dhilipan', '1813', 5),
('8072270077', '1813', 6),
('1111111111', '1813', 9),
('1212121212', '1813', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adlogin`
--
ALTER TABLE `adlogin`
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `billno` (`billno`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `u_id` (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adlogin`
--
ALTER TABLE `adlogin`
  ADD CONSTRAINT `adlogin_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`);

--
-- Constraints for table `courier`
--
ALTER TABLE `courier`
  ADD CONSTRAINT `courier_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `customer` (`u_id`) ON DELETE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `customer` (`u_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
