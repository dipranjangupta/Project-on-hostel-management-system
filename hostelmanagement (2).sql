CREATE DATABASE  IF NOT EXISTS `hostel_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hostel_management`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hostel_management
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountant` (
  `AccID` varchar(4) NOT NULL,
  `f_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(15) DEFAULT NULL,
  `EmpID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`AccID`),
  KEY `EmpID` (`EmpID`),
  CONSTRAINT `accountant_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employees` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountant`
--

LOCK TABLES `accountant` WRITE;
/*!40000 ALTER TABLE `accountant` DISABLE KEYS */;
INSERT INTO `accountant` VALUES ('A_01','Sarada','Nepali','E_04'),('A_02','Sumit','Sharma','E_05');
/*!40000 ALTER TABLE `accountant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `ADD_PIN` int NOT NULL,
  `Address_City` varchar(30) DEFAULT NULL,
  `Address_State` varchar(30) DEFAULT NULL,
  `Address_Country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ADD_PIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (10200,'Baitadi','Sudurpaschim','Nepal'),(10306,'Jogbudha','Sudurpaschim','Nepal'),(21106,'Rara','Karnali','Nepal'),(21300,'Kalikot','Karnali','Nepal'),(21400,'Dolpa','Karnali','Nepal'),(21608,'Dullu','Karnali','Nepal'),(21803,'Motipur','Lumbini','Nepal'),(21907,'Udaypur','Lumbini','Nepal'),(22211,'Tharmare','Karnali','Nepal'),(22411,'Shantinagar','Lumbini','Nepal'),(22412,'Tulsipur','Lumbini','Nepal'),(22415,'Ghorahi','Lumbini','Nepal'),(32700,'Argakhanchi','Lumbini','Nepal'),(33300,'Baglung','Gandaki','Nepal'),(33700,'Pokhara','Gandaki','Nepal'),(44209,'Rampur','Bagmati','Nepal'),(44405,'Bariyarpur','Province_2','Nepal'),(44413,'Parsauni','Province_2','Nepal'),(44600,'Kathmandu','Bagmati','Nepal'),(44805,'Tathali','Bagmati','Nepal'),(45509,'Sunkhani','Bagmati','Nepal'),(45601,'Khajuri','Province_2','Nepal'),(45617,'Dhalkebar','Province_2','Nepal'),(57004,'Pyauli','Province_1','Nepal'),(57010,'Bhulke','Province_1','Nepal');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmpID` varchar(5) NOT NULL,
  `F_Name` varchar(15) DEFAULT NULL,
  `L_Name` varchar(15) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `Ph_No` bigint DEFAULT NULL,
  `Post` varchar(15) DEFAULT NULL,
  `MailId` varchar(45) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('E_01','Deepak','Lamichhane','Male',40,9843252190,'Chef','deepak.lamichhane@gmail.com',25000),('E_02','Raju','Khadka','Male',24,9843253170,'Chef','raju.khadka@gmail.com',20000),('E_03','Amrita','BK','Female',35,9843246785,'Chef','amrita.bk@gmail.com',25000),('E_04','Sarada','Nepali','Female',25,9843235467,'Accountant','sarada.nepali@gmail.com',32000),('E_05','Sumit','Sharma','Male',26,9843289490,'Accountant','sumit.sharma@gmail.com',30000),('E_06','Sudip','Gautam','Male',38,9843254444,'Guard','sudip.gautam@gmail.com',18500),('E_07','Chari','Thapa','Male',45,9843333190,'guard','chari.don@gmail.com',16000),('E_08','Janak','Ghale','Male',30,9855555190,'Guard','janak.ghale@gmail.com',19500),('E_09','Asha','Neupane','Female',26,9843254545,'Nurse','asha.neupane@gmail.com',18000),('E_10','Sangita','Mishra','Female',25,9843257676,'Receptionist','samgita.mishra@gmail.com',14000),('E_11','Sachet','','Male',35,9843255432,'Cleaner','sachet@gmail.com',11000),('E_12','Sanam','','Female',30,9843255609,'Cleaner','sanam@gmail.com',11000),('E_13','Jhalak','','Male',40,9843222190,'Cleaner','jhalak@gmail.com',12000),('E_14','Sunil','Shah','Male',22,9875640000,'IT','sunil.shah@gmail.com',40000);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee` (
  `BillID` int NOT NULL AUTO_INCREMENT,
  `AccID` varchar(4) DEFAULT NULL,
  `RollNum` varchar(15) DEFAULT NULL,
  `MonthlyFee` int DEFAULT NULL,
  `For_Month` varchar(20) DEFAULT NULL,
  `Amount_paid` int DEFAULT NULL,
  `Fee_Status` varchar(20) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BillID`),
  KEY `AccID` (`AccID`),
  KEY `RollNum` (`RollNum`),
  CONSTRAINT `fee_ibfk_1` FOREIGN KEY (`AccID`) REFERENCES `accountant` (`AccID`),
  CONSTRAINT `fee_ibfk_2` FOREIGN KEY (`RollNum`) REFERENCES `student` (`RollNum`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES (1,'A_01','THA075BEI033',10000,'Bhadra',8000,'Partially paid','Ratio'),(2,'A_02','THA075BEI022',10000,'Bhadra',10000,'Paid',NULL),(3,'A_02','THA078BEI033',10000,'Bhadra',5000,'Partially Paid',''),(5,'A_02','THA078BCE002',10000,'Bhadra',10000,'Paid','PAid for whole year'),(6,'A_02','THA078BAME020',10000,'Bhadra',0,'Unpaid',''),(7,'A_02','THA077BCT018',10000,'Bhadra',10000,'Paid',''),(8,'A_02','THA076BEI005',10000,'Bhadra',7000,'Partially Paid',''),(9,'A_02','THA076BAR042',10000,'Bhadra',10000,'Paid','Fee paid for next 3 months'),(10,'A_02','THA075BME008',10000,'Bhadra',4000,'Partially Paid',''),(11,'A_02','THA075BIE004',10000,'Bhadra',10000,'Paid',''),(12,'A_02','THA075BEI038',10000,'Bhadra',10000,'Paid',''),(13,'A_02','THA075BEI024',10000,'Bhadra',10000,'Paid','paid for next 5 months'),(14,'A_02','THA074BEX033',10000,'Bhadra',5000,'Partially Paid',''),(15,'A_02','THA074BEX001',10000,'Bhadra',10000,'Paid',''),(16,'A_01','THA074BCE026',10000,'Bhadra',6000,'Partially Paid','');
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furniture`
--

DROP TABLE IF EXISTS `furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture` (
  `FurnitureID` varchar(5) NOT NULL,
  `RoomId` varchar(4) DEFAULT NULL,
  `Furniture_list` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`FurnitureID`),
  KEY `RoomId` (`RoomId`),
  CONSTRAINT `furniture_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture`
--

LOCK TABLES `furniture` WRITE;
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
INSERT INTO `furniture` VALUES ('FA1','A1','Chair,Study Table,Beds,Hanger'),('FA10','A10','Chair,Study Table,Beds,Hanger,cupboard,bookcase'),('FA11','A11','Chair,Study Table,Beds,Hanger,Bookcase'),('FA15','A15','Chair,Study Table,Beds,Hanger,Bookcase,Cupboard'),('FA2','A2','Chair,Study Table,Beds,Hanger,Bookcase'),('FB1','B1','chair,beds,study table,hanger,bookcase,cupboard'),('FB10','B10','chair,beds,study table,hanger,bookcase,cupboard'),('FB11','B11','chair,beds,study table,bookcase,cupboard'),('FB12','B12','chair,beds,study table,hanger,bookcase'),('FB2','B2','chair,beds,study table,bookcase,cupboard'),('FB3','B3','chair,beds,study table,hanger,bookcase'),('FB4','B4','chair,beds,study table'),('FCG1','CG1','beds,study table,chair,bookcase'),('FCG2','CG2','Beds,study table,hanger,bookcase,chair'),('FCG3','CG3','Beds,study table,bookcase,chair'),('FCG4','CG4','Beds,study table,hanger,chair'),('FCG5','CG5','Beds,study table,hanger,bookcase,chair,cupboard');
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `BlockID` varchar(5) NOT NULL,
  `ContactNum` bigint DEFAULT NULL,
  `EmailId` varchar(30) DEFAULT NULL,
  `hostel_capacity` int DEFAULT NULL,
  `Vacant_Seats` int DEFAULT NULL,
  PRIMARY KEY (`BlockID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES ('H_A',9843210000,'hostela@gmail.com',90,30),('H_B',9843221000,'hostelb@gmail.com',60,25),('H_CG',9843200000,'hostelb@gmail.com',55,20);
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet`
--

DROP TABLE IF EXISTS `internet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internet` (
  `RouterCode` varchar(6) NOT NULL,
  `BlockId` varchar(5) DEFAULT NULL,
  `RoomId` varchar(4) DEFAULT NULL,
  `IPaddress` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RouterCode`),
  KEY `BlockId` (`BlockId`),
  KEY `RoomId` (`RoomId`),
  CONSTRAINT `internet_ibfk_1` FOREIGN KEY (`BlockId`) REFERENCES `hostel` (`BlockID`),
  CONSTRAINT `internet_ibfk_2` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet`
--

LOCK TABLES `internet` WRITE;
/*!40000 ALTER TABLE `internet` DISABLE KEYS */;
INSERT INTO `internet` VALUES ('R1_A','H_A','A9','192.168.64.241'),('R1_B','H_B','B2','192.168.64.241'),('R1_CG','H_CG','CG1','192.168.64.101'),('R2_A','H_A','A17','192.168.64.24'),('R2_B','H_B','B14','192.168.64.22'),('R2_CG','H_CG','CG9','192.168.64.001'),('R3_A','H_A','A25','192.168.64.441'),('R3_B','H_B','B20','192.168.64.11'),('R3_CG','H_CG','CG16','192.168.1.1'),('R4_A','H_A','A40','192.168.64.91');
/*!40000 ALTER TABLE `internet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `RoomID` varchar(4) NOT NULL,
  `capacity` int DEFAULT NULL,
  `BlockID` varchar(5) DEFAULT NULL,
  `floor` varchar(8) DEFAULT NULL,
  `Room_Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RoomID`),
  KEY `BlockID` (`BlockID`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`BlockID`) REFERENCES `hostel` (`BlockID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('A1',2,'H_A','Ground','Vacant'),('A10',2,'H_A','Ground','Vacant'),('A11',3,'H_A','1st','Full'),('A12',3,'H_A','1st','2_vacant'),('A13',3,'H_A','1st','1_vacant'),('A14',3,'H_A','1st','2_vacant'),('A15',3,'H_A','1st','Full'),('A16',2,'H_A','1st','Vacant'),('A17',2,'H_A','1st','1_Vacant'),('A18',2,'H_A','1st','Full'),('A19',2,'H_A','1st','Full'),('A2',2,'H_A','Ground','Full'),('A20',2,'H_A','1st','Full'),('A21',2,'H_A','1st','Full'),('A22',2,'H_A','1st','Full'),('A23',2,'H_A','1st','Full'),('A24',2,'H_A','1st','Full'),('A25',2,'H_A','1st','1_Vacant'),('A26',2,'H_A','2nd','Full'),('A27',2,'H_A','2nd','Full'),('A28',2,'H_A','2nd','Full'),('A29',2,'H_A','2nd','Full'),('A3',2,'H_A','Ground','Vacant'),('A30',2,'H_A','2nd','Full'),('A31',2,'H_A','2nd','Full'),('A32',2,'H_A','2nd','Full'),('A33',2,'H_A','2nd','vacant'),('A34',2,'H_A','2nd','1_Vacant'),('A35',2,'H_A','2nd','1_Vacant'),('A36',3,'H_A','2nd','Full'),('A37',3,'H_A','2nd','2_Vacant'),('A38',3,'H_A','2nd','1_Vacant'),('A39',3,'H_A','2nd','Full'),('A4',2,'H_A','Ground','Full'),('A40',3,'H_A','2nd','Full'),('A5',2,'H_A','Ground','Vacant'),('A6',2,'H_A','Ground','Full'),('A7',2,'H_A','Ground','Vacant'),('A8',2,'H_A','Ground','Vacant'),('A9',2,'H_A','Ground','Vacant'),('B1',3,'H_B','Ground','Full'),('B10',3,'H_B','Ground','vacant'),('B11',3,'H_B','1st','Full'),('B12',3,'H_B','1st','Full'),('B13',3,'H_B','1st','vacant'),('B14',3,'H_B','1st','Full'),('B15',3,'H_B','1st','vacant'),('B16',3,'H_B','2nd','1_vacant'),('B17',3,'H_B','2nd','Full'),('B18',3,'H_B','2nd','1_vacant'),('B19',3,'H_B','2nd','Full'),('B2',3,'H_B','Ground','vacant'),('B20',3,'H_B','2nd','vacant'),('B3',3,'H_B','Ground','vacant'),('B4',3,'H_B','Ground','1_vacant'),('B5',3,'H_B','Ground','Full'),('B6',3,'H_B','Ground','vacant'),('B7',3,'H_B','Ground','2_vacant'),('B8',3,'H_B','Ground','Full'),('B9',3,'H_B','Ground','1_vacant'),('CG1',2,'H_CG','Ground','Full'),('CG10',3,'H_CG','Ground','1_vacant'),('CG11',3,'H_CG','1st','vacant'),('CG12',3,'H_CG','1st','1_vacant'),('CG13',3,'H_CG','1st','Full'),('CG14',3,'H_CG','1st','1_vacant'),('CG15',3,'H_CG','1st','Full'),('CG16',3,'H_CG','2nd','Full'),('CG17',3,'H_CG','2nd','1_vacant'),('CG18',3,'H_CG','2nd','1_vacant'),('CG19',3,'H_CG','2nd','2_vacant'),('CG2',2,'H_CG','Ground','Full'),('CG20',3,'H_CG','2nd','1_vacant'),('CG3',2,'H_CG','Ground','Full'),('CG4',2,'H_CG','Ground','Full'),('CG5',2,'H_CG','Ground','Full'),('CG6',3,'H_CG','Ground','vacant'),('CG7',3,'H_CG','Ground','vacant'),('CG8',3,'H_CG','Ground','vacant'),('CG9',3,'H_CG','Ground','Full');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `RollNum` varchar(15) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) DEFAULT NULL,
  `RoomId` varchar(4) DEFAULT NULL,
  `MailId` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Contact_No` bigint DEFAULT NULL,
  `ADD_HouseNum` int DEFAULT NULL,
  `ADD_PIN` int NOT NULL,
  `ADD_street` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RollNum`),
  KEY `RoomId` (`RoomId`),
  KEY `ADD_PIN` (`ADD_PIN`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomID`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`ADD_PIN`) REFERENCES `address` (`ADD_PIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('THA074BCE026','Prabin','Adhikari','A11','prabin26@gmail.com','1997-05-02',24,9861022007,34,22415,'Shantitol'),('THA074BEX001','Abhisha','Thapa','CG1','abhisha.thapa@gmail.com','1998-09-02',23,9861950001,275,44600,'Jorpati'),('THA074BEX033','Nisha','Thapa','CG1','nisha.thapa@gmail.com','1998-09-02',23,9861950000,275,44600,'Jorpati'),('THA075BAME009','Hina','Sharma','CG3','hina@gmail.com','1998-04-22',23,9822543210,55,21907,'Udayapur'),('THA075BAME038','Marshal','Teach','B7','marshal@gmail.com','1998-04-22',23,9877258900,72,44600,'Tushal'),('THA075BCT010','Gita','Poudel','CG5','gita@gmail.com','1999-04-22',22,9867555210,3,22411,'Buradabar'),('THA075BCT024','Gina','BK','CG3','gina@gmail.com','1999-04-22',22,9863333210,23,22411,'Khaireni'),('THA075BCT043','Rina','thapaliya','CG2','rina@gmail.com','1999-04-22',22,9867543210,66,44600,'Mitrapark'),('THA075BEI022','Md. Afaque','Ahmad','A2','afaque22@gmail.com','1998-11-22',23,9861022000,45,44600,'Bagbazzar'),('THA075BEI024','Munilal','Mukhiya','A15','munna24@gmail.com','1998-09-24',23,9861024000,24,33300,'Baglung Sahar'),('THA075BEI033','Ridam','Sharma','A2','sharmaridam123@gmail.com','1999-04-22',22,9861095722,277,44600,'Thali,kathmandu'),('THA075BEI038','Shiv Ranjan','Gupta','A15','shiv38@gmail.com','1999-05-22',22,9861038000,411,33700,'Lakeside'),('THA075BIE004','Amit','Dahal','A20','amit@gmail.com','1998-11-02',23,9823166120,99,44413,'Parsauni'),('THA075BIE026','Rita','Baniya','CG4','rita@gmail.com','1999-04-22',22,9457543210,88,22415,'Ghorahi'),('THA075BIE043','Tina','Subedi','CG2','tina@gmail.com','1999-12-24',22,9867223210,75,44600,'Gaushala'),('THA075BME008','Avash','Thapa','A11','avash8@gmail.com','2000-09-17',21,9861450000,95,22412,'Shitalpur Road'),('THA076BAE018','Hari','Chawla','B1','hari.chawla@gmail.com','1999-08-22',22,9870658900,69,44600,'Jorpati'),('THA076BAE028','Anish','Dahal','B4','anish@gmail.com','1999-08-22',22,9844448900,8,21907,'Udaypur'),('THA076BAR042','Yadav','Khatiwada','A19','yadav42@gmail.com','1999-10-25',22,9823333120,42,57010,'Bhulke'),('THA076BEI005','Anil','Bastakoti','A11','anil@gmail.com','1998-12-04',23,9861056413,88,10200,'Mahadevsthan'),('THA076BEI015','Iswar','Khanal','B4','iswar@gmail.com','2000-08-22',21,987758900,77,44600,'Boudha'),('THA076BEI032','Sita','Pun','CG4','sita@gmail.com','1999-09-27',22,9557543210,34,22412,'Tulsipur'),('THA076BME010','Nita','Nepali','CG5','nita@gmail.com','1999-06-25',22,9867773210,22,44600,'Thamel'),('THA076BME029','Jack','Sunuwar','B1','jack@gmail.com','1999-10-02',22,9870658222,9,44600,'Jorpati'),('THA077BAE018','Ritik','Roshan','B1','ritik@gmail.com','2000-08-22',21,9870338900,69,44600,'Jorpati'),('THA077BCT018','Manoj','Lamichhane','A15','manoj16@gmail.com','2000-11-22',21,9861016000,16,22411,'Buradabar'),('THA078BAME020','Madan','Kadayat','A19','madan20@gmail.com','1998-11-02',23,9223100120,34,57004,'Pyauli'),('THA078BCE002','Anupam','Bhusal','A18','anupam2@gmail.com','2000-11-02',21,9823100333,69,44209,'Rampur'),('THA078BEI033','Sangit','Deuja','A18','sangit33@gmail.com','2001-11-02',20,9823100120,78,44600,'Narayantar');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_fee_accountant`
--

DROP TABLE IF EXISTS `student_fee_accountant`;
/*!50001 DROP VIEW IF EXISTS `student_fee_accountant`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_fee_accountant` AS SELECT 
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `mailid`,
 1 AS `age`,
 1 AS `rollnum`,
 1 AS `for_month`,
 1 AS `amount_paid`,
 1 AS `fee_status`,
 1 AS `VerifiedBy`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_in_out`
--

DROP TABLE IF EXISTS `student_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_in_out` (
  `RecordNum` int NOT NULL,
  `RollNum` varchar(15) DEFAULT NULL,
  `Student_Departure` timestamp NULL DEFAULT NULL,
  `Student_Arrival` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`RecordNum`),
  KEY `RollNum` (`RollNum`),
  CONSTRAINT `student_in_out_ibfk_1` FOREIGN KEY (`RollNum`) REFERENCES `student` (`RollNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_in_out`
--

LOCK TABLES `student_in_out` WRITE;
/*!40000 ALTER TABLE `student_in_out` DISABLE KEYS */;
INSERT INTO `student_in_out` VALUES (1,'THA075BEI033','2021-08-18 05:36:00','2021-08-18 06:37:00'),(2,'THA075BEI033','2021-08-17 11:36:00','2021-08-18 03:45:00'),(3,'THA075BEI033','2021-08-18 06:36:00','2021-08-18 08:45:00'),(4,'THA074BCE026','2021-08-20 01:40:00','2021-08-20 02:38:00'),(5,'THA075BAME009','2021-08-19 08:35:00','2021-08-19 09:31:00'),(6,'THA075BAME009','2021-08-20 04:35:00','2021-08-20 05:31:00'),(7,'THA075BEI024','2021-08-19 10:35:00','2021-08-19 11:31:00'),(8,'THA075BAME009','2021-08-18 08:35:00','2021-08-18 09:31:00'),(9,'THA075BEI022','2021-08-15 08:35:00','2021-08-15 13:31:00'),(10,'THA075BEI038','2021-08-16 02:35:00','2021-08-16 04:31:00');
/*!40000 ALTER TABLE `student_in_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_room_furniture`
--

DROP TABLE IF EXISTS `student_room_furniture`;
/*!50001 DROP VIEW IF EXISTS `student_room_furniture`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_room_furniture` AS SELECT 
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `roomid`,
 1 AS `room_status`,
 1 AS `furniture_list`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `VisitNum` int NOT NULL,
  `Visitor_fname` varchar(15) DEFAULT NULL,
  `visitor_lname` varchar(15) DEFAULT NULL,
  `Visitor_Arr` timestamp NULL DEFAULT NULL,
  `Visitor_Dep` timestamp NULL DEFAULT NULL,
  `Visitor_contact` bigint DEFAULT NULL,
  `RollNum` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`VisitNum`),
  KEY `RollNum` (`RollNum`),
  CONSTRAINT `visitor_ibfk_1` FOREIGN KEY (`RollNum`) REFERENCES `student` (`RollNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Balram','Upadhyaya','2021-08-18 06:45:00','2021-08-18 07:45:00',9860902905,'THA075BEI033'),(2,'Asha','Mukhiya','2021-08-18 05:45:00','2021-08-18 07:00:00',9860900005,'THA075BEI024');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hostel_management'
--
/*!50003 DROP PROCEDURE IF EXISTS `EmpwithMAXsalary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EmpwithMAXsalary`()
BEGIN
select * from employees where salary=(select max(salary) as HighestSalary from employees);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EmpwithMINsalary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EmpwithMINsalary`()
BEGIN
select * from employees where salary=(select min(salary) as LowestSalary from employees);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FeeCheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FeeCheck`()
BEGIN
select firstname,lastname,mailid,age,dob,for_month,accid,amount_paid,fee_status from student,fee where student.rollnum=fee.rollnum and student.rollnum='THA075BEI033';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inforoom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inforoom`()
BEGIN
select room.roomid,capacity,room_status,floor,furniture_list from room,furniture where room.roomid=furniture.roomid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `particularBlockRoomAvailability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `particularBlockRoomAvailability`()
BEGIN
select roomid,room.capacity,room_status,floor,
case
when room_status='Vacant' then 'The room is vacant'
when room_status='1_vacant' then 'The room have 1 seat vacant'
when room_status='2_vacant' then 'the room have 2 vacant seats'
else 'the room is full'
end as roomAvailability
from room,hostel where room.blockid=hostel.blockid and hostel.blockid='H_A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `studentA2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `studentA2`()
BEGIN
select Firstname,lastname,mailid,room.roomid,room_status,floor from room,student where room.roomid=student.roomid and room.roomid='A2';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ToVisitwhom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ToVisitwhom`()
BEGIN
 select visitor_fname,visitor_lname,visitor_arr,visitor_dep,visitor_contact,concat (firstname," ",lastname) as ToVisit from student,visitor where student.rollnum=visitor.rollnum and student.rollnum='THA075BEI024';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `student_fee_accountant`
--

/*!50001 DROP VIEW IF EXISTS `student_fee_accountant`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_fee_accountant` AS select `s`.`FirstName` AS `firstname`,`s`.`LastName` AS `lastname`,`s`.`MailId` AS `mailid`,`s`.`Age` AS `age`,`s`.`RollNum` AS `rollnum`,`f`.`For_Month` AS `for_month`,`f`.`Amount_paid` AS `amount_paid`,`f`.`Fee_Status` AS `fee_status`,concat(`a`.`f_name`,' ',`a`.`l_name`) AS `VerifiedBy` from ((`student` `s` join `fee` `f` on((`s`.`RollNum` = `f`.`RollNum`))) join `accountant` `a` on((`f`.`AccID` = `a`.`AccID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `student_room_furniture`
--

/*!50001 DROP VIEW IF EXISTS `student_room_furniture`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_room_furniture` AS select `s`.`FirstName` AS `firstname`,`s`.`LastName` AS `lastname`,`r`.`RoomID` AS `roomid`,`r`.`Room_Status` AS `room_status`,`f`.`Furniture_list` AS `furniture_list` from ((`student` `s` join `room` `r` on((`s`.`RoomId` = `r`.`RoomID`))) join `furniture` `f` on((`r`.`RoomID` = `f`.`RoomId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-20 12:44:30
