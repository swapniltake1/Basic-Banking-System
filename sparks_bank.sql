-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(9, 'Dipali', 'Amol', 200, '2021-12-20 10:57:11'),
(10, 'Sumedh', 'Shweta', 6000, '2021-12-20 10:57:37'),
(11, 'Mitali', 'Shruti', 2300, '2021-12-20 10:58:19'),
(12, 'Dipali', 'Priya', 200, '2021-12-20 12:36:08'),
(13, 'Dipali', 'Amol', 200, '2021-12-20 12:46:58'),
(14, 'Dipali', 'Shweta', 2300, '2021-12-20 21:59:14'),
(15, 'Shruti', 'Dipali', 2000, '2021-12-20 22:01:02');

-- --------------------------------------------------------


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Dipali', 'dipali2009@gmail.com', 60000),
(2, 'Amol', 'thigale.amol17@gmail.com', 65000),
(3, 'Priya', 'priya28@gmail.com', 55000),
(4, 'Shweta', 'shweta2000@gmail.com', 20000),
(5, 'Pranjal', 'pranjaljt28@gmail.com', 31400),
(6, 'Sumedh', 'thokesumedh@gmail.com', 36000),
(7, 'Tanu', 'tanvi2006@gmail.com', 41000),
(8, 'Ayush', 'thigaleayush28@gmail.com', 45000),
(9, 'Mitali', 'dmitali24@gmail.com', 50000),
(10, 'Shruti', 'shruti1111@gmail.com', 32000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
