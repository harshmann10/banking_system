-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 04:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `E-mail` varchar(255) NOT NULL,
  `Current Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `Name`, `E-mail`, `Current Balance`) VALUES
(1, 'harsh', 'harsh@gmail.com', 20000),
(2, 'ashish', 'ashish01@gmail.com', 4000),
(3, 'pratyaya', 'pratyaya10@gmail.com', 40000),
(4, 'samyak', 'samyak123@gmail.com', 20000),
(5, 'tanya', 'tanya100@gmail.com', 25000),
(6, 'ojha', 'ojha321@gmail.com', 32000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sender` varchar(255) NOT NULL,
  `Receiver` varchar(255) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date and Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sender`, `Receiver`, `Amount`, `Date and Time`) VALUES
('harsh', 'ashish', 100, '0000-00-00 00:00:00'),
('harsh', 'ashish', 1, '0000-00-00 00:00:00'),
('ojha', 'ashish', 3000, '0000-00-00 00:00:00'),
('harsh', 'pratyaya', 1000, '0000-00-00 00:00:00'),
('ashish', 'harsh', 202, '0000-00-00 00:00:00'),
('pratyaya', 'harsh', 11000, '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
