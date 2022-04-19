-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: genetic
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `funder`
--

DROP TABLE IF EXISTS `funder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funder` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `amnt_funded` bigint NOT NULL,
  `date_of_funding` date NOT NULL,
  PRIMARY KEY (`transaction_id`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `funder_ibfk_1` FOREIGN KEY (`id`) REFERENCES `people` (`people_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funder`
--

LOCK TABLES `funder` WRITE;
/*!40000 ALTER TABLE `funder` DISABLE KEYS */;
/*!40000 ALTER TABLE `funder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intern`
--

DROP TABLE IF EXISTS `intern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intern` (
  `iid` tinyint NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `stipend` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`),
  CONSTRAINT `intern_ibfk_1` FOREIGN KEY (`id`) REFERENCES `people` (`people_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intern`
--

LOCK TABLES `intern` WRITE;
/*!40000 ALTER TABLE `intern` DISABLE KEYS */;
INSERT INTO `intern` VALUES (1,29,123),(3,32,64),(4,36,NULL);
/*!40000 ALTER TABLE `intern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `involves`
--

DROP TABLE IF EXISTS `involves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `involves` (
  `rid` int NOT NULL,
  `people_id` int NOT NULL,
  PRIMARY KEY (`rid`,`people_id`),
  KEY `people_id` (`people_id`),
  CONSTRAINT `involves_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `research` (`rid`) ON DELETE CASCADE,
  CONSTRAINT `involves_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `people` (`people_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `involves`
--

LOCK TABLES `involves` WRITE;
/*!40000 ALTER TABLE `involves` DISABLE KEYS */;
INSERT INTO `involves` VALUES (1,2),(2,3),(2,4),(1,6),(1,7),(1,10),(2,11),(1,13),(2,15),(2,16),(2,17),(2,18),(2,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36);
/*!40000 ALTER TABLE `involves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `locality` text,
  `city` text,
  `zip` int DEFAULT NULL,
  `state` text,
  `country` text,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`id`) REFERENCES `people` (`people_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (2,3,'guntur','Hyderabad',500079,'Telangana','India'),(3,13,'guntur','Hyderabad',500079,'Telangana','India'),(4,26,'hyderabad','hyderabad',123,'andhra','India');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `people_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (2,'nee',22,'male'),(3,'neee',21,'male'),(4,'eee',21,'male'),(6,'ironman7017',22,'male'),(7,'neeraj',22,'male'),(10,'slfn',22,'male'),(11,'aaaaaaa',30,'male'),(13,'shahid',22,'male'),(15,'gudivada',22,'female'),(16,'venkata',23,'male'),(17,'abhinav',21,'male'),(18,'sunny',20,'male'),(26,'rakesh',22,'male'),(27,'pranay',22,'male'),(28,'pranay',22,'male'),(29,'ironman7017',22,'male'),(30,'pranay_katike',22,'male'),(31,'ironma',22,'male'),(32,'neeraj',22,'male'),(33,'newintern',22,'male'),(34,'newintern',22,'male'),(35,'newintern',22,'male'),(36,'prudvi',21,'male');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research`
--

DROP TABLE IF EXISTS `research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `budget` bigint NOT NULL,
  `team_name` text NOT NULL,
  `start_date` date NOT NULL,
  `papers_published` int NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research`
--

LOCK TABLES `research` WRITE;
/*!40000 ALTER TABLE `research` DISABLE KEYS */;
INSERT INTO `research` VALUES (1,353,'uhuju','2012-10-02',4),(2,2000,'finishers','1999-10-09',2);
/*!40000 ALTER TABLE `research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `sam_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `date_col` date NOT NULL,
  `body_part` text NOT NULL,
  PRIMARY KEY (`sam_id`),
  KEY `id` (`id`),
  CONSTRAINT `sample_ibfk_1` FOREIGN KEY (`id`) REFERENCES `people` (`people_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES (1,13,'2005-09-20','Shoulder'),(2,3,'2022-10-13','spine');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scientist`
--

DROP TABLE IF EXISTS `scientist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scientist` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `specialization` text NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  CONSTRAINT `scientist_ibfk_1` FOREIGN KEY (`id`) REFERENCES `people` (`people_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scientist`
--

LOCK TABLES `scientist` WRITE;
/*!40000 ALTER TABLE `scientist` DISABLE KEYS */;
INSERT INTO `scientist` VALUES (1,6,'Genetics ',1922),(3,10,'Genetics ',25364);
/*!40000 ALTER TABLE `scientist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence` (
  `seq_id` int NOT NULL AUTO_INCREMENT,
  `sam_id` int NOT NULL,
  `length_seq` int NOT NULL,
  `dna_seq` text NOT NULL,
  `genome_region` text NOT NULL,
  PRIMARY KEY (`seq_id`),
  KEY `sam_id` (`sam_id`),
  CONSTRAINT `sequence_ibfk_1` FOREIGN KEY (`sam_id`) REFERENCES `sample` (`sam_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES (1,2,22,'AGCTTACAGATCATG','PRO-ENV'),(2,1,22,'AGCTTACAGATCATG','pot');
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-19 23:52:28
