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
INSERT INTO `country` VALUES ('efefe','grgsrd','gsgsd','2023-12-06 08:05:06','2023-12-06 08:05:06'),('qefewfewsf','grgsrd','gsgsd','2023-12-06 08:05:13','2023-12-06 08:05:13'),('swfsdfgsdfgs','grgsrd','gsgsd','2023-12-06 08:03:29','2023-12-06 08:03:29');
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
INSERT INTO `divisions` VALUES (6,6,'Nerabailu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,6,'Bodevandlapalle',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,6,'Yerravaripalem',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,5,'Chinnagottigallu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,5,'Bhakarapeta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,5,'T.Chattevaripalem',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,3,'Mogarala',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(13,3,'Damalacheruvu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,3,'Pakala',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,3,'Nendragunta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,2,'Chandragiri',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,2,'Ithepalli',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,2,'A.Rangampeta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(19,2,'Thondawada',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(20,4,'Nethakuppam',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(21,4,'Kuppam Baduru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(22,4,'R.C.Puram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(23,4,'Nennuru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(24,8,'Mangalam',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(25,8,'Tiruchanoor',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,8,'Daminedu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(27,8,'Mundlapudi',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(28,8,'Padmavathi Puram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(29,8,'Vedanthapuram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,8,'Sainagar',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(31,8,'Perumallapalle',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(32,8,'Mallamgunta Checkpost',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(33,8,'Peruru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,2,'division',1,'2023-11-28 12:33:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(35,6,'division-2',1,'2023-11-30 08:20:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(36,8,'Jaggayapet',1,'2023-12-06 13:34:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(37,2,'bhimavaram',1,'2023-12-07 06:43:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(38,4,'chandrapurat',1,'2023-12-08 09:53:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup`
--

LOCK TABLES `lookup` WRITE;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
INSERT INTO `lookup` VALUES (1,'ticketstatuslist','open',0),(2,'ticketstatuslist','resolved',0),(3,'ticketstatuslist','cancelled',0),(4,'ticketstatuslist','escalated',0),(13,'genderlist','MALE',0),(14,'genderlist','FEMALE',0),(15,'genderlist','OTHERS',0),(16,'guardianlist','FATHER',0),(17,'guardianlist','MOTHER',0),(18,'guardianlist','HUSBAND',0),(19,'attachementtype','PDF',0),(20,'attachementtype','DOC',0),(21,'attachementtype','IMAGE',0),(22,'party_list','NEUTRAL',0),(23,'party_list','YSRCP',0),(24,'party_list','TDP',0),(25,'party_list','CONGRESS',0),(26,'party_list','BJP',0),(27,'party_list','JANASENA',0),(30,'designationlist','CM',0),(31,'designationlist','STATE_LEADER',0),(32,'designationlist','MLA',0),(33,'designationlist','MANDAL_CONVENER/CPRO',0),(34,'designationlist','PRO',0),(35,'designationlist','APRO',0),(36,'designationlist','BOOTH_INCHARGE',0),(37,'designationlist','VOLUNTEER',0),(38,'designationlist','GRUHASARATHI',0),(78,'lookup','value',0),(79,'lookup','valuename',0),(80,'party_list','OTHERS',0),(81,'religion_list','HINDU',0),(82,'religion_list','MUSLIM',0),(83,'religion_list','CHRISTIAN',0),(84,'religion_list','SIKH',0),(85,'religion_list','BUDDHIST',0),(86,'religion_list','JAIN',0),(87,'religion_list','OTHERS',0),(88,'caste_list','BRAHMIN',0),(89,'caste_list','KSHATRIYA',0),(90,'caste_list','VAISHYA',0),(91,'caste_list','REDDY',0),(92,'caste_list','RAJU',0),(93,'caste_list','OTHERS',0),(94,'designationlist','party leader',0),(95,'designationlist','district leader',0);
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
INSERT INTO `mandals` VALUES (2,3,'Chandragiri',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,4,'krishnalayam',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,3,'Ramachandrapuram',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,3,'Chinnagottigalu',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,3,'Yerravaripalem',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,4,'kondapalli',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,3,'Tirupati Rural(West)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,3,'Tirupati Rural(East)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,3,'updated',1,'2023-11-30 08:25:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,3,'visa',1,'2023-12-04 06:55:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(13,3,'jagayapeta',1,'2023-12-07 05:50:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,4,'krishnapuram',1,'2023-12-07 05:53:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,3,'ramapuram',1,'2023-12-07 06:00:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,3,'radhapuram',1,'2023-12-07 06:03:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,3,'laxampuram',1,'2023-12-07 06:05:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,4,'bhaktipuram',1,'2023-12-07 06:09:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(19,3,'tripuram',1,'2023-12-08 05:03:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,2,10,10,10,6,1,'2023-11-27 04:50:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0),(5,3,10,10,10,6,1,'2023-12-05 13:40:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,2),(6,4,45,96,45,6,1,'2023-12-07 08:30:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_survey`
--

LOCK TABLES `poll_survey` WRITE;
/*!40000 ALTER TABLE `poll_survey` DISABLE KEYS */;
INSERT INTO `poll_survey` VALUES (120,1,1,24,NULL,1,'2023-12-08 10:56:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(121,1,2,23,NULL,1,'2023-12-08 11:46:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(122,1,3,23,NULL,1,'2023-12-08 12:00:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
  `ticket_master_id` int(11) NOT NULL,
  `attachment_name` varchar(250) NOT NULL,
  `attachment_type` varchar(10) NOT NULL,
  `attachments_discription` varchar(5000) NOT NULL,
  `attachments_url` varchar(250) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_attachment_pk`),
  KEY `ticket_master_id` (`ticket_master_id`),
  CONSTRAINT `ticket_attachments_ibfk_1` FOREIGN KEY (`ticket_master_id`) REFERENCES `ticket_master` (`ticket_master_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_attachments`
--

LOCK TABLES `ticket_attachments` WRITE;
/*!40000 ALTER TABLE `ticket_attachments` DISABLE KEYS */;
INSERT INTO `ticket_attachments` VALUES (5,4,'attachment','type','discription','http://url/',1,'2023-11-28 12:44:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,4,'attachment-2','type','',NULL,1,'2023-11-30 08:44:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
  `ticket_escalatedon` timestamp NOT NULL DEFAULT current_timestamp(),
  `escalatedby` int(11) DEFAULT NULL,
  `ticket_master_id` int(11) NOT NULL,
  PRIMARY KEY (`ticket_escalation_pk`),
  KEY `ticket_master_id` (`ticket_master_id`),
  CONSTRAINT `ticket_escalation_ibfk_1` FOREIGN KEY (`ticket_master_id`) REFERENCES `ticket_master` (`ticket_master_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_escalation`
--

LOCK TABLES `ticket_escalation` WRITE;
/*!40000 ALTER TABLE `ticket_escalation` DISABLE KEYS */;
INSERT INTO `ticket_escalation` VALUES (4,'2023-11-28 12:44:33',NULL,4),(5,'2023-11-30 08:47:15',NULL,4);
/*!40000 ALTER TABLE `ticket_escalation` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_master`
--

LOCK TABLES `ticket_master` WRITE;
/*!40000 ALTER TABLE `ticket_master` DISABLE KEYS */;
INSERT INTO `ticket_master` VALUES (4,1,12,5,'not aproved',1,1,1,'2023-11-28 12:43:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,1,11,2,'reason-1',1,1,1,'2023-11-30 08:50:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mapping`
--

LOCK TABLES `user_mapping` WRITE;
/*!40000 ALTER TABLE `user_mapping` DISABLE KEYS */;
INSERT INTO `user_mapping` VALUES (9,209,2,1,'2023-12-08 06:46:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,209,3,1,'2023-12-08 06:46:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,210,2,1,'2023-12-08 07:03:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,210,4,1,'2023-12-08 07:03:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,211,2,1,'2023-12-08 11:57:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,211,3,1,'2023-12-08 11:57:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,211,4,1,'2023-12-08 11:57:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,214,2,1,'2023-12-08 15:07:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,213,3,1,'2023-12-08 15:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,212,2,1,'2023-12-09 02:51:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(35,212,3,1,'2023-12-09 02:51:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(36,212,4,1,'2023-12-09 02:51:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(37,122,2,1,'2023-12-12 07:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(38,123,2,1,'2023-12-12 07:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(39,127,2,1,'2023-12-12 07:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'K Manikanta','K Manikanta','1234','9985079957',NULL,NULL,NULL,33,NULL,1,'2023-11-27 12:16:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(11,'A.Aabeed','A.Aabeed','54321','9398979098',NULL,NULL,NULL,34,NULL,1,'2023-11-27 12:49:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,NULL,NULL,0,NULL,6,NULL,'01cfcd4f6b8770febfb40cb906715822'),(12,'Geddi Balaji','Geddi Balaji','1234','7675924520',NULL,NULL,NULL,35,NULL,1,'2023-11-27 12:54:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,25,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(18,'B.Sri Hari','B.Sri Hari','1234','8919757345',NULL,NULL,NULL,33,NULL,1,'2023-12-01 08:10:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(19,'K.Lokesh','K.Lokesh','1234','9160308205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(20,'P.Lokesh','P.Lokesh','1234','8639430813',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(21,'P.Guna Sekhar Reddy','P.Guna Sekhar Reddy','1234','9642824182',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(22,'Madasi Nagarjuna','Madasi Nagarjuna','1234','8686787377',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,26,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(23,'Angereddy Rajasekhar','Angereddy Rajasekhar','1234','8328180079',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,27,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(24,'Valkuntapathi Reddappa','Valkuntapathi Reddappa','1234','9700070005',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,28,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(25,'T Surya Prakash','T Surya Prakash','1234','7330074743',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,29,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(26,'N Harikrishna','N Harikrishna','1234','9182743681',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,30,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(27,'K.Hemanth Kumar','K.Hemanth Kumar','1234','9391162281',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,31,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(28,'N Giribabu','N Giribabu','1234','7989732019',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(29,'G Prakash','G Prakash','1234','9392432355',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(30,'K Soma Sekhar','K Soma Sekhar','1234','9390773818',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(31,'P Somasekhar','P Somasekhar','1234','6300788037',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(32,'P.Siva Prasad','P.Siva Prasad','1234','6301933292',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(33,'V Tariminanda','V Tariminanda','1234','7032956449',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(34,'Dinesh Kumar M','Dinesh Kumar M','1234','8688376683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(35,'Karteek Varlla','Karteek Varlla','1234','7093838463',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(36,'Battala Chaitanya','Battala Chaitanya','1234','9515681010',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(37,'Kumar Bagadi','Kumar Bagadi','1234','9398464795',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(38,'K.Sai Kumar','K.Sai Kumar','1234','7702311232',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(39,'V DEVENDRA','V DEVENDRA','1234','9553269014',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(40,'K Balaji','K Balaji','1234','7799486416',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(41,'M Rohith','M Rohith','1234','6303346498',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(42,'S.Charan','S.Charan','1234','9398297963',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(43,'Nagooru Sameevulla','Nagooru Sameevulla','1234','7013654773',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(44,'M.KISHORE','M.KISHORE','1234','9908537683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(45,'K Nagendra Babu','K Nagendra Babu','1234','9550029871',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(48,'M Gajendra Reddy','M Gajendra Reddy','1234','9985682040',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:14:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(49,'B.Sisindri Reddy','B.Sisindri Reddy','1234','7989130140',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:17:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(50,'C.Chandra Sekhar','C.Chandra Sekhar','1234','9154469950',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:19:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,9,NULL,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(51,'P.Sopma Sekhar','P.Sopma Sekhar','1234','9701708038',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:23:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(52,'K.Ramesh','K.Ramesh','1234','9573691354',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:25:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(53,'N Nagendra Kumar','N Nagendra Kumar','1234','9652070998',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:27:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(54,'S.Fayaz Ahamed','S.Fayaz Ahamed','123','8074708079',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:29:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'202cb962ac59075b964b07152d234b70'),(55,'K.Mohan Reddy','K.Mohan Reddy','1234','8897661280',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:33:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(56,'S.Bavaji','S.Bavaji','1234','9912803104',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:35:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(57,'K.Kiran Kumar','K.Kiran Kumar','12334','9010614835',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:38:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'120705de7e61c5b322ad798b8ef225a7'),(58,'VACANT','VACANT','1234','9876543210',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:41:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(59,'J.Ravi Teja','J.Ravi Teja','1234','9030769941',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:43:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(60,'G.Lakshmipathi','G.Lakshmipathi','1234','9000743443',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:46:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(61,'K.Giri Babu','K.Giri Babu','1234','7093243213',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:21:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(62,'B.Ravi','B.Ravi','1234','8328427108',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:34:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(63,'P.Kodandam','P.Kodandam','1234','7207548503',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(64,'B.Vamsi Krishna','B.Vamsi Krishna','1234','7901068582',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:38:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(65,'vacant','vacant','1234','987654321',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:41:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,24,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(66,'M.Shanmugam','M.Shanmugam','1234','7997411721',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:12:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,25,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(67,'K.Vijay Kumar','K.Vijay Kumar','1234','8919832001',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:17:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,26,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(68,'M.Sasikumar','M.Sasikumar','1234','9666600348',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:20:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,27,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(69,'P.Dilip Kumar Reddy','P.Dilip Kumar Reddy','1234','8096655536',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:22:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,28,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(70,'K.Bhaskar Reddy','K.Bhaskar Reddy','1234','9100608627',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:24:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,29,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(71,'E.Mahendra','E.Mahendra','1234','9010959927',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:27:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,30,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(72,'P.Karthik','P.Karthik','1234','9398687059',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:29:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,31,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(73,'D.Azees','D.Azees','1234','9182585511',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:33:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,32,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(74,'K.Prathap Reddy','K.Prathap Reddy','1234','8143232205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:36:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(75,'K Reddy Prasad','K Reddy Prasad','1234','9550254831',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:44:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(76,'K Thulasi Ram','K Thulasi Ram','1234','9966181395',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:50:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(77,'R Muniraja','R Muniraja','1234','8008299382',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:10:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(78,'K.Prakash','K.Prakash','1234','9391205195',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:14:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(79,'G.Ramesh','G.Ramesh','1234','9959656533',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:22:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(80,'Jyotheeswar Reddy K','Jyotheeswar Reddy K','1234','8187884802',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:25:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(81,'T.Venkatesh','T.Venkatesh','1234','9347015374',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(82,'N.Lekha Raju','N.Lekha Raju','1234','8886847669',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:32:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(83,'S.Gurunath','S.Gurunath','1234','8096292519',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:35:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(84,'N Purushotham','N Purushotham','1234','7731088724',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:13:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(85,'D.Nane','D.Nane','1234','6281350891',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:15:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(86,'Sarath Kumar','Sarath Kumar','1234','7569669401',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:17:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(87,'Hari Babu M','Hari Babu M','1234','7032298559',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:18:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(88,'Jeevarathnam Reddy','Jeevarathnam Reddy','1234','6303621325',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(89,'S Madhu','S Madhu','1234','9848534569',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:36:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(90,'P Dilli Prasad','P Dilli Prasad','1234','9000704694',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:38:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(91,'B.Damodaram Reddy','B.Damodaram Reddy','1234','9652633509',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:40:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(92,'Mukkoti Samadhi','Mukkoti Samadhi','1234','8639688754',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:54:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(93,'Pattumarpu Srinivas','Pattumarpu Srinivas','1234','8309527987',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:56:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(94,'Oruganti Chandra Sekhar','Oruganti Chandra Sekhar','1234','9985873625',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(95,'Vanarla Dilli Basha','Vanarla Dilli Basha','8901','7702690114',NULL,NULL,NULL,35,NULL,1,'2023-12-02 02:00:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL,'f4d87ed3b0dbf9c79746d00cedbb5e78'),(96,'A Leela Krishna','A Leela Krishna','1234','9676093346',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:45:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(97,'Bodireddy Chiranjeevi','Bodireddy Chiranjeevi','4567','8897773627',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:48:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL,'6562c5c1f33db6e05a082a88cddab5ea'),(98,'K Thulasiram Reddy','K Thulasiram Reddy','5678','8886169589',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:51:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'674f3c2c1a8a6f90461e8a66fb5550ba'),(99,'K Venkataramana Reddy','K Venkataramana Reddy','1234','9848803057',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(100,'Mahesh T','Mahesh T','1234','7893318622',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:08:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(101,'Avula Mouneesh','Avula Mouneesh','1234','9880007452',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:09:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(102,'G Ashok Kumar','G Ashok Kumar','1234','9502706145',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:11:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(103,'Jagili Rasaiah','Jagili Rasaiah','1234','9701129285',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:14:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(104,'G Janardhan Reddy','G Janardhan Reddy','1234','9490837428',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:17:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(105,'G Sudhakar Reddy','G Sudhakar Reddy','1234','9000038851',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:18:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(106,'Nagineni Dhananjaya','Nagineni Dhananjaya','1234','9160232255',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:20:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(107,'Etimarpu Ganesh Achari','Etimarpu Ganesh Achari','1234','9704439169',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:23:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(108,'Ramoji Venkatesh','Ramoji Venkatesh','1234','7702730863',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:24:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(109,'VACANT','VACANT','1234','1234567890',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:27:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(110,'Bhuvaneswar Reddy V','Bhuvaneswar Reddy V','1234','7893996626',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:32:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(111,'G Gnayasekhar','G Gnayasekhar','1234','9985189144',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:46:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(112,'P Khaja Peer','P Khaja Peer','1234','7893432811',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:48:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(113,'K Sekhar','K Sekhar','1234','9573687383',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:49:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(114,'Boyani Suresh','Boyani Suresh','1234','9603702856',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:51:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(115,'G Vijay Kumar','G Vijay Kumar','1234','9154458676',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:54:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(116,'C Viswanadhareddy','C Viswanadhareddy','1234','9985111855',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:57:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(117,'Kishore Reddy','Kishore Reddy','1234','8500013053',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(118,'O Manikanta Reddy','O Manikanta Reddy','1234','9182218173',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:04:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(119,'P Bareshavalli','P Bareshavalli','1234','7993313243',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:05:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(120,'Shaik Riyaz','Shaik Riyaz','1234','9000266065',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:07:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(122,'Ch Ramu ','Ch Ramu','1234','5555555555',NULL,NULL,NULL,38,NULL,1,'2023-12-04 06:23:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,3,'81dc9bdb52d04dc20036dbd8313ed055'),(123,'P Shiva','P Shiva','1234','6666666666',NULL,NULL,'email',38,NULL,1,'2023-12-04 06:26:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,1,NULL,6,3,'81dc9bdb52d04dc20036dbd8313ed055'),(124,'Mohith Reddy','Mohith Reddy','12345678','1111122222',NULL,NULL,NULL,32,NULL,1,'2023-12-04 12:02:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,0,NULL,6,NULL,'25d55ad283aa400af464c76d713c07ad'),(126,'Rohith p','Rohith ','1234','9456321789','9632587410',23,'rohith123demo@gmail.com',37,NULL,1,'2023-12-06 08:07:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'81dc9bdb52d04dc20036dbd8313ed055'),(127,'Rohith S','9874563210','12345678','9874563210','963582741',23,'rohith123demo@gmail.com',38,NULL,1,'2023-12-06 08:14:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,1,NULL,6,4,'25d55ad283aa400af464c76d713c07ad'),(128,'rohith p','rohith','12345','963258741','923456789',23,'rohith123demo@gmail.com',37,NULL,1,'2023-12-06 09:50:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'827ccb0eea8a706c4c34a16891f84e7b'),(133,'rohith','roh','12345','9325874160','9854763210',23,'rohit@gmail.com',37,NULL,1,'2023-12-06 09:55:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,6,7,1,NULL,6,NULL,'827ccb0eea8a706c4c34a16891f84e7b'),(195,'K Mani','K Mani','1234','9985079956',NULL,NULL,NULL,37,NULL,1,'2023-12-06 13:23:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,6,6,7,1,NULL,6,2,'81dc9bdb52d04dc20036dbd8313ed055'),(209,'asd','1231231231','ySZBc8tV','1231231231','',0,'',38,NULL,1,'2023-12-07 15:53:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,1,NULL,6,NULL,'e0f5a40e701fba795ccf65c80bc58f8a'),(210,'SRINIVAS-GS','8332037173','87654321','8332037173','',0,'',38,NULL,1,'2023-12-07 15:54:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,0,NULL,6,2,'5e8667a439c68f5145dd2fcbecf02209'),(211,'VAMSI-GS2','9059108434','12345678','9059108434','',0,'',38,NULL,1,'2023-12-08 11:54:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,0,NULL,6,NULL,'25d55ad283aa400af464c76d713c07ad'),(212,'Durga Potnuru','9398676662','vijay123','9398676662','',23,'vijaypotnuru123@gmail.com',37,NULL,1,'2023-12-08 13:41:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,0,NULL,6,2,'1048a5d40968bdf9c05193f13309197d'),(213,'Naga Sai Sravan Kumar Rayapudi','9063269393','nagasai123','9063269393','',24,'nagasairayapudi2000@gmail.com',36,NULL,1,'2023-12-08 13:45:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,25,7,0,NULL,6,2,'b528edc2d8230a2f904554e5218459c8'),(214,'Durga','7794945664',NULL,'7794945664','',23,'vijaypotnuru123@gmail.com',38,NULL,1,'2023-12-08 13:53:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,NULL,NULL),(215,'Prasanth kumar','6304005193',NULL,'6304005193','',27,'prasanth@1234gmail.com',38,NULL,1,'2023-12-08 15:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `govt_employee` tinyint(4) DEFAULT NULL,
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
INSERT INTO `voters` VALUES (1,2,1,'SAMEEULLA SYED','IAX1916410',16,'SILAR SAHEB SYED',13,33,11,NULL,'1234512345','Chittor Town','Tirupati',0,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'email',6,0,82,89,0,0),(2,2,5,'PRIYANKA V','IAX1243039',18,'DORASWAMY V',14,29,11,NULL,'9999999999','House Number 1-3','House Number 1-30',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,81,88,1,0),(3,2,6,'RAJENDRA PRIYANKA','IAX1841527',16,'MUNASWAMY RAJENDRA',13,24,NULL,NULL,'1212121212','Chittor -1-19','Tirupati',0,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,82,89,1,1),(4,2,95,'ABDUL MUZEEM SHAIK','IAX3195955',16,'ABDUL MAZEED SHAIK',13,22,NULL,NULL,'9876543201','House Number 1-1','House Number 1-1',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(5,2,101,'RAMANAMMA S','IAX1509357',18,'RAMESH BABU S',14,40,NULL,NULL,'9786543201','House Number 1-22','House Number 1-22',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(6,2,102,'MUNIM MOGAL','IAX0989576',16,'MAHAMMAD BIG MOGAL',13,32,NULL,NULL,'9687543201','House Number 2-10','House Number 2-10',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(7,2,187,'MOHAN TALARI','IAX1242981',16,'NARAYANA TALARI',13,56,NULL,NULL,'9876543102','House Number 1-3','House Number 1-3',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0,NULL,NULL,NULL,NULL),(8,2,188,'SYAMALA','IAX1243054',18,'MOHANA T',14,49,NULL,NULL,'9786543102','House Number 1-4','House Number 1-4',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0,NULL,NULL,NULL,NULL),(9,2,191,'NAGESWARA TALARI','IAX1242965',16,'VENKATA RAMANA TALARI',13,40,NULL,NULL,'9687543102','House Number 1-6','House Number 1-6',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0,NULL,NULL,NULL,NULL),(10,2,285,'CHANDU JAMPE','IAX3077484',16,'VIJAYA KUMAR J',13,22,NULL,NULL,'9876543103','House Number 1-0','House Number 1-0',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6,0,NULL,NULL,NULL,NULL),(11,2,284,'Deepa Jampe','IAX3150059',16,'Vijay kumar Jampe',14,20,NULL,NULL,'9786543103','House Number 00','House Number 00',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6,0,NULL,NULL,NULL,NULL),(12,2,287,'Mahesh Kommu','IAX3241734',16,'Venkataramana Kommu',13,19,NULL,NULL,'9687543103','House Number 1-1','House Number 1-1',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6,0,NULL,NULL,NULL,NULL),(26,2,2,'ZEENAT SYED','IAX1916378',18,'SAMEEULLA SYED',14,31,NULL,NULL,'9876543210','House Number 1-1','House Number 1-1',1,1,'2023-12-02 09:01:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(27,2,3,'SEEMA S','IAX1897867',18,'CHAN BASHA S',14,28,NULL,NULL,'9876543210','House Number 1-1','House Number 1-1',1,1,'2023-12-02 09:56:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(28,2,4,'MASTHAN VALI SHAIK','IAX0989626',16,'IBRAHEEM SAHEB SHAIK',13,41,NULL,NULL,'9876543210','House Number 1-2','House Number 1-2',1,1,'2023-12-02 10:01:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(29,2,8,'ANIL KUMAR G','IAX2049872',16,'RAMAIAH G',13,25,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:10:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(30,2,7,'SHARU KHAN PATHAN','IAX1553958',16,'RAHAMATHULLA KHAN',13,31,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:14:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(31,2,9,'M BAAVAJI','IAX2041382',16,'S MAHABOOB PATHAN',13,28,NULL,NULL,'9876543210','House Number 1-5','House Number 1-5',1,1,'2023-12-02 10:41:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(32,2,10,'SUNEEL KUMAR G','IAX2049914',16,'RAMANAIAH G',13,24,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:45:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(33,2,11,'Anarkhali Shaik','IAX1888312',18,'Riyaze S',14,31,NULL,NULL,'9876543210','House Number 1-13','House Number 1-13',1,1,'2023-12-02 10:54:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(34,2,12,'Sreenivasulu J','IAX1948520',16,'Krishnajah J',13,25,NULL,NULL,'9876543210','House Number 1-15','House Number 1-15',1,1,'2023-12-02 10:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(35,2,13,'Kalpana Thalla','IAX1887371',18,'Prudvi Raj T',14,31,NULL,NULL,'9876543210','House Number 1-16','House Number 1-16',1,1,'2023-12-02 11:02:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(36,2,14,'Nagineni Tejaswini','IAX3225331',18,'Rajesh Golla',14,21,NULL,NULL,'9876543210','House Number 1-21','House Number 1-21',1,1,'2023-12-02 11:07:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(37,2,15,'NAGESH KUMAR BOMMAJI','IAX2044238',16,'CHALAPATHI BOMMAJI',13,23,NULL,NULL,'9876543210','House Number 1-22','House Number 1-22',1,1,'2023-12-02 11:13:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(38,2,16,'Rajesh J','IAX1878776',16,'Ravi J',13,24,NULL,NULL,'9876543210','House Number 1-43','House Number 1-43',1,1,'2023-12-02 11:16:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(39,2,17,'S KHADHAR BASHA SHAIK','IAX1817329',16,'SHAIK SHAMEER SAHEB',14,48,NULL,NULL,'9876543210','House Number 1-112','House Number 1-112',1,1,'2023-12-02 11:28:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(40,2,18,'S ARIFUN','IAX2041416',18,'S MAHABOOB BASHA SHAIK',13,50,NULL,NULL,'9876543210','House Number 1-81','House Number 1-81',1,1,'2023-12-02 11:46:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(41,2,19,'RAMA DEVI SUNDU PALLI','IAX1243021',18,'SIDDAIAH SUNDU PALLI',14,34,NULL,NULL,'9876543210','House Number 2-1','House Number 2-1',1,1,'2023-12-02 11:53:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(42,2,20,'Mahesh Tummala','IAX1948405',16,'Venkatramana T',13,23,NULL,NULL,'9876543210','House Number 2-75','House Number 2-75',1,1,'2023-12-02 11:57:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(43,2,21,'D.ANAND','FDJ1080589',16,'VENKATARAMAIAH',13,40,NULL,NULL,'9876543210','House Number 2-129','House Number 2-129',1,1,'2023-12-02 12:00:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(44,2,22,'JEE IRMALA','IAX0010801',18,' JEE RAJANNA',14,51,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:03:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(45,2,23,'G RAJANNA','IAX0010694',16,'G CHINNABBA NAIDU',13,56,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:08:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(46,2,24,'G.MUDDUSVAMI','IAX2478725',16,'CHINNABBA',13,61,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:11:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(47,2,25,'JEE MUDDU SVAMI','IAX0787325',16,'JEE CHINNABBA',13,68,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:19:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(48,2,26,'G HIMABINDU','IAX0010819',18,'G CHINNABBA NAIDU',14,38,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:29:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(49,2,27,'G.PARVATAALU','FDJ2542827',18,'CHINNABBA',14,84,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:34:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(50,2,28,'G.NARAYANAMMA','IAX2478717',18,'MADU SVAMI',14,52,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:38:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(51,2,29,'P.SUJINI','FDJ2541050',18,'CHANDRASEHAR NAIDU',14,41,NULL,NULL,'9876543210','House Number 3-2','House Number 3-2',1,1,'2023-12-02 12:41:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(52,2,30,'P.CHANDERSEKHAR NAIDU','IAX2478733',16,'KONDAMNAYUDU',13,56,NULL,NULL,'9876543210','House Number 3-2','House Number 3-2',1,1,'2023-12-03 05:49:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(53,2,31,'P.JAYAMMA','IAX2478741',18,'NAGAPPA NAIDU',14,64,NULL,NULL,'9876543210','House Number 3-3','House Number 3-3',1,1,'2023-12-03 05:54:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(54,2,32,'P.NAGAPPA NAIDU','IAX2478758',16,'THIRUMALA NAIDU',13,79,NULL,NULL,'9876543210','House Number 3-3','House Number 3-3',1,1,'2023-12-03 06:04:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(55,2,33,'S.JAHARABI','IAX0322057',18,'IBRAHEEMSAB',14,66,NULL,NULL,'9876543210','House Number 3-8/A','House Number 3-8/A',1,1,'2023-12-03 06:11:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(56,2,34,'S DIL SHAD','IAX0322297',18,'S RIJVAN',14,36,NULL,NULL,'9876543210','House Number 3-8A','House Number 3-8A',1,1,'2023-12-03 06:16:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(57,2,35,'S.JARINABEE','IAX0322065',18,'MASTANSAB',14,40,NULL,NULL,'9876543210','House Number 3-9','House Number 3-9',1,1,'2023-12-03 06:29:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(58,2,36,'S SHAJANA','IAX0322313',18,'S MASTAN',14,34,NULL,NULL,'9876543210','House Number 3-9A','House Number 3-9A',1,1,'2023-12-03 06:40:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(59,2,37,'S GOHATA JAN','IAX0322321',18,'S AJA SAHEB',14,72,NULL,NULL,'9876543210','House Number 3-10','House Number 3-10',1,1,'2023-12-03 06:44:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(60,2,38,'S RASHEEDA','IAX0883744',18,'S KHADAR BASHA',14,48,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 06:48:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(61,2,39,'MASTANSAHEB','IAX2478774',16,'RAHIMANA SABA',13,46,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:01:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(62,2,40,'SHAIK HOSSAIN SAHEB','IAX2478782',16,'RAHIMANA SEBA',13,42,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:03:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(63,2,41,'ACE SHABANA','IAX0725820',18,'ACE HUSEN SAHEB',14,40,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:07:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(64,2,42,'REENAJ S','IAX1242940',16,'PEERAN SAB S',14,28,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:10:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(65,2,43,'MAHAMMAD GOUSE SHAIK','IAX1242957',16,'KHADAR BASHA SHAIK',13,29,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:14:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(66,2,44,'CHAND BASHA SHAIK','IAX1242973',16,'KHADAR BASHA SHAIK',13,31,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(67,2,45,'SHAIK KAHDERBASHA','IAX2478790',16,'HASANSAHEB',13,65,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:25:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(68,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:39:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(69,2,47,'S.BABJAN','IAX0787333',16,'KHADARBASHA',13,36,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(70,2,48,'ROSHINI SHAIK','IAX1879063',18,'DASTHAGIRI SAHEB SHAIK',14,23,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(71,2,49,'Ruksana Shaik','IAX1948496',16,'Kareemulla S',14,23,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(72,2,50,'PATHAN HOSSAIN KHAN','IAX2478808',16,'LALKHAN',13,68,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(73,2,51,'SAYYAD MAHABOOB','IAX2478816',16,'HOSSAINSAHEB',13,57,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(74,2,52,'SAYYAD ENTIYAZ','IAX2478824',16,'SHILARSAHEBA',13,40,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(75,2,53,'S RIJVAN','IAX0319087',16,'S SHIEL SAHEB',13,37,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(76,2,54,'S.ANARKALI','IAX0322073',18,'MAHAMAD RAFI',14,36,NULL,NULL,'9876543210','House Number 3-26/A','House Number 3-26/A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(77,2,55,'MOGAL MAHAMMADBEGE','IAX0685305',16,'KHAADARBEGE',13,59,NULL,NULL,'9876543210','House Number 3-39','House Number 3-39',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(78,2,56,'S DASTHIGIRI SAHEB','IAX0685289',16,'KHADHARSAHEB',13,54,NULL,NULL,'9876543210','House Number 3-57','House Number 3-57',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(79,2,57,'YASMEEN SHAIK','IAX1913847',16,'MASTHAN SAHEB SHAIK',14,24,NULL,NULL,'9876543210','House Number 3-62','House Number 3-62',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(80,2,58,'Swaroopa S','IAX1886282',16,'Ramachandra S',14,25,NULL,NULL,'9876543210','House Number 3-72','House Number 3-72',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(81,2,59,'ASHOK KUMAR J','IAX1471713',16,'KESAVULU J',13,38,NULL,NULL,'9876543210','House Number 3-72','House Number 3-72',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(82,2,60,'PRATAP B','IAX1471820',16,'SIDDAIAH B',13,29,NULL,NULL,'9876543210','House Number 3-75','House Number 3-75',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(83,2,61,'NAGALAKSHMI SUNDUPALLI','IAX1765619',18,'MURALI SUNDUPALLI',14,36,NULL,NULL,'9876543210','House Number 3-78','House Number 3-78',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(84,2,62,'ANIL KUMAR SAGINAM','IAX1243013',16,'NAGAIAH SAGINAM',13,31,NULL,NULL,'9876543210','House Number 3-91','House Number 3-91',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(85,2,63,'ANIL KUMAR S','IAX1471721',16,'SIDDAIAH S',13,28,NULL,NULL,'9876543210','House Number 3-96','House Number 3-96',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(86,2,64,'ALIVELU','IAX0321778',18,'RAMAIAH',14,70,NULL,NULL,'9876543210','House Number 4-83A','House Number 4-83A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(87,2,65,'S DIVYA','IAX1917038',16,'S ANAND',14,24,NULL,NULL,'9876543210','House Number 6-23','House Number 6-23',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(88,2,66,'NANDINI PACHARLLA','IAX1916295',18,'SURENDRA PACHARLLA',14,31,NULL,NULL,'9876543210','House Number 6-28','House Number 6-28',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(89,2,67,'P RAMESH BABU','IAX1660943',16,'P BHASKARA',13,28,NULL,NULL,'9876543210','House Number 6-29','House Number 6-29',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(90,2,68,'VENKATA SIDDAMMA J','IAX2049781',18,'VENKATA RAMANA J',14,61,NULL,NULL,'9876543210','House Number 6-30','House Number 6-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(91,2,69,'VANI K','IAX2049880',18,'RAJENDRA K',14,28,NULL,NULL,'9876543210','House Number 7-1','House Number 7-1',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(92,2,70,'BABU G','IAX2049906',16,'NAGALESU G',13,51,NULL,NULL,'9876543210','House Number 7-1','House Number 7-1',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(93,2,71,'KAVITHA JAMPE','IAX2041069',16,'VENKATARAMANA JAMPE',14,27,NULL,NULL,'9876543210','House Number 7-44','House Number 7-44',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(94,2,72,'Sjida Shaik','IAX1887199',16,'Syed Rafi S',14,25,NULL,NULL,'9876543210','House Number 9-14','House Number 9-14',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(95,2,73,'THoheeda SYEAD','IAX3164902',16,'SYEAD RAFI SYEAD',14,19,NULL,NULL,'9876543210','House Number 9-14','House Number 9-14',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(96,2,74,'Musthafa S','IAX1886019',16,'Raheman Saheb S SHAIK',13,65,NULL,NULL,'9876543210','House Number 9-18','House Number 9-18',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(97,2,75,'MOHAMMED YASEER HUSSAIN','IAX1553917',16,'MASTHAN SAHEB SHAIK',13,28,NULL,NULL,'9876543210','House Number 9-26','House Number 9-26',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(98,2,76,'Riyaze Shaik','IAX1886324',16,'Azeem Saheb S',13,41,NULL,NULL,'9876543210','House Number 9-30','House Number 9-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(99,2,77,'Haseena Shaik','IAX1885938',18,'Hidai Tulla S',14,37,NULL,NULL,'9876543210','House Number 9-30','House Number 9-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(100,2,78,'Hussen Bi Shaik','IAX1887363',18,'Athaulla S',14,58,NULL,NULL,'9876543210','House Number 9-38','House Number 9-38',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(101,2,79,'A VENKATA RAMANA RAO','IAX1840065',16,'A SUDHAKAR',13,40,NULL,NULL,'9876543210','House Number 9-598','House Number 9-598',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(102,2,80,'GOPI KRISHNA THOTA','IAX1840073',16,'RAMARAO THOTA',13,27,NULL,NULL,'9876543210','House Number 11-212A','House Number 11-212A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(103,2,81,'M KUSUMA KUMARI','IAX1839125',18,'T VENKATESH',14,30,NULL,NULL,'9876543210','House Number 12-464','House Number 12-464',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(104,2,82,'BUKKE GANESH NAIK','IAX1839521',16,'BUKKE BALAY NAIK',13,29,NULL,NULL,'9876543210','House Number 21-12-19','House Number 21-12-19',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(105,2,83,'BEEBIJAN PATAN','IAX2246577',16,'MADAR KHAN PATAN',14,66,NULL,NULL,'9876543210','House Number 22-9','House Number 22-9',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(106,2,84,'M PUSHPA','IAX1839893',18,'M VENKATAMUNI',14,47,NULL,NULL,'9876543210','House Number 22-9-26/B','House Number 22-9-26/B',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(107,2,85,'Chandrasekar J','IAX1916139',16,'Nagaraju J',13,26,NULL,NULL,'9876543210','House Number 1012','House Number 1012',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(108,2,86,'Arpana Bhide','IAX1820232',18,'Narendra H',14,42,NULL,NULL,'9876543210','House Number 102','House Number 102',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(109,2,87,'HEMALATHA G','IAX1655976',18,'RAMESH G',14,27,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number KARNAM VARI PALLI',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(110,2,88,'KASIM BE S','IAX1655950',18,'KAJA SAHEB S',14,59,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number KARNAM VARI PALLI',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(111,2,89,'HARATHI G','IAX1655968',18,'MUNI KRISHNA G',14,32,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(112,2,90,'PAVAN V','IAX1655943',16,'VENKATA SIDHULU V',13,29,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(124,2,91,'SUHASHINI G','IAX1655984',16,'CHINNA NAGAIAH G',14,29,NULL,NULL,'9988776655','House Number KOTHA MADIGA PALLI','House Number KOTHA MADIGA PALLI',1,1,'2023-12-07 06:10:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0,NULL,NULL,NULL,NULL),(125,2,92,'SOFIA SHAIK','IAX3184819',18,'SADIQ SHAIK',14,26,NULL,NULL,'9987776655','House Number 00','House Number 00',1,1,'2023-12-07 06:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(126,2,93,'NASAR SHAIK','IAX3195906',16,'KAREEMULLA SHAIK',13,20,NULL,NULL,'9988076655','House Number 00','House Number 00',1,1,'2023-12-07 06:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(127,2,94,'KARISHMA SYED','IAX3106218',16,'SYED BASHA SHAIK',14,25,NULL,NULL,'9987776644','House Number 1-0','House Number 1-0',1,1,'2023-12-07 06:39:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(128,2,96,'SHAHNAZ SHAIK','IAX3121100',18,'NIYAMAT BASHA SHAIK',14,48,NULL,NULL,'9911223330','House Number 1-1','House Number 1-1',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(129,2,97,'RESHMA PATHAN','IAX0989444',18,'BEEBI PATHAN',14,33,NULL,NULL,'9948076655','House Number 1-3','House Number 1-3',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(130,2,98,'JAVED KHAN PATHAN','IAX0989584',16,'RAHAMATULLA KHAN PATHAN',14,20,NULL,NULL,'9981776644','House Number 1-14','House Number 1-14',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(131,2,99,'ASMA SHAIK','IAX3196029',16,'ALLAUDDIN SHAIK',13,26,NULL,NULL,'9982776644','House Number 1-17','House Number 1-17',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(132,2,100,'HASAN BASHA SHAIK','IAX3200557',16,'CHAND BASHA SHAIK',13,32,NULL,NULL,'9983776644','House Number 1-5','House Number 1-5',1,1,'2023-12-07 07:05:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(133,2,103,'SUMALATHA S','IAX1509340',18,'RAJENDRA S',14,34,NULL,NULL,'9011223330','House Number 2-55','House Number 2-55',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(134,2,104,'S MAHAMMAD MAKAYINUDDEN','IAX0883769',16,'S MOULANA ABDUL',13,47,NULL,NULL,'9148076655','House Number 3-','House Number 3-',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(135,2,105,'S ISARATH BOO','IAX0883777',18,'S MAHAMMAD MAYINUDDEN',14,43,NULL,NULL,'9281776644','House Number 3.','House Number 3.',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(136,2,106,'S NOORUJAN','IAX0322107',18,'INTIAJ',14,38,NULL,NULL,'9382776644','House Number 3/16','House Number 3/16',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(137,2,107,'S ASIA','FDJ2541456',18,'RAFFEE',14,40,NULL,NULL,'9483776644','House Number 3/18C','House Number 3/18C',1,1,'2023-12-07 07:47:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(138,2,108,'S MUNNI','FDJ2541464',18,'KHARIMULLA',14,40,NULL,NULL,'9011223331','House Number 3/25','House Number 3/25',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(139,2,109,'MIRABHA','FDJ2541605',18,'IMANKHASEEM',14,41,NULL,NULL,'9148076652','House Number 3/62A','House Number 3/62A',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(140,2,110,'Shaik.Shenshada B','IAX2478832',18,'IbraheemSaheb',14,46,NULL,NULL,'9281776644','House Number 3-9','House Number 3-9',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(141,2,111,'S KADIRUNNISHA','IAX0322305',18,'S MASTAN',14,35,NULL,NULL,'9382776444','House Number 3-9','House Number 3-9',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(142,2,112,'Shek Halimabi','FDJ2542835',18,'Vusen Saheb',14,89,NULL,NULL,'9483776645','House Number 3-10','House Number 3-10',1,1,'2023-12-07 08:16:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(143,2,113,'S BADHULLA','IAX0184838',16,'S KHADAR BASHA',13,35,NULL,NULL,'6011223331','House Number 3-13','House Number 3-13',1,1,'2023-12-07 08:37:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(144,2,114,'Sayyad.Mahaboob Bhi','IAX2478840',18,'Shilara Saheb',14,64,NULL,NULL,'6148076652','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:37:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(148,2,115,'PATHANI.JARINABEE','IAX2478865',18,'VUSSENA KHAN',14,40,NULL,NULL,'6281776644','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:49:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(149,2,116,'Sayyad Gulab Jan','IAX2478857',18,'Mahaboob Bhasha',14,54,NULL,NULL,'6382776444','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:49:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(150,2,117,'S RAFIYABEE','IAX0322123',18,'MAHABOOBABEG',14,47,NULL,NULL,'6483776645','House Number 3-16','House Number 3-16',1,1,'2023-12-07 08:49:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(151,2,118,'SHAIK MOKTIARA BEE','IAX2478881',18,'MUSTAPHA',14,54,NULL,NULL,'6981776644','House Number 3-18','House Number 3-18',1,1,'2023-12-07 09:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(152,2,119,'SAYYAD PYARIJAN','FDJ2541829',18,'KARIMSAHEB',14,64,NULL,NULL,'6982776444','House Number 3-18','House Number 3-18',1,1,'2023-12-07 09:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(153,2,120,'SAYYAD RAFFEE','IAX0184572',16,'KARIMSAHEB',13,40,NULL,NULL,'6983776645','House Number 3-18','House Number 3-18',1,1,'2023-12-07 09:09:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(154,2,121,'S VASEEM AKRAM','IAX0617431',16,'S MUSTAFA SAHEB',13,37,NULL,NULL,'6981776641','House Number 3-18','House Number 3-18',1,1,'2023-12-07 10:41:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(155,2,122,'ACE SAMEERA','IAX0321679',18,'ACE SHABBAR',14,34,NULL,NULL,'6982776442','House Number 3-18','House Number 3-18',1,1,'2023-12-07 10:41:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(156,2,123,'P.NOORJAHAN BEGAM','FDJ2541449',18,'GAVUS KHAN',14,54,NULL,NULL,'6983776643','House Number 3-23','House Number 3-23',1,1,'2023-12-07 10:41:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(157,2,124,'P SHAKEELA','IAX0185819',18,'P GAUSKHAN',14,50,NULL,NULL,'6981576641','House Number 3-23','House Number 3-23',1,1,'2023-12-07 10:56:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(158,2,125,'PATAN GOUSKHAN PATAN GOUSKHAN','IAX2478915',16,'VI MADAR SAHEB',13,50,NULL,NULL,'6972776442','House Number 3-23','House Number 3-23',1,1,'2023-12-07 10:56:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(159,2,126,'VI ABDUL PAPURKHAN','IAX0553008',18,'DASTAGIRISAHEB',14,56,NULL,NULL,'6983766643','House Number 3-24','House Number 3-24',1,1,'2023-12-07 10:56:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(160,2,127,'SHEKPYARIJANA','IAX2478923',16,'MADARKHAN',13,59,NULL,NULL,'6981576441','House Number 3-23','House Number 3-23',1,1,'2023-12-07 11:04:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(161,2,128,'EM RAJIYA','IAX0725796',18,'EM MAHAMMADA BASHA',14,50,NULL,NULL,'6972876442','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:04:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(162,2,129,'SHEK DISAD BEGAM','FDJ2541738',18,'MAHABOOBBASHA',14,50,NULL,NULL,'6183766643','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:04:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(163,2,130,'SHAIK MASTANSAHEB','IAX2478931',16,'DASTAGIRISAHEB',13,59,NULL,NULL,'7981576441','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:47:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(164,2,131,'SHAIK MAHABOOBBASHA','IAX2478949',16,'DASTAGIRISAHEB',13,60,NULL,NULL,'7972876442','House Number 3-24','House Number 3-24',1,1,'2023-12-07 11:47:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(165,2,132,'SHAIK NOUJIA BEE','IAX2478956',18,'YISU SAHEB',14,69,NULL,NULL,'7183766643','House Number 3-25','House Number 3-25',1,1,'2023-12-07 11:47:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(166,2,133,'SHAIK DILSHAD BEE','IAX2478964',18,'MASTANA SAHEB',14,47,NULL,NULL,'7881576441','House Number 3-25','House Number 3-25',1,1,'2023-12-07 13:01:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(167,2,134,'KAREEMULLAH','IAX2478972',16,'ISUSAHEBA',13,42,NULL,NULL,'7972876442','House Number 3-25','House Number 3-25',1,1,'2023-12-07 13:01:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(168,2,135,'SHAIK MASTANI','IAX2478998',18,'ANWARBASHA',14,40,NULL,NULL,'7183711643','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:01:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(169,2,136,'S HAKEEM BSHAH','IAX0725317',16,'S ABDULRAZAQ',13,45,NULL,NULL,'7111576441','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:11:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(170,2,137,'ANWARBASHA','IAX2479012',16,'ABDULRAJAK',13,44,NULL,NULL,'7971176442','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:11:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(171,2,138,'ACE GOUSUNNI','IAX0321653',18,'ACE',14,35,NULL,NULL,'7183711211','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:11:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(172,2,139,'S.ZAKIRHUSSEN','IAX0319186',16,'S ABDULRAZAQ',13,55,NULL,NULL,'7111576111','House Number 3-26','House Number 3-26',1,1,'2023-12-07 13:22:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(173,2,140,'SHEK PARVEENA BEE','FDJ2541498',18,'DASTAGIRISAHEB',14,46,NULL,NULL,'7971176112','House Number 3-27','House Number 3-27',1,1,'2023-12-07 13:22:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(174,2,141,'S ANARKALI','IAX0787069',18,'S MAHMADRAFI',14,45,NULL,NULL,'7193711211','House Number 3-27','House Number 3-27',1,1,'2023-12-07 13:22:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(175,2,142,'NOORULLA','IAX2479020',16,'QADERSAHEB',13,51,NULL,NULL,'7111576122','House Number 3-27','House Number 3-27',1,1,'2023-12-07 14:02:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(176,2,143,'SHAMEER SAHEB','IAX2479038',16,'KAHDER SAHEB',13,62,NULL,NULL,'7971146112','House Number 3-27','House Number 3-27',1,1,'2023-12-07 14:02:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(177,2,144,'SHEK SHADA DEE','FDJ2541746',18,'SHAMIR SAHEB',14,60,NULL,NULL,'8193711211','House Number 3-28','House Number 3-28',1,1,'2023-12-07 14:02:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(178,2,145,'ABDULRAHIMANA','IAX2479046',16,'DASTAGIRISAHEB',13,66,NULL,NULL,'7122576122','House Number 3-29','House Number 3-29',1,1,'2023-12-07 14:17:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(179,2,146,'DASTHAGIRI SAHEB SHAIK','IAX1088450',16,'ABDUL RAHEMAN SHAIK',13,32,NULL,NULL,'7897114611','House Number 3-29','House Number 3-29',1,1,'2023-12-07 14:17:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(180,2,147,'SHAIK NASEEB JAN','IAX2479053',18,'ALLABAKSU',14,67,NULL,NULL,'8193711411','House Number 3-30','House Number 3-30',1,1,'2023-12-07 14:17:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(181,2,148,'TIE.MASTAN SAHEB','FDJ2539500',16,'MABUSAHEBA',13,44,NULL,NULL,'7133576122','House Number 3-34','House Number 3-34',1,1,'2023-12-08 07:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(182,2,149,'S.RAJANNI BEE','IAX2480127',18,'MAHAMMAD BEG',14,67,NULL,NULL,'7897114612','House Number 3-35','House Number 3-35',1,1,'2023-12-08 07:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(183,2,150,'ACE SHARFUN','IAX0321661',18,'ACE ABDHUL',14,65,NULL,NULL,'8493711411','House Number 3-36','House Number 3-36',1,1,'2023-12-08 07:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(184,2,151,'M.MASTANBEG','IAX0318568',16,'MAHAMADBEG',13,36,NULL,NULL,'7144576122','House Number 3-36/A','House Number 3-36/A',1,1,'2023-12-08 07:52:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(185,2,152,'G KIRAN KUMAR','IAX0883728',16,'G CHANDRAIAH',13,37,NULL,NULL,'7897214612','House Number 3-37','House Number 3-37',1,1,'2023-12-08 07:52:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL),(186,2,153,'G.NAGARATHNA','IAX2480143',18,'CHANDRAIAH',14,54,NULL,NULL,'8493766411','House Number 3-37','House Number 3-37',1,1,'2023-12-08 07:52:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 22:03:06
