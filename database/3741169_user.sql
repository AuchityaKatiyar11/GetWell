-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb28.awardspace.net
-- Generation Time: Jul 14, 2021 at 02:54 AM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3741169_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `doc_con` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `slot` int(6) NOT NULL,
  `pat_con` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`doc_con`, `date`, `slot`, `pat_con`) VALUES
('123456', '14/06/2021', 1, '1122'),
('7570952104', '15/06/2021', 2, '9889'),
('9889733252', '20/06/2021', 3, '12345'),
('9889733252', 'jj', 8, 'jj'),
('9889733252', 'aman sahu', 9, 'aman sahu'),
('9889733252', 'aman kumar', 10, 'aman kumar');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `specialty` varchar(15) NOT NULL,
  `locx` varchar(20) NOT NULL,
  `locy` varchar(20) NOT NULL,
  `locality` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `specialty`, `locx`, `locy`, `locality`, `address`, `contact`, `password`) VALUES
(1, 'Amit kumar', 'neuro', '0.0', '0.0', 'tbd', 'tbd', '7570952104', 'abc'),
(13, 'akash', 'neuro', '0.0', '0.0', 'tbd', 'tbd', '123456', 'abcd'),
(12, 'Ayush', 'neuro', '26.434961899999998', '80.305115', 'Kanpur', '178, Barra Main Rd, Barra World Bank, Barra, Kanpur, Uttar Pradesh 208027, India', '9889733252', '123'),
(20, 'Abhishek', 'tbd', '26.434961899999998', '80.305115', 'Kanpur', '178, Barra Main Rd, Barra World Bank, Barra, Kanpur, Uttar Pradesh 208027, India', '555', '12'),
(21, 'amit katiyar', 'tbd', '0', '0', '0', '0', '1234567', '123');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `problem` varchar(500) NOT NULL,
  `slot` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `phone`, `password`, `problem`, `slot`) VALUES
('Aman', '12345', '123', 'neuro', '1'),
('Ashutosh', '9889', '123', 'covid', '2'),
('Akshay', '1122', '123', 'fracture', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`slot`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`phone`(11));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `slot` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
