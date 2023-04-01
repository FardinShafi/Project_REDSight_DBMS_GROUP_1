-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 04:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sprm`
--

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

CREATE TABLE `co` (
  `COID` varchar(14) NOT NULL,
  `Bloom_Level` int(11) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `CO_Percentage` int(11) NOT NULL,
  `CO_PLO_Relationship` int(11) NOT NULL,
  `PLOID` varchar(5) NOT NULL,
  `CourseID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` varchar(7) NOT NULL,
  `Course_Name` varchar(40) NOT NULL,
  `Number_Of_Credits` int(11) NOT NULL,
  `DepartmentID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` varchar(4) NOT NULL,
  `Department_Name` varchar(60) NOT NULL,
  `SchoolID` varchar(6) NOT NULL,
  `DHEmployeeID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ExamID` int(11) NOT NULL,
  `Exam_Type` varchar(10) NOT NULL,
  `Semester` varchar(7) NOT NULL,
  `Year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plo`
--

CREATE TABLE `plo` (
  `PLOID` varchar(6) NOT NULL,
  `Description` varchar(40) NOT NULL,
  `ProgramID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `ProgramID` varchar(4) NOT NULL,
  `Program_Name` varchar(60) NOT NULL,
  `DepartmentID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `Question_Description` varchar(1000) NOT NULL,
  `Marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `SchoolID` varchar(6) NOT NULL,
  `School_Name` varchar(60) NOT NULL,
  `DeEmployeeID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
