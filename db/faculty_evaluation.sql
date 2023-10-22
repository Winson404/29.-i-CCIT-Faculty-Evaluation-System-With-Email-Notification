-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 03:43 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `faculty_evaluation`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE IF NOT EXISTS `academic_year` (
`acad_Id` int(11) NOT NULL,
  `year` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0=Off, 1=On-going',
  `date_created` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`acad_Id`, `year`, `semester`, `status`, `date_created`) VALUES
(1, '2023-2024', '2nd Semester', 1, '2023-06-15'),
(3, '2323-2324', '2nd Semester', 0, '2023-06-15'),
(4, '2020-2021', '1st Semester', 0, '2023-06-17'),
(5, '2021-2022', '1st Semester', 0, '2023-06-22'),
(6, '2023-2024', 'Mid-Year', 0, '2023-06-23'),
(7, '2022-2023', 'Mid-Year', 0, '2023-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE IF NOT EXISTS `evaluation` (
`Id` int(11) NOT NULL,
  `evaluated_by` int(11) NOT NULL,
  `acad_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `section_Id` int(11) NOT NULL,
  `subject_Id` int(11) NOT NULL,
  `A1` int(11) NOT NULL,
  `A2` int(11) NOT NULL,
  `A3` int(11) NOT NULL,
  `A4` int(11) NOT NULL,
  `A5` int(11) NOT NULL,
  `A_Total` int(11) NOT NULL,
  `B1` int(11) NOT NULL,
  `B2` int(11) NOT NULL,
  `B3` int(11) NOT NULL,
  `B4` int(11) NOT NULL,
  `B5` int(11) NOT NULL,
  `B_Total` int(11) NOT NULL,
  `C1` int(11) NOT NULL,
  `C2` int(11) NOT NULL,
  `C3` int(11) NOT NULL,
  `C4` int(11) NOT NULL,
  `C5` int(11) NOT NULL,
  `C_Total` int(11) NOT NULL,
  `D1` int(11) NOT NULL,
  `D2` int(11) NOT NULL,
  `D3` int(11) NOT NULL,
  `D4` int(11) NOT NULL,
  `D5` int(11) NOT NULL,
  `D_Total` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `evaluation_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=Unverified, 1=Verified',
  `date_evaluated` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`Id`, `evaluated_by`, `acad_Id`, `user_Id`, `section_Id`, `subject_Id`, `A1`, `A2`, `A3`, `A4`, `A5`, `A_Total`, `B1`, `B2`, `B3`, `B4`, `B5`, `B_Total`, `C1`, `C2`, `C3`, `C4`, `C5`, `C_Total`, `D1`, `D2`, `D3`, `D4`, `D5`, `D_Total`, `grand_total`, `evaluation_status`, `date_evaluated`) VALUES
(7, 72, 1, 67, 3, 7, 3, 3, 3, 3, 3, 15, 4, 4, 4, 4, 4, 20, 3, 3, 3, 3, 3, 15, 4, 4, 4, 4, 4, 20, 70, 1, '2023-09-03 17:52:57'),
(12, 67, 1, 83, 1, 4, 5, 5, 5, 5, 5, 25, 4, 4, 4, 4, 4, 20, 5, 5, 5, 5, 5, 25, 4, 4, 4, 5, 5, 22, 92, 1, '2023-09-25 00:41:04'),
(13, 72, 1, 92, 3, 3, 3, 4, 5, 4, 4, 20, 5, 5, 5, 4, 4, 23, 4, 4, 4, 4, 5, 21, 4, 5, 4, 5, 4, 22, 86, 1, '2023-10-09 18:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
`section_Id` int(11) NOT NULL,
  `yr_level` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_created` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_Id`, `yr_level`, `section`, `department`, `date_created`) VALUES
