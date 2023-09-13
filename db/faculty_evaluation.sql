-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2023 at 04:42 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`Id`, `evaluated_by`, `acad_Id`, `user_Id`, `section_Id`, `subject_Id`, `A1`, `A2`, `A3`, `A4`, `A5`, `A_Total`, `B1`, `B2`, `B3`, `B4`, `B5`, `B_Total`, `C1`, `C2`, `C3`, `C4`, `C5`, `C_Total`, `D1`, `D2`, `D3`, `D4`, `D5`, `D_Total`, `grand_total`, `evaluation_status`, `date_evaluated`) VALUES
(7, 72, 1, 67, 3, 7, 3, 3, 3, 3, 3, 15, 4, 4, 4, 4, 4, 20, 3, 3, 3, 3, 3, 15, 4, 4, 4, 4, 4, 20, 70, 1, '2023-09-03 17:52:57'),
(9, 792, 1, 67, 3, 7, 5, 5, 5, 5, 5, 25, 5, 5, 5, 5, 5, 25, 5, 5, 5, 4, 4, 23, 1, 1, 1, 1, 1, 5, 78, 1, '2023-09-09 20:48:38');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

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
(17, '4th year', 'Section 4', 'Bachelor of Science in Computer Science', '2023-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`sub_Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `units` varchar(30) NOT NULL,
  `instructor_Id` int(11) NOT NULL,
  `section_Id` int(11) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_Id`, `name`, `code`, `units`, `instructor_Id`, `section_Id`, `date_created`) VALUES
(3, 'Subject 11', 'Code 1', '3', 67, 1, '2023-06-22'),
(4, 'Subject 12', 'Code 2', '3', 83, 1, '2023-06-22'),
(5, 'Subject 13', '2131432', '3', 89, 1, '2023-06-25'),
(6, 'Subject 1', '42355', '3', 89, 3, '2023-06-25'),
(7, 'Subject 2', '354', '3', 67, 3, '2023-06-25'),
(8, 'Subject 3', '4255', '3', 83, 3, '2023-06-25');

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
  `student_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=Pending Account, 1=Verified Account',
  `verification_code` int(11) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `stud_type`, `student_ID`, `year_section`, `department`, `acad_rank`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `email`, `gender`, `image`, `ID_verification`, `password`, `user_type`, `student_status`, `verification_code`, `date_registered`) VALUES
