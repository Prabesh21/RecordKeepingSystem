-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2020 at 01:44 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `symtom` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `arrival` date NOT NULL,
  `phone` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `username`, `address`, `symtom`, `shift`, `department`, `arrival`, `phone`) VALUES
(1, 'Sadhuram Nepali', 'Hetauda', 'Cough', 'Day', 'Dr. Shyam Upreti', '2019-08-15', 9856432167),
(3, 'Suraj Chhetri', 'Swayambhu', 'High', 'Morning', 'Dr. Hari Narayan Shrestha', '2019-08-01', 44444);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `arrival` date NOT NULL,
  `phone` bigint(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `name`, `age`, `address`, `arrival`, `phone`, `amount`, `service`) VALUES
(1, 'Ram Yadav', 17, 'ktm', '2019-08-02', 9843117299, 200, 'X-ray,MRI,'),
(34, 'Dinesh Budathoki', 45, 'Hattiban', '2019-10-24', 9843117299, 300, 'Ticket, Urine Test,MRI,'),
(44, 'Prabesh Khatri', 45, 'Ktm', '2019-10-05', 9843117299, 300, 'Ticket, Urine Test,X-ray,');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_anes`
--

CREATE TABLE `doctor_anes` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nmc` int(11) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `phone` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_anes`
--

INSERT INTO `doctor_anes` (`id`, `username`, `nmc`, `degree`, `shift`, `phone`) VALUES
(2, 'Dr. Achyut Ghimire', 520, 'MBBS,MS', 'Morning', 9848794495),
(87, 'Dr. Dinesh Kr Budathoki', 6565, 'MBBS,MD,DM', 'Morning', 9876543210),
(88, 'Dr. Rishi Khanal', 5555, 'MBBS', 'Day', 9843117299),
(908, 'Dr Sadhuram Nepali', 876, 'MBBS,MD,MS', 'Morning', 9876543210);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_bs`
--

CREATE TABLE `doctor_bs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nmc` int(11) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `phone` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_bs`
--

INSERT INTO `doctor_bs` (`id`, `username`, `nmc`, `degree`, `shift`, `phone`) VALUES
(1, 'Dr. Om Narayan Nepali', 111, 'MBBS', 'Morning', 9843117299);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_anes`
--

CREATE TABLE `nurse_anes` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nmc` int(11) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `phone` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_anes`
--

INSERT INTO `nurse_anes` (`id`, `username`, `nmc`, `degree`, `shift`, `phone`) VALUES
(1, 'Ankita Acharya', 121313, 'Staff Nurse', 'Morning', 9844556622),
(10, 'Laxmi Sharma', 1345, 'Staff Nurse', 'Morning', 87877878);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_bs`
--

CREATE TABLE `nurse_bs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nmc` int(11) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `phone` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_bs`
--

INSERT INTO `nurse_bs` (`id`, `username`, `nmc`, `degree`, `shift`, `phone`) VALUES
(1, 'Pushpa Adhikar', 2324, 'Staff Nurse', 'Morning', 9898989898);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `arrival` date NOT NULL,
  `discharge` date NOT NULL,
  `phone` bigint(100) NOT NULL,
  `hr` varchar(100) NOT NULL,
  `dvisited` varchar(100) NOT NULL,
  `drappointed` varchar(100) NOT NULL,
  `ward` int(10) NOT NULL,
  `bed` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `address`, `arrival`, `discharge`, `phone`, `hr`, `dvisited`, `drappointed`, `ward`, `bed`) VALUES
(67, 'Dinesh Budathoki', 'Hatiban', '2019-10-02', '2018-02-21', 9843117299, 'dengue positive', 'Emergency', 'Dr. Shyam Upreti', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'pbs', 'pbs'),
(2, 'p', 'p'),
(3, 'cosmos', 'cosmos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_anes`
--
ALTER TABLE `doctor_anes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nmc` (`nmc`);

--
-- Indexes for table `doctor_bs`
--
ALTER TABLE `doctor_bs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nmc` (`nmc`);

--
-- Indexes for table `nurse_anes`
--
ALTER TABLE `nurse_anes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nmc` (`nmc`);

--
-- Indexes for table `nurse_bs`
--
ALTER TABLE `nurse_bs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nmc` (`nmc`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `doctor_anes`
--
ALTER TABLE `doctor_anes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=909;

--
-- AUTO_INCREMENT for table `doctor_bs`
--
ALTER TABLE `doctor_bs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nurse_anes`
--
ALTER TABLE `nurse_anes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nurse_bs`
--
ALTER TABLE `nurse_bs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