(1, '1st year', 'Section 1', 'Bachelor of Science in Computer Science', '2023-06-22'),
(3, '1st year', 'Section 2', 'Bachelor of Science in Information Technology', '2023-06-22'),
(4, '1st year', 'Section 3', 'Bachelor of Science in Computer Science', '2023-06-22'),
(5, '1st year', 'Section 4', 'Bachelor of Science in Computer Science', '2023-06-22'),
(6, '2nd year', 'Section 1', 'Bachelor of Science in Computer Science', '2023-06-22'),
(7, '2nd year', 'Section 2', 'Bachelor of Science in Computer Science', '2023-06-22'),
(8, '2nd year', 'Section 3', 'Bachelor of Science in Information Technology', '2023-06-22'),
(9, '2nd year', 'Section 4', 'Bachelor of Science in Computer Science', '2023-06-22'),
(10, '3rd year', 'Section 1', 'Bachelor of Science in Information Technology', '2023-06-22'),
(11, '3rd year', 'Section 2', 'Bachelor of Science in Computer Science', '2023-06-22'),
(12, '3rd year', 'Section 3', 'Bachelor of Science in Information Technology', '2023-06-22'),
(13, '3rd year', 'Section 4', 'Bachelor of Science in Computer Science', '2023-06-22'),
(14, '4th year', 'Section 1', 'Bachelor of Science in Information Technology', '2023-06-22'),
(15, '4th year', 'Section 2', 'Bachelor of Science in Computer Science', '2023-06-22'),
(16, '4th year', 'Section 3', 'Bachelor of Science in Information Technology', '2023-06-22'),
(17, '4th year', 'Section 4', 'Bachelor of Science in Computer Science', '2023-06-22'),
(18, '3rd year', 'fdsfds', 'Bachelor of Science in Information Technology', '2023-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`sub_Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `units` varchar(30) NOT NULL,
  `instructor_Id` varchar(255) NOT NULL,
  `section_Id` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_Id`, `name`, `code`, `units`, `instructor_Id`, `section_Id`, `department`, `date_created`) VALUES
(23, 'CAPSTONE PROJECT AND RESEARCH II', 'CAP102', '3', 'GEOFFREY SEPILLO', '4B', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', '2023-10-22 21:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_Id` int(11) NOT NULL,
  `stud_type` varchar(20) NOT NULL,
  `student_ID` varchar(100) NOT NULL,
  `year_section` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `acad_rank` varchar(100) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'profile.png',
  `ID_verification` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'Student',
  `student_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=Pending Account, 1=Verified Account, 2=Denied/Deleted',
  `verification_code` int(11) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `stud_type`, `student_ID`, `year_section`, `department`, `acad_rank`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `email`, `gender`, `image`, `ID_verification`, `password`, `user_type`, `student_status`, `verification_code`, `date_registered`) VALUES
(66, '', '', 3, '', '', 'Admin', 'Admin', 'Admin', '', '1997-09-22', '25 years old', 'admin@gmail.com', 'Male', '3.jpg', '', '0192023a7bbd73250516f069df18b500', 'Admin', 0, 415136, '2022-11-25'),
(67, '', '', 0, '', '', 'Onessf', 'Two', 'Three', '', '2016-03-09', '6 years old', 'faculty@gmail.com', 'Male', 'santiago.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 448397, '2022-11-25'),
(72, 'Regular', '2353', 3, '', '', 'Faculty1', 'Mname', 'Lname', '', '2020-01-28', '3 years old', 'student@gmail.com', 'Male', 'academia.png', '16.jpg', '0192023a7bbd73250516f069df18b500', 'Student', 1, 420213, '2022-12-27'),
(73, '', '', 5, '', '', 'Norlyn', 'Son', 'Gelig', '', '2022-12-15', '1 week old', 'Norlynfdsfdgelig16@gmail.com', 'Male', '4.jpg', '', 'a03fd6e43c16b44429d829dffa31321a', 'Student', 2, 0, '2022-12-27'),
(74, '', '', 1, '', '', 'Student 2', 'Mname', 'Lname', 'Suffix', '2022-12-15', '1 week old', 'student2@gmail.com', 'Male', '14.jpg', '', '0192023a7bbd73250516f069df18b500', 'Student', 1, 0, '2022-12-27'),
(75, 'Regular', '543', 6, '', '', 'Norlynd', 'Son', 'Gelig', '', '2022-12-15', '1 week old', 'Norlgelig16@gmail.com', 'Male', '17.jpg', '', '0192023a7bbd73250516f069df18b500', 'Student', 1, 0, '2022-12-27'),
(76, '', '', 7, '', '', 'gfdgfdgdggfdgdgdfg', 'dgdfg', 'fdgdfg', 'df', '2022-12-07', '2 weeks old', 'Norlyngfdgfdgd23gelig16@gmail.com', 'Male', '2.jpg', '', '225f667d9243201a6b2b35e008ebe3d3', 'Student', 2, 0, '2022-12-27'),
(98, 'Irregular', '1122334422', 0, 'Bachelor of Science in Information Technology', '', 'Sandalidfds', 'Sandali', 'Sandali', 'Sandali', '2023-10-05', '2 weeks old', 'Sandali@gmail.com', 'Female', 'profile.png', '2.jpg', '0192023a7bbd73250516f069df18b500', 'Student', 0, 0, '2023-10-22'),
(99, 'Regular', '4323', 17, 'Bachelor of Science in Computer Science', '', 'dsa', 'dsad', 'sadsa', 'dsa', '2023-10-04', '2 weeks old', 'admisa432dn@gmail.com', 'Female', 'profile.png', '1.jpg', '0192023a7bbd73250516f069df18b500', 'Student', 0, 0, '2023-10-22'),
(100, 'Irregular', '42223234332f', 0, 'Bachelor of Science in Computer Science', '', 'BSC', 'BSC', 'BSC', 'BSC', '2023-10-10', '1 week old', 'christinegutierez16BSC@gmail.com', 'Non-Binary', 'profile.png', 'academia.png', '64aeef8b36c510939c9489e11823c83c', 'Student', 0, 0, '2023-10-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
 ADD PRIMARY KEY (`acad_Id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
 ADD PRIMARY KEY (`section_Id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`sub_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
MODIFY `acad_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
MODIFY `section_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `sub_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
