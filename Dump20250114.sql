-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinic_system
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `admin_info`
--

DROP TABLE IF EXISTS `admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_info` (
  `Admin_ID` int NOT NULL,
  `Admin_Name` varchar(100) NOT NULL,
  `Admin_Position` varchar(100) NOT NULL,
  `Admin_Password` varchar(100) NOT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
INSERT INTO `admin_info` VALUES (101,'John Marc Basbas','School Nurse','jmbasbas10'),(102,'Marc Basbas','Teacher II','1234'),(103,'John Basbas','Teacher III','12345');
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_complaints`
--

DROP TABLE IF EXISTS `patient_complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_complaints` (
  `Patient_Record_ID` int NOT NULL AUTO_INCREMENT,
  `Comp_Nausea` tinyint(1) DEFAULT '0',
  `Comp_Difficulty_Breathing` tinyint(1) DEFAULT '0',
  `Comp_Muscle_Cramps` tinyint(1) DEFAULT '0',
  `Comp_Fatigue` tinyint(1) DEFAULT '0',
  `Comp_Stomach_Problems` tinyint(1) DEFAULT '0',
  `Comp_Blurry_Vision` tinyint(1) DEFAULT '0',
  `Comp_Insomia` tinyint(1) DEFAULT '0',
  `Comp_Menstrual_Problems` tinyint(1) DEFAULT '0',
  `Comp_Backpain` tinyint(1) DEFAULT '0',
  `Comp_Other` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Patient_Record_ID`),
  CONSTRAINT `patient_complaints_ibfk_1` FOREIGN KEY (`Patient_Record_ID`) REFERENCES `patient_records` (`Patient_Record_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_complaints`
--

LOCK TABLES `patient_complaints` WRITE;
/*!40000 ALTER TABLE `patient_complaints` DISABLE KEYS */;
INSERT INTO `patient_complaints` VALUES (1,1,1,1,1,1,1,1,1,1,'miss ko na sya'),(2,0,1,0,1,0,1,0,1,0,''),(3,1,0,1,0,1,0,1,0,1,'Nangungulila'),(4,1,1,1,1,1,1,1,0,1,'miss ko na sya sobra'),(5,0,0,0,0,0,1,1,0,1,''),(6,1,0,0,1,0,0,1,0,0,''),(7,0,1,0,0,1,0,0,0,0,'Pain in hand'),(8,1,1,0,1,1,0,0,1,0,'dfj'),(9,0,1,1,0,1,0,0,1,0,''),(10,0,0,0,1,0,0,1,0,0,''),(11,0,0,1,0,0,1,0,0,1,''),(12,1,1,0,1,1,0,0,0,0,''),(13,0,1,0,0,1,0,0,0,1,''),(14,1,1,0,1,0,0,0,0,0,''),(15,1,1,0,1,0,0,1,0,1,''),(16,1,1,1,0,0,0,0,0,1,''),(17,0,0,0,0,1,1,0,1,0,''),(18,0,0,0,0,1,0,0,1,1,''),(19,0,1,0,0,0,0,0,0,0,''),(20,0,0,0,0,1,0,0,1,0,''),(21,0,1,0,1,1,0,1,0,0,''),(22,1,0,0,0,1,0,1,1,0,''),(23,0,1,0,0,1,0,0,0,0,'dasssssssssssssssss'),(24,0,0,1,0,0,0,0,0,0,''),(25,0,1,0,0,0,0,0,0,0,''),(26,0,1,0,0,0,0,0,0,0,'asjhhdasasdchjB HKCDAS'),(27,1,1,0,1,1,0,0,0,0,'');
/*!40000 ALTER TABLE `patient_complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_diagnosis`
--

DROP TABLE IF EXISTS `patient_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_diagnosis` (
  `Patient_Record_ID` int NOT NULL,
  `Patient_BP` varchar(100) NOT NULL,
  `Patient_Temp` int NOT NULL,
  `Patient_Intervention` varchar(100) NOT NULL,
  `Patient_Remarks` text NOT NULL,
  PRIMARY KEY (`Patient_Record_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_diagnosis`
--

LOCK TABLES `patient_diagnosis` WRITE;
/*!40000 ALTER TABLE `patient_diagnosis` DISABLE KEYS */;
INSERT INTO `patient_diagnosis` VALUES (1,'130 / 47',47,'N/A','AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n'),(2,'51 / 50',47,'Medecine','sya ang gamot sa lahat ng sakit mo, lambing \nlang ang katapat nyang mga yan'),(3,'127 / 64',42,'Rest','rest in her shoulders is what you need'),(4,'128 / 46',67,'Medecine','pumasok ka muna sa aice freezer ng tindahan \nsa may tapat nyo doon ka muna magpalamig\ndahil sobrang init mo na gago bat ganyan kataas\ntemp mo, di na normal yan palamig ka muna'),(5,'18 / 14',13,'Medecine','ayeerhgbggtye56jhuethyju'),(6,'40 / 59',57,'Medecine','adssssssssssssssssssssssss ac sdasDAS CSADFAASDACA C ASCSA CASCA CASCAssssssssssssss ac sdasDAS CSADFAASDACA C ASCSA CASCA CASCA\nssssssssssssss ac sdasDAS CSADFAASDACA C ASCSA CASCA CASCAssssssssssssss ac sdasDAS CSADFAASDACA C ASCSA CASCA CASCA\nssssssssssssss ac sdasDAS CSADFAASDACA C ASCSA CASCA CASCA'),(7,'0 / 0',0,'N/A',''),(8,'58 / 22',33,'N/A',''),(27,'127 / 63',42,'Medecine','Patient needs proper medecine for his illneses');
/*!40000 ALTER TABLE `patient_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_records`
--

DROP TABLE IF EXISTS `patient_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_records` (
  `Patient_Record_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_ID` int NOT NULL,
  `Patient_Type` varchar(100) NOT NULL,
  `Patient_Name` varchar(100) NOT NULL,
  `Patient_Age` int NOT NULL,
  `Patient_Sex` varchar(100) NOT NULL,
  `Patient_Strand_Department` varchar(100) NOT NULL,
  `Patient_Position_Section` varchar(100) NOT NULL,
  `Patient_Record_Status` varchar(100) DEFAULT 'UNDIAGNOSED',
  `Patient_Record_Date` date NOT NULL,
  PRIMARY KEY (`Patient_Record_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_records`
--

LOCK TABLES `patient_records` WRITE;
/*!40000 ALTER TABLE `patient_records` DISABLE KEYS */;
INSERT INTO `patient_records` VALUES (1,230100051,'STUDENT','John Marc Basbas',19,'Male','Information and Communication Technology','12 - F','DIAGNOSED','2025-01-08'),(2,10001,'TEACHER','Marc Basbas',25,'Male','Math','Master Teacher III','DIAGNOSED','2025-01-08'),(3,204030,'SCHOOL STAFF','Jm Manuel',31,'Male','Security','Guard','DIAGNOSED','2025-01-08'),(4,230100051,'STUDENT','John Marc Basbas',19,'Male','Information and Communication Technology','12 - D','DIAGNOSED','2025-01-09'),(5,230100051,'STUDENT','John Marc Basbas',17,'Male','Science Technology Engeneering and Mathematics','11 - A','DIAGNOSED','2025-01-09'),(6,10002,'TEACHER','Oliver Durumpili',35,'Male','Research','TEACHER III','DIAGNOSED','2025-01-09'),(7,204030,'SCHOOL STAFF','John Basbas',30,'Male','Utility','Janitor','DIAGNOSED','2025-01-09'),(8,230100051,'STUDENT','john marc basbas',47,'Male','Science Technology Engeneering and Mathematics','11 - A','DIAGNOSED','2025-01-11'),(9,10003,'TEACHER','john marc',33,'Male','English','Teacher II','UNDIAGNOSED','2025-01-11'),(10,230100051,'STUDENT','John Marc Basbas',20,'Male','Information and Communication Technology','12 - E','UNDIAGNOSED','2025-01-11'),(11,10007,'TEACHER','Den Mark Deleon',27,'Male','English','Teacher III','UNDIAGNOSED','2025-01-12'),(12,10006,'TEACHER','Aron Miguel Dolar',28,'Male','Math','Master Teacher II','UNDIAGNOSED','2025-01-12'),(13,10004,'TEACHER','Adrian Feria',22,'Male','English','Teacher II','UNDIAGNOSED','2025-01-12'),(14,204032,'SCHOOL STAFF','Aron Miguel Dolar',27,'Male','Canteen','taga balat ng mangga','UNDIAGNOSED','2025-01-12'),(15,204033,'SCHOOL STAFF','Adrian Feria',29,'Male','Utility','Taga dilig','UNDIAGNOSED','2025-01-12'),(16,204034,'SCHOOL STAFF','Den Mark Deleon',26,'Male','Security','sekyu','UNDIAGNOSED','2025-01-12'),(17,230100056,'STUDENT','Aron Miguel Dolar',25,'Female','Industrial Arts (SMAW)','12 - E','UNDIAGNOSED','2025-01-12'),(18,230100064,'STUDENT','Adrian Feria',23,'Male','Humanities and Social Sciences','12 - C','UNDIAGNOSED','2025-01-12'),(19,230100067,'STUDENT','Den Mark De Leon',20,'Male','Information and Communication Technology','11 - A','UNDIAGNOSED','2025-01-12'),(20,10001,'TEACHER','Jm Basbas',22,'Male','English','gfdyushad','UNDIAGNOSED','2025-01-12'),(21,204030,'SCHOOL STAFF','Marc Basbas',22,'Male','Utility','Janitor','UNDIAGNOSED','2025-01-12'),(22,230100068,'STUDENT','Wayne Basbas',21,'Female','Science Technology Engeneering and Mathematics','12 - A','UNDIAGNOSED','2025-01-12'),(23,230100053,'STUDENT','John Marc Basbas',20,'Male','Information and Communication Technology','12 - A','UNDIAGNOSED','2025-01-12'),(24,230100056,'STUDENT','Jm basbas',20,'Male','Humanities and Social Sciences','11 - A','UNDIAGNOSED','2025-01-12'),(25,230100070,'STUDENT','John Basbas',17,'Male','Science Technology Engeneering and Mathematics','11 - A','UNDIAGNOSED','2025-01-12'),(26,10001,'TEACHER','John Marc Basbas',25,'Male','Math','Teacher II','UNDIAGNOSED','2025-01-12'),(27,230100051,'STUDENT','John Marc Basbas',19,'Male','Information and Communication Technology','12 - A','DIAGNOSED','2025-01-14');
/*!40000 ALTER TABLE `patient_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `User_ID` int NOT NULL,
  `User_Name` varchar(100) NOT NULL,
  `User_Type` varchar(100) NOT NULL,
  `User_Strand_Department` varchar(100) NOT NULL,
  `User_Position_Section` varchar(100) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (10001,'Jm Basbas Manuel','TEACHER','Math','Master Teacher II'),(10002,'Jm Capunitan','TEACHER','English','Teacher III'),(204030,'Marc Sandoval Manuel','SCHOOL STAFF','Canteen','Cashier'),(204031,'Marcelino Basbas','SCHOOL STAFF','Security','Guard'),(230100051,'John Marc Basbas','STUDENT','Information and Communication Technology','12 - C'),(230100052,'John Marc Capunitan','SCHOOL STAFF','Utility','Registrar'),(230100053,'Jm Manuel Basbas','TEACHER','Research','Coordinator'),(230100054,'John Basbas','STUDENT','Science Technology Engeneering and Mathematics','12 - A'),(230100055,'John Basbas','STUDENT','Humanities and Social Sciences','11 - F'),(230100056,'Adrian Feria','STUDENT','Home Economics','12 - H'),(230100057,'Aron Miguel Dolar','STUDENT','Information and Communication Technology','12 - E'),(230100058,'Den Mark De leon','STUDENT','Information and Communication Technology','12 - G'),(230100059,'Clyde Basbas','STUDENT','Science Technology Engeneering and Mathematics','12 - A'),(230100060,'Jm Basbas','STUDENT','Information and Communication Technology','11 - H'),(230100061,'Adrian Feria','STUDENT','Home Economics','11 - A'),(999999999,'asd','STUDENT','Science Technology Engeneering and Mathematics','11 - A'),(1234567890,'sad','STUDENT','Science Technology Engeneering and Mathematics','11 - A');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-14  0:52:01
