-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: nomination
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `staff_department_id` int(50) NOT NULL AUTO_INCREMENT,
  `staff_department` varchar(60) NOT NULL,
  PRIMARY KEY (`staff_department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Administration'),(2,'Accounts'),(3,'Internal Audit'),(4,'Laboratory'),(5,'X-Ray'),(6,'OPD'),(7,'Revenue'),(8,'Health Insurance'),(9,'Casualty'),(10,'Theatre'),(11,'Records'),(12,'Pharmacy'),(13,'Stores'),(14,'Procurement'),(15,'Laundry'),(16,'Maternity'),(17,'Female/Kids '),(18,'Male Medical/VIP'),(19,'Maintenance'),(20,'Security'),(21,'Mortuary'),(22,'Transport'),(23,'Dental'),(24,'Eye'),(25,'Psychiatry'),(26,'Disease Control'),(27,'ART'),(28,'I.T');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nominees`
--

DROP TABLE IF EXISTS `nominees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nominees` (
  `nominee_id` int(100) NOT NULL AUTO_INCREMENT,
  `nominee_name` varchar(60) NOT NULL,
  `nominee_department` int(10) NOT NULL,
  `nominee_rank` int(10) NOT NULL,
  `nominee_contact` varchar(20) NOT NULL,
  `elector_1_name` varchar(60) NOT NULL,
  `elector_1_contact` varchar(20) NOT NULL,
  `elector_1_department` int(10) NOT NULL,
  `elector_1_rank` int(10) NOT NULL,
  `elector_2_name` varchar(60) NOT NULL,
  `elector_2_contact` varchar(20) NOT NULL,
  `elector_2_department` int(10) NOT NULL,
  `elector_2_rank` int(10) NOT NULL,
  `nominee_representative` varchar(60) NOT NULL,
  `creation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nominee_id`),
  KEY `nominee_department` (`nominee_department`),
  KEY `nominee_rank` (`nominee_rank`),
  KEY `elector_1_department` (`elector_1_department`),
  KEY `elector_1_rank` (`elector_1_rank`),
  KEY `elector_2_department` (`elector_2_department`),
  KEY `elector_2_rank` (`elector_2_rank`),
  CONSTRAINT `nominees_ibfk_1` FOREIGN KEY (`nominee_department`) REFERENCES `departments` (`staff_department_id`),
  CONSTRAINT `nominees_ibfk_2` FOREIGN KEY (`nominee_rank`) REFERENCES `ranks` (`staff_rank_id`),
  CONSTRAINT `nominees_ibfk_3` FOREIGN KEY (`elector_1_department`) REFERENCES `departments` (`staff_department_id`),
  CONSTRAINT `nominees_ibfk_4` FOREIGN KEY (`elector_1_rank`) REFERENCES `ranks` (`staff_rank_id`),
  CONSTRAINT `nominees_ibfk_5` FOREIGN KEY (`elector_2_department`) REFERENCES `departments` (`staff_department_id`),
  CONSTRAINT `nominees_ibfk_6` FOREIGN KEY (`elector_2_rank`) REFERENCES `ranks` (`staff_rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nominees`
--

LOCK TABLES `nominees` WRITE;
/*!40000 ALTER TABLE `nominees` DISABLE KEYS */;
INSERT INTO `nominees` VALUES (1,'ABDUL MALIK TANKO',10,43,'0202141635','APENYO RICHARD','0547581035',13,7,'MAJEED MOHAMMED ','0200878946',10,43,'GILBERT BARNES','2019-01-25 13:56:59'),(2,'SAFO GEORGE',2,48,'0206335727','OWUSU AKUMFI AMEYAW','0206154403',2,50,'PORTIA','0500502014',6,1,'AHMED SEIDU','2019-01-29 17:36:13');
/*!40000 ALTER TABLE `nominees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `staff_rank_id` int(50) NOT NULL AUTO_INCREMENT,
  `staff_ranks` varchar(60) NOT NULL,
  PRIMARY KEY (`staff_rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
INSERT INTO `ranks` VALUES (1,'Enrolled Nurse'),(2,'Staff Midwife'),(3,'Bio-Statistics Assistant'),(4,'Nutrition Officer'),(5,'Dispensing Assistant'),(6,'Senior Hospital orderly/Senior Hostel Orderly'),(7,'Senior Supply Manager'),(8,'Pharmacy Technician'),(9,'Nursing Officer'),(10,'Field Technician'),(11,'Deputy Chief Accountant'),(12,'Stenographer Secretary'),(13,'Principal Accountant Officer'),(14,'Senior Health Assistant'),(15,'Principal Health Assistant'),(16,'Principal Artisan'),(17,'Chief Technical Officer (Bio/Info/Disease Control)'),(18,'Head Hospital orderly/Head Hostel Orderly'),(19,'Chief Conservancy Labourer'),(20,'Labourer'),(21,'Senior Leading Launderer'),(22,'Principal Catering Officer'),(23,'Principal Security Guard'),(24,'Senior Accountant'),(25,'Senior Staff Nurse'),(26,'Principal Driver/Senior Coxswain'),(27,'Deputy Chief Clinical Engineering Manager'),(28,'Senior Bio-Statistics Assistant'),(29,'Principal Receptionist/Telephonist'),(30,'Supt. Laboratory Assistant'),(31,'Principal Technician Ass./Darkroom Ass. (X-Ray)'),(32,'Deputy Chief Bio-Statistics Officer'),(33,'Physician Assistant '),(34,'Specialist'),(35,'Midwifery Officer'),(36,'Senior Medical Officer'),(37,'Principal Community Health Nurse'),(38,'Deputy Chief Health Service Administrator'),(39,'Senior Dental Technician'),(40,'Senior Field Technician '),(41,'Senior Pharmacist'),(42,'Senior Technical Assistant'),(43,'Senior Medical Assistant'),(44,'Senior Technical Officer'),(45,'Senior Technical Officer (Lab/X-Ray/Orth)'),(46,'Community Health Nurse'),(47,'Bio-Statistics'),(48,'Bio-Statistician'),(49,'Accountant'),(50,'Accountant');
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'nomination'
--

--
-- Dumping routines for database 'nomination'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 10:31:04
