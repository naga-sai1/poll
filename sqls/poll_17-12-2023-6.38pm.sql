-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 62.72.28.52    Database: u276789778_polling_survey
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.15-MariaDB-cll-lve

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
-- Table structure for table `access_permissions`
--

DROP TABLE IF EXISTS `access_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_permissions` (
  `access_permissions_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NULL DEFAULT NULL,
  `deletedon` timestamp NULL DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `add_perm` tinyint(1) DEFAULT 0,
  `edit_perm` tinyint(1) DEFAULT 0,
  `view_perm` tinyint(1) DEFAULT 1,
  `delete_perm` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`access_permissions_pk`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `access_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_permissions`
--

LOCK TABLES `access_permissions` WRITE;
/*!40000 ALTER TABLE `access_permissions` DISABLE KEYS */;
INSERT INTO `access_permissions` VALUES (9,10,1,'2023-11-28 12:04:58',NULL,NULL,0,NULL,NULL,0,0,1,0),(10,11,1,'2023-11-28 12:30:44',NULL,NULL,0,NULL,NULL,0,0,1,0),(11,12,1,'2023-11-30 06:47:51',NULL,NULL,0,NULL,NULL,0,0,1,0);
/*!40000 ALTER TABLE `access_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booths`
--

DROP TABLE IF EXISTS `booths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booths` (
  `booth_pk` int(11) NOT NULL AUTO_INCREMENT,
  `booth_no` int(11) DEFAULT NULL,
  `sachivalayam_pk` int(11) NOT NULL,
  `booth_name` varchar(255) DEFAULT NULL,
  `booth_fulladdress` text DEFAULT NULL,
  PRIMARY KEY (`booth_pk`,`sachivalayam_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booths`
--

LOCK TABLES `booths` WRITE;
/*!40000 ALTER TABLE `booths` DISABLE KEYS */;
/*!40000 ALTER TABLE `booths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constituencies`
--

DROP TABLE IF EXISTS `constituencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constituencies` (
  `consistency_pk` int(11) NOT NULL AUTO_INCREMENT,
  `consistency_id` int(11) NOT NULL,
  `district_pk` int(11) NOT NULL,
  `consistency_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`consistency_pk`),
  KEY `district_pk` (`district_pk`),
  CONSTRAINT `constituencies_ibfk_1` FOREIGN KEY (`district_pk`) REFERENCES `districts` (`district_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constituencies`
--

LOCK TABLES `constituencies` WRITE;
/*!40000 ALTER TABLE `constituencies` DISABLE KEYS */;
INSERT INTO `constituencies` VALUES (3,1,6,'Chandragiri',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,1,6,'Gudur',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,1,6,'Sullurpeta',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,1,6,'Venkatagiri',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,1,6,'Tirupati',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,1,6,'Srikalahasti',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,1,6,'Satyavedu',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(24,2,6,'nehrulam',1,'2023-12-07 05:21:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `constituencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `countryid` varchar(36) NOT NULL,
  `countryname` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `designation_pk` int(11) NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`designation_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'designation'),(2,'designation-1');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `district_pk` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_name` varchar(100) NOT NULL,
  PRIMARY KEY (`district_pk`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (6,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Tirupati'),(7,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Krishna'),(8,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Kurnool'),(9,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Visakhapatnam'),(10,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Anakapalli'),(11,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Eluru'),(12,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Prakasam'),(13,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Guntur'),(14,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'chittor'),(15,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Anantapuramu'),(16,1,'2023-11-28 12:32:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'srikakulam'),(17,1,'2023-11-30 08:13:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Vizianagaram'),(18,1,'2023-12-02 06:30:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Palnadu'),(19,1,'2023-12-02 06:31:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,'king'),(20,1,'2023-12-02 06:33:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,'king9'),(21,1,'2023-12-02 06:34:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,'KING10'),(22,1,'2023-12-02 06:35:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,26,'king15'),(23,1,'2023-12-02 06:35:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,29,'king777'),(24,1,'2023-12-02 07:39:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'po'),(25,1,'2023-12-02 11:18:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,32,'puri'),(26,1,'2023-12-02 11:30:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,32,'rayagada'),(27,1,'2023-12-04 06:26:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'vizag'),(28,1,'2023-12-04 06:34:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,26,'eluru'),(29,1,'2023-12-04 06:35:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30,'city');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divisions` (
  `division_pk` int(11) NOT NULL AUTO_INCREMENT,
  `mandal_id` int(11) NOT NULL,
  `division_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`division_pk`),
  KEY `mandal_id` (`mandal_id`),
  CONSTRAINT `divisions_ibfk_1` FOREIGN KEY (`mandal_id`) REFERENCES `mandals` (`mandal_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (6,6,'Nerabailu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,6,'Bodevandlapalle',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,6,'Yerravaripalem',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,5,'Chinnagottigallu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,5,'Bhakarapeta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,5,'T.Chattevaripalem',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,3,'Mogarala',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(13,3,'Damalacheruvu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,3,'Pakala',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,3,'Nendragunta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,2,'Chandragiri',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,2,'Ithepalli',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,2,'A.Rangampeta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(19,2,'Thondawada',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(20,4,'Nethakuppam',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(21,4,'Kuppam Baduru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(22,4,'R.C.Puram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(23,4,'Nennuru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(24,8,'Mangalam',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(25,8,'Tiruchanoor',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,8,'Daminedu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(27,8,'Mundlapudi',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(28,8,'Padmavathi Puram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(29,8,'Vedanthapuram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,8,'Sainagar',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(31,8,'Perumallapalle',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(32,8,'Mallamgunta Checkpost',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(33,8,'Peruru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookup`
--

DROP TABLE IF EXISTS `lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lookup` (
  `lookup_pk` int(11) NOT NULL AUTO_INCREMENT,
  `lookup_name` varchar(50) NOT NULL,
  `lookup_valuename` varchar(50) NOT NULL,
  `lookup_sequence` int(11) DEFAULT 0,
  PRIMARY KEY (`lookup_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup`
--

LOCK TABLES `lookup` WRITE;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
INSERT INTO `lookup` VALUES (1,'ticketstatuslist','open',0),(2,'ticketstatuslist','resolved',0),(3,'ticketstatuslist','cancelled',0),(4,'ticketstatuslist','escalated',0),(13,'genderlist','MALE',0),(14,'genderlist','FEMALE',0),(15,'genderlist','OTHERS',0),(16,'guardianlist','FATHER',0),(17,'guardianlist','MOTHER',0),(18,'guardianlist','HUSBAND',0),(19,'attachementtype','PDF',0),(20,'attachementtype','DOC',0),(21,'attachementtype','IMAGE',0),(22,'party_list','NEUTRAL',0),(23,'party_list','YSRCP',0),(24,'party_list','TDP',0),(25,'party_list','CONGRESS',0),(26,'party_list','BJP',0),(27,'party_list','JANASENA',0),(30,'designationlist','CM',0),(31,'designationlist','STATE_LEADER',0),(32,'designationlist','MLA',0),(33,'designationlist','MANDAL_CONVENER/CPRO',0),(34,'designationlist','PRO',0),(35,'designationlist','APRO',0),(36,'designationlist','BOOTH_INCHARGE',0),(37,'designationlist','VOLUNTEER',0),(38,'designationlist','GRUHASARATHI',0),(78,'lookup','value',0),(79,'lookup','valuename',0),(80,'party_list','OTHERS',0),(81,'religion_list','HINDU',0),(82,'religion_list','MUSLIM',0),(83,'religion_list','CHRISTIAN',0),(84,'religion_list','SIKH',0),(85,'religion_list','BUDDHIST',0),(86,'religion_list','JAIN',0),(87,'religion_list','OTHERS',0),(88,'caste_list','Brahmin',0),(89,'caste_list','Kshatriya',0),(90,'caste_list','Vaishya',0),(91,'caste_list','Reddy',0),(92,'caste_list','Raju',0),(94,'designationlist','party leader',0),(95,'designationlist','district leader',0),(96,'caste_list','Kamma',0),(97,'caste_list','Kapu/ Telaga/ Balija',0),(98,'caste_list','Komati',0),(99,'caste_list','Velama',0),(100,'caste_list','SC',0),(101,'caste_list','ST',0),(102,'caste_list','Others',0);
/*!40000 ALTER TABLE `lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mandals`
--

DROP TABLE IF EXISTS `mandals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mandals` (
  `mandal_pk` int(11) NOT NULL AUTO_INCREMENT,
  `consistency_id` int(11) NOT NULL,
  `mandal_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`mandal_pk`),
  KEY `consistency_id` (`consistency_id`),
  CONSTRAINT `mandals_ibfk_1` FOREIGN KEY (`consistency_id`) REFERENCES `constituencies` (`consistency_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mandals`
--

LOCK TABLES `mandals` WRITE;
/*!40000 ALTER TABLE `mandals` DISABLE KEYS */;
INSERT INTO `mandals` VALUES (2,3,'Chandragiri',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,3,'Pakala',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,3,'Ramachandrapuram',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,3,'Chinnagottigalu',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,3,'Yerravaripalem',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,3,'Tirupati Rural(West)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,3,'Tirupati Rural(East)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `mandals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navaratnalu`
--

DROP TABLE IF EXISTS `navaratnalu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navaratnalu` (
  `navaratnalu_pk` int(11) NOT NULL AUTO_INCREMENT,
  `navaratnalu_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`navaratnalu_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navaratnalu`
--

LOCK TABLES `navaratnalu` WRITE;
/*!40000 ALTER TABLE `navaratnalu` DISABLE KEYS */;
INSERT INTO `navaratnalu` VALUES (1,'YSR Arogyasri',1,'2023-11-27 13:25:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(2,'Jagananna Amma Vodi',1,'2023-11-28 12:40:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,'Jagananna Thodu',1,'2023-11-30 08:28:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,'Jagananna Vidya Deevena',1,'2023-12-02 07:42:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,'Rice Card',1,'2023-12-02 07:43:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,'Jagananna Vasathi Deevena',1,'2023-12-02 07:46:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,'Matsyakara Bharosa',1,'2023-12-02 07:48:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,'Pension Kanuka',1,'2023-12-02 07:49:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,'Fee Reimbursement',1,'2023-12-02 07:49:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,'Others',1,'2023-12-03 05:31:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `navaratnalu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notifications_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notification_name` varchar(50) NOT NULL,
  `notification_description` varchar(200) NOT NULL,
  `is_seen` tinyint(1) DEFAULT 0,
  `seen_on` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NULL DEFAULT NULL,
  `deletedon` timestamp NULL DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`notifications_pk`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_access`
--

DROP TABLE IF EXISTS `page_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_access` (
  `page_access_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pagename` varchar(100) NOT NULL,
  `access` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NULL DEFAULT NULL,
  `deletedon` timestamp NULL DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_access_pk`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `page_access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_access`
--

LOCK TABLES `page_access` WRITE;
/*!40000 ALTER TABLE `page_access` DISABLE KEYS */;
INSERT INTO `page_access` VALUES (1,10,'Dashbord_page',0,1,'2023-11-27 14:09:50',NULL,NULL,0,NULL,NULL),(2,10,'Dashbord_page',0,1,'2023-11-27 14:13:16',NULL,NULL,0,NULL,NULL),(5,11,'Dashbord_page',0,1,'2023-11-28 12:41:20',NULL,NULL,0,NULL,NULL),(6,12,'dashbord page',0,1,'2023-11-30 08:30:17',NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `page_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `part_pk` int(11) NOT NULL AUTO_INCREMENT,
  `part_no` int(11) NOT NULL,
  `male_votes` int(11) NOT NULL,
  `female_votes` int(11) NOT NULL,
  `other_votes` int(11) NOT NULL,
  `sachivalayam_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `parts_name` varchar(50) DEFAULT NULL,
  `parts_slno` int(11) DEFAULT 0,
  PRIMARY KEY (`part_pk`),
  UNIQUE KEY `part_no_UNIQUE` (`part_no`),
  KEY `sachivalayam_id` (`sachivalayam_id`),
  CONSTRAINT `parts_ibfk_5` FOREIGN KEY (`sachivalayam_id`) REFERENCES `sachivalayam` (`sachivalayam_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,2,10,10,10,6,1,'2023-11-27 04:50:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0),(5,3,10,10,10,6,1,'2023-12-05 13:40:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,2),(6,4,45,96,45,6,1,'2023-12-07 08:30:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0),(7,213,50,28,0,108,1,'2023-12-15 13:15:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,4);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_survey`
--

DROP TABLE IF EXISTS `poll_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poll_survey` (
  `poll_survey_pk` int(11) NOT NULL AUTO_INCREMENT,
  `volunteer_id` int(11) NOT NULL,
  `voter_pk` int(11) NOT NULL,
  `intrested_party` int(11) NOT NULL,
  `voted_party` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`poll_survey_pk`),
  UNIQUE KEY `voter_pk_UNIQUE` (`voter_pk`),
  KEY `poll_survey_ibfk_3_idx` (`intrested_party`,`voted_party`),
  CONSTRAINT `voter_pk` FOREIGN KEY (`voter_pk`) REFERENCES `voters` (`voter_pk`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_survey`
--

LOCK TABLES `poll_survey` WRITE;
/*!40000 ALTER TABLE `poll_survey` DISABLE KEYS */;
INSERT INTO `poll_survey` VALUES (120,1,1,24,NULL,1,'2023-12-08 10:56:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(121,1,2,22,NULL,1,'2023-12-08 11:46:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(122,1,3,22,NULL,1,'2023-12-08 12:00:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(123,1,105,22,NULL,1,'2023-12-13 13:28:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(124,1,172,22,NULL,1,'2023-12-15 11:43:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(125,1,4,22,NULL,1,'2023-12-15 11:44:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(126,1,41,22,NULL,1,'2023-12-15 11:46:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(127,1,110,22,NULL,1,'2023-12-15 11:47:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(128,1,73,22,NULL,1,'2023-12-15 11:51:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(129,1,148,22,NULL,1,'2023-12-15 12:07:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(130,1,12,22,NULL,1,'2023-12-15 12:09:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(131,1,180,22,NULL,1,'2023-12-15 12:10:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(132,1,26,22,NULL,1,'2023-12-15 12:10:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(133,1,31,22,NULL,1,'2023-12-15 12:11:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(134,1,43,22,NULL,1,'2023-12-15 13:14:50','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(135,1,42,23,NULL,1,'2023-12-15 13:43:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(136,1,107,27,NULL,1,'2023-12-15 14:12:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(137,1,153,22,NULL,1,'2023-12-15 14:13:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(138,1,185,23,NULL,1,'2023-12-16 07:52:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(139,1,27,24,NULL,1,'2023-12-16 07:53:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(140,1,86,22,NULL,1,'2023-12-17 06:11:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(141,1,178,22,NULL,1,'2023-12-17 06:11:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(142,1,182,22,NULL,1,'2023-12-17 06:11:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(143,1,57,22,NULL,1,'2023-12-17 11:04:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `poll_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sachivalayam`
--

DROP TABLE IF EXISTS `sachivalayam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sachivalayam` (
  `sachivalayam_pk` int(11) NOT NULL AUTO_INCREMENT,
  `division_pk` int(11) NOT NULL,
  `sachivalayam_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  PRIMARY KEY (`sachivalayam_pk`),
  KEY `sachivalayam_ibfk_1_1` (`division_id`),
  CONSTRAINT `sachivalayam_ibfk_1_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`division_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sachivalayam`
--

LOCK TABLES `sachivalayam` WRITE;
/*!40000 ALTER TABLE `sachivalayam` DISABLE KEYS */;
INSERT INTO `sachivalayam` VALUES (1,13,'Uppara Palli',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,13),(2,13,'Damalacheruvu-1',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,13),(3,13,'Damalacheruvu-2',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,13),(4,13,'Peddaramapuram',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,13),(5,12,'Padiputlabailu',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,12),(6,16,'Usithikayalapenta',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(7,12,'Maddinenipalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,12),(8,12,'Ganugapenta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,12),(9,12,'Mogarala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,12),(10,12,'Vallevedu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,12),(11,12,'Ramanaiahgari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,12),(12,15,'Gadanki',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,15),(13,15,'Irrangari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,15),(14,15,'Kavalivari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,15),(15,15,'K Vadde Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,15),(16,14,'Samireddy Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,14),(17,14,'Pakala-1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,14),(18,14,'Pakala-2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,14),(19,14,'Pantapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,14),(20,14,'Chenugari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,14),(21,18,'Kandula Vari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,18),(22,18,'A Rangampeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,18),(23,18,'Chinnaramapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,18),(24,18,'Ramireddi Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,18),(25,16,'Rayalpuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(26,16,'Narasinga Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(27,16,'Chandragiri-1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(28,16,'Chandragiri- 2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(29,16,'Chandragiri- 3',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(30,16,'Chandragiri- 4',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(31,16,'Chandragiri-5',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(32,17,'Panapakam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,17),(33,17,'M Kongaravari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,17),(34,17,'Ithepalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,17),(35,17,'Kotala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,17),(36,19,'Thondawada',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,19),(37,19,'Sanambatla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,19),(38,19,'Mittapalem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,19),(39,19,'Dornakambala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,19),(40,19,'Gangudu Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,19),(41,21,'Kuppam Baduru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,21),(42,21,'Mitta Kandriga',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,21),(43,21,'C.K.Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,21),(44,23,'Sorakayala Palem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,23),(45,23,'K.K.V.Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,23),(46,23,'Nadavaluru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,23),(47,23,'Nennuru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,23),(48,20,'Netha Kuppam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,20),(49,20,'Anupalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,20),(50,22,'Gangireddy Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,22),(51,22,'C.Ramapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,22),(52,7,'Bodevandlapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,7),(53,7,'Usthikayalapenta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,7),(54,7,'Kotakadapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,7),(55,7,'Ellamanda',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,7),(56,6,'Nerabailu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,6),(57,6,'Kurapathivari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,6),(58,6,'Chinthagunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,6),(59,6,'Kammallayya Gari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,6),(60,8,'Yerravaripallem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,8),(61,8,'CherukuvariPalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,8),(62,8,'Udhayamanikyam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,8),(63,10,'Bhakarapeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,10),(64,10,'Deendharpalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,10),(65,10,'Chittecherla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,10),(66,11,'Chattevari Palem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,11),(67,11,'Digavuru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,11),(68,11,'Thippireddygari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,11),(69,11,'Nellutlavari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,11),(70,9,'Jagavandal Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,9),(71,9,'Kotabailu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,9),(72,9,'Chinnagottigallu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,9),(73,24,'Mangalam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,24),(74,24,'Setti Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,24),(75,24,'Tudaquarters',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,24),(76,24,'Ranadheer Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,24),(77,24,'Sapthagiri Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,24),(78,25,'Yogimallavaram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,25),(79,25,'Tiruchanoor -1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,25),(80,26,'Daminedu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,26),(81,26,'Lakshmi Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,26),(82,26,'Chaitanya Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,26),(83,27,'Brahmanapattu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,27),(84,27,'Padipeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,27),(85,28,'Srinivasa Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,28),(86,28,'Oteru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,28),(87,28,'Thanaplli & Kuntrapakam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,28),(88,28,'Padmavathi Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,28),(89,29,'Chiguruwada',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,29),(90,29,'Durgasamudram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,29),(91,29,'Vedanthapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,29),(92,30,'Avilala - 1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30),(93,30,'Andhra Bank Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30),(94,30,'Sainagar- 1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30),(95,30,'Sainagar-2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30),(96,30,'Lingeswar Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30),(97,30,'Gandhi Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30),(98,31,'C. Mallavaram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,31),(99,31,'Cherlo Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,31),(100,31,'Perumalla Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,31),(101,31,'Pudipatla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,31),(102,31,'S.V.Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,31),(103,32,'Mallamgunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,32),(104,32,'C Gollapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,32),(105,33,'Peruru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,33),(106,33,'Haripuram Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,33),(107,33,'Vidyanagar Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,33),(108,33,'Thummalagunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,33),(109,33,'Venkatapati Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,33),(113,17,'Kalrodepalli',1,'2023-12-01 12:34:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,17),(128,0,'sachivalayam-4',1,'2023-12-07 07:19:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,9),(129,0,'Narasingapuram',1,'2023-12-07 07:20:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(130,0,'Chittoor ',1,'2023-12-07 07:21:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16),(131,0,'RANGAMPETA',1,'2023-12-07 07:25:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,16);
/*!40000 ALTER TABLE `sachivalayam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_pk` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL DEFAULT 'Andhra Pradesh',
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`state_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (5,'Andhra Pradesh',1,'2023-11-26 10:55:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,'bangalore',1,'2023-12-02 02:04:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(28,'Telangana',1,'2023-12-02 05:23:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(29,'mumbai',1,'2023-12-02 05:25:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,'mumbai',1,'2023-12-02 05:26:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(31,'Karnataka ',1,'2023-12-02 05:27:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(32,'Odisha ',1,'2023-12-02 11:17:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(33,'madhya pradesh',1,'2023-12-04 06:26:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,'himachal Pradesh ',1,'2023-12-04 06:31:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(35,'goa',1,'2023-12-07 09:57:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(36,'Kashmir ',1,'2023-12-07 09:57:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(37,'bihar',1,'2023-12-07 09:58:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(38,'maharashtra ',1,'2023-12-07 09:58:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_attachments`
--

DROP TABLE IF EXISTS `ticket_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_attachments` (
  `ticket_attachment_pk` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_master_id` int(11) DEFAULT NULL,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `attachments_discription` varchar(255) DEFAULT NULL,
  `attachments_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticket_attachment_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_attachments`
--

LOCK TABLES `ticket_attachments` WRITE;
/*!40000 ALTER TABLE `ticket_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_escalation`
--

DROP TABLE IF EXISTS `ticket_escalation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_escalation` (
  `ticket_escalation_pk` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_escalation_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_escalation`
--

LOCK TABLES `ticket_escalation` WRITE;
/*!40000 ALTER TABLE `ticket_escalation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_escalation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_history`
--

DROP TABLE IF EXISTS `ticket_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_history` (
  `ticket_history_pk` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(250) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdby` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `ticket_attachment_id` int(11) NOT NULL,
  `ticket_master_pk` int(11) NOT NULL,
  `navaratnalu_id` int(11) NOT NULL,
  `user_pk` int(11) NOT NULL,
  PRIMARY KEY (`ticket_history_pk`),
  KEY `ticket_attachment_id_idx` (`ticket_attachment_id`),
  KEY `ticket_master_id_idx` (`ticket_master_pk`),
  KEY `navaratnalu_id_idx` (`navaratnalu_id`),
  KEY `user_id_idx` (`user_pk`),
  KEY `createdby_idx` (`createdby`),
  CONSTRAINT `createdby` FOREIGN KEY (`createdby`) REFERENCES `users` (`user_pk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ticket_master_pk` FOREIGN KEY (`ticket_master_pk`) REFERENCES `ticket_master` (`ticket_master_pk`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_history`
--

LOCK TABLES `ticket_history` WRITE;
/*!40000 ALTER TABLE `ticket_history` DISABLE KEYS */;
INSERT INTO `ticket_history` VALUES (11,'Problem with card.. Not accepting','2023-12-15 13:16:49',11,1,0,44,0,0),(12,'We will volunteer to you','2023-12-15 13:18:33',11,2,6,44,0,0),(13,'Need Help in School','2023-12-15 13:31:08',11,1,0,45,0,0),(14,'I Talked With Principle','2023-12-15 13:32:09',11,1,6,45,0,0),(15,'School problem','2023-12-15 13:43:48',11,1,0,46,0,0),(16,'solved','2023-12-15 13:51:32',11,2,6,46,0,0),(17,'card problem','2023-12-15 13:51:53',11,1,0,47,0,0),(18,'asas','2023-12-15 14:35:53',124,1,6,44,0,0),(19,'hello booth in charge i need help','2023-12-15 15:23:11',127,1,0,48,0,0),(20,'PRO or MLA please help thank you!','2023-12-15 15:26:46',213,1,6,48,0,0),(21,'yeah, Problem Solved!','2023-12-15 15:27:29',124,2,6,48,0,0),(22,'Test123','2023-12-15 15:47:40',124,1,0,49,0,0),(23,'test 123123412','2023-12-16 02:36:11',127,1,0,50,0,0),(24,'BIC reslved the ticket','2023-12-16 02:39:19',213,2,6,50,0,0),(25,'done','2023-12-17 11:37:37',124,2,6,50,0,0);
/*!40000 ALTER TABLE `ticket_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_master`
--

DROP TABLE IF EXISTS `ticket_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_master` (
  `ticket_master_pk` int(11) NOT NULL AUTO_INCREMENT,
  `voter_pk` int(11) DEFAULT NULL,
  `volunteer_id` int(11) NOT NULL,
  `navaratnalu_id` int(11) NOT NULL,
  `reason` varchar(5000) NOT NULL,
  `is_open` tinyint(1) DEFAULT 1,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_master_pk`),
  KEY `voter_pk` (`voter_pk`),
  KEY `volunteer_id` (`volunteer_id`),
  KEY `navaratnalu_id` (`navaratnalu_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `ticket_master_ibfk_1` FOREIGN KEY (`voter_pk`) REFERENCES `voters` (`voter_pk`),
  CONSTRAINT `ticket_master_ibfk_2` FOREIGN KEY (`volunteer_id`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `ticket_master_ibfk_3` FOREIGN KEY (`navaratnalu_id`) REFERENCES `navaratnalu` (`navaratnalu_pk`),
  CONSTRAINT `ticket_master_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `lookup` (`lookup_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_master`
--

LOCK TABLES `ticket_master` WRITE;
/*!40000 ALTER TABLE `ticket_master` DISABLE KEYS */;
INSERT INTO `ticket_master` VALUES (44,43,11,1,'Problem with card.. Not accepting',0,1,1,'2023-12-15 13:16:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(45,43,11,2,'Need Help in School',1,1,1,'2023-12-15 13:31:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(46,26,11,2,'School problem',0,1,1,'2023-12-15 13:43:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(47,26,11,1,'card problem',1,1,1,'2023-12-15 13:51:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(48,153,127,1,'hello booth in charge i need help',0,1,1,'2023-12-15 15:23:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(49,107,124,3,'Test123',1,1,1,'2023-12-15 15:47:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(50,153,127,2,'test 123123412',0,2,1,'2023-12-16 02:36:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `ticket_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mapping`
--

DROP TABLE IF EXISTS `user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_mapping` (
  `user_mapping_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `part_no` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_mapping_pk`),
  KEY `user_id` (`user_id`),
  KEY `part_no` (`part_no`),
  CONSTRAINT `user_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `user_mapping_ibfk_2` FOREIGN KEY (`part_no`) REFERENCES `parts` (`part_no`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mapping`
--

LOCK TABLES `user_mapping` WRITE;
/*!40000 ALTER TABLE `user_mapping` DISABLE KEYS */;
INSERT INTO `user_mapping` VALUES (9,209,2,1,'2023-12-08 06:46:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,209,3,1,'2023-12-08 06:46:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,210,2,1,'2023-12-08 07:03:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,210,4,1,'2023-12-08 07:03:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,211,2,1,'2023-12-08 11:57:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,211,3,1,'2023-12-08 11:57:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,211,4,1,'2023-12-08 11:57:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,213,3,1,'2023-12-08 15:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(37,122,2,1,'2023-12-12 07:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(38,123,2,1,'2023-12-12 07:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(39,127,2,1,'2023-12-12 07:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(48,212,4,1,'2023-12-16 07:05:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(49,212,2,1,'2023-12-16 07:05:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(50,212,3,1,'2023-12-16 07:05:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(51,214,4,1,'2023-12-16 07:05:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(52,214,2,1,'2023-12-16 07:05:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(53,214,3,1,'2023-12-16 07:05:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_displayname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `phone_no` varchar(10) NOT NULL,
  `office_phone_no` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `reporting_manager` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `consistency_id` int(11) DEFAULT NULL,
  `mandal_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `sachivalayam_id` int(11) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `is_first_login` tinyint(1) DEFAULT 1,
  `otp` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `part_no` int(11) DEFAULT NULL,
  `password_encrypted` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_pk`),
  UNIQUE KEY `phone_no_UNIQUE` (`phone_no`),
  KEY `village_id` (`village_id`),
  KEY `users_ibfk_1` (`reporting_manager`),
  KEY `users_ibfk_4` (`consistency_id`),
  KEY `users_ibfk_5` (`mandal_id`),
  KEY `users_ibfk_6` (`division_id`),
  KEY `users_ibfk_7` (`sachivalayam_id`),
  KEY `users_ibfk_3` (`state_id`),
  KEY `users_ibfk_2_idx` (`designation_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`reporting_manager`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`designation_id`) REFERENCES `lookup` (`lookup_pk`),
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_pk`),
  CONSTRAINT `users_ibfk_4` FOREIGN KEY (`consistency_id`) REFERENCES `constituencies` (`consistency_pk`),
  CONSTRAINT `users_ibfk_5` FOREIGN KEY (`mandal_id`) REFERENCES `mandals` (`mandal_pk`),
  CONSTRAINT `users_ibfk_6` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`division_pk`),
  CONSTRAINT `users_ibfk_7` FOREIGN KEY (`sachivalayam_id`) REFERENCES `sachivalayam` (`sachivalayam_pk`),
  CONSTRAINT `users_ibfk_9` FOREIGN KEY (`village_id`) REFERENCES `villages` (`village_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'K Manikanta','9985079957','1234','9985079957',NULL,NULL,NULL,33,NULL,1,'2023-11-27 12:16:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(11,'A.Aabeed','9398979098','54321','9398979098',NULL,NULL,NULL,34,NULL,1,'2023-11-27 12:49:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,NULL,NULL,0,NULL,6,NULL,'01cfcd4f6b8770febfb40cb906715822'),(12,'Geddi Balaji','7675924520','1234','7675924520',NULL,NULL,NULL,35,NULL,1,'2023-11-27 12:54:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,25,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(18,'B.Sri Hari','8919757345','1234','8919757345',NULL,NULL,NULL,33,NULL,1,'2023-12-01 08:10:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(19,'K.Lokesh','9160308205','1234','9160308205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(20,'P.Lokesh','8639430813','1234','8639430813',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(21,'P.Guna Sekhar Reddy','9642824182','1234','9642824182',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(22,'Madasi Nagarjuna','8686787377','1234','8686787377',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,26,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(23,'Angereddy Rajasekhar','8328180079','1234','8328180079',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,27,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(24,'Valkuntapathi Reddappa','9700070005','1234','9700070005',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,28,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(25,'T Surya Prakash','7330074743','1234','7330074743',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,29,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(26,'N Harikrishna','9182743681','1234','9182743681',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,30,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(27,'K.Hemanth Kumar','9391162281','1234','9391162281',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,31,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(28,'N Giribabu','7989732019','1234','7989732019',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(29,'G Prakash','9392432355','1234','9392432355',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(30,'K Soma Sekhar','9390773818','1234','9390773818',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(31,'P Somasekhar','6300788037','1234','6300788037',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(32,'P.Siva Prasad','6301933292','1234','6301933292',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(33,'V Tariminanda','7032956449','1234','7032956449',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(34,'Dinesh Kumar M','8688376683','1234','8688376683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(35,'Karteek Varlla','7093838463','1234','7093838463',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(36,'Battala Chaitanya','9515681010','1234','9515681010',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(37,'Kumar Bagadi','9398464795','1234','9398464795',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(38,'K.Sai Kumar','7702311232','1234','7702311232',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(39,'V DEVENDRA','9553269014','1234','9553269014',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(40,'K Balaji','7799486416','1234','7799486416',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(41,'M Rohith','6303346498','1234','6303346498',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(42,'S.Charan','9398297963','1234','9398297963',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(43,'Nagooru Sameevulla','7013654773','1234','7013654773',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(44,'M.KISHORE','9908537683','1234','9908537683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(45,'K Nagendra Babu','9550029871','1234','9550029871',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(48,'M Gajendra Reddy','9985682040','1234','9985682040',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:14:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(49,'B.Sisindri Reddy','7989130140','1234','7989130140',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:17:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(50,'C.Chandra Sekhar','9154469950','1234','9154469950',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:19:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,9,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(51,'P.Sopma Sekhar','9701708038','1234','9701708038',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:23:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(52,'K.Ramesh','9573691354','1234','9573691354',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:25:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(53,'N Nagendra Kumar','9652070998','1234','9652070998',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:27:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(54,'S.Fayaz Ahamed','8074708079','123','8074708079',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:29:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'202cb962ac59075b964b07152d234b70'),(55,'K.Mohan Reddy','8897661280','1234','8897661280',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:33:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(56,'S.Bavaji','9912803104','1234','9912803104',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:35:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(57,'K.Kiran Kumar','9010614835','12334','9010614835',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:38:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'120705de7e61c5b322ad798b8ef225a7'),(58,'VACANT','9876543210','1234','9876543210',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:41:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(59,'J.Ravi Teja','9030769941','1234','9030769941',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:43:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(60,'G.Lakshmipathi','9000743443','1234','9000743443',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:46:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(61,'K.Giri Babu','7093243213','1234','7093243213',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:21:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(62,'B.Ravi','8328427108','1234','8328427108',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:34:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(63,'P.Kodandam','7207548503','1234','7207548503',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(64,'B.Vamsi Krishna','7901068582','1234','7901068582',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:38:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(65,'vacant','987654321','1234','987654321',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:41:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,24,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(66,'M.Shanmugam','7997411721','1234','7997411721',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:12:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,25,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(67,'K.Vijay Kumar','8919832001','1234','8919832001',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:17:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,26,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(68,'M.Sasikumar','9666600348','1234','9666600348',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:20:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,27,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(69,'P.Dilip Kumar Reddy','8096655536','1234','8096655536',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:22:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,28,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(70,'K.Bhaskar Reddy','9100608627','1234','9100608627',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:24:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,29,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(71,'E.Mahendra','9010959927','1234','9010959927',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:27:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,30,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(72,'P.Karthik','9398687059','1234','9398687059',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:29:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,31,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(73,'D.Azees','9182585511','1234','9182585511',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:33:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,32,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(74,'K.Prathap Reddy','8143232205','1234','8143232205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:36:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(75,'K Reddy Prasad','9550254831','1234','9550254831',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:44:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(76,'K Thulasi Ram','9966181395','1234','9966181395',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:50:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(77,'R Muniraja','8008299382','1234','8008299382',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:10:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(78,'K.Prakash','9391205195','1234','9391205195',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:14:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(79,'G.Ramesh','9959656533','1234','9959656533',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:22:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(80,'Jyotheeswar Reddy K','8187884802','1234','8187884802',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:25:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(81,'T.Venkatesh','9347015374','1234','9347015374',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(82,'N.Lekha Raju','8886847669','1234','8886847669',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:32:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(83,'S.Gurunath','8096292519','1234','8096292519',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:35:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(84,'N Purushotham','7731088724','1234','7731088724',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:13:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(85,'D.Nane','6281350891','1234','6281350891',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:15:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(86,'Sarath Kumar','7569669401','1234','7569669401',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:17:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(87,'Hari Babu M','7032298559','1234','7032298559',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:18:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(88,'Jeevarathnam Reddy','6303621325','1234','6303621325',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(89,'S Madhu','9848534569','1234','9848534569',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:36:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(90,'P Dilli Prasad','9000704694','1234','9000704694',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:38:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(91,'B.Damodaram Reddy','9652633509','1234','9652633509',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:40:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(92,'Mukkoti Samadhi','8639688754','1234','8639688754',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:54:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(93,'Pattumarpu Srinivas','8309527987','1234','8309527987',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:56:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(94,'Oruganti Chandra Sekhar','9985873625','1234','9985873625',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(95,'Vanarla Dilli Basha','7702690114','8901','7702690114',NULL,NULL,NULL,35,NULL,1,'2023-12-02 02:00:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'f4d87ed3b0dbf9c79746d00cedbb5e78'),(96,'A Leela Krishna','9676093346','1234','9676093346',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:45:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(97,'Bodireddy Chiranjeevi','8897773627','4567','8897773627',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:48:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'6562c5c1f33db6e05a082a88cddab5ea'),(98,'K Thulasiram Reddy','8886169589','5678','8886169589',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:51:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'674f3c2c1a8a6f90461e8a66fb5550ba'),(99,'K Venkataramana Reddy','9848803057','1234','9848803057',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(100,'Mahesh T','7893318622','1234','7893318622',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:08:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(101,'Avula Mouneesh','9880007452','1234','9880007452',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:09:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(102,'G Ashok Kumar','9502706145','1234','9502706145',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:11:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(103,'Jagili Rasaiah','9701129285','1234','9701129285',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:14:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(104,'G Janardhan Reddy','9490837428','1234','9490837428',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:17:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(105,'G Sudhakar Reddy','9000038851','1234','9000038851',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:18:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(106,'Nagineni Dhananjaya','9160232255','1234','9160232255',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:20:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(107,'Etimarpu Ganesh Achari','9704439169','1234','9704439169',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:23:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(108,'Ramoji Venkatesh','7702730863','1234','7702730863',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:24:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(109,'VACANT','1234567890','1234','1234567890',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:27:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(110,'Bhuvaneswar Reddy V','7893996626','1234','7893996626',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:32:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(111,'G Gnayasekhar','9985189144','1234','9985189144',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:46:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(112,'P Khaja Peer','7893432811','1234','7893432811',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:48:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(113,'K Sekhar','9573687383','1234','9573687383',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:49:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(114,'Boyani Suresh','9603702856','1234','9603702856',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:51:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(115,'G Vijay Kumar','9154458676','1234','9154458676',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:54:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(116,'C Viswanadhareddy','9985111855','1234','9985111855',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:57:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(117,'Kishore Reddy','8500013053','1234','8500013053',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(118,'O Manikanta Reddy','9182218173','1234','9182218173',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:04:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(119,'P Bareshavalli','7993313243','1234','7993313243',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:05:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(120,'Shaik Riyaz','9000266065','1234','9000266065',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:07:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(122,'Ch Ramu ','5555555555','1234','5555555555',NULL,NULL,NULL,38,NULL,1,'2023-12-04 06:23:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,3,'81dc9bdb52d04dc20036dbd8313ed055'),(123,'P Shiva','6666666666','1234','6666666666',NULL,NULL,'email',38,NULL,1,'2023-12-04 06:26:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,1,NULL,6,3,'81dc9bdb52d04dc20036dbd8313ed055'),(124,'Mohith Reddy','1111122222','Mla@12345','1111122222',NULL,NULL,NULL,32,NULL,1,'2023-12-04 12:02:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,0,NULL,6,NULL,'bf012cb4287bdab5856b90efebfb5af1'),(126,'Rohith p','9456321789','1234','9456321789','9632587410',23,'rohith123demo@gmail.com',37,NULL,1,'2023-12-06 08:07:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(127,'Rohith S','9874563210','Gruha@1234','9874563210','963582741',23,'rohith123demo@gmail.com',38,NULL,1,'2023-12-06 08:14:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,0,NULL,6,4,'854a194000d5d08c2609641ebacf63c7'),(128,'rohith p','963258741','12345','963258741','923456789',23,'rohith123demo@gmail.com',37,NULL,1,'2023-12-06 09:50:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'827ccb0eea8a706c4c34a16891f84e7b'),(133,'rohith','9325874160','12345','9325874160','9854763210',23,'rohit@gmail.com',37,NULL,1,'2023-12-06 09:55:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'827ccb0eea8a706c4c34a16891f84e7b'),(195,'K Mani','9985079956','1234','9985079956',NULL,NULL,NULL,37,NULL,1,'2023-12-06 13:23:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,6,6,7,1,NULL,6,2,'81dc9bdb52d04dc20036dbd8313ed055'),(209,'asd','1231231231','ySZBc8tV','1231231231','',0,'',38,NULL,1,'2023-12-07 15:53:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,1,NULL,6,NULL,'e0f5a40e701fba795ccf65c80bc58f8a'),(210,'SRINIVAS-GS','8332037173','87654321','8332037173','',0,'',38,NULL,1,'2023-12-07 15:54:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,0,NULL,6,2,'5e8667a439c68f5145dd2fcbecf02209'),(211,'VAMSI-GS2','9059108434','12345678','9059108434','',0,'',38,NULL,1,'2023-12-08 11:54:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,0,NULL,6,NULL,'25d55ad283aa400af464c76d713c07ad'),(212,'Durga Potnuru','9398676662','963852741','9398676662','',23,'vijaypotnuru123@gmail.com',37,NULL,1,'2023-12-08 13:41:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,0,123456,6,2,'3e6c33486a73cfbc76a0e42eb3e6cfd7'),(213,'Naga Sai Sravan Kumar Rayapudi','9063269393','Bic@12345','9063269393','',24,'nagasairayapudi2000@gmail.com',36,NULL,1,'2023-12-08 13:45:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,25,7,0,123456,6,2,'374d79fc61cf1a88e940d4bffa5cd926'),(214,'Durga','7794945664','1234','7794945664','',23,'vijaypotnuru123@gmail.com',38,NULL,1,'2023-12-08 13:53:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(215,'Prasanth kumar','6304005193','87654321','6304005193','',27,'prasanth@1234gmail.com',38,NULL,1,'2023-12-08 15:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,0,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(216,'Chevireddy Hemachandra Reddy','9949994442','Mla@1234','9949994442',NULL,NULL,NULL,32,NULL,1,'2023-12-15 12:43:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,1,NULL,6,NULL,'63ba71057a68c6cb9857f12839d9bd79'),(217,'D. Srinivasa Reddy','8019880808','Cpro@1234','8019880808',NULL,NULL,NULL,33,NULL,1,'2023-12-15 12:53:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,NULL,NULL,NULL,0,NULL,6,NULL,'ce8ec2792b826c08787722d91007231d'),(218,'B. Gopikrishna Reddy','7799554426','pro@123','7799554426',NULL,NULL,NULL,34,NULL,1,'2023-12-15 12:58:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,NULL,NULL,1,NULL,6,NULL,'ff98cb84c0543de1ff44c48824911a71'),(219,'C.Nishanth Reddy','9393604138','Apro@123','9393604138',NULL,NULL,NULL,35,NULL,1,'2023-12-15 13:01:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,108,NULL,1,NULL,6,NULL,'1bf2f9747dc6a7fccfa32326c0f6e455'),(221,'C.Medhansh Reddy','8374787593','12345678','8374787593',NULL,NULL,NULL,36,NULL,1,'2023-12-15 13:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,108,NULL,0,NULL,6,213,'5ac9dcec9adeaf5136535b9da6dc6c5a');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_temp`
--

DROP TABLE IF EXISTS `users_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_temp` (
  `user_pk` int(11) NOT NULL DEFAULT 0,
  `user_displayname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `phone_no` varchar(10) NOT NULL,
  `office_phone_no` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `reporting_manager` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `consistency_id` int(11) DEFAULT NULL,
  `mandal_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `sachivalayam_id` int(11) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `is_first_login` tinyint(1) DEFAULT 1,
  `otp` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `part_no` int(11) DEFAULT NULL,
  `password_encrypted` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_temp`
--

LOCK TABLES `users_temp` WRITE;
/*!40000 ALTER TABLE `users_temp` DISABLE KEYS */;
INSERT INTO `users_temp` VALUES (10,'K Manikanta','9985079957','1234','9985079957',NULL,NULL,NULL,33,NULL,1,'2023-11-27 12:16:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(11,'A.Aabeed','9398979098','54321','9398979098',NULL,NULL,NULL,34,NULL,1,'2023-11-27 12:49:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,NULL,NULL,0,NULL,6,NULL,'01cfcd4f6b8770febfb40cb906715822'),(12,'Geddi Balaji','7675924520','1234','7675924520',NULL,NULL,NULL,35,NULL,1,'2023-11-27 12:54:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,25,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(18,'B.Sri Hari','8919757345','1234','8919757345',NULL,NULL,NULL,33,NULL,1,'2023-12-01 08:10:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(19,'K.Lokesh','9160308205','1234','9160308205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(20,'P.Lokesh','8639430813','1234','8639430813',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(21,'P.Guna Sekhar Reddy','9642824182','1234','9642824182',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(22,'Madasi Nagarjuna','8686787377','1234','8686787377',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,26,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(23,'Angereddy Rajasekhar','8328180079','1234','8328180079',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,27,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(24,'Valkuntapathi Reddappa','9700070005','1234','9700070005',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,28,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(25,'T Surya Prakash','7330074743','1234','7330074743',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,29,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(26,'N Harikrishna','9182743681','1234','9182743681',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,30,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(27,'K.Hemanth Kumar','9391162281','1234','9391162281',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,31,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(28,'N Giribabu','7989732019','1234','7989732019',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(29,'G Prakash','9392432355','1234','9392432355',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(30,'K Soma Sekhar','9390773818','1234','9390773818',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(31,'P Somasekhar','6300788037','1234','6300788037',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(32,'P.Siva Prasad','6301933292','1234','6301933292',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(33,'V Tariminanda','7032956449','1234','7032956449',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(34,'Dinesh Kumar M','8688376683','1234','8688376683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(35,'Karteek Varlla','7093838463','1234','7093838463',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(36,'Battala Chaitanya','9515681010','1234','9515681010',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(37,'Kumar Bagadi','9398464795','1234','9398464795',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(38,'K.Sai Kumar','7702311232','1234','7702311232',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(39,'V DEVENDRA','9553269014','1234','9553269014',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(40,'K Balaji','7799486416','1234','7799486416',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(41,'M Rohith','6303346498','1234','6303346498',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(42,'S.Charan','9398297963','1234','9398297963',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(43,'Nagooru Sameevulla','7013654773','1234','7013654773',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(44,'M.KISHORE','9908537683','1234','9908537683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(45,'K Nagendra Babu','9550029871','1234','9550029871',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(48,'M Gajendra Reddy','9985682040','1234','9985682040',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:14:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(49,'B.Sisindri Reddy','7989130140','1234','7989130140',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:17:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(50,'C.Chandra Sekhar','9154469950','1234','9154469950',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:19:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,9,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(51,'P.Sopma Sekhar','9701708038','1234','9701708038',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:23:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(52,'K.Ramesh','9573691354','1234','9573691354',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:25:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(53,'N Nagendra Kumar','9652070998','1234','9652070998',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:27:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(54,'S.Fayaz Ahamed','8074708079','123','8074708079',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:29:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'202cb962ac59075b964b07152d234b70'),(55,'K.Mohan Reddy','8897661280','1234','8897661280',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:33:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(56,'S.Bavaji','9912803104','1234','9912803104',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:35:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(57,'K.Kiran Kumar','9010614835','12334','9010614835',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:38:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'120705de7e61c5b322ad798b8ef225a7'),(58,'VACANT','9876543210','1234','9876543210',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:41:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(59,'J.Ravi Teja','9030769941','1234','9030769941',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:43:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(60,'G.Lakshmipathi','9000743443','1234','9000743443',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:46:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(61,'K.Giri Babu','7093243213','1234','7093243213',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:21:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(62,'B.Ravi','8328427108','1234','8328427108',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:34:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(63,'P.Kodandam','7207548503','1234','7207548503',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(64,'B.Vamsi Krishna','7901068582','1234','7901068582',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:38:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(65,'vacant','987654321','1234','987654321',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:41:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,24,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(66,'M.Shanmugam','7997411721','1234','7997411721',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:12:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,25,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(67,'K.Vijay Kumar','8919832001','1234','8919832001',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:17:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,26,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(68,'M.Sasikumar','9666600348','1234','9666600348',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:20:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,27,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(69,'P.Dilip Kumar Reddy','8096655536','1234','8096655536',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:22:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,28,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(70,'K.Bhaskar Reddy','9100608627','1234','9100608627',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:24:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,29,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(71,'E.Mahendra','9010959927','1234','9010959927',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:27:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,30,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(72,'P.Karthik','9398687059','1234','9398687059',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:29:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,31,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(73,'D.Azees','9182585511','1234','9182585511',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:33:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,32,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(74,'K.Prathap Reddy','8143232205','1234','8143232205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:36:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(75,'K Reddy Prasad','9550254831','1234','9550254831',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:44:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(76,'K Thulasi Ram','9966181395','1234','9966181395',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:50:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(77,'R Muniraja','8008299382','1234','8008299382',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:10:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(78,'K.Prakash','9391205195','1234','9391205195',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:14:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(79,'G.Ramesh','9959656533','1234','9959656533',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:22:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(80,'Jyotheeswar Reddy K','8187884802','1234','8187884802',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:25:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(81,'T.Venkatesh','9347015374','1234','9347015374',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(82,'N.Lekha Raju','8886847669','1234','8886847669',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:32:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(83,'S.Gurunath','8096292519','1234','8096292519',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:35:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(84,'N Purushotham','7731088724','1234','7731088724',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:13:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(85,'D.Nane','6281350891','1234','6281350891',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:15:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(86,'Sarath Kumar','7569669401','1234','7569669401',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:17:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(87,'Hari Babu M','7032298559','1234','7032298559',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:18:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(88,'Jeevarathnam Reddy','6303621325','1234','6303621325',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(89,'S Madhu','9848534569','1234','9848534569',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:36:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(90,'P Dilli Prasad','9000704694','1234','9000704694',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:38:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(91,'B.Damodaram Reddy','9652633509','1234','9652633509',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:40:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(92,'Mukkoti Samadhi','8639688754','1234','8639688754',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:54:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(93,'Pattumarpu Srinivas','8309527987','1234','8309527987',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:56:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(94,'Oruganti Chandra Sekhar','9985873625','1234','9985873625',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(95,'Vanarla Dilli Basha','7702690114','8901','7702690114',NULL,NULL,NULL,35,NULL,1,'2023-12-02 02:00:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'f4d87ed3b0dbf9c79746d00cedbb5e78'),(96,'A Leela Krishna','9676093346','1234','9676093346',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:45:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(97,'Bodireddy Chiranjeevi','8897773627','4567','8897773627',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:48:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'6562c5c1f33db6e05a082a88cddab5ea'),(98,'K Thulasiram Reddy','8886169589','5678','8886169589',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:51:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'674f3c2c1a8a6f90461e8a66fb5550ba'),(99,'K Venkataramana Reddy','9848803057','1234','9848803057',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(100,'Mahesh T','7893318622','1234','7893318622',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:08:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(101,'Avula Mouneesh','9880007452','1234','9880007452',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:09:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(102,'G Ashok Kumar','9502706145','1234','9502706145',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:11:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(103,'Jagili Rasaiah','9701129285','1234','9701129285',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:14:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(104,'G Janardhan Reddy','9490837428','1234','9490837428',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:17:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(105,'G Sudhakar Reddy','9000038851','1234','9000038851',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:18:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(106,'Nagineni Dhananjaya','9160232255','1234','9160232255',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:20:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(107,'Etimarpu Ganesh Achari','9704439169','1234','9704439169',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:23:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(108,'Ramoji Venkatesh','7702730863','1234','7702730863',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:24:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(109,'VACANT','1234567890','1234','1234567890',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:27:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(110,'Bhuvaneswar Reddy V','7893996626','1234','7893996626',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:32:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(111,'G Gnayasekhar','9985189144','1234','9985189144',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:46:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(112,'P Khaja Peer','7893432811','1234','7893432811',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:48:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(113,'K Sekhar','9573687383','1234','9573687383',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:49:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(114,'Boyani Suresh','9603702856','1234','9603702856',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:51:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(115,'G Vijay Kumar','9154458676','1234','9154458676',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:54:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(116,'C Viswanadhareddy','9985111855','1234','9985111855',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:57:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(117,'Kishore Reddy','8500013053','1234','8500013053',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(118,'O Manikanta Reddy','9182218173','1234','9182218173',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:04:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(119,'P Bareshavalli','7993313243','1234','7993313243',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:05:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(120,'Shaik Riyaz','9000266065','1234','9000266065',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:07:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(122,'Ch Ramu ','5555555555','1234','5555555555',NULL,NULL,NULL,38,NULL,1,'2023-12-04 06:23:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,3,'81dc9bdb52d04dc20036dbd8313ed055'),(123,'P Shiva','6666666666','1234','6666666666',NULL,NULL,'email',38,NULL,1,'2023-12-04 06:26:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,1,NULL,6,3,'81dc9bdb52d04dc20036dbd8313ed055'),(124,'Mohith Reddy','1111122222','Mla@12345','1111122222',NULL,NULL,NULL,32,NULL,1,'2023-12-04 12:02:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,0,NULL,6,NULL,'1b567570095f2cabf8964be15f311ab8'),(126,'Rohith p','9456321789','1234','9456321789','9632587410',23,'rohith123demo@gmail.com',37,NULL,1,'2023-12-06 08:07:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(127,'Rohith S','9874563210','Gruha@1234','9874563210','963582741',23,'rohith123demo@gmail.com',38,NULL,1,'2023-12-06 08:14:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,0,NULL,6,4,'854a194000d5d08c2609641ebacf63c7'),(128,'rohith p','963258741','12345','963258741','923456789',23,'rohith123demo@gmail.com',37,NULL,1,'2023-12-06 09:50:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'827ccb0eea8a706c4c34a16891f84e7b'),(133,'rohith','9325874160','12345','9325874160','9854763210',23,'rohit@gmail.com',37,NULL,1,'2023-12-06 09:55:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'827ccb0eea8a706c4c34a16891f84e7b'),(195,'K Mani','9985079956','1234','9985079956',NULL,NULL,NULL,37,NULL,1,'2023-12-06 13:23:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,6,6,7,1,NULL,6,2,'81dc9bdb52d04dc20036dbd8313ed055'),(209,'asd','1231231231','ySZBc8tV','1231231231','',0,'',38,NULL,1,'2023-12-07 15:53:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,1,NULL,6,NULL,'e0f5a40e701fba795ccf65c80bc58f8a'),(210,'SRINIVAS-GS','8332037173','87654321','8332037173','',0,'',38,NULL,1,'2023-12-07 15:54:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,0,NULL,6,2,'5e8667a439c68f5145dd2fcbecf02209'),(211,'VAMSI-GS2','9059108434','12345678','9059108434','',0,'',38,NULL,1,'2023-12-08 11:54:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,0,NULL,6,NULL,'25d55ad283aa400af464c76d713c07ad'),(212,'Durga Potnuru','9398676662','Moll@123','9398676662','',23,'vijaypotnuru123@gmail.com',37,NULL,1,'2023-12-08 13:41:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,0,NULL,6,2,'3e6c33486a73cfbc76a0e42eb3e6cfd7'),(213,'Naga Sai Sravan Kumar Rayapudi','9063269393','Bic@2468','9063269393','',24,'nagasairayapudi2000@gmail.com',36,NULL,1,'2023-12-08 13:45:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,25,7,0,NULL,6,2,'374d79fc61cf1a88e940d4bffa5cd926'),(214,'Durga','7794945664','1234','7794945664','',23,'vijaypotnuru123@gmail.com',38,NULL,1,'2023-12-08 13:53:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(215,'Prasanth kumar','6304005193','1234','6304005193','',27,'prasanth@1234gmail.com',38,NULL,1,'2023-12-08 15:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(216,'Chevireddy Hemachandra Reddy','9949994442','Mla@1234','9949994442',NULL,NULL,NULL,32,NULL,1,'2023-12-15 12:43:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,1,NULL,6,NULL,'63ba71057a68c6cb9857f12839d9bd79'),(217,'D. Srinivasa Reddy','8019880808','Cpro@1234','8019880808',NULL,NULL,NULL,33,NULL,1,'2023-12-15 12:53:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,NULL,NULL,NULL,0,NULL,6,NULL,'ce8ec2792b826c08787722d91007231d'),(218,'B. Gopikrishna Reddy','7799554426','pro@123','7799554426',NULL,NULL,NULL,34,NULL,1,'2023-12-15 12:58:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,NULL,NULL,1,NULL,6,NULL,'ff98cb84c0543de1ff44c48824911a71'),(219,'C.Nishanth Reddy','9393604138','Apro@123','9393604138',NULL,NULL,NULL,35,NULL,1,'2023-12-15 13:01:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,108,NULL,1,NULL,6,NULL,'1bf2f9747dc6a7fccfa32326c0f6e455'),(221,'C.Medhansh Reddy','8374787593','Booth@123','8374787593',NULL,NULL,NULL,36,NULL,1,'2023-12-15 13:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,108,NULL,1,NULL,6,213,'5ac9dcec9adeaf5136535b9da6dc6c5a');
/*!40000 ALTER TABLE `users_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villages`
--

DROP TABLE IF EXISTS `villages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villages` (
  `village_pk` int(11) NOT NULL AUTO_INCREMENT,
  `village_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `part_no` int(15) NOT NULL,
  PRIMARY KEY (`village_pk`),
  KEY `part_no_idx` (`part_no`),
  CONSTRAINT `part_no` FOREIGN KEY (`part_no`) REFERENCES `parts` (`part_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villages`
--

LOCK TABLES `villages` WRITE;
/*!40000 ALTER TABLE `villages` DISABLE KEYS */;
INSERT INTO `villages` VALUES (7,'KARANAM VARI PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(8,'KAMSALA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(9,'MALA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(10,'DIGUVA MADIGA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(11,'DEVARAVANDLA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(12,'PENUGONDAVARI PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(16,'Text Village',1,'2023-12-05 13:43:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,3),(18,'village-4',1,'2023-12-07 08:58:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(20,'village-4',1,'2023-12-07 09:02:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,4),(23,'chinnapuram',1,'2023-12-07 09:06:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,4),(27,'peddapuram',1,'2023-12-07 09:43:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,4),(29,'village -10',1,'2023-12-07 09:47:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(30,'village -11',1,'2023-12-07 09:49:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,4);
/*!40000 ALTER TABLE `villages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter_mapping`
--

DROP TABLE IF EXISTS `voter_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter_mapping` (
  `voter_mapping_pk` int(11) NOT NULL AUTO_INCREMENT,
  `voter_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`voter_mapping_pk`),
  KEY `voter_id` (`voter_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `voter_mapping_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `voters` (`voter_pk`),
  CONSTRAINT `voter_mapping_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter_mapping`
--

LOCK TABLES `voter_mapping` WRITE;
/*!40000 ALTER TABLE `voter_mapping` DISABLE KEYS */;
INSERT INTO `voter_mapping` VALUES (16,1,10,'2023-12-05 08:58:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,2,11,'2023-12-05 08:58:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,3,11,'2023-12-05 08:58:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `voter_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voters` (
  `voter_pk` int(11) NOT NULL AUTO_INCREMENT,
  `part_no` int(11) NOT NULL,
  `part_slno` int(11) NOT NULL,
  `voter_name` varchar(100) NOT NULL,
  `voter_id` varchar(10) NOT NULL,
  `guardian` int(11) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `gruhasaradhi_id` int(11) DEFAULT NULL,
  `phone_no` varchar(10) NOT NULL,
  `permenent_address` varchar(500) NOT NULL,
  `current_address` varchar(500) NOT NULL,
  `is_resident` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `consistency_id` int(11) NOT NULL,
  `mandal_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `sachivalayam_id` int(11) NOT NULL,
  `village_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL,
  `is_newregistration` tinyint(1) DEFAULT 0,
  `religion_id` int(11) DEFAULT NULL,
  `caste_id` int(11) DEFAULT NULL,
  `govt_employee` tinyint(1) DEFAULT NULL,
  `disability` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`voter_pk`),
  KEY `state_id` (`state_id`),
  KEY `consistency_id` (`consistency_id`),
  KEY `mandal_id` (`mandal_id`),
  KEY `division_id` (`division_id`),
  KEY `sachivalayam_id` (`sachivalayam_id`),
  KEY `village_id` (`village_id`),
  KEY `guardian` (`guardian`),
  KEY `gender` (`gender`),
  KEY `voters_ibfk_10` (`volunteer_id`),
  KEY `voters_ibfk_11` (`gruhasaradhi_id`),
  KEY `part_no_idx` (`part_no`),
  KEY `phone_no_idx` (`phone_no`),
  CONSTRAINT `voters_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_pk`),
  CONSTRAINT `voters_ibfk_10` FOREIGN KEY (`volunteer_id`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `voters_ibfk_11` FOREIGN KEY (`gruhasaradhi_id`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `voters_ibfk_2` FOREIGN KEY (`consistency_id`) REFERENCES `constituencies` (`consistency_pk`),
  CONSTRAINT `voters_ibfk_3` FOREIGN KEY (`mandal_id`) REFERENCES `mandals` (`mandal_pk`),
  CONSTRAINT `voters_ibfk_4` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`division_pk`),
  CONSTRAINT `voters_ibfk_5` FOREIGN KEY (`sachivalayam_id`) REFERENCES `sachivalayam` (`sachivalayam_pk`),
  CONSTRAINT `voters_ibfk_7` FOREIGN KEY (`village_id`) REFERENCES `villages` (`village_pk`),
  CONSTRAINT `voters_ibfk_8` FOREIGN KEY (`guardian`) REFERENCES `lookup` (`lookup_pk`),
  CONSTRAINT `voters_ibfk_9` FOREIGN KEY (`gender`) REFERENCES `lookup` (`lookup_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES (1,2,1,'SAMEEULLA SYED','IAX1916410',16,'SILAR SAHEB SYED',13,33,11,NULL,'1234512345','Chittor Town','Tirupati',0,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'email',6,0,82,89,0,0),(2,2,5,'PRIYANKA V','IAX1243039',18,'DORASWAMY V',14,29,11,NULL,'9999999999','House Number 1-3','House Number 1-30',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,81,88,1,0),(3,2,6,'RAJENDRA PRIYANKA','IAX1841527',16,'MUNASWAMY RAJENDRA',13,24,NULL,NULL,'1212121212','Chittor -1-19','Tirupati',0,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,82,89,1,1),(4,2,95,'ABDUL MUZEEM SHAIK','IAX3195955',16,'ABDUL MAZEED SHAIK',13,22,NULL,NULL,'9876543201','House Number 1-1','House Number 1-1',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(5,2,101,'RAMANAMMA S','IAX1509357',18,'RAMESH BABU S',14,40,NULL,NULL,'9786543201','House Number 1-22','House Number 1-22',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(6,2,102,'MUNIM MOGAL','IAX0989576',16,'MAHAMMAD BIG MOGAL',13,32,NULL,NULL,'9687543201','House Number 2-10','House Number 2-10',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(7,2,187,'MOHAN TALARI','IAX1242981',16,'NARAYANA TALARI',13,56,NULL,NULL,'9876543102','House Number 1-3','House Number 1-3',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0,NULL,NULL,NULL,NULL),(8,2,188,'SYAMALA','IAX1243054',18,'MOHANA T',14,49,NULL,NULL,'9786543102','House Number 1-4','House Number 1-4',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0,NULL,NULL,NULL,NULL),(9,2,191,'NAGESWARA TALARI','IAX1242965',16,'VENKATA RAMANA TALARI',13,40,NULL,NULL,'9687543102','House Number 1-6','House Number 1-6',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0,NULL,NULL,NULL,NULL),(10,2,285,'CHANDU JAMPE','IAX3077484',16,'VIJAYA KUMAR J',13,22,NULL,NULL,'9876543103','House Number 1-0','House Number 1-0',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6,0,NULL,NULL,NULL,NULL),(11,2,284,'Deepa Jampe','IAX3150059',16,'Vijay kumar Jampe',14,20,NULL,NULL,'9786543103','House Number 00','House Number 00',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,1,10,'',6,0,NULL,NULL,NULL,NULL),(12,2,287,'Mahesh Kommu','IAX3241734',16,'Venkataramana Kommu',13,19,NULL,NULL,'9687543103','House Number 1-1','House Number 1-1',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,1,10,'',6,0,NULL,NULL,NULL,NULL),(26,2,2,'ZEENAT SYED','IAX1916378',18,'SAMEEULLA SYED',14,31,NULL,NULL,'9876543210','House Number 1-1','House Number 1-1',1,1,'2023-12-02 09:01:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(27,2,3,'SEEMA S','IAX1897867',18,'CHAN BASHA S',14,28,NULL,NULL,'9876543210','House Number 1-1','House Number 1-1',1,1,'2023-12-02 09:56:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(28,2,4,'MASTHAN VALI SHAIK','IAX0989626',16,'IBRAHEEM SAHEB SHAIK',13,41,NULL,NULL,'9876543210','House Number 1-2','House Number 1-2',1,1,'2023-12-02 10:01:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(29,2,8,'ANIL KUMAR G','IAX2049872',16,'RAMAIAH G',13,25,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:10:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(30,2,7,'SHARU KHAN PATHAN','IAX1553958',16,'RAHAMATHULLA KHAN',13,31,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:14:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(31,2,9,'M BAAVAJI','IAX2041382',16,'S MAHABOOB PATHAN',13,28,NULL,NULL,'9876543210','-','House Number 1-5',0,1,'2023-12-02 10:41:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(32,2,10,'SUNEEL KUMAR G','IAX2049914',16,'RAMANAIAH G',13,24,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:45:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(33,2,11,'Anarkhali Shaik','IAX1888312',18,'Riyaze S',14,31,NULL,NULL,'9876543210','House Number 1-13','House Number 1-13',1,1,'2023-12-02 10:54:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(34,2,12,'Sreenivasulu J','IAX1948520',16,'Krishnajah J',13,25,NULL,NULL,'9876543210','House Number 1-15','House Number 1-15',1,1,'2023-12-02 10:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(35,2,13,'Kalpana Thalla','IAX1887371',18,'Prudvi Raj T',14,31,NULL,NULL,'9876543210','House Number 1-16','House Number 1-16',1,1,'2023-12-02 11:02:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(36,2,14,'Nagineni Tejaswini','IAX3225331',18,'Rajesh Golla',14,21,NULL,NULL,'9876543210','House Number 1-21','House Number 1-21',1,1,'2023-12-02 11:07:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(37,2,15,'NAGESH KUMAR BOMMAJI','IAX2044238',16,'CHALAPATHI BOMMAJI',13,23,NULL,NULL,'9876543210','House Number 1-22','House Number 1-22',1,1,'2023-12-02 11:13:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(38,2,16,'Rajesh J','IAX1878776',16,'Ravi J',13,24,NULL,NULL,'9876543210','House Number 1-43','House Number 1-43',1,1,'2023-12-02 11:16:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(39,2,17,'S KHADHAR BASHA SHAIK','IAX1817329',16,'SHAIK SHAMEER SAHEB',14,48,NULL,NULL,'9876543210','House Number 1-112','House Number 1-112',1,1,'2023-12-02 11:28:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(40,2,18,'S ARIFUN','IAX2041416',18,'S MAHABOOB BASHA SHAIK',13,50,NULL,NULL,'9876543210','House Number 1-81','House Number 1-81',1,1,'2023-12-02 11:46:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(41,2,19,'RAMA DEVI SUNDU PALLI','IAX1243021',18,'SIDDAIAH SUNDU PALLI',14,34,NULL,NULL,'9876543210','House Number 2-1','House Number 2-1',1,1,'2023-12-02 11:53:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(42,2,20,'Mahesh Tummala','IAX1948405',16,'Venkatramana T',13,23,NULL,NULL,'9876543210','House Number 2-75','House Number 2-75',1,1,'2023-12-02 11:57:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(43,2,21,'D.ANAND','FDJ1080589',16,'VENKATARAMAIAH',13,40,NULL,NULL,'9876543210','l','House Number 1-5',0,1,'2023-12-02 12:00:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(44,2,22,'JEE IRMALA','IAX0010801',18,' JEE RAJANNA',14,51,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:03:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(45,2,23,'G RAJANNA','IAX0010694',16,'G CHINNABBA NAIDU',13,56,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:08:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(46,2,24,'G.MUDDUSVAMI','IAX2478725',16,'CHINNABBA',13,61,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:11:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(47,2,25,'JEE MUDDU SVAMI','IAX0787325',16,'JEE CHINNABBA',13,68,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:19:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(48,2,26,'G HIMABINDU','IAX0010819',18,'G CHINNABBA NAIDU',14,38,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:29:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(49,2,27,'G.PARVATAALU','FDJ2542827',18,'CHINNABBA',14,84,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:34:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(50,2,28,'G.NARAYANAMMA','IAX2478717',18,'MADU SVAMI',14,52,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:38:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(51,2,29,'P.SUJINI','FDJ2541050',18,'CHANDRASEHAR NAIDU',14,41,NULL,NULL,'9876543210','House Number 3-2','House Number 3-2',1,1,'2023-12-02 12:41:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(52,2,30,'P.CHANDERSEKHAR NAIDU','IAX2478733',16,'KONDAMNAYUDU',13,56,NULL,NULL,'9876543210','House Number 3-2','House Number 3-2',1,1,'2023-12-03 05:49:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(53,2,31,'P.JAYAMMA','IAX2478741',18,'NAGAPPA NAIDU',14,64,NULL,NULL,'9876543210','House Number 3-3','House Number 3-3',1,1,'2023-12-03 05:54:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(54,2,32,'P.NAGAPPA NAIDU','IAX2478758',16,'THIRUMALA NAIDU',13,79,NULL,NULL,'9876543210','House Number 3-3','House Number 3-3',1,1,'2023-12-03 06:04:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(55,2,33,'S.JAHARABI','IAX0322057',18,'IBRAHEEMSAB',14,66,NULL,NULL,'9876543210','House Number 3-8/A','House Number 3-8/A',1,1,'2023-12-03 06:11:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(56,2,34,'S DIL SHAD','IAX0322297',18,'S RIJVAN',14,36,NULL,NULL,'9876543210','House Number 3-8A','House Number 3-8A',1,1,'2023-12-03 06:16:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(57,2,35,'S.JARINABEE','IAX0322065',18,'MASTANSAB',14,40,NULL,NULL,'9876543210','House Number 3-9','House Number 3-9',1,1,'2023-12-03 06:29:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,86,99,NULL,NULL),(58,2,36,'S SHAJANA','IAX0322313',18,'S MASTAN',14,34,NULL,NULL,'9876543210','House Number 3-9A','House Number 3-9A',1,1,'2023-12-03 06:40:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(59,2,37,'S GOHATA JAN','IAX0322321',18,'S AJA SAHEB',14,72,NULL,NULL,'9876543210','House Number 3-10','House Number 3-10',1,1,'2023-12-03 06:44:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(60,2,38,'S RASHEEDA','IAX0883744',18,'S KHADAR BASHA',14,48,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 06:48:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(61,2,39,'MASTANSAHEB','IAX2478774',16,'RAHIMANA SABA',13,46,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:01:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(62,2,40,'SHAIK HOSSAIN SAHEB','IAX2478782',16,'RAHIMANA SEBA',13,42,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:03:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(63,2,41,'ACE SHABANA','IAX0725820',18,'ACE HUSEN SAHEB',14,40,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:07:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(64,2,42,'REENAJ S','IAX1242940',16,'PEERAN SAB S',14,28,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:10:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(65,2,43,'MAHAMMAD GOUSE SHAIK','IAX1242957',16,'KHADAR BASHA SHAIK',13,29,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:14:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(66,2,44,'CHAND BASHA SHAIK','IAX1242973',16,'KHADAR BASHA SHAIK',13,31,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(67,2,45,'SHAIK KAHDERBASHA','IAX2478790',16,'HASANSAHEB',13,65,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:25:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(68,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:39:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(69,2,47,'S.BABJAN','IAX0787333',16,'KHADARBASHA',13,36,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(70,2,48,'ROSHINI SHAIK','IAX1879063',18,'DASTHAGIRI SAHEB SHAIK',14,23,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(71,2,49,'Ruksana Shaik','IAX1948496',16,'Kareemulla S',14,23,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(72,2,50,'PATHAN HOSSAIN KHAN','IAX2478808',16,'LALKHAN',13,68,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(73,2,51,'SAYYAD MAHABOOB','IAX2478816',16,'HOSSAINSAHEB',13,57,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(74,2,52,'SAYYAD ENTIYAZ','IAX2478824',16,'SHILARSAHEBA',13,40,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(75,2,53,'S RIJVAN','IAX0319087',16,'S SHIEL SAHEB',13,37,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(76,2,54,'S.ANARKALI','IAX0322073',18,'MAHAMAD RAFI',14,36,NULL,NULL,'9876543210','House Number 3-26/A','House Number 3-26/A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(77,2,55,'MOGAL MAHAMMADBEGE','IAX0685305',16,'KHAADARBEGE',13,59,NULL,NULL,'9876543210','House Number 3-39','House Number 3-39',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(78,2,56,'S DASTHIGIRI SAHEB','IAX0685289',16,'KHADHARSAHEB',13,54,NULL,NULL,'9876543210','House Number 3-57','House Number 3-57',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(79,2,57,'YASMEEN SHAIK','IAX1913847',16,'MASTHAN SAHEB SHAIK',14,24,NULL,NULL,'9876543210','House Number 3-62','House Number 3-62',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(80,2,58,'Swaroopa S','IAX1886282',16,'Ramachandra S',14,25,NULL,NULL,'9876543210','House Number 3-72','House Number 3-72',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(81,2,59,'ASHOK KUMAR J','IAX1471713',16,'KESAVULU J',13,38,NULL,NULL,'9876543210','House Number 3-72','House Number 3-72',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(82,2,60,'PRATAP B','IAX1471820',16,'SIDDAIAH B',13,29,NULL,NULL,'9876543210','House Number 3-75','House Number 3-75',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(83,2,61,'NAGALAKSHMI SUNDUPALLI','IAX1765619',18,'MURALI SUNDUPALLI',14,36,NULL,NULL,'9876543210','House Number 3-78','House Number 3-78',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(84,2,62,'ANIL KUMAR SAGINAM','IAX1243013',16,'NAGAIAH SAGINAM',13,31,NULL,NULL,'9876543210','House Number 3-91','House Number 3-91',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(85,2,63,'ANIL KUMAR S','IAX1471721',16,'SIDDAIAH S',13,28,NULL,NULL,'9876543210','House Number 3-96','House Number 3-96',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(86,2,64,'ALIVELU','IAX0321778',18,'RAMAIAH',14,70,NULL,NULL,'9876543210','House Number 4-83A','House Number 4-83A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(87,2,65,'S DIVYA','IAX1917038',16,'S ANAND',14,24,NULL,NULL,'9876543210','House Number 6-23','House Number 6-23',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(88,2,66,'NANDINI PACHARLLA','IAX1916295',18,'SURENDRA PACHARLLA',14,31,NULL,NULL,'9876543210','House Number 6-28','House Number 6-28',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(89,2,67,'P RAMESH BABU','IAX1660943',16,'P BHASKARA',13,28,NULL,NULL,'9876543210','House Number 6-29','House Number 6-29',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(90,2,68,'VENKATA SIDDAMMA J','IAX2049781',18,'VENKATA RAMANA J',14,61,NULL,NULL,'9876543210','House Number 6-30','House Number 6-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(91,2,69,'VANI K','IAX2049880',18,'RAJENDRA K',14,28,NULL,NULL,'9876543210','House Number 7-1','House Number 7-1',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(92,2,70,'BABU G','IAX2049906',16,'NAGALESU G',13,51,NULL,NULL,'9876543210','House Number 7-1','House Number 7-1',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(93,2,71,'KAVITHA JAMPE','IAX2041069',16,'VENKATARAMANA JAMPE',14,27,NULL,NULL,'9876543210','House Number 7-44','House Number 7-44',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(94,2,72,'Sjida Shaik','IAX1887199',16,'Syed Rafi S',14,25,NULL,NULL,'9876543210','House Number 9-14','House Number 9-14',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(95,2,73,'THoheeda SYEAD','IAX3164902',16,'SYEAD RAFI SYEAD',14,19,NULL,NULL,'9876543210','House Number 9-14','House Number 9-14',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(96,2,74,'Musthafa S','IAX1886019',16,'Raheman Saheb S SHAIK',13,65,NULL,NULL,'9876543210','House Number 9-18','House Number 9-18',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(97,2,75,'MOHAMMED YASEER HUSSAIN','IAX1553917',16,'MASTHAN SAHEB SHAIK',13,28,NULL,NULL,'9876543210','House Number 9-26','House Number 9-26',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(98,2,76,'Riyaze Shaik','IAX1886324',16,'Azeem Saheb S',13,41,NULL,NULL,'9876543210','House Number 9-30','House Number 9-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(99,2,77,'Haseena Shaik','IAX1885938',18,'Hidai Tulla S',14,37,NULL,NULL,'9876543210','House Number 9-30','House Number 9-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(100,2,78,'Hussen Bi Shaik','IAX1887363',18,'Athaulla S',14,58,NULL,NULL,'9876543210','House Number 9-38','House Number 9-38',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(101,2,79,'A VENKATA RAMANA RAO','IAX1840065',16,'A SUDHAKAR',13,40,NULL,NULL,'9876543210','House Number 9-598','House Number 9-598',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(102,2,80,'GOPI KRISHNA THOTA','IAX1840073',16,'RAMARAO THOTA',13,27,NULL,NULL,'9876543210','House Number 11-212A','House Number 11-212A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(103,2,81,'M KUSUMA KUMARI','IAX1839125',18,'T VENKATESH',14,30,NULL,NULL,'9876543210','House Number 12-464','House Number 12-464',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(104,2,82,'BUKKE GANESH NAIK','IAX1839521',16,'BUKKE BALAY NAIK',13,29,NULL,NULL,'9876543210','House Number 21-12-19','House Number 21-12-19',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(105,2,83,'BEEBIJAN PATAN','IAX2246577',16,'MADAR KHAN PATAN',14,66,NULL,NULL,'9876543210','House Number 22-9','villa street ',0,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,83,99,NULL,NULL),(106,2,84,'M PUSHPA','IAX1839893',18,'M VENKATAMUNI',14,47,NULL,NULL,'9876543210','House Number 22-9-26/B','House Number 22-9-26/B',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(107,2,85,'Chandrasekar J','IAX1916139',16,'Nagaraju J',13,26,NULL,NULL,'9876543210','House Number 1012','House Number 1012',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(108,2,86,'Arpana Bhide','IAX1820232',18,'Narendra H',14,42,NULL,NULL,'9876543210','House Number 102','House Number 102',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(109,2,87,'HEMALATHA G','IAX1655976',18,'RAMESH G',14,27,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number KARNAM VARI PALLI',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(110,2,88,'KASIM BE S','IAX1655950',18,'KAJA SAHEB S',14,59,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number KARNAM VARI PALLI',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(111,2,89,'HARATHI G','IAX1655968',18,'MUNI KRISHNA G',14,32,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(112,2,90,'PAVAN V','IAX1655943',16,'VENKATA SIDHULU V',13,29,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(124,2,91,'SUHASHINI G','IAX1655984',16,'CHINNA NAGAIAH G',14,29,NULL,NULL,'9988776655','House Number KOTHA MADIGA PALLI','House Number KOTHA MADIGA PALLI',1,1,'2023-12-07 06:10:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(125,2,92,'SOFIA SHAIK','IAX3184819',18,'SADIQ SHAIK',14,26,NULL,NULL,'9987776655','House Number 00','House Number 00',1,1,'2023-12-07 06:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(126,2,93,'NASAR SHAIK','IAX3195906',16,'KAREEMULLA SHAIK',13,20,NULL,NULL,'9988076655','House Number 00','House Number 00',1,1,'2023-12-07 06:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(127,2,94,'KARISHMA SYED','IAX3106218',16,'SYED BASHA SHAIK',14,25,NULL,NULL,'9987776644','House Number 1-0','House Number 1-0',1,1,'2023-12-07 06:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(128,2,96,'SHAHNAZ SHAIK','IAX3121100',18,'NIYAMAT BASHA SHAIK',14,48,NULL,NULL,'9911223330','House Number 1-1','House Number 1-1',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(129,2,97,'RESHMA PATHAN','IAX0989444',18,'BEEBI PATHAN',14,33,NULL,NULL,'9948076655','House Number 1-3','House Number 1-3',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(130,2,98,'JAVED KHAN PATHAN','IAX0989584',16,'RAHAMATULLA KHAN PATHAN',14,20,NULL,NULL,'9981776644','House Number 1-14','House Number 1-14',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(131,2,99,'ASMA SHAIK','IAX3196029',16,'ALLAUDDIN SHAIK',13,26,NULL,NULL,'9982776644','House Number 1-17','House Number 1-17',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(132,2,100,'HASAN BASHA SHAIK','IAX3200557',16,'CHAND BASHA SHAIK',13,32,NULL,NULL,'9983776644','House Number 1-5','House Number 1-5',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(133,2,103,'SUMALATHA S','IAX1509340',18,'RAJENDRA S',14,34,NULL,NULL,'9011223330','House Number 2-55','House Number 2-55',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(134,2,104,'S MAHAMMAD MAKAYINUDDEN','IAX0883769',16,'S MOULANA ABDUL',13,47,NULL,NULL,'9148076655','House Number 3-','House Number 3-',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(135,2,105,'S ISARATH BOO','IAX0883777',18,'S MAHAMMAD MAYINUDDEN',14,43,NULL,NULL,'9281776644','House Number 3.','House Number 3.',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(136,2,106,'S NOORUJAN','IAX0322107',18,'INTIAJ',14,38,NULL,NULL,'9382776644','House Number 3/16','House Number 3/16',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(137,2,107,'S ASIA','FDJ2541456',18,'RAFFEE',14,40,NULL,NULL,'9483776644','House Number 3/18C','House Number 3/18C',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(138,2,108,'S MUNNI','FDJ2541464',18,'KHARIMULLA',14,40,NULL,NULL,'9011223331','House Number 3/25','House Number 3/25',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(139,2,109,'MIRABHA','FDJ2541605',18,'IMANKHASEEM',14,41,NULL,NULL,'9148076652','House Number 3/62A','House Number 3/62A',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(140,2,110,'Shaik.Shenshada B','IAX2478832',18,'IbraheemSaheb',14,46,NULL,NULL,'9281776644','House Number 3-9','House Number 3-9',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(141,2,111,'S KADIRUNNISHA','IAX0322305',18,'S MASTAN',14,35,NULL,NULL,'9382776444','House Number 3-9','House Number 3-9',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(142,2,112,'Shek Halimabi','FDJ2542835',18,'Vusen Saheb',14,89,NULL,NULL,'9483776645','House Number 3-10','House Number 3-10',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(143,2,113,'S BADHULLA','IAX0184838',16,'S KHADAR BASHA',13,35,NULL,NULL,'6011223331','House Number 3-13','House Number 3-13',1,1,'2023-12-07 08:37:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(144,2,114,'Sayyad.Mahaboob Bhi','IAX2478840',18,'Shilara Saheb',14,64,NULL,NULL,'6148076652','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:37:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(148,2,115,'PATHANI.JARINABEE','IAX2478865',18,'VUSSENA KHAN',14,40,NULL,NULL,'6281776644','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:49:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(149,2,116,'Sayyad Gulab Jan','IAX2478857',18,'Mahaboob Bhasha',14,54,NULL,NULL,'6382776444','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:49:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(150,2,117,'S RAFIYABEE','IAX0322123',18,'MAHABOOBABEG',14,47,NULL,NULL,'6483776645','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:49:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(151,2,118,'SHAIK MOKTIARA BEE','IAX2478881',18,'MUSTAPHA',14,54,NULL,NULL,'6981776644','House Number 3-18','House Number 3-18',1,1,'2023-12-07 09:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(152,2,119,'SAYYAD PYARIJAN','FDJ2541829',18,'KARIMSAHEB',14,64,NULL,NULL,'6982776444','House Number 3-18','House Number 3-18',1,1,'2023-12-07 09:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(153,2,120,'SAYYAD RAFFEE','IAX0184572',16,'KARIMSAHEB',13,40,NULL,NULL,'6983776645','House Number 3-18','House Number 3-18-2',0,1,'2023-12-07 09:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,83,100,NULL,NULL),(154,2,121,'S VASEEM AKRAM','IAX0617431',16,'S MUSTAFA SAHEB',13,37,NULL,NULL,'6981776641','House Number 3-18','House Number 3-18',1,1,'2023-12-07 10:41:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(155,2,122,'ACE SAMEERA','IAX0321679',18,'ACE SHABBAR',14,34,NULL,NULL,'6982776442','House Number 3-18','House Number 3-18',1,1,'2023-12-07 10:41:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(156,2,123,'P.NOORJAHAN BEGAM','FDJ2541449',18,'GAVUS KHAN',14,54,NULL,NULL,'6983776643','House Number 3-23','House Number 3-23',1,1,'2023-12-07 10:41:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(157,2,124,'P SHAKEELA','IAX0185819',18,'P GAUSKHAN',14,50,NULL,NULL,'6981576641','House Number 3-23','House Number 3-23',1,1,'2023-12-07 10:56:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(158,2,125,'PATAN GOUSKHAN PATAN GOUSKHAN','IAX2478915',16,'VI MADAR SAHEB',13,50,NULL,NULL,'6972776442','House Number 3-23','House Number 3-23',1,1,'2023-12-07 10:56:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(159,2,126,'VI ABDUL PAPURKHAN','IAX0553008',18,'DASTAGIRISAHEB',14,56,NULL,NULL,'6983766643','House Number 3-24','House Number 3-24',1,1,'2023-12-07 10:56:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(160,2,127,'SHEKPYARIJANA','IAX2478923',16,'MADARKHAN',13,59,NULL,NULL,'6981576441','House Number 3-23','House Number 3-23',1,1,'2023-12-07 11:04:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(161,2,128,'EM RAJIYA','IAX0725796',18,'EM MAHAMMADA BASHA',14,50,NULL,NULL,'6972876442','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:04:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(162,2,129,'SHEK DISAD BEGAM','FDJ2541738',18,'MAHABOOBBASHA',14,50,NULL,NULL,'6183766643','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:04:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(163,2,130,'SHAIK MASTANSAHEB','IAX2478931',16,'DASTAGIRISAHEB',13,59,NULL,NULL,'7981576441','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:47:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(164,2,131,'SHAIK MAHABOOBBASHA','IAX2478949',16,'DASTAGIRISAHEB',13,60,NULL,NULL,'7972876442','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:47:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(165,2,132,'SHAIK NOUJIA BEE','IAX2478956',18,'YISU SAHEB',14,69,NULL,NULL,'7183766643','House Number 3-25','House Number 3-25',1,1,'2023-12-07 11:47:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(166,2,133,'SHAIK DILSHAD BEE','IAX2478964',18,'MASTANA SAHEB',14,47,NULL,NULL,'7881576441','House Number 3-25','House Number 3-25',1,1,'2023-12-07 13:01:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(167,2,134,'KAREEMULLAH','IAX2478972',16,'ISUSAHEBA',13,42,NULL,NULL,'7972876442','House Number 3-25','House Number 3-25',1,1,'2023-12-07 13:01:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(168,2,135,'SHAIK MASTANI','IAX2478998',18,'ANWARBASHA',14,40,NULL,NULL,'7183711643','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:01:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(169,2,136,'S HAKEEM BSHAH','IAX0725317',16,'S ABDULRAZAQ',13,45,NULL,NULL,'7111576441','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:11:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(170,2,137,'ANWARBASHA','IAX2479012',16,'ABDULRAJAK',13,44,NULL,NULL,'7971176442','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:11:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(171,2,138,'ACE GOUSUNNI','IAX0321653',18,'ACE',14,35,NULL,NULL,'7183711211','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:11:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(172,2,139,'S.ZAKIRHUSSEN','IAX0319186',16,'S ABDULRAZAQ',13,55,NULL,NULL,'7111576111','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:22:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(173,2,140,'SHEK PARVEENA BEE','FDJ2541498',18,'DASTAGIRISAHEB',14,46,NULL,NULL,'7971176112','House Number 3-27','House Number 3-27',1,1,'2023-12-07 13:22:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(174,2,141,'S ANARKALI','IAX0787069',18,'S MAHMADRAFI',14,45,NULL,NULL,'7193711211','House Number 3-27','House Number 3-27',1,1,'2023-12-07 13:22:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(175,2,142,'NOORULLA','IAX2479020',16,'QADERSAHEB',13,51,NULL,NULL,'7111576122','House Number 3-27','House Number 3-27',1,1,'2023-12-07 14:02:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(176,2,143,'SHAMEER SAHEB','IAX2479038',16,'KAHDER SAHEB',13,62,NULL,NULL,'7971146112','House Number 3-27','House Number 3-27',1,1,'2023-12-07 14:02:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(177,2,144,'SHEK SHADA DEE','FDJ2541746',18,'SHAMIR SAHEB',14,60,NULL,NULL,'8193711211','House Number 3-28','House Number 3-28',1,1,'2023-12-07 14:02:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(178,2,145,'ABDULRAHIMANA','IAX2479046',16,'DASTAGIRISAHEB',13,66,NULL,NULL,'7122576122','House Number 3-29','House Number 3-29',1,1,'2023-12-07 14:17:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(179,2,146,'DASTHAGIRI SAHEB SHAIK','IAX1088450',16,'ABDUL RAHEMAN SHAIK',13,32,NULL,NULL,'7897114611','House Number 3-29','House Number 3-29',1,1,'2023-12-07 14:17:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(180,2,147,'SHAIK NASEEB JAN','IAX2479053',18,'ALLABAKSU',14,67,NULL,NULL,'8193711411','House Number 3-30','House Number 3-30',1,1,'2023-12-07 14:17:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(181,2,148,'TIE.MASTAN SAHEB','FDJ2539500',16,'MABUSAHEBA',13,44,NULL,NULL,'7133576122','House Number 3-34','House Number 3-34',1,1,'2023-12-08 07:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(182,2,149,'S.RAJANNI BEE','IAX2480127',18,'MAHAMMAD BEG',14,67,NULL,NULL,'7897114612','House Number 3-35','House Number 3-35',1,1,'2023-12-08 07:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(183,2,150,'ACE SHARFUN','IAX0321661',18,'ACE ABDHUL',14,65,NULL,NULL,'8493711411','House Number 3-36','House Number 3-36',1,1,'2023-12-08 07:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(184,2,151,'M.MASTANBEG','IAX0318568',16,'MAHAMADBEG',13,36,NULL,NULL,'7144576122','House Number 3-36/A','House Number 3-36/A',1,1,'2023-12-08 07:52:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(185,2,152,'G KIRAN KUMAR','IAX0883728',16,'G CHANDRAIAH',13,37,NULL,NULL,'7897214612','House Number 3-37','House Number 3-37',1,1,'2023-12-08 07:52:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(186,2,153,'G.NAGARATHNA','IAX2480143',18,'CHANDRAIAH',14,54,NULL,NULL,'8493766411','House Number 3-37','House Number 3-37',1,1,'2023-12-08 07:52:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters_prep`
--

DROP TABLE IF EXISTS `voters_prep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voters_prep` (
  `voter_pk` int(11) NOT NULL DEFAULT 0,
  `part_no` int(11) NOT NULL,
  `part_slno` int(11) NOT NULL,
  `voter_name` varchar(100) NOT NULL,
  `voter_id` varchar(10) NOT NULL,
  `guardian` int(11) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `gruhasaradhi_id` int(11) DEFAULT NULL,
  `phone_no` varchar(10) NOT NULL,
  `permenent_address` varchar(500) NOT NULL,
  `current_address` varchar(500) NOT NULL,
  `is_resident` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `consistency_id` int(11) NOT NULL,
  `mandal_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `sachivalayam_id` int(11) NOT NULL,
  `village_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL,
  `is_newregistration` tinyint(1) DEFAULT 0,
  `religion_id` int(11) DEFAULT NULL,
  `caste_id` int(11) DEFAULT NULL,
  `govt_employee` tinyint(1) DEFAULT NULL,
  `disability` tinyint(1) DEFAULT NULL,
  `partname` varchar(100) DEFAULT NULL,
  `villagename` varchar(100) DEFAULT NULL,
  `careoftype` varchar(20) DEFAULT NULL,
  `gender1` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters_prep`
--

LOCK TABLES `voters_prep` WRITE;
/*!40000 ALTER TABLE `voters_prep` DISABLE KEYS */;
INSERT INTO `voters_prep` VALUES (0,386,1,'sai','IAX1833227',0,'e chiranjeevulu',0,24,NULL,NULL,'','','House Number',1,1,'2023-12-15 00:57:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,2,'PRABAKARA NAIDU BOLLIPALLI','IAX3121217',0,'MOTHER BOLLIPALLI',0,56,NULL,NULL,'','','House Number 1',1,1,'2023-12-15 00:57:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','M','Male'),(0,386,3,'BHANU AMUDHALA','IAX2060200',0,'SAKUNTHALAMMA A',0,23,NULL,NULL,'','','House Number',1,1,'2023-12-15 00:57:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','O','Female'),(0,386,4,'RENUKA P','IAX1342716',0,'VIJAYA KUMAR NAIDU P',0,65,NULL,NULL,'','','House Number',1,1,'2023-12-15 00:57:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,5,'VIJAYA KUMAR NAIDU P','IAX1342781',0,'RANGAIAH NAIDU P',0,68,NULL,NULL,'','','House Number 1',1,1,'2023-12-15 00:57:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,6,'NEELIMA P','IAX1336313',0,'BHASKAR NAIDU P',0,29,NULL,NULL,'','','House Number 1',1,1,'2023-12-15 00:57:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,7,'BHASKAR ARI','IAX1336370',0,'RAMANUJULA NAIDU A',0,49,NULL,NULL,'','','House Number',1,1,'2023-12-15 00:57:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,8,'RAJAMMA K','IAX1342245',0,'VEERASWAMY NAIDU K',0,85,NULL,NULL,'','','House Number',1,1,'2023-12-15 00:57:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,9,'RAVILLA SAROJAMMA','IAX2692200',0,'MUNASWAMI NAIDU',0,73,NULL,NULL,'','','House Number 1-1',1,1,'2023-12-15 00:57:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,10,'MUNISUBRAMANYAM','IAX2692218',0,'MUNASWAMI NAIDU',0,53,NULL,NULL,'','','House Number 1-1',1,1,'2023-12-15 00:57:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,11,'R. MANJULA','FQQ1360551',0,'MUNISUBRAMANYAM',0,48,NULL,NULL,'','','House Number 1-1',1,1,'2023-12-15 00:57:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,12,'R LOKANADHAM NAIDU','IAX0022053',0,'MUNASWAMY NAIDU',0,45,NULL,NULL,'','','House Number 1-1',1,1,'2023-12-15 00:57:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,13,'SWAPNA R','IAX1336347',0,'LOKANADHAM NAIDU R',0,31,NULL,NULL,'','','House Number 1-1',1,1,'2023-12-15 00:57:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,14,'Bhavya Ravilla','IAX1896778',0,'Muni Subramanyam Ravilla',0,23,NULL,NULL,'','','House Number 1-1',1,1,'2023-12-15 00:57:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,15,'SRAVANI ARI','IAX1903004',0,'SUDHAKAR NAIDU ARI',0,26,NULL,NULL,'','','House Number 1-1',1,1,'2023-12-15 00:57:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,16,'BHAARATHI KANKANAMPAATI','IAX0983156',0,'CHIRANJEEVI NAIDU KANKANAMPAATI',0,56,NULL,NULL,'','','House Number 1-2',1,1,'2023-12-15 00:57:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,17,'CHIRANJEEVI NAIDU KANKANAM PAATI','IAX0983073',0,'CHANGAMA NAIDU KANKANAM PAATI',0,65,NULL,NULL,'','','House Number 1-2',1,1,'2023-12-15 00:57:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,18,'RAAJAMMA GURRAM','IAX0983149',0,'SUBBAA NAIDU GURRAM',0,79,NULL,NULL,'','','House Number 1-2',1,1,'2023-12-15 00:57:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,19,'CHITTEMMA','IAX2692226',0,'DORASWAMY NAIDU',0,58,NULL,NULL,'','','House Number 1-3',1,1,'2023-12-15 00:57:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,20,'G.BALAJI','FQQ1973007',0,'DORASWAMY NAIDU',0,48,NULL,NULL,'','','House Number 1-3',1,1,'2023-12-15 00:57:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,21,'ANITHA GURRAM','IAX0983123',0,'BAALAJI GURRAM',0,43,NULL,NULL,'','','House Number 1-3',1,1,'2023-12-15 00:57:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,22,'HARIKA GURRAM','IAX3121225',0,'ANITHA GURRAM',0,21,NULL,NULL,'','','House Number 1-3',1,1,'2023-12-15 00:58:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','M','Male'),(0,386,23,'AMUDALA NAGRATNAMMA','IAX2692234',0,'SUBBAIAH SETTY',0,72,NULL,NULL,'','','House Number 1-4',1,1,'2023-12-15 00:58:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,24,'PAKALA GOPI','IAX0287029',0,'P SANKARAIAH SETTY',0,46,NULL,NULL,'','','House Number 1-4',1,1,'2023-12-15 00:58:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,25,'PAKALA SHRAVNI','IAX0286930',0,'P GOPI',0,42,NULL,NULL,'','','House Number 1-4',1,1,'2023-12-15 00:58:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,26,'AMUDALA SAKUNTALAMMA','IAX2692291',0,'RAMAIAH CHETTY',0,80,NULL,NULL,'','','House Number 1-10',1,1,'2023-12-15 00:58:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,27,'SUBRAMANYAM','IAX2692309',0,'RAMAIAH SETTY',0,55,NULL,NULL,'','','House Number 1-10',1,1,'2023-12-15 00:58:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,28,'RAJAMMA','IAX2692317',0,'SUBRAMANYAM',0,50,NULL,NULL,'','','House Number 1-10',1,1,'2023-12-15 00:58:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,29,'A .SREENIVASULU','FQQ1360908',0,'SUBRAMANYAM',0,36,NULL,NULL,'','','House Number 1-10',1,1,'2023-12-15 00:58:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,30,'ANJANAA DEVI AAMUDAALA','IAX0983081',0,'SREENIVAASULU AAMUDAALA',0,34,NULL,NULL,'','','House Number 1-10',1,1,'2023-12-15 00:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,31,'A .JAYARAMA SETTY','FQQ2474666',0,'RANGAIAH SETTY',0,74,NULL,NULL,'','','House Number 1-11',1,1,'2023-12-15 00:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,32,'A. SHYAMAL','FQQ2474674',0,'JAYARAM SETTY',0,70,NULL,NULL,'','','House Number 1-11',1,1,'2023-12-15 00:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,33,'CHARAN G','IAX1336339',0,'GOPAL NAIDU G',0,29,NULL,NULL,'','','House Number 1-12',1,1,'2023-12-15 00:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,34,'JAYACHANDRA A','IAX2069037',0,'MUNASWAMY A',0,53,NULL,NULL,'','','House Number 1-12',1,1,'2023-12-15 00:58:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,35,'SUNDARAMMA','IAX2692341',0,'VENKATMUNI SETTY',0,65,NULL,NULL,'','','House Number 1-13',1,1,'2023-12-15 00:58:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,36,'PRAMEELA G','IAX1458554',0,'JAYARAMA CHOUDARY G',0,68,NULL,NULL,'','','House Number 1-13',1,1,'2023-12-15 00:58:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,37,'JAYARAMA CHOUDARY G','IAX1458562',0,'MUNASWAMY NAIDU G',0,74,NULL,NULL,'','','House Number 1-13',1,1,'2023-12-15 00:58:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,38,'MUNASWAMI SETTY A','IAX2692358',0,'VENKATESWARA SETTY A',0,65,NULL,NULL,'','','House Number 1-15',1,1,'2023-12-15 00:58:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,39,'SARASWATHI','IAX2692366',0,'MUNASWAMI SETTY',0,52,NULL,NULL,'','','House Number 1-15',1,1,'2023-12-15 00:58:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,40,'SUBRAMANYAM','IAX2692374',0,'CHENGAIAH SETTY',0,43,NULL,NULL,'','','House Number 1-16',1,1,'2023-12-15 00:58:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,41,'AREDDYMMA','IAX2692382',0,'SUBRAMANYAM',0,39,NULL,NULL,'','','House Number 1-16',1,1,'2023-12-15 00:58:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,42,'LAKSHMI PRASANNA PALADUGU','IAX1812528',0,'UGANDHAR NAIDU PALADUGU',0,27,NULL,NULL,'','','House Number 1-16',1,1,'2023-12-15 00:58:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,43,'Ruchitha Paladugu','IAX3126794',0,'YUGANDHAR',0,22,NULL,NULL,'','','House Number 1-16',1,1,'2023-12-15 00:58:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,44,'GURRAM HAMALATA','IAX0286708',0,'G KESAVA CHAUDHARY',0,68,NULL,NULL,'','','House Number 1-16A',1,1,'2023-12-15 00:58:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,45,'GURRAM KIRAN CHAUDHARY','IAX0286765',0,'G KESAVA CHAUDHARY',0,42,NULL,NULL,'','','House Number 1-16A',1,1,'2023-12-15 00:58:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,46,'GURRAM KESAVA CHAUDARI','IAX0286856',0,'G CHENGAM NAIDU',0,75,NULL,NULL,'','','House Number 1-16A',1,1,'2023-12-15 00:58:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,47,'LAVANYA MODHUPALLLI','IAX0995524',0,'KIRAN CHOUDARY G',0,42,NULL,NULL,'','','House Number 1-16A',1,1,'2023-12-15 00:58:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,48,'PADMA','IAX2692408',0,'MUNIKANNAIAH NAIDU',0,68,NULL,NULL,'','','House Number 1-17',1,1,'2023-12-15 00:58:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,49,'YUGANDHAR','IAX2692416',0,'MUNIKANNAIAH NAIDU',0,57,NULL,NULL,'','','House Number 1-17',1,1,'2023-12-15 00:58:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,50,'MADHU','IAX2692424',0,'MUNIKANNAIAH NAIDU',0,49,NULL,NULL,'','','House Number 1-17',1,1,'2023-12-15 00:58:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,51,'P. PAVANA','FQQ2474682',0,'P MADHU',0,44,NULL,NULL,'','','House Number 1-17',1,1,'2023-12-15 00:58:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,52,'PALADUGU JAYAKRISHNA PALADUGU','IAX3120169',0,'MADHUSUDHAN NAIDU PALADUGU',0,21,NULL,NULL,'','','House Number 1-17',1,1,'2023-12-15 00:58:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,53,'P.SUBHASHINI','FQQ1361187',0,'YUGANDHAR',0,47,NULL,NULL,'','','House Number 1-17',1,1,'2023-12-15 00:58:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,54,'SWARNA','IAX2692432',0,'PAPA NAIDU',0,61,NULL,NULL,'','','House Number 1-18',1,1,'2023-12-15 00:58:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,55,'R KIRAN KUMAR','IAX0762039',0,'R PAPA NAIDU',0,35,NULL,NULL,'','','House Number 1-18',1,1,'2023-12-15 00:58:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,56,'PALADAGU LEILAVATMMA','IAX2692440',0,'KRISHNAM NAIDU',0,83,NULL,NULL,'','','House Number 1-19',1,1,'2023-12-15 00:58:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,57,'P.SUBRAMANYAM NAIDU','FQQ1972967',0,'KRISHNAM NAIDU',0,57,NULL,NULL,'','','House Number 1-19',1,1,'2023-12-15 00:58:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,58,'K DEEPTHI','FQQ2475622',0,'SUBRAMANYAM NAIDU',0,48,NULL,NULL,'','','House Number 1-19',1,1,'2023-12-15 00:58:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,59,'MURGAMMA','IAX2692457',0,'SUBBARAMA NAIDU',0,61,NULL,NULL,'','','House Number 1-20',1,1,'2023-12-15 00:58:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,60,'SUBRAMA NAIDU PALADUGU','IAX0988735',0,'DORASWAMY NAIDU P',0,66,NULL,NULL,'','','House Number 1-20',1,1,'2023-12-15 00:58:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,61,'RAJESWARI','IAX2692465',0,'CHENGAMA NAIDU',0,62,NULL,NULL,'','','House Number 1-24',1,1,'2023-12-15 00:58:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,62,'HARITHA RAAVILLA','IAX0983024',0,'MURALI MOHAN B',0,38,NULL,NULL,'','','House Number 1-24',1,1,'2023-12-15 00:58:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,63,'SAMPOORNAMMA','IAX2692473',0,'RAMACHANDRA NAIDU',0,61,NULL,NULL,'','','House Number 1-25',1,1,'2023-12-15 00:58:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,64,'RAJANI R','FQQ2474708',0,'RAMACHANDRA NAIDU R',0,43,NULL,NULL,'','','House Number 1-25',1,1,'2023-12-15 00:58:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,65,'KAVYACHOWDARY A','IAX1774934',0,'RAMESH BABU A',0,28,NULL,NULL,'','','House Number 1-25',1,1,'2023-12-15 00:58:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,66,'ANANDAMMA','IAX2692481',0,'RAMACHANDER NAIDU',0,81,NULL,NULL,'','','House Number 1-26',1,1,'2023-12-15 00:58:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,67,'CHANDRA SEKHAR NAIDU','IAX2692499',0,'RAMACHANDRA NAIDU',0,58,NULL,NULL,'','','House Number 1-26',1,1,'2023-12-15 00:58:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,68,'JYOTHI','IAX2692507',0,'CHANDRASEKHAR NAIDU',0,55,NULL,NULL,'','','House Number 1-26',1,1,'2023-12-15 00:58:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,69,'SANDHYA P','IAX1336321',0,'CHANDRA SEKHAR NAIDU P',0,29,NULL,NULL,'','','House Number 1-26',1,1,'2023-12-15 00:58:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,70,'PRABHAKAR','IAX2692515',0,'NADHAMUNI NAIDU',0,58,NULL,NULL,'','','House Number 1-27',1,1,'2023-12-15 00:58:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,71,'SARASWATHAMMA','IAX2692523',0,'NADHAMUNI NAIDU',0,53,NULL,NULL,'','','House Number 1-27',1,1,'2023-12-15 00:58:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,72,'KRISHNAM NAIDU','IAX2692531',0,'VENKATRAMA NAIDU',0,61,NULL,NULL,'','','House Number 1-28',1,1,'2023-12-15 00:58:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,73,'ARI JAYAMMA','IAX2692549',0,'JAYARAMA NAIDU',0,68,NULL,NULL,'','','House Number 1-29',1,1,'2023-12-15 00:58:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,74,'RAMESH','IAX2692556',0,'JAYARAMA NAIDU',0,57,NULL,NULL,'','','House Number 1-29',1,1,'2023-12-15 00:58:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,75,'A .SUSEELA','FQQ1361781',0,'RAMESH',0,53,NULL,NULL,'','','House Number 1-29',1,1,'2023-12-15 00:58:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,76,'SRIHARI','IAX2692564',0,'JAYARAMA NAIDU',0,58,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,77,'ARUNA','IAX2692572',0,'SRIHARI',0,53,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,78,'MURALIMOHAN','IAX2692580',0,'JAYARAMA NAIDU',0,56,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,79,'N .USHA','FQQ1972421',0,'MURALIMOHAN',0,53,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,80,'NALLAPANENI NITHIN KRISHNA','IAX0693408',0,'NALLAPANENI MURALI MOHAN',0,34,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,81,'NALLAPANENI SAKUNTHALAMMA','IAX0796011',0,'NALLAPANENI JAYARAMA NAIDU',0,80,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,82,'E ROJA','FQQ2475556',0,'SRIHARI',0,35,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,83,'E CHANDU','FQQ2475564',0,'SRIHARI',0,36,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,84,'DEEPAK','IAX1385278',0,'MURALI MOHAN N',0,29,NULL,NULL,'','','House Number 1-30',1,1,'2023-12-15 00:58:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,85,'SRINIVAS N','FQQ2414209',0,'RAMACHANDRA NAIDU',0,51,NULL,NULL,'','','House Number 1-30A',1,1,'2023-12-15 00:58:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,86,'KRISHAN KISHOR N','FQQ2414217',0,'RAMACHANDRA NAIDU',0,48,NULL,NULL,'','','House Number 1-30A',1,1,'2023-12-15 00:58:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,87,'CHANDANA A','IAX0902353',0,'VENKATAPPA NAIDU A',0,33,NULL,NULL,'','','House Number 1-31',1,1,'2023-12-15 00:58:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,88,'MANASA P','IAX2068351',0,'CHANDRASEKHAR NAIDU P',0,23,NULL,NULL,'','','House Number 1-31',1,1,'2023-12-15 00:58:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,89,'CHENGALRAYULU','IAX2692598',0,'INARAYANASWAMI NAIDU',0,48,NULL,NULL,'','','House Number 1-32',1,1,'2023-12-15 00:58:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,90,'P.SULOCHANA','FQQ2474716',0,'CHENGALRAYULU',0,43,NULL,NULL,'','','House Number 1-32',1,1,'2023-12-15 00:58:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,91,'P. BHASKAR NAIDU','IAX2692606',0,'NARAYANASWAMY NAIDU',0,58,NULL,NULL,'','','House Number 1-32/1',1,1,'2023-12-15 00:58:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,92,'HEMAVATHI','IAX2692614',0,'BHASKAR NAIDU',0,56,NULL,NULL,'','','House Number 1-32/1',1,1,'2023-12-15 00:58:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,93,'GOPICHAND PALADUGU','IAX0956922',0,'BHASKAR NAIDU PALADUGU',0,34,NULL,NULL,'','','House Number 1-32/1',1,1,'2023-12-15 00:58:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,94,'PALADAGU BAKHTHAVACHALAM','IAX2692622',0,'NARAYANASWAMY NAIDU',0,63,NULL,NULL,'','','House Number 1-32/2',1,1,'2023-12-15 00:58:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,95,'RAJAMMA','IAX2692648',0,'MADHUSUDHUN NAIDU',0,73,NULL,NULL,'','','House Number 1-33',1,1,'2023-12-15 00:58:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,96,'RAVIKUMAR','IAX2692655',0,'MADHUSUDHUN NAIDU',0,60,NULL,NULL,'','','House Number 1-33',1,1,'2023-12-15 00:58:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,97,'VASHUDEVA NAIDU','IAX2692663',0,'MADHUSUDHUN NAIDU',0,57,NULL,NULL,'','','House Number 1-33',1,1,'2023-12-15 00:58:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,98,'UPPALAPATI PUSHAPALATHA','FQQ1361195',0,'VASUDEVA NAIDU',0,53,NULL,NULL,'','','House Number 1-33',1,1,'2023-12-15 00:58:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,99,'KUMAR RAJANAIDU','IAX2692671',0,'JAYARAMA NAIDU',0,59,NULL,NULL,'','','House Number 1-34',1,1,'2023-12-15 00:58:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,100,'YASHODAMMA','IAX2692689',0,'MUNIRATHNAM NAIDU',0,68,NULL,NULL,'','','House Number 1-35',1,1,'2023-12-15 00:58:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,101,'BALA KRISHNA K','IAX1343771',0,'JAGANNADHAM K',0,32,NULL,NULL,'','','House Number 1-35',1,1,'2023-12-15 00:58:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,102,'NAGRATNAMMA','IAX2692697',0,'JAYARAMA NAIDU',0,73,NULL,NULL,'','','House Number 1-36',1,1,'2023-12-15 00:58:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,103,'SANTHAMMA','IAX2692705',0,'VENKATAPPA NAIDU',0,57,NULL,NULL,'','','House Number 1-37',1,1,'2023-12-15 00:58:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,104,'A .RAJAMMA','FQQ2474724',0,'KRISHNAMA NAIDU',0,78,NULL,NULL,'','','House Number 1-37',1,1,'2023-12-15 00:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,105,'ARI MOUNIKA','IAX0902379',0,'ARI VENKATAPPA NAIDU',0,31,NULL,NULL,'','','House Number 1-37',1,1,'2023-12-15 00:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,106,'ENUGU THULASI','IAX0902346',0,'ENUGU RAMESH',0,43,NULL,NULL,'','','House Number 1-37',1,1,'2023-12-15 00:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,107,'JAGANNADHAM C','IAX1458620',0,'KRISHNAMA NAIDU o',0,53,NULL,NULL,'','','House Number 1-40',1,1,'2023-12-15 00:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,108,'Krishnama Naidu Chandra','IAX1897412',0,'Muneppa Naidu C',0,82,NULL,NULL,'','','House Number 1-40',1,1,'2023-12-15 00:58:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,109,'THANUJA P','IAX1774967',0,'VENKATESWARAPRASAD P',0,25,NULL,NULL,'','','House Number 1-44',1,1,'2023-12-15 00:58:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,110,'MANASA UNNAM','IAX2328771',0,'NAGARAJU U',0,23,NULL,NULL,'','','House Number 2-10',1,1,'2023-12-15 00:58:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,111,'Priyanka Chalicheemala','IAX3142049',0,'Jaya Prakash Paladugu',0,27,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:58:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,112,'VENKATAKRISHNA PALADUGU','IAX3126760',0,'P ARUNA KUMARI PALADUGU',0,21,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:58:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,113,'PALADUGU HARIKA','IAX1749100',0,'P KUMAR',0,27,NULL,NULL,'','','House Number 10-10',1,1,'2023-12-15 00:58:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,114,'Sajani konidala Konida','IAX2311678',0,'Sankariah naidu Konidala',0,59,NULL,NULL,'','','House Number 11',1,1,'2023-12-15 00:58:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,115,'Hymavathi konidala Konidala','IAX2311603',0,'Venkatappa naidu Paladugu',0,76,NULL,NULL,'','','House Number 11',1,1,'2023-12-15 00:58:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Female'),(0,386,116,'SUBBAMMA BNONTHA','IAX1054030',0,'VENKATAPPA BONTHA',0,88,NULL,NULL,'','','House Number 11-77/4',1,1,'2023-12-15 00:58:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','H','Female'),(0,386,117,'P LALAN KUMAR PALADUGU','IAX3138807',0,'P CHENGALRAYA NAIDU PALADUGU',0,20,NULL,NULL,'','','House Number C-34',1,1,'2023-12-15 00:58:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,118,'KONIDELA REVANTHKUMAR KONIDELA','IAX2995132',0,'KONIDELA KESAVULUNAIDU KESAVULUNAIDU',0,22,NULL,NULL,'','','House Number C-104',1,1,'2023-12-15 00:58:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','1-KAMMAPALLI','F','Male'),(0,386,119,'A THULASI','FQQ1360544',0,'LAKSHMIPATHI',0,41,NULL,NULL,'','','House Number 1-5',1,1,'2023-12-15 00:58:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,120,'A LAKSHMIPATHI','IAX0022079',0,'JAYRAM CHETTY',0,51,NULL,NULL,'','','House Number 1-5',1,1,'2023-12-15 00:58:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,121,'YASWANTH A','IAX1796168',0,'LAKSHMIPATHI A',0,25,NULL,NULL,'','','House Number 1-5',1,1,'2023-12-15 00:58:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,122,'Hema Chandra Pakala','IAX1896281',0,'Subramanyam pakala',0,23,NULL,NULL,'','','House Number 1-5',1,1,'2023-12-15 00:58:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,123,'AMUDALA BHASKAR SETTY','IAX2692242',0,'RAMAIAH SETTY',0,60,NULL,NULL,'','','House Number 1-8',1,1,'2023-12-15 00:58:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,124,'SUBBARATHNAMMA','IAX2692259',0,'BHASKAR CHETTY',0,55,NULL,NULL,'','','House Number 1-8',1,1,'2023-12-15 00:58:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,125,'AMUDALA KRISHANAMURTHY','IAX0286617',0,'A SUBRAMANYAM',0,38,NULL,NULL,'','','House Number 1-8',1,1,'2023-12-15 00:58:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,126,'LAKSHMI AAMUDAALA','IAX0988693',0,'KRISHNA MOORTHY AAMUDAALA',0,30,NULL,NULL,'','','House Number 1-8',1,1,'2023-12-15 00:58:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,127,'AMUDALA RAMACHADRAIAH','IAX2692267',0,'LAKSHMAIAH SETTY',0,65,NULL,NULL,'','','House Number 1-9',1,1,'2023-12-15 00:58:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,128,'SYAMALAMMA','IAX2692275',0,'RAMACHADRAIAH SETTY',0,60,NULL,NULL,'','','House Number 1-9',1,1,'2023-12-15 00:58:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,129,'KUMARA SWAMY','IAX2692283',0,'RAMACHADRAIAH',0,47,NULL,NULL,'','','House Number 1-9',1,1,'2023-12-15 00:58:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,130,'A .BUJJAMMA','FQQ2474658',0,'KUMARASWAMI',0,40,NULL,NULL,'','','House Number 1-9',1,1,'2023-12-15 00:58:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Female'),(0,386,131,'DIVYA KILARI','IAX2163624',0,'BHASKAR NAIDU KILARI',0,27,NULL,NULL,'','','House Number 1-50',1,1,'2023-12-15 00:58:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Female'),(0,386,132,'KESAVAKRISHNA GURRAM','IAX1342195',0,'CHANDRASEKHAR NAIDU GURRAM',0,29,NULL,NULL,'','','House Number 1-52',1,1,'2023-12-15 00:58:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,133,'POORNACHANDRA RAO GURRAM','IAX1458612',0,'CHANDRASEKHAR NAIDU GURRAM',0,30,NULL,NULL,'','','House Number 1-52',1,1,'2023-12-15 00:58:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,134,'V Neihitha Vuppalapati','IAX2086205',0,'V vasudeva naidu Vuppalapati',0,23,NULL,NULL,'','','House Number 1-64',1,1,'2023-12-15 00:58:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Female'),(0,386,135,'VENU GOPAL ANDRA','IAX2070498',0,'VENKATARAMAIAH ANDRA',0,50,NULL,NULL,'','','House Number 1-65',1,1,'2023-12-15 00:58:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,136,'MANJULA ANDRA','IAX2062529',0,'VENUGOPAL ANDRA',0,45,NULL,NULL,'','','House Number 1-65',1,1,'2023-12-15 00:58:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,137,'BHARATH KUMAR V','IAX1385260',0,'RAJENDRA REDDY V',0,32,NULL,NULL,'','','House Number 1-79',1,1,'2023-12-15 00:58:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,138,'SARASWATHAMMA TANIKONDA','IAX1157826',0,'CHINNABBA NAIDU T',0,76,NULL,NULL,'','','House Number 1-99',1,1,'2023-12-15 00:58:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,139,'GURRAMMA','IAX2692713',0,'DEVARAJULU NAIDU',0,63,NULL,NULL,'','','House Number 2-1',1,1,'2023-12-15 00:58:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,140,'PRABHAKARA NAIDU','IAX2692721',0,'DEVARAJULU NAIDU',0,55,NULL,NULL,'','','House Number :2-1',1,1,'2023-12-15 00:58:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,141,'RAVILLA SUBBARAMMA NAIDU','IAX2692739',0,'MUNASWAMI NAIDU',0,73,NULL,NULL,'','','House Number 2-1',1,1,'2023-12-15 00:58:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,142,'RAJENDERA NAIDU','IAX2692747',0,'CHENGAMA NAIDU',0,68,NULL,NULL,'','','House Number 2-2',1,1,'2023-12-15 00:58:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,143,'BHUSHANAMMA','IAX2692754',0,'RAJENDERA NAIDU',0,63,NULL,NULL,'','','House Number 2-2',1,1,'2023-12-15 00:58:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,144,'P.NARESH','FQQ1361443',0,'RAJENDRA NAIDU',0,38,NULL,NULL,'','','House Number 2-2',1,1,'2023-12-15 00:58:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,145,'NAGAVENI PALADUGU','IAX2164564',0,'NARESH PALADUGU',0,27,NULL,NULL,'','','House Number 2-2',1,1,'2023-12-15 00:58:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,146,'Ramesh Chandra','IAX1897685',0,'Jayarama Naidu C',0,52,NULL,NULL,'','','House Number 2-3',1,1,'2023-12-15 00:58:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,147,'Jaya raama Naidu Chandra','IAX1896208',0,'Munaswamy naidu C',0,84,NULL,NULL,'','','House Number 2-3',1,1,'2023-12-15 00:58:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,148,'jayanthi C','IAX1897602',0,'Ramesh C',0,41,NULL,NULL,'','','House Number :2-3',1,1,'2023-12-15 00:58:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,149,'MOUNIKA M','IAX2271351',0,'MUNEIAH KOMARALA',0,34,NULL,NULL,'','','House Number 2-3',1,1,'2023-12-15 00:58:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,150,'C CHINNAPAPA','FQQ1972926',0,'JAYARAMA NAIDU',0,66,NULL,NULL,'','','House Number 2-3',1,1,'2023-12-15 00:58:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,151,'C .PADMAMMA','FQQ1972918',0,'KRISHNAMA NAIDU',0,70,NULL,NULL,'','','House Number 2-4',1,1,'2023-12-15 00:58:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,152,'SWATHI','FQQ2474732',0,'JAGANNADHAM NAIDU',0,38,NULL,NULL,'','','House Number 2-4',1,1,'2023-12-15 00:58:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,153,'HAMSAVENI','IAX2692762',0,'KRISHNAMA NAIDU',0,73,NULL,NULL,'','','House Number 2-6',1,1,'2023-12-15 00:58:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,154,'PRAKASH NAIDU','IAX2692770',0,'RAMAMURTHY NAIDU',0,58,NULL,NULL,'','','House Number 2-6',1,1,'2023-12-15 00:58:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,155,'SARASWATHAMMA','IAX2692788',0,'PRAKASH NAIDU',0,55,NULL,NULL,'','','House Number 2-6',1,1,'2023-12-15 00:58:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,156,'PADMAMMA','IAX2692796',0,'RAMAMURTHY NAIDU',0,78,NULL,NULL,'','','House Number 2-6',1,1,'2023-12-15 00:58:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,157,'A NARESH','FQQ1360965',0,'PRAKASH NAIDU',0,38,NULL,NULL,'','','House Number 2-6',1,1,'2023-12-15 00:58:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,158,'SHARMILA ALLOORI','IAX0983065',0,'NARESH NAIDU ALLOORI',0,35,NULL,NULL,'','','House Number 2-6',1,1,'2023-12-15 00:58:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,159,'CHENGALRAYA NAIDU','IAX2692804',0,'MUNASWAMI NAIDU',0,58,NULL,NULL,'','','House Number 2-8',1,1,'2023-12-15 00:58:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,160,'BHASKAR NAIDU','IAX2692812',0,'MUNASWAMI NAIDU',0,58,NULL,NULL,'','','House Number :2-8',1,1,'2023-12-15 00:58:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,161,'PRAMEELA','IAX2692820',0,'BHASKAR NAIDU',0,53,NULL,NULL,'','','House Number 2-8',1,1,'2023-12-15 00:58:38','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,162,'RUKSHMINAMMA','IAX2692838',0,'CHENGALRAYA NAIDU',0,57,NULL,NULL,'','','House Number 2-8',1,1,'2023-12-15 00:58:38','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,163,'K. KESAVULU NAIDU','FQQ1972942',0,'MUNASWAMI NAIDU',0,55,NULL,NULL,'','','House Number :2-8',1,1,'2023-12-15 00:58:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,164,'K.LALITHA','FQQ1972850',0,'KESAVULUNAIDU',0,48,NULL,NULL,'','','House Number 2-8',1,1,'2023-12-15 00:58:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,165,'PRABHAKAR','IAX2692861',0,'PARTHASARATHI NAIDU',0,57,NULL,NULL,'','','House Number 2-9',1,1,'2023-12-15 00:58:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,166,'SUMALATHA','FQQ2474740',0,'PRABHAKAR',0,48,NULL,NULL,'','','House Number 2-9',1,1,'2023-12-15 00:58:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,167,'NAGARAJU','IAX2692879',0,'VEERASWAMI NAIDU',0,56,NULL,NULL,'','','House Number 2-10',1,1,'2023-12-15 00:58:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,168,'JAMUNA UNNAM','IAX1717768',0,'NAGARAJU UNNAM',0,45,NULL,NULL,'','','House Number 2-10',1,1,'2023-12-15 00:58:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,169,'GURRAM JAYAMMA','IAX0286823',0,'G MUNIKANNAIAH NAIDU',0,86,NULL,NULL,'','','House Number :2-11',1,1,'2023-12-15 00:58:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,170,'CHANDERSEKHAR NAIDU','IAX2692887',0,'MUNIKANNAIAH NAIDU',0,59,NULL,NULL,'','','House Number 2-11',1,1,'2023-12-15 00:58:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,171,'VARALAKSHMI','IAX2692895',0,'CHANDERSEKHAR NAIDU',0,53,NULL,NULL,'','','House Number 2-11',1,1,'2023-12-15 00:58:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,172,'GURRAM MUNIKANNAIAH NAIDU','IAX0286591',0,'G CHENGAM NAIDU',0,90,NULL,NULL,'','','House Number 2-11',1,1,'2023-12-15 00:58:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,173,'ILLINENI VIJAYA','IAX2692903',0,'MUNIKANNAIAH NAIDU',0,61,NULL,NULL,'','','House Number 2-12',1,1,'2023-12-15 00:58:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,174,'NEELAVATHI M','IAX1895606',0,'UDAY KUMAR M',0,28,NULL,NULL,'','','House Number 2-32',1,1,'2023-12-15 00:58:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,175,'Sai prathap Karatapu','IAX2135556',0,'Madhusudhan Katatapu',0,25,NULL,NULL,'','','House Number 2-42',1,1,'2023-12-15 00:58:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,176,'SUDHAKARA NAIDU','IAX2692911',0,'SUBBARAMMA NAIDU',0,58,NULL,NULL,'','','House Number 3-1',1,1,'2023-12-15 00:58:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,177,'AMARAVATHI','IAX2692929',0,'SUDHAKAR NAIDU',0,53,NULL,NULL,'','','House Number 3-1',1,1,'2023-12-15 00:58:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,178,'GURRAM GOWTHAM','IAX0902387',0,'GURRAM SUDHAKAR',0,31,NULL,NULL,'','','House Number :3-1',1,1,'2023-12-15 00:58:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,179,'RAMACHANDER NAIDU','IAX2692937',0,'MUNASWAMI NAIDU',0,73,NULL,NULL,'','','House Number 3-3',1,1,'2023-12-15 00:58:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,180,'JAYALAKSHMI','IAX2692945',0,'RAMACHANDER NAIDU',0,63,NULL,NULL,'','','House Number 3-3',1,1,'2023-12-15 00:58:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,181,'L DEVARAJULU NAIDU','IAX0022095',0,'KRISHNAMA NAIDU',0,63,NULL,NULL,'','','House Number :3-3',1,1,'2023-12-15 00:58:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,182,'L VANEE','IAX0022111',0,'DEVARAJULU NAIDU',0,58,NULL,NULL,'','','House Number 3-3',1,1,'2023-12-15 00:58:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,183,'G MANJULA NAIDU','IAX0022145',0,'VIJAYA KRISHNAN',0,48,NULL,NULL,'','','House Number 3-3',1,1,'2023-12-15 00:58:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,184,'SURESH','IAX2692960',0,'RAMMA NAIDU',0,57,NULL,NULL,'','','House Number 3-4',1,1,'2023-12-15 00:58:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,185,'VANI','IAX2692978',0,'SURESH',0,53,NULL,NULL,'','','House Number 3-4',1,1,'2023-12-15 00:58:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,186,'PALADAGU VANAJAMMA','IAX2692986',0,'KRISHNAMA NAIDU',0,63,NULL,NULL,'','','House Number 3-4',1,1,'2023-12-15 00:58:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,187,'SUSHMA PALADUGU','IAX0988677',0,'SURESH BABU P',0,30,NULL,NULL,'','','House Number 3-4',1,1,'2023-12-15 00:58:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Female'),(0,386,188,'SAI CHARAN PALADAGU','IAX1548256',0,'SURESH BABU PALADAGU',0,28,NULL,NULL,'','','House Number 3-4',1,1,'2023-12-15 00:58:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,189,'PALADUGU GNANA PRASAD CHOWDARY','FQQ1972900',0,'KRISHNAMANAIDU',0,46,NULL,NULL,'','','House Number 3-4A',1,1,'2023-12-15 00:58:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','M','Male'),(0,386,190,'P.TIRUMLAPPA CHAUDARI','FQQ2474757',0,'KRISHNAMA NAIDU',0,48,NULL,NULL,'','','House Number 3-4A',1,1,'2023-12-15 00:58:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,191,'CHEMBETI MURALIKRISHNA','IAX2692994',0,'SEETHARAMAIAH',0,55,NULL,NULL,'','','House Number 3-5',1,1,'2023-12-15 00:58:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,192,'RAMADAEVI','IAX2693000',0,'PURUSHOTHAM',0,48,NULL,NULL,'','','House Number 3-5',1,1,'2023-12-15 00:58:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,193,'C SUKANYA','FQQ2475572',0,'MURALI MOHAN',0,51,NULL,NULL,'','','House Number 3-5',1,1,'2023-12-15 00:58:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,194,'SRIKANTH S','IAX2114940',0,'PURUSHOTHAM S',0,26,NULL,NULL,'','','House Number 3-5',1,1,'2023-12-15 00:58:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,195,'PURUSHOTHAM S','IAX2114957',0,'MADHAVAIAH S',0,52,NULL,NULL,'','','House Number 3-5',1,1,'2023-12-15 00:58:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,196,'Bhavana Savali','IAX1947142',0,'Ramadevi Savali',0,23,NULL,NULL,'','','House Number 3-5',1,1,'2023-12-15 00:58:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','M','Female'),(0,386,197,'VENKATESWARA PRASAD','IAX2693018',0,'BAKHTHAVACHALAM NAIDU',0,56,NULL,NULL,'','','House Number 3-8',1,1,'2023-12-15 00:58:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,198,'P.SUMATHI','FQQ1361260',0,'VENKATESWARA PRASAAD',0,48,NULL,NULL,'','','House Number 3-8',1,1,'2023-12-15 00:58:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,199,'SHUBHADRAMMA','IAX2693026',0,'SANKARA NAIDU',0,73,NULL,NULL,'','','House Number 3-9',1,1,'2023-12-15 00:58:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,200,'MURALI','IAX2693042',0,'KRISHNAM NAIDU',0,56,NULL,NULL,'','','House Number 3-9',1,1,'2023-12-15 00:58:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,201,'M.VEENA','FQQ1361013',0,'M .MURALI',0,48,NULL,NULL,'','','House Number 3-9',1,1,'2023-12-15 00:58:50','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,202,'KUNDAWARAM SUBRAMANYAM','IAX2693059',0,'CHENGALRAYACHARI',0,58,NULL,NULL,'','','House Number : 3-10',1,1,'2023-12-15 00:58:50','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,203,'SWARNAKUMARI','IAX2693067',0,'SUBRAMANYAM',0,53,NULL,NULL,'','','House Number 3-10',1,1,'2023-12-15 00:58:50','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,204,'DHANALAKSHMI','IAX2693075',0,'SUBRAMANYAM',0,48,NULL,NULL,'','','House Number 3-10',1,1,'2023-12-15 00:58:50','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,205,'SHANMUGAM K','IAX1336354',0,'SUBRAMANYAM K',0,30,NULL,NULL,'','','House Number : 3-10',1,1,'2023-12-15 00:58:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,206,'SUJANA CHANDRA','IAX1458588',0,'PALADUGU GNANA PRASAD CHOWDARY',0,40,NULL,NULL,'','','House Number 3-10A',1,1,'2023-12-15 00:58:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,207,'KAMALAMMA','IAX2693083',0,'VENUGOPALACHARI',0,63,NULL,NULL,'','','House Number 3-12',1,1,'2023-12-15 00:58:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,208,'LEELAVATHI','IAX2693091',0,'CHANDRACHARI',0,53,NULL,NULL,'','','House Number 3-12',1,1,'2023-12-15 00:58:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,209,'SREEMANTHULA BHANU PRAKASH','IAX0902395',0,'SREEMANTHULA CHANDRAACHARI',0,33,NULL,NULL,'','','House Number 3-12',1,1,'2023-12-15 00:58:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,210,'SREEMANTHULA THEJA','IAX0902361',0,'SREEMANTHULA CHANDRA ACHARI',0,32,NULL,NULL,'','','House Number 3-12',1,1,'2023-12-15 00:58:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,211,'KRISHNAMA NAIDU','IAX2693117',0,'BALARAMA NAIDU',0,68,NULL,NULL,'','','House Number 3-14',1,1,'2023-12-15 00:58:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,212,'HAMALATHA','IAX2693125',0,'KRISHNAMA NAIDU',0,58,NULL,NULL,'','','House Number 3-14',1,1,'2023-12-15 00:58:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,213,'A .RAVI','FQQ1972520',0,'BALARAMA NAIDU',0,56,NULL,NULL,'','','House Number 3-14',1,1,'2023-12-15 00:58:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,214,'A SAMPOORENA','FQQ1972678',0,'RAVI NAIDU',0,48,NULL,NULL,'','','House Number 3-14',1,1,'2023-12-15 00:58:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,215,'A DILEEP','IAX0762047',0,'A KRISHNAMA NAIDU',0,34,NULL,NULL,'','','House Number 3-14',1,1,'2023-12-15 00:58:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,216,'CHARAN TEJA A','IAX1796150',0,'RAVI A',0,26,NULL,NULL,'','','House Number 3-14',1,1,'2023-12-15 00:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,217,'BHARATH E','IAX1218891',0,'KUMARASWAMY E',0,29,NULL,NULL,'','','House Number 3-31 CHALLAVARIPALLI VILLAGE',1,1,'2023-12-15 00:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,218,'JYOTHI E','IAX1218909',0,'KUMARASWAMY E',0,49,NULL,NULL,'','','House Number 3-31 CHALLAVARIPALLI VILLAGE',1,1,'2023-12-15 00:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,219,'SUNITHA K','IAX1873850',0,'VENKATAMUNI K',0,40,NULL,NULL,'','','House Number 3-32',1,1,'2023-12-15 00:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,220,'SANTHISREE P','IAX1873843',0,'DORASWAMY P',0,23,NULL,NULL,'','','House Number 3-33',1,1,'2023-12-15 00:58:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Female'),(0,386,221,'BHARGAV K','IAX1774926',0,'MUNIRATHNAM K',0,33,NULL,NULL,'','','House Number 3-521',1,1,'2023-12-15 00:58:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,222,'GURRAM MUNIRATHNAM NAIDU','IAX2693133',0,'VENKATAPPANAIDU',0,73,NULL,NULL,'','','House Number 4-1',1,1,'2023-12-15 00:58:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,223,'NIRMALA','IAX2693141',0,'MUNIRATHNAM NAIDU',0,63,NULL,NULL,'','','House Number 4-1',1,1,'2023-12-15 00:58:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,224,'G. UDYAKUMAR','FQQ1972512',0,'MUNIRATHNAM NAIDU',0,45,NULL,NULL,'','','House Number 4-1',1,1,'2023-12-15 00:58:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','F','Male'),(0,386,225,'NAAGAMANI GURRAM','IAX0983115',0,'UDAYA KUMAAR GURRAM',0,36,NULL,NULL,'','','House Number 4-1',1,1,'2023-12-15 00:58:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','2-KAMMAPALLI','H','Female'),(0,386,226,'MOURYA PALADUGU','IAX3143070',0,'SUBRAMANYAM PALADUGU',0,20,NULL,NULL,'','','House Number 1-19',1,1,'2023-12-15 00:58:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,227,'HARSHITHA PALADUGU','IAX3141199',0,'SUBRAMANYAM PALADUGU',0,23,NULL,NULL,'','','House Number 1-19',1,1,'2023-12-15 00:58:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,228,'HARSHITHA CHANDRA','IAX3145497',0,'SWATHI CHANDRA',0,20,NULL,NULL,'','','House Number 1-40',1,1,'2023-12-15 00:58:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','M','Female'),(0,386,229,'GOPINATH ANDRA','IAX3158417',0,'VENU GOPAL ANDRA',0,19,NULL,NULL,'','','House Number 1-65',1,1,'2023-12-15 00:58:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,230,'JAYANTH ANDRA','IAX3146719',0,'VENUGOPAL ANDRA',0,21,NULL,NULL,'','','House Number 1-65',1,1,'2023-12-15 00:58:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,231,'VARUN KUMAR CHANDRA','IAX3144631',0,'SWATHI CHANDRA',0,21,NULL,NULL,'','','House Number 2-4',1,1,'2023-12-15 00:58:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','M','Male'),(0,386,232,'VEDVATHAMMA','IAX2693158',0,'CHENGAMA NAIDU',0,70,NULL,NULL,'','','House Number 4-2',1,1,'2023-12-15 00:58:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,233,'JAYACHANDRA NAIDU','IAX2693166',0,'CHENGAMA NAIDU',0,58,NULL,NULL,'','','House Number 4-2',1,1,'2023-12-15 00:58:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,234,'GUNAVATHI','IAX2693174',0,'JAYACHANDRA NAIDU',0,53,NULL,NULL,'','','House Number 4-2',1,1,'2023-12-15 00:58:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,235,'LAKSHMIPATHI','FQQ1361427',0,'JAYACHANDRA NAIDU',0,38,NULL,NULL,'','','House Number 4-2',1,1,'2023-12-15 00:58:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,236,'SUNEEL KUMAR C','FQQ2414233',0,'JAYACHANDRA NAIDU',0,37,NULL,NULL,'','','House Number 4-2',1,1,'2023-12-15 00:58:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,237,'MUNIRATHNAM NAIDU','IAX2693182',0,'SREENIVASULU NAIDU',0,78,NULL,NULL,'','','House Number 4-3',1,1,'2023-12-15 00:58:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,238,'LAKSHMIDEVI','IAX2693190',0,'SREENIVASULU NAIDU',0,61,NULL,NULL,'','','House Number 4-3',1,1,'2023-12-15 00:58:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,239,'SRIKANTH MEDARA MITTA','FQQ1972892',0,'VENKATRAMA NAIDU',0,40,NULL,NULL,'','','House Number 4-3',1,1,'2023-12-15 00:59:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,240,'SUDHAKAR','IAX2693208',0,'RAMANJULU NAIDU',0,55,NULL,NULL,'','','House Number :4-4',1,1,'2023-12-15 00:59:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,241,'YENUGU SUBBRAMA NAIDU','IAX2693216',0,'ANKAMA NAIDU',0,63,NULL,NULL,'','','House Number 4-5',1,1,'2023-12-15 00:59:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,242,'SUBBARAMA NAIDU','FQQ2474765',0,'MUNASWAMINAIDU',0,53,NULL,NULL,'','','House Number 4-5',1,1,'2023-12-15 00:59:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,243,'E USHA','FQQ1361211',0,'SUBBARAMMANAIDU',0,48,NULL,NULL,'','','House Number 4-5',1,1,'2023-12-15 00:59:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,244,'MEDARAMITTA MUNIRATHNAM NAIDU','IAX2693224',0,'MUNASWAMI NAIDU',0,71,NULL,NULL,'','','House Number 4-6',1,1,'2023-12-15 00:59:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,245,'T GIRI NAIDU','IAX0022178',0,'INARAYANASWAMI NAIDU',0,55,NULL,NULL,'','','House Number 4-6',1,1,'2023-12-15 00:59:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,246,'T AURUNA','IAX0022301',0,'GIRI NAIDU',0,45,NULL,NULL,'','','House Number 4-6',1,1,'2023-12-15 00:59:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,247,'SUMATHI','IAX2693257',0,'BHASKAR NAIDU',0,61,NULL,NULL,'','','House Number 4-8',1,1,'2023-12-15 00:59:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,248,'C MANGAMMA','IAX0271122',0,'KRISHNAMA NAIDU',0,68,NULL,NULL,'','','House Number 4-8A',1,1,'2023-12-15 00:59:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,249,'C KESAVULU NAIDU','IAX0022335',0,'KRISHNAMA NAIDU',0,51,NULL,NULL,'','','House Number 4-8A',1,1,'2023-12-15 00:59:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,250,'C HARIPRIYA','IAX0271130',0,'KESAVULU NAIDU',0,45,NULL,NULL,'','','House Number 4-8A',1,1,'2023-12-15 00:59:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,251,'RAJAMMA','IAX2693265',0,'VENKATAPPA NAIDU',0,68,NULL,NULL,'','','House Number 4-9',1,1,'2023-12-15 00:59:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,252,'BOLLIPALLI MOHAN KUMAR','FQQ1361112',0,'VENKATAPPA NAIDU',0,41,NULL,NULL,'','','House Number 4-9',1,1,'2023-12-15 00:59:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,253,'RAVILA GEETHA','FQQ1360536',0,'R PRABHAKAR NAIDU',0,45,NULL,NULL,'','','House Number 4-9',1,1,'2023-12-15 00:59:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,254,'ARI MUNIRATHNAM','IAX2693273',0,'INARAYANASWAMI NAIDU',0,69,NULL,NULL,'','','House Number 4-10',1,1,'2023-12-15 00:59:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,255,'MUNILAKSHMI','IAX2693281',0,'MUNIRATHNAM',0,65,NULL,NULL,'','','House Number :4-10',1,1,'2023-12-15 00:59:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,256,'A DINESH','IAX0761973',0,'A MUNIRATHNAM NAIDU',0,35,NULL,NULL,'','','House Number 4-10',1,1,'2023-12-15 00:59:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,257,'A.CHENGALRAYA NAIDU','IAX2693299',0,'NARAPPA NAIDU',0,76,NULL,NULL,'','','House Number 4-10/A',1,1,'2023-12-15 00:59:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,258,'SAROJAMMA','IAX2693307',0,'CHENGALRAYA NAIDU',0,68,NULL,NULL,'','','House Number 4-10/A',1,1,'2023-12-15 00:59:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,259,'DEVANDRA ARI','FQQ1972603',0,'CHENGALRAYA NAIDU',0,39,NULL,NULL,'','','House Number 4-10/A',1,1,'2023-12-15 00:59:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,260,'GOPAL NAIDU','IAX2693315',0,'VENKATAPPA NAIDU',0,63,NULL,NULL,'','','House Number 4-12',1,1,'2023-12-15 00:59:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,261,'GURRAM VIJAYA','IAX0902338',0,'GURRAM GOPAL NAIDU',0,52,NULL,NULL,'','','House Number 4-12',1,1,'2023-12-15 00:59:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,262,'NAVANITHAMMA','IAX2693323',0,'ANANTASHYNAM NAIDU',0,78,NULL,NULL,'','','House Number 4-13',1,1,'2023-12-15 00:59:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,263,'MOHAN NAIDU','IAX2693331',0,'ANANTHASYNAM NAIDU',0,56,NULL,NULL,'','','House Number 4-13',1,1,'2023-12-15 00:59:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,264,'MANOHARA NAIDU','IAX2693349',0,'ANANTASHYNAM NAIDU',0,49,NULL,NULL,'','','House Number 4-13',1,1,'2023-12-15 00:59:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,265,'P .ARUNAKUMARI','FQQ1972959',0,'MOHAN NAIDU',0,48,NULL,NULL,'','','House Number 4-13',1,1,'2023-12-15 00:59:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,266,'K KESAVULU NAIDU','FQQ2475655',0,'CHENGAMA NAIDU',0,48,NULL,NULL,'','','House Number 4-13',1,1,'2023-12-15 00:59:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,267,'BUJJAMMA K','FQQ2414258',0,'KESAVULU NAIDU',0,51,NULL,NULL,'','','House Number 4-13A',1,1,'2023-12-15 00:59:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,268,'JAYANTHI','IAX2693356',0,'SURIBABU',0,63,NULL,NULL,'','','House Number 4-14',1,1,'2023-12-15 00:59:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,269,'DAMODHARA NAIDU','IAX2693364',0,'DESHI NAIDU',0,60,NULL,NULL,'','','House Number 4-15',1,1,'2023-12-15 00:59:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,270,'SWATHI RAVELLA','IAX0995508',0,'DAMODARAM R',0,33,NULL,NULL,'','','House Number :4-15',1,1,'2023-12-15 00:59:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,271,'BOLLIPALLI MUNEMMA','FQQ2474773',0,'DHARMAIAH NAIDU',0,73,NULL,NULL,'','','House Number 4-17',1,1,'2023-12-15 00:59:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,272,'G.CHANDERSEKHAR NAIDU','FQQ1972983',0,'MUNASWAMI NAIDU',0,78,NULL,NULL,'','','House Number 4-18',1,1,'2023-12-15 00:59:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,273,'G.GAUTHAM','FQQ2474781',0,'CHANDERSEKHAR NAIDU',0,41,NULL,NULL,'','','House Number 4-18',1,1,'2023-12-15 00:59:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,274,'INEERAJAMUNIKUMARI PUJARI','IAX1905447',0,'MUNASWAMY PUJARI',0,26,NULL,NULL,'','','House Number 4-18',1,1,'2023-12-15 00:59:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,275,'PAVANKUMAR PUJARI','IAX1910579',0,'MUNASWAMY PUJARI',0,25,NULL,NULL,'','','House Number 4-18',1,1,'2023-12-15 00:59:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,276,'SAMPOORNAMMA','IAX2693380',0,'SREENIVASULU NAIDU',0,69,NULL,NULL,'','','House Number 4-19',1,1,'2023-12-15 00:59:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,277,'MADHUSUDHANA NAIDU','FQQ2474799',0,'SREENIVASULUNAIDU',0,55,NULL,NULL,'','','House Number 4-19',1,1,'2023-12-15 00:59:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,278,'G.INDRANI','FQQ2474807',0,'CHANDRASEKHAR',0,62,NULL,NULL,'','','House Number 4-19',1,1,'2023-12-15 00:59:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,279,'GURRAM RAJENDERA NAIDU','IAX2693398',0,'MUNASWAMI NAIDU',0,73,NULL,NULL,'','','House Number 4-21',1,1,'2023-12-15 00:59:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,280,'RAMADAEVI','IAX2693406',0,'RAJENDRA NAIDU',0,58,NULL,NULL,'','','House Number 4-21',1,1,'2023-12-15 00:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,281,'G. BHARATH KUMAR','FQQ1360973',0,'RAJENDERA NAIDU',0,40,NULL,NULL,'','','House Number 4-21',1,1,'2023-12-15 00:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,282,'G. PAVAN KUMAR','FQQ1361708',0,'RAJENDERA NAIDU',0,41,NULL,NULL,'','','House Number 4-21',1,1,'2023-12-15 00:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,283,'LOHITHA GURRAM','IAX0983040',0,'PAVAN KUMAR GURRAM',0,32,NULL,NULL,'','','House Number 4-21',1,1,'2023-12-15 00:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,284,'POORNIMA GURRAM','IAX0983107',0,'BHARATH KUMAAR GURRAM',0,38,NULL,NULL,'','','House Number 4-21',1,1,'2023-12-15 00:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,285,'SHREERAMNENI BATHEMMA','IAX2693414',0,'MUNASWAMICHOWDRI',0,90,NULL,NULL,'','','House Number 4-22',1,1,'2023-12-15 00:59:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,286,'NEELAKANTACHAUDARI','IAX2693422',0,'MUNASWAMICHOWDRI',0,56,NULL,NULL,'','','House Number 4-22',1,1,'2023-12-15 00:59:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,287,'SHREERAMNENI AURUNA','IAX2693430',0,'NEELAKANTACHAUDARI',0,50,NULL,NULL,'','','House Number 4-22',1,1,'2023-12-15 00:59:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,288,'MADHURI','FQQ2414266',0,'NEELKANTHA CHOWDARI S',0,38,NULL,NULL,'','','House Number 4-22',1,1,'2023-12-15 00:59:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,289,'C.S.SUJATHA','FQQ2474815',0,'RAMASWAMI',0,68,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,290,'G.RAJENDERA NAIDU','FQQ2474823',0,'BUDDAMA NAIDU',0,71,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,291,'G.LAKSHMI RAJYAM','FQQ2474831',0,'RAJENDERA NAIDU',0,63,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,292,'G.KARTHIK','FQQ2474849',0,'RAJENDERA NAIDU',0,40,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,293,'S.SANDEEP','FQQ2474856',0,'RAMASWAMI',0,40,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,294,'A .VENU','FQQ2474864',0,'CHANDRASEKHAR CHOWDARI',0,48,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,295,'BHARATHI ELLANKI','FQQ2474922',0,'VENKATADRI NAIDU',0,69,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,296,'A .RADHA BAAI','FQQ2474948',0,'CHANDRASEKHAR CHOWDARI',0,76,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,297,'CHANDRASEKHAR CHOWDARI','FQQ2474955',0,'MUNASWAMY NAIDU',0,77,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,298,'A RATNAMMA','IAX0022392',0,'NAGABHUSHANAM NAIDU',0,67,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,299,'SRAVAN KUMAR ELLANKI','IAX0022533',0,'VENKATADRI NAIDU',0,41,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,300,'A.JAYALAKSHMI','FQQ2474872',0,'VENU',0,43,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,301,'K .JANSHI','FQQ2474880',0,'RAMANA',0,48,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,302,'K .VIKRAM','FQQ2474898',0,'RAMANA',0,38,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,303,'A CHANDRA CHOWDRI','IAX0022616',0,'NAGABHUSHANAM NAIDU',0,39,NULL,NULL,'','','House Number 4-23',1,1,'2023-12-15 00:59:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,304,'JANARDANA NAIDU','IAX2693455',0,'MOHANAKRISHNAM NAIDU',0,53,NULL,NULL,'','','House Number 4-25',1,1,'2023-12-15 00:59:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,305,'SHYAMALA','IAX2693463',0,'JANARDANA NAIDU',0,43,NULL,NULL,'','','House Number 4-25',1,1,'2023-12-15 00:59:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,306,'DIVYA SREE M','IAX1336297',0,'JANARDHAN NAIDU M',0,30,NULL,NULL,'','','House Number 4-25',1,1,'2023-12-15 00:59:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,307,'DEEPTH MEDARAMITTA','IAX1717784',0,'JANARDHAN NAIDU MEDARA MITTA',0,28,NULL,NULL,'','','House Number 4-25',1,1,'2023-12-15 00:59:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,308,'K VENKATA RAMANA','IAX0022426',0,'LAKSHMANA RAO',0,58,NULL,NULL,'','','House Number 4-27',1,1,'2023-12-15 00:59:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,309,'KUSUMA K','IAX1343185',0,'CHENGALRAYULU K',0,31,NULL,NULL,'','','House Number 4-31',1,1,'2023-12-15 00:59:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,310,'MUNIRATHNAM NAIDU','IAX2693489',0,'SREENIVASULU NAIDU',0,61,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,311,'BHARATHI','IAX2693497',0,'MUNRATNAM NAIDU',0,57,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,312,'P .JAYAPRAKASH','FQQ1361229',0,'MUNIRATHNAM NAIDU',0,38,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,313,'BHANUPRAKASH','FQQ2474963',0,'MUNIRATHNAM NAIDU',0,36,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,314,'KRISHNAMA NAIDU P','FQQ2414274',0,'SREENIVASULU NAIDU',0,58,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,315,'P THULASI','FQQ2414282',0,'KRISHNAMA NAIDU P',0,55,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,316,'CHARAN TEJ PALADUGU','IAX1385245',0,'KRISHNAMANAIDU PALADUGU',0,29,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,317,'MOHAN KRISHNA P','IAX2113611',0,'SIVAIAH NAIDU P',0,25,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,318,'VAMSI KRISHNA P','IAX2113603',0,'THULASAMMA P',0,27,NULL,NULL,'','','House Number 5-1',1,1,'2023-12-15 00:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,319,'CHARITHA PALADUGU','IAX3142346',0,'GIRI PALADUGU',0,22,NULL,NULL,'','','House Number 5-4',1,1,'2023-12-15 00:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Female'),(0,386,320,'ARYAMALAMMA','IAX2693653',0,'SHIVARAMA REDDY',0,83,NULL,NULL,'','','House Number 5-10',1,1,'2023-12-15 00:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,321,'SHAVAALI PURUSHOTHAM CHETTY','IAX2693661',0,'GURAPPA SETTY',0,68,NULL,NULL,'','','House Number 5-11',1,1,'2023-12-15 00:59:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,322,'S.DINAKAR','IAX0200212',0,'S.PURUSHOTHAM',0,39,NULL,NULL,'','','House Number 5-11',1,1,'2023-12-15 00:59:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,323,'VIMALAMMA SAVALI','IAX1861574',0,'DINAKAR SAVALI',0,34,NULL,NULL,'','','House Number 5-11',1,1,'2023-12-15 00:59:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,324,'SHANTAMMA','IAX2693679',0,'MADHAB NAIDU',0,73,NULL,NULL,'','','House Number 5-12',1,1,'2023-12-15 00:59:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,325,'MEDHARA MITTA RAVI KUMAR','IAX0286989',0,'M MADHAB NAIDU',0,48,NULL,NULL,'','','House Number 5-12',1,1,'2023-12-15 00:59:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,326,'MEDHARA MITTA SUMATHI','IAX0286922',0,'M MUNSWAMI NAIDU',0,60,NULL,NULL,'','','House Number 5-12',1,1,'2023-12-15 00:59:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,327,'RAJESWARI','IAX2693703',0,'VARALU NAIDU',0,68,NULL,NULL,'','','House Number 5-14',1,1,'2023-12-15 00:59:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,328,'CHANDRABABU','IAX2693711',0,'VARALU NAIDU',0,48,NULL,NULL,'','','House Number 5-14',1,1,'2023-12-15 00:59:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,329,'JEEVITHA NOOTHALAPAATI','IAX0983131',0,'CHANDRA BAABU NAIDU NOOTHALAPAATI',0,36,NULL,NULL,'','','House Number 5-14',1,1,'2023-12-15 00:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,330,'C.MARIYAPPAN','FQQ1360460',0,'CHINNASWAMI',0,58,NULL,NULL,'','','House Number 5-15',1,1,'2023-12-15 00:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,331,'SARASWATI','FQQ1360445',0,'MARIYAPPAN',0,53,NULL,NULL,'','','House Number 5-15',1,1,'2023-12-15 00:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,332,'ARUNA KUMAR M','FQQ2414340',0,'MARIYAPPAN',0,38,NULL,NULL,'','','House Number 5-15',1,1,'2023-12-15 00:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,333,'AANANDA KUMAAR MANTHRIVADU','IAX0983172',0,'MAARIYAPPAN MANTHRIVADU',0,32,NULL,NULL,'','','House Number 5-15',1,1,'2023-12-15 00:59:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male'),(0,386,334,'THILAKA JYOTHI M','IAX1336362',0,'MARIYAPPAN M',0,31,NULL,NULL,'','','House Number 5-15',1,1,'2023-12-15 00:59:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,335,'SALEEMA BEE','IAX2693729',0,'LALUSAHEB',0,73,NULL,NULL,'','','House Number 5-16',1,1,'2023-12-15 00:59:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','H','Female'),(0,386,336,'BASHIRU','IAX2693737',0,'LALUSAHEB',0,47,NULL,NULL,'','','House Number 5-16',1,1,'2023-12-15 00:59:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0,0,0,0,0,0,'',0,0,NULL,NULL,NULL,NULL,'KAMMAPALLI','3-KAMMAPALLI','F','Male');
/*!40000 ALTER TABLE `voters_prep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'u276789778_polling_survey'
--
/*!50003 DROP FUNCTION IF EXISTS `getuuid_v4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` FUNCTION `getuuid_v4`() RETURNS char(36) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
BEGIN
    RETURN LOWER(CONCAT(
            HEX(RANDOM_BYTES(4)),
            '-', HEX(RANDOM_BYTES(2)),
            '-4', SUBSTR(HEX(RANDOM_BYTES(2)), 2, 3),
            '-', HEX(FLOOR(ASCII(RANDOM_BYTES(1)) / 64) + 8), SUBSTR(HEX(RANDOM_BYTES(2)), 2, 3),
            '-', hex(RANDOM_BYTES(6))
        ));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetdataTest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetdataTest`(IN p_voter_id INT)
BEGIN
    SELECT *
    FROM voters
    WHERE voter_pk = p_voter_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTicketHistoryById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetTicketHistoryById`(
	IN p_voterId INT,
    IN p_ticketId INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;
    
    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'ticket_history_pk', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    
    SET @SqlQuery = CONCAT(
        'WITH FilteredData AS (
            select th.*, v.voter_id, v.voter_pk, v.voter_name, u.user_pk u_user_pk,u.username from ticket_history th
			left join ticket_master tm On th.ticket_master_pk = tm.ticket_master_pk
			Left join voters v On tm.voter_pk = v.voter_pk
			left join users u ON th.user_pk = u.user_pk  
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 ',
		IF(p_ticketId IS NOT NULL, CONCAT(' AND th.ticket_master_pk = ',p_ticketId), ''),
		IF(p_voterId IS NOT NULL, CONCAT(' AND tm.voter_pk = ',p_voterId), ''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count
        FROM FilteredData
        ORDER BY ', @p_sort_column, ' ', @p_sort_dir, '
        LIMIT ?, ?'
    );
	
    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTicketsList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetTicketsList`(
	IN p_DistId INT,
    IN p_ConsId INT,
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN p_VillNo INT,
    IN p_Gender INT,
	IN p_ReligionId INT,
    IN p_CasteId INT,
    IN p_Disability INT,
    IN p_GovtEmployee INT,
    IN p_age_min INT,
    IN p_age_max INT,
	IN p_status_id INT,
    IN p_navarathnalu_id INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;
    
    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    
    SET @SqlQuery = CONCAT(
        'WITH FilteredData AS (
            select 
            tm.*, v.voter_id, v.voter_pk v_voter_pk, 
            v.voter_name, u.user_pk,u.username,
            na.navaratnalu_name,
            v.phone_no
            from ticket_master tm
			Left join voters v On tm.voter_pk = v.voter_pk
			left join users u ON v.volunteer_id = u.user_pk
            left join navaratnalu na ON na.navaratnalu_pk = tm.navaratnalu_id
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 ',
		IF(p_DistId IS NOT NULL, CONCAT(' AND v.district_id = ',p_DistId), ''),
		IF(p_ConsId IS NOT NULL, CONCAT(' AND v.consistency_id = ',p_ConsId), ''),
        IF(p_MandId IS NOT NULL, CONCAT(' AND v.mandal_id = ',p_MandId), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND v.division_id = ',p_DivId), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND v.sachivalayam_id = ',p_SachiId), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND v.part_no = ',p_PartNo), ''),
        IF(p_VillNo IS NOT NULL, CONCAT(' AND v.village_id = ',p_VillNo), ''),
        IF(p_Gender IS NOT NULL, CONCAT(' AND v.gender = ', p_Gender), ''),
        IF(p_ReligionId IS NOT NULL, CONCAT(' AND v.religion_id = ', p_ReligionId), ''),
        IF(p_CasteId IS NOT NULL, CONCAT(' AND v.caste_id = ', p_CasteId), ''),
        IF(p_Disability IS NOT NULL, CONCAT(' AND v.disability = ', p_disability), ''),
        IF(p_GovtEmployee IS NOT NULL, CONCAT(' AND v.govt_employee = ', p_GovtEmployee), ''),
        IF(p_age_min IS NOT NULL and p_age_max IS NOT NULL, CONCAT(' AND v.age BETWEEN ', p_age_min, ' AND ', p_age_max),''),
        IF(p_age_min IS NOT NULL and p_age_max IS NULL, CONCAT(' AND v.age > ', p_age_min),''),
		IF(p_status_id IS NOT NULL, CONCAT(' AND tm.status_id = ', p_status_id), ''),
        IF(p_navarathnalu_id IS NOT NULL, CONCAT(' AND tm.navaratnalu_id = ', p_navarathnalu_id), ''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count,
		(SELECT COUNT(*) FROM FilteredData WHERE status_id = 1) AS open,
        (SELECT COUNT(*) FROM FilteredData WHERE status_id = 2) AS resolved,
        (SELECT COUNT(*) FROM FilteredData WHERE status_id = 3) AS cancelled,
        (SELECT COUNT(*) FROM FilteredData WHERE status_id = 4) AS escalated
        FROM FilteredData
        ORDER BY ', @p_sort_column, ' ', @p_sort_dir, '
        LIMIT ?, ?'
    );
	
    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUsersList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetUsersList`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN P_VillNo INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100), 
    IN p_sort_dir VARCHAR(5)
)
BEGIN

    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;

    SET p_results_per_page = IFNULL(p_results_per_page, 50);
    SET p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET p_pagination_offset = p_results_per_page * (p_pagenumber - 1);

    SET p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    SET @SqlQuery = CONCAT(
        'SELECT *,
            GROUP_CONCAT(um.part_no) AS parts,
            u.part_no as part_no,
            l.lookup_pk  as designation_id,
            l.lookup_valuename as designation_name,
            u.division_id as division_pkk

            FROM 
                users u        
            LEFT JOIN 
                user_mapping um ON u.user_pk = um.user_id
            LEFT JOIN
                lookup l on  l.lookup_pk = u.designation_id
            LEFT JOIN 
                states s on u.state_id = s.state_pk
            LEFT JOIN districts d on 
                u.district_id = d.district_pk
            LEFT JOIN 
                constituencies c on u.consistency_id = c.consistency_pk  
            LEFT JOIN 
                mandals m on u.mandal_id = m.mandal_pk   
            LEFT JOIN 
                divisions dv on u.division_id = dv.division_pk
            LEFT JOIN 
                sachivalayam sv on  u.sachivalayam_id = sv.sachivalayam_pk
            LEFT JOIN 
                parts p on u.part_no = p.part_no
            LEFT JOIN
                villages v on u.village_id = v.village_pk
            WHERE
                u.state_id = 5 AND
                u.district_id = 6 AND
                u.consistency_id = 3',
        IF(p_MandId IS NOT NULL, CONCAT(' AND u.mandal_id = ?'), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND u.division_id = ?'), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND u.sachivalayam_id = ?'), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND u.part_no = ?'), ''),
        IF(P_VillNo IS NOT NULL, CONCAT(' AND u.village_id = ?'), ''),
        ')
        GROUP BY u.user_pk
        ORDER BY ', p_sort_column, ' ', p_sort_dir, '
        LIMIT ?, ?'
    );    

    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM SqlQuery;
    EXECUTE dynamic_statement USING p_MandId, p_DivId, p_SachiId, p_PartNo, P_VillNo, p_pagination_offset, p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUsersList2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetUsersList2`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN p_VillNo INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100), 
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;

    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders

    SET @SqlQuery = CONCAT(
        'SELECT *,
            GROUP_CONCAT(um.part_no) AS parts,
            u.part_no as part_no,
            l.lookup_pk  as designation_id,
            l.lookup_valuename as designation_name,
            u.division_id as division_pkk

            FROM 
                users u        
            LEFT JOIN 
                user_mapping um ON u.user_pk = um.user_id
            LEFT JOIN
                lookup l on  l.lookup_pk = u.designation_id
            WHERE
                u.state_id = 5 AND
                u.district_id = 6 AND
                u.consistency_id = 3',
        IF(p_MandId IS NOT NULL, CONCAT(' AND u.mandal_id = ',p_MandId), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND u.division_id = ',p_DivId), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND u.sachivalayam_id = ',p_SachiId), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND u.part_no = ',p_PartNo), ''),
        IF(p_VillNo IS NOT NULL, CONCAT(' AND u.village_id = ',p_VillNo), ''),
        'GROUP BY u.user_pk'
        
    );    

    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    -- EXECUTE dynamic_statement USING @p_MandId, @p_DivId, @p_SachiId, @p_PartNo, @P_VillNo, @p_pagination_offset, @p_results_per_page;
    
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUsersList3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetUsersList3`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN p_VillNo INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100), 
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;

    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders

    SET @SqlQuery = CONCAT(
        'SELECT *,
            GROUP_CONCAT(um.part_no) AS parts,
            u.part_no as part_no,
            l.lookup_pk  as designation_id,
            l.lookup_valuename as designation_name,
            u.division_id as division_pkk

            FROM 
                users u        
            LEFT JOIN 
                user_mapping um ON u.user_pk = um.user_id
            LEFT JOIN
                lookup l on  l.lookup_pk = u.designation_id
            LEFT JOIN 
                states s on u.state_id = s.state_pk
            LEFT JOIN districts d on 
                u.district_id = d.district_pk
            LEFT JOIN 
                constituencies c on u.consistency_id = c.consistency_pk  
            LEFT JOIN 
                mandals m on u.mandal_id = m.mandal_pk   
            LEFT JOIN 
                divisions dv on u.division_id = dv.division_pk
            LEFT JOIN 
                sachivalayam sv on  u.sachivalayam_id = sv.sachivalayam_pk
            LEFT JOIN 
                parts p on u.part_no = p.part_no
            LEFT JOIN
                villages v on u.village_id = v.village_pk
            WHERE
                u.state_id = 5 AND
                u.district_id = 6 AND
                u.consistency_id = 3',
        IF(p_MandId IS NOT NULL, CONCAT(' AND u.mandal_id = ',p_MandId), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND u.division_id = ',p_DivId), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND u.sachivalayam_id = ',p_SachiId), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND u.part_no = ',p_PartNo), ''),
        IF(p_VillNo IS NOT NULL, CONCAT(' AND u.village_id = ',p_VillNo), ''),
        'GROUP BY u.user_pk'
        
    );    

    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    -- EXECUTE dynamic_statement USING @p_MandId, @p_DivId, @p_SachiId, @p_PartNo, @P_VillNo, @p_pagination_offset, @p_results_per_page;
    
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUsersList4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetUsersList4`(
    IN p_DistId INT,
    IN p_ConsId INT,
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN p_VillNo INT,
    IN p_DesigId INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100), 
    IN p_sort_dir VARCHAR(5)
)
BEGIN

    DECLARE p_pagination_offset INT;
    
    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'username', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);


    SET @SqlQuery = CONCAT(
        'SELECT *,
            GROUP_CONCAT(um.part_no) AS parts,
            u.part_no as part_no,
            l.lookup_pk  as designation_id,
            l.lookup_valuename as designation_name,
            u.division_id as division_pkk

            FROM 
                users u        
            LEFT JOIN 
                user_mapping um ON u.user_pk = um.user_id
            LEFT JOIN
                lookup l on  l.lookup_pk = u.designation_id
            LEFT JOIN 
                parts p on u.part_no = p.part_no
            LEFT JOIN
                villages v on u.village_id = v.village_pk
            WHERE
                u.state_id = 5 ',
        IF(p_DistId IS NOT NULL, CONCAT(' AND u.district_id = ',p_DistId), ''),
		IF(p_ConsId IS NOT NULL, CONCAT(' AND u.consistency_id = ',p_ConsId), ''),
        IF(p_MandId IS NOT NULL, CONCAT(' AND u.mandal_id = ',p_MandId), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND u.division_id = ',p_DivId), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND u.sachivalayam_id = ',p_SachiId), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND u.part_no = ',p_PartNo), ''),
        IF(p_DesigId IS NOT NULL, CONCAT(' AND u.designation_id = ',p_DesigId), ''),
        IF(p_VillNo IS NOT NULL, CONCAT(' AND u.village_id = ',p_VillNo), ''),
        ' Group By u.user_pk ORDER BY ', @p_sort_column, ' ', @p_sort_dir, '
        LIMIT ?, ?'
    );    

    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVotersList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetVotersList`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN P_VillNo INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;

    SET p_results_per_page = IFNULL(p_results_per_page, 50);
    SET p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET p_pagination_offset = p_results_per_page * (p_pagenumber - 1);

    SET p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    SET SqlQuery = CONCAT(
        'WITH FilteredData AS (
            SELECT 
                v.*,
                ps.volunteer_id AS poll_survey_volunteer_id,
                ps.intrested_party AS opinionparty,
                ps.voted_party,
                ps.createdon AS surveydatetime,
                v.phone_no AS voter_phone_no, v.age AS voter_age, v.voter_pk AS voter_pkk,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
            FROM  
                voters v 
            LEFT JOIN 
                poll_survey ps ON v.voter_pk = ps.voter_pk
            LEFT JOIN 
                states s ON v.state_id = s.state_pk
            LEFT JOIN 
                districts d ON v.district_id = d.district_pk
            LEFT JOIN 
                constituencies c ON v.consistency_id = c.consistency_pk  
            LEFT JOIN 
                mandals m ON v.mandal_id = m.mandal_pk   
            LEFT JOIN 
                divisions dv ON v.division_id = dv.division_pk
            LEFT JOIN 
                sachivalayam sv ON v.sachivalayam_id = sv.sachivalayam_pk
            LEFT JOIN 
                parts p ON v.part_no = p.part_no
            LEFT JOIN 
                villages vl ON v.village_id = vl.village_pk
            LEFT JOIN 
                users u ON v.volunteer_id = u.user_pk  
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 AND 
                v.district_id = 6 AND
                v.consistency_id = 3',
        IF(p_MandId IS NOT NULL, CONCAT(' AND v.mandal_id = ?'), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND v.division_id = ?'), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND v.sachivalayam_id = ?'), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND v.part_no = ?'), ''),
        IF(P_VillNo IS NOT NULL, CONCAT(' AND v.village_id = ?'), ''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count,
        (SELECT COUNT(*) FROM FilteredData WHERE opinionparty IS NOT NULL) AS completed
        FROM FilteredData
        ORDER BY ', p_sort_column, ' ', p_sort_dir, '
        LIMIT ?, ?'
    );

    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM SqlQuery;
    EXECUTE dynamic_statement USING p_MandId, p_DivId, p_SachiId, p_PartNo, P_VillNo, p_pagination_offset, p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVotersList2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetVotersList2`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN P_VillNo INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;

    SET p_results_per_page = IFNULL(p_results_per_page, 50);
    SET p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET p_pagination_offset = p_results_per_page * (p_pagenumber - 1);

    SET p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    SET SqlQuery = CONCAT(
        'WITH FilteredData AS (
            SELECT 
                v.*,
                ps.volunteer_id AS poll_survey_volunteer_id,
                ps.intrested_party AS opinionparty,
                ps.voted_party,
                ps.createdon AS surveydatetime,
                v.phone_no AS voter_phone_no, v.age AS voter_age, v.voter_pk AS voter_pkk,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
            FROM  
                voters v 
            LEFT JOIN 
                poll_survey ps ON v.voter_pk = ps.voter_pk
            LEFT JOIN 
                states s ON v.state_id = s.state_pk
            LEFT JOIN 
                districts d ON v.district_id = d.district_pk
            LEFT JOIN 
                constituencies c ON v.consistency_id = c.consistency_pk  
            LEFT JOIN 
                mandals m ON v.mandal_id = m.mandal_pk   
            LEFT JOIN 
                divisions dv ON v.division_id = dv.division_pk
            LEFT JOIN 
                sachivalayam sv ON v.sachivalayam_id = sv.sachivalayam_pk
            LEFT JOIN 
                parts p ON v.part_no = p.part_no
            LEFT JOIN 
                villages vl ON v.village_id = vl.village_pk
            LEFT JOIN 
                users u ON v.volunteer_id = u.user_pk  
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 AND 
                v.district_id = 6 AND
                v.consistency_id = 3 ',
        IF(p_MandId IS NOT NULL, ' AND v.mandal_id = ? ', ''),
        IF(p_DivId IS NOT NULL, ' AND v.division_id = ? ', ''),
        IF(p_SachiId IS NOT NULL, ' AND v.sachivalayam_id = ? ', ''),
        IF(p_PartNo IS NOT NULL, ' AND v.part_no = ? ', ''),
        IF(P_VillNo IS NOT NULL, ' AND v.village_id = ? ', ''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count,
        (SELECT COUNT(*) FROM FilteredData WHERE opinionparty IS NOT NULL) AS completed
        FROM FilteredData
        ORDER BY ', p_sort_column, ' ', p_sort_dir, '
        LIMIT ?, ?'
    );

    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM SqlQuery;
    IF (p_MandId IS NOT NULL OR p_DivId IS NOT NULL OR p_SachiId IS NOT NULL OR p_PartNo IS NOT NULL OR P_VillNo IS NOT NULL) THEN
        EXECUTE dynamic_statement USING p_MandId, p_DivId, p_SachiId, p_PartNo, P_VillNo, p_pagination_offset, p_results_per_page;
    ELSE
        EXECUTE dynamic_statement USING p_pagination_offset, p_results_per_page;
    END IF;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVotersList3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetVotersList3`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN P_VillNo INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;

    SET p_results_per_page = IFNULL(p_results_per_page, 50);
    SET p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET p_pagination_offset = p_results_per_page * (p_pagenumber - 1);

    SET p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    SET SqlQuery = CONCAT(
        'WITH FilteredData AS (
            SELECT 
                v.*,
                ps.volunteer_id AS poll_survey_volunteer_id,
                ps.intrested_party AS opinionparty,
                ps.voted_party,
                ps.createdon AS surveydatetime,
                v.phone_no AS voter_phone_no, v.age AS voter_age, v.voter_pk AS voter_pkk,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
            FROM  
                voters v 
            LEFT JOIN 
                poll_survey ps ON v.voter_pk = ps.voter_pk
            LEFT JOIN 
                states s ON v.state_id = s.state_pk
            LEFT JOIN 
                districts d ON v.district_id = d.district_pk
            LEFT JOIN 
                constituencies c ON v.consistency_id = c.consistency_pk  
            LEFT JOIN 
                mandals m ON v.mandal_id = m.mandal_pk   
            LEFT JOIN 
                divisions dv ON v.division_id = dv.division_pk
            LEFT JOIN 
                sachivalayam sv ON v.sachivalayam_id = sv.sachivalayam_pk
            LEFT JOIN 
                parts p ON v.part_no = p.part_no
            LEFT JOIN 
                villages vl ON v.village_id = vl.village_pk
            LEFT JOIN 
                users u ON v.volunteer_id = u.user_pk  
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 AND 
                v.district_id = 6 AND
                v.consistency_id = 3',
        IF(p_MandId IS NOT NULL, CONCAT(' AND v.mandal_id = ?'), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND v.division_id = ?'), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND v.sachivalayam_id = ?'), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND v.part_no = ?'), ''),
        IF(P_VillNo IS NOT NULL, CONCAT(' AND v.village_id = ?'), ''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count,
        (SELECT COUNT(*) FROM FilteredData WHERE opinionparty IS NOT NULL) AS completed
        FROM FilteredData
        ORDER BY ', p_sort_column, ' ', p_sort_dir, '
        LIMIT ?, ?'
    );

    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM SqlQuery;
    EXECUTE dynamic_statement USING p_MandId, p_DivId, p_SachiId, p_PartNo, P_VillNo, p_pagination_offset, p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVotersList4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetVotersList4`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN p_VillNo INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;

    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    
    SET @SqlQuery = CONCAT(
        'WITH FilteredData AS (
            SELECT 
                v.*,
                ps.volunteer_id AS poll_survey_volunteer_id,
                ps.intrested_party AS opinionparty,
                ps.voted_party,
                ps.createdon AS surveydatetime,
                v.phone_no AS voter_phone_no, v.age AS voter_age, v.voter_pk AS voter_pkk,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
            FROM  
                voters v 
            LEFT JOIN 
                poll_survey ps ON v.voter_pk = ps.voter_pk
            LEFT JOIN 
                users u ON v.volunteer_id = u.user_pk  
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 AND 
                v.district_id = 6 AND
                v.consistency_id = 3',
        IF(p_MandId IS NOT NULL, CONCAT(' AND v.mandal_id = ',p_MandId), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND v.division_id = ',p_DivId), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND v.sachivalayam_id = ',p_SachiId), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND v.part_no = ',p_PartNo), ''),
        IF(p_VillNo IS NOT NULL, CONCAT(' AND v.village_id = ',p_VillNo), ''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count,
        (SELECT COUNT(*) FROM FilteredData WHERE opinionparty IS NOT NULL) AS completed
        FROM FilteredData
        ORDER BY ', @p_sort_column, ' ', @p_sort_dir, '
        LIMIT ?, ?'
    );
	
    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    -- EXECUTE dynamic_statement USING @p_MandId, @p_DivId, @p_SachiId, @p_PartNo, @P_VillNo, @p_pagination_offset, @p_results_per_page;
    
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVotersList5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetVotersList5`(
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN p_VillNo INT,
    IN p_Gender INT,
	IN p_ReligionId INT,
    IN p_CasteId INT,
    IN p_Disability INT,
    IN p_GovtEmployee INT,
    IN p_Age_min INT,
    IN p_Age_max INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;
    
    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    
    SET @SqlQuery = CONCAT(
        'WITH FilteredData AS (
            SELECT 
                v.*,
                tm.ticket_master_pk,
                tm.navaratnalu_id,
                ps.volunteer_id AS poll_survey_volunteer_id,
                ps.intrested_party AS opinionparty,
                ps.voted_party,
                ps.createdon AS surveydatetime,
                v.phone_no AS voter_phone_no, v.age AS voter_age, v.voter_pk AS voter_pkk,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
            FROM  
                voters v 
            LEFT JOIN 
                poll_survey ps ON v.voter_pk = ps.voter_pk
            LEFT JOIN 
                users u ON v.volunteer_id = u.user_pk  
			LEFT JOIN 
				ticket_master tm On v.voter_pk = tm.voter_pk AND tm.is_open = 1   
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 AND 
                v.district_id = 6 AND
                v.consistency_id = 3',
        IF(p_MandId IS NOT NULL, CONCAT(' AND v.mandal_id = ',p_MandId), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND v.division_id = ',p_DivId), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND v.sachivalayam_id = ',p_SachiId), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND v.part_no = ',p_PartNo), ''),
        IF(p_VillNo IS NOT NULL, CONCAT(' AND v.village_id = ',p_VillNo), ''),
        IF(p_Gender IS NOT NULL, CONCAT(' AND v.gender = ', p_Gender), ''),
        IF(p_ReligionId IS NOT NULL, CONCAT(' AND v.religion_id = ', p_ReligionId), ''),
        IF(p_CasteId IS NOT NULL, CONCAT(' AND v.caste_id = ', p_CasteId), ''),
        IF(P_Disability IS NOT NULL, CONCAT(' AND v.disability = ', p_disability), ''),
        IF(P_GovtEmployee IS NOT NULL, CONCAT(' AND v.govt_employee = ', p_GovtEmployee), ''),
        IF(P_Age_min IS NOT NULL, CONCAT(' AND v.age BETWEEN ', p_Age_min, ' AND ', p_Age_max),''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count,
        (SELECT COUNT(*) FROM FilteredData WHERE opinionparty IS NOT NULL) AS completed
        FROM FilteredData
        ORDER BY ', @p_sort_column, ' ', @p_sort_dir, '
        LIMIT ?, ?'
    );
	
    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    -- EXECUTE dynamic_statement USING @p_MandId, @p_DivId, @p_SachiId, @p_PartNo, @P_VillNo, @p_pagination_offset, @p_results_per_page;
    
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVotersList6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `GetVotersList6`(
	IN p_DistId INT,
    IN p_ConsId INT,
    IN p_MandId INT,
    IN p_DivId INT,
    IN p_SachiId INT,
    IN p_PartNo INT,
    IN p_VillNo INT,
    IN p_Gender INT,
	IN p_ReligionId INT,
    IN p_CasteId INT,
    IN p_Disability INT,
    IN p_GovtEmployee INT,
    IN p_age_min INT,
    IN p_age_max INT,
    IN p_results_per_page INT, 
    IN p_pagenumber INT, 
    IN p_sort_column VARCHAR(100),
    IN p_sort_dir VARCHAR(5)
)
BEGIN
    DECLARE p_pagination_offset INT;
    DECLARE SqlQuery TEXT;
    
    SET @p_results_per_page = IFNULL(p_results_per_page, 50);
    SET @p_pagenumber = IFNULL(p_pagenumber, 1);

    IF p_pagenumber <= 0 THEN
        SET @p_pagenumber = 1;
    END IF;

    -- Calculate pagination offset
    SET @p_pagination_offset = @p_results_per_page * (@p_pagenumber - 1);

    SET @p_sort_column = IF (NULLIF(p_sort_column, '') IS NULL, 'surveydatetime', p_sort_column);
    SET @p_sort_dir = IF (NULLIF(p_sort_dir, '') IS NULL, 'DESC', p_sort_dir);

    -- Build the dynamic SQL query with placeholders
    
    SET @SqlQuery = CONCAT(
        'WITH FilteredData AS (
            SELECT 
                v.*,
                tm.ticket_master_pk,
                tm.navaratnalu_id,
                ps.volunteer_id AS poll_survey_volunteer_id,
                ps.intrested_party AS opinionparty,
                ps.voted_party,
                ps.createdon AS surveydatetime,
                v.phone_no AS voter_phone_no, v.age AS voter_age, v.voter_pk AS voter_pkk,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.caste_id) AS caste_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.religion_id) AS religion_name,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.guardian) AS guardian_type,
                (SELECT lookup_valuename FROM lookup WHERE lookup_pk = v.gender) AS gender_type
            FROM  
                voters v 
            LEFT JOIN 
                poll_survey ps ON v.voter_pk = ps.voter_pk
            LEFT JOIN 
                users u ON v.volunteer_id = u.user_pk  
			LEFT JOIN 
				ticket_master tm On v.voter_pk = tm.voter_pk AND tm.is_open = 1   
            WHERE
                v.is_newregistration = false AND
                v.state_id = 5 AND 
                v.district_id = 6 ',
		IF(p_DistId IS NOT NULL, CONCAT(' AND v.district_id = ',p_DistId), ''),
		IF(p_ConsId IS NOT NULL, CONCAT(' AND v.consistency_id = ',p_ConsId), ''),
        IF(p_MandId IS NOT NULL, CONCAT(' AND v.mandal_id = ',p_MandId), ''),
        IF(p_DivId IS NOT NULL, CONCAT(' AND v.division_id = ',p_DivId), ''),
        IF(p_SachiId IS NOT NULL, CONCAT(' AND v.sachivalayam_id = ',p_SachiId), ''),
        IF(p_PartNo IS NOT NULL, CONCAT(' AND v.part_no = ',p_PartNo), ''),
        IF(p_VillNo IS NOT NULL, CONCAT(' AND v.village_id = ',p_VillNo), ''),
        IF(p_Gender IS NOT NULL, CONCAT(' AND v.gender = ', p_Gender), ''),
        IF(p_ReligionId IS NOT NULL, CONCAT(' AND v.religion_id = ', p_ReligionId), ''),
        IF(p_CasteId IS NOT NULL, CONCAT(' AND v.caste_id = ', p_CasteId), ''),
        IF(p_Disability IS NOT NULL, CONCAT(' AND v.disability = ', p_disability), ''),
        IF(p_GovtEmployee IS NOT NULL, CONCAT(' AND v.govt_employee = ', p_GovtEmployee), ''),
        IF(p_age_min IS NOT NULL and p_age_max IS NOT NULL, CONCAT(' AND v.age BETWEEN ', p_age_min, ' AND ', p_age_max),''),
        IF(p_age_min IS NOT NULL and p_age_max IS NULL, CONCAT(' AND v.age > ', p_age_min),''),
        ') 
        SELECT *,
        (SELECT COUNT(*) FROM FilteredData) AS count,
        (SELECT COUNT(*) FROM FilteredData WHERE opinionparty IS NOT NULL) AS completed
        FROM FilteredData
        ORDER BY ', @p_sort_column, ' ', @p_sort_dir, '
        LIMIT ?, ?'
    );
	
    -- Prepare and execute the dynamic SQL query using placeholders
    PREPARE dynamic_statement FROM @SqlQuery;
    
    EXECUTE dynamic_statement USING @p_pagination_offset, @p_results_per_page;
    DEALLOCATE PREPARE dynamic_statement;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateUserPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `UpdateUserPassword`(
    IN p_username VARCHAR(255),
    IN p_password VARCHAR(255)
)
BEGIN
    DECLARE update_result INT;
    
    UPDATE users SET password_encrypted = md5(p_password) WHERE username = p_username;
	
    SELECT ROW_COUNT();
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ValidateUserPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`u276789778_polling_survey`@`%` PROCEDURE `ValidateUserPassword`(
    IN p_username VARCHAR(255),
    IN p_password VARCHAR(255)
)
BEGIN
    DECLARE hashed_password VARCHAR(255);
    DECLARE p_valid BOOLEAN;

    -- Check if the username exists
    SELECT password_encrypted INTO hashed_password
    FROM users
    WHERE username = p_username;

    -- Set the default validity to false
    SET p_valid = FALSE;
	set @input_password = md5(p_password) collate utf8mb4_unicode_ci;
    -- If the username exists, validate the password
    IF hashed_password IS NOT NULL AND strcmp(@input_password,hashed_password) = 0 THEN
        SET p_valid = TRUE;
    END IF;
    select p_valid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 18:34:23
