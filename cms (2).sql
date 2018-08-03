-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2018 at 09:57 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignmentinfo`
--

CREATE TABLE `assignmentinfo` (
  `a_id` int(5) NOT NULL,
  `f_id` varchar(6) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `assign_file` varchar(50) NOT NULL,
  `startdate` varchar(10) NOT NULL,
  `submitdate` varchar(10) NOT NULL,
  `remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignmentinfo`
--

INSERT INTO `assignmentinfo` (`a_id`, `f_id`, `semester`, `subject`, `assign_file`, `startdate`, `submitdate`, `remark`) VALUES
(2, '123', '3', 'DA', 'uploads/assignments/2-digital-marketing-glossary.p', '1', '2', 'e'),
(3, '123', '5', 'OOPJ', 'uploads/assignments/49A.pdf', '1/7/2018', '5/7/2018', 'Submit Before Date');

-- --------------------------------------------------------

--
-- Table structure for table `facultycollegeinfo`
--

CREATE TABLE `facultycollegeinfo` (
  `f_id` varchar(6) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `salary` varchar(10) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `accountno` varchar(20) NOT NULL,
  `IFSCcode` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `doj` varchar(10) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultycollegeinfo`
--

INSERT INTO `facultycollegeinfo` (`f_id`, `fname`, `mname`, `lname`, `branch`, `salary`, `contactno`, `emailid`, `bankname`, `accountno`, `IFSCcode`, `password`, `doj`, `category`) VALUES
('123', 'abc', 'xyz', 'pqr', 'c', '10000', '9896542131', 'demo@gmail.com', 'SBI', '4512333', '25323sbi', 'a', '01/07/2017', 'faculty'),
('124', 'a', 'b', 'c', 'i', '1000', '9656455212', 'a4', 'sbi', '4461138456', 'sadd15454', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `facultypersonalinfo`
--

CREATE TABLE `facultypersonalinfo` (
  `pid` int(5) NOT NULL,
  `f_id` varchar(6) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `addressline1` varchar(30) NOT NULL,
  `landmark` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `aadharno` varchar(12) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leavetable`
--

CREATE TABLE `leavetable` (
  `l_id` int(5) NOT NULL,
  `f_id` varchar(6) NOT NULL,
  `sdate` varchar(10) NOT NULL,
  `edate` varchar(10) NOT NULL,
  `foh` varchar(5) NOT NULL DEFAULT 'Full',
  `ltype` varchar(10) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavetable`
--

INSERT INTO `leavetable` (`l_id`, `f_id`, `sdate`, `edate`, `foh`, `ltype`, `reason`, `status`) VALUES
(1, '123', '1', '2', 'Full', 'cl', 'hjgghjhjhhg', 'Pending'),
(2, '123', '1', '2', 'Full', 'cl', 'hjgghjhjhhg', 'Pending'),
(3, '123', '1', '2', 'Full', 'cl', 'hjgghjhjhhg', 'Pending'),
(4, '123', '5', '5', 'Full', 'cl', '5', 'Pending'),
(5, '123', '2', '12', 'Full', 'cl', '12', 'Pending'),
(6, '123', '2', '2', 'Full', 'cl', '2', 'Pending'),
(9, '123', '2', '5', 'Full', 'on', 'ds', 'Pending'),
(10, '123', '2', '2', 'Full', 'sl', 'fsa', 'Pending'),
(11, '123', 'f', 'f', 'Full', 'sl', 'f', 'Pending'),
(12, '123', 'f', 'f', 'Full', 'sl', 'f', 'Pending'),
(13, '123', '1', '5', 'Full', 'sl', 's', 'Pending'),
(14, '123', '2', '2', 'Full', 'on', 'sdasd', 'Pending'),
(15, '123', '2', '2', 'Full', 'on', 'sdasd', 'Pending'),
(16, '123', '2', '2', 'Full', 'on', 'sdasd', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `materialinfo`
--

CREATE TABLE `materialinfo` (
  `m_id` int(5) NOT NULL,
  `f_id` varchar(6) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `filename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialinfo`
--

INSERT INTO `materialinfo` (`m_id`, `f_id`, `semester`, `subject`, `type`, `filename`) VALUES
(1, '123', '3', 'DA', 'pdf', ''),
(2, '123', '4', 'OS', 'PPT', ''),
(3, '123', '3', 'File Upload', 'pdf', 'uploads/assignment.html'),
(4, '123', '3', 'File Upload', 'pdf', 'uploads/assignment.html'),
(5, '123', '5', 'JAVA', 'pdf', 'uploads/android_tutorial.pdf'),
(6, '123', '5', 'OOPJ', 'PPT', 'uploads/materials/College Management System_1 (1).');

-- --------------------------------------------------------

--
-- Table structure for table `remainingleave`
--

CREATE TABLE `remainingleave` (
  `rl_id` int(5) NOT NULL,
  `f_id` varchar(6) NOT NULL,
  `sl` varchar(10) NOT NULL,
  `cl` varchar(10) NOT NULL,
  `special` varchar(10) NOT NULL,
  `lwp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `erno` varchar(12) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `pcontactno` varchar(10) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(12) NOT NULL,
  `joiningyear` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignmentinfo`
--
ALTER TABLE `assignmentinfo`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `facultycollegeinfo`
--
ALTER TABLE `facultycollegeinfo`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `facultypersonalinfo`
--
ALTER TABLE `facultypersonalinfo`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `leavetable`
--
ALTER TABLE `leavetable`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `materialinfo`
--
ALTER TABLE `materialinfo`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `remainingleave`
--
ALTER TABLE `remainingleave`
  ADD PRIMARY KEY (`rl_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`erno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignmentinfo`
--
ALTER TABLE `assignmentinfo`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `facultypersonalinfo`
--
ALTER TABLE `facultypersonalinfo`
  MODIFY `pid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leavetable`
--
ALTER TABLE `leavetable`
  MODIFY `l_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `materialinfo`
--
ALTER TABLE `materialinfo`
  MODIFY `m_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `remainingleave`
--
ALTER TABLE `remainingleave`
  MODIFY `rl_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignmentinfo`
--
ALTER TABLE `assignmentinfo`
  ADD CONSTRAINT `assignmentinfo_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `facultycollegeinfo` (`f_id`);

--
-- Constraints for table `facultypersonalinfo`
--
ALTER TABLE `facultypersonalinfo`
  ADD CONSTRAINT `facultypersonalinfo_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `facultycollegeinfo` (`f_id`);

--
-- Constraints for table `leavetable`
--
ALTER TABLE `leavetable`
  ADD CONSTRAINT `leavetable_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `facultycollegeinfo` (`f_id`);

--
-- Constraints for table `materialinfo`
--
ALTER TABLE `materialinfo`
  ADD CONSTRAINT `materialinfo_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `facultycollegeinfo` (`f_id`);

--
-- Constraints for table `remainingleave`
--
ALTER TABLE `remainingleave`
  ADD CONSTRAINT `remainingleave_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `facultycollegeinfo` (`f_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
