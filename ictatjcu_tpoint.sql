-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2020 at 01:55 PM
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
-- Database: `ictatjcu_tpoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin User', 'admin', 8979555556, 'Test@gmail.com', 'ca99104c044b832e9438e6b544a03285', '2020-01-06 04:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Enquiry` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Is_Read` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `FullName`, `MobileNumber`, `Email`, `Enquiry`, `EnquiryDate`, `Is_Read`) VALUES
(4, 'Mahesh Shukla', 8978979797, 'Test1@gmail.com', 'vjhgjhgkhkjlkljiojnhkjhjbjhb', '2020-01-09 12:52:06', '1'),
(18, 'Tausif', 9773315030, 'thakurf@gmail.com', 'Driving classes', '2020-01-20 11:59:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpackages`
--

CREATE TABLE `tblpackages` (
  `ID` int(5) NOT NULL,
  `PackageName` varchar(120) DEFAULT NULL,
  `PackageDec` varchar(250) DEFAULT NULL,
  `PackageDuration` varchar(120) DEFAULT NULL,
  `PackagePrice` varchar(120) DEFAULT NULL,
  `PackageDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpackages`
--

INSERT INTO `tblpackages` (`ID`, `PackageName`, `PackageDec`, `PackageDuration`, `PackagePrice`, `PackageDate`) VALUES
(1, 'Training by Hatchback(45 days)', 'Driving lessons for 30 mins per day for 45 days. Cars available Wagon-R, Swift', '45', '4500', '2020-01-12 11:44:58'),
(2, 'Training by Hatchback(30 days)', 'Driving lessons for 30 mins per day for 30 days. Cars available Wagon-R, Swift', '30', '4000', '2020-01-20 11:36:37'),
(3, 'Training by SUV(30 days)', 'Driving lessons for 30 mins per day for 30 days. Training Car Scorpio, XUV500', '30', '5000', '2020-01-20 11:38:37'),
(4, 'Training by SUV(45 days)', 'Driving lessons for 30 mins per day for 45 days. Training Car Scorpio, XUV500', '45', '6500', '2020-01-20 11:46:35'),
(5, 'Training by SUV(20 days)', 'Driving lessons for 30 mins per day for 20 days. Training Car Scorpio, XUV500', '20', '4000', '2020-01-20 11:56:07'),
(6, 'Training by Hatchback(15 days)', 'Driving lessons for 30 mins per day for 15 days. Cars available Wagon-R, Swift', '15', '2000', '2020-04-25 12:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                                        <div style=\"text-align: left;\"><b>Turning Point Driving School</b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\">One of the leading driving schools in Khar and surrounding areas with qualified instructor\r\nTurning Point Driving School is a driving education service provider with deep domain expertise in the area of driving education. Understanding your needs, fostering improvement and adding value to them is how we enable you to improve your driving . With qualified experienced instructors at Turning Point driving school we provide intensive course with both theory and practical training and show you all the correct procedures for driving. We provide tailor made solutions that suit your needs and budgets. We know one size does not fit all! If you are complete beginner or already have driving experience- we can design a plan to suit your needs and get you through your test as quickly and conveniently as possible.\r\n\r\n\r\nWe believe that we are one of the best driving school in Khar and surrounding areas. We provide you with a excellent service, great driving tuition and all this at our great prices. We have recently expanded our driving school to South East London. This is to ensure we are able to provide the same great service and driving lessons to more people across Khar.\r\n\r\n\r\nDisplaying both sensitivity and patience, we prepare our candidates for the theoretical and practical tests. We aim to build up their confidence in many different driving situations and pass on all the knowledge they\'ll need for their future on the road.<br></div><div>', '2020-01-11 12:19:58'),
(2, 'contactus', 'Contact Us', '<b>Turning Point Driving School</b></br><b>Contact Number:</b> +91-9820 230 084\r\n</br>\r\n<b>Email: </b>info@tpds.com</br>\r\n<b>Address: </b>13th Road, Khar West, Mumbai 400052</br>', '2020-01-07 12:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblpaymenthistory`
--

CREATE TABLE `tblpaymenthistory` (
  `id` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `PaymentAmount` bigint(12) DEFAULT NULL,
  `Remark` mediumtext,
  `PaymentStatus` varchar(100) DEFAULT NULL,
  `PaymentDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpaymenthistory`
--

INSERT INTO `tblpaymenthistory` (`id`, `UserId`, `PaymentAmount`, `Remark`, `PaymentStatus`, `PaymentDate`) VALUES
(1, '16', 2000, 'Partially amount deposit.', 'Partial Payment', '2019-05-15 16:24:38'),
(2, '16', 1000, 'Full payment received.', 'Completed', '2019-05-15 16:52:27'),
(3, '20', 2000, 'Joining on time. Half payment received', 'Partial Payment', '2019-05-15 16:54:26'),
(4, '20', 1000, 'payment received. Remaining after package completion', 'Partial Payment', '2019-05-15 16:55:32'),
(5, '20', 1000, 'full payment received', 'Completed', '2019-05-15 16:56:03'),
(6, '27', 200, 'Half payment recieved', 'Partial Payment', '2019-05-16 17:17:08'),
(7, '27', 1000, '1000 received . remaining after training.', 'Partial Payment', '2019-05-16 17:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `SubscribedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`ID`, `FullName`, `Email`, `SubscribedDate`) VALUES
(1, 'Mahesh', 'info@w3gang.com', '2019-04-30 05:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `PackID` int(10) NOT NULL,
  `RegNumber` int(10) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) NOT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Age` int(10) DEFAULT NULL,
  `LicenceNumber` varchar(120) DEFAULT NULL,
  `UploadLicence` varchar(120) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `AlternateNumber` bigint(11) DEFAULT NULL,
  `TrainingDate` date DEFAULT NULL,
  `TrainingTiming` varchar(120) DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarkdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `PackID`, `RegNumber`, `FullName`, `Email`, `MobileNumber`, `Gender`, `Age`, `LicenceNumber`, `UploadLicence`, `Address`, `AlternateNumber`, `TrainingDate`, `TrainingTiming`, `Status`, `RegDate`, `Remarkdate`) VALUES
(11, 1, 940619695, 'Mahesh Shukla', 'Test1@gmail.com', 8975895698, 'Female', 21, '4654666468', 'fe5df232cafa4c4e0f1a0294418e5660.jpg', 'htgrfh', 324234, '2019-04-02', '00:20:19', '', '2019-05-02 05:41:48', '2019-05-16 17:53:43'),
(28, 1, 903751742, 'Tausif', 'tossirocks@gmail.com', 9773315030, 'Female', 18, 'dfdsfds', '47ad65a3cdef63e025424e047c6a6080.png', 'cvcxcv', 2121343432, '2020-01-20', '11:00AM - 12:00PM', '', '2020-01-20 11:32:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpackages`
--
ALTER TABLE `tblpackages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpaymenthistory`
--
ALTER TABLE `tblpaymenthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpackages`
--
ALTER TABLE `tblpackages`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpaymenthistory`
--
ALTER TABLE `tblpaymenthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
