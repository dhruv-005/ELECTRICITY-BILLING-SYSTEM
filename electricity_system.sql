-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2025 at 12:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricity_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `units_consumed` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `units_consumed`, `amount`, `timestamp`) VALUES
(1, 1, 7, 105, '2025-05-29 09:38:27'),
(2, 1, 101, 1540, '2025-05-29 09:38:37'),
(3, 1, 200, 762.5, '2025-05-29 10:04:41'),
(4, 1, 1400, 6955, '2025-05-29 10:04:48'),
(5, 1, 250, 975, '2025-05-29 10:04:54'),
(6, 1, 80, 265.5, '2025-05-29 10:04:59'),
(7, 1, 352, 1505.4, '2025-05-29 10:05:06'),
(8, 1, 400, 1755, '2025-05-29 10:05:13'),
(9, 1, 450, 2015, '2025-05-29 10:05:19'),
(10, 1, 250, 975, '2025-05-29 10:10:59'),
(11, 1, 25, 78.75, '2025-05-29 10:19:13'),
(12, 3, 900, 4355, '2025-06-05 08:57:33'),
(13, 3, 25, 78.75, '2025-06-05 08:57:59'),
(14, 5, 425, 1885, '2025-06-05 09:07:10'),
(15, 5, 200, 762.5, '2025-06-05 09:25:39'),
(16, 6, 125, 443.75, '2025-06-05 09:26:57'),
(17, 7, 258, 1016.6, '2025-06-05 09:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `customer_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `customer_id`) VALUES
(1, 'admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', '12345'),
(2, 'kali@gmail.com', '2ea533a2963707230fed1f5ab0d64afea356ee64ee018838e85650557a775c77', '16253'),
(3, 'hello@gmail.com', '27cc6994fc1c01ce6659c6bddca9b69c4c6a9418065e612c69d110b3f7b11f8a', '86206'),
(5, 'denil@gmail.com', 'b0ce83badc0faec0c9d4755bfd1d3b3ed1ba35b59a3731ba2d466cecaa0ea46b', '30606'),
(6, 'vatsal@gmail.com', '524f13aea41db199c19bc1e1c33661ccfc8eccc2795dd76e357510840182843d', '64504'),
(7, 'vparekh@gmail.com', 'de4c4bbc1039b9bebf2f959d0135816f0dfeb5f3c941b34f1418256e0258e545', '31737');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
