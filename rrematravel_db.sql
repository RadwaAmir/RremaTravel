-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 02:19 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rrematravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id_tourism` int(11) NOT NULL,
  `nameprogram` varchar(255) NOT NULL,
  `nametorism` varchar(255) NOT NULL,
  `booking_date` date NOT NULL,
  `The_amount_paid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_tb`
--

CREATE TABLE `hotel_tb` (
  `idHotel` int(11) NOT NULL,
  `Hotelname` varchar(255) NOT NULL,
  `numberdays` text NOT NULL,
  `accommodationtype` varchar(255) NOT NULL,
  `nightprice` text NOT NULL,
  `total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leader_tb`
--

CREATE TABLE `leader_tb` (
  `id_leader` int(11) NOT NULL,
  `leadername` varchar(255) NOT NULL,
  `phoneleader` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tourism_tb`
--

CREATE TABLE `tourism_tb` (
  `id_tourism` int(11) NOT NULL,
  `tourismname` varchar(255) NOT NULL,
  `countryname` varchar(255) NOT NULL,
  `passportid` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `touristattraction_tb`
--

CREATE TABLE `touristattraction_tb` (
  `id_location` int(11) NOT NULL,
  `namelocation` varchar(255) NOT NULL,
  `price` text NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `touristprogramme_tb`
--

CREATE TABLE `touristprogramme_tb` (
  `id_programme` int(11) NOT NULL,
  `programmename` varchar(255) NOT NULL,
  `Fromdate` date NOT NULL,
  `Todate` date NOT NULL,
  `Hotelname` varchar(255) NOT NULL,
  `leadername` varchar(255) NOT NULL,
  `transmissionmeans` varchar(255) NOT NULL,
  `touristattraction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transmissionmeans_tb`
--

CREATE TABLE `transmissionmeans_tb` (
  `id_Bus` int(11) NOT NULL,
  `tooltype` varchar(255) NOT NULL,
  `passengersnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id_tourism`);

--
-- Indexes for table `hotel_tb`
--
ALTER TABLE `hotel_tb`
  ADD PRIMARY KEY (`idHotel`);

--
-- Indexes for table `leader_tb`
--
ALTER TABLE `leader_tb`
  ADD PRIMARY KEY (`id_leader`);

--
-- Indexes for table `tourism_tb`
--
ALTER TABLE `tourism_tb`
  ADD PRIMARY KEY (`id_tourism`);

--
-- Indexes for table `touristattraction_tb`
--
ALTER TABLE `touristattraction_tb`
  ADD PRIMARY KEY (`id_location`);

--
-- Indexes for table `touristprogramme_tb`
--
ALTER TABLE `touristprogramme_tb`
  ADD PRIMARY KEY (`id_programme`);

--
-- Indexes for table `transmissionmeans_tb`
--
ALTER TABLE `transmissionmeans_tb`
  ADD PRIMARY KEY (`id_Bus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id_tourism` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_tb`
--
ALTER TABLE `hotel_tb`
  MODIFY `idHotel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leader_tb`
--
ALTER TABLE `leader_tb`
  MODIFY `id_leader` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourism_tb`
--
ALTER TABLE `tourism_tb`
  MODIFY `id_tourism` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `touristattraction_tb`
--
ALTER TABLE `touristattraction_tb`
  MODIFY `id_location` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `touristprogramme_tb`
--
ALTER TABLE `touristprogramme_tb`
  MODIFY `id_programme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transmissionmeans_tb`
--
ALTER TABLE `transmissionmeans_tb`
  MODIFY `id_Bus` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
