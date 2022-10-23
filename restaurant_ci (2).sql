-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 03:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(2, 'Breakfast', 1),
(4, 'Lunch', 1),
(6, 'Drinks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Dine Fine', '3', '13', '6996 Blecker Street', '3012458800', 'United States', 'Restaurant Management System in PHP with CodeIgniter Framework.', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:7:{i:0;s:12:\"viewCategory\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:9:\"viewOrder\";i:4;s:11:\"deleteOrder\";i:5;s:11:\"viewProfile\";i:6;s:13:\"updateSetting\";}'),
(6, 'Manager', 'N;'),
(7, 'Staff', 'a:8:{i:0;s:8:\"viewUser\";i:1;s:12:\"viewCategory\";i:2;s:11:\"viewProduct\";i:3;s:13:\"deleteProduct\";i:4;s:9:\"viewOrder\";i:5;s:11:\"deleteOrder\";i:6;s:11:\"viewProfile\";i:7;s:13:\"updateSetting\";}'),
(9, 'Admin', 'a:22:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:14:\"createCategory\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:14:\"deleteCategory\";i:12;s:13:\"createProduct\";i:13;s:13:\"updateProduct\";i:14;s:11:\"viewProduct\";i:15;s:13:\"deleteProduct\";i:16;s:11:\"updateOrder\";i:17;s:9:\"viewOrder\";i:18;s:11:\"deleteOrder\";i:19;s:13:\"updateCompany\";i:20;s:11:\"viewProfile\";i:21;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
(11, 'CDSTRO-FCA2', '1666433534', '80.00', '3', '2.40', '13', '10.40', '', '92.80', 1, 2, 2, 0),
(12, 'CDSTRO-5138', '1666433581', '80.00', '3', '2.40', '13', '10.40', '', '92.80', 1, 3, 2, 0),
(13, 'CDSTRO-AE42', '1666448896', '20.00', '3', '0.60', '13', '2.60', '', '23.20', 1, 1, 1, 0),
(14, 'CDSTRO-20D8', '1666449150', '60.00', '3', '1.80', '13', '7.80', '', '69.60', 1, 2, 2, 0),
(15, 'CDSTRO-B9C6', '1666449325', '80.00', '3', '2.40', '13', '10.40', '', '92.80', 6, 3, 2, 17),
(16, 'CDSTRO-597B', '1666449663', '80.00', '3', '2.40', '13', '10.40', '', '92.80', 7, 1, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(6, 1, 2, '2', '5', '10.00'),
(7, 1, 1, '3', '4', '4.00'),
(8, 2, 3, '2', '3', '6.00'),
(9, 3, 5, '1', '6', '6.00'),
(10, 3, 3, '2', '3', '3.00'),
(11, 4, 19, '2', '7.95', '15.90'),
(12, 4, 16, '2', '1.89', '1.89'),
(13, 4, 9, '1', '12', '12.00'),
(18, 5, 23, '2', '10.30', '20.60'),
(19, 5, 19, '1', '7.95', '7.95'),
(20, 5, 16, '2', '1.89', '1.89'),
(21, 5, 5, '1', '6', '6.00'),
(24, 6, 12, '1', '9', '9.00'),
(25, 6, 15, '1', '9.99', '9.99'),
(33, 7, 24, '2', '9.85', '19.70'),
(34, 7, 25, '1', '5.10', '5.10'),
(35, 7, 18, '1', '8.95', '8.95'),
(36, 7, 16, '3', '1.89', '1.89'),
(37, 7, 8, '2', '1.70', '1.70'),
(38, 7, 2, '1', '5', '5.00'),
(39, 7, 4, '2', '2', '2.00'),
(41, 8, 24, '1', '9.85', '9.85'),
(42, 9, 26, '1', '10', '10.00'),
(46, 10, 24, '1', '9.85', '9.85'),
(47, 11, 52, '1', '80', '80.00'),
(48, 12, 52, '1', '80', '80.00'),
(50, 13, 45, '1', '20', '20.00'),
(51, 14, 46, '1', '60', '60.00'),
(53, 15, 52, '1', '80', '80.00'),
(55, 16, 52, '1', '80', '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `store_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`) VALUES
(28, '[\"2\"]', '[\"17\"]', 'Alu Bhaji', '30', '<p>Alu Bhaji is a bengali recipe</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(29, '[\"2\"]', '[\"17\"]', 'Paratha', '8', '', '<p>The upload path does not appear to be valid.</p>', 1),
(45, '[\"2\"]', '[\"17\"]', 'Dal Bhaji', '20', '', '<p>The upload path does not appear to be valid.</p>', 1),
(46, '[\"4\"]', '[\"17\"]', 'Khichuri', '60', '', '<p>The upload path does not appear to be valid.</p>', 1),
(47, '[\"4\"]', '[\"17\"]', 'Rice', '30', '', '<p>The upload path does not appear to be valid.</p>', 1),
(48, '[\"4\"]', '[\"17\"]', 'Tehari', '70', '', '<p>The upload path does not appear to be valid.</p>', 1),
(49, '[\"4\"]', '[\"17\"]', 'Rui Mach', '30', '', '<p>The upload path does not appear to be valid.</p>', 1),
(50, '[\"4\"]', '[\"17\"]', 'Alu Bharta', '10', '', '<p>The upload path does not appear to be valid.</p>', 1),
(51, '[\"4\"]', '[\"17\"]', 'Shutki', '20', '', '<p>The upload path does not appear to be valid.</p>', 1),
(52, '[\"4\"]', '[\"17\"]', 'Ilish Mach', '80', '', '<p>The upload path does not appear to be valid.</p>', 1),
(53, '[\"6\"]', '[\"17\"]', 'Coffee', '15', '', '<p>The upload path does not appear to be valid.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(17, 'Mess', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
(1, 'Breakfast', '4', 1, 1, 17),
(2, 'Lunch', '6', 2, 1, 17),
(3, 'Drinks', '4', 2, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
(1, 'admin', '$2y$10$7HpMJOYDc7QyaRfJX5exJuQSi2U/fB7qgRLACu.1TMg7snJNf7Mim', 'admin@gmail.com', 'Will', 'Williams', '80789998', 1, 0),
(2, 'kenny', '$2y$10$QQESnj3B3Q3nb9IBuZwZE..rmAJPUzz0DWlNM8zCydju432BlyjuO', 'kennyw@gmail.com', 'Kenny', 'Waldrom', '7545554540', 1, 1),
(3, 'liamoore', '12345678', 'liam@gmail.com', 'Liam', 'Moore', '7400002140', 1, 1),
(5, 'donna', '$2y$10$uhWPHza2qiKtFKS3IKbIyeblUBXPoJWbwyWCuju7ukCTAcm2oncZO', 'donna@gmail.com', 'Donna', 'Edwards', '7025556960', 2, 16),
(6, 'mahbub48', '$2y$10$uH4lSUyt18v4nM4vE1www.daat/mKUsrMFPWDCJgoJk1sesl3i702', 'mahbubsarwar5@gmail.com', 'Mahbub', 'Sarwar', '01820909893', 1, 17),
(7, 'mahbub049', '$2y$10$BFAaebxm2NHOufbbh5PWVe1F5frYePEYTAnmK2QKv.QRoJkkOXkTW', 'mahbubsarwar49@gmail.com', 'Mahbub', 'Sarwar', '01820909803', 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 4),
(4, 4, 6),
(5, 5, 7),
(6, 6, 4),
(7, 7, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
