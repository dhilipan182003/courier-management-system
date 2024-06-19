-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 07:29 PM
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
-- Database: `cms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(30) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `street`, `city`, `state`, `zip_code`, `country`, `contact`, `date_created`) VALUES
(5, 'J0TKu5XpnwVo1la', 'St.Xaviers college', 'Tirunelveli ', 'Tamilnadu ', '627861', 'India', '8072270077', '2023-03-22 22:43:35'),
(8, '1', 'sardar', 'Tirunelveli ', 'Tamilnadu ', '627851', 'india', '144456', '2023-03-22 23:15:56'),
(9, '2', 'Einstein ', 'Tirunelveli', 'Tamilnadu', '627851', 'India', '144567', '2023-03-22 23:17:09'),
(10, '3', 'Rani', 'Tirunelveli', 'Tamilnadu ', '627851', 'India', '875432', '2023-03-22 23:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` int(30) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `sender_name` text NOT NULL,
  `sender_address` text NOT NULL,
  `sender_contact` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_address` text NOT NULL,
  `recipient_contact` text NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = Deliver, 2=Pickup',
  `from_branch_id` varchar(30) NOT NULL,
  `to_branch_id` varchar(30) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `length` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`, `status`, `date_created`) VALUES
(9, '000000008040', 'dhilipan', '3/9', '1212121212', 'peo', '4/9', '9090909090', 2, '8', '9', '4', '5', '4', '7', 500, 0, '2023-03-22 23:33:18'),
(10, '4191', 'dhilipan', '3/9', '1212121212', 'peo', '4/9', '9090909090', 2, '8', '9', '4', '5', '4', '7', 500, 3, '2023-03-22 23:37:59'),
(11, '6246', 'dhilipan', '3/9', '6565656565', 'peo', '4/9', '5656565656', 2, '8', '9', '2', '50', '4', '7', 500, 5, '2023-03-22 23:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `parcel_tracks`
--

CREATE TABLE `parcel_tracks` (
  `id` int(30) NOT NULL,
  `parcel_id` int(30) NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parcel_tracks`
--

INSERT INTO `parcel_tracks` (`id`, `parcel_id`, `status`, `date_created`) VALUES
(1, 2, 1, '2020-11-27 09:53:27'),
(2, 3, 1, '2020-11-27 09:55:17'),
(3, 1, 1, '2020-11-27 10:28:01'),
(4, 1, 2, '2020-11-27 10:28:10'),
(5, 1, 3, '2020-11-27 10:28:16'),
(6, 1, 4, '2020-11-27 11:05:03'),
(7, 1, 5, '2020-11-27 11:05:17'),
(8, 1, 7, '2020-11-27 11:05:26'),
(9, 3, 2, '2020-11-27 11:05:41'),
(10, 6, 1, '2020-11-27 14:06:57'),
(11, 8, 4, '2023-03-22 01:00:28'),
(12, 8, 1, '2023-03-22 01:00:56'),
(13, 7, 3, '2023-03-22 21:18:16'),
(14, 8, 3, '2023-03-22 21:19:18'),
(15, 10, 3, '2023-03-22 23:38:37'),
(16, 8, 8, '2023-03-22 23:44:02'),
(17, 11, 5, '2023-03-22 23:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Courier Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `branch_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `branch_id`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 0, '2020-11-26 10:57:04'),
(2, 'Coco', 'Martin', 'coco@sample.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 1, '2020-11-26 11:52:04'),
(3, 'Cardo', 'Dalisay', 'cardo@sample.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 4, '2020-11-27 13:32:12'),
(4, 'dhilipan', 'dhilipan', 'dhilipan@sample.com', 'f542eae1949358e25d8bfeefe5b199f1', 2, 4, '2020-11-27 13:33:12'),
(5, 'dhilipan', 'c', 'dhilipan@gmail.com', 'f542eae1949358e25d8bfeefe5b199f1', 2, 8, '2023-03-22 23:22:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
