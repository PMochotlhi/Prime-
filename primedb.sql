-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2016 at 06:53 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `primedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `Name` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Claims_ID` int(11) NOT NULL,
  `Claims_User_ID` int(11) NOT NULL,
  `Supporting Document File Address` varchar(45) DEFAULT NULL,
  `Start_Date` datetime DEFAULT NULL,
  `End_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accomodation_claim`
--

CREATE TABLE `accomodation_claim` (
  `ID` int(11) NOT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Accomodation name` varchar(45) DEFAULT NULL,
  `Checkin_Date` datetime DEFAULT NULL,
  `Checkout_Date` datetime DEFAULT NULL,
  `Claims_ID` int(11) NOT NULL,
  `Claims_User_ID` int(11) NOT NULL,
  `Claims_Employee_User_ID` int(11) NOT NULL,
  `Reason for stay` varchar(45) DEFAULT NULL,
  `Price per night` double DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Supporting Documentation Location adress` varchar(45) DEFAULT NULL,
  `Total Claim` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_type`
--

CREATE TABLE `address_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Suitable_For_Alerts` tinyint(1) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `airline_travel`
--

CREATE TABLE `airline_travel` (
  `Airline` varchar(45) DEFAULT NULL,
  `Start_Location` varchar(45) DEFAULT NULL,
  `Destination` varchar(45) DEFAULT NULL,
  `Claims_ID` int(11) NOT NULL,
  `Claims_User_ID` int(11) NOT NULL,
  `Supporting Document File Address` varchar(45) DEFAULT NULL,
  `Claims_ID1` int(11) NOT NULL,
  `Claims_User_ID1` int(11) NOT NULL,
  `Claims_Employee_User_ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Flight Number` int(11) DEFAULT NULL,
  `Reason` varchar(45) DEFAULT NULL,
  `Total Claim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `car_rental_claim`
--

CREATE TABLE `car_rental_claim` (
  `Rental_Company` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Start_Date` datetime DEFAULT NULL,
  `End_Date` datetime DEFAULT NULL,
  `Supporting Document location` varchar(45) DEFAULT NULL,
  `Claims_ID` int(11) NOT NULL,
  `Claims_User_ID` int(11) NOT NULL,
  `Claims_ID1` int(11) NOT NULL,
  `Claims_User_ID1` int(11) NOT NULL,
  `Claims_Employee_User_ID` int(11) NOT NULL,
  `Car Make` varchar(45) DEFAULT NULL,
  `Car Model` varchar(45) DEFAULT NULL,
  `Distance Traveled` int(11) DEFAULT NULL,
  `Insurance` tinyint(1) DEFAULT NULL,
  `Reason for Rental` varchar(45) DEFAULT NULL,
  `Price Per Day` int(11) DEFAULT NULL,
  `Additional Costs` int(11) DEFAULT NULL,
  `Petrol Expence` int(11) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Total Claim` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE `claim` (
  `ID` int(11) NOT NULL,
  `Amount` double DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  `Claims_Type_ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Employee_User_ID` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `claim_type`
--

CREATE TABLE `claim_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Supporting Document File Address` varchar(45) DEFAULT NULL,
  `Total Claim` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `User_ID` int(11) NOT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  `Position` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  `Organisation Address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_contact`
--

CREATE TABLE `client_contact` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Surname` varchar(45) DEFAULT NULL,
  `Cell Phone Number` int(11) DEFAULT NULL,
  `Office Number` int(11) DEFAULT NULL,
  `Position` varchar(45) DEFAULT NULL,
  `Email Address` varchar(45) DEFAULT NULL,
  `Client_User_ID` int(11) NOT NULL,
  `Branch_ ID` int(11) NOT NULL,
  `Branch_Client_User_ID` int(11) NOT NULL,
  `Department_Type_ID` int(11) NOT NULL,
  `Department_Type_Branch_ ID` int(11) NOT NULL,
  `Department_Type_Branch_Client_User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_review`
--

CREATE TABLE `client_review` (
  `ID` int(11) NOT NULL,
  `Client_User_ID` int(11) NOT NULL,
  `Reviews_ID` int(11) NOT NULL,
  `Reviews_Project_ID` varchar(45) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `User_ID` int(11) NOT NULL,
  `Contractor_Type_ID` int(11) NOT NULL,
  `Hourly_Rate` double DEFAULT NULL,
  `Billable_Hours` double DEFAULT NULL,
  `Reviews` varchar(45) DEFAULT NULL,
  `Average_Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contractor_review`
--

CREATE TABLE `contractor_review` (
  `ID` int(11) NOT NULL,
  `Contractor_User_ID` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Review_Question_ID` int(11) NOT NULL,
  `Review_Question_Project_ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contractor_skill`
--

CREATE TABLE `contractor_skill` (
  `ID` int(11) NOT NULL,
  `Skills_ID` int(11) NOT NULL,
  `Skill_Level_ID` int(11) NOT NULL,
  `Contractor_User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contractor_type`
--

CREATE TABLE `contractor_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documentation`
--

CREATE TABLE `documentation` (
  `ID` int(11) NOT NULL,
  `Details` varchar(45) DEFAULT NULL,
  `Document_Type_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Source` varchar(45) DEFAULT NULL,
  `Document File Address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE `document_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `User_ID` int(11) NOT NULL,
  `Employee_Salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_skill`
--

CREATE TABLE `employee_skill` (
  `ID` int(11) NOT NULL,
  `Skills_ID` int(11) NOT NULL,
  `Employee_User_ID` int(11) NOT NULL,
  `Skill_Level_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hour`
--

CREATE TABLE `hour` (
  `ID` int(11) NOT NULL,
  `Amount` double DEFAULT NULL,
  `Task_User_User_ID` int(11) NOT NULL,
  `Task_User_Task_ID` int(11) NOT NULL,
  `Percentage_Completed` double DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `ID` int(11) NOT NULL,
  `Action` varchar(45) DEFAULT NULL,
  `IP_Address` varchar(45) DEFAULT NULL,
  `Details` varchar(45) DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  `Date_Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `motor_vehicle_travel`
--

CREATE TABLE `motor_vehicle_travel` (
  `Car` varchar(45) DEFAULT NULL,
  `Distance` double DEFAULT NULL,
  `Destination` varchar(45) DEFAULT NULL,
  `Start_Location` varchar(45) DEFAULT NULL,
  `Claims_ID` int(11) NOT NULL,
  `Claims_User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID` int(11) NOT NULL,
  `Amount` double DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Project_ID` int(11) NOT NULL,
  `Supporting_Documents` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pending_project_request`
--

CREATE TABLE `pending_project_request` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Deadline` datetime DEFAULT NULL,
  `Client_User_ID` int(11) NOT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  `Client Contact` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `petrol_claim`
--

CREATE TABLE `petrol_claim` (
  `ID` int(11) NOT NULL,
  `Car` varchar(45) DEFAULT NULL,
  `Distance` varchar(45) DEFAULT NULL,
  `Destination` varchar(45) DEFAULT NULL,
  `Start_Location` varchar(45) DEFAULT NULL,
  `Claims_ID` int(11) NOT NULL,
  `Claims_User_ID` int(11) NOT NULL,
  `Claims_Employee_User_ID` int(11) NOT NULL,
  `Reason` varchar(45) DEFAULT NULL,
  `Total Claim` double DEFAULT NULL,
  `Supporting Document Location` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phase`
--

CREATE TABLE `phase` (
  `ID` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Start` datetime DEFAULT NULL,
  `End` datetime DEFAULT NULL,
  `Project_ID` int(11) NOT NULL,
  `Billable Hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Start Date` datetime DEFAULT NULL,
  `End Date` datetime DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL,
  `Total Hours` varchar(45) DEFAULT NULL,
  `Project _Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_review`
--

CREATE TABLE `project_review` (
  `ID` int(11) NOT NULL,
  `Project_ID` int(11) NOT NULL,
  `Review_Question_ID` int(11) NOT NULL,
  `Review_Question_Project_ID` varchar(45) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project _type`
--

CREATE TABLE `project _type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `Project_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Billable_Hours` double DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `Hourly Rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Details` varchar(45) DEFAULT NULL,
  `Reminder_Type_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `Start` datetime DEFAULT NULL,
  `End` datetime DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  `Group` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_type`
--

CREATE TABLE `reminder_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review_question`
--

CREATE TABLE `review_question` (
  `ID` int(11) NOT NULL,
  `Project_ID` varchar(45) NOT NULL,
  `Question type` varchar(45) DEFAULT NULL,
  `Questions` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Create` tinyint(1) DEFAULT NULL,
  `Read` tinyint(1) DEFAULT NULL,
  `Update` tinyint(1) DEFAULT NULL,
  `Execute` tinyint(1) DEFAULT NULL,
  `Delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `security_answer`
--

CREATE TABLE `security_answer` (
  `Security_Question_ID` int(11) NOT NULL,
  `Answer` varchar(45) DEFAULT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `ID` int(11) NOT NULL,
  `Question` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `ID` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill_level`
--

CREATE TABLE `skill_level` (
  `ID` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skill_type`
--

CREATE TABLE `skill_type` (
  `ID` int(11) NOT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Skills_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Priority` varchar(45) DEFAULT NULL,
  `Task_Type_ID` int(11) NOT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `Phase_ID` int(11) NOT NULL,
  `Phase_Project_ID` int(11) NOT NULL,
  `Skill_ID` varchar(45) NOT NULL,
  `Start` datetime DEFAULT NULL,
  `End` datetime DEFAULT NULL,
  `Billable Hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_skill`
--

CREATE TABLE `task_skill` (
  `ID` int(11) NOT NULL,
  `Skills_ID` int(11) NOT NULL,
  `Task_ID` int(11) NOT NULL,
  `Task_Phase_ID` int(11) NOT NULL,
  `Task_Phase_Project_ID` int(11) NOT NULL,
  `Task_Skill_ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_type`
--

CREATE TABLE `task_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_user`
--

CREATE TABLE `task_user` (
  `User_ID` int(11) NOT NULL,
  `Task_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Preferred_Communication_Address` varchar(45) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `User_Contract_Number` int(11) DEFAULT NULL,
  `Profile_Photo` varchar(45) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `User_Type_ID` int(11) NOT NULL,
  `Bank Account Details` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Surname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `ID` int(11) NOT NULL,
  `Address_Type_ID` int(11) NOT NULL,
  `Details` varchar(45) DEFAULT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `Description` varchar(45) DEFAULT NULL,
  `Role_ID` int(11) NOT NULL,
  `Role_Name` varchar(45) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`Claims_ID`,`Claims_User_ID`);

--
-- Indexes for table `accomodation_claim`
--
ALTER TABLE `accomodation_claim`
  ADD PRIMARY KEY (`ID`,`Claims_ID`,`Claims_User_ID`,`Claims_Employee_User_ID`),
  ADD KEY `fk_Accomodation_Claims1_idx` (`Claims_ID`,`Claims_User_ID`,`Claims_Employee_User_ID`);

--
-- Indexes for table `address_type`
--
ALTER TABLE `address_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `airline_travel`
--
ALTER TABLE `airline_travel`
  ADD PRIMARY KEY (`Claims_ID`,`Claims_User_ID`,`Claims_ID1`,`Claims_User_ID1`,`Claims_Employee_User_ID`),
  ADD KEY `fk_Airline_Travel_Claims1_idx` (`Claims_ID1`,`Claims_User_ID1`,`Claims_Employee_User_ID`);

--
-- Indexes for table `car_rental_claim`
--
ALTER TABLE `car_rental_claim`
  ADD PRIMARY KEY (`Claims_ID`,`Claims_User_ID`,`Claims_ID1`,`Claims_User_ID1`,`Claims_Employee_User_ID`),
  ADD KEY `fk_Car_Rental_Claims1_idx` (`Claims_ID1`,`Claims_User_ID1`,`Claims_Employee_User_ID`);

--
-- Indexes for table `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`ID`,`User_ID`,`Employee_User_ID`),
  ADD KEY `fk_Claims_User1_idx` (`User_ID`),
  ADD KEY `fk_Claims_Claims_Type1_idx` (`Claims_Type_ID`),
  ADD KEY `fk_Claims_Employee1_idx` (`Employee_User_ID`);

--
-- Indexes for table `claim_type`
--
ALTER TABLE `claim_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `fk_Client_User1_idx` (`User_ID`);

--
-- Indexes for table `client_contact`
--
ALTER TABLE `client_contact`
  ADD PRIMARY KEY (`ID`,`Client_User_ID`,`Branch_ ID`,`Branch_Client_User_ID`,`Department_Type_ID`,`Department_Type_Branch_ ID`,`Department_Type_Branch_Client_User_ID`);

--
-- Indexes for table `client_review`
--
ALTER TABLE `client_review`
  ADD PRIMARY KEY (`ID`,`Client_User_ID`,`Reviews_ID`,`Reviews_Project_ID`),
  ADD KEY `fk_Client_Review_Client1_idx` (`Client_User_ID`),
  ADD KEY `fk_Client_Review_Reviews1_idx` (`Reviews_ID`,`Reviews_Project_ID`);

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `fk_Contractor_Contractor_Type1_idx` (`Contractor_Type_ID`);

--
-- Indexes for table `contractor_review`
--
ALTER TABLE `contractor_review`
  ADD PRIMARY KEY (`ID`,`Contractor_User_ID`,`Review_Question_ID`,`Review_Question_Project_ID`),
  ADD KEY `fk_Contractor_Reviews_Contractor1_idx` (`Contractor_User_ID`),
  ADD KEY `fk_Contractor_Review_Review_Question1_idx` (`Review_Question_ID`,`Review_Question_Project_ID`);

--
-- Indexes for table `contractor_skill`
--
ALTER TABLE `contractor_skill`
  ADD PRIMARY KEY (`ID`,`Skills_ID`,`Skill_Level_ID`,`Contractor_User_ID`),
  ADD KEY `fk_Contractor_Skills_Skills1_idx` (`Skills_ID`),
  ADD KEY `fk_Contractor_Skills_Skill_Level1_idx` (`Skill_Level_ID`),
  ADD KEY `fk_Contractor_Skill_Contractor1_idx` (`Contractor_User_ID`);

--
-- Indexes for table `contractor_type`
--
ALTER TABLE `contractor_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `documentation`
--
ALTER TABLE `documentation`
  ADD PRIMARY KEY (`ID`,`User_ID`),
  ADD KEY `fk_Documentation_Document_Type1_idx` (`Document_Type_ID`),
  ADD KEY `fk_Documentation_User1_idx` (`User_ID`);

--
-- Indexes for table `document_type`
--
ALTER TABLE `document_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `fk_Employee_User1_idx` (`User_ID`);

--
-- Indexes for table `employee_skill`
--
ALTER TABLE `employee_skill`
  ADD PRIMARY KEY (`ID`,`Skills_ID`,`Employee_User_ID`,`Skill_Level_ID`),
  ADD KEY `fk_Employee_Skills_Skills1_idx` (`Skills_ID`),
  ADD KEY `fk_Employee_Skills_Employee1_idx` (`Employee_User_ID`),
  ADD KEY `fk_Employee_Skills_Skill_Level1_idx` (`Skill_Level_ID`);

--
-- Indexes for table `hour`
--
ALTER TABLE `hour`
  ADD PRIMARY KEY (`ID`,`Task_User_User_ID`,`Task_User_Task_ID`),
  ADD KEY `fk_Hours_Task_User1_idx` (`Task_User_User_ID`,`Task_User_Task_ID`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_Log_User1_idx` (`User_ID`);

--
-- Indexes for table `motor_vehicle_travel`
--
ALTER TABLE `motor_vehicle_travel`
  ADD PRIMARY KEY (`Claims_ID`,`Claims_User_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`,`Project_ID`),
  ADD KEY `fk_Payments_Project1_idx` (`Project_ID`);

--
-- Indexes for table `pending_project_request`
--
ALTER TABLE `pending_project_request`
  ADD PRIMARY KEY (`ID`,`Client_User_ID`),
  ADD KEY `fk_Pending_Project_Request_Client1_idx` (`Client_User_ID`);

--
-- Indexes for table `petrol_claim`
--
ALTER TABLE `petrol_claim`
  ADD PRIMARY KEY (`ID`,`Claims_ID`,`Claims_User_ID`,`Claims_Employee_User_ID`),
  ADD KEY `fk_Motorvehicle_Travel_Claims1_idx` (`Claims_ID`,`Claims_User_ID`,`Claims_Employee_User_ID`);

--
-- Indexes for table `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`ID`,`Project_ID`),
  ADD KEY `fk_Phase_Project1_idx` (`Project_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_Project_Project _Type1_idx` (`Project _Type_ID`);

--
-- Indexes for table `project_review`
--
ALTER TABLE `project_review`
  ADD PRIMARY KEY (`ID`,`Project_ID`,`Review_Question_ID`,`Review_Question_Project_ID`),
  ADD KEY `fk_Project_Review_Project1_idx` (`Project_ID`),
  ADD KEY `fk_Project_Review_Review_Question1_idx` (`Review_Question_ID`,`Review_Question_Project_ID`);

--
-- Indexes for table `project _type`
--
ALTER TABLE `project _type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`Project_ID`,`User_ID`),
  ADD KEY `fk_Project_User_User1_idx` (`User_ID`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`ID`,`User_ID`),
  ADD KEY `fk_Reminder_Reminder_Type1_idx` (`Reminder_Type_ID`),
  ADD KEY `fk_Reminder_User1_idx` (`User_ID`);

--
-- Indexes for table `reminder_type`
--
ALTER TABLE `reminder_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `review_question`
--
ALTER TABLE `review_question`
  ADD PRIMARY KEY (`ID`,`Project_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `security_answer`
--
ALTER TABLE `security_answer`
  ADD PRIMARY KEY (`Security_Question_ID`,`User_ID`),
  ADD KEY `fk_Security_Answer_Security_Question1_idx` (`Security_Question_ID`),
  ADD KEY `fk_Security_Answer_User1_idx` (`User_ID`);

--
-- Indexes for table `security_question`
--
ALTER TABLE `security_question`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `skill_level`
--
ALTER TABLE `skill_level`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `skill_type`
--
ALTER TABLE `skill_type`
  ADD PRIMARY KEY (`ID`,`Skills_ID`),
  ADD KEY `fk_Skills_Type_Skills1_idx` (`Skills_ID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`ID`,`Phase_ID`,`Phase_Project_ID`,`Skill_ID`),
  ADD KEY `fk_Task_Task_Type1_idx` (`Task_Type_ID`),
  ADD KEY `fk_Task_Phase1_idx` (`Phase_ID`,`Phase_Project_ID`);

--
-- Indexes for table `task_skill`
--
ALTER TABLE `task_skill`
  ADD PRIMARY KEY (`ID`,`Skills_ID`,`Task_ID`,`Task_Phase_ID`,`Task_Phase_Project_ID`,`Task_Skill_ID`),
  ADD KEY `fk_Task_Skills_Skills1_idx` (`Skills_ID`),
  ADD KEY `fk_Task_Skills_Task1_idx` (`Task_ID`,`Task_Phase_ID`,`Task_Phase_Project_ID`,`Task_Skill_ID`);

--
-- Indexes for table `task_type`
--
ALTER TABLE `task_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `task_user`
--
ALTER TABLE `task_user`
  ADD PRIMARY KEY (`User_ID`,`Task_ID`),
  ADD KEY `fk_Task_User_Task1_idx` (`Task_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_User_User_Type1_idx` (`User_Type_ID`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`ID`,`Address_Type_ID`,`User_ID`),
  ADD KEY `fk_User_Address_Address_Type1_idx` (`Address_Type_ID`),
  ADD KEY `fk_User_Address_User1_idx` (`User_ID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`Role_ID`,`User_ID`),
  ADD KEY `fk_User_Role_Role1_idx` (`Role_ID`),
  ADD KEY `fk_User_Role_User1_idx` (`User_ID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `fk_Accommodation_Claims1` FOREIGN KEY (`Claims_ID`,`Claims_User_ID`) REFERENCES `claim` (`ID`, `User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `accomodation_claim`
--
ALTER TABLE `accomodation_claim`
  ADD CONSTRAINT `fk_Accomodation_Claims1` FOREIGN KEY (`Claims_ID`,`Claims_User_ID`,`Claims_Employee_User_ID`) REFERENCES `claim` (`ID`, `User_ID`, `Employee_User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `airline_travel`
--
ALTER TABLE `airline_travel`
  ADD CONSTRAINT `fk_Airline_Travel_Claims1` FOREIGN KEY (`Claims_ID1`,`Claims_User_ID1`,`Claims_Employee_User_ID`) REFERENCES `claim` (`ID`, `User_ID`, `Employee_User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `car_rental_claim`
--
ALTER TABLE `car_rental_claim`
  ADD CONSTRAINT `fk_Car_Rental_Claims1` FOREIGN KEY (`Claims_ID1`,`Claims_User_ID1`,`Claims_Employee_User_ID`) REFERENCES `claim` (`ID`, `User_ID`, `Employee_User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `claim`
--
ALTER TABLE `claim`
  ADD CONSTRAINT `fk_Claims_Claims_Type1` FOREIGN KEY (`Claims_Type_ID`) REFERENCES `claim_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Claims_Employee1` FOREIGN KEY (`Employee_User_ID`) REFERENCES `employee` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_Client_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `client_review`
--
ALTER TABLE `client_review`
  ADD CONSTRAINT `fk_Client_Review_Client1` FOREIGN KEY (`Client_User_ID`) REFERENCES `client` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Client_Review_Reviews1` FOREIGN KEY (`Reviews_ID`,`Reviews_Project_ID`) REFERENCES `review_question` (`ID`, `Project_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contractor`
--
ALTER TABLE `contractor`
  ADD CONSTRAINT `fk_Contractor_Contractor_Type1` FOREIGN KEY (`Contractor_Type_ID`) REFERENCES `contractor_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Contractor_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contractor_review`
--
ALTER TABLE `contractor_review`
  ADD CONSTRAINT `fk_Contractor_Review_Review_Question1` FOREIGN KEY (`Review_Question_ID`,`Review_Question_Project_ID`) REFERENCES `review_question` (`ID`, `Project_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Contractor_Reviews_Contractor1` FOREIGN KEY (`Contractor_User_ID`) REFERENCES `contractor` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contractor_skill`
--
ALTER TABLE `contractor_skill`
  ADD CONSTRAINT `fk_Contractor_Skill_Contractor1` FOREIGN KEY (`Contractor_User_ID`) REFERENCES `contractor` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Contractor_Skills_Skill_Level1` FOREIGN KEY (`Skill_Level_ID`) REFERENCES `skill_level` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Contractor_Skills_Skills1` FOREIGN KEY (`Skills_ID`) REFERENCES `skill` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `documentation`
--
ALTER TABLE `documentation`
  ADD CONSTRAINT `fk_Documentation_Document_Type1` FOREIGN KEY (`Document_Type_ID`) REFERENCES `document_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Documentation_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_Employee_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employee_skill`
--
ALTER TABLE `employee_skill`
  ADD CONSTRAINT `fk_Employee_Skills_Employee1` FOREIGN KEY (`Employee_User_ID`) REFERENCES `employee` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Employee_Skills_Skill_Level1` FOREIGN KEY (`Skill_Level_ID`) REFERENCES `skill_level` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Employee_Skills_Skills1` FOREIGN KEY (`Skills_ID`) REFERENCES `skill` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hour`
--
ALTER TABLE `hour`
  ADD CONSTRAINT `fk_Hours_Task_User1` FOREIGN KEY (`Task_User_User_ID`,`Task_User_Task_ID`) REFERENCES `task_user` (`User_ID`, `Task_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_Log_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `motor_vehicle_travel`
--
ALTER TABLE `motor_vehicle_travel`
  ADD CONSTRAINT `fk_Motor_Vehicle_Travel_Claims1` FOREIGN KEY (`Claims_ID`,`Claims_User_ID`) REFERENCES `claim` (`ID`, `User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_Payments_Project1` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pending_project_request`
--
ALTER TABLE `pending_project_request`
  ADD CONSTRAINT `fk_Pending_Project_Request_Client1` FOREIGN KEY (`Client_User_ID`) REFERENCES `client` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `petrol_claim`
--
ALTER TABLE `petrol_claim`
  ADD CONSTRAINT `fk_Motorvehicle_Travel_Claims1` FOREIGN KEY (`Claims_ID`,`Claims_User_ID`,`Claims_Employee_User_ID`) REFERENCES `claim` (`ID`, `User_ID`, `Employee_User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phase`
--
ALTER TABLE `phase`
  ADD CONSTRAINT `fk_Phase_Project1` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `fk_Project_Project _Type1` FOREIGN KEY (`Project _Type_ID`) REFERENCES `project _type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `project_review`
--
ALTER TABLE `project_review`
  ADD CONSTRAINT `fk_Project_Review_Project1` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Project_Review_Review_Question1` FOREIGN KEY (`Review_Question_ID`,`Review_Question_Project_ID`) REFERENCES `review_question` (`ID`, `Project_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `fk_Project_User_Project1` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Project_User_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reminder`
--
ALTER TABLE `reminder`
  ADD CONSTRAINT `fk_Reminder_Reminder_Type1` FOREIGN KEY (`Reminder_Type_ID`) REFERENCES `reminder_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reminder_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `security_answer`
--
ALTER TABLE `security_answer`
  ADD CONSTRAINT `fk_Security_Answer_Security_Question1` FOREIGN KEY (`Security_Question_ID`) REFERENCES `security_question` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Security_Answer_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `skill_type`
--
ALTER TABLE `skill_type`
  ADD CONSTRAINT `fk_Skills_Type_Skills1` FOREIGN KEY (`Skills_ID`) REFERENCES `skill` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `fk_Task_Phase1` FOREIGN KEY (`Phase_ID`,`Phase_Project_ID`) REFERENCES `phase` (`ID`, `Project_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Task_Task_Type1` FOREIGN KEY (`Task_Type_ID`) REFERENCES `task_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `task_skill`
--
ALTER TABLE `task_skill`
  ADD CONSTRAINT `fk_Task_Skills_Skills1` FOREIGN KEY (`Skills_ID`) REFERENCES `skill` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Task_Skills_Task1` FOREIGN KEY (`Task_ID`,`Task_Phase_ID`,`Task_Phase_Project_ID`,`Task_Skill_ID`) REFERENCES `task` (`ID`, `Phase_ID`, `Phase_Project_ID`, `Skill_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `task_user`
--
ALTER TABLE `task_user`
  ADD CONSTRAINT `fk_Task_User_Task1` FOREIGN KEY (`Task_ID`) REFERENCES `task` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Task_User_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_User_Type1` FOREIGN KEY (`User_Type_ID`) REFERENCES `user_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `fk_User_Address_Address_Type1` FOREIGN KEY (`Address_Type_ID`) REFERENCES `address_type` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_User_Address_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_User_Role_Role1` FOREIGN KEY (`Role_ID`) REFERENCES `role` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_User_Role_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
