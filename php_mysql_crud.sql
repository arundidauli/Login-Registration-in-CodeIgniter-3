-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2021 at 10:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

/**
 * Created by Arun Kumar on 14/8/20.
 * Copyright (c) 2020  Wingshield Technologies
 */

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_mysql_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'How to Create a REST API in Codeigniter', 'How to Create a REST API in CodeigniterHow to Create a REST API in Codeigniter', '2021-02-09 17:00:36', '2021-02-10 17:00:36'),
(2, 'How to Create a REST API in Codeigniter', 'How to Create a REST API in CodeigniterHow to Create a REST API in Codeigniter', '2021-02-18 17:00:57', '2021-02-09 17:00:57'),
(3, 'How to Create a REST API in Codeigniter', 'How to Create a REST API in CodeigniterHow to Create a REST API in Codeigniter', '2021-02-18 17:00:57', '2021-02-09 17:00:57'),
(4, 'How to Create a REST API in Codeigniter', 'How to Create a REST API in CodeigniterHow to Create a REST API in Codeigniter', '2021-02-18 17:00:57', '2021-02-09 17:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'CodeIgniter 2.2.6 is the legacy version of the framework.', 'The 2.x branch was originally released January 2011, and the last version (2.2.6) came out in October, 2015.', 'CodeIgniter 2.2.6 is the legacy version of the framework.\r\n\r\nThe 2.x branch was originally released January 2011, and the last version (2.2.6) came out in October, 2015.\r\n\r\nCodeIgniter 2 has reached its end-of-life for support and updates, as of October 31, 2015. No further updates are planned.'),
(2, 'CodeIgniter 2.2.6 is the legacy version of the framework.', 'The 2.x branch was originally released January 2011, and the last version (2.2.6) came out in October, 2015.', 'CodeIgniter 2.2.6 is the legacy version of the framework.\r\n\r\nThe 2.x branch was originally released January 2011, and the last version (2.2.6) came out in October, 2015.\r\n\r\nCodeIgniter 2 has reached its end-of-life for support and updates, as of October 31, 2015. No further updates are planned.');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `created_at`) VALUES
(11, 'Android', 'Hello test User', '2021-02-25 05:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'abc@gmail.com', 'admin'),
(2, 'arunandroid', 'love2knot2020@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
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
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
