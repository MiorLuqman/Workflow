-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aabdemo
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.16-MariaDB

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
-- Table structure for table `mesb_workflow_group_rule`
--

DROP TABLE IF EXISTS `mesb_workflow_group_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesb_workflow_group_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_from_to_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesb_workflow_group_rule`
--

LOCK TABLES `mesb_workflow_group_rule` WRITE;
/*!40000 ALTER TABLE `mesb_workflow_group_rule` DISABLE KEYS */;
INSERT INTO `mesb_workflow_group_rule` VALUES (1,1,1),(2,2,4),(3,3,1);
/*!40000 ALTER TABLE `mesb_workflow_group_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesb_workflow_module`
--

DROP TABLE IF EXISTS `mesb_workflow_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesb_workflow_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `workflow_name` text COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesb_workflow_module`
--

LOCK TABLES `mesb_workflow_module` WRITE;
/*!40000 ALTER TABLE `mesb_workflow_module` DISABLE KEYS */;
INSERT INTO `mesb_workflow_module` VALUES (1,'Promo',1),(2,'Banner',2),(3,'Language',3);
/*!40000 ALTER TABLE `mesb_workflow_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesb_workflow_rule_workflow`
--

DROP TABLE IF EXISTS `mesb_workflow_rule_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesb_workflow_rule_workflow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesb_workflow_rule_workflow`
--

LOCK TABLES `mesb_workflow_rule_workflow` WRITE;
/*!40000 ALTER TABLE `mesb_workflow_rule_workflow` DISABLE KEYS */;
INSERT INTO `mesb_workflow_rule_workflow` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,3);
/*!40000 ALTER TABLE `mesb_workflow_rule_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesb_workflow_status`
--

DROP TABLE IF EXISTS `mesb_workflow_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesb_workflow_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_type` text COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesb_workflow_status`
--

LOCK TABLES `mesb_workflow_status` WRITE;
/*!40000 ALTER TABLE `mesb_workflow_status` DISABLE KEYS */;
INSERT INTO `mesb_workflow_status` VALUES (1,'Pending',1),(2,'In Progress',2),(3,'Approved',3);
/*!40000 ALTER TABLE `mesb_workflow_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesb_workflow_status_rule`
--

DROP TABLE IF EXISTS `mesb_workflow_status_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesb_workflow_status_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `statusfrom_id` int(11) NOT NULL,
  `statusto_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `display_rule` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesb_workflow_status_rule`
--

LOCK TABLES `mesb_workflow_status_rule` WRITE;
/*!40000 ALTER TABLE `mesb_workflow_status_rule` DISABLE KEYS */;
INSERT INTO `mesb_workflow_status_rule` VALUES (1,1,0,0,'Rule A'),(2,2,0,0,'Rule B'),(3,3,0,0,'Rule C');
/*!40000 ALTER TABLE `mesb_workflow_status_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesb_workflow_statusto`
--

DROP TABLE IF EXISTS `mesb_workflow_statusto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesb_workflow_statusto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_to_type` text COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesb_workflow_statusto`
--

LOCK TABLES `mesb_workflow_statusto` WRITE;
/*!40000 ALTER TABLE `mesb_workflow_statusto` DISABLE KEYS */;
INSERT INTO `mesb_workflow_statusto` VALUES (1,'Approved',1),(2,'In Progress',2);
/*!40000 ALTER TABLE `mesb_workflow_statusto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesb_workflow_statusto_rule`
--

DROP TABLE IF EXISTS `mesb_workflow_statusto_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesb_workflow_statusto_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_from_id` int(11) NOT NULL,
  `status_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesb_workflow_statusto_rule`
--

LOCK TABLES `mesb_workflow_statusto_rule` WRITE;
/*!40000 ALTER TABLE `mesb_workflow_statusto_rule` DISABLE KEYS */;
INSERT INTO `mesb_workflow_statusto_rule` VALUES (1,1,2),(2,1,3),(3,2,3),(4,3,1),(5,3,2);
/*!40000 ALTER TABLE `mesb_workflow_statusto_rule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-13 11:35:05
