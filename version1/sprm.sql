-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 04, 2023 at 05:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
  `PLOID` varchar(6) NOT NULL,
  `CourseID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `co`
--

INSERT INTO `co` (`COID`, `Bloom_Level`, `Description`, `CO_Percentage`, `CO_PLO_Relationship`, `PLOID`, `CourseID`) VALUES
('BCB103L_CO001', 1, 'Use laboratory equipment', 33, 33, 'PLO026', 'BCB103L'),
('BCB103L_CO002', 2, 'Conduct experiments accurately', 33, 33, 'PLO050', 'BCB103L'),
('BCB103L_CO003', 3, 'Analyze chemical reactions', 33, 33, 'PLO051', 'BCB103L'),
('BCB103_CO001', 1, 'Understand basic chemical concepts', 25, 33, 'PLO050', 'BCB103'),
('BCB103_CO002', 2, 'Apply stoichiometry', 25, 33, 'PLO051', 'BCB103'),
('BCB103_CO003', 3, 'Analyze gas laws', 50, 33, 'PLO027', 'BCB103'),
('BCB202L_CO001', 1, 'Use laboratory equipment', 33, 33, 'PLO051', 'BCB202L'),
('BCB202L_CO002', 2, 'Conduct experiments accurately', 33, 33, 'PLO027', 'BCB202L'),
('BCB202L_CO003', 3, 'Synthesize organic compounds', 33, 33, 'PLO026', 'BCB202L'),
('BCB202_CO001', 1, 'Understand organic functional groups', 25, 33, 'PLO027', 'BCB202'),
('BCB202_CO002', 2, 'Analyze reaction mechanisms', 25, 33, 'PLO026', 'BCB202'),
('BCB202_CO003', 3, 'Apply spectroscopy techniques', 50, 33, 'PLO050', 'BCB202'),
('CMN201_CO001', 1, 'Understand communication theories', 25, 33, 'PLO028', 'CMN201'),
('CMN201_CO002', 2, 'Apply communication strategies', 25, 50, 'PLO029', 'CMN201'),
('CMN201_CO003', 3, 'Analyze communication patterns', 50, 50, 'PLO052', 'CMN201'),
('CMN202_CO001', 1, 'Develop speaking skills', 33, 50, 'PLO053', 'CMN202'),
('CMN202_CO002', 2, 'Deliver effective presentations', 33, 33, 'PLO028', 'CMN202'),
('CMN202_CO003', 3, 'Analyze speaking styles', 33, 50, 'PLO029', 'CMN202'),
('CMN203_CO001', 1, 'Understand mass communication systems', 25, 50, 'PLO052', 'CMN203'),
('CMN203_CO002', 2, 'Analyze media content', 25, 50, 'PLO053', 'CMN203'),
('CMN203_CO003', 3, 'Apply media theories', 50, 33, 'PLO028', 'CMN203'),
('CSE104L_CO001', 1, 'Verify circuit theorems', 25, 20, 'PLO001', 'CSE104L'),
('CSE104L_CO002', 2, 'Use laboratory equipment', 25, 33, 'PLO002', 'CSE104L'),
('CSE104L_CO003', 3, 'Conduct experiments accurately', 50, 25, 'PLO003', 'CSE104L'),
('CSE104_CO001', 1, 'Analyze linear circuits', 33, 20, 'PLO001', 'CSE104'),
('CSE104_CO002', 2, 'Apply network theorems', 33, 33, 'PLO002', 'CSE104'),
('CSE104_CO003', 3, 'Solve AC circuits', 33, 33, 'PLO002', 'CSE104'),
('CSE201_CO001', 1, 'Apply mathematical logic', 33, 33, 'PLO005', 'CSE201'),
('CSE201_CO002', 2, 'Analyze algorithms complexity', 33, 25, 'PLO006', 'CSE201'),
('CSE201_CO003', 3, 'Apply discrete structures', 33, 50, 'PLO007', 'CSE201'),
('CSE203L_CO001', 1, 'Implement data structures', 33, 50, 'PLO007', 'CSE203L'),
('CSE203L_CO002', 2, 'Test algorithms', 33, 33, 'PLO008', 'CSE203L'),
('CSE203L_CO003', 3, 'Debug code', 33, 25, 'PLO003', 'CSE203L'),
('CSE203_CO001', 1, 'Implement abstract data types', 25, 20, 'PLO001', 'CSE203'),
('CSE203_CO002', 2, 'Analyze algorithms efficiency', 25, 33, 'PLO005', 'CSE203'),
('CSE203_CO003', 3, 'Apply data structures', 50, 25, 'PLO006', 'CSE203'),
('CSE204L_CO001', 1, 'Implement digital circuits', 33, 20, 'PLO001', 'CSE204L'),
('CSE204L_CO002', 2, 'Test digital systems', 33, 20, 'PLO011', 'CSE204L'),
('CSE204L_CO003', 3, 'Troubleshoot errors', 33, 20, 'PLO010', 'CSE204L'),
('CSE204_CO001', 1, 'Analyze combinational circuits', 25, 33, 'PLO005', 'CSE204'),
('CSE204_CO002', 2, 'Analyze sequential circuits', 25, 20, 'PLO008', 'CSE204'),
('CSE204_CO003', 3, 'Design digital systems', 50, 20, 'PLO008', 'CSE204'),
('CSE210L_CO001', 1, 'Use laboratory equipment', 33, 20, 'PLO010', 'CSE210L'),
('CSE210L_CO002', 2, 'Construct analog circuits', 33, 20, 'PLO011', 'CSE210L'),
('CSE210L_CO003', 3, 'Test electronic devices', 33, 20, 'PLO010', 'CSE210L'),
('CSE210_CO001', 1, 'Analyze analog circuits', 25, 20, 'PLO011', 'CSE210'),
('CSE210_CO002', 2, 'Analyze semiconductor devices', 25, 20, 'PLO009', 'CSE210'),
('CSE210_CO003', 3, 'Analyze amplifier circuits', 50, 20, 'PLO011', 'CSE210'),
('CSE211L_CO001', 1, 'Implement algorithms', 33, 20, 'PLO001', 'CSE211L'),
('CSE211L_CO002', 2, 'Analyze algorithms efficiency', 33, 20, 'PLO008', 'CSE211L'),
('CSE211L_CO003', 3, 'Test algorithms', 33, 33, 'PLO004', 'CSE211L'),
('CSE211_CO001', 1, 'Analyze algorithms complexity', 25, 20, 'PLO011', 'CSE211'),
('CSE211_CO002', 2, 'Implement sorting algorithms', 25, 20, 'PLO009', 'CSE211'),
('CSE211_CO003', 3, 'Apply searching algorithms', 50, 25, 'PLO003', 'CSE211'),
('CSE213L_CO001', 1, 'Develop software applications', 33, 20, 'PLO010', 'CSE213L'),
('CSE213L_CO002', 2, 'Implement OOP concepts', 33, 20, 'PLO008', 'CSE213L'),
('CSE213L_CO003', 3, 'Debug code', 33, 20, 'PLO013', 'CSE213L'),
('CSE213_CO001', 1, 'Implement OOP concepts', 25, 25, 'PLO003', 'CSE213'),
('CSE213_CO002', 2, 'Develop software applications', 25, 20, 'PLO010', 'CSE213'),
('CSE213_CO003', 3, 'Use libraries and frameworks', 50, 20, 'PLO009', 'CSE213'),
('CSE214_CO001', 1, 'Analyze computer architecture', 25, 20, 'PLO013', 'CSE214'),
('CSE214_CO002', 2, 'Design digital circuits', 25, 25, 'PLO006', 'CSE214'),
('CSE214_CO003', 3, 'Analyze memory systems', 50, 33, 'PLO004', 'CSE214'),
('CSE216L_CO001', 1, 'Program microprocessors', 25, 20, 'PLO009', 'CSE216L'),
('CSE216L_CO002', 2, 'Interface microprocessors with external devices', 25, 20, 'PLO013', 'CSE216L'),
('CSE216L_CO003', 3, 'Test microprocessor programs', 50, 33, 'PLO004', 'CSE216L'),
('CSE216_CO001', 1, 'Program microprocessors', 33, 20, 'PLO013', 'CSE216'),
('CSE216_CO002', 2, 'Interface microprocessors with external devices', 33, 20, 'PLO009', 'CSE216'),
('CSE216_CO003', 3, 'Analyze assembly language programs', 33, 25, 'PLO006', 'CSE216'),
('EEE131_CO001', 1, 'Analyze DC circuits', 33, 33, 'PLO014', 'EEE131'),
('EEE131_CO002', 2, 'Analyze AC circuits', 33, 33, 'PLO015', 'EEE131'),
('EEE131_CO003', 3, 'Analyze network theorems', 33, 33, 'PLO016', 'EEE131'),
('EEE132_CO001', 1, 'Analyze materials properties', 25, 50, 'PLO017', 'EEE132'),
('EEE132_CO002', 2, 'Analyze chemical reactions', 25, 50, 'PLO018', 'EEE132'),
('EEE132_CO003', 3, 'Apply chemistry concepts', 50, 50, 'PLO019', 'EEE132'),
('EEE211L_CO001', 1, 'Use laboratory equipment', 25, 50, 'PLO023', 'EEE211L'),
('EEE211L_CO002', 2, 'Construct electrical circuits', 25, 50, 'PLO024', 'EEE211L'),
('EEE211L_CO003', 3, 'Test electrical circuits', 50, 50, 'PLO025', 'EEE211L'),
('EEE211_CO001', 1, 'Analyze power circuits', 33, 50, 'PLO020', 'EEE211'),
('EEE211_CO002', 2, 'Analyze filter circuits', 33, 50, 'PLO021', 'EEE211'),
('EEE211_CO003', 3, 'Analyze resonance circuits', 33, 50, 'PLO022', 'EEE211'),
('EEE221_CO001', 1, 'Analyze analog circuits', 33, 33, 'PLO014', 'EEE221'),
('EEE221_CO002', 2, 'Analyze semiconductor devices', 33, 33, 'PLO015', 'EEE221'),
('EEE221_CO003', 3, 'Analyze amplifier circuits', 33, 33, 'PLO016', 'EEE221'),
('EEE223_CO001', 1, 'Analyze mechanical systems', 25, 50, 'PLO017', 'EEE223'),
('EEE223_CO002', 2, 'Analyze thermodynamics concepts', 25, 50, 'PLO018', 'EEE223'),
('EEE223_CO003', 3, 'Analyze materials properties', 50, 50, 'PLO019', 'EEE223'),
('EEE231_CO001', 1, 'Analyze signals and systems', 33, 50, 'PLO020', 'EEE231'),
('EEE231_CO002', 2, 'Apply Fourier series and transforms', 33, 50, 'PLO021', 'EEE231'),
('EEE231_CO003', 3, 'Apply Laplace transforms', 33, 50, 'PLO022', 'EEE231'),
('EEE232L_CO001', 1, 'Implement digital circuits', 33, 33, 'PLO014', 'EEE232L'),
('EEE232L_CO002', 2, 'Test digital systems', 33, 33, 'PLO015', 'EEE232L'),
('EEE232L_CO003', 3, 'Troubleshoot errors', 33, 33, 'PLO016', 'EEE232L'),
('EEE232_CO001', 1, 'Analyze combinational circuits', 25, 50, 'PLO023', 'EEE232'),
('EEE232_CO002', 2, 'Analyze sequential circuits', 25, 50, 'PLO024', 'EEE232'),
('EEE232_CO003', 3, 'Design digital systems', 50, 50, 'PLO025', 'EEE232'),
('ENG201_CO001', 1, 'Analyze literary genres', 33, 20, 'PLO030', 'ENG201'),
('ENG201_CO002', 2, 'Interpret literary texts', 33, 25, 'PLO031', 'ENG201'),
('ENG201_CO003', 3, 'Analyze literary techniques', 33, 20, 'PLO030', 'ENG201'),
('ENG202_CO001', 1, 'Understand English history', 25, 25, 'PLO031', 'ENG202'),
('ENG202_CO002', 2, 'Analyze historical events', 25, 20, 'PLO030', 'ENG202'),
('ENG202_CO003', 3, 'Apply historical perspectives', 50, 25, 'PLO031', 'ENG202'),
('ENG203_CO001', 1, 'Understand poetic forms', 33, 20, 'PLO030', 'ENG203'),
('ENG203_CO002', 2, 'Interpret poetic texts', 33, 25, 'PLO031', 'ENG203'),
('ENG203_CO003', 3, 'Analyze poetic techniques', 33, 20, 'PLO030', 'ENG203'),
('ENV201_CO001', 1, 'Analyze chemical properties of the environment', 25, 25, 'PLO032', 'ENV201'),
('ENV201_CO002', 2, 'Analyze environmental pollutants', 25, 20, 'PLO033', 'ENV201'),
('ENV201_CO003', 3, 'Apply environmental chemistry concepts', 50, 25, 'PLO032', 'ENV201'),
('ENV202_CO001', 1, 'Analyze population dynamics', 33, 20, 'PLO033', 'ENV202'),
('ENV202_CO002', 2, 'Analyze environmental impact of population', 33, 25, 'PLO032', 'ENV202'),
('ENV202_CO003', 3, 'Apply population and environment concepts', 33, 20, 'PLO033', 'ENV202'),
('MIS401_CO001', 1, 'Design databases', 33, 50, 'PLO034', 'MIS401'),
('MIS401_CO002', 2, 'Implement database management systems', 33, 50, 'PLO035', 'MIS401'),
('MIS401_CO003', 3, 'Optimize database performance', 33, 50, 'PLO036', 'MIS401'),
('MIS405_CO001', 1, 'Analyze system requirements', 25, 33, 'PLO037', 'MIS405'),
('MIS405_CO002', 2, 'Design system architecture', 25, 50, 'PLO034', 'MIS405'),
('MIS405_CO003', 3, 'Develop software applications', 50, 50, 'PLO035', 'MIS405'),
('MIS430_CO001', 1, 'Understand networking technologies', 33, 50, 'PLO036', 'MIS430'),
('MIS430_CO002', 2, 'Analyze network protocols', 33, 33, 'PLO037', 'MIS430'),
('MIS430_CO003', 3, 'Implement network security measures', 33, 33, 'PLO037', 'MIS430'),
('MKT302_CO001', 1, 'Understand marketing strategies', 25, 33, 'PLO038', 'MKT302'),
('MKT302_CO002', 2, 'Develop marketing plans', 25, 50, 'PLO039', 'MKT302'),
('MKT302_CO003', 3, 'Analyze marketing metrics', 50, 50, 'PLO040', 'MKT302'),
('MKT340_CO001', 1, 'Understand advertising techniques', 33, 50, 'PLO041', 'MKT340'),
('MKT340_CO002', 2, 'Develop advertising campaigns', 33, 33, 'PLO038', 'MKT340'),
('MKT340_CO003', 3, 'Analyze advertising metrics', 33, 50, 'PLO039', 'MKT340'),
('MKT350_CO001', 1, 'Understand services marketing strategies', 25, 50, 'PLO040', 'MKT350'),
('MKT350_CO002', 2, 'Develop services marketing plans', 25, 50, 'PLO041', 'MKT350'),
('MKT350_CO003', 3, 'Analyze services marketing metrics', 50, 33, 'PLO038', 'MKT350'),
('POP201_CO001', 1, 'Analyze ecosystems', 25, 25, 'PLO032', 'POP201'),
('POP201_CO002', 2, 'Analyze biodiversity', 25, 20, 'PLO033', 'POP201'),
('POP201_CO003', 3, 'Apply conservation strategies', 50, 20, 'PLO033', 'POP201');

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

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `Course_Name`, `Number_Of_Credits`, `DepartmentID`) VALUES
('BCB103', 'Introductory Chemistry I Lecture', 3, 'BCB'),
('BCB103L', 'Introductory Chemistry I Lecture Lab', 1, 'BCB'),
('BCB202', 'Organic Chemistry II Lecture', 3, 'BCB'),
('BCB202L', 'Organic Chemistry II Lecture Lab', 1, 'BCB'),
('CMN201', 'Introduction to Communication', 3, 'CMN'),
('CMN202', 'Public Speaking', 3, 'CMN'),
('CMN203', 'Mass Communication: Structure and Proces', 3, 'CMN'),
('CSE104 ', 'Electrical Circuit Analysis ', 3, 'CSE'),
('CSE104L', 'Electrical Circuit Analysis Lab', 1, 'CSE'),
('CSE201 ', 'Discrete Mathematics ', 3, 'CSE'),
('CSE203', 'Data Structure ', 3, 'CSE'),
('CSE203L', 'Data Structure Lab', 1, 'CSE'),
('CSE204', 'Digital Logic Design ', 3, 'CSE'),
('CSE204L', 'Digital Logic Design Lab', 1, 'CSE'),
('CSE210', 'Electronics I ', 3, 'CSE'),
('CSE210L', 'Electronics I Lab', 1, 'CSE'),
('CSE211', 'Algorithms ', 3, 'CSE'),
('CSE211L', 'Algorithms Lab', 1, 'CSE'),
('CSE213', 'Object-Oriented Programming ', 3, 'CSE'),
('CSE213L', 'Object-Oriented Programming Lab', 1, 'CSE'),
('CSE214 ', 'Computer Organization and Architecture ', 3, 'CSE'),
('CSE216', 'Microprocessor, Interfacing and Assembly', 3, 'CSE'),
('CSE216L', 'Microprocessor, Interfacing and Assembly', 1, 'CSE'),
('EEE131 ', '          Electrical Circuit I', 3, 'EEE'),
('EEE132 ', '          Introduction to Materials and ', 3, 'EEE'),
('EEE211 ', '          Electrical Circuit II', 3, 'EEE'),
('EEE211L', 'Electrical Circuit Lab', 1, 'EEE'),
('EEE221 ', '          Electronics I', 3, 'EEE'),
('EEE223 ', '          Mechanical Engineering Fundame', 3, 'EEE'),
('EEE231 ', '          Signals and Systems', 3, 'EEE'),
('EEE232 ', '          Digital Logic Design', 3, 'EEE'),
('EEE232L', '        Digital Logic Design Lab', 1, 'EEE'),
('ENG201', 'Introduction to English Literature', 3, 'ENG'),
('ENG202', 'History of England', 3, 'ENG'),
('ENG203', 'Understanding Poetry', 3, 'ENG'),
('ENV201', ' Environmental Chemistry ', 4, 'ENV'),
('ENV202', 'Environmental Biology, Ecology & Conserv', 3, 'ENV'),
('MIS401', 'Database Management', 3, 'MIS'),
('MIS405', 'Systems Analysis and Design', 3, 'MIS'),
('MIS430', ' Data Communication and Networking', 3, 'MIS'),
('MKT302', ' Advanced Marketing Management', 3, 'MKT'),
('MKT340', ' Advertising', 3, 'MKT'),
('MKT350', 'Services Marketing', 3, 'MKT'),
('PHA 101', 'Introduction to Pharmacy', 3, 'PHA'),
('PHA 102', 'Pharmacognosy & Nutraceuticals', 3, 'PHA'),
('PHY 201', 'Perspectives of Modern Physics', 3, 'PS'),
('PHY 202', 'Atomic, Molecular and Laser Physics', 3, 'PS'),
('PHY 203', 'Solid State Physics I', 3, 'PS'),
('PHY101', 'University Physics I', 3, 'PS'),
('PHY101L', 'University Physics I Lab', 1, 'PS'),
('PHY102', 'University Physics II', 3, 'PS'),
('PHY102L', 'University Physics II Lab', 1, 'PS'),
('PHY443', 'Black Hole Physics', 3, 'PS'),
('PHY444', 'Many Body Physics', 3, 'PS'),
('POP201', 'Population and Environment ', 3, 'ENV');

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

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `Department_Name`, `SchoolID`, `DHEmployeeID`) VALUES
('BCB', 'Life Sciences', 'SELS', '4044'),
('CMN', 'Media & Communication', 'SLASS', '4053'),
('CSE', 'Computer Science & Engineering', 'SETS', '4007'),
('EEE', 'Electrical & Electronics Engineering', 'SETS', '4030'),
('ENG', 'English Literature', 'SLASS', '4054'),
('ENV', 'Environment Science & Management', 'SELS', '4045'),
('MIS', 'Management Information System', 'SBE', '4057'),
('MKT', 'Marketing', 'SBE', '4056'),
('PHA', 'Pharmacy', 'SPPH', '4043'),
('PS', 'Physical Science', 'SETS', '4065');

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

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `Password`, `First_Name`, `Last_Name`, `Address`, `Gender`, `Date_Of_Birth`, `Joining_Date`, `Email`, `Phone`, `VC?`, `DeptHead?`, `Instructor?`, `Dean?`, `VCID`, `DeanID`, `DeptHeadID`, `InstructorID`) VALUES
('4001', 'emp1001', 'Ashraful', 'Amin', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', 'Male', '01/01/1980', '10/10/2000', 'aminmdashraful@iub.edu.bd', 1800000001, 0, 0, 1, 0, 0, 0, 0, 0),
('4002', 'emp1002', 'Ali Shihab', 'Sabbir', 'House No. 44, Jubilee Road, Mashima, Chittagong', 'Male', '02/01/1980', '11/10/2000', 'asabbir@iub.edu.bd', 1800000002, 0, 0, 1, 0, 0, 0, 0, 0),
('4003', 'emp1003', 'Amin Ahsan', 'Ali', 'House No. 20, College Road, Sylhet Bazar, Sylhet', 'Male', '03/01/1980', '12/10/2000', 'aminali@iub.edu.bd', 1800000003, 0, 0, 1, 0, 0, 0, 0, 0),
('4004', 'emp1004', 'MM Mahbubul', 'Syeed', 'House No. 18, Police Line Road, New Market, Rangpur', 'Male', '04/01/1980', '13/10/2000', 'mahbubul.syeed@iub.edu.bd', 1800000004, 0, 0, 1, 0, 0, 0, 0, 0),
('4005', 'emp1005', 'Saadia Binte', 'Alam', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', 'Female', '05/01/1980', '14/10/2000', 'saadiabinte@iub.edu.bd', 1800000005, 0, 0, 1, 0, 0, 0, 0, 0),
('4006', 'emp1006', 'Ferdows', 'Zahid', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', 'Male', '06/01/1980', '15/10/2000', 'fzahid@iub.edu.bd', 1800000006, 0, 0, 1, 0, 0, 0, 0, 0),
('4007', 'emp1007', 'Mahady', 'Hasan', 'House No. 9, Jail Road, Sadar Bazar, Tangail', 'Male', '07/01/1980', '16/10/2000', 'mahady@iub.edu.bd', 1800000007, 0, 1, 1, 1, 0, 2007, 3007, 1007),
('4008', 'emp1008', 'Tarem', 'Ahmed', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', 'Male', '08/01/1980', '17/10/2000', 'tarem@iub.edu.bd', 1800000008, 0, 0, 1, 0, 0, 0, 0, 0),
('4009', 'emp1009', 'AKM Mahbubur', 'Rahman', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', 'Male', '09/01/1980', '18/10/2000', 'akmmrahman@iub.edu.bd', 1800000009, 0, 0, 1, 0, 0, 0, 0, 0),
('4010', 'emp1010', 'Ashraful', 'Islam', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', 'Male', '10/01/1980', '19/10/2000', 'ashraful@iub.edu.bd', 1800000010, 0, 0, 1, 0, 0, 0, 0, 0),
('4011', 'emp1011', 'Asif', 'Mahmood', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', 'Male', '11/01/1980', '20/10/2000', 'asif.mahmood@iub.edu.bd', 1800000011, 0, 0, 1, 0, 0, 0, 0, 0),
('4012', 'emp1012', 'Farzana', 'Rahman', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', 'Female', '12/01/1980', '21/10/2000', 'farzana.rahman@iub.edu.bd', 1800000012, 0, 0, 1, 0, 0, 0, 0, 0),
('4013', 'emp1013', 'Razib Hayat', 'Khan', 'House No. 25, Dhap Road, Dhap, Rangpur', 'Male', '13/01/1980', '22/10/2000', 'rkhan@iub.edu.bd', 1800000013, 0, 0, 1, 0, 0, 0, 0, 0),
('4014', 'emp1014', 'Faisal M', 'Uddin', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', 'Male', '14/01/1980', '23/10/2000', 'faisal@iub.edu.bd', 1800000014, 0, 0, 1, 0, 0, 0, 0, 0),
('4015', 'emp1015', 'Mohammad Noor', 'Nabi', 'House No. 7, Elephant Road, New Market, Dhaka', 'Male', '15/01/1980', '24/10/2000', 'mnnabi@iub.edu.bd', 1800000015, 0, 0, 1, 0, 0, 0, 0, 0),
('4016', 'emp1016', 'Subrata Kumar', 'Dey', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', 'Male', '16/01/1980', '25/10/2000', 'subrata@iub.edu.bd', 1800000016, 0, 0, 1, 0, 0, 0, 0, 0),
('4017', 'emp1017', 'Ajmiri Sabrina', 'Khan', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', 'Female', '17/01/1980', '26/10/2000', 'ajmirikhan@iub.edu.bd', 1800000017, 0, 1, 1, 0, 0, 0, 3017, 0),
('4018', 'emp1018', 'Bijoy Rahman', 'Arif', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', 'Male', '18/01/1980', '27/10/2000', 'bijoyarif@iub.edu.bd', 1800000018, 0, 0, 1, 0, 0, 0, 0, 0),
('4019', 'emp1019', 'Md. Abu', 'Sayed', 'House No. 40, Purbani Road, Purbani, Comilla', 'Male', '19/01/1980', '28/10/2000', 'asayed@iub.edu.bd', 1800000019, 0, 0, 1, 0, 0, 0, 0, 0),
('4020', 'emp1020', 'Md. Asif Bin', 'Khaled', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', 'Male', '20/01/1980', '29/10/2000', 'mdasifbinkhaled@iub.edu.bd', 1800000020, 0, 0, 1, 0, 0, 0, 0, 0),
('4021', 'emp1021', 'Md. Fahad', 'Monir', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', 'Male', '21/01/1980', '30/10/2000', 'fahad.monir@iub.edu.bd', 1800000021, 0, 0, 1, 0, 0, 0, 0, 0),
('4022', 'emp1022', 'Md. Raihan Bin', 'Rafique', 'House No. 17, Kalibari Road, Kalibari, Sylhet', 'Male', '22/01/1980', '31/10/2000', 'rohan@iub.edu.bd', 1800000022, 0, 0, 1, 0, 0, 0, 0, 0),
('4023', 'emp1023', 'Mohammad Motiur', 'Rahman', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', 'Male', '23/01/1980', '01/11/2000', 'motiur@iub.edu.bd', 1800000023, 0, 0, 1, 0, 0, 0, 0, 0),
('4024', 'emp1024', 'Sheikh', 'Abujar', 'House No. 29, Biswanath Road, Biswanath, Sylhet', 'Male', '24/01/1980', '02/11/2000', 'abujar@iub.edu.bd', 1800000024, 0, 0, 1, 0, 0, 0, 0, 0),
('4025', 'emp1025', 'Romasa', 'Qasim', 'House No. 27, Jhautala Road, Jhautala, Khulna', 'Female', '25/01/1980', '03/11/2000', 'romasa.qasim@iub.edu.bd', 1800000025, 0, 0, 1, 0, 0, 0, 0, 0),
('4026', 'emp1026', 'Sabrina', 'Alam', 'House No. 11, BRTC Road, Basundhara, Rangpur', 'Female', '26/01/1980', '04/11/2000', 'sabrina.alam@iub.edu.bd', 1800000026, 0, 1, 1, 0, 0, 0, 3026, 0),
('4027', 'emp1027', 'Sanzar Adnan', 'Alam', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', 'Male', '27/01/1980', '05/11/2000', 'sanzar@iub.edu.bd', 1800000027, 0, 0, 1, 0, 0, 0, 0, 0),
('4028', 'emp1028', 'Moumita', 'Asad', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', 'Female', '28/01/1980', '06/11/2000', 'moumita@iub.edu.bd', 1800000028, 0, 0, 1, 0, 0, 0, 0, 0),
('4029', 'emp1029', 'Kaniz', 'Fatema', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', 'Female', '29/01/1980', '07/11/2000', 'kaniz.fatema@iub.edu.bd', 1800000029, 0, 0, 1, 0, 0, 0, 0, 0),
('4030', 'emp1030', 'Feroz', 'Ahmed', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', 'Male', '30/01/1980', '08/11/2000', ' 	fahmed@iub.edu.bd ', 1800000030, 0, 1, 1, 0, 0, 0, 3030, 0),
('4031', 'emp1031', 'Khosru M', 'Salim', 'House No. 37, Feni Road, Feni, Comilla', 'Male', '31/01/1980', '09/11/2000', 'khosru@iub.edu.bd', 1800000031, 0, 0, 1, 0, 0, 0, 0, 0),
('4032', 'emp1032', 'Shahriar', 'Khan', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', 'Male', '01/02/1980', '10/11/2000', ' 	khandhaka@gmail.com', 1800000032, 0, 0, 1, 0, 0, 0, 0, 0),
('4033', 'emp1033', 'Md. Abdur', 'Razzak', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', 'Male', '02/02/1980', '11/11/2000', 'razzak@iub.edu.bd', 1800000033, 0, 0, 1, 0, 0, 0, 0, 0),
('4034', 'emp1034', 'Mustafa Habib', 'Chowdhury', 'House No. 38, Kaptai Road, Kaptai, Rangamati', 'Male', '03/02/1980', '12/11/2000', 'mchowdhury@iub.edu.bd', 1800000034, 0, 1, 1, 0, 0, 0, 3034, 0),
('4035', 'emp1035', 'Mohammad', 'Rahman', 'House No. 42, Mawna Road, Mawna, Gazipur', 'Male', '04/02/1980', '13/11/2000', 'mohammad.rahman@iub.edu.bd', 1800000035, 0, 0, 1, 0, 0, 0, 0, 0),
('4036', 'emp1036', 'Farhana', 'Akhtar', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', 'Female', '05/02/1980', '14/11/2000', 'farhana.akhtar@iub.edu.bd', 1800000036, 0, 0, 1, 0, 0, 0, 0, 0),
('4037', 'emp1037', 'Rakib', 'Hasan', 'House No. 47, Momin Road, Momin Road, Chittagong', 'Male', '06/02/1980', '15/11/2000', 'rakib.hasan@iub.edu.bd', 1800000037, 0, 0, 1, 0, 0, 0, 0, 0),
('4038', 'emp1038', 'Nusrat', 'Jahan', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Female', '07/02/1980', '16/11/2000', 'nusrat.jahan@iub.edu.bd', 1800000038, 0, 0, 0, 1, 0, 2038, 0, 0),
('4039', 'emp1039', 'Azimul', 'Haque', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', 'Male', '08/02/1980', '17/11/2000', 'azimul.haque@iub.edu.bd', 1800000039, 0, 0, 0, 1, 0, 2039, 0, 0),
('4040', 'emp1040', 'Ayesha', 'Begum', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', 'Female', '09/02/1980', '18/11/2000', 'ayesha.begum@iub.edu.bd', 1800000040, 0, 0, 0, 1, 0, 2040, 0, 0),
('4041', 'emp1041', 'Shahidul', 'Islam', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', 'Male', '10/02/1980', '19/11/2000', 'shahidul.islam@iub.edu.bd', 1800000041, 0, 0, 0, 1, 0, 2041, 0, 0),
('4042', 'emp1042', 'Nazia', 'Rahman', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', 'Female', '11/02/1980', '20/11/2000', 'nazia.rahman@iub.edu.bd', 1800000042, 0, 1, 1, 0, 0, 0, 3042, 0),
('4043', 'emp1043', 'Nurul', 'Haque', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', 'Male', '12/02/1980', '21/11/2000', 'nurul.haque@iub.edu.bd', 1800000043, 0, 0, 1, 0, 0, 0, 0, 0),
('4044', 'emp1044', 'Fatema', 'Khatun', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', 'Female', '13/02/1980', '22/11/2000', 'fatema.khatun@iub.edu.bd', 1800000044, 0, 1, 1, 0, 0, 0, 3044, 0),
('4045', 'emp1045', 'Abu Bakkar', 'Siddique', 'House No. 65, GEC Road, GEC, Chittagong', 'Male', '14/02/1980', '23/11/2000', 'abu.siddique@iub.edu.bd', 1800000045, 0, 0, 1, 0, 0, 0, 0, 0),
('4046', 'emp1046', 'Rabeya', 'Khatun', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '15/02/1980', '24/11/2000', 'rabeya.khatun@iub.edu.bd', 1800000046, 0, 1, 1, 0, 0, 0, 3046, 0),
('4047', 'emp1047', 'Rafiul', 'Karim', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Male', '16/02/1980', '25/11/2000', 'rafiul.karim@iub.edu.bd', 1800000047, 0, 0, 1, 0, 0, 0, 0, 0),
('4048', 'emp1048', 'Mahfuza', 'Akhter', 'House No. 72, Station Road, Syedpur, Nilphamari', 'Female', '17/02/1980', '26/11/2000', 'mahfuza.akhter@iub.edu.bd', 1800000048, 0, 0, 1, 0, 0, 0, 0, 0),
('4049', 'emp1049', 'Mohammad Ali', 'Akbar', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '18/02/1980', '27/11/2000', 'mohammad.ali.akbar@iub.edu.bd', 1800000049, 0, 0, 1, 0, 0, 0, 0, 0),
('4050', 'emp1050', 'Shamsun', 'Nahar', 'House No. 78, Court Road, Court Road, Narsingdi', 'Female', '19/02/1980', '28/11/2000', 'shamsun.nahar@iub.edu.bd', 1800000050, 0, 1, 1, 0, 0, 0, 3050, 0),
('4051', 'emp1051', 'Mohammad Ziaul', 'Haq', 'House No. 80, Bholahat Road, Bholahat, Chapai Nawabganj', 'Male', '20/02/1980', '29/11/2000', 'mohammad.ziaul.haq@iub.edu.bd', 1800000051, 0, 0, 1, 0, 0, 0, 0, 0),
('4052', 'emp1052', 'Marufa', 'Begum', 'House No. 82, Chandpur Road, Chandpur, Comilla', 'Female', '21/02/1980', '30/11/2000', 'marufa.begum@iub.edu.bd', 1800000052, 0, 0, 1, 0, 0, 0, 0, 0),
('4053', 'emp1053', 'Muntasir', 'Rahman', 'House No. 85, Bheramara Road, Bheramara, Kushtia', 'Male', '22/02/1980', '01/12/2000', 'muntasir.rahman@iub.edu.bd', 1800000053, 0, 0, 1, 0, 0, 0, 0, 0),
('4054', 'emp1054', 'Tahmina', 'Akhtar', 'House No. 87, Mirpur Road, Mirpur, Dhaka', 'Female', '23/02/1980', '02/12/2000', 'tahmina.akhtar@iub.edu.bd', 1800000054, 0, 0, 1, 0, 0, 0, 0, 0),
('4055', 'emp1055', 'Ahsanul', 'Haq', 'House No. 89, Bir Uttam CR Dutta Road, Bir Uttam CR Dutta, Chittagong', 'Male', '24/02/1980', '03/12/2000', 'ahsanul.haq@iub.edu.bd', 1800000055, 0, 1, 1, 0, 0, 0, 3055, 0),
('4056', 'emp1056', 'Sharmin', 'Sultana', 'House No. 92, Muktarpur Road, Muktarpur, Munshiganj', 'Female', '25/02/1980', '04/12/2000', 'sharmin.sultana@iub.edu.bd', 1800000056, 0, 0, 1, 0, 0, 0, 0, 0),
('4057', 'emp1057', 'Farhanul', 'Islam', 'House No. 95, Pirojpur Road, Pirojpur, Barisal', 'Male', '26/02/1980', '05/12/2000', 'farhanul.islam@iub.edu.bd', 1800000057, 0, 0, 1, 0, 0, 0, 0, 0),
('4058', 'emp1058', 'Salma', 'Khatun', 'House No. 98, Bogra Road, Bogra, Rajshahi', 'Female', '27/02/1980', '06/12/2000', 'salma.khatun@iub.edu.bd', 1800000058, 0, 0, 1, 0, 0, 0, 0, 0),
('4062', 'emp1062', 'Jahidul', 'Islam', 'House No. 108, Bonosree Road, Bonosree, Dhaka', 'Male', '02/03/1980', '10/12/2000', 'jahidul.islam@iub.edu.bd', 1800000062, 0, 0, 1, 0, 0, 0, 0, 0),
('4063', 'emp1063', 'Nasrin', 'Akhter', 'House No. 111, Shohid Shamsuddin Road, Shohid Shamsuddin, Barisal', 'Female', '03/03/1980', '11/12/2000', 'nasrin.akhter@iub.edu.bd', 1800000063, 0, 0, 1, 0, 0, 0, 0, 0),
('4064', 'emp1064', 'Tanweer', 'Hasan', 'House No. 108, Bonosree Road, Bonosree, Dhaka', 'Male', '04/03/1980', '12/12/2000', 't.hasan@iub.edu.bd', 1800000064, 1, 0, 0, 0, 5064, 0, 0, 0),
('4065', 'emp1065', 'Mohammad Mostofa', 'Kamal', 'House No. 65, GEC Road, GEC, Chittagong', 'Male', '05/03/1980', '13/12/2000', 'amkamal@iub.edu.bd', 1800000065, 0, 0, 1, 0, 0, 0, 0, 1065);

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

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`ExamID`, `Exam_Type`, `Semester`, `Year`) VALUES
(690001, 'Quiz', 'Spring', '2020'),
(690002, 'Midterm', 'Spring', '2020'),
(690003, 'Final', 'Spring', '2020'),
(690004, 'Quiz', 'Summer', '2020'),
(690005, 'Midterm', 'Summer', '2020'),
(690006, 'Final', 'Summer', '2020'),
(690007, 'Quiz', 'Autumn', '2020'),
(690008, 'Midterm', 'Autumn', '2020'),
(690009, 'Final', 'Autumn', '2020'),
(690010, 'Quiz', 'Spring', '2020'),
(690011, 'Midterm', 'Spring', '2020'),
(690012, 'Final', 'Spring', '2020'),
(690013, 'Quiz', 'Summer', '2020'),
(690014, 'Midterm', 'Summer', '2020'),
(690015, 'Final', 'Summer', '2020'),
(690016, 'Quiz', 'Autumn', '2020'),
(690017, 'Midterm', 'Autumn', '2020'),
(690018, 'Final', 'Autumn', '2020'),
(690019, 'Quiz', 'Spring', '2020'),
(690020, 'Midterm', 'Spring', '2020'),
(690021, 'Final', 'Spring', '2020'),
(690022, 'Quiz', 'Summer', '2020'),
(690023, 'Midterm', 'Summer', '2020'),
(690024, 'Final', 'Summer', '2020'),
(690025, 'Quiz', 'Autumn', '2020'),
(690026, 'Midterm', 'Autumn', '2020'),
(690027, 'Final', 'Autumn', '2020'),
(690028, 'Quiz', 'Spring', '2020'),
(690029, 'Midterm', 'Spring', '2020'),
(690030, 'Final', 'Spring', '2020'),
(690031, 'Quiz', 'Summer', '2020'),
(690032, 'Midterm', 'Summer', '2020'),
(690033, 'Final', 'Summer', '2020'),
(690034, 'Quiz', 'Autumn', '2020'),
(690035, 'Midterm', 'Autumn', '2020'),
(690036, 'Final', 'Autumn', '2020'),
(690037, 'Quiz', 'Spring', '2020'),
(690038, 'Midterm', 'Spring', '2020'),
(690039, 'Final', 'Spring', '2020'),
(690040, 'Quiz', 'Summer', '2020'),
(690041, 'Midterm', 'Summer', '2020'),
(690042, 'Final', 'Summer', '2020'),
(690043, 'Quiz', 'Autumn', '2020'),
(690044, 'Midterm', 'Autumn', '2020'),
(690045, 'Final', 'Autumn', '2020'),
(690046, 'Quiz', 'Spring', '2020'),
(690047, 'Midterm', 'Spring', '2020'),
(690048, 'Final', 'Spring', '2020'),
(690049, 'Quiz', 'Summer', '2020'),
(690050, 'Midterm', 'Summer', '2020'),
(690051, 'Final', 'Summer', '2020'),
(690052, 'Quiz', 'Autumn', '2020'),
(690053, 'Midterm', 'Autumn', '2020'),
(690054, 'Final', 'Autumn', '2020'),
(690055, 'Quiz', 'Spring', '2020'),
(690056, 'Midterm', 'Spring', '2020'),
(690057, 'Final', 'Spring', '2020'),
(690058, 'Quiz', 'Summer', '2020'),
(690059, 'Midterm', 'Summer', '2020'),
(690060, 'Final', 'Summer', '2020'),
(690061, 'Quiz', 'Autumn', '2020'),
(690062, 'Midterm', 'Autumn', '2020'),
(690063, 'Final', 'Autumn', '2020'),
(690064, 'Quiz', 'Spring', '2020'),
(690065, 'Midterm', 'Spring', '2020'),
(690066, 'Final', 'Spring', '2020'),
(690067, 'Quiz', 'Summer', '2020'),
(690068, 'Midterm', 'Summer', '2020'),
(690069, 'Final', 'Summer', '2020'),
(690070, 'Quiz', 'Autumn', '2020'),
(690071, 'Midterm', 'Autumn', '2020'),
(690072, 'Final', 'Autumn', '2020'),
(690073, 'Quiz', 'Spring', '2020'),
(690074, 'Midterm', 'Spring', '2020'),
(690075, 'Final', 'Spring', '2020'),
(690076, 'Quiz', 'Summer', '2020'),
(690077, 'Midterm', 'Summer', '2020'),
(690078, 'Final', 'Summer', '2020'),
(690079, 'Quiz', 'Autumn', '2020'),
(690080, 'Midterm', 'Autumn', '2020'),
(690081, 'Final', 'Autumn', '2020'),
(690082, 'Quiz', 'Spring', '2020'),
(690083, 'Midterm', 'Spring', '2020'),
(690084, 'Final', 'Spring', '2020'),
(690085, 'Quiz', 'Summer', '2020'),
(690086, 'Midterm', 'Summer', '2020'),
(690087, 'Final', 'Summer', '2020'),
(690088, 'Quiz', 'Autumn', '2020'),
(690089, 'Midterm', 'Autumn', '2020'),
(690090, 'Final', 'Autumn', '2020'),
(690091, 'Quiz', 'Spring', '2020'),
(690092, 'Midterm', 'Spring', '2020'),
(690093, 'Final', 'Spring', '2020'),
(690094, 'Quiz', 'Summer', '2020'),
(690095, 'Midterm', 'Summer', '2020'),
(690096, 'Final', 'Summer', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `ExamID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` (`ExamID`, `QuestionID`) VALUES
(690001, 9900001),
(690001, 9900010),
(690001, 9900019),
(690001, 9900028),
(690001, 9900037),
(690001, 9900046),
(690001, 9900055),
(690001, 9900064),
(690002, 9900002),
(690002, 9900011),
(690002, 9900020),
(690002, 9900029),
(690002, 9900038),
(690002, 9900047),
(690002, 9900056),
(690002, 9900065),
(690003, 9900003),
(690003, 9900012),
(690003, 9900021),
(690003, 9900030),
(690003, 9900039),
(690003, 9900048),
(690003, 9900057),
(690004, 9900004),
(690004, 9900013),
(690004, 9900022),
(690004, 9900031),
(690004, 9900040),
(690004, 9900049),
(690004, 9900058),
(690005, 9900005),
(690005, 9900014),
(690005, 9900023),
(690005, 9900032),
(690005, 9900041),
(690005, 9900050),
(690005, 9900059),
(690006, 9900006),
(690006, 9900015),
(690006, 9900024),
(690006, 9900033),
(690006, 9900042),
(690006, 9900051),
(690006, 9900060),
(690007, 9900007),
(690007, 9900016),
(690007, 9900025),
(690007, 9900034),
(690007, 9900043),
(690007, 9900052),
(690007, 9900061),
(690008, 9900008),
(690008, 9900017),
(690008, 9900026),
(690008, 9900035),
(690008, 9900044),
(690008, 9900053),
(690008, 9900062),
(690009, 9900009),
(690009, 9900018),
(690009, 9900027),
(690009, 9900036),
(690009, 9900045),
(690009, 9900054),
(690009, 9900063);

-- --------------------------------------------------------

--
-- Table structure for table `outline`
--

CREATE TABLE `outline` (
  `SectionID` int(11) NOT NULL,
  `OutlineID` varchar(30) NOT NULL,
  `Lesson_Plan` varchar(5000) NOT NULL,
  `Room_Number` int(11) NOT NULL,
  `Mark_Distribution` varchar(100) NOT NULL,
  `Grading` varchar(1000) NOT NULL,
  `Syllabus` varchar(5000) NOT NULL,
  `Book` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outline`
