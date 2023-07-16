-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 12:24 PM
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
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'PARUL', '$2y$10$zAmNq/lX/OSfeeJEDkHej./wpJiZ4luqeF0yAoHYs8bZvYAQCqzpG', 'PARUL', 'UNIVERSITY', 'image_2023-07-15_165210057.png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 8, 'Allu', 'Arjun', 'image_2023-07-15_162615592.png', 'NA'),
(19, 8, 'Hrithik', 'Roshan', 'image_2023-07-15_162848578.png', 'NA'),
(20, 9, 'Rashmika', 'MAndana', 'image_2023-07-15_162949983.png', 'NA'),
(21, 9, 'Ram', 'charan', 'image_2023-07-15_163145080.png', 'NA'),
(22, 10, 'Samantha', 'Akkineni', 'image_2023-07-15_163326681.png', 'NA'),
(23, 10, 'Dr.', 'Garuda', 'image_2023-07-15_163438189.png', 'KGF'),
(24, 10, 'Vaani', 'Kapoor', 'image_2023-07-15_163530957.png', 'NA'),
(25, 10, 'James', 'Bond', 'image_2023-07-15_163613279.png', 'NA'),
(26, 9, 'Elon', 'Musk', 'image_2023-07-15_163658094.png', 'NA'),
(27, 8, 'Mark', 'Zuckerberg', 'image_2023-07-15_163806372.png', 'NA'),
(28, 10, 'Zeff', 'Bezos', 'image_2023-07-15_163843075.png', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'HOD', 1, 1),
(9, 'PRINCIPAL', 1, 2),
(10, 'PROFESSOR', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, 'XKc4oFDwEhZ5yjR', '$2y$10$UK/KtjhpwOJa4HYFFetPvunIH8YHFt2Z1.KSO.dIejPYgQ21th8r2', 'hulk', 'patel', 'image_2023-07-15_164500484.png'),
(3, 'LAPe789FEZyI32q', '$2y$10$zK0pmOXy4PKlNg6Y896FXeR88MCaYlFGNbSxLtnPu3Iq8Ol29vvly', 'Iron', 'Man', 'image_2023-07-15_164649297.png'),
(4, 'UWcJSt4GOzVspuf', '$2y$10$RbwbgAKuGTHXcV/TcsBnH..Aoo4A1jYqWeJm03WYP4iQ2cZeaDxVi', 'sanket', 'prajapati', 'pp.jpg'),
(5, 'TI41j7wgmZeaGqk', '$2y$10$339VYdWajcZD39BkXdh7DeFyN7RtAcLt3vKFFnpLX6InfNNbtfBka', 'Aagam', 'Shah', ''),
(8, 'sjti8OBYbRTgUNI', '$2y$10$Z2XdwmY55ooghsNCkyrDPO2LRFqROlypwybI6lsl5GHnRurQiSok2', '123', '123', ''),
(9, '4LEQOXwujStsxVW', '$2y$10$/53bbU/ULSRk8tRqZsKtT.oY4wvFOd9jc0zn6zF.NaFKjYJ4dniP2', '123', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 2, 18, 8),
(82, 2, 20, 9),
(83, 2, 23, 10),
(84, 2, 24, 10),
(85, 4, 19, 8),
(86, 4, 20, 9),
(87, 4, 25, 10),
(88, 4, 28, 10),
(89, 5, 27, 8),
(90, 5, 26, 9),
(91, 5, 28, 10),
(92, 6, 18, 8),
(93, 6, 20, 9),
(94, 6, 24, 10),
(95, 6, 25, 10),
(96, 7, 28, 10),
(97, 8, 18, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
