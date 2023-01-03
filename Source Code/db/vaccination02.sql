-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 10:47 AM
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
-- Database: `vaccination02`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'ROSHINI A/P THAVAN NAIR', 'admin', 124754974, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-04-19 02:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE `dependents` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `IC_Number` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependents`
--

INSERT INTO `dependents` (`id`, `FullName`, `Email`, `PhoneNumber`, `Address`, `Gender`, `CreationDate`, `IC_Number`) VALUES
(1, 'Wasaim Ali', 'wasaim@gmail.com', 1234567890, '30, Jalan Jasin 2, Taman Hospital, 80200, Melaka', 'Male', '2021-05-27 09:31:22', '891029112231'),
(2, 'Farisha Binti Fauzan', 'farisha@gmail.com', 6017547321, 'No. 100A, Jalan SP 15, Tmn Sri Penggaram, 83000 Batu Pahat, Johor', 'Female', '2021-05-27 10:04:57', '870503112434'),
(3, 'Suraya Binti Sofian', 'ssuraya@gmail.com', 6014598012, '40, Jalan Nusa 3/2, Taman Hussein Onn, Shah Alam, 85010, Selangor', 'Female', '2021-05-07 21:49:44', '981001438226'),
(4, 'Lee Chong Wei', 'lcw@gmail.com', 6013369741, '78, Jalan Nusa Jaya 2, Taman Mutiara, Skudai, 81033, Johor', 'Male', '2021-05-08 01:25:50', '001230012443'),
(5, 'Iqbal Ahmad', 'AIqbal@gmail.com', 6012456789, '43, Jalan Gaya 9, Taman Indah, Skudai, 81033, Johor', 'Male', '2021-05-08 01:29:22', '951227052231'),
(6, 'Nabilah Binti Hamzah', 'nabilah@gmail.com', 6015452678, '63, Jalan Sentosa 6, Taman Merahwan, Batu Pahat, 87200, Johor', 'Female', '2021-06-10 03:17:58', '821022082232'),
(8, 'Yugendaran', 'yugendaran@gmail.com', 60124024974, 'No 2, Jalan 2, Taman Paloh, 86600 Paloh, Johor', 'Male', '2022-07-05 10:39:07', '970107109587');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `IC_Number` varchar(12) DEFAULT NULL,
  `Disease` mediumtext DEFAULT NULL,
  `Pregnancy` varchar(6) DEFAULT NULL,
  `Agree` varchar(6) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`user_id`, `Name`, `Email`, `PhoneNumber`, `Gender`, `IC_Number`, `Disease`, `Pregnancy`, `Agree`, `CreationDate`) VALUES
(1, 'Wasaim Ali', 'wasaim@gmail.com', 1234567890, 'Male', '891029112231', 'Asthma', 'NO', ' AGREE', '2021-05-26 17:31:22'),
(2, 'Farisha Binti Fauzan', 'farisha@gmail.com', 6017547321, 'Female', '870503112434', 'No Disease', 'YES', 'DISAGR', '2021-05-26 18:04:57'),
(3, 'Suraya Binti Sofian', 'ssuraya@gmail.com', 6014598012, 'Female', '981001438226', 'diabetes', 'NO', 'DISAGR', '2021-05-07 05:49:44'),
(4, 'Lee Chong Wei', 'lcw@gmail.com', 6013369741, 'Male', '001230012443', 'No disease', 'NO', 'AGREE', '2021-05-07 09:25:50'),
(7, 'Roshini', 'roshini01@graduate.utm.my', 60124754974, 'Female', '010507010662', 'No', 'NO', 'AGREE', '2022-07-05 10:21:03'),
(8, 'Roshini', 'roshini01@graduate.utm.my', 60124754974, 'Female', '010507010662', 'No', 'NO', 'AGREE', '2022-07-05 10:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcenter`
--

