-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `contact_interest`
--

DROP TABLE IF EXISTS `contact_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_interest` (
  `contact_id_i` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL,
  KEY `contact_id_i_idx` (`contact_id_i`),
  KEY `interest_id_idx` (`interest_id`),
  CONSTRAINT `contact_id_i` FOREIGN KEY (`contact_id_i`) REFERENCES `my_contacts` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `interest_id` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`interest_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_interest`
--

LOCK TABLES `contact_interest` WRITE;
/*!40000 ALTER TABLE `contact_interest` DISABLE KEYS */;
INSERT INTO `contact_interest` VALUES (1,1),(1,10),(2,13),(3,6),(3,12),(4,6),(4,7),(5,9),(6,3),(6,4),(7,5),(8,1),(9,9),(9,11),(10,1),(10,2);
/*!40000 ALTER TABLE `contact_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_seeking`
--

DROP TABLE IF EXISTS `contact_seeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_seeking` (
  `contact_id_s` int(11) NOT NULL,
  `seeking_id` int(11) NOT NULL,
  KEY `contact_id_s_idx` (`contact_id_s`),
  KEY `seeking_id_idx` (`seeking_id`),
  CONSTRAINT `contact_id_s` FOREIGN KEY (`contact_id_s`) REFERENCES `my_contacts` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `seeking_id` FOREIGN KEY (`seeking_id`) REFERENCES `seeking` (`seeking_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_seeking`
--

LOCK TABLES `contact_seeking` WRITE;
/*!40000 ALTER TABLE `contact_seeking` DISABLE KEYS */;
INSERT INTO `contact_seeking` VALUES (1,5),(1,2),(2,6),(3,6),(4,3),(5,4),(6,6),(7,1),(8,3),(9,2),(10,4);
/*!40000 ALTER TABLE `contact_seeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `interest_id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(45) NOT NULL,
  PRIMARY KEY (`interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'acting'),(2,'dancing'),(3,'collecting books'),(4,'scuba diving'),(5,'cooking'),(6,'fishing'),(7,'drinking'),(8,'kayaking'),(9,'RPG'),(10,'reptiles'),(11,'anime'),(12,'sailing'),(13,'women');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_contacts`
--

DROP TABLE IF EXISTS `my_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `birthday` date NOT NULL,
  `prof_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `zip_code` int(11) NOT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `prof_id_idx` (`prof_id`),
  KEY `status_id_idx` (`status_id`),
  KEY `zip_code_idx` (`zip_code`),
  CONSTRAINT `prof_id` FOREIGN KEY (`prof_id`) REFERENCES `profession` (`prof_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `zip_code` FOREIGN KEY (`zip_code`) REFERENCES `zip_code` (`zip_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_contacts`
--

LOCK TABLES `my_contacts` WRITE;
/*!40000 ALTER TABLE `my_contacts` DISABLE KEYS */;
INSERT INTO `my_contacts` VALUES (1,'Anderson','Jillian','jill_aderson@breackneckpizza.com','F','1980-09-05',12,7,10000),(2,'Kenton ','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10',6,5,7000),(3,'McGavin','Darrin','captainlove@headfirsttheater.com','M','1966-01-23',5,7,11000),(4,'Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28',8,6,40000),(5,'Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10',10,6,20000),(6,'Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01',3,6,9000),(7,'Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03',13,5,7000),(8,'Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19',14,6,7000),(9,'Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23',4,4,30000),(10,'Spatner','John','jpoet@objectville.net','M','1963-04-18',7,6,8000);
/*!40000 ALTER TABLE `my_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profession` (
  `prof_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession` varchar(45) NOT NULL,
  PRIMARY KEY (`prof_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'Artist'),(2,'baker'),(3,'Bookshop Owner'),(4,'Computer Programmer'),(5,'Cruise Ship Captain'),(6,'Manager'),(7,'Salesman'),(8,'Software Sales'),(9,'Student'),(10,'System Administrator'),(11,'Teacher'),(12,'Technical Writer');
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeking`
--

DROP TABLE IF EXISTS `seeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seeking` (
  `seeking_id` int(11) NOT NULL AUTO_INCREMENT,
  `seeking` varchar(45) NOT NULL,
  PRIMARY KEY (`seeking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeking`
--

LOCK TABLES `seeking` WRITE;
/*!40000 ALTER TABLE `seeking` DISABLE KEYS */;
INSERT INTO `seeking` VALUES (1,'Employment'),(2,'Friends'),(3,'new job'),(4,'nothing'),(5,'relationship'),(6,'women for relationship'),(7,'women to date'),(8,'friends');
/*!40000 ALTER TABLE `seeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (4,'committed'),(5,'divorced'),(6,'married'),(7,'single');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip_code`
--

DROP TABLE IF EXISTS `zip_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code` (
  `zip_code` int(11) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`zip_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip_code`
--

LOCK TABLES `zip_code` WRITE;
/*!40000 ALTER TABLE `zip_code` DISABLE KEYS */;
INSERT INTO `zip_code` VALUES (7000,'San Fran','CA'),(8000,'Woodstock','NY'),(9000,'Mountain','CA'),(10000,'Palo Alto','CA'),(11000,'San Diego','CA'),(20000,'Princeton','NJ'),(30000,'New York City','NY'),(40000,'Dallas','TX'),(50000,'Seattle','WA'),(60000,'San Jose','CA');
/*!40000 ALTER TABLE `zip_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-27 22:11:28