--

INSERT INTO `outline` (`SectionID`, `OutlineID`, `Lesson_Plan`, `Room_Number`, `Mark_Distribution`, `Grading`, `Syllabus`, `Book`) VALUES
(11001, 'CSE104_1_Spring_2020', 'CSE104 is an introductory course that focuses on the fundamentals of electrical circuits. The course aims to provide students with a strong foundation in circuit analysis techniques, including Kirchhoff\'s laws, node and mesh analysis, Thevenin\'s and Norton\'s theorems, and transient analysis. The course is designed to help students develop critical thinking and problem-solving skills in electrical circuit analysis, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electrical circuit analysis techniques and will be able to apply them to solve complex problems.', 5013, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus1', 'TextBook1'),
(11002, 'CSE104L_1_Spring_2020', 'CSE104 is an introductory course that focuses on the fundamentals of electrical circuits. The course aims to provide students with a strong foundation in circuit analysis techniques, including Kirchhoff\'s laws, node and mesh analysis, Thevenin\'s and Norton\'s theorems, and transient analysis. The course is designed to help students develop critical thinking and problem-solving skills in electrical circuit analysis, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electrical circuit analysis techniques and will be able to apply them to solve complex problems.', 6009, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus2', 'TextBook2'),
(11004, 'CSE203_1_Spring_2020', 'The Data Structures(CSE203) course is designed to introduce students to fundamental data structures and algorithms used in computer science. The course covers topics such as arrays, stacks, queues, linked lists, trees, and graphs, as well as searching and sorting algorithms. Students will learn to analyze the time and space complexity of algorithms, and to implement these data structures and algorithms using programming languages such as C, C++, or Java. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of data structures and algorithms and will be able to design efficient and effective algorithms for solving complex problems.', 7005, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus3', 'TextBook3'),
(11005, 'CSE203L_1_Spring_2020', 'The Data Structures(CSE203) course is designed to introduce students to fundamental data structures and algorithms used in computer science. The course covers topics such as arrays, stacks, queues, linked lists, trees, and graphs, as well as searching and sorting algorithms. Students will learn to analyze the time and space complexity of algorithms, and to implement these data structures and algorithms using programming languages such as C, C++, or Java. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of data structures and algorithms and will be able to design efficient and effective algorithms for solving complex problems.', 8001, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus4', 'TextBook4'),
(11057, 'CSE104_1_Summer_2020', 'CSE104 is an introductory course that focuses on the fundamentals of electrical circuits. The course aims to provide students with a strong foundation in circuit analysis techniques, including Kirchhoff\'s laws, node and mesh analysis, Thevenin\'s and Norton\'s theorems, and transient analysis. The course is designed to help students develop critical thinking and problem-solving skills in electrical circuit analysis, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electrical circuit analysis techniques and will be able to apply them to solve complex problems.', 8997, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus5', 'TextBook5'),
(11058, 'CSE104L_1_Summer_2020', 'CSE104 is an introductory course that focuses on the fundamentals of electrical circuits. The course aims to provide students with a strong foundation in circuit analysis techniques, including Kirchhoff\'s laws, node and mesh analysis, Thevenin\'s and Norton\'s theorems, and transient analysis. The course is designed to help students develop critical thinking and problem-solving skills in electrical circuit analysis, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electrical circuit analysis techniques and will be able to apply them to solve complex problems.', 9993, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus6', 'TextBook6'),
(11060, 'CSE203_1_Summer_2020', 'The Data Structures(CSE203) course is designed to introduce students to fundamental data structures and algorithms used in computer science. The course covers topics such as arrays, stacks, queues, linked lists, trees, and graphs, as well as searching and sorting algorithms. Students will learn to analyze the time and space complexity of algorithms, and to implement these data structures and algorithms using programming languages such as C, C++, or Java. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of data structures and algorithms and will be able to design efficient and effective algorithms for solving complex problems.', 10989, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus7', 'TextBook7'),
(11061, 'CSE203L_1_Summer_2020', 'The Data Structures(CSE203) course is designed to introduce students to fundamental data structures and algorithms used in computer science. The course covers topics such as arrays, stacks, queues, linked lists, trees, and graphs, as well as searching and sorting algorithms. Students will learn to analyze the time and space complexity of algorithms, and to implement these data structures and algorithms using programming languages such as C, C++, or Java. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of data structures and algorithms and will be able to design efficient and effective algorithms for solving complex problems.', 11985, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus8', 'TextBook8'),
(11062, 'CSE204_1_Summer_2020', 'CSE204 is an introductory course that focuses on the fundamentals of digital logic design. The course aims to provide students with a strong foundation in Boolean algebra, logic gates, combinational circuits, sequential circuits, and memory elements. The course is designed to help students develop critical thinking and problem-solving skills in digital logic design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. Students will also learn to use computer-aided design (CAD) tools to simulate and verify the functionality of digital circuits. By the end of the course, students will have a thorough understanding of digital logic design techniques and will be able to apply them to solve complex problems.', 12981, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus9', 'TextBook9'),
(11063, 'CSE204L_1_Summer_2020', 'CSE204 is an introductory course that focuses on the fundamentals of digital logic design. The course aims to provide students with a strong foundation in Boolean algebra, logic gates, combinational circuits, sequential circuits, and memory elements. The course is designed to help students develop critical thinking and problem-solving skills in digital logic design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. Students will also learn to use computer-aided design (CAD) tools to simulate and verify the functionality of digital circuits. By the end of the course, students will have a thorough understanding of digital logic design techniques and will be able to apply them to solve complex problems.', 13977, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus10', 'TextBook10'),
(11064, 'CSE210_1_Summer_2020', 'CSE210 Electronics I is an introductory course that focuses on the fundamentals of electronic devices and circuits. The course aims to provide students with a strong foundation in the principles of electronic devices and their applications in circuit design. The course covers topics such as diodes, bipolar junction transistors (BJTs), field-effect transistors (FETs), operational amplifiers (op-amps), and their applications in various electronic circuits. The course is designed to help students develop critical thinking and problem-solving skills in electronic circuit design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electronic devices and circuits and will be able to apply them to design and analyze complex electronic circuits.', 14973, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus11', 'TextBook11'),
(11065, 'CSE210L_1_Summer_2020', 'CSE210 Electronics I is an introductory course that focuses on the fundamentals of electronic devices and circuits. The course aims to provide students with a strong foundation in the principles of electronic devices and their applications in circuit design. The course covers topics such as diodes, bipolar junction transistors (BJTs), field-effect transistors (FETs), operational amplifiers (op-amps), and their applications in various electronic circuits. The course is designed to help students develop critical thinking and problem-solving skills in electronic circuit design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electronic devices and circuits and will be able to apply them to design and analyze complex electronic circuits.', 15969, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus12', 'TextBook12'),
(11113, 'CSE104_1_Autumn_2020', 'CSE104 is an introductory course that focuses on the fundamentals of electrical circuits. The course aims to provide students with a strong foundation in circuit analysis techniques, including Kirchhoff\'s laws, node and mesh analysis, Thevenin\'s and Norton\'s theorems, and transient analysis. The course is designed to help students develop critical thinking and problem-solving skills in electrical circuit analysis, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electrical circuit analysis techniques and will be able to apply them to solve complex problems.', 16965, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus13', 'TextBook13'),
(11114, 'CSE104L_1_Autumn_2020', 'CSE104 is an introductory course that focuses on the fundamentals of electrical circuits. The course aims to provide students with a strong foundation in circuit analysis techniques, including Kirchhoff\'s laws, node and mesh analysis, Thevenin\'s and Norton\'s theorems, and transient analysis. The course is designed to help students develop critical thinking and problem-solving skills in electrical circuit analysis, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electrical circuit analysis techniques and will be able to apply them to solve complex problems.', 17961, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus14', 'TextBook14'),
(11116, 'CSE203_1_Autumn_2020', 'The Data Structures(CSE203) course is designed to introduce students to fundamental data structures and algorithms used in computer science. The course covers topics such as arrays, stacks, queues, linked lists, trees, and graphs, as well as searching and sorting algorithms. Students will learn to analyze the time and space complexity of algorithms, and to implement these data structures and algorithms using programming languages such as C, C++, or Java. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of data structures and algorithms and will be able to design efficient and effective algorithms for solving complex problems.', 18957, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus15', 'TextBook15'),
(11117, 'CSE203L_1_Autumn_2020', 'The Data Structures(CSE203) course is designed to introduce students to fundamental data structures and algorithms used in computer science. The course covers topics such as arrays, stacks, queues, linked lists, trees, and graphs, as well as searching and sorting algorithms. Students will learn to analyze the time and space complexity of algorithms, and to implement these data structures and algorithms using programming languages such as C, C++, or Java. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of data structures and algorithms and will be able to design efficient and effective algorithms for solving complex problems.', 19953, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus16', 'TextBook16'),
(11118, 'CSE204_1_Autumn_2020', 'CSE204 is an introductory course that focuses on the fundamentals of digital logic design. The course aims to provide students with a strong foundation in Boolean algebra, logic gates, combinational circuits, sequential circuits, and memory elements. The course is designed to help students develop critical thinking and problem-solving skills in digital logic design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. Students will also learn to use computer-aided design (CAD) tools to simulate and verify the functionality of digital circuits. By the end of the course, students will have a thorough understanding of digital logic design techniques and will be able to apply them to solve complex problems.', 20949, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus17', 'TextBook17'),
(11119, 'CSE204L_1_Autumn_2020', 'CSE204 is an introductory course that focuses on the fundamentals of digital logic design. The course aims to provide students with a strong foundation in Boolean algebra, logic gates, combinational circuits, sequential circuits, and memory elements. The course is designed to help students develop critical thinking and problem-solving skills in digital logic design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. Students will also learn to use computer-aided design (CAD) tools to simulate and verify the functionality of digital circuits. By the end of the course, students will have a thorough understanding of digital logic design techniques and will be able to apply them to solve complex problems.', 21945, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus18', 'TextBook18'),
(11120, 'CSE210_1_Autumn_2020', 'CSE210 Electronics I is an introductory course that focuses on the fundamentals of electronic devices and circuits. The course aims to provide students with a strong foundation in the principles of electronic devices and their applications in circuit design. The course covers topics such as diodes, bipolar junction transistors (BJTs), field-effect transistors (FETs), operational amplifiers (op-amps), and their applications in various electronic circuits. The course is designed to help students develop critical thinking and problem-solving skills in electronic circuit design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electronic devices and circuits and will be able to apply them to design and analyze complex electronic circuits.', 22941, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus19', 'TextBook19'),
(11121, 'CSE210L_1_Autumn_2020', 'CSE210 Electronics I is an introductory course that focuses on the fundamentals of electronic devices and circuits. The course aims to provide students with a strong foundation in the principles of electronic devices and their applications in circuit design. The course covers topics such as diodes, bipolar junction transistors (BJTs), field-effect transistors (FETs), operational amplifiers (op-amps), and their applications in various electronic circuits. The course is designed to help students develop critical thinking and problem-solving skills in electronic circuit design, with an emphasis on practical applications. The course will consist of lectures, tutorials, and laboratory sessions, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of electronic devices and circuits and will be able to apply them to design and analyze complex electronic circuits.', 23937, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus20', 'TextBook20'),
(11122, 'CSE211_1_Autumn_2020', 'CSE211 Algorithms is a fundamental course that covers the design and analysis of algorithms. The course aims to provide students with a strong foundation in the basics of algorithmic problem solving and data structures. The course covers topics such as algorithmic complexity, algorithm analysis, data structures, sorting algorithms, searching algorithms, graph algorithms, dynamic programming, and greedy algorithms. The course is designed to help students develop critical thinking and problem-solving skills, with an emphasis on mathematical analysis of algorithms. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of algorithmic problem-solving techniques and will be able to design and analyze efficient algorithms for a variety of computational problems.', 24933, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus21', 'TextBook21'),
(11123, 'CSE211L_1_Autumn_2020', 'CSE211 Algorithms is a fundamental course that covers the design and analysis of algorithms. The course aims to provide students with a strong foundation in the basics of algorithmic problem solving and data structures. The course covers topics such as algorithmic complexity, algorithm analysis, data structures, sorting algorithms, searching algorithms, graph algorithms, dynamic programming, and greedy algorithms. The course is designed to help students develop critical thinking and problem-solving skills, with an emphasis on mathematical analysis of algorithms. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to solve real-world problems. By the end of the course, students will have a thorough understanding of algorithmic problem-solving techniques and will be able to design and analyze efficient algorithms for a variety of computational problems.', 25929, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus22', 'TextBook22'),
(11124, 'CSE213_1_Autumn_2020', 'CSE213 Object-Oriented Programming is an introductory course that focuses on the fundamental concepts of object-oriented programming. The course aims to provide students with a strong foundation in the principles of object-oriented programming, including abstraction, inheritance, polymorphism, encapsulation, and object-oriented design. The course covers topics such as object-oriented programming paradigms, classes, objects, constructors, destructors, inheritance, polymorphism, and exception handling. The course is designed to help students develop critical thinking and problem-solving skills in programming, with an emphasis on practical applications. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of object-oriented programming techniques and will be able to design and develop object-oriented programs for a variety of applications.', 26925, 'Quizzes 3 = 10%\nMidterm = 25%\nFinal = 30%\nAssignments 3 = 5%\nAttendance = 10%\nFinal Project and Pres', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus23', 'TextBook23'),
(11125, 'CSE213L_1_Autumn_2020', 'CSE213 Object-Oriented Programming is an introductory course that focuses on the fundamental concepts of object-oriented programming. The course aims to provide students with a strong foundation in the principles of object-oriented programming, including abstraction, inheritance, polymorphism, encapsulation, and object-oriented design. The course covers topics such as object-oriented programming paradigms, classes, objects, constructors, destructors, inheritance, polymorphism, and exception handling. The course is designed to help students develop critical thinking and problem-solving skills in programming, with an emphasis on practical applications. The course will consist of lectures, tutorials, and programming assignments, where students will have the opportunity to apply the concepts learned in the classroom to real-world scenarios. By the end of the course, students will have a thorough understanding of object-oriented programming techniques and will be able to design and develop object-oriented programs for a variety of applications.', 27921, 'Thesis = 10%\nMidterm = 20%\nLab Report = 20%\nFinal = 50%', '90-100 = A \n85-89 = A-\n80-84 = B+\n75-79 = B\n70-74 = B-\n65-69 = C+\n60-64 = C\n55-59 = C-\n50-54 = D+\n45-49 = D\n0-44 = F ', 'syllabus24', 'TextBook24');

-- --------------------------------------------------------

--
-- Table structure for table `plo`
--

CREATE TABLE `plo` (
  `PLOID` varchar(6) NOT NULL,
  `Description` varchar(40) NOT NULL,
  `ProgramID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plo`
--

INSERT INTO `plo` (`PLOID`, `Description`, `ProgramID`) VALUES
('PLO001', 'Knowledge', 'BCSE'),
('PLO002', 'Requirement Analysis', 'BCSE'),
('PLO003', 'Problem Analysis', 'BCSE'),
('PLO004', 'Design', 'BCSE'),
('PLO005', 'Problem Solving', 'BCSE'),
('PLO006', 'Implementation', 'BCSE'),
('PLO007', 'Experiment and Analysis', 'BCSE'),
('PLO008', 'Community Engagement and Engineering', 'BCSE'),
('PLO009', 'Teamwork', 'BCSE'),
('PLO010', 'Communication', 'BCSE'),
('PLO011', 'Self-Motivated', 'BCSE'),
('PLO012', 'Ethics', 'BCSE'),
('PLO013', 'Process Management', 'BCSE'),
('PLO014', 'Engineering Knowledge', 'BEEE'),
('PLO015', 'Problem Analysis', 'BEEE'),
('PLO016', 'Development of Solutions', 'BEEE'),
('PLO017', 'Investigation', 'BEEE'),
('PLO018', 'Modern Tool Usage', 'BEEE'),
('PLO019', 'The Engineer and Society', 'BEEE'),
('PLO020', 'Environment and Sustainability', 'BEEE'),
('PLO021', 'Ethics', 'BEEE'),
('PLO022', 'Individual Work and Teamwork', 'BEEE'),
('PLO023', 'Comminication', 'BEEE'),
('PLO024', 'Project Management and Finance', 'BEEE'),
('PLO025', 'Life Long Learning', 'BEEE'),
('PLO026', 'Analyze biology at all levels', 'BBCB'),
('PLO027', 'Solve life science problems scientifical', 'BBCB'),
('PLO028', 'Analyze media\'s societal impact', 'BCMN'),
('PLO029', 'Apply cross-platform communication strat', 'BCMN'),
('PLO030', 'Analyze diverse literature', 'BENG'),
('PLO031', 'Communicate effectively through words', 'BENG'),
('PLO032', 'Analyze environmental systems', 'BENV'),
('PLO033', 'Create sustainable solutions', 'BENV'),
('PLO034', 'Solve business problems with technolog', 'BMIS'),
('PLO035', 'Design systems for organizational needs', 'BMIS'),
('PLO036', 'Communicate effectively on tech issues', 'BMIS'),
('PLO037', 'Consider tech ethics in business', 'BMIS'),
('PLO038', 'Create effective marketing strategies', 'BMKT'),
('PLO039', 'Apply marketing principles to products a', 'BMKT'),
('PLO040', 'Analyze marketing campaign effectiveness', 'BMKT'),
('PLO041', 'Consider marketing ethics and legal issu', 'BMKT'),
('PLO042', 'Patient-centered care', 'BPHA'),
('PLO043', 'Drug therapy analysis', 'BPHA'),
('PLO044', 'Communication proficiency', 'BPHA'),
('PLO045', 'Ethical pharmacy practice', 'BPHA'),
('PLO050', 'Research design', 'BBCB'),
('PLO051', 'Bioinformatics analysis', 'BBCB'),
('PLO052', 'Communication Skills', 'BCMN'),
('PLO053', 'Critical Thinking', 'BCMN');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `ProgramID` varchar(4) NOT NULL,
  `Program_Name` varchar(60) NOT NULL,
  `DepartmentID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`ProgramID`, `Program_Name`, `DepartmentID`) VALUES
('BBCB', 'B.Sc. In Biochemistry', 'BCB'),
('BCMN', 'BA in Media & Communication', 'CMN'),
('BCSE', 'B.Sc. In Computer Science & Engineering', 'CSE'),
('BEEE', 'B.Sc. In Electrical & Electronics Engineering', 'EEE'),
('BENG', 'BA in English Literature', 'ENG'),
('BENV', 'B.Sc. In Land and Water Resource Management', 'ENV'),
('BMIS', 'BBA in Management Information Systems', 'MIS'),
('BMKT', 'BBA in Marketing', 'MKT'),
('BPHA', 'Bachelor of Pharmacy', 'PHA'),
('BPHY', 'B.Sc. In Physics', 'PS');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `Question_Description` varchar(1000) NOT NULL,
  `Marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QuestionID`, `Question_Description`, `Marks`) VALUES
(9900001, 'What is the difference between a series and a parallel circuit? Provide an example of each.', 10),
(9900002, 'How do you calculate the total resistance of a circuit containing resistors in series and parallel?', 5),
(9900003, 'What is the voltage divider rule? How is it used to calculate voltage in a circuit?', 10),
(9900004, 'What are the applications of Kirchhoff\'s laws in electrical circuit analysis?', 10),
(9900005, 'Explain the concept of phasors and how they are used in AC circuit analysis.', 5),
(9900006, 'How do you measure the resistance of a resistor using a digital multimeter?', 10),
(9900007, 'What is the purpose of a breadboard in circuit design and prototyping?', 10),
(9900008, 'How do you calculate the voltage and current of a circuit containing resistors in series and parallel?', 5),
(9900009, 'What is the difference between AC and DC voltage and how do you measure them using an oscilloscope?', 10),
(9900010, 'Explain how a diode works and its applications in circuit design.', 10),
(9900011, 'What is propositional logic? Give examples of logical propositions and their negations.', 5),
(9900012, 'What is a set? Define the terms subset, intersection, and union of sets.', 10),
(9900013, 'What are relations and functions? Give examples of each.', 10),
(9900014, 'What is graph theory? Explain the concepts of vertices, edges, and paths.', 5),
(9900015, 'What is counting theory? Explain the principle of inclusion-exclusion and its application in counting problems.', 10),
(9900016, 'What is a data structure? Give examples of different types of data structures.', 10),
(9900017, 'What is an algorithm? Explain the steps involved in designing and analyzing an algorithm.', 5),
(9900018, 'What is a stack? How is it implemented using arrays and linked lists?', 10),
(9900019, 'What is a queue? How is it implemented using arrays and linked lists?', 10),
(9900020, 'What is a tree? Explain the concepts of binary trees, traversals, and binary search trees.', 5),
(9900021, 'How do you implement a stack using an array in C++?', 10),
(9900022, 'How do you implement a queue using a linked list in Java?', 10),
(9900023, 'How do you implement a binary search tree in Python?', 5),
(9900024, 'How do you perform insertion, deletion, and search operations on a binary search tree?', 10),
(9900025, 'How do you implement a hash table in C and handle collisions using linear probing?', 10),
(9900026, 'What is digital logic? Explain the difference between combinational and sequential circuits.', 5),
(9900027, 'What are Boolean algebra and logic gates? Give examples of different types of logic gates.', 10),
(9900028, 'What is the truth table of a logical function? How do you use a truth table to determine the function\'s logic circuit?', 10),
(9900029, 'What is the purpose of a multiplexer? How is it implemented using logic gates?', 5),
(9900030, 'What is the purpose of a flip-flop? How is it used to store data in sequential circuits?', 10),
(9900031, 'How do you implement a logic circuit for a given truth table using logic gates?', 10),
(9900032, 'How do you design a combinational circuit to perform arithmetic operations such as addition and subtraction?', 5),
(9900033, 'How do you design a sequential circuit using flip-flops and logic gates?', 10),
(9900034, 'How do you implement a counter circuit using flip-flops?', 10),
(9900035, 'How do you implement a shift register using flip-flops and logic gates?', 5),
(9900036, 'What is the difference between an ideal op-amp and a real op-amp?', 10),
(9900037, 'Explain the working of a differential amplifier.', 10),
(9900038, 'What is the purpose of biasing in transistor amplifiers?', 5),
(9900039, 'Derive the expression for the voltage gain of a common emitter amplifier.', 10),
(9900040, 'Describe the working of a Schmitt trigger circuit.', 10),
(9900041, 'How can you measure the input and output impedance of a circuit using a signal generator and an oscilloscope?', 5),
(9900042, 'Explain the procedure to measure the frequency response of an RC circuit using an oscilloscope and a function generator.', 10),
(9900043, 'How can you measure the gain and frequency response of a transistor amplifier using an oscilloscope and a signal generator?', 10),
(9900044, 'Describe the procedure to measure the characteristics of a diode using a multimeter and a DC power supply.', 5),
(9900045, 'How can you measure the biasing parameters of a transistor using a multimeter and a DC power supply?', 10),
(9900046, 'Explain the difference between a recursive algorithm and an iterative algorithm.', 10),
(9900047, 'Describe the working of the binary search algorithm and analyze its time complexity.', 5),
(9900048, 'What is the purpose of dynamic programming in algorithm design?', 10),
(9900049, 'Discuss the concept of graph traversal algorithms and their applications.', 10),
(9900050, 'How can you design an algorithm for finding the shortest path between two nodes in a weighted graph?', 5),
(9900051, 'Implement the bubble sort algorithm and analyze its time complexity.', 10),
(9900052, 'Write a program to implement the binary search algorithm for a given sorted array of integers.', 10),
(9900053, 'Implement the dynamic programming approach for finding the Fibonacci sequence.', 5),
(9900054, 'Write a program to implement the Dijkstra algorithm for finding the shortest path in a weighted graph.', 10),
(9900055, 'Implement the depth-first search algorithm for a given undirected graph.', 10),
(9900056, 'What is the difference between a class and an object in object-oriented programming?', 5),
(9900057, 'Explain the concept of inheritance and its benefits in object-oriented programming.', 10),
(9900058, 'Discuss the purpose of polymorphism in object-oriented programming.', 10),
(9900059, 'What is encapsulation and why is it important in object-oriented programming?', 5),
(9900060, 'How can you implement an abstract class and interface in object-oriented programming?', 10),
(9900061, 'Write a program to implement the concept of inheritance in object-oriented programming.', 10),
(9900062, 'Create a program that demonstrates polymorphism in object-oriented programming.', 5),
(9900063, 'Implement encapsulation in a program for a given class in object-oriented programming.', 10),
(9900064, 'Design a program that implements an abstract class and interface in object-oriented programming.', 10),
(9900065, 'Write a program that demonstrates the use of exception handling in object-oriented programming.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `registered_course`
--

CREATE TABLE `registered_course` (
  `StudentID` varchar(7) NOT NULL,
  `RegistrationID` int(11) NOT NULL,
  `Date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_course`
--

INSERT INTO `registered_course` (`StudentID`, `RegistrationID`, `Date`) VALUES
('2020977', 20200001, '20/1/2020'),
('2020977', 20200008, '20/5/2020'),
('2020977', 20200022, '20/10/2020'),
('2022010', 20200037, '20/10/2020'),
('2022020', 20200040, '20/10/2020'),
('2022030', 20200042, '20/10/2020'),
('2022040', 20200006, '20/1/2020'),
('2022040', 20200013, '20/5/2020'),
('2022040', 20200027, '20/10/2020'),
('2022050', 20200021, '20/5/2020'),
('2022050', 20200035, '20/10/2020'),
('2030077', 20200017, '20/5/2020'),
('2030077', 20200031, '20/10/2020'),
('2030087', 20200038, '20/10/2020'),
('2030097', 20200041, '20/10/2020'),
('2030107', 20200019, '20/5/2020'),
('2030107', 20200033, '20/10/2020'),
('2030117', 20200007, '20/1/2020'),
('2030117', 20200014, '20/5/2020'),
('2030117', 20200028, '20/10/2020'),
('2030127', 20200015, '20/5/2020'),
('2030127', 20200029, '20/10/2020'),
('2030137', 20200036, '20/10/2020'),
('2030147', 20200039, '20/10/2020'),
('2030157', 20200018, '20/5/2020'),
('2030157', 20200032, '20/10/2020'),
('2030167', 20200043, '20/10/2020'),
('2030177', 20200020, '20/5/2020'),
('2030177', 20200034, '20/10/2020'),
('2030187', 20200002, '20/1/2020'),
('2030187', 20200009, '20/5/2020'),
('2030187', 20200023, '20/10/2020'),
('2030197', 20200003, '20/1/2020'),
('2030197', 20200010, '20/5/2020'),
('2030197', 20200024, '20/10/2020'),
('2030207', 20200004, '20/1/2020'),
('2030207', 20200011, '20/5/2020'),
('2030207', 20200025, '20/10/2020'),
('2030217', 20200005, '20/1/2020'),
('2030217', 20200012, '20/5/2020'),
('2030217', 20200026, '20/10/2020'),
('2030227', 20200044, '20/10/2020'),
('2030237', 20200016, '20/5/2020'),
('2030237', 20200030, '20/10/2020');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `RegistrationID` int(11) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `Semester` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`RegistrationID`, `Year`, `Semester`) VALUES
(20200001, '2020', 'Spring'),
(20200002, '2020', 'Spring'),
(20200003, '2020', 'Spring'),
(20200004, '2020', 'Spring'),
(20200005, '2020', 'Spring'),
(20200006, '2020', 'Spring'),
(20200007, '2020', 'Spring'),
(20200008, '2020', 'Summer'),
(20200009, '2020', 'Summer'),
(20200010, '2020', 'Summer'),
(20200011, '2020', 'Summer'),
(20200012, '2020', 'Summer'),
(20200013, '2020', 'Summer'),
(20200014, '2020', 'Summer'),
(20200015, '2020', 'Summer'),
(20200016, '2020', 'Summer'),
(20200017, '2020', 'Summer'),
(20200018, '2020', 'Summer'),
(20200019, '2020', 'Summer'),
(20200020, '2020', 'Summer'),
(20200021, '2020', 'Summer'),
(20200022, '2020', 'Autumn'),
(20200023, '2020', 'Autumn'),
(20200024, '2020', 'Autumn'),
(20200025, '2020', 'Autumn'),
(20200026, '2020', 'Autumn'),
(20200027, '2020', 'Autumn'),
(20200028, '2020', 'Autumn'),
(20200029, '2020', 'Autumn'),
(20200030, '2020', 'Autumn'),
(20200031, '2020', 'Autumn'),
(20200032, '2020', 'Autumn'),
(20200033, '2020', 'Autumn'),
(20200034, '2020', 'Autumn'),
(20200035, '2020', 'Autumn'),
(20200036, '2020', 'Autumn'),
(20200037, '2020', 'Autumn'),
(20200038, '2020', 'Autumn'),
(20200039, '2020', 'Autumn'),
(20200040, '2020', 'Autumn'),
(20200041, '2020', 'Autumn'),
(20200042, '2020', 'Autumn'),
(20200043, '2020', 'Autumn'),
(20200044, '2020', 'Autumn');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `SchoolID` varchar(6) NOT NULL,
  `School_Name` varchar(60) NOT NULL,
  `DeEmployeeID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`SchoolID`, `School_Name`, `DeEmployeeID`) VALUES
('SBE', 'School of Business & Entrepreneurship', '4041'),
('SELS', 'School of Environment & Life Sciences', '4040'),
('SETS', 'School of Engineering, Technology & Sciences', '4007'),
('SLASS', 'School of Liberal Arts & Social Sciences', '4039'),
('SPPH', 'School of Pharmacy and Public Health', '4038');

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

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`SectionID`, `Section_Number`, `Semester`, `Year`, `CourseID`, `IEmployeeID`) VALUES
(11001, 1, 'Spring', '2020', 'CSE104 ', '1065'),
(11002, 1, 'Spring', '2020', 'CSE104L', 'I001'),
(11003, 1, 'Spring', '2020', 'CSE201 ', 'I002'),
(11004, 1, 'Spring', '2020', 'CSE203', 'I003'),
(11005, 1, 'Spring', '2020', 'CSE203L', 'I004'),
(11006, 1, 'Spring', '2020', 'CSE204', 'I005'),
(11007, 1, 'Spring', '2020', 'CSE204L', 'I006'),
(11008, 1, 'Spring', '2020', 'CSE210', 'I008'),
(11009, 1, 'Spring', '2020', 'CSE210L', 'I009'),
(11010, 1, 'Spring', '2020', 'CSE211', 'I010'),
(11011, 1, 'Spring', '2020', 'CSE211L', 'I011'),
(11012, 1, 'Spring', '2020', 'CSE213', 'I012'),
(11013, 1, 'Spring', '2020', 'CSE213L', 'I013'),
(11014, 1, 'Spring', '2020', 'CSE214 ', 'I014'),
(11015, 1, 'Spring', '2020', 'CSE216', 'I015'),
(11016, 1, 'Spring', '2020', 'CSE216L', 'I016'),
(11017, 1, 'Spring', '2020', 'EEE131 ', 'I017'),
(11018, 1, 'Spring', '2020', 'EEE132 ', 'I018'),
(11019, 1, 'Spring', '2020', 'EEE211 ', 'I019'),
(11020, 1, 'Spring', '2020', 'EEE211L', 'I020'),
(11021, 1, 'Spring', '2020', 'EEE221 ', 'I021'),
(11022, 1, 'Spring', '2020', 'EEE223 ', 'I022'),
(11023, 1, 'Spring', '2020', 'EEE231 ', 'I023'),
(11024, 1, 'Spring', '2020', 'EEE232 ', 'I024'),
(11025, 1, 'Spring', '2020', 'EEE232L', 'I025'),
(11026, 1, 'Spring', '2020', 'BCB103', 'I026'),
(11027, 1, 'Spring', '2020', 'BCB103L', 'I027'),
(11028, 1, 'Spring', '2020', 'BCB202', 'I028'),
(11029, 1, 'Spring', '2020', 'BCB202L', 'I029'),
(11030, 1, 'Spring', '2020', 'CMN201', 'I030'),
(11031, 1, 'Spring', '2020', 'CMN202', 'I031'),
(11032, 1, 'Spring', '2020', 'CMN203', 'I032'),
(11033, 1, 'Spring', '2020', 'ENG201', 'I033'),
(11034, 1, 'Spring', '2020', 'ENG202', 'I034'),
(11035, 1, 'Spring', '2020', 'ENG203', 'I035'),
(11036, 1, 'Spring', '2020', 'ENV201', 'I036'),
(11037, 1, 'Spring', '2020', 'POP201', 'I037'),
(11038, 1, 'Spring', '2020', 'ENV202', 'I042'),
(11039, 1, 'Spring', '2020', 'MIS401', 'I043'),
(11040, 1, 'Spring', '2020', 'MIS405', 'I044'),
(11041, 1, 'Spring', '2020', 'MIS430', 'I045'),
(11042, 1, 'Spring', '2020', 'MKT302', 'I046'),
(11043, 1, 'Spring', '2020', 'MKT340', 'I047'),
(11044, 1, 'Spring', '2020', 'MKT350', 'I048'),
(11045, 1, 'Spring', '2020', 'PHA 101', 'I049'),
(11046, 1, 'Spring', '2020', 'PHA 102', 'I050'),
(11047, 1, 'Spring', '2020', 'PHA 102', 'I051'),
(11048, 1, 'Spring', '2020', 'PHY 201', 'I052'),
(11049, 1, 'Spring', '2020', 'PHY 202', 'I053'),
(11050, 1, 'Spring', '2020', 'PHY 203', 'I054'),
(11051, 1, 'Spring', '2020', 'PHY101', 'I055'),
(11052, 1, 'Spring', '2020', 'PHY101L', 'I056'),
(11053, 1, 'Spring', '2020', 'PHY102', 'I057'),
(11054, 1, 'Spring', '2020', 'PHY102L', 'I058'),
(11055, 1, 'Spring', '2020', 'PHY443', 'I062'),
(11056, 1, 'Spring', '2020', 'PHY444', 'I063'),
(11057, 1, 'Summer', '2020', 'CSE104 ', '1065'),
(11058, 1, 'Summer', '2020', 'CSE104L', 'I001'),
(11059, 1, 'Summer', '2020', 'CSE201 ', 'I002'),
(11060, 1, 'Summer', '2020', 'CSE203', 'I003'),
(11061, 1, 'Summer', '2020', 'CSE203L', 'I004'),
(11062, 1, 'Summer', '2020', 'CSE204', 'I005'),
(11063, 1, 'Summer', '2020', 'CSE204L', 'I006'),
(11064, 1, 'Summer', '2020', 'CSE210', 'I008'),
(11065, 1, 'Summer', '2020', 'CSE210L', 'I009'),
(11066, 1, 'Summer', '2020', 'CSE211', 'I010'),
(11067, 1, 'Summer', '2020', 'CSE211L', 'I011'),
(11068, 1, 'Summer', '2020', 'CSE213', 'I012'),
(11069, 1, 'Summer', '2020', 'CSE213L', 'I013'),
(11070, 1, 'Summer', '2020', 'CSE214 ', 'I014'),
(11071, 1, 'Summer', '2020', 'CSE216', 'I015'),
(11072, 1, 'Summer', '2020', 'CSE216L', 'I016'),
(11073, 1, 'Summer', '2020', 'EEE131 ', 'I017'),
(11074, 1, 'Summer', '2020', 'EEE132 ', 'I018'),
(11075, 1, 'Summer', '2020', 'EEE211 ', 'I019'),
(11076, 1, 'Summer', '2020', 'EEE211L', 'I020'),
(11077, 1, 'Summer', '2020', 'EEE221 ', 'I021'),
(11078, 1, 'Summer', '2020', 'EEE223 ', 'I022'),
(11079, 1, 'Summer', '2020', 'EEE231 ', 'I023'),
(11080, 1, 'Summer', '2020', 'EEE232 ', 'I024'),
(11081, 1, 'Summer', '2020', 'EEE232L', 'I025'),
(11082, 1, 'Summer', '2020', 'BCB103', 'I026'),
(11083, 1, 'Summer', '2020', 'BCB103L', 'I027'),
(11084, 1, 'Summer', '2020', 'BCB202', 'I028'),
(11085, 1, 'Summer', '2020', 'BCB202L', 'I029'),
(11086, 1, 'Summer', '2020', 'CMN201', 'I030'),
(11087, 1, 'Summer', '2020', 'CMN202', 'I031'),
(11088, 1, 'Summer', '2020', 'CMN203', 'I032'),
(11089, 1, 'Summer', '2020', 'ENG201', 'I033'),
(11090, 1, 'Summer', '2020', 'ENG202', 'I034'),
(11091, 1, 'Summer', '2020', 'ENG203', 'I035'),
(11092, 1, 'Summer', '2020', 'ENV201', 'I036'),
(11093, 1, 'Summer', '2020', 'POP201', 'I037'),
(11094, 1, 'Summer', '2020', 'ENV202', 'I042'),
(11095, 1, 'Summer', '2020', 'MIS401', 'I043'),
(11096, 1, 'Summer', '2020', 'MIS405', 'I044'),
(11097, 1, 'Summer', '2020', 'MIS430', 'I045'),
(11098, 1, 'Summer', '2020', 'MKT302', 'I046'),
(11099, 1, 'Summer', '2020', 'MKT340', 'I047'),
(11100, 1, 'Summer', '2020', 'MKT350', 'I048'),
(11101, 1, 'Summer', '2020', 'PHA 101', 'I049'),
(11102, 1, 'Summer', '2020', 'PHA 102', 'I050'),
(11103, 1, 'Summer', '2020', 'PHA 102', 'I051'),
(11104, 1, 'Summer', '2020', 'PHY 201', 'I052'),
(11105, 1, 'Summer', '2020', 'PHY 202', 'I053'),
(11106, 1, 'Summer', '2020', 'PHY 203', 'I054'),
(11107, 1, 'Summer', '2020', 'PHY101', 'I055'),
(11108, 1, 'Summer', '2020', 'PHY101L', 'I056'),
(11109, 1, 'Summer', '2020', 'PHY102', 'I057'),
(11110, 1, 'Summer', '2020', 'PHY102L', 'I058'),
(11111, 1, 'Summer', '2020', 'PHY443', 'I062'),
(11112, 1, 'Summer', '2020', 'PHY444', 'I063'),
(11113, 1, 'Autumn', '2020', 'CSE104 ', '1065'),
(11114, 1, 'Autumn', '2020', 'CSE104L', 'I001'),
(11115, 1, 'Autumn', '2020', 'CSE201 ', 'I002'),
(11116, 1, 'Autumn', '2020', 'CSE203', 'I003'),
(11117, 1, 'Autumn', '2020', 'CSE203L', 'I004'),
(11118, 1, 'Autumn', '2020', 'CSE204', 'I005'),
(11119, 1, 'Autumn', '2020', 'CSE204L', 'I006'),
(11120, 1, 'Autumn', '2020', 'CSE210', 'I008'),
(11121, 1, 'Autumn', '2020', 'CSE210L', 'I009'),
(11122, 1, 'Autumn', '2020', 'CSE211', 'I010'),
(11123, 1, 'Autumn', '2020', 'CSE211L', 'I011'),
(11124, 1, 'Autumn', '2020', 'CSE213', 'I012'),
(11125, 1, 'Autumn', '2020', 'CSE213L', 'I013'),
(11126, 1, 'Autumn', '2020', 'CSE214 ', 'I014'),
(11127, 1, 'Autumn', '2020', 'CSE216', 'I015'),
(11128, 1, 'Autumn', '2020', 'CSE216L', 'I016'),
(11129, 1, 'Autumn', '2020', 'EEE131 ', 'I017'),
(11130, 1, 'Autumn', '2020', 'EEE132 ', 'I018'),
(11131, 1, 'Autumn', '2020', 'EEE211 ', 'I019'),
(11132, 1, 'Autumn', '2020', 'EEE211L', 'I020'),
(11133, 1, 'Autumn', '2020', 'EEE221 ', 'I021'),
(11134, 1, 'Autumn', '2020', 'EEE223 ', 'I022'),
(11135, 1, 'Autumn', '2020', 'EEE231 ', 'I023'),
(11136, 1, 'Autumn', '2020', 'EEE232 ', 'I024'),
(11137, 1, 'Autumn', '2020', 'EEE232L', 'I025'),
(11138, 1, 'Autumn', '2020', 'BCB103', 'I026'),
(11139, 1, 'Autumn', '2020', 'BCB103L', 'I027'),
(11140, 1, 'Autumn', '2020', 'BCB202', 'I028'),
(11141, 1, 'Autumn', '2020', 'BCB202L', 'I029'),
(11142, 1, 'Autumn', '2020', 'CMN201', 'I030'),
(11143, 1, 'Autumn', '2020', 'CMN202', 'I031'),
(11144, 1, 'Autumn', '2020', 'CMN203', 'I032'),
(11145, 1, 'Autumn', '2020', 'ENG201', 'I033'),
(11146, 1, 'Autumn', '2020', 'ENG202', 'I034'),
(11147, 1, 'Autumn', '2020', 'ENG203', 'I035'),
(11148, 1, 'Autumn', '2020', 'ENV201', 'I036'),
(11149, 1, 'Autumn', '2020', 'POP201', 'I037'),
(11150, 1, 'Autumn', '2020', 'ENV202', 'I042'),
(11151, 1, 'Autumn', '2020', 'MIS401', 'I043'),
(11152, 1, 'Autumn', '2020', 'MIS405', 'I044'),
(11153, 1, 'Autumn', '2020', 'MIS430', 'I045'),
(11154, 1, 'Autumn', '2020', 'MKT302', 'I046'),
(11155, 1, 'Autumn', '2020', 'MKT340', 'I047'),
(11156, 1, 'Autumn', '2020', 'MKT350', 'I048'),
(11157, 1, 'Autumn', '2020', 'PHA 101', 'I049'),
(11158, 1, 'Autumn', '2020', 'PHA 102', 'I050'),
(11159, 1, 'Autumn', '2020', 'PHA 102', 'I051'),
(11160, 1, 'Autumn', '2020', 'PHY 201', 'I052'),
(11161, 1, 'Autumn', '2020', 'PHY 202', 'I053'),
(11162, 1, 'Autumn', '2020', 'PHY 203', 'I054'),
(11163, 1, 'Autumn', '2020', 'PHY101', 'I055'),
(11164, 1, 'Autumn', '2020', 'PHY101L', 'I056'),
(11165, 1, 'Autumn', '2020', 'PHY102', 'I057'),
(11166, 1, 'Autumn', '2020', 'PHY102L', 'I058'),
(11167, 1, 'Autumn', '2020', 'PHY443', 'I062'),
(11168, 1, 'Autumn', '2020', 'PHY444', 'I063');

-- --------------------------------------------------------

--
-- Table structure for table `section_registration`
--

CREATE TABLE `section_registration` (
  `SectionID` int(11) NOT NULL,
  `RegistrationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section_registration`
--

INSERT INTO `section_registration` (`SectionID`, `RegistrationID`) VALUES
(11001, 20200001),
(11001, 20200002),
(11001, 20200003),
(11001, 20200004),
(11001, 20200005),
(11001, 20200006),
(11001, 20200007),
(11002, 20200001),
(11002, 20200002),
(11002, 20200003),
(11002, 20200004),
(11002, 20200005),
(11002, 20200006),
(11002, 20200007),
(11004, 20200001),
(11004, 20200002),
(11004, 20200003),
(11004, 20200004),
(11004, 20200005),
(11004, 20200006),
(11004, 20200007),
(11005, 20200001),
(11005, 20200002),
(11005, 20200003),
(11005, 20200004),
(11005, 20200005),
(11005, 20200006),
(11005, 20200007),
(11057, 20200015),
(11057, 20200016),
(11057, 20200017),
(11057, 20200018),
(11057, 20200019),
(11057, 20200020),
(11057, 20200021),
(11058, 20200015),
(11058, 20200016),
(11058, 20200017),
(11058, 20200018),
(11058, 20200019),
(11058, 20200020),
(11058, 20200021),
(11060, 20200015),
(11060, 20200016),
(11060, 20200017),
(11060, 20200018),
(11060, 20200019),
(11060, 20200020),
(11060, 20200021),
(11061, 20200015),
(11061, 20200016),
(11061, 20200017),
(11061, 20200018),
(11061, 20200019),
(11061, 20200020),
(11061, 20200021),
(11062, 20200008),
(11062, 20200009),
(11062, 20200010),
(11062, 20200011),
(11062, 20200012),
(11062, 20200013),
(11062, 20200014),
(11063, 20200008),
(11063, 20200009),
(11063, 20200010),
(11063, 20200011),
(11063, 20200012),
(11063, 20200013),
(11063, 20200014),
(11064, 20200008),
(11064, 20200009),
(11064, 20200010),
(11064, 20200011),
(11064, 20200012),
(11064, 20200013),
(11064, 20200014),
(11065, 20200008),
(11065, 20200009),
(11065, 20200010),
(11065, 20200011),
(11065, 20200012),
(11065, 20200013),
(11065, 20200014),
(11113, 20200036),
(11113, 20200037),
(11113, 20200038),
(11113, 20200039),
(11113, 20200040),
(11113, 20200041),
(11113, 20200042),
(11113, 20200043),
(11113, 20200044),
(11114, 20200036),
(11114, 20200037),
(11114, 20200038),
(11114, 20200039),
(11114, 20200040),
(11114, 20200041),
(11114, 20200042),
(11114, 20200043),
(11114, 20200044),
(11116, 20200036),
(11116, 20200037),
(11116, 20200038),
(11116, 20200039),
(11116, 20200040),
(11116, 20200041),
(11116, 20200042),
(11116, 20200043),
(11116, 20200044),
(11117, 20200036),
(11117, 20200037),
(11117, 20200038),
(11117, 20200039),
(11117, 20200040),
(11117, 20200041),
(11117, 20200042),
(11117, 20200043),
(11117, 20200044),
(11118, 20200029),
(11118, 20200030),
(11118, 20200031),
(11118, 20200032),
(11118, 20200033),
(11118, 20200034),
(11118, 20200035),
(11119, 20200029),
(11119, 20200030),
(11119, 20200031),
(11119, 20200032),
(11119, 20200033),
(11119, 20200034),
(11119, 20200035),
(11120, 20200029),
(11120, 20200030),
(11120, 20200031),
(11120, 20200032),
(11120, 20200033),
(11120, 20200034),
(11120, 20200035),
(11121, 20200029),
(11121, 20200030),
(11121, 20200031),
(11121, 20200032),
(11121, 20200033),
(11121, 20200034),
(11121, 20200035),
(11122, 20200022),
(11122, 20200023),
(11122, 20200024),
(11122, 20200025),
(11122, 20200026),
(11122, 20200027),
(11122, 20200028),
(11123, 20200022),
(11123, 20200023),
(11123, 20200024),
(11123, 20200025),
(11123, 20200026),
(11123, 20200027),
(11123, 20200028),
(11124, 20200022),
(11124, 20200023),
(11124, 20200024),
(11124, 20200025),
(11124, 20200026),
(11124, 20200027),
(11124, 20200028),
(11125, 20200022),
(11125, 20200023),
(11125, 20200024),
(11125, 20200025),
(11125, 20200026),
(11125, 20200027),
(11125, 20200028);

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

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `First_Name`, `Last_Name`, `Password`, `Address`, `Gender`, `Date_Of_Birth`, `Enrollment_Date`, `Email`, `Phone`, `ProgramID`) VALUES
('2020600', 'William Jefferson', 'Mondal', '10willam', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Male', '04/01/2000', '21/5/2020', '2020600@iub.edu.bd', 1700000264, 'BBCB'),
('2020975', 'Fardin Afsan', 'Shafi', '10shafi', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '03/01/2000', '21/5/2020', '2020975@iub.edu.bd', 1700000263, 'BCMN'),
('2020977', 'Anannya', 'Preeta', '10preeta', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '02/01/2000', '01/01/2020', '2020977@iub.edu.bd', 1700000262, 'BCSE'),
('2022001', 'Md. Abdullah', 'Al Mamun', '100a0001', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', 'Male', '01/01/2002', '01/01/2020', '2022001@iub.edu.bd', 1700000001, 'BEEE'),
('2022002', 'Tahmina', 'Akhtar', '100b0002', 'House No. 44, Jubilee Road, Mashima, Chittagong', 'Female', '02/01/2002', '01/01/2020', '2022002@iub.edu.bd', 1700000002, 'BENG'),
('2022003', 'Md. Akbar', 'Hossain', '100a0002', 'House No. 20, College Road, Sylhet Bazar, Sylhet', 'Male', '03/01/2002', '01/01/2020', '2022003@iub.edu.bd', 1700000003, 'BENV'),
('2022004', 'Farzana', 'Akhter', '100b0003', 'House No. 18, Police Line Road, New Market, Rangpur', 'Female', '04/01/2002', '21/5/2020', '2022004@iub.edu.bd', 1700000004, 'BMIS'),
('2022005', 'Md. Habibur', 'Rahman', '100a0003', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', 'Male', '05/01/2002', '21/5/2020', '2022005@iub.edu.bd', 1700000005, 'BMKT'),
('2022006', 'Nasrin', 'Akhter', '100b0004', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', 'Female', '06/01/2002', '21/5/2020', '2022006@iub.edu.bd', 1700000006, 'BPHA'),
('2022007', 'Md. Ruhul', 'Amin', '100a0004', 'House No. 9, Jail Road, Sadar Bazar, Tangail', 'Male', '07/01/2002', '16/10/2020', '2022007@iub.edu.bd', 1700000007, 'BPHY'),
('2022008', 'Naima', 'Begum', '100b0005', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', 'Female', '08/01/2002', '16/10/2020', '2022008@iub.edu.bd', 1700000008, 'BBCB'),
('2022009', 'Md. Saiful', 'Islam', '100a0005', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', 'Male', '09/01/2002', '16/10/2020', '2022009@iub.edu.bd', 1700000009, 'BCMN'),
('2022010', 'Ayesha', 'Begum', '100b0006', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', 'Female', '10/01/2002', '16/10/2020', '2022010@iub.edu.bd', 1700000010, 'BCSE'),
('2022011', 'Md. Jahirul', 'Islam', '100a0006', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', 'Male', '11/01/2002', '01/01/2020', '2022011@iub.edu.bd', 1700000011, 'BEEE'),
('2022012', 'Farhana', 'Khatun', '100b0007', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', 'Female', '12/01/2002', '01/01/2020', '2022012@iub.edu.bd', 1700000012, 'BENG'),
('2022013', 'Md. Faruk', 'Hossain', '100a0007', 'House No. 25, Dhap Road, Dhap, Rangpur', 'Male', '13/01/2002', '21/5/2020', '2022013@iub.edu.bd', 1700000013, 'BENV'),
('2022014', 'Sharmin', 'Sultana', '100b0008', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', 'Female', '14/01/2002', '16/10/2020', '2022014@iub.edu.bd', 1700000014, 'BMIS'),
('2022015', 'Md. Hasan', 'Ali', '100a0008', 'House No. 7, Elephant Road, New Market, Dhaka', 'Male', '15/01/2002', '16/10/2020', '2022015@iub.edu.bd', 1700000015, 'BMKT'),
('2022016', 'Salma', 'Khatun', '100b0009', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', 'Female', '16/01/2002', '01/01/2020', '2022016@iub.edu.bd', 1700000016, 'BPHA'),
('2022017', 'Md. Nurul', 'Islam', '100a0009', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', 'Male', '17/01/2002', '01/01/2020', '2022017@iub.edu.bd', 1700000017, 'BPHY'),
('2022018', 'Tahira', 'Akhtar', '100b0010', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', 'Female', '18/01/2002', '16/10/2020', '2022018@iub.edu.bd', 1700000018, 'BBCB'),
('2022019', 'Md. Ashraful', 'Haque', '100a0010', 'House No. 40, Purbani Road, Purbani, Comilla', 'Male', '19/01/2002', '16/10/2020', '2022019@iub.edu.bd', 1700000019, 'BCMN'),
('2022020', 'Marufa', 'Akter', '100b0011', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', 'Female', '20/01/2002', '16/10/2020', '2022020@iub.edu.bd', 1700000020, 'BCSE'),
('2022021', 'Md. Mahbub', 'Hossain', '100a0011', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', 'Male', '21/01/2002', '16/10/2020', '2022021@iub.edu.bd', 1700000021, 'BEEE'),
('2022022', 'Nusrat', 'Jahan', '100b0012', 'House No. 17, Kalibari Road, Kalibari, Sylhet', 'Female', '22/01/2002', '01/01/2020', '2022022@iub.edu.bd', 1700000022, 'BENG'),
('2022023', 'Md. Azizul', 'Islam', '100a0012', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', 'Male', '23/01/2002', '21/5/2020', '2022023@iub.edu.bd', 1700000023, 'BENV'),
('2022024', 'Rabeya', 'Khatun', '100b0013', 'House No. 29, Biswanath Road, Biswanath, Sylhet', 'Female', '24/01/2002', '16/10/2020', '2022024@iub.edu.bd', 1700000024, 'BMIS'),
('2022025', 'Md. Rashedul', 'Islam', '100a0013', 'House No. 27, Jhautala Road, Jhautala, Khulna', 'Male', '25/01/2002', '01/01/2020', '2022025@iub.edu.bd', 1700000025, 'BMKT'),
('2022026', 'Jannatul', 'Ferdous', '100b0014', 'House No. 11, BRTC Road, Basundhara, Rangpur', 'Female', '26/01/2002', '01/01/2020', '2022026@iub.edu.bd', 1700000026, 'BPHA'),
('2022027', 'Md. Shohag', 'Ali', '100a0014', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', 'Male', '27/01/2002', '01/01/2020', '2022027@iub.edu.bd', 1700000027, 'BPHY'),
('2022028', 'Anika', 'Khan', '100b0015', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', 'Female', '28/01/2002', '21/5/2020', '2022028@iub.edu.bd', 1700000028, 'BBCB'),
('2022029', 'Md. Touhidul', 'Islam', '100a0015', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', 'Male', '29/01/2002', '21/5/2020', '2022029@iub.edu.bd', 1700000029, 'BCMN'),
('2022030', 'Sabina', 'Akter', '100b0016', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', 'Female', '30/01/2002', '16/10/2020', '2022030@iub.edu.bd', 1700000030, 'BCSE'),
('2022031', 'Md. Nazmul', 'Islam', '100a0016', 'House No. 37, Feni Road, Feni, Comilla', 'Male', '31/01/2002', '16/10/2020', '2022031@iub.edu.bd', 1700000031, 'BEEE'),
('2022032', 'Sumaiya', 'Akhter', '100b0017', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', 'Female', '01/02/2002', '01/01/2020', '2022032@iub.edu.bd', 1700000032, 'BENG'),
('2022033', 'Md. Shahidul', 'Islam', '100a0017', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', 'Male', '02/02/2002', '01/01/2020', '2022033@iub.edu.bd', 1700000033, 'BENV'),
('2022034', 'Morjina', 'Begum', '100b0018', 'House No. 38, Kaptai Road, Kaptai, Rangamati', 'Female', '03/02/2002', '21/5/2020', '2022034@iub.edu.bd', 1700000034, 'BMIS'),
('2022035', 'Md. Shamsul', 'Haque', '100a0018', 'House No. 42, Mawna Road, Mawna, Gazipur', 'Male', '04/02/2002', '16/10/2020', '2022035@iub.edu.bd', 1700000035, 'BMKT'),
('2022036', 'Shamima', 'Akter', '100b0019', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', 'Female', '05/02/2002', '16/10/2020', '2022036@iub.edu.bd', 1700000036, 'BPHA'),
('2022037', 'Md. Abdul', 'Mannan', '100a0019', 'House No. 47, Momin Road, Momin Road, Chittagong', 'Male', '06/02/2002', '01/01/2020', '2022037@iub.edu.bd', 1700000037, 'BPHY'),
('2022038', 'Nasima', 'Khatun', '100b0020', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Female', '07/02/2002', '16/10/2020', '2022038@iub.edu.bd', 1700000038, 'BBCB'),
('2022039', 'Md. Aminul', 'Islam', '100a0020', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', 'Male', '08/02/2002', '21/5/2020', '2022039@iub.edu.bd', 1700000039, 'BCMN'),
('2022040', 'Afrin', 'Akter', '100b0021', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', 'Female', '09/02/2002', '01/01/2020', '2022040@iub.edu.bd', 1700000040, 'BCSE'),
('2022041', 'Md. Zahidul', 'Islam', '100a0021', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', 'Male', '10/02/2002', '16/10/2020', '2022041@iub.edu.bd', 1700000041, 'BEEE'),
('2022042', 'Shilpi', 'Akter', '100b0022', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', 'Female', '11/02/2002', '16/10/2020', '2022042@iub.edu.bd', 1700000042, 'BENG'),
('2022043', 'Md. Mahfuzur', 'Rahman', '100a0022', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', 'Male', '12/02/2002', '21/5/2020', '2022043@iub.edu.bd', 1700000043, 'BENV'),
('2022044', 'Taslima', 'Khatun', '100b0023', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', 'Female', '13/02/2002', '01/01/2020', '2022044@iub.edu.bd', 1700000044, 'BMIS'),
('2022045', 'Md. Sajjad', 'Hossain', '100a0023', 'House No. 65, GEC Road, GEC, Chittagong', 'Male', '14/02/2002', '16/10/2020', '2022045@iub.edu.bd', 1700000045, 'BMKT'),
('2022046', 'Fariha', 'Akhter', '100b0024', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '15/02/2002', '21/5/2020', '2022046@iub.edu.bd', 1700000046, 'BPHA'),
('2022047', 'Md. Mahiuddin', 'Ahmed', '100a0024', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '16/02/2002', '21/5/2020', '2022047@iub.edu.bd', 1700000047, 'BPHY'),
('2022048', 'Jannatul', 'Naima', '100b0025', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Female', '17/02/2002', '21/5/2020', '2022048@iub.edu.bd', 1700000048, 'BBCB'),
('2022049', 'Shanjidul Hasan', 'Shajid', '10shajid', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Male', '01/01/2000', '01/01/2020', '2022049@iub.edu.bd', 1700000261, 'BCMN'),
('2022050', 'Tanjina', 'Akter', '100b0026', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Female', '19/02/2002', '21/5/2020', '2022050@iub.edu.bd', 1700000050, 'BCSE'),
('2022523', 'Fahim Shahriar', 'Eram', '10eram', 'House No. 72, Station Road, Syedpur, Nilphamari', 'Male', '05/01/2000', '21/5/2020', '2022523@iub.edu.bd', 1700000265, 'BEEE'),
('2030069', 'Mehedi Hasan ', 'Surem', '10surem', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '21/5/2020', '2030069@iub.edu.bd', 1700000266, 'BENG'),
('2030070', 'Kalam', 'Murshed', '100a0025', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '01/01/2020', '2030070@iub.edu.bd', 1711111111, 'BENV'),
('2030071', 'William Jefferson', 'Mondal', '121a212', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Male', '04/01/2000', '21/5/2020', '2030071@iub.edu.bd', 1711111112, 'BMIS'),
('2030072', 'Fardin Afsan', 'Shafi', '121b223', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '03/01/2000', '21/5/2020', '2030072@iub.edu.bd', 1711111113, 'BMKT'),
('2030073', 'Anannya', 'Preeta', '121a213', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '02/01/2000', '01/01/2020', '2030073@iub.edu.bd', 1711111114, 'BPHA'),
('2030074', 'Md. Abdullah', 'Al Mamun', '121b224', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', 'Male', '01/01/2002', '01/01/2020', '2030074@iub.edu.bd', 1711111115, 'BPHY'),
('2030075', 'Tahmina', 'Akhtar', '121a214', 'House No. 44, Jubilee Road, Mashima, Chittagong', 'Female', '02/01/2002', '01/01/2020', '2030075@iub.edu.bd', 1711111116, 'BBCB'),
('2030076', 'Md. Akbar', 'Hossain', '121b225', 'House No. 20, College Road, Sylhet Bazar, Sylhet', 'Male', '03/01/2002', '01/01/2020', '2030076@iub.edu.bd', 1711111117, 'BCMN'),
('2030077', 'Farzana', 'Akhter', '121a215', 'House No. 18, Police Line Road, New Market, Rangpur', 'Female', '04/01/2002', '21/5/2020', '2030077@iub.edu.bd', 1711111118, 'BCSE'),
('2030078', 'Md. Habibur', 'Rahman', '121b226', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', 'Male', '05/01/2002', '21/5/2020', '2030078@iub.edu.bd', 1711111119, 'BEEE'),
('2030079', 'Nasrin', 'Akhter', '121a216', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', 'Female', '06/01/2002', '21/5/2020', '2030079@iub.edu.bd', 1711111120, 'BENG'),
('2030080', 'Md. Ruhul', 'Amin', '121b227', 'House No. 9, Jail Road, Sadar Bazar, Tangail', 'Male', '07/01/2002', '16/10/2020', '2030080@iub.edu.bd', 1711111121, 'BENV'),
('2030081', 'Naima', 'Begum', '121a217', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', 'Female', '08/01/2002', '16/10/2020', '2030081@iub.edu.bd', 1711111122, 'BMIS'),
('2030082', 'Md. Saiful', 'Islam', '121b228', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', 'Male', '09/01/2002', '16/10/2020', '2030082@iub.edu.bd', 1711111123, 'BMKT'),
('2030083', 'Ayesha', 'Begum', '121a218', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', 'Female', '10/01/2002', '16/10/2020', '2030083@iub.edu.bd', 1711111124, 'BPHA'),
('2030084', 'Md. Jahirul', 'Islam', '121b229', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', 'Male', '11/01/2002', '01/01/2020', '2030084@iub.edu.bd', 1711111125, 'BPHY'),
('2030085', 'Farhana', 'Khatun', '121a219', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', 'Female', '12/01/2002', '01/01/2020', '2030085@iub.edu.bd', 1711111126, 'BBCB'),
('2030086', 'Md. Faruk', 'Hossain', '121b230', 'House No. 25, Dhap Road, Dhap, Rangpur', 'Male', '13/01/2002', '21/5/2020', '2030086@iub.edu.bd', 1711111127, 'BCMN'),
('2030087', 'Sharmin', 'Sultana', '121a220', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', 'Female', '14/01/2002', '16/10/2020', '2030087@iub.edu.bd', 1711111128, 'BCSE'),
('2030088', 'Md. Hasan', 'Ali', '121b231', 'House No. 7, Elephant Road, New Market, Dhaka', 'Male', '15/01/2002', '16/10/2020', '2030088@iub.edu.bd', 1711111129, 'BEEE'),
('2030089', 'Salma', 'Khatun', '121a221', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', 'Female', '16/01/2002', '01/01/2020', '2030089@iub.edu.bd', 1711111130, 'BENG'),
('2030090', 'Md. Nurul', 'Islam', '121b232', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', 'Male', '17/01/2002', '01/01/2020', '2030090@iub.edu.bd', 1711111131, 'BENV'),
('2030091', 'Tahira', 'Akhtar', '121a222', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', 'Female', '18/01/2002', '16/10/2020', '2030091@iub.edu.bd', 1711111132, 'BMIS'),
('2030092', 'Md. Ashraful', 'Haque', '121b233', 'House No. 40, Purbani Road, Purbani, Comilla', 'Male', '19/01/2002', '16/10/2020', '2030092@iub.edu.bd', 1711111133, 'BMKT'),
('2030093', 'Marufa', 'Akter', '121a223', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', 'Female', '20/01/2002', '16/10/2020', '2030093@iub.edu.bd', 1711111134, 'BPHA'),
('2030094', 'Md. Mahbub', 'Hossain', '121b234', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', 'Male', '21/01/2002', '16/10/2020', '2030094@iub.edu.bd', 1711111135, 'BPHY'),
('2030095', 'Nusrat', 'Jahan', '121a224', 'House No. 17, Kalibari Road, Kalibari, Sylhet', 'Female', '22/01/2002', '01/01/2020', '2030095@iub.edu.bd', 1711111136, 'BBCB'),
('2030096', 'Md. Azizul', 'Islam', '121b235', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', 'Male', '23/01/2002', '21/5/2020', '2030096@iub.edu.bd', 1711111137, 'BCMN'),
('2030097', 'Rabeya', 'Khatun', '121a225', 'House No. 29, Biswanath Road, Biswanath, Sylhet', 'Female', '24/01/2002', '16/10/2020', '2030097@iub.edu.bd', 1711111138, 'BCSE'),
('2030098', 'Md. Rashedul', 'Islam', '121b236', 'House No. 27, Jhautala Road, Jhautala, Khulna', 'Male', '25/01/2002', '01/01/2020', '2030098@iub.edu.bd', 1711111139, 'BEEE'),
('2030099', 'Jannatul', 'Ferdous', '121a226', 'House No. 11, BRTC Road, Basundhara, Rangpur', 'Female', '26/01/2002', '01/01/2020', '2030099@iub.edu.bd', 1711111140, 'BENG'),
('2030100', 'Md. Shohag', 'Ali', '121b237', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', 'Male', '27/01/2002', '01/01/2020', '2030100@iub.edu.bd', 1711111141, 'BENV'),
('2030101', 'Anika', 'Khan', '121a227', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', 'Female', '28/01/2002', '21/5/2020', '2030101@iub.edu.bd', 1711111142, 'BMIS'),
('2030102', 'Md. Touhidul', 'Islam', '121b238', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', 'Male', '29/01/2002', '21/5/2020', '2030102@iub.edu.bd', 1711111143, 'BMKT'),
('2030103', 'Sabina', 'Akter', '121a228', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', 'Female', '30/01/2002', '16/10/2020', '2030103@iub.edu.bd', 1711111144, 'BPHA'),
('2030104', 'Md. Nazmul', 'Islam', '121b239', 'House No. 37, Feni Road, Feni, Comilla', 'Male', '31/01/2002', '16/10/2020', '2030104@iub.edu.bd', 1711111145, 'BPHY'),
('2030105', 'Sumaiya', 'Akhter', '121a229', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', 'Female', '01/02/2002', '01/01/2020', '2030105@iub.edu.bd', 1711111146, 'BBCB'),
('2030106', 'Md. Shahidul', 'Islam', '121b240', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', 'Male', '02/02/2002', '01/01/2020', '2030106@iub.edu.bd', 1711111147, 'BCMN'),
('2030107', 'Morjina', 'Begum', '121a230', 'House No. 38, Kaptai Road, Kaptai, Rangamati', 'Female', '03/02/2002', '21/5/2020', '2030107@iub.edu.bd', 1711111148, 'BCSE'),
('2030108', 'Md. Shamsul', 'Haque', '121b241', 'House No. 42, Mawna Road, Mawna, Gazipur', 'Male', '04/02/2002', '16/10/2020', '2030108@iub.edu.bd', 1711111149, 'BEEE'),
('2030109', 'Shamima', 'Akter', '121a231', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', 'Female', '05/02/2002', '16/10/2020', '2030109@iub.edu.bd', 1711111150, 'BENG'),
('2030110', 'Md. Abdul', 'Mannan', '121b242', 'House No. 47, Momin Road, Momin Road, Chittagong', 'Male', '06/02/2002', '01/01/2020', '2030110@iub.edu.bd', 1711111151, 'BENV'),
('2030111', 'Nasima', 'Khatun', '121a232', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Female', '07/02/2002', '16/10/2020', '2030111@iub.edu.bd', 1711111152, 'BMIS'),
('2030112', 'Md. Aminul', 'Islam', '121b243', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', 'Male', '08/02/2002', '21/5/2020', '2030112@iub.edu.bd', 1711111153, 'BMKT'),
('2030113', 'Afrin', 'Akter', '121a233', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', 'Female', '09/02/2002', '01/01/2020', '2030113@iub.edu.bd', 1711111154, 'BPHA'),
('2030114', 'Md. Zahidul', 'Islam', '121b244', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', 'Male', '10/02/2002', '16/10/2020', '2030114@iub.edu.bd', 1711111155, 'BPHY'),
('2030115', 'Shilpi', 'Akter', '121a234', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', 'Female', '11/02/2002', '16/10/2020', '2030115@iub.edu.bd', 1711111156, 'BBCB'),
('2030116', 'Md. Mahfuzur', 'Rahman', '121b245', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', 'Male', '12/02/2002', '21/5/2020', '2030116@iub.edu.bd', 1711111157, 'BCMN'),
('2030117', 'Taslima', 'Khatun', '121a235', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', 'Female', '13/02/2002', '01/01/2020', '2030117@iub.edu.bd', 1711111158, 'BCSE'),
('2030118', 'Md. Sajjad', 'Hossain', '121b246', 'House No. 65, GEC Road, GEC, Chittagong', 'Male', '14/02/2002', '16/10/2020', '2030118@iub.edu.bd', 1711111159, 'BEEE'),
('2030119', 'Fariha', 'Akhter', '121a236', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '15/02/2002', '21/5/2020', '2030119@iub.edu.bd', 1711111160, 'BENG'),
('2030120', 'Md. Mahiuddin', 'Ahmed', '121b247', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '16/02/2002', '21/5/2020', '2030120@iub.edu.bd', 1711111161, 'BENV'),
('2030121', 'Jannatul', 'Naima', '121a237', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Female', '17/02/2002', '21/5/2020', '2030121@iub.edu.bd', 1711111162, 'BMIS'),
('2030122', 'Shanjidul Hasan', 'Shajid', '121b248', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Male', '01/01/2000', '01/01/2020', '2030122@iub.edu.bd', 1711111163, 'BMKT'),
('2030123', 'Tanjina', 'Akter', '121a238', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Female', '19/02/2002', '21/5/2020', '2030123@iub.edu.bd', 1711111164, 'BPHA'),
('2030124', 'Fahim Shahriar', 'Eram', '121b249', 'House No. 72, Station Road, Syedpur, Nilphamari', 'Male', '05/01/2000', '21/5/2020', '2030124@iub.edu.bd', 1711111165, 'BPHY'),
('2030125', 'Mehedi Hasan ', 'Surem', '121a239', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '21/5/2020', '2030125@iub.edu.bd', 1711111166, 'BBCB'),
('2030126', 'Kalam', 'Murshed', '121b250', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '01/01/2020', '2030126@iub.edu.bd', 1711111167, 'BCMN'),
('2030127', 'William Jefferson', 'Mondal', '10willam', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Male', '04/01/2000', '21/5/2020', '2030127@iub.edu.bd', 1711111168, 'BCSE'),
('2030128', 'Fardin Afsan', 'Shafi', '10shafi', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '03/01/2000', '21/5/2020', '2030128@iub.edu.bd', 1711111169, 'BEEE'),
('2030129', 'Anannya', 'Preeta', '10preeta', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '02/01/2000', '01/01/2020', '2030129@iub.edu.bd', 1711111170, 'BENG'),
('2030130', 'Md. Abdullah', 'Al Mamun', '100a0001', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', 'Male', '01/01/2002', '01/01/2020', '2030130@iub.edu.bd', 1711111171, 'BENV'),
('2030131', 'Tahmina', 'Akhtar', '100b0002', 'House No. 44, Jubilee Road, Mashima, Chittagong', 'Female', '02/01/2002', '01/01/2020', '2030131@iub.edu.bd', 1711111172, 'BMIS'),
('2030132', 'Md. Akbar', 'Hossain', '100a0002', 'House No. 20, College Road, Sylhet Bazar, Sylhet', 'Male', '03/01/2002', '01/01/2020', '2030132@iub.edu.bd', 1711111173, 'BMKT'),
('2030133', 'Farzana', 'Akhter', '100b0003', 'House No. 18, Police Line Road, New Market, Rangpur', 'Female', '04/01/2002', '21/5/2020', '2030133@iub.edu.bd', 1711111174, 'BPHA'),
('2030134', 'Md. Habibur', 'Rahman', '100a0003', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', 'Male', '05/01/2002', '21/5/2020', '2030134@iub.edu.bd', 1711111175, 'BPHY'),
('2030135', 'Nasrin', 'Akhter', '100b0004', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', 'Female', '06/01/2002', '21/5/2020', '2030135@iub.edu.bd', 1711111176, 'BBCB'),
('2030136', 'Md. Ruhul', 'Amin', '100a0004', 'House No. 9, Jail Road, Sadar Bazar, Tangail', 'Male', '07/01/2002', '16/10/2020', '2030136@iub.edu.bd', 1711111177, 'BCMN'),
('2030137', 'Naima', 'Begum', '100b0005', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', 'Female', '08/01/2002', '16/10/2020', '2030137@iub.edu.bd', 1711111178, 'BCSE'),
('2030138', 'Md. Saiful', 'Islam', '100a0005', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', 'Male', '09/01/2002', '16/10/2020', '2030138@iub.edu.bd', 1711111179, 'BEEE'),
('2030139', 'Ayesha', 'Begum', '100b0006', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', 'Female', '10/01/2002', '16/10/2020', '2030139@iub.edu.bd', 1711111180, 'BENG'),
('2030140', 'Md. Jahirul', 'Islam', '100a0006', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', 'Male', '11/01/2002', '01/01/2020', '2030140@iub.edu.bd', 1711111181, 'BENV'),
('2030141', 'Farhana', 'Khatun', '100b0007', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', 'Female', '12/01/2002', '01/01/2020', '2030141@iub.edu.bd', 1711111182, 'BMIS'),
('2030142', 'Md. Faruk', 'Hossain', '100a0007', 'House No. 25, Dhap Road, Dhap, Rangpur', 'Male', '13/01/2002', '21/5/2020', '2030142@iub.edu.bd', 1711111183, 'BMKT'),
('2030143', 'Sharmin', 'Sultana', '100b0008', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', 'Female', '14/01/2002', '16/10/2020', '2030143@iub.edu.bd', 1711111184, 'BPHA'),
('2030144', 'Md. Hasan', 'Ali', '100a0008', 'House No. 7, Elephant Road, New Market, Dhaka', 'Male', '15/01/2002', '16/10/2020', '2030144@iub.edu.bd', 1711111185, 'BPHY'),
('2030145', 'Salma', 'Khatun', '100b0009', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', 'Female', '16/01/2002', '01/01/2020', '2030145@iub.edu.bd', 1711111186, 'BBCB'),
('2030146', 'Md. Nurul', 'Islam', '100a0009', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', 'Male', '17/01/2002', '01/01/2020', '2030146@iub.edu.bd', 1711111187, 'BCMN'),
('2030147', 'Tahira', 'Akhtar', '100b0010', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', 'Female', '18/01/2002', '16/10/2020', '2030147@iub.edu.bd', 1711111188, 'BCSE'),
('2030148', 'Md. Ashraful', 'Haque', '100a0010', 'House No. 40, Purbani Road, Purbani, Comilla', 'Male', '19/01/2002', '16/10/2020', '2030148@iub.edu.bd', 1711111189, 'BEEE'),
('2030149', 'Marufa', 'Akter', '100b0011', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', 'Female', '20/01/2002', '16/10/2020', '2030149@iub.edu.bd', 1711111190, 'BENG'),
('2030150', 'Md. Mahbub', 'Hossain', '100a0011', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', 'Male', '21/01/2002', '16/10/2020', '2030150@iub.edu.bd', 1711111191, 'BENV'),
('2030151', 'Nusrat', 'Jahan', '100b0012', 'House No. 17, Kalibari Road, Kalibari, Sylhet', 'Female', '22/01/2002', '01/01/2020', '2030151@iub.edu.bd', 1711111192, 'BMIS'),
('2030152', 'Md. Azizul', 'Islam', '100a0012', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', 'Male', '23/01/2002', '21/5/2020', '2030152@iub.edu.bd', 1711111193, 'BMKT'),
('2030153', 'Rabeya', 'Khatun', '100b0013', 'House No. 29, Biswanath Road, Biswanath, Sylhet', 'Female', '24/01/2002', '16/10/2020', '2030153@iub.edu.bd', 1711111194, 'BPHA'),
('2030154', 'Md. Rashedul', 'Islam', '100a0013', 'House No. 27, Jhautala Road, Jhautala, Khulna', 'Male', '25/01/2002', '01/01/2020', '2030154@iub.edu.bd', 1711111195, 'BPHY'),
('2030155', 'Jannatul', 'Ferdous', '100b0014', 'House No. 11, BRTC Road, Basundhara, Rangpur', 'Female', '26/01/2002', '01/01/2020', '2030155@iub.edu.bd', 1711111196, 'BBCB'),
('2030156', 'Md. Shohag', 'Ali', '100a0014', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', 'Male', '27/01/2002', '01/01/2020', '2030156@iub.edu.bd', 1711111197, 'BCMN'),
('2030157', 'Anika', 'Khan', '100b0015', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', 'Female', '28/01/2002', '21/5/2020', '2030157@iub.edu.bd', 1711111198, 'BCSE'),
('2030158', 'Md. Touhidul', 'Islam', '100a0015', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', 'Male', '29/01/2002', '21/5/2020', '2030158@iub.edu.bd', 1711111199, 'BEEE'),
('2030159', 'Sabina', 'Akter', '100b0016', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', 'Female', '30/01/2002', '16/10/2020', '2030159@iub.edu.bd', 1711111200, 'BENG'),
('2030160', 'Md. Nazmul', 'Islam', '100a0016', 'House No. 37, Feni Road, Feni, Comilla', 'Male', '31/01/2002', '16/10/2020', '2030160@iub.edu.bd', 1711111201, 'BENV'),
('2030161', 'Sumaiya', 'Akhter', '100b0017', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', 'Female', '01/02/2002', '01/01/2020', '2030161@iub.edu.bd', 1711111202, 'BMIS'),
('2030162', 'Md. Shahidul', 'Islam', '100a0017', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', 'Male', '02/02/2002', '01/01/2020', '2030162@iub.edu.bd', 1711111203, 'BMKT'),
('2030163', 'Morjina', 'Begum', '100b0018', 'House No. 38, Kaptai Road, Kaptai, Rangamati', 'Female', '03/02/2002', '21/5/2020', '2030163@iub.edu.bd', 1711111204, 'BPHA'),
('2030164', 'Md. Shamsul', 'Haque', '100a0018', 'House No. 42, Mawna Road, Mawna, Gazipur', 'Male', '04/02/2002', '16/10/2020', '2030164@iub.edu.bd', 1711111205, 'BPHY'),
('2030165', 'Shamima', 'Akter', '100b0019', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', 'Female', '05/02/2002', '16/10/2020', '2030165@iub.edu.bd', 1711111206, 'BBCB'),
('2030166', 'Md. Abdul', 'Mannan', '100a0019', 'House No. 47, Momin Road, Momin Road, Chittagong', 'Male', '06/02/2002', '01/01/2020', '2030166@iub.edu.bd', 1711111207, 'BCMN'),
('2030167', 'Nasima', 'Khatun', '100b0020', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Female', '07/02/2002', '16/10/2020', '2030167@iub.edu.bd', 1711111208, 'BCSE'),
('2030168', 'Md. Aminul', 'Islam', '100a0020', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', 'Male', '08/02/2002', '21/5/2020', '2030168@iub.edu.bd', 1711111209, 'BEEE'),
('2030169', 'Afrin', 'Akter', '100b0021', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', 'Female', '09/02/2002', '01/01/2020', '2030169@iub.edu.bd', 1711111210, 'BENG'),
('2030170', 'Md. Zahidul', 'Islam', '100a0021', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', 'Male', '10/02/2002', '16/10/2020', '2030170@iub.edu.bd', 1711111211, 'BENV'),
('2030171', 'Shilpi', 'Akter', '100b0022', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', 'Female', '11/02/2002', '16/10/2020', '2030171@iub.edu.bd', 1711111212, 'BMIS'),
('2030172', 'Md. Mahfuzur', 'Rahman', '100a0022', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', 'Male', '12/02/2002', '21/5/2020', '2030172@iub.edu.bd', 1711111213, 'BMKT'),
('2030173', 'Taslima', 'Khatun', '100b0023', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', 'Female', '13/02/2002', '01/01/2020', '2030173@iub.edu.bd', 1711111214, 'BPHA'),
('2030174', 'Md. Sajjad', 'Hossain', '100a0023', 'House No. 65, GEC Road, GEC, Chittagong', 'Male', '14/02/2002', '16/10/2020', '2030174@iub.edu.bd', 1711111215, 'BPHY'),
('2030175', 'Fariha', 'Akhter', '100b0024', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '15/02/2002', '21/5/2020', '2030175@iub.edu.bd', 1711111216, 'BBCB'),
('2030176', 'Md. Mahiuddin', 'Ahmed', '100a0024', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '16/02/2002', '21/5/2020', '2030176@iub.edu.bd', 1711111217, 'BCMN'),
('2030177', 'Jannatul', 'Naima', '100b0025', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Female', '17/02/2002', '21/5/2020', '2030177@iub.edu.bd', 1711111218, 'BCSE'),
('2030178', 'Shanjidul Hasan', 'Shajid', '10shajid', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Male', '01/01/2000', '01/01/2020', '2030178@iub.edu.bd', 1711111219, 'BEEE'),
('2030179', 'Tanjina', 'Akter', '100b0026', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Female', '19/02/2002', '21/5/2020', '2030179@iub.edu.bd', 1711111220, 'BENG'),
('2030180', 'Fahim Shahriar', 'Eram', '10eram', 'House No. 72, Station Road, Syedpur, Nilphamari', 'Male', '05/01/2000', '21/5/2020', '2030180@iub.edu.bd', 1711111221, 'BENV'),
('2030181', 'Mehedi Hasan ', 'Surem', '10surem', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '21/5/2020', '2030181@iub.edu.bd', 1711111222, 'BMIS'),
('2030182', 'Kalam', 'Murshed', '100a0025', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '01/01/2020', '2030182@iub.edu.bd', 1711111223, 'BMKT'),
('2030183', 'William Jefferson', 'Mondal', '121a212', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Male', '04/01/2000', '21/5/2020', '2030183@iub.edu.bd', 1711111224, 'BPHA'),
('2030184', 'Fardin Afsan', 'Shafi', '121b223', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '03/01/2000', '21/5/2020', '2030184@iub.edu.bd', 1711111225, 'BPHY'),
('2030185', 'Anannya', 'Preeta', '121a213', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '02/01/2000', '01/01/2020', '2030185@iub.edu.bd', 1711111226, 'BBCB'),
('2030186', 'Md. Abdullah', 'Al Mamun', '121b224', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', 'Male', '01/01/2002', '01/01/2020', '2030186@iub.edu.bd', 1711111227, 'BCMN'),
('2030187', 'Tahmina', 'Akhtar', '121a214', 'House No. 44, Jubilee Road, Mashima, Chittagong', 'Female', '02/01/2002', '01/01/2020', '2030187@iub.edu.bd', 1711111228, 'BCSE'),
('2030188', 'Md. Akbar', 'Hossain', '121b225', 'House No. 20, College Road, Sylhet Bazar, Sylhet', 'Male', '03/01/2002', '01/01/2020', '2030188@iub.edu.bd', 1711111229, 'BEEE'),
('2030189', 'Farzana', 'Akhter', '121a215', 'House No. 18, Police Line Road, New Market, Rangpur', 'Female', '04/01/2002', '21/5/2020', '2030189@iub.edu.bd', 1711111230, 'BENG'),
('2030190', 'Md. Habibur', 'Rahman', '121b226', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', 'Male', '05/01/2002', '21/5/2020', '2030190@iub.edu.bd', 1711111231, 'BENV'),
('2030191', 'Nasrin', 'Akhter', '121a216', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', 'Female', '06/01/2002', '21/5/2020', '2030191@iub.edu.bd', 1711111232, 'BMIS'),
('2030192', 'Md. Ruhul', 'Amin', '121b227', 'House No. 9, Jail Road, Sadar Bazar, Tangail', 'Male', '07/01/2002', '16/10/2020', '2030192@iub.edu.bd', 1711111233, 'BMKT'),
('2030193', 'Naima', 'Begum', '121a217', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', 'Female', '08/01/2002', '16/10/2020', '2030193@iub.edu.bd', 1711111234, 'BPHA'),
('2030194', 'Md. Saiful', 'Islam', '121b228', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', 'Male', '09/01/2002', '16/10/2020', '2030194@iub.edu.bd', 1711111235, 'BPHY'),
('2030195', 'Ayesha', 'Begum', '121a218', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', 'Female', '10/01/2002', '16/10/2020', '2030195@iub.edu.bd', 1711111236, 'BBCB'),
('2030196', 'Md. Jahirul', 'Islam', '121b229', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', 'Male', '11/01/2002', '01/01/2020', '2030196@iub.edu.bd', 1711111237, 'BCMN'),
('2030197', 'Farhana', 'Khatun', '121a219', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', 'Female', '12/01/2002', '01/01/2020', '2030197@iub.edu.bd', 1711111238, 'BCSE'),
('2030198', 'Md. Faruk', 'Hossain', '121b230', 'House No. 25, Dhap Road, Dhap, Rangpur', 'Male', '13/01/2002', '21/5/2020', '2030198@iub.edu.bd', 1711111239, 'BEEE'),
('2030199', 'Sharmin', 'Sultana', '121a220', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', 'Female', '14/01/2002', '16/10/2020', '2030199@iub.edu.bd', 1711111240, 'BENG'),
('2030200', 'Md. Hasan', 'Ali', '121b231', 'House No. 7, Elephant Road, New Market, Dhaka', 'Male', '15/01/2002', '16/10/2020', '2030200@iub.edu.bd', 1711111241, 'BENV'),
('2030201', 'Salma', 'Khatun', '121a221', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', 'Female', '16/01/2002', '01/01/2020', '2030201@iub.edu.bd', 1711111242, 'BMIS'),
('2030202', 'Md. Nurul', 'Islam', '121b232', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', 'Male', '17/01/2002', '01/01/2020', '2030202@iub.edu.bd', 1711111243, 'BMKT'),
('2030203', 'Tahira', 'Akhtar', '121a222', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', 'Female', '18/01/2002', '16/10/2020', '2030203@iub.edu.bd', 1711111244, 'BPHA'),
('2030204', 'Md. Ashraful', 'Haque', '121b233', 'House No. 40, Purbani Road, Purbani, Comilla', 'Male', '19/01/2002', '16/10/2020', '2030204@iub.edu.bd', 1711111245, 'BPHY'),
('2030205', 'Marufa', 'Akter', '121a223', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', 'Female', '20/01/2002', '16/10/2020', '2030205@iub.edu.bd', 1711111246, 'BBCB'),
('2030206', 'Md. Mahbub', 'Hossain', '121b234', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', 'Male', '21/01/2002', '16/10/2020', '2030206@iub.edu.bd', 1711111247, 'BCMN'),
('2030207', 'Nusrat', 'Jahan', '121a224', 'House No. 17, Kalibari Road, Kalibari, Sylhet', 'Female', '22/01/2002', '01/01/2020', '2030207@iub.edu.bd', 1711111248, 'BCSE'),
('2030208', 'Md. Azizul', 'Islam', '121b235', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', 'Male', '23/01/2002', '21/5/2020', '2030208@iub.edu.bd', 1711111249, 'BEEE'),
('2030209', 'Rabeya', 'Khatun', '121a225', 'House No. 29, Biswanath Road, Biswanath, Sylhet', 'Female', '24/01/2002', '16/10/2020', '2030209@iub.edu.bd', 1711111250, 'BENG'),
('2030210', 'Md. Rashedul', 'Islam', '121b236', 'House No. 27, Jhautala Road, Jhautala, Khulna', 'Male', '25/01/2002', '01/01/2020', '2030210@iub.edu.bd', 1711111251, 'BENV'),
('2030211', 'Jannatul', 'Ferdous', '121a226', 'House No. 11, BRTC Road, Basundhara, Rangpur', 'Female', '26/01/2002', '01/01/2020', '2030211@iub.edu.bd', 1711111252, 'BMIS'),
('2030212', 'Md. Shohag', 'Ali', '121b237', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', 'Male', '27/01/2002', '01/01/2020', '2030212@iub.edu.bd', 1711111253, 'BMKT'),
('2030213', 'Anika', 'Khan', '121a227', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', 'Female', '28/01/2002', '21/5/2020', '2030213@iub.edu.bd', 1711111254, 'BPHA'),
('2030214', 'Md. Touhidul', 'Islam', '121b238', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', 'Male', '29/01/2002', '21/5/2020', '2030214@iub.edu.bd', 1711111255, 'BPHY'),
('2030215', 'Sabina', 'Akter', '121a228', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', 'Female', '30/01/2002', '16/10/2020', '2030215@iub.edu.bd', 1711111256, 'BBCB'),
('2030216', 'Md. Nazmul', 'Islam', '121b239', 'House No. 37, Feni Road, Feni, Comilla', 'Male', '31/01/2002', '16/10/2020', '2030216@iub.edu.bd', 1711111257, 'BCMN'),
('2030217', 'Sumaiya', 'Akhter', '121a229', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', 'Female', '01/02/2002', '01/01/2020', '2030217@iub.edu.bd', 1711111258, 'BCSE'),
('2030218', 'Md. Shahidul', 'Islam', '121b240', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', 'Male', '02/02/2002', '01/01/2020', '2030218@iub.edu.bd', 1711111259, 'BEEE'),
('2030219', 'Morjina', 'Begum', '121a230', 'House No. 38, Kaptai Road, Kaptai, Rangamati', 'Female', '03/02/2002', '21/5/2020', '2030219@iub.edu.bd', 1711111260, 'BENG'),
('2030220', 'Md. Shamsul', 'Haque', '121b241', 'House No. 42, Mawna Road, Mawna, Gazipur', 'Male', '04/02/2002', '16/10/2020', '2030220@iub.edu.bd', 1711111261, 'BENV'),
('2030221', 'Shamima', 'Akter', '121a231', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', 'Female', '05/02/2002', '16/10/2020', '2030221@iub.edu.bd', 1711111262, 'BMIS'),
('2030222', 'Md. Abdul', 'Mannan', '121b242', 'House No. 47, Momin Road, Momin Road, Chittagong', 'Male', '06/02/2002', '01/01/2020', '2030222@iub.edu.bd', 1711111263, 'BMKT'),
('2030223', 'Nasima', 'Khatun', '121a232', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Female', '07/02/2002', '16/10/2020', '2030223@iub.edu.bd', 1711111264, 'BPHA'),
('2030224', 'Md. Aminul', 'Islam', '121b243', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', 'Male', '08/02/2002', '21/5/2020', '2030224@iub.edu.bd', 1711111265, 'BPHY'),
('2030225', 'Afrin', 'Akter', '121a233', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', 'Female', '09/02/2002', '01/01/2020', '2030225@iub.edu.bd', 1711111266, 'BBCB'),
('2030226', 'Md. Zahidul', 'Islam', '121b244', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', 'Male', '10/02/2002', '16/10/2020', '2030226@iub.edu.bd', 1711111267, 'BCMN'),
('2030227', 'Shilpi', 'Akter', '121a234', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', 'Female', '11/02/2002', '16/10/2020', '2030227@iub.edu.bd', 1711111268, 'BCSE'),
('2030228', 'Md. Mahfuzur', 'Rahman', '121b245', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', 'Male', '12/02/2002', '21/5/2020', '2030228@iub.edu.bd', 1711111269, 'BEEE'),
('2030229', 'Taslima', 'Khatun', '121a235', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', 'Female', '13/02/2002', '01/01/2020', '2030229@iub.edu.bd', 1711111270, 'BENG'),
('2030230', 'Md. Sajjad', 'Hossain', '121b246', 'House No. 65, GEC Road, GEC, Chittagong', 'Male', '14/02/2002', '16/10/2020', '2030230@iub.edu.bd', 1711111271, 'BENV'),
('2030231', 'Fariha', 'Akhter', '121a236', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', 'Female', '15/02/2002', '21/5/2020', '2030231@iub.edu.bd', 1711111272, 'BMIS'),
('2030232', 'Md. Mahiuddin', 'Ahmed', '121b247', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', 'Male', '16/02/2002', '21/5/2020', '2030232@iub.edu.bd', 1711111273, 'BMKT'),
('2030233', 'Jannatul', 'Naima', '121a237', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', 'Female', '17/02/2002', '21/5/2020', '2030233@iub.edu.bd', 1711111274, 'BPHA'),
('2030234', 'Shanjidul Hasan', 'Shajid', '121b248', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', 'Male', '01/01/2000', '01/01/2020', '2030234@iub.edu.bd', 1711111275, 'BPHY'),
('2030235', 'Tanjina', 'Akter', '121a238', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Female', '19/02/2002', '21/5/2020', '2030235@iub.edu.bd', 1711111276, 'BBCB'),
('2030236', 'Fahim Shahriar', 'Eram', '121b249', 'House No. 72, Station Road, Syedpur, Nilphamari', 'Male', '05/01/2000', '21/5/2020', '2030236@iub.edu.bd', 1711111277, 'BCMN'),
('2030237', 'Mehedi Hasan ', 'Surem', '121a239', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '21/5/2020', '2030237@iub.edu.bd', 1711111278, 'BCSE'),
('2030238', 'Kalam', 'Murshed', '121b250', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', 'Male', '06/01/2000', '01/01/2020', '2030238@iub.edu.bd', 1711111279, 'BEEE');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `StudentID` varchar(7) NOT NULL,
  `CourseID` varchar(7) NOT NULL,
  `Grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`StudentID`, `CourseID`, `Grade`) VALUES
('2020977', 'CSE104', 'A'),
('2020977', 'CSE104L', 'A'),
('2020977', 'CSE203', 'A'),
('2020977', 'CSE203L', 'A'),
('2020977', 'CSE204', 'A'),
('2020977', 'CSE204L', 'A'),
('2020977', 'CSE210', 'A'),
('2020977', 'CSE210L', 'A'),
('2020977', 'CSE211', 'A'),
('2020977', 'CSE211L', 'A'),
('2020977', 'CSE213', 'A'),
('2020977', 'CSE213L', 'A'),
('2022010', 'CSE104', 'B'),
('2022010', 'CSE104L', 'B'),
('2022010', 'CSE203', 'B'),
('2022010', 'CSE203L', 'B'),
('2022020', 'CSE104', 'A'),
('2022020', 'CSE104L', 'A'),
('2022020', 'CSE203', 'A'),
('2022020', 'CSE203L', 'A'),
('2022030', 'CSE104', 'B+'),
('2022030', 'CSE104L', 'B+'),
('2022030', 'CSE203', 'B+'),
('2022030', 'CSE203L', 'B+'),
('2022040', 'CSE104', 'B+'),
('2022040', 'CSE104L', 'B+'),
('2022040', 'CSE203', 'B+'),
('2022040', 'CSE203L', 'B+'),
('2022040', 'CSE204', 'B+'),
('2022040', 'CSE204L', 'B+'),
('2022040', 'CSE210', 'B+'),
('2022040', 'CSE210L', 'B+'),
('2022040', 'CSE211', 'B+'),
('2022040', 'CSE211L', 'B+'),
('2022040', 'CSE213', 'B+'),
('2022040', 'CSE213L', 'B+'),
('2022050', 'CSE104', 'B'),
('2022050', 'CSE104L', 'B'),
('2022050', 'CSE203', 'B'),
('2022050', 'CSE203L', 'B'),
('2022050', 'CSE204', 'B'),
('2022050', 'CSE204L', 'B'),
('2022050', 'CSE210', 'B'),
('2022050', 'CSE210L', 'B'),
('2030077', 'CSE104', 'A'),
('2030077', 'CSE104L', 'A'),
('2030077', 'CSE203', 'A'),
('2030077', 'CSE203L', 'A'),
('2030077', 'CSE204', 'A'),
('2030077', 'CSE204L', 'A'),
('2030077', 'CSE210', 'A'),
('2030077', 'CSE210L', 'A'),
('2030087', 'CSE104', 'A'),
('2030087', 'CSE104L', 'A'),
('2030087', 'CSE203', 'A'),
('2030087', 'CSE203L', 'A'),
('2030097', 'CSE104', 'A-'),
('2030097', 'CSE104L', 'A-'),
('2030097', 'CSE203', 'A-'),
('2030097', 'CSE203L', 'A-'),
('2030107', 'CSE104', 'B+'),
('2030107', 'CSE104L', 'B+'),
('2030107', 'CSE203', 'B+'),
('2030107', 'CSE203L', 'B+'),
('2030107', 'CSE204', 'B+'),
('2030107', 'CSE204L', 'B+'),
('2030107', 'CSE210', 'B+'),
('2030107', 'CSE210L', 'B+'),
('2030117', 'CSE104', 'B'),
('2030117', 'CSE104L', 'B'),
('2030117', 'CSE203', 'B'),
('2030117', 'CSE203L', 'B'),
('2030117', 'CSE204', 'B'),
('2030117', 'CSE204L', 'B'),
('2030117', 'CSE210', 'B'),
('2030117', 'CSE210L', 'B'),
('2030117', 'CSE211', 'B'),
('2030117', 'CSE211L', 'B'),
('2030117', 'CSE213', 'B'),
('2030117', 'CSE213L', 'B'),
('2030127', 'CSE104', 'A'),
('2030127', 'CSE104L', 'A'),
('2030127', 'CSE203', 'A'),
('2030127', 'CSE203L', 'A'),
('2030127', 'CSE204', 'A'),
('2030127', 'CSE204L', 'A'),
('2030127', 'CSE210', 'A'),
('2030127', 'CSE210L', 'A'),
('2030137', 'CSE104', 'B+'),
('2030137', 'CSE104L', 'B+'),
('2030137', 'CSE203', 'B+'),
('2030137', 'CSE203L', 'B+'),
('2030147', 'CSE104', 'A-'),
('2030147', 'CSE104L', 'A-'),
('2030147', 'CSE203', 'A-'),
('2030147', 'CSE203L', 'A-'),
('2030157', 'CSE104', 'A-'),
('2030157', 'CSE104L', 'A-'),
('2030157', 'CSE203', 'A-'),
('2030157', 'CSE203L', 'A-'),
('2030157', 'CSE204', 'A-'),
('2030157', 'CSE204L', 'A-'),
('2030157', 'CSE210', 'A-'),
('2030157', 'CSE210L', 'A-'),
('2030167', 'CSE104', 'B+'),
('2030167', 'CSE104L', 'B+'),
('2030167', 'CSE203', 'B+'),
('2030167', 'CSE203L', 'B+'),
('2030177', 'CSE104', 'B+'),
('2030177', 'CSE104L', 'B+'),
('2030177', 'CSE203', 'B+'),
('2030177', 'CSE203L', 'B+'),
('2030177', 'CSE204', 'B+'),
('2030177', 'CSE204L', 'B+'),
('2030177', 'CSE210', 'B+'),
('2030177', 'CSE210L', 'B+'),
('2030187', 'CSE104', 'A-'),
('2030187', 'CSE104L', 'A-'),
('2030187', 'CSE203', 'A-'),
('2030187', 'CSE203L', 'A-'),
('2030187', 'CSE204', 'A-'),
('2030187', 'CSE204L', 'A-'),
('2030187', 'CSE210', 'A-'),
('2030187', 'CSE210L', 'A-'),
('2030187', 'CSE211', 'A-'),
('2030187', 'CSE211L', 'A-'),
('2030187', 'CSE213', 'A-'),
('2030187', 'CSE213L', 'A-'),
('2030197', 'CSE104', 'A'),
('2030197', 'CSE104L', 'A'),
('2030197', 'CSE203', 'A'),
('2030197', 'CSE203L', 'A'),
('2030197', 'CSE204', 'A'),
('2030197', 'CSE204L', 'A'),
('2030197', 'CSE210', 'A'),
('2030197', 'CSE210L', 'A'),
('2030197', 'CSE211', 'A'),
('2030197', 'CSE211L', 'A'),
('2030197', 'CSE213', 'A'),
('2030197', 'CSE213L', 'A'),
('2030207', 'CSE104', 'A-'),
('2030207', 'CSE104L', 'A-'),
('2030207', 'CSE203', 'A-'),
('2030207', 'CSE203L', 'A-'),
('2030207', 'CSE204', 'A-'),
('2030207', 'CSE204L', 'A-'),
('2030207', 'CSE210', 'A-'),
('2030207', 'CSE210L', 'A-'),
('2030207', 'CSE211', 'A-'),
('2030207', 'CSE211L', 'A-'),
('2030207', 'CSE213', 'A-'),
('2030207', 'CSE213L', 'A-'),
('2030217', 'CSE104', 'B+'),
('2030217', 'CSE104L', 'B+'),
('2030217', 'CSE203', 'B+'),
('2030217', 'CSE203L', 'B+'),
('2030217', 'CSE204', 'B+'),
('2030217', 'CSE204L', 'B+'),
('2030217', 'CSE210', 'B+'),
('2030217', 'CSE210L', 'B+'),
('2030217', 'CSE211', 'B+'),
('2030217', 'CSE211L', 'B+'),
('2030217', 'CSE213', 'B+'),
('2030217', 'CSE213L', 'B+'),
('2030227', 'CSE104', 'B'),
('2030227', 'CSE104L', 'B'),
('2030227', 'CSE203', 'B'),
('2030227', 'CSE203L', 'B'),
('2030237', 'CSE104', 'A-'),
('2030237', 'CSE104L', 'A-'),
('2030237', 'CSE203', 'A-'),
('2030237', 'CSE203L', 'A-'),
('2030237', 'CSE204', 'A-'),
('2030237', 'CSE204L', 'A-'),
('2030237', 'CSE210', 'A-'),
('2030237', 'CSE210L', 'A-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `co`
--
ALTER TABLE `co`
  ADD PRIMARY KEY (`COID`),
  ADD KEY `fk_co_plo` (`PLOID`),
  ADD KEY `fk_co_course` (`CourseID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `fk_course_department` (`DepartmentID`);

--
-- Indexes for table `co_exam`
--
ALTER TABLE `co_exam`
  ADD PRIMARY KEY (`COID`,`ExamID`),
  ADD KEY `fk_co_exam_exam` (`ExamID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `fk_department_employee` (`DHEmployeeID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`ExamID`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`ExamID`,`QuestionID`),
  ADD KEY `fk_exam_question_question` (`QuestionID`);

--
-- Indexes for table `outline`
--
ALTER TABLE `outline`
  ADD PRIMARY KEY (`SectionID`,`OutlineID`);

--
-- Indexes for table `plo`
--
ALTER TABLE `plo`
  ADD PRIMARY KEY (`PLOID`),
  ADD KEY `fk_plo_program` (`ProgramID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`ProgramID`),
  ADD KEY `fk_program_department` (`DepartmentID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `registered_course`
--
ALTER TABLE `registered_course`
  ADD PRIMARY KEY (`StudentID`,`RegistrationID`),
  ADD KEY `fk_registered_course_registration` (`RegistrationID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`RegistrationID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`SchoolID`),
  ADD KEY `fk_school_employee` (`DeEmployeeID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`SectionID`),
  ADD KEY `fk_section_course` (`CourseID`),
  ADD KEY `fk_section_employee` (`IEmployeeID`);

--
-- Indexes for table `section_registration`
--
ALTER TABLE `section_registration`
  ADD PRIMARY KEY (`SectionID`,`RegistrationID`),
  ADD KEY `fk_section_registration_registration` (`RegistrationID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `fk_student_program` (`ProgramID`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`StudentID`,`CourseID`),
  ADD KEY `fk_student_grade_course` (`CourseID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `co`
--
ALTER TABLE `co`
  ADD CONSTRAINT `fk_co_course` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `fk_co_plo` FOREIGN KEY (`PLOID`) REFERENCES `plo` (`PLOID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_course_department` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`);

--
-- Constraints for table `co_exam`
--
ALTER TABLE `co_exam`
  ADD CONSTRAINT `fk_co_exam_co` FOREIGN KEY (`COID`) REFERENCES `co` (`COID`),
  ADD CONSTRAINT `fk_co_exam_exam` FOREIGN KEY (`ExamID`) REFERENCES `exam` (`ExamID`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_department_employee` FOREIGN KEY (`DHEmployeeID`) REFERENCES `employee` (`EmployeeID`);

--
-- Constraints for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD CONSTRAINT `fk_exam_question_exam` FOREIGN KEY (`ExamID`) REFERENCES `exam` (`ExamID`),
  ADD CONSTRAINT `fk_exam_question_question` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`);

--
-- Constraints for table `outline`
--
ALTER TABLE `outline`
  ADD CONSTRAINT `fk_outline_section` FOREIGN KEY (`SectionID`) REFERENCES `section` (`SectionID`);

--
-- Constraints for table `plo`
--
ALTER TABLE `plo`
  ADD CONSTRAINT `fk_plo_program` FOREIGN KEY (`ProgramID`) REFERENCES `program` (`ProgramID`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `fk_program_department` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