(66, '', '', 3, '', '', 'Erwin', 'Cabag', 'Son', '', '1997-09-22', '25 years old', 'admin@gmail.com', 'Male', '3.jpg', '', '0192023a7bbd73250516f069df18b500', 'Admin', 0, 415136, '2022-11-25'),
(67, '', '', 0, 'Bachelor of Science in Information Technology', 'sampledsa', 'Faculty fnames', 'Faculty mname', 'Faculty lname', '', '2016-03-09', '6 years old', 'faculty@gmail.com', 'Male', 'santiago.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 448397, '2022-11-25'),
(72, 'Regular', '4243242345', 3, '', '', 'Student 1', 'Mname', 'Lname', '', '2020-01-28', '3 years old', 'student@gmail.com', 'Male', 'academia.png', '16.jpg', '0192023a7bbd73250516f069df18b500', 'Student', 1, 420213, '2022-12-27'),
(73, '', '', 5, '', '', 'Norlyn', 'Son', 'Gelig', '', '2022-12-15', '1 week old', 'Norlynfdsfdgelig16@gmail.com', 'Male', '4.jpg', '', 'a03fd6e43c16b44429d829dffa31321a', 'Student', 2, 0, '2022-12-27'),
(74, '', '', 1, '', '', 'Student 2', 'Mname', 'Lname', 'Suffix', '2022-12-15', '1 week old', 'student2@gmail.com', 'Male', '14.jpg', '', '0192023a7bbd73250516f069df18b500', 'Student', 1, 0, '2022-12-27'),
(75, '', '', 6, '', '', 'Norlyn', 'Son', 'Gelig', '', '2022-12-15', '1 week old', 'Norlgelig16@gmail.com', 'Male', '17.jpg', '', '74129ee1fc4edfc41937efbbd6231c42', 'Student', 0, 0, '2022-12-27'),
(76, '', '', 7, '', '', 'gfdgfdgdggfdgdgdfg', 'dgdfg', 'fdgdfg', 'df', '2022-12-07', '2 weeks old', 'Norlyngfdgfdgd23gelig16@gmail.com', 'Male', '2.jpg', '', '225f667d9243201a6b2b35e008ebe3d3', 'Student', 2, 0, '2022-12-27'),
(77, '', '', 8, '', '', 'First name', 'First name', 'First name', 'First name', '2023-04-04', '1 day old', 'admFirstnamein@gmail.com', 'Male', '2.jpg', '', '20db0bfeecd8fe60533206a2b5e9891a', 'Student', 0, 0, '2023-04-05'),
(78, '', '', 9, '', '', 'First name', 'First name', 'First name', 'First name', '2020-02-04', '3 years old', 'adminFirsdastname@gmail.com', 'Male', '13.jpg', '', '1dd42fb217b3ca177ff30a7eca0e55c3', 'Student', 0, 0, '2023-04-05'),
(79, '', '', 10, '', '', 'Dean', 'Dean', 'Dean', '', '2019-02-07', '4 years old', 'dean@gmail.com', 'Female', 'kapi.png', '', '0192023a7bbd73250516f069df18b500', 'Dean', 1, 0, '2023-06-07'),
(81, '', '', 11, '', '', 'Sample F', 'Sample F', 'Sample F', '', '2023-06-06', '1 week old', 'admdsfin@gmail.com', 'Male', '17.jpg', '', 'df4cc7a67e758956195d7601a92fda68', 'Faculty', 0, 0, '2023-06-15'),
(82, '', '', 12, '', '', 'New Studenter', 'New Studenter', 'New Studenter', '', '2021-07-07', '1 year old', 'admfdsfin@gmail.com', 'Female', 'alexis.png', '', '8da8e75fad737d9d6d05a374724a1b8c', 'Student', 2, 0, '2023-06-15'),
(83, '', '', 13, 'Bachelor of Science in Computer Science', '', 'Record', 'Record', 'Record', 'Record', '2023-05-30', '2 weeks old', 'supeRecordradmin@gmail.com', 'Male', '16.jpg', '', '8103886fab151ff1c41349a496ab9991', 'Faculty', 0, 0, '2023-06-15'),
(84, '', 'Course 2', 14, '', '', 'Record Sec', 'Record Sec', 'Record Sec', 'Record Sec', '2023-05-30', '2 weeks old', 'adminfsdRecordSec@gmail.com', 'Male', '24.jpg', '', 'f65ac659d98ab056d83a3e522f42af8a', 'Student', 0, 0, '2023-06-15'),
(85, '', '', 4, '', '', 'dsadadas', 'dsadadasdsadadas', 'dsadadas', '', '2023-06-07', '2 weeks old', 'admidsadadasdsadadasn@gmail.com', 'Male', 'a.jpg', '', '027b2b51cc349162e1cf7ae967c8741f', 'Supervisor', 0, 0, '2023-06-22'),
(86, '', '', 5, 'Bachelor of Science in Computer Science', '', 'firstname', 'firstname', 'firstname', '', '2023-05-30', '3 weeks old', 'sellefirstnamesadr@gmail.com', 'Male', '15.jpg', '', '342f5c77ed008542e78094607ce1f7f3', 'Faculty', 0, 0, '2023-06-22'),
(87, '', '43242423', 7, 'Bachelor of Science in Information Technology', '', 'firstnamefirstname', 'firstnamefirstnamefirstname', 'firstnamefirstname', '', '2023-06-05', '2 weeks old', 'sonerwifirstnamefirstnameafrren12@gmail.com', 'Female', 'aics.jpg', '', 'f4f1954d1d8c4f23049bdf8eb3a712a1', 'Student', 2, 0, '2023-06-22'),
(89, '', '', 3, 'Bachelor of Science in Computer Science', 'Sample', 'dog', 'dog', 'dog', '', '2023-05-29', '3 weeks old', 'stadogff@gmail.com', 'Male', '18.jpg', '', '2c3da8d0c0774c77eae32955bb549041', 'Faculty', 0, 0, '2023-06-23'),
(90, '', '43432432432432', 1, '', '', 'requiredrequired', 'required', 'required', '', '2023-06-07', '2 weeks old', 'admirequiredn@gmail.com', 'Male', '24.jpg', '', 'e81948490ddf54e80a22593640178350', 'Student', 0, 0, '2023-06-24'),
(91, '', '123456', 1, 'Bachelor of Science in Computer Science', '', 'last', 'ffdsfsfds', 'ffdsfsfds', '', '2023-05-31', '3 weeks old', 'admffdsfsfds43in@gmail.com', 'Male', 'a.jpg', '', 'f363791a5fc1c8cc8b480751b6fc2ae9', 'Student', 0, 0, '2023-06-24'),
(92, '', '', 4, 'Bachelor of Science in Computer Science', '', 'ahahhanewfaculty', 'ahahhanewfaculty', 'ahahhanewfaculty', '', '2023-05-31', '3 weeks old', 'admahahhanewfacultyin@gmail.com', 'Male', '24.jpg', '', 'c8424b1182f5d5feeb255589184e0dfa', 'Faculty', 0, 0, '2023-06-24'),
(93, '', '454364521432', 1, 'Bachelor of Science in Computer Science', '', 'kkkk', 'kkkk', 'kkkk', '', '2023-06-13', '1 week old', 'admkkkkin@gmail.com', 'Female', 'profile.png', '16.jpg', 'd5dbf551cbfd90d40499c1c231475767', 'Student', 0, 0, '2023-06-26'),
(94, '', '', 0, 'Bachelor of Science in Computer Science', '', 'newff', 'newff', 'newff', '', '2023-06-05', '3 weeks old', 'adnewffmin@gmail.com', 'Male', '16.jpg', '', 'c9feab52906af625ac7194f6be546fb0', 'Faculty', 1, 0, '2023-06-26'),
(95, 'Regular', '1423423543543', 11, 'Bachelor of Science in Information Technology', '', 'samplesample', 'samplesample', 'sample', 'sample', '2021-02-01', '2 years old', 'sonerwsample32in12@gmail.com', 'Female', 'profile.png', '358366450_174994055422133_1215480208412079217_n (1).png', '705fb20fc699d3a1efaff9b84ca79e10', 'Student', 2, 0, '2023-09-03'),
(96, 'Irregular', '432424245432', 0, 'Bachelor of Science in Computer Science', '', 'samplesamplesample', 'samplesample', 'samplesamplesample', 'samplesample', '2018-01-30', '5 years old', 'Samplesample3432@gmail.com', 'Male', 'profile.png', '358366450_174994055422133_1215480208412079217_n (1).png', '6ad492ae3f3437963b8df4ab045165f1', 'Student', 0, 0, '2023-09-03');

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
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
MODIFY `section_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `sub_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
