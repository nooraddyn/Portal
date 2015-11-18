-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2015 at 09:29 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `enrolment`
--

CREATE TABLE IF NOT EXISTS `enrolment` (
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `last_edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mnu_student`
--

CREATE TABLE IF NOT EXISTS `mnu_student` (
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42765 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mnu_student`
--

INSERT INTO `mnu_student` (`student_id`, `fname`, `lname`, `email`, `faculty`) VALUES
(31586, 'Mohamed', 'Nooradheen', 'nooraddyn@live.com', 'FS'),
(35485, 'Aishath', 'Nafeesa', 'nafee24@gmail.com', 'FHTS'),
(41685, 'Ibrahim', 'Ali', 'ayya24@gmail.com', 'FS'),
(42764, 'Ali', 'Luthufee', 'luttey25@gmail.com', 'FS');

-- --------------------------------------------------------

--
-- Table structure for table `srs_student`
--

CREATE TABLE IF NOT EXISTS `srs_student` (
  `student_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `loggin_attempts` int(11) NOT NULL,
  `account_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `credits` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `name`, `credits`, `description`, `fee`) VALUES
(13, 'Introduction to Management', 15, 'Introduction to Management is a course that provides knowledge of interest to individuals of all ages and backgrounds who wish to learn more about managing careers, individuals, organizational situations, decisions, and relationships.', 1200),
(23, 'Fundamentals of Programming', 15, 'Fundamentals of Object-Oriented Programming is an introductory course to the basic principles of programming with classes and objects using C++. The language C++ has been chosen because it supports object-oriented programming and because it is widely used in industry.', 1125),
(33, 'Mathematics', 15, 'The study of the measurement, properties, and relationships of quantities and sets, using numbers and symbols.', 1125),
(55, 'English for Further Studies and Study Skill 1', 12, 'This course is for people from language backgrounds other than English who have\r\nintermediate English language skills. You will develop the English language\r\nspeaking, listening, reading and writing skills that will help you participate\r\nin further training in limited vocational areas.', 636),
(101, 'Information Systems', 15, 'Information system is an academic study of systems with a specific reference to information and the complementary networks of hardware and software that people and organizations use to collect, filter, process, create and also distribute data.', 1125),
(103, 'Applications Development', 15, 'Mobile application development is a term used to denote the act or process by which application software is developed for handheld devices, such as personal digital assistants, enterprise digital assistants or mobile phones.', 1125),
(104, 'Discrete Mathematics', 15, 'Discrete mathematics is the study of mathematical structures that are fundamentally discrete rather than continuous.', 1125),
(105, 'Computer Concepts and PC Applications', 15, 'A basic, introductory course in personal computers using Microsoft Windows and Office Suite applications. This course also covers PC history, hardware, software and operating concepts.', 1125),
(106, 'Business Communicatins', 15, 'Business communication is any form of communication, verbal or nonverbal, that is used to relay a message, promote a product or service or share information.', 1125),
(107, 'Data Communications and Networking', 15, 'ata communications refers to the transmission of this digital data between two or more computers and a computer network or data network is a telecommunications network that allows computers to exchange data.', 1125),
(111, 'Introduction to Programming', 15, 'This course is part of the School of Computer Sciences curriculum, and so new visitors should familiarize themselves with the Introduction to Computer Science course before beginning these lessons on programming.', 1125),
(113, 'Multimedia Technology', 15, 'Multimedia technology refers to interactive, computer-based applications that allow people to communicate ideas and information with digital and print elements. Professionals in the field use computer software to develop and manage online graphics and content.', 1125),
(115, 'Management and Organizations', 15, 'The process of organizing, planning, leading and controlling resources within an entity with the overall aim of achieving its objectives. The organizational management of a business needs to be able to make decisions and resolve issues in order to be both effective and beneficial.', 1125),
(117, 'Visual Basic Programming', 15, 'Visual Basic (VB) is a programming environment from Microsoft in which a programmer uses a graphical user interface (GUI) to choose and modify preselected sections of code written in the BASIC programming language.', 1125),
(118, 'Business Mathematics', 15, 'Business mathematics is mathematics used by commercial enterprises to record and manage business operations. Commercial organizations use mathematics in accounting, inventory management, marketing, sales forecasting, and financial analysis.', 1125),
(129, 'ICT for Development', 15, 'Information and Communication Technologies for Development (ICT4D) refers to the use of information and communication technologies (ICTs) in the fields of socioeconomic development, international development, and human rights.', 1125),
(203, 'Data Structures and Algorithms', 15, 'A data structure is a particular way of organizing data in a computer so that it can be used efficiently.', 1125),
(205, 'Object Oriented Programming', 15, 'Object-oriented programming (OOP) is a programming language model organized around objects rather than "actions" and data rather than logic. Historically, a program has been viewed as a logical procedure that takes input data, processes it, and produces output data.', 1125),
(211, 'Database Systems', 15, 'A database management system (DBMS) is a computer software application that interacts with the user, other applications, and the database itself to capture and analyze data. ', 1125),
(215, 'Project Management', 15, 'The planning and organization of an organization''s resources in order to move a specific task, event or duty toward completion. ', 1200),
(221, 'Information Technology Project', 15, 'Final year project in Diploma to test the talents and skills learned in the module.', 1125),
(223, 'System Analysis and Design', 15, 'Systems analysis is a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.', 1125),
(227, 'Introduction to Operating Systems', 15, 'An operating system (OS) is the software component of a computer system that is responsible for the management and coordination of activities and the sharing of the resources of the computer. ', 1125),
(229, 'Advanced Networking and Telecommunications', 15, 'A telecommunications network is a collection of terminal nodes, links are connected so as to enable telecommunication between the terminals. The transmission links connect the nodes together.', 1125),
(231, 'Helpdesk and Service Provision', 15, 'A service providing information and support to computer users, especially within a company.', 1125),
(301, 'Internet Technology', 15, 'Internet technology is the ability of the Internet to transmit information and data through different servers and systems.', 1125),
(303, 'Multimedia Technology and Applications', 15, 'Multimedia technology refers to interactive, computer-based applications that allow people to communicate ideas and information with digital and print elements. ', 1125),
(305, 'Data and Process Modelling', 15, 'Data and process modeling concepts and tools, including data flow diagrams, a data dictionary, and process descriptions.', 1125),
(309, 'IT Management', 15, 'IT management is the discipline whereby all of the information technology resources of a firm are managed in accordance with its needs and priorities.', 1125),
(310, 'Physical Database Design', 15, 'During the physical design process, you convert the data gathered during the logical design phase into a description of the physical database, including tables and constraints.', 1125),
(311, 'Applied IT Project', 30, 'The final project for the Degree.', 2250);

-- --------------------------------------------------------

--
-- Table structure for table `subjects_studied`
--

CREATE TABLE IF NOT EXISTS `subjects_studied` (
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrolment`
--
ALTER TABLE `enrolment`
  ADD KEY `student_id` (`student_id`), ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `mnu_student`
--
ALTER TABLE `mnu_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `srs_student`
--
ALTER TABLE `srs_student`
  ADD UNIQUE KEY `sid` (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD UNIQUE KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects_studied`
--
ALTER TABLE `subjects_studied`
  ADD KEY `student_id` (`student_id`), ADD KEY `subject_id` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mnu_student`
--
ALTER TABLE `mnu_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42765;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrolment`
--
ALTER TABLE `enrolment`
ADD CONSTRAINT `enrolment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `mnu_student` (`student_id`),
ADD CONSTRAINT `enrolment_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `srs_student`
--
ALTER TABLE `srs_student`
ADD CONSTRAINT `srs_student_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `mnu_student` (`student_id`);

--
-- Constraints for table `subjects_studied`
--
ALTER TABLE `subjects_studied`
ADD CONSTRAINT `subjects_studied_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `mnu_student` (`student_id`),
ADD CONSTRAINT `subjects_studied_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
