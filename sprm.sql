-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 02:05 PM
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
-- Table structure for table `co_exam`
--

CREATE TABLE `co_exam` (
  `COID` varchar(14) NOT NULL,
  `ExamID` int(11) NOT NULL
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
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` varchar(7) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Date_Of_Birth` varchar(10) NOT NULL,
  `Joining_Date` varchar(10) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Phone` int(10) NOT NULL,
  `VC?` tinyint(1) NOT NULL,
  `DeptHead?` tinyint(1) NOT NULL,
  `Instructor?` tinyint(1) NOT NULL,
  `Dean?` tinyint(1) NOT NULL,
  `VCID` int(4) NOT NULL,
  `DeanID` int(4) NOT NULL,
  `DeptHeadID` int(4) NOT NULL,
  `InstructorID` int(4) NOT NULL
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
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `ExamID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outline`
--

CREATE TABLE `outline` (
  `SectionID` int(11) NOT NULL,
  `OutlineID` varchar(20) NOT NULL,
  `Lesson_Plan` varchar(5000) NOT NULL,
  `Room_Number` int(11) NOT NULL,
  `Mark_Distribution` varchar(100) NOT NULL,
  `Grading` varchar(2) NOT NULL,
  `Syllabus` varchar(5000) NOT NULL,
  `Book` varchar(1000) NOT NULL
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
-- Table structure for table `registered_course`
--

CREATE TABLE `registered_course` (
  `StudentID` varchar(7) NOT NULL,
  `RegistrationID` int(11) NOT NULL,
  `Date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `RegistrationID` int(11) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `Semester` varchar(7) NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `SectionID` int(11) NOT NULL,
  `Section_Number` int(11) NOT NULL,
  `Semester` varchar(7) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `CourseID` varchar(7) NOT NULL,
  `IEmployeeID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_registration`
--

CREATE TABLE `section_registration` (
  `SectionID` int(11) NOT NULL,
  `RegistrationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` varchar(7) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Date_Of_Birth` varchar(10) NOT NULL,
  `Enrollment_Date` varchar(10) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Phone` int(10) NOT NULL,
  `ProgramID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `StudentID` varchar(7) NOT NULL,
  `CourseID` varchar(7) NOT NULL,
  `Grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
