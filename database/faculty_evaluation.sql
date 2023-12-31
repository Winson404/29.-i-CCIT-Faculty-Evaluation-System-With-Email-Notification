-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2023 at 12:09 PM
-- Server version: 5.7.44-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facultye_faculty_evaluation`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `acad_Id` int(11) NOT NULL,
  `year` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0=Off, 1=On-going',
  `date_created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`acad_Id`, `year`, `semester`, `status`, `date_created`) VALUES
(1, '2023-2024', '2nd Semester', 0, '2023-06-15'),
(3, '2323-2324', '1st Semester', 0, '2023-06-15'),
(4, '2020-2021', '1st Semester', 0, '2023-06-17'),
(5, '2021-2022', '1st Semester', 0, '2023-06-22'),
(6, '2023-2024', 'Mid-Year', 0, '2023-06-23'),
(7, '2022-2023', 'Mid-Year', 0, '2023-06-23'),
(8, '2023-2024', '1st Semester', 1, '2023-10-22'),
(9, '2024-2025', '2nd Semester', 0, '2023-10-27'),
(11, '2030-2031', 'Mid-Year', 0, '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`Id`, `evaluated_by`, `acad_Id`, `user_Id`, `section_Id`, `subject_Id`, `A1`, `A2`, `A3`, `A4`, `A5`, `A_Total`, `B1`, `B2`, `B3`, `B4`, `B5`, `B_Total`, `C1`, `C2`, `C3`, `C4`, `C5`, `C_Total`, `D1`, `D2`, `D3`, `D4`, `D5`, `D_Total`, `grand_total`, `evaluation_status`, `date_evaluated`) VALUES
(246, 103, 8, 114, 0, 0, 5, 5, 4, 4, 4, 22, 4, 4, 4, 4, 4, 20, 5, 5, 5, 5, 5, 25, 5, 5, 5, 5, 5, 25, 92, 1, '2023-12-23 11:21:01'),
(247, 103, 8, 112, 0, 0, 5, 5, 5, 5, 5, 25, 4, 4, 4, 4, 4, 20, 4, 4, 4, 4, 4, 20, 4, 4, 4, 4, 4, 20, 85, 1, '2023-12-23 11:30:11'),
(248, 107, 8, 447, 43, 88, 4, 4, 4, 4, 4, 20, 4, 4, 4, 4, 4, 20, 5, 5, 5, 5, 5, 25, 5, 5, 5, 5, 4, 24, 89, 1, '2023-12-23 12:08:39'),
(250, 113, 8, 111, 0, 0, 5, 5, 5, 5, 5, 25, 4, 4, 4, 4, 4, 20, 3, 3, 3, 3, 3, 15, 2, 2, 2, 2, 2, 10, 70, 1, '2023-12-23 11:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_Id` int(11) NOT NULL,
  `yr_level` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_created` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_Id`, `yr_level`, `section`, `department`, `date_created`) VALUES
(1, '1st year', 'Section A', 'Bachelor of Science in Computer Science', '2023-06-22'),
(3, '1st year', 'Section B', 'Bachelor of Science in Computer Science', '2023-06-22'),
(4, '1st year', 'Section C', 'Bachelor of Science in Computer Science', '2023-06-22'),
(5, '1st year', 'Section D', 'Bachelor of Science in Computer Science', '2023-06-22'),
(19, '1st year', 'Section A', 'Bachelor of Science in Information Technology', '2023-10-22'),
(20, '1st year', 'Section B', 'Bachelor of Science in Information Technology', '2023-10-22'),
(21, '1st year', 'Section C', 'Bachelor of Science in Information Technology', '2023-10-22'),
(22, '1st year', 'Section D', 'Bachelor of Science in Information Technology', '2023-10-22'),
(24, '2nd year', 'Section A', 'Bachelor of Science in Computer Science', '2023-10-22'),
(25, '2nd year', 'Section B', 'Bachelor of Science in Computer Science', '2023-10-22'),
(26, '2nd year', 'Section C', 'Bachelor of Science in Computer Science', '2023-10-22'),
(27, '2nd year', 'Section D', 'Bachelor of Science in Computer Science', '2023-10-22'),
(28, '2nd year', 'Section A', 'Bachelor of Science in Information Technology', '2023-10-22'),
(29, '2nd year', 'Section B', 'Bachelor of Science in Information Technology', '2023-10-22'),
(30, '2nd year', 'Section C', 'Bachelor of Science in Information Technology', '2023-10-22'),
(31, '2nd year', 'Section D', 'Bachelor of Science in Information Technology', '2023-10-22'),
(32, '3rd year', 'Section A', 'Bachelor of Science in Computer Science', '2023-10-22'),
(33, '3rd year', 'Section B', 'Bachelor of Science in Computer Science', '2023-10-22'),
(34, '3rd year', 'Section C', 'Bachelor of Science in Computer Science', '2023-10-22'),
(35, '3rd year', 'Section D', 'Bachelor of Science in Computer Science', '2023-10-22'),
(36, '3rd year', 'Section A', 'Bachelor of Science in Information Technology', '2023-10-22'),
(37, '3rd year', 'Section B', 'Bachelor of Science in Information Technology', '2023-10-22'),
(38, '3rd year', 'Section C', 'Bachelor of Science in Information Technology', '2023-10-22'),
(39, '3rd year', 'Section D', 'Bachelor of Science in Information Technology', '2023-10-22'),
(40, '4th year', 'Section A', 'Bachelor of Science in Computer Science', '2023-10-22'),
(41, '4th year', 'Section B', 'Bachelor of Science in Computer Science', '2023-10-22'),
(42, '4th year', 'Section A', 'Bachelor of Science in Information Technology', '2023-10-22'),
(43, '4th year', 'Section B', 'Bachelor of Science in Information Technology', '2023-10-22'),
(44, '4th year', 'Section C', 'Bachelor of Science in Information Technology', '2023-10-22'),
(45, '4th year', 'Section D', 'Bachelor of Science in Information Technology', '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `units` varchar(30) NOT NULL,
  `instructor_Id` varchar(255) NOT NULL,
  `section_Id` varchar(255) NOT NULL,
  `acad_Id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_Id`, `name`, `code`, `units`, `instructor_Id`, `section_Id`, `acad_Id`, `department`, `date_created`) VALUES
(37, 'NATIONAL SERVICE TRANING I', 'NSTP 1', '3', '112', '19', 8, '', '2023-10-23'),
(38, 'NATIONAL SERVICE TRANING I', 'NSTP 1', '3', '112', '20', 8, '', '2023-10-23'),
(39, 'NATIONAL SERVICE TRANING I', 'NSTP 1', '3', '112', '21', 8, '', '2023-10-23'),
(40, 'NATIONAL SERVICE TRANING I', 'NSTP 1', '3', '112', '22', 8, '', '2023-10-23'),
(41, 'THE LIFE AND WORK OF RIZAL', 'GEM', '3', '113', '24', 8, '', '2023-10-23'),
(42, 'THE LIFE AND WORK OF RIZAL', 'GEM', '3', '113', '25', 8, '', '2023-10-23'),
(43, 'THE LIFE AND WORK OF RIZAL', 'GEM', '3', '113', '26', 8, '', '2023-10-23'),
(44, 'THE LIFE AND WORK OF RIZAL', 'GEM', '3', '113', '27', 8, '', '2023-10-23'),
(45, 'PLATFORM TECHNOLOGIES', 'PT101', '3', '114', '36', 8, '', '2023-10-23'),
(46, 'PLATFORM TECHNOLOGIES', 'PT101', '3', '114', '37', 8, '', '2023-10-23'),
(47, 'PLATFORM TECHNOLOGIES', 'PT101', '3', '114', '38', 8, '', '2023-10-23'),
(48, 'ENHANCE COMMUNICATION', 'EN+', '3', '115', '1', 8, '', '2023-10-23'),
(49, 'PLATFORM TECHNOLOGIES', 'PT101', '3', '114', '39', 8, '', '2023-10-23'),
(50, 'ENHANCE COMMUNICATION', 'EN+', '3', '115', '3', 8, '', '2023-10-23'),
(51, 'ENHANCE COMMUNICATION', 'EN+', '3', '115', '4', 8, '', '2023-10-23'),
(52, 'ENHANCE COMMUNICATION', 'EN+', '3', '115', '5', 8, '', '2023-10-23'),
(53, 'System Administration and Maintenance', 'SA 101', '3', '120', '43', 8, '', '2023-10-26'),
(54, 'System Administration and Maintenance', 'SA 101', '3', '112', '44', 8, '', '2023-10-26'),
(55, 'Introduction to Human Computer Interaction', 'HCI 101', '1', '119', '40', 8, '', '2023-10-26'),
(56, 'Introduction to Human Computer Interaction', 'HCI 101', '1', '119', '41', 8, '', '2023-10-26'),
(57, 'CS Elective III', 'CSE 3', '3', '123', '40', 8, '', '2023-10-26'),
(58, 'CS Elective III', 'CSE 3', '3', '123', '41', 8, '', '2023-10-26'),
(59, 'CS Thesis Writing I', 'THS 102', '3', '127', '40', 8, '', '2023-10-26'),
(60, 'Introduction to Computing', 'CC101', '3', '126', '19', 8, '', '2023-10-26'),
(61, 'Computer Programming', 'CC103', '3', '112', '28', 8, '', '2023-10-27'),
(62, 'Computer Programming', 'CC103', '3', '112', '29', 8, '', '2023-10-27'),
(63, 'Computer Programming', 'CAP 103', '3', '112', '30', 8, '', '2023-10-27'),
(64, 'Computer Programming', 'CAP103', '3', '112', '31', 8, '', '2023-10-27'),
(65, 'CS Elective II', 'CSE 2', '3', '129', '32', 8, '', '2023-10-27'),
(66, 'CS Elective II', 'CSE 2', '3', '129', '33', 8, '', '2023-10-27'),
(67, 'CS Elective II', 'CSE 2', '3', '129', '34', 8, '', '2023-10-27'),
(68, 'CS Elective II', 'CSE 2', '3', '129', '35', 8, '', '2023-10-27'),
(69, 'Information Management', 'CC105', '3', '118', '32', 8, '', '2023-10-27'),
(70, 'Information Management', 'CC105', '3', '118', '33', 8, '', '2023-10-27'),
(71, 'Information Management', 'CC105', '3', '118', '34', 8, '', '2023-10-27'),
(72, 'Information Management', 'CC105', '3', '118', '35', 8, '', '2023-10-27'),
(73, 'Software Engineering I', 'SE 101', '3', '127', '32', 8, '', '2023-10-27'),
(74, 'Software Engineering I', 'SE 101', '3', '127', '33', 8, '', '2023-10-27'),
(75, 'Software Engineering I', 'SE 101', '3', '127', '34', 8, '', '2023-10-27'),
(76, 'The Life and Works of Rizal', 'GEM', '3', '113', '32', 8, '', '2023-10-27'),
(77, 'The Life and Works of Rizal', 'GEM', '3', '113', '33', 8, '', '2023-10-27'),
(78, 'The Life and Works of Rizal', 'GEM', '3', '113', '34', 8, '', '2023-10-27'),
(79, 'The Life and Works of Rizal', 'GEM', '3', '113', '35', 8, '', '2023-10-27'),
(80, 'Differential Equations', 'MTN 6', '3', '117', '32', 8, '', '2023-10-27'),
(81, 'Differential Equations', 'MTN 6', '3', '117', '33', 8, '', '2023-10-27'),
(82, 'Foreign Language', 'FLNG', '3', '151', '43', 8, '', '2023-10-27'),
(84, 'DATA', 'FLNFG', '3', 'MYBEL MAYO', '4B', 8, 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', '2023-11-11 02:37:49'),
(85, 'kalokohan', 'k101', '3', '124', '1', 11, '', '2023-11-29'),
(86, 'Capstone 2', 'Caps 2', '3', '111', '43', 3, '', '2023-12-03'),
(87, 'Capstone 2', 'Caps 2', '3', '111', '44', 3, '', '2023-12-03'),
(88, 'Capstone Project and Research II', 'CAP 102', '3', '447', '43', 8, '', '2023-12-04'),
(89, 'Capstone Project and Research II', 'CAP 102', '3', '447', '42', 8, '', '2023-12-04'),
(90, 'Capstone Project and Research II', 'CAP 102', '3', '447', '44', 8, '', '2023-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_Id` int(11) NOT NULL,
  `stud_type` varchar(20) NOT NULL,
  `student_ID` varchar(100) NOT NULL,
  `year_section` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `acad_rank` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(50) NOT NULL,
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
  `faculty_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=Active, 1=Inactive',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '0=Not Deleted, 1=Deleted',
  `verification_code` int(11) NOT NULL,
  `date_registered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `stud_type`, `student_ID`, `year_section`, `department`, `acad_rank`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `email`, `gender`, `image`, `ID_verification`, `password`, `user_type`, `student_status`, `faculty_status`, `is_deleted`, `verification_code`, `date_registered`) VALUES
(66, '', '', 3, '', '', 'Admin', 'Admin', 'Admin', '', '2002-08-27', '21 years old', 'admin@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Admin', 0, 0, 0, 961549, '2022-11-25'),
(85, '', '', 4, '', '', 'dsadadas', 'dsadadasdsadadas', 'dsadadas', '', '2023-06-07', '2 weeks old', 'admidsadadasdsadadasn@gmail.com', 'Male', 'a.jpg', '', '027b2b51cc349162e1cf7ae967c8741f', 'Supervisor', 0, 0, 0, 0, '2023-06-22'),
(103, '', '', 0, '', '', 'Menchie', 'Artates', 'Dela Cruz', '', '1975-05-11', '48 years old', 'dean1@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Dean', 1, 0, 0, 124272, '2023-10-22'),
(107, 'Regular', '20-02378', 43, 'Bachelor of Science in Information Technology', '', 'Jay', 'R ', 'Padasas', '', '2001-10-14', '22 years old', 'sonerwin12@gmail.com', 'Male', 'profile.png', '93f0a9a5-b627-4c6d-970d-2e2258457431.jpg', '0192023a7bbd73250516f069df18b500', 'Student', 1, 0, 0, 162526, '2023-10-22'),
(110, 'Regular', '20-00924', 19, 'Bachelor of Science in Information Technology', '', 'Rhealyn', 'Milanio', 'Mayo', 'N/A', '2000-02-19', '23 years old', 'rhealynmilaniomayo19@gmail.com', 'Female', 'profile.png', 'inbound4563889998028109614.jpg', '1005ad05cfc4e54cf734dadecb4376a8', 'Student', 1, 0, 0, 0, '2023-10-22'),
(111, '', '', 0, '', '', 'Geoffrey', '', 'Sepillio', '', '1981-05-26', '42 years old', 'faculty11@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 1, 0, '2023-10-22'),
(112, '', '', 0, '', '', 'ROWELA', '', 'GONGORA', '', '1992-01-01', '31 years old', 'faculty12@gmail.com', 'Female', '7.png', '', '3f7caa3d471688b704b73e9a77b1107f', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(113, '', '', 0, '', '', 'KIE ANN', '', 'JOSAFAT', '', '1992-01-01', '31 years old', 'faculty13@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(114, '', '', 0, '', '', 'JOSEPH', '', 'JULIANO', '', '1992-01-01', '31 years old', 'faculty14@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(115, '', '', 0, '', '', 'ZYRELLE', '', 'FLORDELIZ', '', '1992-01-01', '31 years old', 'faculty15@gmail.com', 'Female', '7.png', '', '3f7caa3d471688b704b73e9a77b1107f', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(116, '', '', 0, '', '', 'JOSEPH', '', 'CORTEZ', '', '1996-01-27', '27 years old', 'tokmemnijose@gmail.com', 'Male', 'Picture1.png', '', 'ab91fbf67adbe741e5ee50098eb6fcaf', 'Faculty', 1, 0, 0, 321418, '2023-10-23'),
(117, '', '', 0, '', '', 'MAY ANN', '', 'ACERA', '', '1992-01-01', '31 years old', 'faculty17@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(118, '', '', 0, '', '', 'HANSEL', '', 'ADA', '', '1992-01-01', '31 years old', 'faculty18@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(119, '', '', 0, '', '', 'JOHN LENON', '', 'AGATEP', '', '1999-01-01', '24 years old', 'faculty19@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(120, '', '', 0, '', '', 'JASON', '', 'ARTATES', '', '1992-01-01', '31 years old', 'faculty20@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 1, 0, 0, '2023-10-23'),
(121, '', '', 0, '', '', 'DANIEL ', '', 'BACHILLAR', '', '1991-01-01', '32 years old', 'faculty21@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(122, '', '', 0, '', '', 'MARIA ESPERANZA', '', 'BURAGA', '', '1992-01-01', '31 years old', 'faculty22@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(123, '', '', 0, '', '', 'ISRAEL', '', 'CABASUG', '', '1992-01-01', '31 years old', 'faculty23@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 1, 0, 0, '2023-10-23'),
(124, '', '', 0, '', '', 'FIEL', '', 'DULLAS', 'JR', '1991-01-01', '32 years old', 'faculty24@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(125, '', '', 0, '', '', 'NEMIA', '', 'GALANG', '', '1992-01-01', '31 years old', 'faculty25@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(126, '', '', 0, '', '', 'MELOJEAN', '', 'MARAVE', '', '1992-01-01', '31 years old', 'faculty26@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(127, '', '', 0, '', '', 'CARL ANGELO', '', 'PAMPLONA', '', '1992-01-01', '31 years old', 'faculty27@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 1, 0, 0, '2023-10-23'),
(128, '', '', 0, '', '', 'DARYL JOHN', '', 'RAGADIO', '', '1992-01-01', '31 years old', 'faculty28@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(129, '', '', 0, '', '', 'RONNEL', '', 'MESIA', '', '1992-01-01', '31 years old', 'faculty29@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(130, '', '', 0, '', '', 'DARWIN', '', 'MORANIA', '', '1991-01-01', '32 years old', 'faculty30@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(131, '', '', 0, '', '', 'JOANN', '', 'NICOLAS', '', '1992-01-01', '31 years old', 'faculty31@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(132, '', '', 0, '', '', 'JIO ERIKA', '', 'PELINIO', '', '1992-01-01', '31 years old', 'faculty32@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(133, '', '', 0, '', '', 'MARIONNE JOYCE', '', 'TAPADO', '', '1992-01-01', '31 years old', 'faculty33@gmail.com', 'Female', '7.png', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-10-23'),
(135, 'Regular', '20-02413', 43, 'Bachelor of Science in Information Technology', '', 'Dallenrose', 'ednave', 'moreno', '', '2001-03-23', '22 years old', 'morenodallen23@gmail.com', 'Female', 'profile.png', '424A3C12-DBBF-4C4F-981E-A9A6F1562C56.png', '17b19f18884c1300cf64955c2f14b6e4', 'Student', 1, 0, 0, 0, '2023-10-26'),
(136, 'Regular', '20-02223', 43, 'Bachelor of Science in Information Technology', '', 'Precious Gayle', 'Aberas', 'Espina', '', '2002-04-12', '21 years old', 'gylespina@gmail.com', 'Female', 'profile.png', 'inbound4824238390801176437.jpg', '8648c381f015768df4a26290633c628e', 'Student', 1, 0, 0, 0, '2023-10-26'),
(137, 'Regular', '23-1-1-1182', 19, 'Bachelor of Science in Information Technology', '', 'Jannah', 'Macam', 'Mose', '', '2005-03-15', '18 years old', 'jannahmose976@gmail.com', 'Female', 'profile.png', 'inbound3003542410738369426.jpg', 'a1617f81e4048e15e76c0534087d643c', 'Student', 1, 0, 0, 0, '2023-10-26'),
(139, 'Regular', '19-02270', 43, 'Bachelor of Science in Information Technology', '', 'Joy', 'Elamparo', 'Capunihan', '', '2001-06-05', '22 years old', 'joycapunihan834@gmail.com', 'Female', 'profile.png', 'inbound1812569295407340006.png', '59af91cf45da2e4be0d660d93ad68396', 'Student', 1, 0, 0, 0, '2023-10-26'),
(140, 'Regular', '23-1-1-1184', 19, 'Bachelor of Science in Information Technology', '', 'Christalyn', 'M ', 'Movilla', '', '2005-01-12', '18 years old', 'talynmovilla@gmail.com', 'Female', 'profile.png', 'inbound8761187405832583691.jpg', '30ffbe05fc125625f6b2ad18be76b67d', 'Student', 1, 0, 0, 0, '2023-10-26'),
(141, 'Regular', '20-02142', 43, 'Bachelor of Science in Information Technology', '', 'Mikhail Gerard', 'Vicente', 'Agor', '', '2002-05-01', '21 years old', 'agor.mikhailgerard@gmail.com', 'Male', 'profile.png', 'inbound4332333571484355422.jpg', 'f12de7ec51e2368ea4ebdef2c98c4023', 'Student', 1, 0, 0, 0, '2023-10-26'),
(142, 'Regular', '20-02199', 43, 'Bachelor of Science in Information Technology', '', 'Victor Kyle', 'Ruben', 'Paulo', '', '2001-12-28', '21 years old', 'kaipaulo28@gmail.com', 'Male', 'profile.png', 'inbound8388627846733009093.jpg', '88e17cd76eba6d085e545807ac6bc237', 'Student', 1, 0, 0, 0, '2023-10-26'),
(143, 'Regular', '20-02351', 43, 'Bachelor of Science in Information Technology', '', 'Jericho', 'Montalla', 'Mayonte', '', '2002-11-12', '20 years old', 'mayontejericho@gmail.com', 'Male', 'profile.png', 'inbound8203040698599672144.jpg', '50ed5a611a68cde7d8f79a134ae4ad36', 'Student', 1, 0, 0, 0, '2023-10-26'),
(144, 'Regular', '20-01861', 43, 'Bachelor of Science in Information Technology', '', 'John Arcel', 'Gimenez', 'Echipare', '', '2001-03-14', '22 years old', 'echiparejohnarcel@gmail.com', 'Male', 'profile.png', 'IMG_8129.png', '14283cb96687bda2056e025b6f123847', 'Student', 1, 0, 0, 0, '2023-10-26'),
(145, 'Regular', '20-02131', 43, 'Bachelor of Science in Information Technology', '', 'Gil Anthony', 'Lucio', 'Zapatero', '', '2002-04-17', '21 years old', 'gaantonzapatero@gmail.com', 'Male', 'profile.png', 'IMG_0743.png', '08771fc4c8ebeb54f1190afbe4f330e0', 'Student', 1, 0, 0, 0, '2023-10-26'),
(149, 'Regular', '22-1-1-1698', 30, 'Bachelor of Science in Information Technology', '', 'Aimylot ', 'Obiano ', 'Carig', '', '2003-10-08', '20 years old', 'carigaimylot@gmail.com', 'Female', 'profile.png', 'inbound4358809982455073098.jpg', '747cfbd8a9594d8326a99f48a4f1f3e4', 'Student', 1, 0, 0, 130449, '2023-10-27'),
(150, '', '', 0, '', '', 'Mybel', '', 'Mayo', '', '2002-08-27', '21 years old', 'mybelmayo@gmail.com', 'Female', '7.png', '', '2a587450ee7ac8d5d4b8069452d5e8a1', 'Faculty', 1, 1, 0, 0, '2023-10-27'),
(152, 'Regular', '20-02139', 44, 'Bachelor of Science in Information Technology', '', 'Vlademir', 'Grencio', 'Mejilla ', 'NA', '2001-06-14', '22 years old', 'mejillavlademir@gmail.com', 'Male', 'profile.png', 'inbound8318516624990651477.jpg', '04cd09bf83b0623d72f673309c197c1c', 'Student', 1, 0, 0, 0, '2023-10-27'),
(153, 'Irregular', '21-2-1-0131', 0, 'Bachelor of Science in Information Technology', '', 'Danniel', '', 'Mendigorin', '', '2001-11-04', '21 years old', 'dannielmendigorin1104@gmail.com', 'Male', 'profile.png', 'IMG20231027122046.jpg', 'aeb4d7d8d8b05880497e658972afc5ce', 'Student', 1, 0, 0, 0, '2023-10-27'),
(154, 'Regular', '20-02423', 42, 'Bachelor of Science in Information Technology', '', 'Vanessa', 'Sarmiento', 'Arabejo', '', '2002-01-29', '21 years old', 'vanessaarabejo@gmail.com', 'Female', 'profile.png', 'images (65).jpeg', 'e16b4ff43dc81341be2b94b70f99accc', 'Student', 1, 0, 0, 0, '2023-10-27'),
(155, 'Regular', '20-01539', 40, 'Bachelor of Science in Computer Science', '', 'Maria Angela', 'Mista', 'Villegas', '', '2002-06-06', '21 years old', 'v.mariaangela0606@gmail.com', 'Female', 'profile.png', 'Screenshot_20231028-205319.jpg', '8015d8c38fb34828df8cbe1185ef8fcd', 'Student', 1, 0, 0, 0, '2023-10-28'),
(156, 'Regular', '20-02599', 43, 'Bachelor of Science in Information Technology', '', 'Dave', 'Patiu ', 'Dela Cruz', ' ', '2001-04-08', '22 years old', 'daverenziedelacruz@gmail.com', 'Male', 'profile.png', 'IMG_8361.jpeg', 'c641d563e44e6516b6166cd6d3ce91f4', 'Student', 1, 0, 0, 0, '2023-11-08'),
(157, 'Regular', '20-02362', 42, 'Bachelor of Science in Information Technology', '', 'Arval', 'Leomo', 'Morillo', '', '2001-09-17', '22 years old', 'morilloarval69@gmail.com', 'Male', 'profile.png', 'inbound2475612134848501381.jpg', '49b9c7a7a5e4e36c80ade87fb547edf4', 'Student', 1, 0, 0, 0, '2023-11-08'),
(158, 'Regular', '20-01635', 41, 'Bachelor of Science in Computer Science', '', 'Rheana Elizabeth', 'Lambino', 'Garcia', '', '2003-01-19', '20 years old', 'garciarheana20@gmail.com', 'Female', 'profile.png', 'Screenshot_20231108_115615_Gallery.jpg', '6197262c533fe02f783ae7add6c3cdf7', 'Student', 1, 0, 0, 0, '2023-11-08'),
(159, 'Regular', '21-1-1-0782', 33, 'Bachelor of Science in Computer Science', '', 'Harley', 'Benavidez', 'Opinga', '', '2001-11-05', '22 years old', 'harleyopinga2@gmail.com', 'Male', 'profile.png', 'inbound3423949247072273460.jpg', 'b47fcd52ceb3525afd01412871d0db45', 'Student', 1, 0, 0, 0, '2023-11-08'),
(160, 'Regular', '22-1-1-0828', 25, 'Bachelor of Science in Computer Science', '', 'Arjay', 'Martin', 'Riodil', '', '2003-07-04', '20 years old', 'jayjaymartin740@gmail.com', 'Male', 'profile.png', 'inbound4751427245452286565.jpg', '84e27d7b2ab155f3e15aa40d36e1f86e', 'Student', 1, 0, 0, 0, '2023-11-08'),
(161, 'Regular', '20-02002', 44, 'Bachelor of Science in Information Technology', '', 'Christan ', 'Medrano', 'Baldemor', '', '2002-01-22', '21 years old', 'christianbaldemor026@gmail.com', 'Male', 'profile.png', 'inbound8010407321902033835.jpg', 'eb0056807931508e1cc490712657f884', 'Student', 1, 0, 0, 0, '2023-11-08'),
(162, 'Regular', '21-1-1-1299', 36, 'Bachelor of Science in Information Technology', '', 'Denver John', 'Evangelista', 'Gruta', '', '2002-08-22', '21 years old', 'celsolucanas@gmail.com', 'Male', 'profile.png', 'inbound2944767796651836863.jpg', 'cb74cd36ff7c36402919781fbbfa06e0', 'Student', 1, 0, 0, 0, '2023-11-08'),
(163, 'Regular', '20-01380', 41, 'Bachelor of Science in Computer Science', '', 'Jannah Patricia ', 'Butaran', 'Echon', '', '2002-03-19', '21 years old', 'jannahechon30@gmail.com', 'Female', 'profile.png', 'Screenshot_2023-11-08-19-56-34-36.jpg', '2657d7a129937a214cd59d847815e3e3', 'Student', 1, 0, 0, 0, '2023-11-08'),
(164, 'Regular', '20-01382', 42, 'Bachelor of Science in Information Technology', '', 'Drix', 'Torres', 'Labrador', '', '2001-10-31', '22 years old', 'drixiolabz@gmail.com', 'Male', 'profile.png', 'Screenshot_2023-11-08-20-17-11-715_com.google.android.apps.docs.jpg', '18073e46c74dc3f4b79882a69c0d09fe', 'Student', 1, 0, 0, 0, '2023-11-08'),
(165, 'Regular', '20-01507', 41, 'Bachelor of Science in Computer Science', '', 'Rickron', 'Edora', 'Reyes', '', '2002-02-01', '21 years old', 'rickronreyes5@gmail.com', 'Male', 'profile.png', 'inbound3181675172628295051.jpg', '6d0d997060547a4d4805004b014246da', 'Student', 1, 0, 0, 0, '2023-11-08'),
(166, 'Irregular', '22-1-1-2455', 0, 'Bachelor of Science in Computer Science', '', 'Raphael Angelo', 'Eballar', 'Merza', '', '2001-09-20', '22 years old', 'raphaelangelmerza209@gmail.com', 'Male', 'profile.png', 'received_1232608294090551.jpeg', '0e69db46736e24993fafe42166399cb7', 'Student', 1, 0, 0, 0, '2023-11-08'),
(167, 'Regular', '21-1-1-1840', 33, 'Bachelor of Science in Computer Science', '', 'JOHN VINCENT', 'BARORO', 'FARRALES', '', '2002-02-14', '21 years old', 'mynameisjevee@gmail.com', 'Male', 'profile.png', '3rd yr COR_page-0001.jpg', '4cd78adaac2a4ef7db6775c3bae7297b', 'Student', 1, 0, 0, 0, '2023-11-08'),
(168, 'Regular', '20-02596', 43, 'Bachelor of Science in Information Technology', '', 'Eumar', '', 'Corpuz', '', '2002-08-30', '21 years old', 'eumarcorpuz17@gmail.com', 'Male', 'profile.png', 'Screenshot_2023-11-08-21-31-17-03_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', '2078ac7a856d19708206d2b76b077b00', 'Student', 1, 0, 0, 0, '2023-11-08'),
(169, 'Regular', '21-1-1-1540', 33, 'Bachelor of Science in Computer Science', '', 'All ver', 'Gulla', 'Manzano', '', '2001-02-08', '22 years old', 'allvermanzano@gmail.com', 'Male', 'profile.png', 'inbound6703522879879185765.jpg', '1901f4425f7afb5f5693cbdddd0e05c8', 'Student', 1, 0, 0, 0, '2023-11-08'),
(170, 'Regular', '21-1-1-1839', 33, 'Bachelor of Science in Computer Science', '', 'DYNYRD CHRISTIAN KENT', 'ORPILLA', 'FABIE', '', '2002-12-18', '20 years old', 'kentdynyrd@gmail.com', 'Male', 'profile.png', 'Screenshot_20231108-214514.jpg', 'c6d2ecec9f03656a0052bd037c5b333b', 'Student', 1, 0, 0, 0, '2023-11-08'),
(171, 'Regular', '20-01340', 40, 'Bachelor of Science in Computer Science', '', 'Ma Louella Jean', 'Manglinong', 'Costales', '', '2001-09-10', '22 years old', 'willacostales@gmail.com', 'Female', 'profile.png', 'inbound1991262669629912302.jpg', 'f03edf68c26dc6d433c7981a8e11890f', 'Student', 1, 0, 0, 0, '2023-11-09'),
(172, 'Regular', '21-1-1508', 37, 'Bachelor of Science in Information Technology', '', 'Adrian Lee', 'Labrador', 'Sepaya', '', '2003-05-22', '20 years old', 'adrianleesepaya4@gmail.com', 'Male', 'profile.png', 'inbound1231608364869773551.jpg', 'a3d05b7d51cf2dc28704e83281f107d5', 'Student', 1, 0, 0, 0, '2023-11-10'),
(173, 'Regular', '22-1-1-0503', 25, 'Bachelor of Science in Computer Science', '', 'Shielo', 'Pendon', 'Compleza', '', '2004-01-05', '19 years old', 'shielocompleza@gmail.com', 'Female', 'profile.png', 'IMG_0682.jpeg', 'a4698611c6090ce6cc165ea418702a4e', 'Student', 1, 0, 0, 0, '2023-11-10'),
(174, 'Regular', '21-1-1-1060', 32, 'Bachelor of Science in Computer Science', '', 'Maria Althea ', 'Fradeza', 'Montejo', '', '2002-09-08', '21 years old', 'altheamontejo331@gmail.com', 'Female', 'profile.png', 'IMG_20231110_144914.jpg', 'aa560d2e9491da3350744dd4394008c2', 'Student', 1, 0, 0, 0, '2023-11-10'),
(175, 'Regular', '21-1-1-1472', 33, 'Bachelor of Science in Computer Science', '', 'Heart', '', 'Mission', '', '2002-03-30', '21 years old', 'hartdogkaba030@gmail.com', 'Female', 'profile.png', 'Screenshot_20231110_150628.jpg', '53386f831858c0419924cc4efbfd7920', 'Student', 1, 0, 0, 0, '2023-11-10'),
(176, 'Regular', '20-01639', 41, 'Bachelor of Science in Computer Science', '', 'Rose Anne', 'Entila ', 'Nacin', '', '2002-04-25', '21 years old', 'rosienacin@gmail.com', 'Female', 'profile.png', 'inbound3537320951952334281.jpg', 'fb668c3f0f84ca027d00a3050d88a773', 'Student', 1, 0, 0, 0, '2023-11-10'),
(177, 'Regular', '20-00357', 43, 'Bachelor of Science in Information Technology', '', 'Aaron Paul', 'Liscano', 'Dahipon', '', '2000-06-27', '23 years old', 'aaronpauldahipon@gmail.com', 'Male', 'profile.png', '368565548_850679973183125_8396296914310922636_n.jpg', '6f8ed4ff6965590ec9bede69340d8db7', 'Student', 1, 0, 0, 0, '2023-11-10'),
(178, 'Regular', '23-1-1-1345', 21, 'Bachelor of Science in Information Technology', '', 'Kristelle Ann', '', 'Pagay', '', '2001-11-26', '21 years old', 'shytradestika123@gmail.com', 'Female', 'profile.png', 'inbound7889616715580274993.jpg', 'fed92331092ceab54e15260d0f932f80', 'Student', 1, 0, 0, 0, '2023-11-10'),
(179, 'Regular', '23', 21, 'Bachelor of Science in Information Technology', '', 'Kristelle ann', '', 'Pagay', '', '2001-11-26', '21 years old', 'kristelleann26@gmail.com', 'Female', 'profile.png', 'inbound838609010590795982.jpg', '210a9791ab8b7721e4d02b7b93629d9e', 'Student', 1, 0, 0, 0, '2023-11-10'),
(180, 'Regular', '21-1-1-0435', 33, 'Bachelor of Science in Computer Science', '', 'Leona Jane', 'Lozano', 'Orias', '', '2003-08-27', '20 years old', 'oriasleonajane@gmail.com', 'Female', 'profile.png', 'inbound2927826461294591185.jpg', '0b740df803f48765b7a00852f9427c12', 'Student', 1, 0, 0, 297378, '2023-11-10'),
(181, 'Regular', '20-01857', 41, 'Bachelor of Science in Computer Science', '', 'Nico Dan', '', 'Leonor', '', '2002-02-11', '21 years old', 'nicodan445@gmail.com', 'Male', 'profile.png', 'inbound3089721559192548153.jpg', 'a7a499f54b68731dbcf9c5cf3a1f9f57', 'Student', 1, 0, 0, 0, '2023-11-10'),
(182, 'Regular', '23-1-1-0052', 19, 'Bachelor of Science in Information Technology', '', 'Veronica Joy', 'Sy', 'Pavia', '', '2005-03-17', '18 years old', 'veronicajoypavia@gmail.com', 'Female', 'profile.png', 'photo_6228653030149044481_y.jpg', '02e6c6b4c3795bb5a0fa7acc5f346be0', 'Student', 1, 0, 0, 0, '2023-11-10'),
(183, 'Regular', '20-02425', 40, 'Bachelor of Science in Computer Science', '', 'Kyla Maxine', 'Daculo', 'Miranda', '', '2002-11-16', '20 years old', 'kylamaxinemiranda16@gmail.com', 'Female', 'profile.png', 'pegne.jpg', '2c545662f164ced644dd7116ec129826', 'Student', 1, 0, 0, 0, '2023-11-10'),
(185, 'Regular', '20-02204', 43, 'Bachelor of Science in Information Technology', '', 'Ladee Angel ', 'Palarca ', 'Agagas', '', '2001-10-11', '22 years old', 'agagasladee531@gmail.com', 'Female', 'profile.png', 'inbound1916354838589252073.jpg', 'd7b697039bce03a8496e6b8a0f02f79d', 'Student', 1, 0, 0, 0, '2023-11-10'),
(186, 'Regular', '20-02009', 44, 'Bachelor of Science in Information Technology', '', 'Charlie ', 'Ramirez ', 'Magpayo ', '', '2002-05-02', '21 years old', 'charliemagpayo1@gmail.com', 'Male', 'profile.png', 'Screenshot_20231110_195154.jpg', '7b5f088c2b22b60edb5294d52826ec7a', 'Student', 1, 0, 0, 0, '2023-11-10'),
(187, 'Regular', '23-1-1-0068', 19, 'Bachelor of Science in Information Technology', '', 'Ismael ', 'Evangelista ', 'Navarro', '', '2004-10-28', '19 years old', 'aelnavarro174@gmail.com', 'Male', 'profile.png', 'inbound915995562728503909.jpg', 'd0e1e68c704d0d2ed60ba61822a47171', 'Student', 1, 0, 0, 0, '2023-11-10'),
(188, 'Regular', '21-1-1-0026', 32, 'Bachelor of Science in Computer Science', '', 'Jiecel', 'Otea', 'Pascua', '', '2003-06-11', '20 years old', 'pascuajiecel@gmail.com', 'Female', 'profile.png', '2023_11_10 22_32 Office Lens.jpg', 'f2f9267ad920cbfe56348f0e09ae6ac8', 'Student', 1, 0, 0, 0, '2023-11-10'),
(189, 'Regular', '23-1-1-0066 ', 19, 'Bachelor of Science in Information Technology', '', 'Julia Antonia ', 'Baaga ', 'Arlantico', 'N/A', '2005-08-03', '18 years old', 'juliaarlantico9@gmail.com', 'Female', 'profile.png', 'inbound6925084394564603614.jpg', '9531ae5196a1a799c39826bcfe5acfa0', 'Student', 1, 0, 0, 0, '2023-11-11'),
(190, 'Regular', '21-1-1-0535', 33, 'Bachelor of Science in Computer Science', '', 'Odessa', 'Bulagay', 'Pulido', '', '2001-09-25', '22 years old', 'odessapulido08@gmail.com', 'Female', 'profile.png', 'inbound8528598840599977572.png', 'd51b196a19c42f1b72f94904e3af6b12', 'Student', 1, 0, 0, 0, '2023-11-11'),
(191, 'Regular', '11', 32, 'Bachelor of Science in Computer Science', '', 'Keneth Ardwin', 'Maylad', 'Milagrosa', '', '2003-01-01', '20 years old', 'KenethArdwin@gmail.com', 'Male', 'profile.png', 'prmsu.jpg', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(192, 'Regular', '12', 19, 'Bachelor of Science in Information Technology', '', 'Van Lenard', 'Credo', 'Milano', '', '2005-01-01', '18 years old', 'VanLenard@gmail.com', 'Male', 'profile.png', 'ccitt.png', '213ee683360d88249109c2f92789dbc3', 'Student', 1, 0, 0, 0, '2023-11-12'),
(193, 'Regular', '13', 1, 'Bachelor of Science in Computer Science', '', 'Jeoffersson Lorrenz', 'Del Rosario', 'Minas', '', '2004-01-01', '19 years old', 'JeofferssonLorrenz@gmail.com', 'Male', 'profile.png', 'ccitt.png', '8e4947690532bc44a8e41e9fb365b76a', 'Student', 1, 0, 0, 0, '2023-11-12'),
(194, 'Regular', '14', 36, 'Bachelor of Science in Information Technology', '', 'Bon Bryan ', 'Miranda', 'Minor', '', '2003-01-01', '20 years old', 'BonBryan@gmail.com', 'Male', 'profile.png', 'ccitt.png', '166a50c910e390d922db4696e4c7747b', 'Student', 1, 0, 0, 0, '2023-11-12'),
(195, 'Regular', '15', 36, 'Bachelor of Science in Information Technology', '', 'Japheth', 'Del Rosario', 'Mirabel', '', '2004-01-01', '19 years old', 'JaphethMirabel@gmail.com', 'Male', 'profile.png', 'ccitt.png', '9fd9280a7aa3578c8e853745a5fcc18a', 'Student', 1, 0, 0, 0, '2023-11-12'),
(196, 'Regular', '16', 28, 'Bachelor of Science in Information Technology', '', 'Jomer ', 'Mendi', 'Mirador', '', '2003-01-01', '20 years old', 'JomerMirador@gmail.com', 'Male', 'profile.png', 'ccitt.png', '1cdbb99454d86b60323f5d77f6a65c9b', 'Student', 1, 0, 0, 0, '2023-11-12'),
(197, 'Regular', '17', 28, 'Bachelor of Science in Information Technology', '', 'Catherine Jester', 'Gapo', 'Miranda', '', '2005-01-01', '18 years old', 'catherinejester@gmail.com', 'Female', 'profile.png', 'ccitt.png', '72e8744fc2faa17a83dec9bed06b8b65', 'Student', 1, 0, 0, 0, '2023-11-12'),
(198, 'Regular', '18', 25, 'Bachelor of Science in Computer Science', '', 'Engeline', 'Salido', 'Mistica', '', '2003-01-01', '20 years old', 'engelinemistica@gmail.com', 'Female', 'profile.png', 'ccitt.png', '8aa7fb36a4efbbf019332b4677b528cf', 'Student', 1, 0, 0, 0, '2023-11-12'),
(199, 'Regular', '19', 37, 'Bachelor of Science in Information Technology', '', 'John Aldrin', 'Mesiano', 'Mistica', '', '2003-01-01', '20 years old', 'JohnAldrin@gmail.com', 'Male', 'profile.png', 'ccitt.png', '7c8cd5da17441ff04bf445736964dd16', 'Student', 1, 0, 0, 0, '2023-11-12'),
(200, 'Regular', '20', 38, 'Bachelor of Science in Information Technology', '', 'Jeseah Mae', 'Mores', 'Mojeca', '', '2003-01-01', '20 years old', 'JeseahMae@gmail.com', 'Female', 'profile.png', 'ccitt.png', '2c62e6068c765179e1aed9bc2bfd4689', 'Student', 1, 0, 0, 0, '2023-11-12'),
(201, 'Regular', '21', 36, 'Bachelor of Science in Information Technology', '', 'Jelly', 'Dian', 'Molino', '', '2003-01-01', '20 years old', 'jellymolino@gmail.com', 'Female', 'profile.png', 'ccitt.png', '9cf695ac37ef238e62f6ee874b4b3968', 'Student', 1, 0, 0, 0, '2023-11-12'),
(202, 'Regular', '22', 28, 'Bachelor of Science in Information Technology', '', 'Raven John', 'Maya', 'Molino', '', '2004-01-01', '19 years old', 'RavenJohn@gmail.com', 'Male', 'profile.png', 'ccitt.png', '7e941d9a3237b1770effdcb05a0aa2a5', 'Student', 1, 0, 0, 0, '2023-11-12'),
(203, 'Regular', '24', 19, 'Bachelor of Science in Information Technology', '', 'Rovicben', 'De Vera', 'Mon', '', '2005-01-01', '18 years old', 'rovicbenmon@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(204, 'Regular', '25', 25, 'Bachelor of Science in Computer Science', '', 'Jessa', 'Dedoro', 'Mondejar', '', '2003-01-01', '20 years old', 'jessamondejar@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(205, 'Regular', '26', 32, 'Bachelor of Science in Computer Science', '', 'Angelo', 'Bacunawa', 'Monsalud', '', '2002-01-01', '21 years old', 'angelomonsalud@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(206, 'Regular', '27', 32, 'Bachelor of Science in Computer Science', '', 'Benedict Ian ', '', 'Monsalud', '', '2003-01-01', '20 years old', 'BenedictIan@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(207, 'Regular', '28', 32, 'Bachelor of Science in Computer Science', '', 'John Lloyd', 'Tongson', 'Monsalud', '', '2003-01-01', '20 years old', 'JohnLloyd@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(208, 'Regular', '29', 36, 'Bachelor of Science in Information Technology', '', 'Leryn Carl', '', 'Monsalud', '', '2002-01-01', '21 years old', 'LerynCarl@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(209, 'Regular', '30', 24, 'Bachelor of Science in Computer Science', '', 'Allyson Pearl', '', 'Montalla', '', '2004-01-01', '19 years old', 'AllysonPearl@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(210, 'Regular', '31', 28, 'Bachelor of Science in Information Technology', '', 'Edwin', 'Crystal', 'Montefalcon', '', '2004-01-01', '19 years old', 'edwinmontefalcon@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(211, 'Regular', '32', 28, 'Bachelor of Science in Information Technology', '', 'Emmanuel ', 'Calma', 'Montefalcon', '', '2004-01-01', '19 years old', 'emmanuelmontefalcon@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(212, 'Regular', '33', 1, 'Bachelor of Science in Computer Science', '', 'Aerton', 'Boni', 'Montehermoso', '', '2005-01-01', '18 years old', 'aertonmontehermoso@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(213, 'Regular', '34', 1, 'Bachelor of Science in Computer Science', '', 'Gio', 'Dave', 'Montehermoso', '', '2005-01-01', '18 years old', 'giomontehermoso@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(214, 'Regular', '35', 3, 'Bachelor of Science in Computer Science', '', 'Jason', '', 'Montehermoso', '', '2005-01-01', '18 years old', 'jasonmontehermoso@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(215, 'Regular', '36', 32, 'Bachelor of Science in Computer Science', '', 'Angela Mae', '', 'Mora', '', '2003-01-01', '20 years old', 'AngelaMae@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-12'),
(217, 'Regular', '37', 36, 'Bachelor of Science in Information Technology', '', 'Karry Nicole', '', 'Mora', '', '2003-01-01', '', 'KarryNicole@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(218, 'Regular', '38', 1, 'Bachelor of Science in Computer Science', '', 'Taffy Wilbur', 'Balanon', 'Mores', '', '2005-01-01', '', 'TaffyWilbur@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(219, 'Regular', '39', 28, 'Bachelor of Science in Information Technology', '', 'Rake Rafhael', 'Felarca', 'Morota', '', '2004-01-01', '', 'RakeRafhael@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(220, 'Regular', '40', 33, 'Bachelor of Science in Computer Science', '', 'Eloisa', '', 'Mose', '', '2003-01-01', '', 'eloisamose@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(221, 'Regular', '41', 36, 'Bachelor of Science in Information Technology', '', 'Rica', 'Pacheco', 'Mose', '', '2002-01-01', '', 'ricamose@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(222, 'Regular', '42', 20, 'Bachelor of Science in Information Technology', '', 'Jerselle', 'Mondoyo', 'Mulato', '', '2005-01-01', '', 'jersellemulato@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(223, 'Regular', '45', 24, 'Bachelor of Science in Computer Science', '', 'Jaylo ', 'Andrada', 'Narboneta', '', '2004-01-01', '', 'jaylonarboneta@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(224, 'Regular', '46', 33, 'Bachelor of Science in Computer Science', '', 'Edron', 'Cruz', 'Naval', '', '2003-01-01', '', 'edronnaval@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(225, 'Regular', '47', 25, 'Bachelor of Science in Computer Science', '', 'Dane Ver ', 'Duque', 'Navales', '', '2004-01-01', '', 'DaneVer@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(226, 'Regular', '48', 19, 'Bachelor of Science in Information Technology', '', 'Ismael', 'Evangelista', 'Navarro', '', '2005-01-01', '', 'ismaelnavarro@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(227, 'Regular', '49', 1, 'Bachelor of Science in Computer Science', '', 'Roselyn', '', 'Navarro', '', '2005-01-01', '', 'roselynnavarro@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(228, 'Regular', '51', 32, 'Bachelor of Science in Computer Science', '', 'Wareen', 'Valdez', 'Navora', '', '2003-01-01', '', 'wareennavorra@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(229, 'Regular', '52', 36, 'Bachelor of Science in Information Technology', '', 'Diana Rose', 'Rocod', 'Nebril', '', '2003-01-01', '', 'DianaRose@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(230, 'Regular', '53', 29, 'Bachelor of Science in Information Technology', '', 'Niel Andrew', 'Dollete', 'Nero', '', '2004-01-01', '', 'NielAndrew@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(231, 'Regular', '54', 26, 'Bachelor of Science in Computer Science', '', 'Dustine Marion', 'Ramos', 'Nery', '', '2004-01-01', '', 'DustineMarion@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(232, 'Regular', '55', 28, 'Bachelor of Science in Information Technology', '', 'Melbhen', 'Guadalupe', 'Nery', '', '2004-01-01', '', 'melbhennery@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(233, 'Regular', '56', 36, 'Bachelor of Science in Information Technology', '', 'Mark Denver', 'Bautista', 'Nilo', '', '2003-01-01', '', 'MarkDenver@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(234, 'Regular', '57', 1, 'Bachelor of Science in Computer Science', '', 'Rey Peter Russel', 'Montemayor', 'Nilo', '', '2005-01-01', '', 'ReyPeterRussel@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(235, 'Regular', '58', 19, 'Bachelor of Science in Information Technology', '', 'Jasmine', 'Manabat', 'Nobles', '', '2005-01-01', '', 'jasminenobles@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(236, 'Regular', '59', 24, 'Bachelor of Science in Computer Science', '', 'Daniela', 'Empoc', 'Nomel', '', '2004-01-01', '', 'danielanomel@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(237, 'Regular', '60', 32, 'Bachelor of Science in Computer Science', '', 'Menard', 'Domingo', 'Nunez', '', '2003-01-01', '', 'menardnunez@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(238, 'Regular', '61', 29, 'Bachelor of Science in Information Technology', '', 'Arnel Gwen', 'Hermosilla', 'Nuqui', '', '2004-01-01', '', 'ArnelGwen@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(239, 'Regular', '62', 1, 'Bachelor of Science in Computer Science', '', 'Renz Lexus', 'Jungco', 'Obana', '', '2005-01-01', '', 'RenzLexus@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(240, 'Regular', '63', 1, 'Bachelor of Science in Computer Science', '', 'Ian Amearnyl', 'Tejome', 'Obay', '', '2005-01-01', '', 'IanAmearnyl@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(241, 'Regular', '64', 19, 'Bachelor of Science in Information Technology', '', 'James Andre', 'Abanero', 'Obispo', '', '2005-01-01', '', 'JamesAndre@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(242, 'Regular', '65', 3, 'Bachelor of Science in Computer Science', '', 'Romeo ', 'Valdez', 'Ocares', '', '2005-01-01', '', 'romeoocares@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(243, 'Regular', '66', 24, 'Bachelor of Science in Computer Science', '', 'Grant Cedric', 'Gomeseria', 'Ocbina', '', '2004-01-01', '', 'GrantCedric@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(244, 'Regular', '67', 20, 'Bachelor of Science in Information Technology', '', 'Maricris', 'Asadon', 'Ocrisma', '', '2005-01-01', '', 'maricrisocrisma@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(246, 'Regular', '152', 29, 'Bachelor of Science in Information Technology', '', 'Andrie Leighton', 'Cunanan', 'Calaycay', '', '2002-11-13', '', 'Andrie@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(247, 'Regular', '153', 28, 'Bachelor of Science in Information Technology', '', 'Andrie Leighton', 'Cunanan', 'Calaycay', '', '2001-02-03', '', 'AndrieLeighton@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(248, 'Regular', '154', 32, 'Bachelor of Science in Computer Science', '', 'Dan Niel', 'Navarro', 'Calimbas', '', '2001-12-23', '', 'DanNiel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(249, 'Regular', '155', 25, 'Bachelor of Science in Computer Science', '', 'David Jerameel', 'Casequin', 'Calimlim', '', '2001-02-13', '', 'DavidJerameel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(250, 'Regular', '156', 19, 'Bachelor of Science in Information Technology', '', 'Mary ann', 'Florita', 'Cambaliza', '', '2001-02-24', '', 'MaryAnn@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(251, 'Regular', '157', 32, 'Bachelor of Science in Computer Science', '', 'Felimon', 'Manalang ', 'Cambe', '', '2001-03-23', '', 'Felimon@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(252, 'Regular', '158', 28, 'Bachelor of Science in Information Technology', '', 'Dennis', 'Josafat', 'Cammagay', '', '2001-02-23', '', 'Dennis@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(253, 'Regular', '159', 24, 'Bachelor of Science in Computer Science', '', 'Keith Andrie', 'Bonilla', 'Cancino', '', '2001-02-23', '', 'KeithAndrie@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(254, 'Regular', '160', 1, 'Bachelor of Science in Computer Science', '', 'Allaine', 'Baysa', 'Candelario', '', '2001-02-23', '', 'Allaine@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(255, 'Regular', '161', 19, 'Bachelor of Science in Information Technology', '', 'Joshua Daniel', 'Acuesta', 'Cantor', '', '2001-02-23', '', 'JoshuaDaniel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(256, 'Regular', '162', 32, 'Bachelor of Science in Computer Science', '', 'Bruce Allen ', 'Alumpre', 'Capilo', '', '2001-02-23', '', 'BruceAllen@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(257, 'Regular', '163', 19, 'Bachelor of Science in Information Technology', '', 'Ariel', 'Gabriel', 'Caranay', '', '2001-02-02', '', 'Ariel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(258, 'Regular', '164', 28, 'Bachelor of Science in Information Technology', '', 'Michael Francis', 'Felicano', 'Carbon', '', '2001-02-02', '', 'MichaelFrancis@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(259, 'Regular', '165', 36, 'Bachelor of Science in Information Technology', '', 'Mark Jordan', 'Menor', 'Carbonel', '', '2001-02-22', '', 'MarkJordan@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(260, 'Regular', '166', 28, 'Bachelor of Science in Information Technology', '', 'Aimylot', 'Obiano', 'Carig', '', '2001-02-22', '', 'Aimylot@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(261, 'Regular', '167', 28, 'Bachelor of Science in Information Technology', '', 'Christian Joseph', 'Bravo', 'Caroc', '', '2001-02-22', '', 'ChristianJoseph@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(262, 'Regular', '68', 37, 'Bachelor of Science in Information Technology', '', 'Kyle', 'Calaanan', 'Ofancia', '', '2003-01-01', '', 'kyleofancia@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(263, 'Regular', '168', 28, 'Bachelor of Science in Information Technology', '', 'Clint John', 'Dimain', 'Caseria', '', '2001-02-22', '', 'ClintJohn@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(264, 'Regular', '169', 19, 'Bachelor of Science in Information Technology', '', 'Merralee', '', 'Castandiello', '', '2001-02-22', '', 'Merralee@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(265, 'Regular', '170', 24, 'Bachelor of Science in Computer Science', '', 'Zheraedane', 'Cabaes', 'Castillano', '', '2001-02-22', '', 'Zheraedane@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(266, 'Regular', '171', 19, 'Bachelor of Science in Information Technology', '', 'Jad Dian', 'Arce', 'Castillo', '', '2001-02-22', '', 'JadDian@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(267, 'Regular', '69', 26, 'Bachelor of Science in Computer Science', '', 'Sherylle Rose', 'Doniot', 'Oliquiano', '', '2004-01-01', '', 'SherylleRose@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(268, 'Regular', '172', 19, 'Bachelor of Science in Information Technology', '', 'Herbert', 'Morado', 'Castro', '', '2001-02-22', '', 'Herbert@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(269, 'Regular', '70', 24, 'Bachelor of Science in Computer Science', '', 'Darren ', 'Chavez', 'Oliveros', '', '2004-01-01', '', 'darrenoliveros@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(270, 'Regular', '173', 28, 'Bachelor of Science in Information Technology', '', 'Ellen', 'Pedraza', 'Catle', '', '2001-02-22', '', 'Ellen@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(271, 'Regular', '71', 3, 'Bachelor of Science in Computer Science', '', 'Dexter', 'Rabe', 'Ondajon', '', '2005-01-01', '', 'dexterondajon@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(272, 'Regular', '174', 28, 'Bachelor of Science in Information Technology', '', 'Marc Justine', 'Ebilane', 'Cepeda', '', '2001-02-22', '', 'MarcJustine@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(273, 'Regular', '175', 1, 'Bachelor of Science in Computer Science', '', 'John Carl', 'Garcia', 'Cerna', '', '2001-02-22', '', 'JohnCarl@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(274, 'Regular', '176', 32, 'Bachelor of Science in Computer Science', '', 'Wilbur Kristoff', 'Ampong', 'Cervantes', '', '2001-02-22', '', 'WilburKristoff@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(275, 'Regular', '177', 24, 'Bachelor of Science in Computer Science', '', 'Rochelle Francesca', 'Montilla', 'Chan', '', '2001-02-22', '', 'RochelleFrancesca@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(276, 'Regular', '72', 32, 'Bachelor of Science in Computer Science', '', 'Harley ', 'Benavidez', 'Opinga', '', '2004-01-01', '', 'harleyopinga@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(277, 'Regular', '178', 3, 'Bachelor of Science in Computer Science', '', 'Ronniel', 'Rillorta', 'Chaves', '', '2001-02-22', '', 'Ronniel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(278, 'Regular', '73', 37, 'Bachelor of Science in Information Technology', '', 'Mark Justine', 'Fabebe', 'Opinga', '', '2003-01-01', '', 'MarkJustine@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(279, 'Regular', '179', 24, 'Bachelor of Science in Computer Science', '', 'Johnmar Allen', 'Lacerona', 'Cinco', '', '2001-02-22', '', 'JohnmarAllen@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(280, 'Regular', '74', 1, 'Bachelor of Science in Computer Science', '', 'Sherry Hay Elruse', '', 'Opinga', '', '2005-01-01', '', 'SherryHayElruse@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(281, 'Regular', '180', 1, 'Bachelor of Science in Computer Science', '', 'Gabriel Soliven', 'Sudweste', 'Cipria', '', '2001-02-22', '', 'GabrielSoliven@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(282, 'Regular', '75', 29, 'Bachelor of Science in Information Technology', '', 'Alexander', 'De San Juan', 'Orcino', '', '2004-01-01', '', 'alexanderorcino@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(283, 'Regular', '76', 25, 'Bachelor of Science in Computer Science', '', 'Felix', 'Elan', 'Ordillas', 'II', '2004-01-01', '', 'felixordillas@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(284, 'Regular', '77', 19, 'Bachelor of Science in Information Technology', '', 'Jonell Franco', 'Pagar', 'Ordona', '', '2005-01-01', '', 'JonellFranco@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(285, 'Regular', '14424', 28, 'Bachelor of Science in Information Technology', '', 'fds', 'fsfd', 'sfsdfsd', 'fsdfs', '2023-11-01', '', 'admindr3242@gmail.com', 'Female', 'profile.png', '1.jpg', 'a9e49c7aefe022f0a8540361cce7575c', 'Student', 2, 0, 0, 0, '2023-11-13'),
(286, 'Regular', '78', 24, 'Bachelor of Science in Computer Science', '', 'Althea', 'Estrera', 'Oriana', '', '2004-01-01', '', 'altheaoriana@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(287, 'Regular', '79', 34, 'Bachelor of Science in Computer Science', '', 'Leona Jane', 'Lozano', 'Orias', '', '2003-01-01', '', 'LeonaJane@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(288, 'Regular', '181', 36, 'Bachelor of Science in Information Technology', '', 'Shoudymher', 'Gulod', 'Bayawoc', '', '2001-02-22', '', 'Shoudymher@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(289, 'Regular', '182', 24, 'Bachelor of Science in Computer Science', '', 'Jennifer', 'Muega', 'Baysa', '', '2001-02-22', '', 'Jennifer@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(290, 'Regular', '183', 1, 'Bachelor of Science in Computer Science', '', 'Kimberly', 'Arangorin', 'Boderio', '', '2001-02-22', '', 'Kimberly@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(291, 'Regular', '80', 3, 'Bachelor of Science in Computer Science', '', 'Jerald Mclarry', 'Almandares', 'Orlina', '', '2005-01-01', '', 'JeraldMclarry@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(292, 'Regular', '184', 36, 'Bachelor of Science in Information Technology', '', 'Banjho', '', 'Bellocelio', '', '2001-02-22', '', 'Banjho@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(293, 'Regular', '81', 28, 'Bachelor of Science in Information Technology', '', 'Rayven', 'Bautista', 'Orquiza', '', '2003-01-01', '', 'rayvenorquiza@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(294, 'Regular', '185', 1, 'Bachelor of Science in Computer Science', '', 'Rovience Arniel', 'Domingo', 'Bernil', '', '2001-02-22', '', 'RovienceArniel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(295, 'Regular', '82', 29, 'Bachelor of Science in Information Technology', '', 'Justine Ace', 'Ong', 'Ortiaga', '', '2004-01-01', '', 'JustineAce@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(296, 'Regular', '186', 24, 'Bachelor of Science in Computer Science', '', 'Christine Joy', 'Abiul', 'Bernal', '', '2001-02-22', '', 'ChristineJoy@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13');
INSERT INTO `users` (`user_Id`, `stud_type`, `student_ID`, `year_section`, `department`, `acad_rank`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `age`, `email`, `gender`, `image`, `ID_verification`, `password`, `user_type`, `student_status`, `faculty_status`, `is_deleted`, `verification_code`, `date_registered`) VALUES
(297, 'Regular', '187', 24, 'Bachelor of Science in Computer Science', '', 'Cyrille Angel ', '', 'Bernal', '', '2001-02-22', '', 'CyrilleAngel@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(298, 'Regular', '83', 21, 'Bachelor of Science in Information Technology', '', 'Joross', 'Agostosa', 'Oyando', '', '2005-01-01', '', 'jorossoyando@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(299, 'Regular', '188', 19, 'Bachelor of Science in Information Technology', '', 'Joseff Kalel', 'Dante', 'Bernardo', '', '2001-02-12', '', 'JoseffKalel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(300, 'Regular', '84', 37, 'Bachelor of Science in Information Technology', '', 'April', 'Catingub', 'Pablo', '', '2003-01-01', '', 'aprilpablo@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(301, 'Regular', '189', 1, 'Bachelor of Science in Computer Science', '', 'Nola Bell', 'Edip', 'Berroya', '', '2001-02-22', '', 'NolaBell@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(302, 'Regular', '85', 20, 'Bachelor of Science in Information Technology', '', 'Eduardo', 'Mangarin', 'Pacheco', '', '2005-01-01', '', 'eduardopacheco@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(303, 'Regular', '190', 19, 'Bachelor of Science in Information Technology', '', 'Bj', 'Viloria', 'Besana', '', '2001-02-22', '', 'Bj@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(304, 'Regular', '191', 19, 'Bachelor of Science in Information Technology', '', 'Jhon Loyd Robert', '', 'Betinol', '', '2001-02-22', '', 'JhonLoydRobert@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(305, 'Regular', '86', 21, 'Bachelor of Science in Information Technology', '', 'Mark Airon', '', 'Padao', '', '2005-01-01', '', 'MarkAiron@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(306, 'Regular', '87', 33, 'Bachelor of Science in Computer Science', '', 'Christian Joshua', 'Edquila', 'Padilla', '', '2003-01-01', '', 'ChristianJoshua@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(307, 'Regular', '88', 25, 'Bachelor of Science in Computer Science', '', 'Allexus Dhon', 'Serminio', 'Pagaduan', '', '2004-01-01', '', 'AllexusDhon@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(308, 'Regular', '89', 33, 'Bachelor of Science in Computer Science', '', 'Nathaniel John', 'Sabado', 'Pagal', '', '2003-01-01', '', 'NathanielJohn@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(309, 'Regular', '90', 4, 'Bachelor of Science in Computer Science', '', 'Philip John', 'Nery', 'Pagar', '', '2005-01-01', '', 'PhilipJohn@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(310, 'Regular', '91', 38, 'Bachelor of Science in Information Technology', '', 'Jasfer', 'Gesmundo', 'Pagobo', '', '2003-01-01', '', 'jasferpagobo@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(311, 'Regular', '92', 38, 'Bachelor of Science in Information Technology', '', 'Christian Jerick', 'Botardo', 'Paje', '', '2002-01-01', '', 'ChristianJerick@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(312, 'Regular', '93', 32, 'Bachelor of Science in Computer Science', '', 'Sittie Aliyah', 'Macabando', 'Palao', '', '2003-01-01', '', 'SittieAliyah@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(313, 'Regular', '94', 4, 'Bachelor of Science in Computer Science', '', 'Lovely Joyce', 'Abarde', 'Palmarin', '', '2005-01-01', '', 'LovelyJoyce@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(314, 'Regular', '95', 21, 'Bachelor of Science in Information Technology', '', 'Inelyn Joy', 'Nicholas', 'Palomar', '', '2005-01-01', '', 'InelynJoy@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(315, 'Regular', '96', 33, 'Bachelor of Science in Computer Science', '', 'Jordan', 'Dulay', 'Paltep', '', '2003-01-01', '', 'jordapaltep@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(316, 'Regular', '97', 4, 'Bachelor of Science in Computer Science', '', 'Adrian', 'Montehermoso', 'Pamplona', '', '2005-01-01', '', 'adrianpamplona@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(317, 'Regular', '98', 29, 'Bachelor of Science in Information Technology', '', 'Dessa Mae ', 'Susa', 'Panes', '', '2004-01-01', '', 'DessaMae@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(318, 'Regular', '99', 37, 'Bachelor of Science in Information Technology', '', 'Nicos', 'Buenaflor', 'Panes', '', '2003-01-01', '', 'nicospanes@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(319, 'Regular', '100', 3, 'Bachelor of Science in Computer Science', '', 'John Michael', 'Dial', 'Panlican', '', '2005-01-01', '', 'JohnMichael@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(320, 'Regular', '101', 26, 'Bachelor of Science in Computer Science', '', 'Francis Xavier', 'Quimerista', 'Panopio', '', '2004-01-01', '', 'FrancisXavier@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(321, 'Regular', '102', 29, 'Bachelor of Science in Information Technology', '', 'Jhenson', 'Daindin', 'Panopio', '', '2004-01-01', '', 'jhensonpanopio@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(322, 'Regular', '103', 37, 'Bachelor of Science in Information Technology', '', 'Marc Yvan', 'Eclarinal', 'Pantaleon', '', '2003-01-01', '', 'MarcYvan@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(323, 'Regular', '104', 30, 'Bachelor of Science in Information Technology', '', 'Christian', 'Gagalac', 'Pantilon', '', '2004-01-01', '', 'christianpantilon@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(324, 'Regular', '105', 38, 'Bachelor of Science in Information Technology', '', 'Jay R', 'Flordeliz', 'Panuga', '', '2003-01-01', '', 'JayR@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(325, 'Regular', '106', 4, 'Bachelor of Science in Computer Science', '', 'Alyssa', 'Ocbania', 'Paradeza', '', '2005-01-01', '', 'alyssaparadeza@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(326, 'Regular', '107', 38, 'Bachelor of Science in Information Technology', '', 'Jenny', 'Zamora', 'Paradeza', '', '2003-01-01', '', 'jennyparadeza@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(327, 'Regular', '108', 38, 'Bachelor of Science in Information Technology', '', 'Joanna Joy', 'Serrano', 'Parallag', '', '2003-01-01', '', 'JoannaJoy@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(328, 'Regular', '109', 33, 'Bachelor of Science in Computer Science', '', 'Ivan John', 'Gapang', 'Paranada', '', '2003-01-01', '', 'IvanJohn@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(329, 'Regular', '110', 21, 'Bachelor of Science in Information Technology', '', 'Jimwel', 'Ballon', 'Pascual', '', '0200-01-01', '', 'jimwelpascual@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(330, 'Regular', '111', 25, 'Bachelor of Science in Computer Science', '', 'Jhed Cyna', '', 'Paulo', '', '2004-01-01', '', 'JhedCyna@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(331, 'Regular', '112', 20, 'Bachelor of Science in Information Technology', '', 'Veronica Joy', 'Sy', 'Pavia', '', '2005-01-01', '', 'VeronicaJoy@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(332, 'Regular', '113', 29, 'Bachelor of Science in Information Technology', '', 'John Mark', 'Paderes', 'Payawal', '', '2004-01-01', '', 'JohnMark@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(333, 'Regular', '114', 25, 'Bachelor of Science in Computer Science', '', 'Vincent ', 'Dela Cruz', 'Payumo', '', '2004-01-01', '', 'vincentpayumo@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(334, 'Regular', '115', 1, 'Bachelor of Science in Computer Science', '', 'Renan', 'Dolojan', 'Penalosa', '', '2005-01-10', '', 'renanpenalosa@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(335, 'Regular', '116', 38, 'Bachelor of Science in Information Technology', '', 'Yuds Daniel', 'Gono', 'Penaranda', '', '2003-01-01', '', 'YudsDaniel@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(336, 'Regular', '117', 20, 'Bachelor of Science in Information Technology', '', 'Kurt Joshua', 'Delgado', 'Penarubia', '', '2005-01-01', '', 'KurtJoshua@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(337, 'Regular', '118', 19, 'Bachelor of Science in Information Technology', '', 'Jolina', '', 'Pensan', '', '2005-01-01', '', 'jolinapensan@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(338, 'Regular', '119', 32, 'Bachelor of Science in Computer Science', '', 'Via', 'Lagmay', 'Perlas', '', '2003-01-01', '', 'viaperlas@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(339, 'Regular', '120', 34, 'Bachelor of Science in Computer Science', '', 'Krystal Karen ', '', 'Peteros', '', '2003-01-01', '', 'KrystalKaren@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(340, 'Regular', '121', 26, 'Bachelor of Science in Computer Science', '', 'Arvin', 'Reg', 'Pineda', '', '2004-01-01', '', 'arvinpineda@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(341, 'Regular', '122', 32, 'Bachelor of Science in Computer Science', '', 'Edel', 'Velasco', 'Pineda', '', '2003-01-01', '', 'edelpineda@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(342, 'Regular', '123', 21, 'Bachelor of Science in Information Technology', '', 'Monica', 'Realin', 'Pines', '', '2005-01-10', '', 'monicapines@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(343, 'Regular', '124', 28, 'Bachelor of Science in Information Technology', '', 'Jayson', 'Paytome', 'Ponce', '', '2004-01-01', '', 'jaysonponce@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(344, 'Regular', '126', 1, 'Bachelor of Science in Computer Science', '', 'Llyza', 'Mendoza', 'Ponio', '', '2002-01-01', '', 'llyzaponio@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(345, 'Regular', '127', 21, 'Bachelor of Science in Information Technology', '', 'Jennifer', 'Oliveros', 'Prado', '', '2005-01-01', '', 'jenniferprado@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(346, 'Regular', '128', 4, 'Bachelor of Science in Computer Science', '', 'Carl Benedict', 'Arela', 'Precones', '', '2005-01-01', '', 'CarlBenedict@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(347, 'Regular', '129', 21, 'Bachelor of Science in Information Technology', '', 'Christian Jay', 'Flores', 'Pulido', '', '2005-01-01', '', 'ChristianJay@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(348, 'Regular', '130', 19, 'Bachelor of Science in Information Technology', '', 'Keneth Clark ', 'Ablian', 'Quesada', '', '2005-01-01', '', 'KenethClark@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(349, 'Regular', '131', 33, 'Bachelor of Science in Computer Science', '', 'Claudine Jane', 'Garcia', 'Quias', '', '2003-01-01', '', 'ClaudineJane@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(350, 'Regular', '132', 36, 'Bachelor of Science in Information Technology', '', 'Marriane Joy', 'Monilla', 'Quiddam', '', '2003-01-01', '', 'MarrianeJoy@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(351, 'Regular', '133', 34, 'Bachelor of Science in Computer Science', '', 'John Rex', 'Fronda', 'Quimeniano', '', '2003-01-10', '', 'JohnRex@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(352, 'Regular', '134', 32, 'Bachelor of Science in Computer Science', '', 'Julian Marie', 'Manlincon', 'Quintin', '', '2003-01-01', '', 'JulianMarie@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(353, 'Regular', '135', 21, 'Bachelor of Science in Information Technology', '', 'Andrei', 'Andrade', 'Quintos', '', '2005-01-01', '', 'andreiquintos@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-13'),
(354, 'Regular', '136', 37, 'Bachelor of Science in Information Technology', '', 'Lordyvic', 'Mayor', 'Rabaca', '', '2003-01-01', '', 'lordyvicrabaca@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(355, 'Regular', '137', 36, 'Bachelor of Science in Information Technology', '', 'Moises', 'Bungalon', 'Racines', '', '2003-01-01', '', 'moisesracines@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(356, 'Regular', '138', 4, 'Bachelor of Science in Computer Science', '', 'Jenie Rose', 'Arlantico', 'Ragadio', '', '2005-01-01', '', 'JenieRose@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(357, 'Regular', '139', 1, 'Bachelor of Science in Computer Science', '', 'Shin Denken', 'Mirador', 'Ramirez', '', '2005-01-01', '', 'ShinDenken@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(358, 'Regular', '140', 33, 'Bachelor of Science in Computer Science', '', 'Khet Ruzell', 'Dela Cruz', 'Ramos', '', '2003-01-01', '', 'KhetRuzell@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(359, 'Regular', '141', 37, 'Bachelor of Science in Information Technology', '', 'Reignsir', 'Bongcales', 'Ramos', '', '2003-01-01', '', 'reignsirramos@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(360, 'Regular', '142', 37, 'Bachelor of Science in Information Technology', '', 'John Moller', 'Manalo', 'Razon', '', '2003-01-02', '', 'JohnMoller@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(361, 'Regular', '143', 33, 'Bachelor of Science in Computer Science', '', 'Laureto', 'Estabillo', 'Reario', '', '2003-01-01', '', 'lauretoreario@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(362, 'Regular', '144', 20, 'Bachelor of Science in Information Technology', '', 'Mia Kyla', 'Fernandez', 'Recarro', '', '2005-01-01', '', 'MiaKyla@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(363, 'Regular', '145', 24, 'Bachelor of Science in Computer Science', '', 'Khianna Tasha', 'Goles', 'Reguindin', '', '2004-01-01', '', 'KhiannaTasha@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(364, 'Regular', '146', 24, 'Bachelor of Science in Computer Science', '', 'Aldrin', 'Diaz', 'Requidan', '', '2004-01-01', '', 'aldrinrequidan@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(365, 'Regular', '147', 34, 'Bachelor of Science in Computer Science', '', 'Aleah Lorein ', 'Anoche', 'Reyes', '', '2003-01-01', '', 'AleahLorein@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(366, 'Regular', '148', 37, 'Bachelor of Science in Information Technology', '', 'Agustine Lar', 'Lopez', 'Reyes', '', '2003-01-01', '', 'AgustineLar@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(367, 'Regular', '149', 28, 'Bachelor of Science in Information Technology', '', 'Benedick', 'Romualdo', 'Reyes', '', '2004-01-01', '', 'benedickreyes@gmail.com', 'Male', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(368, 'Regular', '150', 32, 'Bachelor of Science in Computer Science', '', 'Camille', '', 'Reyes', '', '2003-01-01', '', 'camillereyes@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(369, 'Regular', '192', 19, 'Bachelor of Science in Information Technology', '', 'Jundrie ', 'Lagnas', 'Betenio', '', '2001-02-22', '', 'Jundrie@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(370, 'Regular', '193', 19, 'Bachelor of Science in Information Technology', '', 'John Richard', 'Corpuz', 'Biag', '', '2001-02-22', '', 'JohnRichard@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(371, 'Regular', '194', 24, 'Bachelor of Science in Computer Science', '', 'Rhen Justin', 'Fernandez', 'Billote', '', '2001-02-22', '', 'RhenJustin@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(372, 'Regular', '195', 36, 'Bachelor of Science in Information Technology', '', 'Roshir Shane', 'Reyes', 'Bologa', '', '2001-02-22', '', 'RoshirShane@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(373, 'Regular', '196', 36, 'Bachelor of Science in Information Technology', '', 'Dianne', 'Colcol', 'Boniel', '', '2001-02-22', '', 'Dianne@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(374, 'Regular', '197', 36, 'Bachelor of Science in Information Technology', '', 'John Vincent', 'Apino', 'Brenio', '', '2001-02-22', '', 'JohnVincent@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(375, 'Regular', '198', 32, 'Bachelor of Science in Computer Science', '', 'Elizar', 'Jumawan', 'Bucal', '', '2001-02-22', '', 'Elizar@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(376, 'Regular', '199', 19, 'Bachelor of Science in Information Technology', '', 'Charlene Maye', 'Trapsi', 'Buenaluz', '', '2001-02-22', '', 'CharleneMaye@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(377, 'Regular', '200', 36, 'Bachelor of Science in Information Technology', '', 'Lennie', 'Moreno', 'Bueno', '', '2001-03-31', '', 'Lennie@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(378, 'Regular', '201', 32, 'Bachelor of Science in Computer Science', '', 'Allen Joy', '', 'Bueza', '', '0201-02-22', '', 'AllenJoy@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(379, 'Regular', '202', 32, 'Bachelor of Science in Computer Science', '', 'Paul Adrian', 'Dioqiono', 'Bugarin', '', '2001-02-22', '', 'PaulAdrian@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(380, 'Regular', '203', 32, 'Bachelor of Science in Computer Science', '', 'Ghe Rick', 'Franco', 'Bumanlag', '', '2001-02-22', '', 'GheRick@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(381, 'Regular', '204', 19, 'Bachelor of Science in Information Technology', '', 'Franzine Ola', 'Alves', 'Bumanlag', '', '2001-02-22', '', 'FranzineOla@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(382, 'Regular', '205', 32, 'Bachelor of Science in Computer Science', '', 'Mark Chester', '', 'Bundang', '', '2001-02-22', '', 'MarkChester@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(383, 'Regular', '206', 36, 'Bachelor of Science in Information Technology', '', 'Jeovanie', 'Valmonte', 'Busa', '', '2001-02-22', '', 'Jeovanie@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(384, 'Regular', '207', 32, 'Bachelor of Science in Computer Science', '', 'Marc Dane', 'Hebron', 'Caasi', '', '2001-02-22', '', 'MarcDane@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(385, 'Regular', '208', 1, 'Bachelor of Science in Computer Science', '', 'Julie Anne', 'Fernandez', 'Cababaro', '', '2001-02-22', '', 'JulieAnne@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(386, 'Regular', '209', 19, 'Bachelor of Science in Information Technology', '', 'Ken Charlie', 'Daylo', 'Cabalic', '', '2001-02-22', '', 'KenCharlie@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(387, 'Regular', '210', 19, 'Bachelor of Science in Information Technology', '', 'John Carlo ', 'Marty', 'Caballero', '', '2001-02-22', '', 'JohnCarlo@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(388, 'Regular', '211', 24, 'Bachelor of Science in Computer Science', '', 'Joana Loraine', 'alvez', 'Cabansag', '', '2001-02-22', '', 'JoanaLoraine@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(389, 'Regular', '212', 28, 'Bachelor of Science in Information Technology', '', 'John Mark', 'Dela Cruz', 'Cabreros', '', '2001-02-22', '', 'JohnMarkCabreros@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(390, 'Regular', '213', 19, 'Bachelor of Science in Information Technology', '', 'Reymark ', 'Buenafe', 'Cabrillas', '', '2001-02-22', '', 'Reymark@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(391, 'Regular', '214', 24, 'Bachelor of Science in Computer Science', '', 'Ariel Jay', 'Abad', 'Cabuso', '', '2001-02-22', '', 'ArielJay@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(392, 'Regular', '215', 19, 'Bachelor of Science in Information Technology', '', 'Kent', 'Sevilla', 'Cacho', '', '2001-02-22', '', 'Kent@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(393, 'Regular', '216', 1, 'Bachelor of Science in Computer Science', '', 'Mike Henry', 'Corcuera', 'Cadorna', '', '2001-02-22', '', 'MikeHenry@gmai.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(394, 'Regular', '217', 1, 'Bachelor of Science in Computer Science', '', 'Paul John', 'Echon', 'Antigo', '', '2001-02-22', '', 'PaulJohn@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(395, 'Regular', '218', 28, 'Bachelor of Science in Information Technology', '', 'Cliff Joshua', 'Bruzo', 'Antonio', '', '2001-02-22', '', 'CliffJoshua@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(396, 'Regular', '219', 19, 'Bachelor of Science in Information Technology', '', 'Lizl', 'Reyes', 'Apagalang', '', '2001-02-22', '', 'Lizl@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(397, 'Regular', '220', 19, 'Bachelor of Science in Information Technology', '', 'Eman', '', 'Apino', '', '2001-02-22', '', 'Eman@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(398, 'Regular', '221', 36, 'Bachelor of Science in Information Technology', '', 'Sheila Mae', 'Dairo', 'Apino', '', '2001-02-22', '', 'SheilaMae@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(399, 'Regular', '222', 28, 'Bachelor of Science in Information Technology', '', 'Rodny Ace', 'Mana', 'Apostol', '', '2001-02-22', '', 'RodnyAce@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(400, 'Regular', '223', 36, 'Bachelor of Science in Information Technology', '', 'Michaela ', 'Banarchea', 'Aqul', '', '2001-02-22', '', 'Michaela@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(401, 'Regular', '224', 1, 'Bachelor of Science in Computer Science', '', 'Aila May', 'Maximo', 'Aquino', '', '2001-02-22', '', 'AilaMay@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(402, 'Regular', '225', 32, 'Bachelor of Science in Computer Science', '', 'Alfie', 'Carolino', 'Aquino', '', '2001-02-22', '', 'Alfie@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(403, 'Regular', '226', 1, 'Bachelor of Science in Computer Science', '', 'Angelica', '', 'Aquino', '', '2001-02-22', '', 'Angelica@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(404, 'Regular', '20-02354', 43, 'Bachelor of Science in Information Technology', '', 'Mybel', '', 'Mayo', '', '2002-08-27', '', 'mybelmayo08@gmail.com', 'Female', 'profile.png', 'ccitt.png', '2a587450ee7ac8d5d4b8069452d5e8a1', 'Student', 1, 0, 0, 0, '2023-11-14'),
(405, 'Regular', '227', 36, 'Bachelor of Science in Information Technology', '', 'Emilyn', 'Sunio', 'Aquino', '', '2001-02-22', '', 'Emilyn@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(406, 'Regular', '228', 36, 'Bachelor of Science in Information Technology', '', 'Krisell Ruth', 'Delos Reyes', 'Aquino', '', '2001-02-22', '', 'KrisellRuth@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(407, 'Regular', '229', 19, 'Bachelor of Science in Information Technology', '', 'Lloyd Vincent', 'Lacap', 'Aquino', '', '2001-02-22', '', 'LloydVincent@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(408, 'Regular', '230', 19, 'Bachelor of Science in Information Technology', '', 'Kirk Bon', 'Acupan', 'Aragon', '', '2001-02-22', '', 'KirkBon@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(409, 'Regular', '231', 28, 'Bachelor of Science in Information Technology', '', 'Shaina', 'Badilla', 'Aragon', '', '2001-02-22', '', 'Shaina@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(410, 'Regular', '232', 19, 'Bachelor of Science in Information Technology', '', 'Justin', 'Bataller', 'Aranas', '', '2001-02-22', '', 'Justin@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(411, 'Regular', '234', 19, 'Bachelor of Science in Information Technology', '', 'Jerick', 'Conceja', 'Arandia', '', '2001-02-22', '', 'Jerick@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(412, 'Regular', '235', 36, 'Bachelor of Science in Information Technology', '', 'Gail Anne', 'Estrella', 'Arca', '', '2001-02-22', '', 'GailAnne@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(413, 'Regular', '236', 19, 'Bachelor of Science in Information Technology', '', 'Eden Mae', 'Lucero', 'Arigo', '', '2001-02-22', '', 'EdenMae@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(414, 'Regular', '237', 19, 'Bachelor of Science in Information Technology', '', 'Miko ', 'Torres', 'Arnaldo', '', '2001-02-22', '', 'Miko@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(415, 'Regular', '238', 1, 'Bachelor of Science in Computer Science', '', 'Justin Gabriel', 'Arroyo', 'Arroyo', '', '2001-02-22', '', 'JustinGabriel@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(416, 'Regular', '239', 19, 'Bachelor of Science in Information Technology', '', 'Jherzel', 'Mose', 'Artates', '', '2001-02-22', '', 'Jherzel@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(417, 'Regular', '240', 28, 'Bachelor of Science in Information Technology', '', 'Abegaille', 'Alkuino', 'Asuncion', '', '2001-02-22', '', 'Abegaille@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(418, 'Regular', '241', 36, 'Bachelor of Science in Information Technology', '', 'Keanu Vincent', 'ecalnir', 'Atrero', '', '2001-02-22', '', 'KeanuVincent@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(419, 'Regular', '242', 28, 'Bachelor of Science in Information Technology', '', 'Quin Rj', 'Edpalin', 'Atrero', '', '2001-02-22', '', 'QuinRj@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(420, 'Regular', '243', 28, 'Bachelor of Science in Information Technology', '', 'Evann Jewel', 'Bruto', 'Avenido', '', '2001-02-22', '', 'EvannJewel@gmial.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(421, 'Regular', '244', 19, 'Bachelor of Science in Information Technology', '', 'Allan Jay', 'Romualdo', 'Aviles', '', '2001-02-22', '', 'AllanJay@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(422, 'Regular', '245', 24, 'Bachelor of Science in Computer Science', '', 'Eldrich Val', 'Upano', 'Awirigan', '', '2001-02-22', '', 'EldrichVal@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(423, 'Regular', '246', 1, 'Bachelor of Science in Computer Science', '', 'Yvonne', 'Cruz', 'Ayson', '', '2001-02-22', '', 'Yvonne@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(424, 'Regular', '247', 1, 'Bachelor of Science in Computer Science', '', 'Chyna Alexis', '', 'Bacolod', '', '2001-02-22', '', 'ChynaAlexis@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(425, 'Regular', '248', 28, 'Bachelor of Science in Information Technology', '', 'Jayvee', 'Duguran', 'Bactad', '', '2001-02-22', '', 'Jayvee@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(426, 'Regular', '250', 36, 'Bachelor of Science in Information Technology', '', 'John Paul', 'Oliva', 'Fernandez', '', '2001-02-22', '', 'JohnPaul@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(427, 'Regular', '251', 36, 'Bachelor of Science in Information Technology', '', 'Marvine Ray', 'Abarra', 'Fernandez', '', '2001-02-22', '', 'MarvineRay@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(428, 'Regular', '252', 24, 'Bachelor of Science in Computer Science', '', 'Rafael', 'Galam', 'Ferrer', 'Jr', '2001-02-22', '', 'Rafael@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(429, 'Regular', '253', 28, 'Bachelor of Science in Information Technology', '', 'Cheska Ann', 'Mahinay', 'Ferrer', '', '2001-02-22', '', 'CheskaAnn@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(430, 'Regular', '254', 28, 'Bachelor of Science in Information Technology', '', 'Dee', 'Soriano', 'Ferrer', '', '2001-02-22', '', 'Dee@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(431, 'Regular', '255', 36, 'Bachelor of Science in Information Technology', '', 'Justine Jacob', 'Escobar', 'Ferrer', '', '2001-02-22', '', 'JustineJacob@gmail.com', 'Male', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(432, 'Irregular', '1212', 0, 'Bachelor of Science in Information Technology', '', 'juan', '', 'dela cruz', '', '2002-01-01', '', 'jyaj624@gmail.com', 'Male', 'profile.png', 'ccitt.png', '3fc0a7acf087f549ac2b266baf94b8b1', 'Student', 2, 0, 0, 0, '2023-11-14'),
(433, 'Regular', '1213', 1, 'Bachelor of Science in Computer Science', '', 'Bella', '', 'haha', '', '2001-01-01', '', 'bellahaha@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-14'),
(434, 'Irregular', '1234567', 0, 'Bachelor of Science in Information Technology', '', 'iregg', '', 'ireg', '', '2001-01-01', '', 'ireg@gmail.com', 'Female', 'profile.png', 'ccitt.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 2, 0, 0, 0, '2023-11-15'),
(435, 'Regular', '20-02414', 43, 'Bachelor of Science in Information Technology', '', 'Dallen', 'ednave', 'moreno', '', '2001-03-23', '', 'morenodallen@gmail.com', 'Female', 'profile.png', 'student1.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 2, 0, 0, 0, '2023-11-28'),
(436, 'Regular', '12345', 43, 'Bachelor of Science in Information Technology', '', 'prmsu', '', 'ccit', '', '2001-01-01', '', 'celinoanical@gmail.com', 'Male', 'profile.png', 'mybel_cor.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-29'),
(437, 'Regular', '00000', 28, 'Bachelor of Science in Information Technology', '', ' ccit', '', 'it', '', '2001-01-01', '', 'marilynanical714@gmail.com', 'Female', 'profile.png', 'dallen_cor.jpg', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 2, 0, 0, 0, '2023-11-29'),
(438, 'Regular', '2222', 30, 'Bachelor of Science in Information Technology', '', 'bbbb', 'xxx', 'xxxx', '', '2001-02-22', '', 'morenodallen123@gmail.com', 'Female', 'profile.png', 'dallen_cor.jpg', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-29'),
(439, 'Irregular', '3333', 0, 'Bachelor of Science in Computer Science', '', 'bbbb', 'xxx', 'xxxx', '', '2001-02-22', '', 'ednavemoreno@gmail.com', 'Female', 'profile.png', 'dallen_cor.jpg', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 2, 0, 0, 0, '2023-11-29'),
(440, 'Regular', '20-02412', 43, 'Bachelor of Science in Information Technology', '', 'dallen', '', 'moreno', '', '2002-02-02', '', 'itsmedallen@gmail.com', 'Female', 'profile.png', 'dallen_cor.jpg', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 1, 0, 0, 0, '2023-11-29'),
(441, 'Regular', '123456789', 1, 'Bachelor of Science in Computer Science', '', 'maria', '', 'clara', '', '2001-12-23', '', 'mc9224613@gmail.com', 'Female', 'profile.png', 'Screenshot (7).png', '3fc0a7acf087f549ac2b266baf94b8b1', 'Student', 1, 0, 0, 0, '2023-11-29'),
(442, 'Irregular', '09876', 0, 'Bachelor of Science in Computer Science', '', 'Approdite', '', 'Beauty', '', '2001-01-01', '', 'ayelabella3@gmail.com', 'Female', 'profile.png', 'Screenshot (1).png', '0192023a7bbd73250516f069df18b500', 'Student', 2, 0, 0, 0, '2023-12-01'),
(443, 'Regular', '45678', 33, 'Bachelor of Science in Computer Science', '', 'zeus', '', 'sky', '', '2001-01-01', '', 'bellayela6@gmail.com', 'Male', 'profile.png', 'Screenshot (1).png', '0192023a7bbd73250516f069df18b500', 'Student', 1, 0, 0, 0, '2023-12-01'),
(444, 'Regular', 'Abcd24', 41, 'Bachelor of Science in Computer Science', '', 'Andres', '', 'Bonifacio ', 'Jr. ', '1980-12-01', '', 'jjay83355@gmail.com', 'Male', 'profile.png', 'Screenshot_2023-11-30-16-03-03-927_com.globe.gcash.android.jpg', 'e19d5cd5af0378da05f63f891c7467af', 'Student', 1, 0, 0, 0, '2023-12-01'),
(445, 'Regular', '20-02143', 41, 'Bachelor of Science in Computer Science', '', 'Mikhail Gerard', 'Vicente ', 'Agor', '', '2002-05-01', '', 'micofoodpanda@gmail.com', 'Male', 'profile.png', 'inbound8296821769514776158.jpg', '9e747df81456ecdf3d4d73d534067dbf', 'Student', 1, 0, 0, 0, '2023-12-02'),
(446, 'Regular', '12345656', 43, 'Bachelor of Science in Information Technology', '', 'Jayrold', 'Rodillas', 'Padasas', '', '2001-03-14', '', 'jaypadasas5@gmail.com', 'Male', 'profile.png', 'Screenshot_2023-12-03-00-58-07-625_com.android.chrome.jpg', '25d55ad283aa400af464c76d713c07ad', 'Student', 1, 0, 0, 540028, '2023-12-03'),
(447, '', '', 0, '', '', 'Geoffrey', '', 'Sepillio', '', '1992-01-01', '', 'faculty35@gmail.com', 'Male', '4.jpg', '', '0192023a7bbd73250516f069df18b500', 'Faculty', 1, 0, 0, 0, '2023-12-04'),
(448, 'Regular', '20-02411', 43, 'Bachelor of Science in Information Technology', '', 'Dallen ', '', 'Moreno', '', '2001-03-23', '', 'bellaayela21@gmail.com', 'Female', 'profile.png', 'FA3AF66C-6C34-4B82-AE58-0290B754196E.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 0, 0, 0, 0, '2023-12-05'),
(449, 'Regular', '20-0000', 43, 'Bachelor of Science in Information Technology', '', 'Prmsu', '', 'Ccit', '', '2001-12-05', '', 'ayelabella1@gmail.com', 'Female', 'profile.png', 'B17CF5C6-A3DC-4E71-8050-403F00B353B9.png', '5e5545d38a68148a2d5bd5ec9a89e327', 'Student', 0, 0, 0, 0, '2023-12-05'),
(450, 'Regular', '8765', 1, 'Bachelor of Science in Computer Science', '', 'jay', '', 'jay', '', '1992-11-05', '', 'fieldullasjr@gmail.com', 'Male', 'profile.png', 'Screenshot (1).png', '25d55ad283aa400af464c76d713c07ad', 'Student', 1, 0, 0, 0, '2023-12-05');

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
  MODIFY `acad_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
