CREATE DATABASE  IF NOT EXISTS `apsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `apsystem`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: apsystem
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','$2y$10$ZiSNgB3t7D.xaJuNsnu1dOctsJUVOFieVQsTDr/OdkOePCA3j4yTO','avnish','gupta','splash_screenbackground.jpg','2018-04-30'),(2,'singhj775','abc@123','jas','singh','','0000-00-00');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,8,'2021-07-22','21:15:00',0,'12:15:00',8);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashadvance`
--

DROP TABLE IF EXISTS `cashadvance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashadvance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashadvance`
--

LOCK TABLES `cashadvance` WRITE;
/*!40000 ALTER TABLE `cashadvance` DISABLE KEYS */;
INSERT INTO `cashadvance` VALUES (6,'2021-07-01','8',5000);
/*!40000 ALTER TABLE `cashadvance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deductions`
--

DROP TABLE IF EXISTS `deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deductions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deductions`
--

LOCK TABLES `deductions` WRITE;
/*!40000 ALTER TABLE `deductions` DISABLE KEYS */;
INSERT INTO `deductions` VALUES (1,'SSS',100),(2,'Pagibig',150),(3,'PhilHealth',150),(4,'Project Issues',1500);
/*!40000 ALTER TABLE `deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `token` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'singhj775@gmail. com','fdNBPoHIQCq5VE7qWdSemP:APA91bERCpkFwCowLwckPivwNQwuSxmU5Y1RiPiHNz52gODjndPihTLPLQB53UwKux_5q1pf_AByPtKhP_m2muvZjW-kuWi_W4N_-LrcVb-Tu0jzzdZT7paDFG7tksP8z-arbrmb0jy1');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `f_name` text NOT NULL,
  `l_name` text,
  `mobile` text NOT NULL,
  `aadhar_no` varchar(16) DEFAULT NULL,
  `pan_no` varchar(16) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int NOT NULL AUTO_INCREMENT,
  `image_name` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`),
  UNIQUE KEY `pan_no` (`pan_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('jas','singh','123445','134555','edfgg','2021-06-22','2021-06-25 02:30:54',1,'tt'),('jk','jk','jk','jk','jk','2021-06-05','2021-06-25 02:53:52',2,'jk'),('ss','ss','ss','ss','ss','2021-06-13','2021-06-25 02:56:08',3,'ss'),('aa','aa','aa','aa','aa','2021-06-10','2021-06-25 03:04:09',4,'aa'),('re','re','re','re','re','2021-06-12','2021-06-25 03:07:33',5,'re'),('as','as','34455','45667','45566','2021-07-20','2021-07-08 07:44:05',6,'ty'),('w','w','w','w','w','2021-07-04','2021-07-08 13:47:47',7,'w');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` text,
  `position_id` text,
  `schedule_id` text,
  `photo` varchar(200) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aadhar` varchar(16) DEFAULT NULL,
  `pan` varchar(200) DEFAULT NULL,
  `image_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image_name` (`aadhar`),
  UNIQUE KEY `image_name_2` (`aadhar`),
  UNIQUE KEY `image_name_3` (`image_name`),
  UNIQUE KEY `pan_2` (`pan`),
  UNIQUE KEY `pan_3` (`pan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,NULL,'jas','singh',NULL,'2021-06-22','123445',NULL,NULL,NULL,'images/0.png','2021-07-08 13:48:31','134555','edfgg','tt'),(2,NULL,'jk','jk',NULL,'2021-06-05','jk',NULL,NULL,NULL,'Payroll_and_Attendance_system/images/1.png','2021-07-08 13:48:31','jk','jk','jk'),(3,NULL,'ss','ss',NULL,'2021-06-13','ss',NULL,NULL,NULL,'Payroll_and_Attendance_system/images/2.png','2021-07-08 13:48:31','ss','ss','ss'),(4,NULL,'aa','aa',NULL,'2021-06-10','aa',NULL,NULL,NULL,'3.png','2021-07-08 13:48:31','aa','aa','aa'),(5,NULL,'re','re',NULL,'2021-06-12','re',NULL,NULL,NULL,'Payroll_and_Attendance_system/images/4.png','2021-07-08 13:48:31','re','re','re'),(6,NULL,'as','as',NULL,'2021-07-20','34455',NULL,NULL,NULL,'Payroll_and_Attendance_system/images/5.png','2021-07-08 13:48:31','45667','45566','ty'),(7,NULL,'w','w',NULL,'2021-07-04','w',NULL,NULL,NULL,'Payroll_and_Attendance_system/images/6.png','2021-07-08 13:48:31','w','w','w');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtime`
--

DROP TABLE IF EXISTS `overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overtime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtime`
--

LOCK TABLES `overtime` WRITE;
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
INSERT INTO `overtime` VALUES (4,'6',240,1500,'2031-11-08'),(5,'4',283.33333333333,3600,'2018-06-05');
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` text,
  `image_name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'images/0.png','tt'),(2,'Payroll_and_Attendance_system/images/1.png','jk'),(3,'Payroll_and_Attendance_system/images/2.png','ss'),(4,'3.png','aa'),(5,'Payroll_and_Attendance_system/images/4.png','re'),(6,'Payroll_and_Attendance_system/images/5.png','ty'),(7,'Payroll_and_Attendance_system/images/6.png','w');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo1`
--

DROP TABLE IF EXISTS `photo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` text,
  `image_name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo1`
--

LOCK TABLES `photo1` WRITE;
/*!40000 ALTER TABLE `photo1` DISABLE KEYS */;
INSERT INTO `photo1` VALUES (1,'http://192.168.1.100:8081/Android/images/0.png','xxx');
/*!40000 ALTER TABLE `photo1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Programmer',100),(2,'Writer',50),(3,'Marketing ',35),(4,'Graphic Designer',75),(5,'labor',38);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'07:00:00','16:00:00'),(2,'08:00:00','17:00:00'),(3,'09:00:00','18:00:00'),(4,'10:00:00','19:00:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharp_emp`
--

DROP TABLE IF EXISTS `sharp_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sharp_emp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` text,
  `first_name` text NOT NULL,
  `middle_name` text,
  `last_name` text NOT NULL,
  `phone` int NOT NULL,
  `employee_image` text NOT NULL,
  `id_type` text NOT NULL,
  `id_number` text NOT NULL,
  `id_card_image` text NOT NULL,
  `residence_address` text NOT NULL,
  `residence_location` text NOT NULL,
  `residence_direction` text NOT NULL,
  `residence_gps` text NOT NULL,
  `next_of_kin` text NOT NULL,
  `relationship` text NOT NULL,
  `phone_of_kin` text NOT NULL,
  `kin_residence` text NOT NULL,
  `kin_residence_direction` text NOT NULL,
  `date_employed` date NOT NULL,
  `job_type` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharp_emp`
--

LOCK TABLES `sharp_emp` WRITE;
/*!40000 ALTER TABLE `sharp_emp` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharp_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogintable`
--

DROP TABLE IF EXISTS `userlogintable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogintable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` text,
  `last_name` text,
  `user_email` text,
  `user_password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogintable`
--

LOCK TABLES `userlogintable` WRITE;
/*!40000 ALTER TABLE `userlogintable` DISABLE KEYS */;
INSERT INTO `userlogintable` VALUES (1,'jas','singh','singhj775@gmail.com','abc@123'),(2,'jaa','singh','ss','abc@123'),(3,'Ramekbal','kumar','Ramekbal','ramekbal001@');
/*!40000 ALTER TABLE `userlogintable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogintable1`
--

DROP TABLE IF EXISTS `userlogintable1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogintable1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` text,
  `last_name` text,
  `user_email` text,
  `user_password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogintable1`
--

LOCK TABLES `userlogintable1` WRITE;
/*!40000 ALTER TABLE `userlogintable1` DISABLE KEYS */;
INSERT INTO `userlogintable1` VALUES (1,'avnish','gupta','avnish','avnish');
/*!40000 ALTER TABLE `userlogintable1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `accounttype` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maxwell','Morrison','xxx2xy','10a55271c201e41913764ff95b33248b','Admin'),(3,'Maxwell','Morrison','admins','02adcdf2171dc7e5757cdd7c0b91fa03','Admin'),(2,'Maxwell','Morrison','xxx2xy','qwerty','Admin'),(4,'Maxwell','Morrison','adminss','qwertyy','Admin'),(5,'Maxwell','Morrison','2aefc34200a294a3cc7db81b43a81873','c93ccd78b2076528346216b3b2f701e6','Admin'),(6,'Maxwell','Morrison','admins','c93ccd78b2076528346216b3b2f701e6','Admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 14:20:01
