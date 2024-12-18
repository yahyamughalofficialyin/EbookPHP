-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 10:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `timeAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `phone`, `password`, `timeAdded`, `addedBy`) VALUES
('17cb62b4-bc91-11ef-aea4-e0db55de3119', 'Yahya Ahmed Mughal', 'ysreality@gmail.com', '03132952131', '$2y$10$lubEIzu31Ew5Z3uwrlGLiOgR8ls8UOlAsOG5vJvbfY61YDx.G/zcK', '2024-12-17 16:07:12', 'current_admin_id');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timeAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `timeAdded`, `addedBy`) VALUES
('2dd3a225-bcb0-11ef-aea4-e0db55de3119', 'Nimra Ahmed', '2024-12-17 19:49:44', '17cb62b4-bc91-11ef-aea4-e0db55de3119');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `pdf` varchar(200) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `author` varchar(255) NOT NULL,
  `language` varchar(100) NOT NULL,
  `timeAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `image`, `pdf`, `price`, `category`, `author`, `language`, `timeAdded`, `addedBy`) VALUES
('676337703592b', 'Deewan-e-Ghalib', 'Deewan-e-Ghalib A Book By Mirza Asad Ullah Khan Ghalib', 'uploads/books/images/Deewan-e-Ghalib-67633770354c5.jpg', 'uploads/books/pdf/Deewan-e-Ghalib-67633770356f9.pdf', '500', '98d25ad2-bcae-11ef-aea4-e0db55de3119', '2dd3a225-bcb0-11ef-aea4-e0db55de3119', 'urdu', '2024-12-18 20:58:24', '17cb62b4-bc91-11ef-aea4-e0db55de3119');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timeAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `timeAdded`, `addedBy`) VALUES
('98d25ad2-bcae-11ef-aea4-e0db55de3119', 'Tales', '2024-12-17 19:38:24', '17cb62b4-bc91-11ef-aea4-e0db55de3119');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timeAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE `competition` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `fee` varchar(255) NOT NULL,
  `prize` varchar(255) NOT NULL,
  `contlimit` int(11) NOT NULL,
  `regStartDate` date NOT NULL,
  `regEndDate` date NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `timeAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` varchar(255) NOT NULL,
  `bookId` varchar(255) NOT NULL,
  `clientId` varchar(255) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `paymentStatus` varchar(255) NOT NULL,
  `timeAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD KEY `addedBy` (`addedBy`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedBy` (`addedBy`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedBy` (`addedBy`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookId` (`bookId`),
  ADD KEY `clientId` (`clientId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`addedBy`) REFERENCES `admin` (`id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`addedBy`) REFERENCES `admin` (`id`);

--
-- Constraints for table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `competition_ibfk_1` FOREIGN KEY (`addedBy`) REFERENCES `admin` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`clientId`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
