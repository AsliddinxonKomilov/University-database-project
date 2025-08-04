-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2025 at 01:35 PM
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
-- Database: `universitet`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `ism` varchar(50) NOT NULL,
  `familya` varchar(100) NOT NULL,
  `Hudud` varchar(100) NOT NULL,
  `tugilgan_sana` date NOT NULL DEFAULT '2006-12-17',
  `GPA` float DEFAULT NULL,
  `guruh` varchar(50) NOT NULL,
  `UniversityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_nopad_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `ism`, `familya`, `Hudud`, `tugilgan_sana`, `GPA`, `guruh`, `UniversityID`) VALUES
(1, 'Alan', 'Coleman', 'State of Washington', '2006-12-17', 3.7, '431-24', 1),
(2, 'John', 'Peterson', 'State of Arkansas', '2000-10-22', 3.9, '431-21', 3),
(3, 'Christopher', 'McGreey', 'State of Montana', '1993-02-25', 3.2, '720-22', 5),
(4, 'Kevin', 'Adams', 'State of Ohio', '1997-07-19', 4.1, '321-20', 4),
(5, 'Taylor', 'Jonnes', 'State of New york', '2001-12-19', 4.5, '230-20', 2),
(6, 'Andrew', 'George', 'State of Missisippi', '1998-03-20', 3.7, '421-20', 1),
(7, 'Jonny', 'Hermont', 'State of North Carolina', '2003-01-22', 3.3, '202-21', 5);

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `rating` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_nopad_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `location`, `rating`) VALUES
(1, 'Massachusetts institute of technology', 'Massachusetts,USA', 1),
(2, 'Imperial College London', 'London,UK', 2),
(3, 'Stanford university', 'California,USA', 3),
(4, 'University of Oxford', 'Oxford,UK', 4),
(5, 'Harvard university', 'Massachusetts,USA', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UniversityID` (`UniversityID`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`UniversityID`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`UniversityID`) REFERENCES `universities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