CREATE TABLE `medicalcenter` (
  `center_id` int(6) NOT NULL,
  `centerName` varchar(120) DEFAULT NULL,
  `vaccine_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalcenter`
--

INSERT INTO `medicalcenter` (`center_id`, `centerName`, `vaccine_type`) VALUES
(1, 'LHDN', 'AstraZeneca'),
(2, 'Persada Convention Center', 'AstraZeneca'),
(3, 'Klinik Kesihatan JB', 'Sinovac'),
(4, 'HSA', 'Sinovac');

-- --------------------------------------------------------

--
-- Table structure for table `medicalstaff`
--

CREATE TABLE `medicalstaff` (
  `staff_id` int(11) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Email` varchar(120) NOT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Position` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalstaff`
--

INSERT INTO `medicalstaff` (`staff_id`, `Name`, `UserName`, `Gender`, `Email`, `PhoneNumber`, `Address`, `Password`, `CreationDate`, `Position`) VALUES
(1, 'Aiman Hafiz', 'ms1', 'Male', 'aiman@gmail.com', 60126537876, 'No. 100A, Jalan SP 15, Tmn Sri Penggaram, 83000 Batu Pahat', '9eb7bd298baa27c742395f9e3b22a846', '2022-06-22 09:55:33', 'Doctor'),
(2, 'Shafiqah', 'ms2', 'Female', 'shafiqah@gmail.com', 6012652376, 'No. 300A, Jalan Nusa 14, Tmn Sentosa, 82100 Kuala Lumpur', 'd685d62f387b474e799a1722c74d2b74', '2022-06-22 07:19:06', 'Doctor'),
(3, 'Muhammad Hashim', 'ms3', 'Male', 'hashim@gmail.com', 60122313433, '131, Jalan Hang Tuah 32, Taman Meriah, 83000, Kota Tinggi, Johor', '5ac04212ef2a18b8d2de639d3768c51f', '2022-06-22 11:53:58', 'Doctor');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `location_vaccine` varchar(120) NOT NULL,
  `vaccine_status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `date`, `location_vaccine`, `vaccine_status`) VALUES
(1, '2022-06-30 02:15:25', 'Super Jaya Hall', 'undone'),
(2, '2022-05-31 03:10:28', 'Maharani Hall', 'done'),
(3, '2022-03-19 19:12:18', 'Maharani Hall', 'done'),
(4, '2022-12-22 00:15:23', 'Super Jaya Hall', 'undone'),
(5, '2022-11-26 22:05:12', 'Super Jaya Hall', 'undone'),
(6, '2022-01-15 20:18:18', 'Super Jaya Hall', 'undone'),
(7, '2022-06-25 02:21:21', 'Maharani Hall', 'done'),
(8, '2022-07-10 20:04:03', 'Super Jaya Hall', 'done'),
(9, '2022-02-11 23:10:10', 'Maharani Hall', 'undone'),
(10, '2022-08-20 00:10:25', 'Super Jaya Hall', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Email` varchar(120) NOT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IC_Number` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `Name`, `UserName`, `Email`, `PhoneNumber`, `Address`, `Password`, `Gender`, `CreationDate`, `IC_Number`) VALUES
(1, 'Wahil Ali', 'user1', 'wahil@gmail.com', 1234567890, '30, Jalan Jasin 2, Taman Hospital, 80200, Melaka', '8a13a81b63c9f02d897e8b39dd21372f', 'Male', '2021-05-26 17:31:22', '891029112231'),
(2, 'Hanisha Binti Fauzan', 'user2', 'hanisha@gmail.com', 6017547321, 'No. 100A, Jalan SP 15, Tmn Sri Penggaram, 83000 Batu Pahat, Johor', '415ae01d78998c8191a416ddd8cabe33', 'Female', '2021-05-26 18:04:57', '891222032214'),
(3, 'Suriahati Binti Sofian', 'user3', 'suriahati@gmail.com', 6014598012, '40, Jalan Nusa 3/2, Taman Hussein Onn, Shah Alam, 85010, Selangor', '456ab20472cd48e1e621f3e8ac0f3eb1', 'Female', '2021-05-07 05:49:44', '981001438226'),
(4, 'Tan Wei Long', 'user4', 'tan@gmail.com', 6013369741, '78, Jalan Nusa Jaya 2, Taman Mutiara, Skudai, 81033, Johor', '55ad0d3b9bbf07c562872c30d3d5f57b', 'Male', '2021-05-07 09:25:50', '001230012443'),
(5, 'Ismail Ahmad', 'user5', 'ismail@gmail.com', 6012456789, '43, Jalan Gaya 9, Taman Indah, Skudai, 81033, Johor', '54acad74cb89d6d08e3a71941d83f030', 'Male', '2021-05-07 09:29:22', '951227052231'),
(6, 'Roshini Thavan Nair', 'user6', 'rthavannair@gmail.com', 124754974, 'no 2, jalan 2, taman paloh, 86600 paloh, Johor', '5dafc49ead9bb2a6cf8c3b625a85c80c', 'female', '2022-07-04 05:52:32', '671204048278'),
(7, 'Rashvin', 'user7', 'rashvinnair@gmail.com', 177201700, 'no 5, jalan 35, taman pahlawan, 81300 Skudai, Johor', '3c811302f7ae1eb5e8c552d656af63b7', 'male', '2022-07-05 05:20:32', '520414013929');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_info`
--

CREATE TABLE `vaccination_info` (
  `vaccine_id` int(11) NOT NULL,
  `person_name` varchar(120) NOT NULL,
  `person_age` int(10) NOT NULL,
  `person_number` int(11) NOT NULL,
  `vaccine_type` varchar(120) NOT NULL,
  `health_facility` varchar(120) NOT NULL,
  `numberOfDose` int(10) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `location_vaccine` varchar(120) DEFAULT NULL,
  `vaccine_status` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccination_info`
--

INSERT INTO `vaccination_info` (`vaccine_id`, `person_name`, `person_age`, `person_number`, `vaccine_type`, `health_facility`, `numberOfDose`, `date`, `location_vaccine`, `vaccine_status`) VALUES
(1, 'Abu Aziz bin Hassan', 21, 1, 'AstraZeneca', 'LHDN', 2, '2022-06-30 02:15:25', 'Super Jaya Hall', 'undone'),
(2, 'Alvin Tang', 18, 2, 'Sinovac', 'LHDN', 2, '2022-05-31 03:10:28', 'Maharani Hall', 'done'),
(3, 'Harry Peter', 27, 3, 'Sinovac', 'LHDN', 1, '2022-03-19 19:12:18', 'Maharani Hall', 'done'),
(4, 'Faai Z bin Faaid', 31, 4, 'AstraZeneca', 'LHDN', 3, '2022-12-22 00:15:23', 'Super Jaya Hall', 'undone'),
(5, 'Foo Jin Hoe', 23, 5, 'AstraZeneca', 'LHDN', 2, '2022-11-26 22:05:12', 'Super Jaya Hall', 'undone'),
(6, 'Khairul Azhar bin Jefri', 28, 6, 'AstraZeneca', 'LHDN', 2, '2022-01-15 20:18:18', 'Super Jaya Hall', 'undone'),
(7, 'Louis Thomas', 25, 7, 'Sinovac', 'LHDN', 3, '2022-06-25 02:21:21', 'Maharani Hall', 'done'),
(8, 'Melinda Lau', 36, 8, 'AstraZeneca', 'LHDN', 1, '2022-07-10 20:04:03', 'Super Jaya Hall', 'done'),
(9, 'Shuba a/p Santhara Prakash', 33, 9, 'Sinovac', 'LHDN', 1, '2022-02-11 23:10:10', 'Maharani  Hall', 'undone'),
(10, 'Thamil Prakash a/l Ramachandra', 22, 10, 'AstraZeneca', 'LHDN', 2, '2022-08-20 00:10:25', 'Super Jaya Hall', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_certificate`
--

CREATE TABLE `vaccine_certificate` (
  `certificate_no` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `manufacturer` varchar(120) DEFAULT NULL,
  `facility` varchar(120) DEFAULT NULL,
  `batch` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine_certificate`
--

INSERT INTO `vaccine_certificate` (`certificate_no`, `date`, `manufacturer`, `facility`, `batch`) VALUES
(1, '2022-06-30 02:15:25', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG1023'),
(2, '2022-05-31 03:10:28', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG3967'),
(3, '2022-03-19 19:12:18', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG2048'),
(4, '2022-12-22 00:15:23', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG4801'),
(5, '2022-11-26 22:05:12', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG7719'),
(6, '2022-01-15 20:18:18', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG9109'),
(7, '2022-06-25 02:21:21', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG5502'),
(8, '2022-07-10 20:04:03', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG8816'),
(9, '2022-02-11 23:10:10', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG6688'),
(10, '2022-08-20 00:10:25', 'COMIRNATY Concentrate for Dispersion for Injection', 'LHDN', 'FG3900');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `dependents`
--
ALTER TABLE `dependents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `medicalcenter`
--
ALTER TABLE `medicalcenter`
  ADD PRIMARY KEY (`center_id`);

--
-- Indexes for table `medicalstaff`
--
ALTER TABLE `medicalstaff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vaccination_info`
--
ALTER TABLE `vaccination_info`
  ADD PRIMARY KEY (`vaccine_id`);

--
-- Indexes for table `vaccine_certificate`
--
ALTER TABLE `vaccine_certificate`
  ADD PRIMARY KEY (`certificate_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dependents`
--
ALTER TABLE `dependents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicalcenter`
--
ALTER TABLE `medicalcenter`
  MODIFY `center_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicalstaff`
--
ALTER TABLE `medicalstaff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vaccination_info`
--
ALTER TABLE `vaccination_info`
  MODIFY `vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vaccine_certificate`
--
ALTER TABLE `vaccine_certificate`
  MODIFY `certificate_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
