-- MySQL dump 10.14  Distrib 5.5.44-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: idserver
-- ------------------------------------------------------
-- Server version	10.1.23-MariaDB

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
-- Current Database: `idserver`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `idserver` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `idserver`;

--
-- Table structure for table `MonitorDataSave_cpuload`
--

DROP TABLE IF EXISTS `MonitorDataSave_cpuload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_cpuload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Load01` varchar(10) NOT NULL,
  `Load05` varchar(10) NOT NULL,
  `Load15` varchar(10) NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `Host` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_cpuload`
--

LOCK TABLES `MonitorDataSave_cpuload` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_cpuload` DISABLE KEYS */;
INSERT INTO `MonitorDataSave_cpuload` VALUES (1,'0.21','0.29','0.34','2017-05-08 12:25:27','127.0.0.1'),(2,'0.06','0.21','0.31','2017-05-08 12:27:27','127.0.0.1'),(3,'0.08','0.18','0.29','2017-05-08 12:28:55','127.0.0.1'),(4,'0.05','0.16','0.28','2017-05-08 12:29:28','127.0.0.1'),(5,'0.09','0.16','0.28','2017-05-08 12:30:00','127.0.0.1'),(6,'0.46','0.26','0.30','2017-05-08 12:30:55','127.0.0.1'),(7,'0.62','0.31','0.32','2017-05-08 12:31:29','127.0.0.1'),(8,'0.60','0.33','0.33','2017-05-08 12:32:01','127.0.0.1'),(9,'0.34','0.31','0.32','2017-05-08 12:32:56','127.0.0.1'),(10,'0.41','0.32','0.32','2017-05-08 12:33:29','127.0.0.1'),(11,'0.56','0.37','0.33','2017-05-08 12:34:01','127.0.0.1'),(12,'0.41','0.36','0.33','2017-05-08 12:34:57','127.0.0.1'),(13,'0.30','0.34','0.33','2017-05-08 12:35:30','127.0.0.1'),(14,'0.22','0.32','0.32','2017-05-08 12:36:02','127.0.0.1'),(15,'0.60','0.42','0.35','2017-05-08 12:36:57','127.0.0.1'),(16,'0.36','0.38','0.34','2017-05-08 12:37:30','127.0.0.1'),(17,'0.34','0.37','0.34','2017-05-08 12:38:02','127.0.0.1'),(18,'0.25','0.35','0.33','2017-05-08 12:38:58','127.0.0.1'),(19,'0.22','0.33','0.33','2017-05-08 12:39:31','127.0.0.1'),(20,'0.23','0.33','0.32','2017-05-08 12:40:03','127.0.0.1'),(21,'0.09','0.27','0.31','2017-05-08 12:40:58','127.0.0.1'),(22,'0.30','0.30','0.32','2017-05-08 12:41:31','127.0.0.1'),(23,'0.24','0.29','0.31','2017-05-08 12:42:03','127.0.0.1'),(24,'0.22','0.29','0.31','2017-05-08 12:42:59','127.0.0.1'),(25,'0.12','0.25','0.30','2017-05-08 12:43:32','127.0.0.1'),(26,'0.14','0.25','0.30','2017-05-08 12:44:04','127.0.0.1'),(27,'0.33','0.28','0.31','2017-05-08 12:44:59','127.0.0.1'),(28,'0.34','0.28','0.31','2017-05-08 12:45:33','127.0.0.1'),(29,'0.31','0.29','0.31','2017-05-08 12:46:05','127.0.0.1'),(30,'0.28','0.28','0.31','2017-05-08 12:47:00','127.0.0.1'),(31,'0.28','0.28','0.31','2017-05-08 12:47:33','127.0.0.1'),(32,'0.36','0.30','0.32','2017-05-08 12:48:05','127.0.0.1'),(33,'0.34','0.30','0.32','2017-05-08 12:49:01','127.0.0.1'),(34,'0.33','0.30','0.32','2017-05-08 12:49:34','127.0.0.1'),(35,'0.25','0.29','0.31','2017-05-08 12:50:06','127.0.0.1'),(36,'0.38','0.33','0.33','2017-05-08 12:51:01','127.0.0.1'),(37,'0.59','0.38','0.34','2017-05-08 12:51:35','127.0.0.1'),(38,'0.66','0.42','0.36','2017-05-08 12:52:07','127.0.0.1'),(39,'0.61','0.46','0.37','2017-05-08 12:53:02','127.0.0.1'),(40,'0.17','0.43','0.49','2017-05-15 07:08:18','127.0.0.1'),(41,'0.10','0.38','0.47','2017-05-15 07:08:52','127.0.0.1'),(42,'0.06','0.35','0.45','2017-05-15 07:09:24','127.0.0.1'),(43,'0.02','0.29','0.43','2017-05-15 07:10:19','127.0.0.1'),(44,'0.01','0.26','0.41','2017-05-15 07:10:52','127.0.0.1'),(45,'0.01','0.23','0.40','2017-05-15 07:11:24','127.0.0.1'),(46,'0.00','0.19','0.38','2017-05-15 07:12:20','127.0.0.1'),(47,'0.00','0.00','0.00','2017-05-26 00:03:05','123.207.86.123'),(48,'0.00','0.00','0.00','2017-05-26 00:28:03','119.29.205.114'),(49,'0.00','0.00','0.00','2017-05-26 00:28:36','119.29.205.114'),(50,'0.00','0.00','0.00','2017-05-26 00:29:08','119.29.205.114'),(51,'0.00','0.00','0.00','2017-05-26 00:30:03','119.29.205.114'),(52,'0.00','0.00','0.00','2017-05-26 00:30:37','119.29.205.114'),(53,'0.00','0.00','0.00','2017-05-26 00:31:09','119.29.205.114'),(54,'0.00','0.00','0.00','2017-05-26 00:32:04','119.29.205.114'),(55,'0.00','0.00','0.00','2017-05-26 00:32:37','119.29.205.114'),(56,'0.00','0.00','0.00','2017-05-26 00:33:09','119.29.205.114'),(57,'0.10','0.03','0.01','2017-05-26 00:34:04','119.29.205.114'),(58,'0.06','0.03','0.00','2017-05-26 00:34:37','119.29.205.114'),(59,'0.03','0.02','0.00','2017-05-26 00:35:10','119.29.205.114'),(60,'0.01','0.02','0.00','2017-05-26 00:36:05','119.29.205.114'),(61,'0.01','0.01','0.00','2017-05-26 00:36:38','119.29.205.114'),(62,'0.05','0.03','0.00','2017-05-26 00:37:10','119.29.205.114'),(63,'0.02','0.02','0.00','2017-05-26 00:38:05','119.29.205.114'),(64,'0.01','0.02','0.00','2017-05-26 00:38:38','119.29.205.114'),(65,'0.00','0.01','0.00','2017-05-26 00:39:11','119.29.205.114'),(66,'0.00','0.01','0.00','2017-05-26 00:40:06','119.29.205.114'),(67,'0.00','0.01','0.00','2017-05-26 00:40:39','119.29.205.114'),(68,'0.00','0.00','0.00','2017-05-26 00:41:11','119.29.205.114'),(69,'0.00','0.00','0.00','2017-05-26 00:42:06','119.29.205.114'),(70,'0.61','0.47','0.29','2017-07-03 08:58:01','127.0.0.1'),(71,'0.24','0.18','0.21','2017-07-03 09:21:40','127.0.0.1'),(72,'0.14','0.16','0.21','2017-07-03 09:22:13','127.0.0.1'),(73,'0.13','0.16','0.21','2017-07-03 09:22:45','127.0.0.1'),(74,'0.20','0.18','0.21','2017-07-03 09:23:40','127.0.0.1'),(75,'0.12','0.16','0.20','2017-07-03 09:24:13','127.0.0.1'),(76,'0.18','0.18','0.21','2017-07-03 09:24:46','127.0.0.1'),(77,'0.37','0.24','0.23','2017-07-03 09:25:29','127.0.0.1'),(78,'0.21','0.22','0.22','2017-07-03 09:26:02','127.0.0.1'),(79,'0.45','0.27','0.24','2017-07-03 09:26:34','127.0.0.1'),(80,'0.29','0.27','0.24','2017-07-03 09:27:30','127.0.0.1'),(81,'0.46','0.31','0.25','2017-07-03 09:28:03','127.0.0.1'),(82,'0.32','0.29','0.25','2017-07-03 09:28:35','127.0.0.1'),(83,'0.29','0.30','0.29','2017-07-03 11:01:14','127.0.0.1'),(84,'0.27','0.61','0.35','2017-07-03 18:23:52','127.0.0.1'),(85,'0.16','0.55','0.34','2017-07-03 18:24:25','127.0.0.1'),(86,'0.32','0.55','0.35','2017-07-03 18:24:57','127.0.0.1'),(87,'0.16','0.45','0.33','2017-07-03 18:26:19','127.0.0.1'),(88,'0.10','0.41','0.31','2017-07-03 18:26:51','127.0.0.1'),(89,'0.33','0.19','0.15','2017-07-04 09:00:41','127.0.0.1'),(90,'0.26','0.18','0.15','2017-07-04 09:01:13','127.0.0.1'),(91,'0.28','0.20','0.16','2017-07-04 09:01:45','127.0.0.1'),(92,'0.18','0.18','0.15','2017-07-04 09:02:42','127.0.0.1'),(93,'0.10','0.16','0.15','2017-07-04 09:03:14','127.0.0.1'),(94,'0.14','0.16','0.14','2017-07-04 09:03:46','127.0.0.1'),(95,'0.11','0.13','0.14','2017-07-04 09:35:37','127.0.0.1'),(96,'0.06','0.11','0.13','2017-07-04 09:36:09','127.0.0.1'),(97,'0.15','0.21','0.18','2017-07-04 09:41:31','127.0.0.1'),(98,'0.16','0.21','0.18','2017-07-04 09:42:03','127.0.0.1'),(99,'0.38','0.30','0.22','2017-07-04 09:44:19','127.0.0.1'),(100,'0.23','0.27','0.22','2017-07-04 09:44:51','127.0.0.1'),(101,'0.68','0.38','0.26','2017-07-04 09:45:29','127.0.0.1'),(102,'0.44','0.35','0.25','2017-07-04 09:46:06','127.0.0.1'),(103,'0.20','0.29','0.24','2017-07-04 09:48:06','127.0.0.1'),(104,'0.29','0.31','0.24','2017-07-04 09:48:39','127.0.0.1'),(105,'0.27','0.31','0.25','2017-07-04 09:49:26','127.0.0.1'),(106,'0.47','0.34','0.26','2017-07-04 09:49:58','127.0.0.1'),(107,'0.16','0.27','0.28','2017-07-04 09:59:48','127.0.0.1'),(108,'0.19','0.27','0.28','2017-07-04 10:00:20','127.0.0.1'),(109,'0.24','0.27','0.28','2017-07-04 10:00:52','127.0.0.1'),(110,'0.24','0.27','0.28','2017-07-04 10:04:01','127.0.0.1'),(111,'0.23','0.26','0.27','2017-07-04 10:04:33','127.0.0.1'),(112,'0.21','0.26','0.27','2017-07-04 10:06:33','127.0.0.1'),(113,'0.26','0.27','0.28','2017-07-04 10:07:05','127.0.0.1'),(114,'0.26','0.19','0.22','2017-07-04 10:22:32','127.0.0.1'),(115,'0.21','0.16','0.09','2017-07-04 17:51:35','127.0.0.1'),(116,'0.18','0.23','0.15','2017-07-04 17:59:35','127.0.0.1'),(117,'0.06','0.18','0.15','2017-07-04 18:04:26','127.0.0.1');
/*!40000 ALTER TABLE `MonitorDataSave_cpuload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_cpustat`
--

DROP TABLE IF EXISTS `MonitorDataSave_cpustat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_cpustat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CpuIdle` double NOT NULL,
  `CpuIowait` varchar(20) NOT NULL,
  `CpuSystem` varchar(20) NOT NULL,
  `CpuUser` varchar(20) NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `Host` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_cpustat`
--

LOCK TABLES `MonitorDataSave_cpustat` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_cpustat` DISABLE KEYS */;
INSERT INTO `MonitorDataSave_cpustat` VALUES (1,89.75,'0.0','0.0','0.0','2017-04-26 16:27:40','127.0.0.1'),(2,61.05,'0.0','0.0','0.0','2017-04-26 16:29:41','127.0.0.1'),(3,89.4,'0.0','0.0','0.0','2017-04-26 16:31:41','127.0.0.1'),(4,95.95,'0.0','0.0','0.0','2017-04-26 16:33:42','127.0.0.1'),(5,91.8,'0.0','0.0','0.0','2017-04-26 16:35:43','127.0.0.1'),(6,91.9,'0.0','0.0','0.0','2017-04-26 16:37:43','127.0.0.1'),(7,90.05,'0.0','0.0','0.0','2017-04-26 16:39:44','127.0.0.1'),(8,91.1,'0.0','0.0','0.0','2017-04-26 16:41:44','127.0.0.1'),(9,90.9,'0.0','0.0','0.0','2017-04-26 16:43:45','127.0.0.1'),(10,89.85,'0.0','0.0','0.0','2017-04-26 16:45:45','127.0.0.1'),(11,90.2,'0.0','0.0','0.0','2017-04-26 16:47:45','127.0.0.1'),(12,90.9,'0.0','0.0','0.0','2017-04-26 16:49:46','127.0.0.1'),(13,91.85,'0.0','0.0','0.0','2017-04-26 16:51:46','127.0.0.1'),(14,94.15,'0.0','0.0','0.0','2017-04-26 16:53:46','127.0.0.1'),(15,96.15,'0.0','0.0','0.0','2017-04-26 16:55:47','127.0.0.1'),(16,96.55,'0.0','0.0','0.0','2017-04-26 16:57:47','127.0.0.1'),(17,96.2,'0.0','0.0','50.0','2017-04-26 16:59:48','127.0.0.1'),(18,96.55,'0.0','0.0','0.0','2017-04-26 17:01:48','127.0.0.1'),(19,98.15,'0.0','0.0','0.0','2017-04-26 17:03:49','127.0.0.1'),(20,98.2,'0.0','0.0','0.0','2017-04-26 17:05:49','127.0.0.1'),(21,96.95,'0.0','0.0','0.0','2017-04-26 17:07:50','127.0.0.1'),(22,88,'0.0','0.0','0.0','2017-04-26 17:09:50','127.0.0.1'),(23,97.95,'0.0','0.0','0.0','2017-05-08 12:19:25','127.0.0.1'),(24,94.5,'0.0','0.0','0.0','2017-05-08 12:21:25','127.0.0.1'),(25,94.7,'0.0','0.0','0.0','2017-05-08 12:23:26','127.0.0.1'),(26,96.5,'0.0','0.0','0.0','2017-05-08 12:25:27','127.0.0.1'),(27,97.75,'0.0','0.0','0.0','2017-05-08 12:27:27','127.0.0.1'),(28,97.2,'0.0','0.0','0.0','2017-05-08 12:29:28','127.0.0.1'),(29,95.4,'0.0','0.0','0.0','2017-05-08 12:31:29','127.0.0.1'),(30,90.35,'0.0','0.0','0.0','2017-05-08 12:33:29','127.0.0.1'),(31,96.3,'0.0','0.0','0.0','2017-05-08 12:35:30','127.0.0.1'),(32,91.2,'0.0','0.0','0.0','2017-05-08 12:37:30','127.0.0.1'),(33,92.1,'0.0','0.0','0.0','2017-05-08 12:39:31','127.0.0.1'),(34,89.7,'0.0','0.0','0.0','2017-05-08 12:41:31','127.0.0.1'),(35,93.6,'0.0','0.0','0.0','2017-05-08 12:43:32','127.0.0.1'),(36,94,'0.0','0.0','0.0','2017-05-08 12:45:32','127.0.0.1'),(37,89.8,'0.0','0.0','0.0','2017-05-08 12:47:33','127.0.0.1'),(38,93.95,'0.0','0.0','0.0','2017-05-08 12:49:34','127.0.0.1'),(39,91.25,'0.0','0.0','0.0','2017-05-08 12:51:35','127.0.0.1'),(40,99.2,'0.0','0.0','0.0','2017-05-15 07:08:51','127.0.0.1'),(41,99.05,'0.0','0.0','0.0','2017-05-15 07:10:52','127.0.0.1'),(42,95.45,'0.0','0.0','0.0','2017-05-26 00:28:36','119.29.205.114'),(43,95.55,'0.0','0.0','0.0','2017-05-26 00:30:37','119.29.205.114'),(44,95.55,'0.0','0.0','0.0','2017-05-26 00:32:37','119.29.205.114'),(45,90.55,'0.0','0.0','0.0','2017-05-26 00:34:37','119.29.205.114'),(46,94.4,'0.0','0.0','0.0','2017-05-26 00:36:38','119.29.205.114'),(47,95.6,'0.0','0.0','0.0','2017-05-26 00:38:38','119.29.205.114'),(48,91.3,'0.0','0.0','0.0','2017-05-26 00:40:39','119.29.205.114'),(49,97.25,'0.0','0.0','0.0','2017-07-03 09:22:13','127.0.0.1'),(50,94.8,'0.0','0.0','0.0','2017-07-03 09:24:13','127.0.0.1'),(51,96.8,'0.0','0.0','0.0','2017-07-03 09:26:02','127.0.0.1'),(52,96.2,'0.0','0.0','0.0','2017-07-03 09:28:03','127.0.0.1'),(53,47.7,'0.0','50.0','0.0','2017-07-04 09:44:38','127.0.0.1'),(54,86.25,'0.0','0.0','0.0','2017-07-04 09:45:29','127.0.0.1'),(55,47.95,'0.0','0.0','0.0','2017-07-04 09:49:45','127.0.0.1'),(56,43.45,'0.0','0.0','0.0','2017-07-04 10:00:07','127.0.0.1'),(57,90.45,'0.0','0.0','0.0','2017-07-04 10:00:43','127.0.0.1'),(58,98.35,'0.0','0.0','0.0','2017-07-04 10:04:20','127.0.0.1'),(59,48.3,'0.0','0.0','0.0','2017-07-04 10:06:52','127.0.0.1');
/*!40000 ALTER TABLE `MonitorDataSave_cpustat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_diskinfo`
--

DROP TABLE IF EXISTS `MonitorDataSave_diskinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_diskinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FileSystem` varchar(120) NOT NULL,
  `Total` varchar(20) NOT NULL,
  `Used` varchar(20) NOT NULL,
  `Avail` varchar(20) NOT NULL,
  `UseP` varchar(5) NOT NULL,
  `MountedOn` varchar(50) NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `Host_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MonitorDataSave_diskinfo_380aa42d` (`Host_id`),
  CONSTRAINT `MonitorDataSave__Host_id_d0cd813d_fk_MonitorDataSave_hostname_id` FOREIGN KEY (`Host_id`) REFERENCES `MonitorDataSave_hostname` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_diskinfo`
--

LOCK TABLES `MonitorDataSave_diskinfo` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_diskinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_diskinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_group`
--

DROP TABLE IF EXISTS `MonitorDataSave_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_group`
--

LOCK TABLES `MonitorDataSave_group` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_hardinfo`
--

DROP TABLE IF EXISTS `MonitorDataSave_hardinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_hardinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Host` varchar(30) NOT NULL,
  `System` varchar(30) NOT NULL,
  `Arch` varchar(12) NOT NULL,
  `Cpulogical` varchar(4) NOT NULL,
  `Cpupysic` varchar(4) NOT NULL,
  `Cpu` varchar(50) NOT NULL,
  `LocalIp` char(39) DEFAULT NULL,
  `PubIp` char(39) DEFAULT NULL,
  `Mac` varchar(22) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `HostName_id` int(11) NOT NULL,
  `IDC_id` int(11) DEFAULT NULL,
  `Status_id` int(11) DEFAULT NULL,
  `Type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LocalIp` (`LocalIp`),
  UNIQUE KEY `PubIp` (`PubIp`),
  KEY `MonitorDataSave_hardinfo_8c9efa84` (`HostName_id`),
  KEY `MonitorDataSave_hardinfo_4e360264` (`IDC_id`),
  KEY `MonitorDataSave_hardinfo_d1674b09` (`Status_id`),
  KEY `MonitorDataSave_hardinfo_6fcad39f` (`Type_id`),
  CONSTRAINT `MonitorDataS_HostName_id_55de79c2_fk_MonitorDataSave_hostname_id` FOREIGN KEY (`HostName_id`) REFERENCES `MonitorDataSave_hostname` (`id`),
  CONSTRAINT `MonitorDataSave__Status_id_a39bd08c_fk_MonitorDataSave_status_id` FOREIGN KEY (`Status_id`) REFERENCES `MonitorDataSave_status` (`id`),
  CONSTRAINT `MonitorDataSave_har_Type_id_3f0676cf_fk_MonitorDataSave_group_id` FOREIGN KEY (`Type_id`) REFERENCES `MonitorDataSave_group` (`id`),
  CONSTRAINT `MonitorDataSave_hardin_IDC_id_c08b4680_fk_MonitorDataSave_idc_id` FOREIGN KEY (`IDC_id`) REFERENCES `MonitorDataSave_idc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_hardinfo`
--

LOCK TABLES `MonitorDataSave_hardinfo` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_hardinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_hardinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_hostname`
--

DROP TABLE IF EXISTS `MonitorDataSave_hostname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_hostname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `HostName` varchar(30) NOT NULL,
  `HardInfo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `HostName` (`HostName`),
  KEY `MonitorDataS_HardInfo_id_bc347343_fk_MonitorDataSave_hardinfo_id` (`HardInfo_id`),
  CONSTRAINT `MonitorDataS_HardInfo_id_bc347343_fk_MonitorDataSave_hardinfo_id` FOREIGN KEY (`HardInfo_id`) REFERENCES `MonitorDataSave_hardinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_hostname`
--

LOCK TABLES `MonitorDataSave_hostname` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_hostname` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_hostname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_hostname_DiskInfo`
--

DROP TABLE IF EXISTS `MonitorDataSave_hostname_DiskInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_hostname_DiskInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname_id` int(11) NOT NULL,
  `diskinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MonitorDataSave_hostname_DiskInfo_hostname_id_68b95430_uniq` (`hostname_id`,`diskinfo_id`),
  KEY `MonitorDataS_diskinfo_id_a35115bb_fk_MonitorDataSave_diskinfo_id` (`diskinfo_id`),
  CONSTRAINT `MonitorDataS_diskinfo_id_a35115bb_fk_MonitorDataSave_diskinfo_id` FOREIGN KEY (`diskinfo_id`) REFERENCES `MonitorDataSave_diskinfo` (`id`),
  CONSTRAINT `MonitorDataS_hostname_id_50f15d11_fk_MonitorDataSave_hostname_id` FOREIGN KEY (`hostname_id`) REFERENCES `MonitorDataSave_hostname` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_hostname_DiskInfo`
--

LOCK TABLES `MonitorDataSave_hostname_DiskInfo` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_hostname_DiskInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_hostname_DiskInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_idc`
--

DROP TABLE IF EXISTS `MonitorDataSave_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Place` varchar(50) NOT NULL,
  `D1` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_idc`
--

LOCK TABLES `MonitorDataSave_idc` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_idc` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_meminfo`
--

DROP TABLE IF EXISTS `MonitorDataSave_meminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_meminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Total` varchar(30) NOT NULL,
  `Used` varchar(30) NOT NULL,
  `Free` varchar(30) NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `Host` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_meminfo`
--

LOCK TABLES `MonitorDataSave_meminfo` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_meminfo` DISABLE KEYS */;
INSERT INTO `MonitorDataSave_meminfo` VALUES (1,'7715','','3588','2017-04-26 16:29:16','127.0.0.1'),(2,'7715','','3712','2017-04-26 16:29:56','127.0.0.1'),(3,'7715','','3739','2017-04-26 16:31:16','127.0.0.1'),(4,'7715','','3738','2017-04-26 16:31:57','127.0.0.1'),(5,'7715','','3738','2017-04-26 16:33:17','127.0.0.1'),(6,'7715','','3737','2017-04-26 16:33:57','127.0.0.1'),(7,'7715','','3739','2017-04-26 16:35:18','127.0.0.1'),(8,'7715','','3738','2017-04-26 16:35:58','127.0.0.1'),(9,'7715','','3725','2017-04-26 16:37:18','127.0.0.1'),(10,'7715','','3741','2017-04-26 16:37:58','127.0.0.1'),(11,'7715','','3743','2017-04-26 16:39:19','127.0.0.1'),(12,'7715','','3743','2017-04-26 16:39:59','127.0.0.1'),(13,'7715','','3737','2017-04-26 16:41:19','127.0.0.1'),(14,'7715','','3656','2017-04-26 16:41:59','127.0.0.1'),(15,'7715','','3691','2017-04-26 16:43:19','127.0.0.1'),(16,'7715','','3698','2017-04-26 16:44:00','127.0.0.1'),(17,'7715','','3702','2017-04-26 16:46:00','127.0.0.1'),(18,'7715','','3680','2017-04-26 16:47:20','127.0.0.1'),(19,'7715','','3611','2017-04-26 16:48:00','127.0.0.1'),(20,'7715','','3694','2017-04-26 16:49:20','127.0.0.1'),(21,'7715','','3694','2017-04-26 16:50:01','127.0.0.1'),(22,'7715','','3699','2017-04-26 16:51:21','127.0.0.1'),(23,'7715','','3697','2017-04-26 16:52:01','127.0.0.1'),(24,'7715','','3670','2017-04-26 16:53:21','127.0.0.1'),(25,'7715','','3671','2017-04-26 16:54:02','127.0.0.1'),(26,'7715','','3668','2017-04-26 16:55:22','127.0.0.1'),(27,'7715','','3667','2017-04-26 16:56:02','127.0.0.1'),(28,'7715','','3664','2017-04-26 16:57:22','127.0.0.1'),(29,'7715','','3664','2017-04-26 16:58:02','127.0.0.1'),(30,'7715','','3663','2017-04-26 16:59:23','127.0.0.1'),(31,'7715','','3664','2017-04-26 17:00:03','127.0.0.1'),(32,'7715','','3664','2017-04-26 17:01:23','127.0.0.1'),(33,'7715','','3641','2017-04-26 17:02:03','127.0.0.1'),(34,'7715','','3640','2017-04-26 17:03:24','127.0.0.1'),(35,'7715','','3642','2017-04-26 17:04:04','127.0.0.1'),(36,'7715','','3641','2017-04-26 17:05:24','127.0.0.1'),(37,'7715','','3641','2017-04-26 17:06:04','127.0.0.1'),(38,'7715','','3640','2017-04-26 17:07:25','127.0.0.1'),(39,'7715','','3577','2017-04-26 17:08:05','127.0.0.1'),(40,'7715','','3661','2017-04-26 17:09:25','127.0.0.1'),(41,'7715','','3648','2017-04-26 17:10:05','127.0.0.1'),(70,'7715','','5540','2017-05-08 12:47:08','127.0.0.1'),(77,'7715','','6298','2017-05-15 07:08:26','127.0.0.1'),(78,'7715','','6298','2017-05-15 07:09:07','127.0.0.1'),(79,'7715','','6295','2017-05-15 07:10:27','127.0.0.1'),(80,'7715','','6294','2017-05-15 07:11:07','127.0.0.1'),(81,'7715','','6294','2017-05-15 07:12:28','127.0.0.1'),(82,'996','','533','2017-05-26 00:28:11','119.29.205.114'),(83,'996','','532','2017-05-26 00:28:51','119.29.205.114'),(84,'996','','531','2017-05-26 00:30:11','119.29.205.114'),(85,'996','','530','2017-05-26 00:30:52','119.29.205.114'),(86,'996','','530','2017-05-26 00:32:12','119.29.205.114'),(87,'996','','530','2017-05-26 00:32:52','119.29.205.114'),(88,'996','','533','2017-05-26 00:34:12','119.29.205.114'),(89,'996','','533','2017-05-26 00:34:52','119.29.205.114'),(90,'996','','530','2017-05-26 00:36:13','119.29.205.114'),(91,'996','','530','2017-05-26 00:36:53','119.29.205.114'),(92,'996','','533','2017-05-26 00:38:13','119.29.205.114'),(93,'996','','532','2017-05-26 00:38:53','119.29.205.114'),(94,'996','','527','2017-05-26 00:40:14','119.29.205.114'),(95,'996','','527','2017-05-26 00:40:54','119.29.205.114'),(96,'7708','','5620','2017-07-03 09:21:48','127.0.0.1'),(97,'7708','','5618','2017-07-03 09:22:28','127.0.0.1'),(98,'7708','','5615','2017-07-03 09:23:48','127.0.0.1'),(99,'7708','','5614','2017-07-03 09:24:29','127.0.0.1'),(100,'7708','','5613','2017-07-03 09:25:37','127.0.0.1'),(101,'7708','','5608','2017-07-03 09:26:17','127.0.0.1'),(102,'7708','','5612','2017-07-03 09:27:38','127.0.0.1'),(103,'7708','','5612','2017-07-03 09:28:18','127.0.0.1'),(104,'7708','','5340','2017-07-03 11:01:23','127.0.0.1'),(105,'7708','','6066','2017-07-03 18:24:00','127.0.0.1'),(106,'7708','','6060','2017-07-03 18:24:41','127.0.0.1'),(107,'7708','','6054','2017-07-03 18:26:27','127.0.0.1'),(108,'7708','','6032','2017-07-04 09:00:49','127.0.0.1'),(109,'7708','','5728','2017-07-04 09:01:29','127.0.0.1'),(110,'7708','','5724','2017-07-04 09:02:50','127.0.0.1'),(111,'7708','','5723','2017-07-04 09:03:30','127.0.0.1'),(112,'7708','','5612','2017-07-04 09:35:45','127.0.0.1'),(113,'7708','','5608','2017-07-04 09:36:25','127.0.0.1'),(114,'7708','','5596','2017-07-04 09:41:39','127.0.0.1'),(115,'7708','','5572','2017-07-04 09:44:38','127.0.0.1'),(116,'7708','','5545','2017-07-04 09:45:29','127.0.0.1'),(117,'7708','','5545','2017-07-04 09:46:14','127.0.0.1'),(118,'7708','','5545','2017-07-04 09:48:14','127.0.0.1'),(119,'7708','','5542','2017-07-04 09:49:34','127.0.0.1'),(120,'7708','','5530','2017-07-04 09:59:56','127.0.0.1'),(121,'7708','','5525','2017-07-04 10:00:36','127.0.0.1'),(122,'7708','','5506','2017-07-04 10:04:09','127.0.0.1'),(123,'7708','','5557','2017-07-04 10:04:50','127.0.0.1'),(124,'7708','','5555','2017-07-04 10:06:41','127.0.0.1'),(125,'7708','','5518','2017-07-04 10:22:41','127.0.0.1'),(126,'7708','','5251','2017-07-04 17:51:43','127.0.0.1'),(127,'7708','','5228','2017-07-04 17:59:43','127.0.0.1'),(128,'7708','','5214','2017-07-04 18:04:34','127.0.0.1');
/*!40000 ALTER TABLE `MonitorDataSave_meminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_netinout`
--

DROP TABLE IF EXISTS `MonitorDataSave_netinout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_netinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EthName` varchar(30) NOT NULL,
  `InEth` varchar(30) NOT NULL,
  `OutEth` varchar(30) NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `Host` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_netinout`
--

LOCK TABLES `MonitorDataSave_netinout` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_netinout` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_netinout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_status`
--

DROP TABLE IF EXISTS `MonitorDataSave_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_status`
--

LOCK TABLES `MonitorDataSave_status` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MonitorDataSave_swapinfo`
--

DROP TABLE IF EXISTS `MonitorDataSave_swapinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MonitorDataSave_swapinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Total` varchar(30) NOT NULL,
  `Used` varchar(30) NOT NULL,
  `Free` varchar(30) NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `Host` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MonitorDataSave_swapinfo`
--

LOCK TABLES `MonitorDataSave_swapinfo` WRITE;
/*!40000 ALTER TABLE `MonitorDataSave_swapinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `MonitorDataSave_swapinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_action`
--

DROP TABLE IF EXISTS `Monitor_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `interval` int(11) NOT NULL,
  `recover_notice` tinyint(1) NOT NULL,
  `recover_subject` varchar(128) DEFAULT NULL,
  `recover_message` longtext,
  `enabled` tinyint(1) NOT NULL,
  `action_type` varchar(128) NOT NULL,
  `scritp` longtext NOT NULL,
  `sendmsgBody` longtext,
  `sendmsgSub` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_action`
--

LOCK TABLES `Monitor_action` WRITE;
/*!40000 ALTER TABLE `Monitor_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_action_host`
--

DROP TABLE IF EXISTS `Monitor_action_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_action_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL,
  `hosts_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_action_host_action_id_0b7b7730_uniq` (`action_id`,`hosts_id`),
  KEY `Monitor_action_host_hosts_id_307c5d38_fk_Monitor_hosts_id` (`hosts_id`),
  CONSTRAINT `Monitor_action_host_action_id_2a4fe0d8_fk_Monitor_action_id` FOREIGN KEY (`action_id`) REFERENCES `Monitor_action` (`id`),
  CONSTRAINT `Monitor_action_host_hosts_id_307c5d38_fk_Monitor_hosts_id` FOREIGN KEY (`hosts_id`) REFERENCES `Monitor_hosts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_action_host`
--

LOCK TABLES `Monitor_action_host` WRITE;
/*!40000 ALTER TABLE `Monitor_action_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_action_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_action_host_group`
--

DROP TABLE IF EXISTS `Monitor_action_host_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_action_host_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL,
  `hostgroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_action_host_group_action_id_819b4353_uniq` (`action_id`,`hostgroup_id`),
  KEY `Monitor_action_hos_hostgroup_id_f3ed57a5_fk_Monitor_hostgroup_id` (`hostgroup_id`),
  CONSTRAINT `Monitor_action_hos_hostgroup_id_f3ed57a5_fk_Monitor_hostgroup_id` FOREIGN KEY (`hostgroup_id`) REFERENCES `Monitor_hostgroup` (`id`),
  CONSTRAINT `Monitor_action_host_grou_action_id_b7e35af0_fk_Monitor_action_id` FOREIGN KEY (`action_id`) REFERENCES `Monitor_action` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_action_host_group`
--

LOCK TABLES `Monitor_action_host_group` WRITE;
/*!40000 ALTER TABLE `Monitor_action_host_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_action_host_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_action_notifiers`
--

DROP TABLE IF EXISTS `Monitor_action_notifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_action_notifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL,
  `notifiersuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_action_notifiers_action_id_b3abee91_uniq` (`action_id`,`notifiersuser_id`),
  KEY `Monitor_ac_notifiersuser_id_60d6ba10_fk_Monitor_notifiersuser_id` (`notifiersuser_id`),
  CONSTRAINT `Monitor_ac_notifiersuser_id_60d6ba10_fk_Monitor_notifiersuser_id` FOREIGN KEY (`notifiersuser_id`) REFERENCES `Monitor_notifiersuser` (`id`),
  CONSTRAINT `Monitor_action_notifiers_action_id_8e765bba_fk_Monitor_action_id` FOREIGN KEY (`action_id`) REFERENCES `Monitor_action` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_action_notifiers`
--

LOCK TABLES `Monitor_action_notifiers` WRITE;
/*!40000 ALTER TABLE `Monitor_action_notifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_action_notifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_actionoperation`
--

DROP TABLE IF EXISTS `Monitor_actionoperation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_actionoperation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `step` smallint(6) NOT NULL,
  `action_type` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_actionoperation`
--

LOCK TABLES `Monitor_actionoperation` WRITE;
/*!40000 ALTER TABLE `Monitor_actionoperation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_actionoperation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_actionoperation_notifiers`
--

DROP TABLE IF EXISTS `Monitor_actionoperation_notifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_actionoperation_notifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actionoperation_id` int(11) NOT NULL,
  `notifiersuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_actionoperation_notifie_actionoperation_id_4dd48678_uniq` (`actionoperation_id`,`notifiersuser_id`),
  KEY `Monitor_ac_notifiersuser_id_4a691910_fk_Monitor_notifiersuser_id` (`notifiersuser_id`),
  CONSTRAINT `Monito_actionoperation_id_c1bc6378_fk_Monitor_actionoperation_id` FOREIGN KEY (`actionoperation_id`) REFERENCES `Monitor_actionoperation` (`id`),
  CONSTRAINT `Monitor_ac_notifiersuser_id_4a691910_fk_Monitor_notifiersuser_id` FOREIGN KEY (`notifiersuser_id`) REFERENCES `Monitor_notifiersuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_actionoperation_notifiers`
--

LOCK TABLES `Monitor_actionoperation_notifiers` WRITE;
/*!40000 ALTER TABLE `Monitor_actionoperation_notifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_actionoperation_notifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_hostgroup`
--

DROP TABLE IF EXISTS `Monitor_hostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_hostgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_hostgroup`
--

LOCK TABLES `Monitor_hostgroup` WRITE;
/*!40000 ALTER TABLE `Monitor_hostgroup` DISABLE KEYS */;
INSERT INTO `Monitor_hostgroup` VALUES (1,'hostgroupname01001','sss'),(2,'Tgroup','');
/*!40000 ALTER TABLE `Monitor_hostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_hostgroup_templates`
--

DROP TABLE IF EXISTS `Monitor_hostgroup_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_hostgroup_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostgroup_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_hostgroup_templates_hostgroup_id_8589c1ae_uniq` (`hostgroup_id`,`templates_id`),
  KEY `Monitor_hostgroup__templates_id_daa3fb99_fk_Monitor_templates_id` (`templates_id`),
  CONSTRAINT `Monitor_hostgroup__hostgroup_id_eda5a538_fk_Monitor_hostgroup_id` FOREIGN KEY (`hostgroup_id`) REFERENCES `Monitor_hostgroup` (`id`),
  CONSTRAINT `Monitor_hostgroup__templates_id_daa3fb99_fk_Monitor_templates_id` FOREIGN KEY (`templates_id`) REFERENCES `Monitor_templates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_hostgroup_templates`
--

LOCK TABLES `Monitor_hostgroup_templates` WRITE;
/*!40000 ALTER TABLE `Monitor_hostgroup_templates` DISABLE KEYS */;
INSERT INTO `Monitor_hostgroup_templates` VALUES (1,1,7),(2,2,7);
/*!40000 ALTER TABLE `Monitor_hostgroup_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_hosts`
--

DROP TABLE IF EXISTS `Monitor_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_hosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `ip_addr` char(39) NOT NULL,
  `monitor_by` varchar(64) NOT NULL,
  `status` int(11) NOT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_hosts`
--

LOCK TABLES `Monitor_hosts` WRITE;
/*!40000 ALTER TABLE `Monitor_hosts` DISABLE KEYS */;
INSERT INTO `Monitor_hosts` VALUES (8,'127.0.0.1','127.0.0.1','agent',1,''),(10,'腾讯云119-114','119.29.205.114','agent',1,'');
/*!40000 ALTER TABLE `Monitor_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_hosts_host_groups`
--

DROP TABLE IF EXISTS `Monitor_hosts_host_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_hosts_host_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hosts_id` int(11) NOT NULL,
  `hostgroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_hosts_host_groups_hosts_id_3d1fa236_uniq` (`hosts_id`,`hostgroup_id`),
  KEY `Monitor_hosts_host_hostgroup_id_b70b0e1a_fk_Monitor_hostgroup_id` (`hostgroup_id`),
  CONSTRAINT `Monitor_hosts_host_groups_hosts_id_6718aac0_fk_Monitor_hosts_id` FOREIGN KEY (`hosts_id`) REFERENCES `Monitor_hosts` (`id`),
  CONSTRAINT `Monitor_hosts_host_hostgroup_id_b70b0e1a_fk_Monitor_hostgroup_id` FOREIGN KEY (`hostgroup_id`) REFERENCES `Monitor_hostgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_hosts_host_groups`
--

LOCK TABLES `Monitor_hosts_host_groups` WRITE;
/*!40000 ALTER TABLE `Monitor_hosts_host_groups` DISABLE KEYS */;
INSERT INTO `Monitor_hosts_host_groups` VALUES (4,8,1),(5,10,1);
/*!40000 ALTER TABLE `Monitor_hosts_host_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_hosts_templates`
--

DROP TABLE IF EXISTS `Monitor_hosts_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_hosts_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hosts_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_hosts_templates_hosts_id_de64f572_uniq` (`hosts_id`,`templates_id`),
  KEY `Monitor_hosts_temp_templates_id_c5ffa69c_fk_Monitor_templates_id` (`templates_id`),
  CONSTRAINT `Monitor_hosts_temp_templates_id_c5ffa69c_fk_Monitor_templates_id` FOREIGN KEY (`templates_id`) REFERENCES `Monitor_templates` (`id`),
  CONSTRAINT `Monitor_hosts_templates_hosts_id_8e0f6cab_fk_Monitor_hosts_id` FOREIGN KEY (`hosts_id`) REFERENCES `Monitor_hosts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_hosts_templates`
--

LOCK TABLES `Monitor_hosts_templates` WRITE;
/*!40000 ALTER TABLE `Monitor_hosts_templates` DISABLE KEYS */;
INSERT INTO `Monitor_hosts_templates` VALUES (10,8,7),(13,10,7);
/*!40000 ALTER TABLE `Monitor_hosts_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_maintenance`
--

DROP TABLE IF EXISTS `Monitor_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `content` longtext NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_maintenance`
--

LOCK TABLES `Monitor_maintenance` WRITE;
/*!40000 ALTER TABLE `Monitor_maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_maintenance_host_groups`
--

DROP TABLE IF EXISTS `Monitor_maintenance_host_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_maintenance_host_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maintenance_id` int(11) NOT NULL,
  `hostgroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_maintenance_host_groups_maintenance_id_49ad6658_uniq` (`maintenance_id`,`hostgroup_id`),
  KEY `Monitor_maintenanc_hostgroup_id_38f6aeb1_fk_Monitor_hostgroup_id` (`hostgroup_id`),
  CONSTRAINT `Monitor_mainte_maintenance_id_2a9493df_fk_Monitor_maintenance_id` FOREIGN KEY (`maintenance_id`) REFERENCES `Monitor_maintenance` (`id`),
  CONSTRAINT `Monitor_maintenanc_hostgroup_id_38f6aeb1_fk_Monitor_hostgroup_id` FOREIGN KEY (`hostgroup_id`) REFERENCES `Monitor_hostgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_maintenance_host_groups`
--

LOCK TABLES `Monitor_maintenance_host_groups` WRITE;
/*!40000 ALTER TABLE `Monitor_maintenance_host_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_maintenance_host_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_maintenance_hosts`
--

DROP TABLE IF EXISTS `Monitor_maintenance_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_maintenance_hosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maintenance_id` int(11) NOT NULL,
  `hosts_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_maintenance_hosts_maintenance_id_95d243a5_uniq` (`maintenance_id`,`hosts_id`),
  KEY `Monitor_maintenance_hosts_hosts_id_c8ae9071_fk_Monitor_hosts_id` (`hosts_id`),
  CONSTRAINT `Monitor_mainte_maintenance_id_b9593336_fk_Monitor_maintenance_id` FOREIGN KEY (`maintenance_id`) REFERENCES `Monitor_maintenance` (`id`),
  CONSTRAINT `Monitor_maintenance_hosts_hosts_id_c8ae9071_fk_Monitor_hosts_id` FOREIGN KEY (`hosts_id`) REFERENCES `Monitor_hosts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_maintenance_hosts`
--

LOCK TABLES `Monitor_maintenance_hosts` WRITE;
/*!40000 ALTER TABLE `Monitor_maintenance_hosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_maintenance_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_notifiersuser`
--

DROP TABLE IF EXISTS `Monitor_notifiersuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_notifiersuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_notifiersuser`
--

LOCK TABLES `Monitor_notifiersuser` WRITE;
/*!40000 ALTER TABLE `Monitor_notifiersuser` DISABLE KEYS */;
INSERT INTO `Monitor_notifiersuser` VALUES (2,'we','2345345@qq.com');
/*!40000 ALTER TABLE `Monitor_notifiersuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_service`
--

DROP TABLE IF EXISTS `Monitor_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `interval` int(11) NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_service`
--

LOCK TABLES `Monitor_service` WRITE;
/*!40000 ALTER TABLE `Monitor_service` DISABLE KEYS */;
INSERT INTO `Monitor_service` VALUES (1,'LinuxCPU',36,'CPU','None'),(5,'MemLoad',40,'Mem','None'),(6,'LinuxLoad',32,'load','None');
/*!40000 ALTER TABLE `Monitor_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_service_items`
--

DROP TABLE IF EXISTS `Monitor_service_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_service_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `serviceindex_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_service_items_service_id_51448726_uniq` (`service_id`,`serviceindex_id`),
  KEY `Monitor_serv_serviceindex_id_c7c931a8_fk_Monitor_serviceindex_id` (`serviceindex_id`),
  CONSTRAINT `Monitor_serv_serviceindex_id_c7c931a8_fk_Monitor_serviceindex_id` FOREIGN KEY (`serviceindex_id`) REFERENCES `Monitor_serviceindex` (`id`),
  CONSTRAINT `Monitor_service_items_service_id_49f41759_fk_Monitor_service_id` FOREIGN KEY (`service_id`) REFERENCES `Monitor_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_service_items`
--

LOCK TABLES `Monitor_service_items` WRITE;
/*!40000 ALTER TABLE `Monitor_service_items` DISABLE KEYS */;
INSERT INTO `Monitor_service_items` VALUES (12,1,1),(13,1,6),(10,1,7),(11,5,8),(14,6,1),(15,6,6),(16,6,7);
/*!40000 ALTER TABLE `Monitor_service_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_serviceindex`
--

DROP TABLE IF EXISTS `Monitor_serviceindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_serviceindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `item_key` varchar(64) NOT NULL,
  `data_type` varchar(32) NOT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_serviceindex`
--

LOCK TABLES `Monitor_serviceindex` WRITE;
/*!40000 ALTER TABLE `Monitor_serviceindex` DISABLE KEYS */;
INSERT INTO `Monitor_serviceindex` VALUES (1,'linux load15','load15','float',''),(6,'linux load1','load1','float',''),(7,'linux load5','load5','float',''),(8,'mem','mem used','float','');
/*!40000 ALTER TABLE `Monitor_serviceindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_templates`
--

DROP TABLE IF EXISTS `Monitor_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_templates`
--

LOCK TABLES `Monitor_templates` WRITE;
/*!40000 ALTER TABLE `Monitor_templates` DISABLE KEYS */;
INSERT INTO `Monitor_templates` VALUES (7,'localhost');
/*!40000 ALTER TABLE `Monitor_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_templates_service`
--

DROP TABLE IF EXISTS `Monitor_templates_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_templates_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templates_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_templates_service_templates_id_a097ae3c_uniq` (`templates_id`,`service_id`),
  KEY `Monitor_templates_serv_service_id_0f3eea6e_fk_Monitor_service_id` (`service_id`),
  CONSTRAINT `Monitor_templates__templates_id_fb10ec49_fk_Monitor_templates_id` FOREIGN KEY (`templates_id`) REFERENCES `Monitor_templates` (`id`),
  CONSTRAINT `Monitor_templates_serv_service_id_0f3eea6e_fk_Monitor_service_id` FOREIGN KEY (`service_id`) REFERENCES `Monitor_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_templates_service`
--

LOCK TABLES `Monitor_templates_service` WRITE;
/*!40000 ALTER TABLE `Monitor_templates_service` DISABLE KEYS */;
INSERT INTO `Monitor_templates_service` VALUES (12,7,1),(13,7,5),(14,7,6);
/*!40000 ALTER TABLE `Monitor_templates_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_templates_triggers`
--

DROP TABLE IF EXISTS `Monitor_templates_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_templates_triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templates_id` int(11) NOT NULL,
  `triggers_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Monitor_templates_triggers_templates_id_191777b0_uniq` (`templates_id`,`triggers_id`),
  KEY `Monitor_templates_tr_triggers_id_5c426183_fk_Monitor_triggers_id` (`triggers_id`),
  CONSTRAINT `Monitor_templates__templates_id_1e03b019_fk_Monitor_templates_id` FOREIGN KEY (`templates_id`) REFERENCES `Monitor_templates` (`id`),
  CONSTRAINT `Monitor_templates_tr_triggers_id_5c426183_fk_Monitor_triggers_id` FOREIGN KEY (`triggers_id`) REFERENCES `Monitor_triggers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_templates_triggers`
--

LOCK TABLES `Monitor_templates_triggers` WRITE;
/*!40000 ALTER TABLE `Monitor_templates_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Monitor_templates_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor_triggers`
--

DROP TABLE IF EXISTS `Monitor_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor_triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `expression` longtext NOT NULL,
  `sericety` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor_triggers`
--

LOCK TABLES `Monitor_triggers` WRITE;
/*!40000 ALTER TABLE `Monitor_triggers` DISABLE KEYS */;
INSERT INTO `Monitor_triggers` VALUES (2,'cpu Load > 85%','> 85',3,1,''),(3,'test_trigger','<12',4,1,'');
/*!40000 ALTER TABLE `Monitor_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add cmdb host',7,'add_cmdbhost'),(20,'Can change cmdb host',7,'change_cmdbhost'),(21,'Can delete cmdb host',7,'delete_cmdbhost'),(22,'Can add cmdb group',8,'add_cmdbgroup'),(23,'Can change cmdb group',8,'change_cmdbgroup'),(24,'Can delete cmdb group',8,'delete_cmdbgroup'),(31,'Can add idc',11,'add_idc'),(32,'Can change idc',11,'change_idc'),(33,'Can delete idc',11,'delete_idc'),(34,'Can add remote_user',12,'add_remote_user'),(35,'Can change remote_user',12,'change_remote_user'),(36,'Can delete remote_user',12,'delete_remote_user'),(37,'Can add file remote',13,'add_fileremote'),(38,'Can change file remote',13,'change_fileremote'),(39,'Can delete file remote',13,'delete_fileremote'),(40,'Can add run cmd log',14,'add_runcmdlog'),(41,'Can change run cmd log',14,'change_runcmdlog'),(42,'Can delete run cmd log',14,'delete_runcmdlog'),(43,'Can add page info',15,'add_pageinfo'),(44,'Can change page info',15,'change_pageinfo'),(45,'Can delete page info',15,'delete_pageinfo'),(46,'Can add disk used',16,'add_diskused'),(47,'Can change disk used',16,'change_diskused'),(48,'Can delete disk used',16,'delete_diskused'),(49,'Can add update disk',17,'add_updatedisk'),(50,'Can change update disk',17,'change_updatedisk'),(51,'Can delete update disk',17,'delete_updatedisk'),(52,'Can add app ctrl',18,'add_appctrl'),(53,'Can change app ctrl',18,'change_appctrl'),(54,'Can delete app ctrl',18,'delete_appctrl'),(55,'Can add service index',19,'add_serviceindex'),(56,'Can change service index',19,'change_serviceindex'),(57,'Can delete service index',19,'delete_serviceindex'),(58,'Can add service',20,'add_service'),(59,'Can change service',20,'change_service'),(60,'Can delete service',20,'delete_service'),(61,'Can add templates',21,'add_templates'),(62,'Can change templates',21,'change_templates'),(63,'Can delete templates',21,'delete_templates'),(64,'Can add triggers',22,'add_triggers'),(65,'Can change triggers',22,'change_triggers'),(66,'Can delete triggers',22,'delete_triggers'),(67,'Can add hosts',23,'add_hosts'),(68,'Can change hosts',23,'change_hosts'),(69,'Can delete hosts',23,'delete_hosts'),(70,'Can add host group',24,'add_hostgroup'),(71,'Can change host group',24,'change_hostgroup'),(72,'Can delete host group',24,'delete_hostgroup'),(73,'Can add action',25,'add_action'),(74,'Can change action',25,'change_action'),(75,'Can delete action',25,'delete_action'),(76,'Can add action operation',26,'add_actionoperation'),(77,'Can change action operation',26,'change_actionoperation'),(78,'Can delete action operation',26,'delete_actionoperation'),(79,'Can add notifiers user',27,'add_notifiersuser'),(80,'Can change notifiers user',27,'change_notifiersuser'),(81,'Can delete notifiers user',27,'delete_notifiersuser'),(82,'Can add maintenance',28,'add_maintenance'),(83,'Can change maintenance',28,'change_maintenance'),(84,'Can delete maintenance',28,'delete_maintenance'),(85,'Can add host name',29,'add_hostname'),(86,'Can change host name',29,'change_hostname'),(87,'Can delete host name',29,'delete_hostname'),(88,'Can add group',30,'add_group'),(89,'Can change group',30,'change_group'),(90,'Can delete group',30,'delete_group'),(91,'Can add idc',31,'add_idc'),(92,'Can change idc',31,'change_idc'),(93,'Can delete idc',31,'delete_idc'),(94,'Can add status',32,'add_status'),(95,'Can change status',32,'change_status'),(96,'Can delete status',32,'delete_status'),(97,'Can add hard info',33,'add_hardinfo'),(98,'Can change hard info',33,'change_hardinfo'),(99,'Can delete hard info',33,'delete_hardinfo'),(100,'Can add disk info',34,'add_diskinfo'),(101,'Can change disk info',34,'change_diskinfo'),(102,'Can delete disk info',34,'delete_diskinfo'),(103,'Can add mem info',35,'add_meminfo'),(104,'Can change mem info',35,'change_meminfo'),(105,'Can delete mem info',35,'delete_meminfo'),(106,'Can add swap info',36,'add_swapinfo'),(107,'Can change swap info',36,'change_swapinfo'),(108,'Can delete swap info',36,'delete_swapinfo'),(109,'Can add cpu stat',37,'add_cpustat'),(110,'Can change cpu stat',37,'change_cpustat'),(111,'Can delete cpu stat',37,'delete_cpustat'),(112,'Can add net in out',38,'add_netinout'),(113,'Can change net in out',38,'change_netinout'),(114,'Can delete net in out',38,'delete_netinout'),(115,'Can add cpu load',39,'add_cpuload'),(116,'Can change cpu load',39,'change_cpuload'),(117,'Can delete cpu load',39,'delete_cpuload');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$KCnsg7q8AFq7$6VI7M/FojE7W1cN5iS2i1XZsqg6lwnX0LqveCVYghsc=','2017-07-07 14:46:09',1,'admin','','','',1,1,'2017-03-08 15:20:43');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_appctrl`
--

DROP TABLE IF EXISTS `devops_appctrl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_appctrl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IPaddr` varchar(40) NOT NULL,
  `AppPort` varchar(6) NOT NULL,
  `AppMasterName` varchar(20) NOT NULL,
  `BasePath` varchar(60) NOT NULL,
  `StartAction` varchar(30) NOT NULL,
  `StopAction` varchar(30) NOT NULL,
  `RestartAction` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_appctrl`
--

LOCK TABLES `devops_appctrl` WRITE;
/*!40000 ALTER TABLE `devops_appctrl` DISABLE KEYS */;
INSERT INTO `devops_appctrl` VALUES (1,'127.0.0.1','3306','mysqldcsss0','/etc/init.d/mariadb','start','stop','restart'),(2,'123.207.86.123','80','nginx','/root/nginx','','stop','restart');
/*!40000 ALTER TABLE `devops_appctrl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_cmdbgroup`
--

DROP TABLE IF EXISTS `devops_cmdbgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_cmdbgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(30) NOT NULL,
  `comm` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_cmdbgroup`
--

LOCK TABLES `devops_cmdbgroup` WRITE;
/*!40000 ALTER TABLE `devops_cmdbgroup` DISABLE KEYS */;
INSERT INTO `devops_cmdbgroup` VALUES (5,'343222','343222'),(6,'sdfdgg','wgsdf'),(7,'sdgsf','dfgsdf'),(8,'testGroup','');
/*!40000 ALTER TABLE `devops_cmdbgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_cmdbgroup_host`
--

DROP TABLE IF EXISTS `devops_cmdbgroup_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_cmdbgroup_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmdbgroup_id` int(11) NOT NULL,
  `cmdbhost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `devops_cmdbgroup_host_cmdbgroup_id_ceeae1c2_uniq` (`cmdbgroup_id`,`cmdbhost_id`),
  KEY `devops_cmdbgroup_host_cmdbhost_id_c438bec4_fk_devops_cmdbhost_id` (`cmdbhost_id`),
  CONSTRAINT `devops_cmdbgroup_ho_cmdbgroup_id_d0f0aaac_fk_devops_cmdbgroup_id` FOREIGN KEY (`cmdbgroup_id`) REFERENCES `devops_cmdbgroup` (`id`),
  CONSTRAINT `devops_cmdbgroup_host_cmdbhost_id_c438bec4_fk_devops_cmdbhost_id` FOREIGN KEY (`cmdbhost_id`) REFERENCES `devops_cmdbhost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_cmdbgroup_host`
--

LOCK TABLES `devops_cmdbgroup_host` WRITE;
/*!40000 ALTER TABLE `devops_cmdbgroup_host` DISABLE KEYS */;
INSERT INTO `devops_cmdbgroup_host` VALUES (1,5,13);
/*!40000 ALTER TABLE `devops_cmdbgroup_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_cmdbhost`
--

DROP TABLE IF EXISTS `devops_cmdbhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_cmdbhost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(30) NOT NULL,
  `pubip` varchar(50) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `cpu_info` varchar(60) DEFAULT NULL,
  `mem_info` varchar(60) DEFAULT NULL,
  `system_info` varchar(60) DEFAULT NULL,
  `comm` varchar(300) DEFAULT NULL,
  `cpu_Physical` varchar(4) DEFAULT NULL,
  `cpu_core` varchar(4) DEFAULT NULL,
  `cpu_processor` varchar(60) DEFAULT NULL,
  `system_kernel` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_cmdbhost`
--

LOCK TABLES `devops_cmdbhost` WRITE;
/*!40000 ALTER TABLE `devops_cmdbhost` DISABLE KEYS */;
INSERT INTO `devops_cmdbhost` VALUES (13,'localhost','127.0.0.1','127.0.0.1','Intel(R) Core(TM) i3-6098P CPU @ 3.60GHz',NULL,'Linux','','1','2','4','3.10.0-327.el7.x86_64'),(17,'123.207.86.123','123.207.86.123','123.207.86.123','Intel(R) Xeon(R) CPU E5-26xx v3',NULL,'Linux','','1','1','1','2.6.32-573.el6.x86_64');
/*!40000 ALTER TABLE `devops_cmdbhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_cmdbhost_group`
--

DROP TABLE IF EXISTS `devops_cmdbhost_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_cmdbhost_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmdbhost_id` int(11) NOT NULL,
  `cmdbgroup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `devops_cmdbhost_group_cmdbhost_id_4666b99e_uniq` (`cmdbhost_id`,`cmdbgroup_id`),
  KEY `devops_cmdbhost_gro_cmdbgroup_id_af4f2b67_fk_devops_cmdbgroup_id` (`cmdbgroup_id`),
  CONSTRAINT `devops_cmdbhost_gro_cmdbgroup_id_af4f2b67_fk_devops_cmdbgroup_id` FOREIGN KEY (`cmdbgroup_id`) REFERENCES `devops_cmdbgroup` (`id`),
  CONSTRAINT `devops_cmdbhost_group_cmdbhost_id_90286a4f_fk_devops_cmdbhost_id` FOREIGN KEY (`cmdbhost_id`) REFERENCES `devops_cmdbhost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_cmdbhost_group`
--

LOCK TABLES `devops_cmdbhost_group` WRITE;
/*!40000 ALTER TABLE `devops_cmdbhost_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `devops_cmdbhost_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_diskused`
--

DROP TABLE IF EXISTS `devops_diskused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_diskused` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filesystem` varchar(120) NOT NULL,
  `total` varchar(20) NOT NULL,
  `used` varchar(20) NOT NULL,
  `avail` varchar(20) NOT NULL,
  `usep` varchar(5) NOT NULL,
  `mounted` varchar(50) NOT NULL,
  `Ttime` datetime NOT NULL,
  `host_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `devops_diskused_host_id_18544069_fk_devops_cmdbhost_id` (`host_id`),
  CONSTRAINT `devops_diskused_host_id_18544069_fk_devops_cmdbhost_id` FOREIGN KEY (`host_id`) REFERENCES `devops_cmdbhost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_diskused`
--

LOCK TABLES `devops_diskused` WRITE;
/*!40000 ALTER TABLE `devops_diskused` DISABLE KEYS */;
INSERT INTO `devops_diskused` VALUES (1,'/dev/mapper/cl-root','100G','11G','90G','11','/','2017-04-26 16:55:04',13),(2,'/dev/sdb2','494M','169M','326M','35','/boot','2017-05-25 16:13:09',13),(3,'/dev/mapper/cl-var','50G','7.1G','43G','15','/var','2017-04-20 13:37:04',13),(4,'/dev/mapper/cl-home','50G','33M','50G','1','/home','2017-05-25 16:13:09',13),(5,'/dev/vda1','20G','4.3G','15G','23','/','2017-04-26 16:55:05',17),(6,'/dev/mapper/cl-var','50G','7.2G','43G','15','/var','2017-05-25 16:13:09',13),(7,'/dev/mapper/cl-var','50G','8.0G','43G','16','/var','2017-04-19 19:09:55',13),(8,'/dev/mapper/cl-var','50G','6.8G','44G','14','/var','2017-04-21 21:10:49',13),(9,'/dev/mapper/cl-var','50G','7.6G','43G','16','/var','2017-04-23 12:41:06',13),(10,'/dev/mapper/cl-root','100G','12G','89G','12','/','2017-05-25 16:13:09',13),(11,'/dev/mapper/centos-root','103G','9.1G','94G','9','/','2017-07-07 18:00:27',13),(12,'/dev/sda7','494M','158M','336M','32','/boot','2017-07-07 18:00:27',13),(13,'/dev/mapper/centos-var','35G','695M','35G','2','/var','2017-06-30 14:47:00',13),(14,'/dev/mapper/centos-home','47G','33M','47G','1','/home','2017-07-07 18:00:27',13),(15,'/dev/mapper/centos-root','103G','9.2G','94G','9','/','2017-07-03 09:41:34',13),(16,'/dev/mapper/centos-var','35G','796M','35G','3','/var','2017-06-30 15:37:00',13),(17,'/dev/mapper/centos-root','103G','9.3G','94G','10','/','2017-07-05 10:56:55',13),(18,'/dev/mapper/centos-var','35G','965M','35G','3','/var','2017-06-30 17:06:15',13),(19,'/dev/mapper/centos-var','35G','1021M','34G','3','/var','2017-06-30 17:56:15',13),(20,'/dev/mapper/centos-var','35G','948M','35G','3','/var','2017-07-03 09:41:32',13),(21,'/dev/mapper/centos-var','35G','949M','35G','3','/var','2017-07-03 09:41:34',13),(22,'/dev/mapper/centos-var','35G','951M','35G','3','/var','2017-07-04 18:19:14',13),(23,'/dev/mapper/centos-var','35G','950M','35G','3','/var','2017-07-04 13:19:13',13),(24,'/dev/mapper/centos-var','35G','952M','35G','3','/var','2017-07-05 16:17:42',13),(25,'/dev/mapper/centos-var','35G','953M','35G','3','/var','2017-07-06 12:27:16',13),(26,'/dev/mapper/centos-root','103G','9.4G','94G','10','/','2017-07-06 14:57:16',13),(27,'/dev/mapper/centos-var','35G','954M','35G','3','/var','2017-07-07 18:00:26',13),(28,'/dev/mapper/centos-var','35G','955M','35G','3','/var','2017-07-07 18:00:28',13);
/*!40000 ALTER TABLE `devops_diskused` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_fileremote`
--

DROP TABLE IF EXISTS `devops_fileremote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_fileremote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostip` varchar(20) NOT NULL,
  `localfile` varchar(60) NOT NULL,
  `remotefile` varchar(60) NOT NULL,
  `action_choice` varchar(8) NOT NULL,
  `Ttime` datetime NOT NULL,
  `resultAction` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_fileremote`
--

LOCK TABLES `devops_fileremote` WRITE;
/*!40000 ALTER TABLE `devops_fileremote` DISABLE KEYS */;
/*!40000 ALTER TABLE `devops_fileremote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_idc`
--

DROP TABLE IF EXISTS `devops_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcname` varchar(100) NOT NULL,
  `bandwidth` varchar(5) DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `tel_name` varchar(30) DEFAULT NULL,
  `tel_phone` varchar(20) DEFAULT NULL,
  `comm` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_idc`
--

LOCK TABLES `devops_idc` WRITE;
/*!40000 ALTER TABLE `devops_idc` DISABLE KEYS */;
INSERT INTO `devops_idc` VALUES (1,'fsdf','d','12','15035234','112233',NULL),(2,'tewt add','23','a','23442','234345',NULL),(3,'长沙','100m','MOB','I','110',NULL);
/*!40000 ALTER TABLE `devops_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_idc_host`
--

DROP TABLE IF EXISTS `devops_idc_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_idc_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idc_id` int(11) NOT NULL,
  `cmdbhost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `devops_idc_host_idc_id_da6d28bc_uniq` (`idc_id`,`cmdbhost_id`),
  KEY `devops_idc_host_cmdbhost_id_1ffbbbee_fk_devops_cmdbhost_id` (`cmdbhost_id`),
  CONSTRAINT `devops_idc_host_cmdbhost_id_1ffbbbee_fk_devops_cmdbhost_id` FOREIGN KEY (`cmdbhost_id`) REFERENCES `devops_cmdbhost` (`id`),
  CONSTRAINT `devops_idc_host_idc_id_8ef5d20c_fk_devops_idc_id` FOREIGN KEY (`idc_id`) REFERENCES `devops_idc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_idc_host`
--

LOCK TABLES `devops_idc_host` WRITE;
/*!40000 ALTER TABLE `devops_idc_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `devops_idc_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_pageinfo`
--

DROP TABLE IF EXISTS `devops_pageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_pageinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CmdbHostPage` varchar(4) DEFAULT NULL,
  `CmdbGroupPage` varchar(4) DEFAULT NULL,
  `IDCPage` varchar(4) DEFAULT NULL,
  `remote_userPage` varchar(4) DEFAULT NULL,
  `FileRemotePage` varchar(4) DEFAULT NULL,
  `runCmdLogPage` varchar(4) DEFAULT NULL,
  `AppListPage` varchar(4),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_pageinfo`
--

LOCK TABLES `devops_pageinfo` WRITE;
/*!40000 ALTER TABLE `devops_pageinfo` DISABLE KEYS */;
INSERT INTO `devops_pageinfo` VALUES (1,'5','2','2','20',NULL,NULL,NULL);
/*!40000 ALTER TABLE `devops_pageinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_remote_user`
--

DROP TABLE IF EXISTS `devops_remote_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_remote_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(6) NOT NULL,
  `auth_choice` varchar(10) NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `devops_remote_user_host_id_7ae3740f_fk_devops_cmdbhost_id` (`host_id`),
  CONSTRAINT `devops_remote_user_host_id_7ae3740f_fk_devops_cmdbhost_id` FOREIGN KEY (`host_id`) REFERENCES `devops_cmdbhost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_remote_user`
--

LOCK TABLES `devops_remote_user` WRITE;
/*!40000 ALTER TABLE `devops_remote_user` DISABLE KEYS */;
INSERT INTO `devops_remote_user` VALUES (6,'root','redhat','22','password',13),(9,'root','18867316801qiuqiu','22','password',17);
/*!40000 ALTER TABLE `devops_remote_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_runcmdlog`
--

DROP TABLE IF EXISTS `devops_runcmdlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_runcmdlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostList` varchar(80) NOT NULL,
  `cmd` varchar(80) NOT NULL,
  `cmdresult` longtext NOT NULL,
  `Ttime` datetime NOT NULL,
  `API` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_runcmdlog`
--

LOCK TABLES `devops_runcmdlog` WRITE;
/*!40000 ALTER TABLE `devops_runcmdlog` DISABLE KEYS */;
INSERT INTO `devops_runcmdlog` VALUES (1,'[u\'127.0.0','cat /etc/fstab','{\"123.207.86.123\": \"/dev/vda1            /                    ext3       noatime,acl,user_xattr 1 1<br/>proc                 /proc                proc       defaults              0 0<br/>sysfs                /sys                 sysfs      noauto                0 0<br/>debugfs              /sys/kernel/debug    debugfs    noauto                0 0<br/>devpts               /dev/pts             devpts     mode=0620,gid=5       0 0<br/>/var/swap.swap \\t    swap \\t\\t  swap \\t     defaults \\t\\t   0 0\"','2017-03-24 16:24:44',''),(2,'[u\'127.0.0','cat /etc/passwd','{\"123.207.86.123\": \"root:x:0:0:root:/root:/bin/bash\\r\\nbin:x:1:1:bin:/bin:/sbin/nologin\\r\\ndaemon:x:2:2:daemon:/sbin:/sbin/nologin\\r\\nadm:x:3:4:adm:/var/adm:/sbin/nologin\\r\\nlp:x:4:7:lp:/var/spool/lpd:/sbin/nologin\\r\\nsync:x:5:0:sync:/sbin:/bin/sync\\r\\nshutdown:x:6:0:shutdown:/sbin:/sbin/shutdown\\r\\nhalt:x:7:0:halt:/sbin:/sbin/halt\\r\\nmail:x:8:12:mail:/var/spool/mail:/sbin/nologin\\r\\nuucp:x:10:14:uucp:/var/spool/uucp:/sbin/nologin\\r\\noperator:x:11:0:operator:/root:/sbin/nologin\\r\\ngames:x:12:100','2017-03-24 16:33:54','Fabric'),(3,'[u\'127.0.0','cat /etc/passwd','{\"123.207.86.123\": \"root:x:0:0:root:/root:/bin/bash\\r\\nbin:x:1:1:bin:/bin:/sbin/nologin\\r\\ndaemon:x:2:2:daemon:/sbin:/sbin/nologin\\r\\nadm:x:3:4:adm:/var/adm:/sbin/nologin\\r\\nlp:x:4:7:lp:/var/spool/lpd:/sbin/nologin\\r\\nsync:x:5:0:sync:/sbin:/bin/sync\\r\\nshutdown:x:6:0:shutdown:/sbin:/sbin/shutdown\\r\\nhalt:x:7:0:halt:/sbin:/sbin/halt\\r\\nmail:x:8:12:mail:/var/spool/mail:/sbin/nologin\\r\\nuucp:x:10:14:uucp:/var/spool/uucp:/sbin/nologin\\r\\noperator:x:11:0:operator:/root:/sbin/nologin\\r\\ngames:x:12:100:games:/usr/games:/sbin/nologin\\r\\ngopher:x:13:30:gopher:/var/gopher:/sbin/nologin\\r\\nftp:x:14:50:FTP User:/var/ftp:/sbin/nologin\\r\\nnobody:x:99:99:Nobody:/:/sbin/nologin\\r\\nvcsa:x:69:69:virtual console memory owner:/dev:/sbin/nologin\\r\\nabrt:x:173:173::/etc/abrt:/sbin/nologin\\r\\nntp:x:38:38::/etc/ntp:/sbin/nologin\\r\\nsaslauth:x:499:76:Saslauthd user:/var/empty/saslauth:/sbin/nologin\\r\\npostfix:x:89:89::/var/spool/postfix:/sbin/nologin\\r\\nsshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin\\r\\ntcpdump:x:72:72::/:/sbin/nologin\\r\\ndbus:x:81:81:System message bus:/:/sbin/nologin\\r\\nmysql:x:500:500::/home/mysql:/sbin/nologin\\r\\nnginx:x:501:501::/home/nginx:/sbin/nologin\", \"127.0.0.1\": \"root:x:0:0:root:/root:/bin/bash\\r\\nbin:x:1:1:bin:/bin:/sbin/nologin\\r\\ndaemon:x:2:2:daemon:/sbin:/sbin/nologin\\r\\nadm:x:3:4:adm:/var/adm:/sbin/nologin\\r\\nlp:x:4:7:lp:/var/spool/lpd:/sbin/nologin\\r\\nsync:x:5:0:sync:/sbin:/bin/sync\\r\\nshutdown:x:6:0:shutdown:/sbin:/sbin/shutdown\\r\\nhalt:x:7:0:halt:/sbin:/sbin/halt\\r\\nmail:x:8:12:mail:/var/spool/mail:/sbin/nologin\\r\\noperator:x:11:0:operator:/root:/sbin/nologin\\r\\ngames:x:12:100:games:/usr/games:/sbin/nologin\\r\\nftp:x:14:50:FTP User:/var/ftp:/sbin/nologin\\r\\nnobody:x:99:99:Nobody:/:/sbin/nologin\\r\\nsystemd-bus-proxy:x:999:998:systemd Bus Proxy:/:/sbin/nologin\\r\\nsystemd-network:x:192:192:systemd Network Management:/:/sbin/nologin\\r\\ndbus:x:81:81:System message bus:/:/sbin/nologin\\r\\npolkitd:x:998:997:User for polkitd:/:/sbin/nologin\\r\\ncolord:x:997:996:User for colord:/var/lib/colord:/sbin/nologin\\r\\nabrt:x:173:173::/etc/abrt:/sbin/nologin\\r\\nlibstoragemgmt:x:996:994:daemon account for libstoragemgmt:/var/run/lsm:/sbin/nologin\\r\\nrpc:x:32:32:Rpcbind Daemon:/var/lib/rpcbind:/sbin/nologin\\r\\nrtkit:x:172:172:RealtimeKit:/proc:/sbin/nologin\\r\\nchrony:x:995:992::/var/lib/chrony:/sbin/nologin\\r\\nrpcuser:x:29:29:RPC Service User:/var/lib/nfs:/sbin/nologin\\r\\nnfsnobody:x:65534:65534:Anonymous NFS User:/var/lib/nfs:/sbin/nologin\\r\\nusbmuxd:x:113:113:usbmuxd user:/:/sbin/nologin\\r\\ntss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin\\r\\ngeoclue:x:994:991:User for geoclue:/var/lib/geoclue:/sbin/nologin\\r\\nntp:x:38:38::/etc/ntp:/sbin/nologin\\r\\nmysql:x:27:27:MariaDB Server:/var/lib/mysql:/sbin/nologin\\r\\nsetroubleshoot:x:993:990::/var/lib/setroubleshoot:/sbin/nologin\\r\\nsssd:x:992:989:User for sssd:/:/sbin/nologin\\r\\npulse:x:171:171:PulseAudio System Daemon:/var/run/pulse:/sbin/nologin\\r\\ngdm:x:42:42::/var/lib/gdm:/sbin/nologin\\r\\nsshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin\\r\\npostfix:x:89:89::/var/spool/postfix:/sbin/nologin\\r\\ntcpdump:x:72:72::/:/sbin/nologin\\r\\nnginx:x:1000:1000::/home/nginx:/sbin/nologin\\r\\ndockerroot:x:991:986:Docker User:/var/lib/docker:/sbin/nologin\\r\\nnamed:x:25:25:Named:/var/named:/sbin/nologin\\r\\nhsqldb:x:96:96::/var/lib/hsqldb:/sbin/nologin\\r\\nods:x:990:985:softhsm private keys owner:/var/lib/softhsm:/sbin/nologin\\r\\napache:x:48:48:Apache:/usr/share/httpd:/sbin/nologin\\r\\nmemcached:x:989:983:Memcached daemon:/run/memcached:/sbin/nologin\\r\\ntomcat:x:91:91:Apache Tomcat:/usr/share/tomcat:/sbin/nologin\\r\\npkiuser:x:17:17:Certificate System:/usr/share/pki:/sbin/nologin\\r\\ndirsrv:x:389:389:389-ds-base:/usr/share/dirsrv:/sbin/nologin\\r\\nipsilon:x:388:388:Ipsilon Server:/var/lib/ipsilon:/sbin/nologin\"}','2017-03-24 17:03:04','Fabric'),(4,'[u\'127.0.0','cat /etc/fstab','{\"123.207.86.123\": \"/dev/vda1            /                    ext3       noatime,acl,user_xattr 1 1\\r\\nproc                 /proc                proc       defaults              0 0\\r\\nsysfs                /sys                 sysfs      noauto                0 0\\r\\ndebugfs              /sys/kernel/debug    debugfs    noauto                0 0\\r\\ndevpts               /dev/pts             devpts     mode=0620,gid=5       0 0\\r\\n/var/swap.swap \\t    swap \\t\\t  swap \\t     defaults \\t\\t   0 0\", \"127.0.0.1\": \"#\\r\\n# /etc/fstab\\r\\n# Created by anaconda on Wed Dec 21 05:13:42 2016\\r\\n#\\r\\n# Accessible filesystems, by reference, are maintained under \'/dev/disk\'\\r\\n# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info\\r\\n#\\r\\n/dev/mapper/cl-root     /                       xfs     defaults        0 0\\r\\nUUID=3ad49c4e-3a90-4a20-85b6-3bd35c2845a7 /boot                   xfs     defaults        0 0\\r\\n/dev/mapper/cl-home     /home                   xfs     defaults        0 0\\r\\n/dev/mapper/cl-var      /var                    xfs     defaults        0 0\\r\\n/dev/mapper/cl-swap     swap                    swap    defaults        0 0\"}','2017-03-24 17:51:09','Fabric'),(5,'[u\'127.0.0','cat /etc/inittab','{\"127.0.0.1\": \"# inittab is no longer used when using systemd.\\r\\n#\\r\\n# ADDING CONFIGURATION HERE WILL HAVE NO EFFECT ON YOUR SYSTEM.\\r\\n#\\r\\n# Ctrl-Alt-Delete is handled by /usr/lib/systemd/system/ctrl-alt-del.target\\r\\n#\\r\\n# systemd uses \'targets\' instead of runlevels. By default, there are two main targets:\\r\\n#\\r\\n# multi-user.target: analogous to runlevel 3\\r\\n# graphical.target: analogous to runlevel 5\\r\\n#\\r\\n# To view current default target, run:\\r\\n# systemctl get-default\\r\\n#\\r\\n# To set a default target, run:\\r\\n# systemctl set-default TARGET.target\\r\\n#\"}','2017-03-24 20:43:57','Fabric'),(6,'[u\'127.0.0','cat /etc/inittab','{\"127.0.0.1\": \"# inittab is no longer used when using systemd.\\r\\n#\\r\\n# ADDING CONFIGURATION HERE WILL HAVE NO EFFECT ON YOUR SYSTEM.\\r\\n#\\r\\n# Ctrl-Alt-Delete is handled by /usr/lib/systemd/system/ctrl-alt-del.target\\r\\n#\\r\\n# systemd uses \'targets\' instead of runlevels. By default, there are two main targets:\\r\\n#\\r\\n# multi-user.target: analogous to runlevel 3\\r\\n# graphical.target: analogous to runlevel 5\\r\\n#\\r\\n# To view current default target, run:\\r\\n# systemctl get-default\\r\\n#\\r\\n# To set a default target, run:\\r\\n# systemctl set-default TARGET.target\\r\\n#\"}','2017-03-24 20:44:26','Fabric'),(7,'[u\'123.207','cat /etc/fstab','{\"123.207.86.123\": \"/dev/vda1            /                    ext3       noatime,acl,user_xattr 1 1<br/>proc                 /proc                proc       defaults              0 0<br/>sysfs                /sys                 sysfs      noauto                0 0<br/>debugfs              /sys/kernel/debug    debugfs    noauto                0 0<br/>devpts               /dev/pts             devpts     mode=0620,gid=5       0 0<br/>/var/swap.swap \\t    swap \\t\\t  swap \\t     defaults \\t\\t   0 0\"}','2017-03-24 20:48:06','Fabric'),(8,'[u\'127.0.0','cat /etc/passwd','{\"127.0.0.1\": \"root:x:0:0:root:/root:/bin/bash<br/>bin:x:1:1:bin:/bin:/sbin/nologin<br/>daemon:x:2:2:daemon:/sbin:/sbin/nologin<br/>adm:x:3:4:adm:/var/adm:/sbin/nologin<br/>lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin<br/>sync:x:5:0:sync:/sbin:/bin/sync<br/>shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown<br/>halt:x:7:0:halt:/sbin:/sbin/halt<br/>mail:x:8:12:mail:/var/spool/mail:/sbin/nologin<br/>operator:x:11:0:operator:/root:/sbin/nologin<br/>games:x:12:100:games:/usr/games:/sbin/nologin<br/>ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin<br/>nobody:x:99:99:Nobody:/:/sbin/nologin<br/>systemd-bus-proxy:x:999:998:systemd Bus Proxy:/:/sbin/nologin<br/>systemd-network:x:192:192:systemd Network Management:/:/sbin/nologin<br/>dbus:x:81:81:System message bus:/:/sbin/nologin<br/>polkitd:x:998:997:User for polkitd:/:/sbin/nologin<br/>colord:x:997:996:User for colord:/var/lib/colord:/sbin/nologin<br/>abrt:x:173:173::/etc/abrt:/sbin/nologin<br/>libstoragemgmt:x:996:994:daemon account for libstoragemgmt:/var/run/lsm:/sbin/nologin<br/>rpc:x:32:32:Rpcbind Daemon:/var/lib/rpcbind:/sbin/nologin<br/>rtkit:x:172:172:RealtimeKit:/proc:/sbin/nologin<br/>chrony:x:995:992::/var/lib/chrony:/sbin/nologin<br/>rpcuser:x:29:29:RPC Service User:/var/lib/nfs:/sbin/nologin<br/>nfsnobody:x:65534:65534:Anonymous NFS User:/var/lib/nfs:/sbin/nologin<br/>usbmuxd:x:113:113:usbmuxd user:/:/sbin/nologin<br/>tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin<br/>geoclue:x:994:991:User for geoclue:/var/lib/geoclue:/sbin/nologin<br/>ntp:x:38:38::/etc/ntp:/sbin/nologin<br/>mysql:x:27:27:MariaDB Server:/var/lib/mysql:/sbin/nologin<br/>setroubleshoot:x:993:990::/var/lib/setroubleshoot:/sbin/nologin<br/>sssd:x:992:989:User for sssd:/:/sbin/nologin<br/>pulse:x:171:171:PulseAudio System Daemon:/var/run/pulse:/sbin/nologin<br/>gdm:x:42:42::/var/lib/gdm:/sbin/nologin<br/>sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin<br/>postfix:x:89:89::/var/spool/postfix:/sbin/nologin<br/>tcpdump:x:72:72::/:/sbin/nologin<br/>nginx:x:1000:1000::/home/nginx:/sbin/nologin<br/>dockerroot:x:991:986:Docker User:/var/lib/docker:/sbin/nologin<br/>named:x:25:25:Named:/var/named:/sbin/nologin<br/>hsqldb:x:96:96::/var/lib/hsqldb:/sbin/nologin<br/>ods:x:990:985:softhsm private keys owner:/var/lib/softhsm:/sbin/nologin<br/>apache:x:48:48:Apache:/usr/share/httpd:/sbin/nologin<br/>memcached:x:989:983:Memcached daemon:/run/memcached:/sbin/nologin<br/>tomcat:x:91:91:Apache Tomcat:/usr/share/tomcat:/sbin/nologin<br/>pkiuser:x:17:17:Certificate System:/usr/share/pki:/sbin/nologin<br/>dirsrv:x:389:389:389-ds-base:/usr/share/dirsrv:/sbin/nologin<br/>ipsilon:x:388:388:Ipsilon Server:/var/lib/ipsilon:/sbin/nologin\"}','2017-03-27 15:16:48','Fabric'),(9,'[u\'127.0.0.1\']','cat /proc/cpuinfo | grep \"core\" |wc -l','{\"127.0.0.1\": \"8\"}','2017-03-28 22:33:51','Fabric'),(10,'[u\'127.0.0.1\']','cat /etc/passwd','{\"127.0.0.1\": \"root:x:0:0:root:/root:/bin/bash<br/>bin:x:1:1:bin:/bin:/sbin/nologin<br/>daemon:x:2:2:daemon:/sbin:/sbin/nologin<br/>adm:x:3:4:adm:/var/adm:/sbin/nologin<br/>lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin<br/>sync:x:5:0:sync:/sbin:/bin/sync<br/>shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown<br/>halt:x:7:0:halt:/sbin:/sbin/halt<br/>mail:x:8:12:mail:/var/spool/mail:/sbin/nologin<br/>operator:x:11:0:operator:/root:/sbin/nologin<br/>games:x:12:100:games:/usr/games:/sbin/nologin<br/>ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin<br/>nobody:x:99:99:Nobody:/:/sbin/nologin<br/>systemd-bus-proxy:x:999:998:systemd Bus Proxy:/:/sbin/nologin<br/>systemd-network:x:192:192:systemd Network Management:/:/sbin/nologin<br/>dbus:x:81:81:System message bus:/:/sbin/nologin<br/>polkitd:x:998:997:User for polkitd:/:/sbin/nologin<br/>colord:x:997:996:User for colord:/var/lib/colord:/sbin/nologin<br/>abrt:x:173:173::/etc/abrt:/sbin/nologin<br/>libstoragemgmt:x:996:994:daemon account for libstoragemgmt:/var/run/lsm:/sbin/nologin<br/>rpc:x:32:32:Rpcbind Daemon:/var/lib/rpcbind:/sbin/nologin<br/>rtkit:x:172:172:RealtimeKit:/proc:/sbin/nologin<br/>chrony:x:995:992::/var/lib/chrony:/sbin/nologin<br/>rpcuser:x:29:29:RPC Service User:/var/lib/nfs:/sbin/nologin<br/>nfsnobody:x:65534:65534:Anonymous NFS User:/var/lib/nfs:/sbin/nologin<br/>usbmuxd:x:113:113:usbmuxd user:/:/sbin/nologin<br/>tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin<br/>geoclue:x:994:991:User for geoclue:/var/lib/geoclue:/sbin/nologin<br/>ntp:x:38:38::/etc/ntp:/sbin/nologin<br/>mysql:x:27:27:MariaDB Server:/var/lib/mysql:/sbin/nologin<br/>setroubleshoot:x:993:990::/var/lib/setroubleshoot:/sbin/nologin<br/>sssd:x:992:989:User for sssd:/:/sbin/nologin<br/>pulse:x:171:171:PulseAudio System Daemon:/var/run/pulse:/sbin/nologin<br/>gdm:x:42:42::/var/lib/gdm:/sbin/nologin<br/>sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin<br/>postfix:x:89:89::/var/spool/postfix:/sbin/nologin<br/>tcpdump:x:72:72::/:/sbin/nologin<br/>nginx:x:1000:1000::/home/nginx:/sbin/nologin<br/>dockerroot:x:991:986:Docker User:/var/lib/docker:/sbin/nologin<br/>named:x:25:25:Named:/var/named:/sbin/nologin<br/>hsqldb:x:96:96::/var/lib/hsqldb:/sbin/nologin<br/>ods:x:990:985:softhsm private keys owner:/var/lib/softhsm:/sbin/nologin<br/>apache:x:48:48:Apache:/usr/share/httpd:/sbin/nologin<br/>memcached:x:989:983:Memcached daemon:/run/memcached:/sbin/nologin<br/>tomcat:x:91:91:Apache Tomcat:/usr/share/tomcat:/sbin/nologin<br/>pkiuser:x:17:17:Certificate System:/usr/share/pki:/sbin/nologin<br/>dirsrv:x:389:389:389-ds-base:/usr/share/dirsrv:/sbin/nologin<br/>ipsilon:x:388:388:Ipsilon Server:/var/lib/ipsilon:/sbin/nologin\"}','2017-03-28 23:43:53','Fabric'),(11,'[u\'127.0.0.1\']','df -h','{\"127.0.0.1\": \"\\u6587\\u4ef6\\u7cfb\\u7edf             \\u5bb9\\u91cf  \\u5df2\\u7528  \\u53ef\\u7528 \\u5df2\\u7528% \\u6302\\u8f7d\\u70b9<br/>/dev/mapper/cl-root  100G   11G   90G   11% /<br/>devtmpfs             3.8G     0  3.8G    0% /dev<br/>tmpfs                3.8G   91M  3.7G    3% /dev/shm<br/>tmpfs                3.8G  9.1M  3.8G    1% /run<br/>tmpfs                3.8G     0  3.8G    0% /sys/fs/cgroup<br/>/dev/sdb2            494M  169M  326M   35% /boot<br/>/dev/mapper/cl-var    50G  7.2G   43G   15% /var<br/>/dev/mapper/cl-home   50G   33M   50G    1% /home<br/>tmpfs                772M   48K  772M    1% /run/user/0\"}','2017-03-30 14:28:32','Fabric'),(12,'[u\'127.0.0.1\']','echo \"hhe\";echo \"bbb\"','{\"127.0.0.1\": \"hhe<br/>bbb\"}','2017-03-30 16:04:31','Fabric'),(13,'[u\'127.0.0.1\']','echo \"hhe\";echo \"bbb\"','{\"127.0.0.1\": \"hhe<br/>bbb\"}','2017-03-30 16:04:31','Fabric'),(14,'[u\'127.0.0.1\', u\'123.207.86.123\']','cat /etc/fstab','{\"123.207.86.123\": \"run_error\", \"127.0.0.1\": \"#<br/># /etc/fstab<br/># Created by anaconda on Wed Dec 21 05:13:42 2016<br/>#<br/># Accessible filesystems, by reference, are maintained under \'/dev/disk\'<br/># See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info<br/>#<br/>/dev/mapper/cl-root     /                       xfs     defaults        0 0<br/>UUID=3ad49c4e-3a90-4a20-85b6-3bd35c2845a7 /boot                   xfs     defaults        0 0<br/>/dev/mapper/cl-home     /home                   xfs     defaults        0 0<br/>/dev/mapper/cl-var      /var                    xfs     defaults        0 0<br/>/dev/mapper/cl-swap     swap                    swap    defaults        0 0\"}','2017-03-30 23:10:12','Fabric'),(15,'[u\'127.0.0.1\', u\'123.207.86.123\']','cat /etc/fstab','{\"123.207.86.123\": \"run_error\", \"127.0.0.1\": \"#<br/># /etc/fstab<br/># Created by anaconda on Wed Dec 21 05:13:42 2016<br/>#<br/># Accessible filesystems, by reference, are maintained under \'/dev/disk\'<br/># See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info<br/>#<br/>/dev/mapper/cl-root     /                       xfs     defaults        0 0<br/>UUID=3ad49c4e-3a90-4a20-85b6-3bd35c2845a7 /boot                   xfs     defaults        0 0<br/>/dev/mapper/cl-home     /home                   xfs     defaults        0 0<br/>/dev/mapper/cl-var      /var                    xfs     defaults        0 0<br/>/dev/mapper/cl-swap     swap                    swap    defaults        0 0\"}','2017-03-30 23:10:26','Fabric');
/*!40000 ALTER TABLE `devops_runcmdlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devops_updatedisk`
--

DROP TABLE IF EXISTS `devops_updatedisk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devops_updatedisk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Interval` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devops_updatedisk`
--

LOCK TABLES `devops_updatedisk` WRITE;
/*!40000 ALTER TABLE `devops_updatedisk` DISABLE KEYS */;
/*!40000 ALTER TABLE `devops_updatedisk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'devops','appctrl'),(8,'devops','cmdbgroup'),(7,'devops','cmdbhost'),(16,'devops','diskused'),(13,'devops','fileremote'),(11,'devops','idc'),(15,'devops','pageinfo'),(12,'devops','remote_user'),(14,'devops','runcmdlog'),(17,'devops','updatedisk'),(25,'Monitor','action'),(26,'Monitor','actionoperation'),(24,'Monitor','hostgroup'),(23,'Monitor','hosts'),(28,'Monitor','maintenance'),(27,'Monitor','notifiersuser'),(20,'Monitor','service'),(19,'Monitor','serviceindex'),(21,'Monitor','templates'),(22,'Monitor','triggers'),(39,'MonitorDataSave','cpuload'),(37,'MonitorDataSave','cpustat'),(34,'MonitorDataSave','diskinfo'),(30,'MonitorDataSave','group'),(33,'MonitorDataSave','hardinfo'),(29,'MonitorDataSave','hostname'),(31,'MonitorDataSave','idc'),(35,'MonitorDataSave','meminfo'),(38,'MonitorDataSave','netinout'),(32,'MonitorDataSave','status'),(36,'MonitorDataSave','swapinfo'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-08 15:19:41'),(2,'auth','0001_initial','2017-03-08 15:19:42'),(3,'admin','0001_initial','2017-03-08 15:19:43'),(4,'admin','0002_logentry_remove_auto_add','2017-03-08 15:19:43'),(5,'contenttypes','0002_remove_content_type_name','2017-03-08 15:19:43'),(6,'auth','0002_alter_permission_name_max_length','2017-03-08 15:19:43'),(7,'auth','0003_alter_user_email_max_length','2017-03-08 15:19:43'),(8,'auth','0004_alter_user_username_opts','2017-03-08 15:19:43'),(9,'auth','0005_alter_user_last_login_null','2017-03-08 15:19:43'),(10,'auth','0006_require_contenttypes_0002','2017-03-08 15:19:43'),(11,'auth','0007_alter_validators_add_error_messages','2017-03-08 15:19:43'),(12,'devops','0001_initial','2017-03-08 15:19:44'),(13,'sessions','0001_initial','2017-03-08 15:19:44'),(14,'devops','0002_auto_20170309_1114','2017-03-09 11:15:32'),(15,'devops','0003_auto_20170309_1829','2017-03-09 18:29:43'),(16,'devops','0004_idc_host','2017-03-11 13:12:02'),(17,'devops','0005_auto_20170312_2306','2017-03-12 23:06:43'),(18,'devops','0006_auto_20170312_2308','2017-03-12 23:08:50'),(20,'devops','0007_fileremote','2017-03-19 18:34:50'),(22,'devops','0008_runcmdlog','2017-03-24 16:23:24'),(23,'devops','0009_auto_20170324_1702','2017-03-24 17:02:15'),(24,'devops','0010_auto_20170327_1529','2017-03-27 15:29:24'),(25,'devops','0011_auto_20170329_1730','2017-03-29 17:30:54'),(26,'devops','0012_diskused','2017-03-30 15:57:28'),(27,'devops','0013_updatedisk','2017-04-03 23:46:28'),(28,'devops','0014_appctrl','2017-04-11 19:33:11'),(29,'devops','0015_remove_appctrl_appname','2017-04-11 19:33:11'),(30,'devops','0016_remove_appctrl_killapp','2017-04-11 19:33:11'),(31,'devops','0017_delete_app','2017-04-11 19:33:11'),(32,'Monitor','0001_initial','2017-04-18 21:01:34'),(33,'Monitor','0002_auto_20170424_1451','2017-04-24 14:51:14'),(34,'Monitor','0003_auto_20170424_1504','2017-04-24 15:04:31'),(35,'MonitorDataSave','0001_initial','2017-04-25 23:25:24'),(36,'devops','0018_pageinfo_applistpage','2017-06-30 11:26:47'),(37,'Monitor','0004_auto_20170705_1433','2017-07-05 14:33:14'),(38,'Monitor','0005_remove_action_operations','2017-07-06 08:41:51'),(39,'Monitor','0006_remove_action_condition','2017-07-06 08:52:41');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0aol5lxosrouaccueh53t7zel96qskuo','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-24 19:52:26'),('0di4dril60k888thgofqvgezqyxay9mp','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-22 17:47:39'),('0fk0k88xf8f7liuxwkmhn83pk7ck8y16','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:37:43'),('0mjrqlqghnhidircs4916qike89o81zb','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 15:14:30'),('15n79yn0uzjjn2e5v7lrz3cmid3p93xw','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:24'),('1cvs81j0wmkq3qy5pmhtnl0qaljo7j2o','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:34:57'),('1npyd0nhhtfd80cliega161k3p24c89y','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-27 10:48:00'),('2b8nez09klha9fr769vdm49ece34sdni','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 09:45:58'),('2c0k5hfkf8r8dvlu5vr5tz2n85dgulus','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:38:31'),('2on3zgurhpmbmgmvejohygs4rk1l8pc3','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:35'),('30d4rkrfoplg2vxkza02zzinclo1ugfr','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-21 14:46:10'),('34p7ijve7kzl0rmcks9nkyjjvnhwqytc','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 23:07:15'),('3dub306huzj9p4g3302p5qshuurvdc9u','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 21:59:32'),('3skv9nszy5ckl9fk0w9m6d7io88otuut','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:35:07'),('3tq5q79x881fe3ofi0n4otb3aimxyte6','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:39:02'),('456yh1q7bq99ilapyxtgerb9vg437z3z','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-28 10:11:40'),('45mrld3gbuykmh8hzrfkxszlvfc5b4gi','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:47'),('4czq9ohvi3fnvs8w9eoqta60xn3tszgb','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 00:30:59'),('4koj7o2e0no233olatt2zvyqkgec1llp','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:37:37'),('4vqrl124n5u1nxbb48rx4c2kzphc02ym','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-22 22:56:51'),('5jfkf4cptfkpjsm9oeybi5nouz8dl8sa','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 08:57:20'),('5o2ld7q102le8fe5sugahv4kzz1yae2s','NGIzYmVmOTEyYjdmMDMyOTlmZmNjNTg3MWVlZmEzMGUyY2NjYjA0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-04-03 14:30:41'),('622n4n2q47bvla9f3mtggauooiwm3e31','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-05 00:48:44'),('62i0vwxfbnty5sdy0w1511x4fvoprjzo','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 13:17:31'),('64gtjx14dbiww06cg0k8fczcj4gx6jyq','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-22 21:55:28'),('6dc92fjvroig66i95n865waept3ljzwd','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 10:28:47'),('6dn245u3ab5ggsv49oucj4u5iphxk3i7','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-09 23:31:26'),('6i8s4q3dtr66r8ghnil8svtlidei9iek','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 09:57:31'),('6j0p0epk4p6hknyed8q1ecidy8t2eyn3','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-10 15:04:51'),('7401ywwj60bx4yatq25p7e65oz5ix00l','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 09:48:55'),('74l050dzzypwzv3153n12qk5rlr2yd76','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-26 21:44:23'),('76moqmvhb8kwsrasw5sra415yw8bektw','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-03 20:10:00'),('7cymvr6f2lrdrage1923ro7eocx48scn','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 10:19:55'),('7eqrgcm3koxz5dor8xs7r6njyy9emx2g','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:43'),('8qou6s2538a2k6mvedomr36q1i636jy6','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-08 13:44:07'),('8triiag9g708t8o69g4dk0fkdmxlr00w','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:17'),('91dz69b54irjfaiby7dxd8ye8p0fh4sj','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:34:43'),('97cfjlisgjpee5gqpede14ue8ba8iqk5','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-24 11:38:48'),('9e8gttjdsa6wwpmlb3mmznpoz5rm9gjg','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 16:23:22'),('9lpthvfaa273hyxu9utq8s0rlxeqz6nn','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:34:53'),('9teitetva7m7wchwrjkymbxltn3lpujq','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-06 16:23:36'),('anls9pscmy7gwo3agmjopqnu652vpzxf','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-03 16:02:45'),('at3pzf2na799ktns1vuxbqz6j8dc8c7j','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 17:18:55'),('b6vcgv7xv9ictlaiahat1yu2fpekb1dx','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-08 00:29:17'),('bbxqcqufkgt47x6cli0dl1dxs4kj5x0z','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-27 10:20:20'),('bsepsmng3p9hj71jftx75g3pieggak8i','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-04 17:50:21'),('c1388dpe0xxuessukns4dis6likexkoj','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 23:17:08'),('cl8okj9vxktsm5fxz10j6b491w628rc0','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-29 17:37:03'),('d455ilclqifk194a5k3eib6uc9ibebyf','NGIzYmVmOTEyYjdmMDMyOTlmZmNjNTg3MWVlZmEzMGUyY2NjYjA0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-03-22 23:31:51'),('d6h8hxe5cfz94ozs33j77z16ymxjkfof','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-09 23:28:56'),('d832huljsywbw8fa69u78smyob8h7k0k','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-03 00:37:16'),('dk7n6c02fl3byj5vm2ymprd3miuxyq4x','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-02 21:39:00'),('du2kj4xa6xi4h8pbyp933zdolm2x1r1j','NGIzYmVmOTEyYjdmMDMyOTlmZmNjNTg3MWVlZmEzMGUyY2NjYjA0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-07-17 09:45:28'),('e4m14putc5adl7g5yv6w6cfgl3847dkv','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:34:37'),('ebagiejup66jqpusfe760r50rqbgxa0j','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-05 22:01:58'),('eww7c28yz3iu21v7nq1kmrauknnkxc7a','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 14:48:15'),('ey00x77xwlmzuqpi3cpz5re5jf54gn1q','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-27 21:43:21'),('f0yut9i0ui3obrsvi8y8tz5d7pjkdkd1','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-02 19:41:39'),('fhh85lvfch2wgcetg0p2cxla8i544yru','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 15:13:30'),('fhqr8kdzc9wsfx68kiu03yz4sbuy4aki','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-27 21:52:42'),('fokg4n9s84hwz96gbci6rel1u4tederm','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:37:29'),('ft2ugwqk5verpdb1dxlvedddecsbzrir','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 12:22:30'),('fz3lcf7s50zoh4t4fs6thwa1bi04qun3','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-22 15:21:37'),('h7wwlj96b9kc3fu1fb01nykai818klc6','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:02'),('hgjijslg63nlkrvybm755vuv6kew0gly','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-29 08:17:18'),('humt29qz58aar2ow8ywkghsgytfd4q8o','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-05 19:35:18'),('ii496ghi0sohjn1nipaqqmzk7hnby2r4','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-28 17:26:25'),('jakt1k4rgp9wp9qpn7uipr8mcnlx57t9','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-26 22:14:38'),('jvttx3o530bvg1t02yk7bt1rg88k8539','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-06-28 17:59:08'),('jx50aknql10t1g7xntyc3i0a9bx7vzcn','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 10:23:59'),('kdqc0ocud5b5pqi2crunakgyar5d7v8j','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-29 09:29:02'),('kjfho73twfe6fzch4scg6cz1fcm9tptp','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 16:32:42'),('klg325lgxmcqj2pmi6a00b6s6ipsr48a','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 10:24:29'),('ktgjfepcsrwslab8qpwhmv1p88phopv4','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-18 08:55:15'),('l29ao7va0ajb56pzqf91wjqvd2wiwfth','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 12:58:10'),('l3ou6u9wsapg9r5f9kzae3530swatwx3','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-02 21:54:56'),('lz73snr3i3f3v3bjr54l97llsompqcc5','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 00:21:03'),('mtftc3op6zwf4csm3sc2frohvsfutxay','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-24 17:34:14'),('mtnf0ud9rqfw6gz3g9f1krmnz1vbp6pa','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:35:03'),('mwj99bx0xxvxtfvr9izeil644ierww8c','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:05'),('o17qc1dhr8wxuwwet9bec5qvtcr8edcr','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-07 11:10:55'),('o7qi1q1v3ty1n58bt3ma340zlhj4waql','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:37:32'),('ohixtqzupiwy89aiwnorzdedjwugikfk','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 22:08:54'),('om64n0ulvhixlm65zx2sfcko7v6hyoje','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-05 21:27:21'),('phtwa6fun8ig258ui74wwicwyx7wxwha','NGIzYmVmOTEyYjdmMDMyOTlmZmNjNTg3MWVlZmEzMGUyY2NjYjA0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-03-26 08:10:39'),('piv18tc6qkpdyffclyvr7r49i7g33b55','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 15:52:52'),('pzu2b7tyww9af1sn1hsv7prewx000dat','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-07 16:33:33'),('qly5cpewv6fzgkjyq6l5oguvf2arhhfd','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-03 22:11:35'),('qx3h0b3pjatjxzgbc98xc6h1inn5iip8','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-05 22:31:25'),('r1ayyojrqykr8yi8w9lysuxpyh95ld4i','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-08 13:21:33'),('rdhingbqbgb7eldac0k1gkv52wjwsyvt','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-24 08:53:05'),('sacm7x0f9w5ynpbx7a2xwrj2u9qatotl','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 11:28:50'),('serxbs8ibtr9cbbgh01n6e2t8e8dkwad','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:36:13'),('sppx9zmblwtb1o3a9swvj3ul5rysk5x5','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 10:28:22'),('t497gisij5tvv9epi10qanuur22wmk0q','NGIzYmVmOTEyYjdmMDMyOTlmZmNjNTg3MWVlZmEzMGUyY2NjYjA0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-06-08 13:05:09'),('th8i1cnjz2z5816puchagtgxezrhzc7v','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 10:34:48'),('u9vf0hqekvw4uyfe59ptgtux3o01tnhc','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-07 11:51:25'),('vc4ww4fel4vfmnwa0d0mgatuo1gx8tsp','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-28 17:46:30'),('vgzt6rp5xku8kp8wew5xf2iad15hawa1','NGIzYmVmOTEyYjdmMDMyOTlmZmNjNTg3MWVlZmEzMGUyY2NjYjA0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-03-25 10:35:47'),('vrb1w0vuct6gxyjtiendsguk5o9xzsuq','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 12:27:54'),('w0kokmimfpokwwn9cdbor13j30etgpri','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-07 17:32:31'),('wpoqac4wak78ficqy0ned0701apb63b2','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-29 06:57:39'),('wqg8uaog21rhd13s634e9hx9831dzfhi','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-04 16:25:14'),('wvt56qvytrrr5r0j5xsgen037skhzn4y','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-08 14:22:50'),('y0fal0s2dedqyd4g34eikqrrg0p8hqi7','NGIzYmVmOTEyYjdmMDMyOTlmZmNjNTg3MWVlZmEzMGUyY2NjYjA0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-06-09 09:09:11'),('yf1je2flrox7n5ka265vb3inuilf84hp','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-27 14:33:27'),('yzl52u77mw52aj8kenxap0a0noobnk5t','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-06-28 17:55:10'),('z0dj63z1x0riqa75b2pcx0jksduohbqb','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-07-17 10:31:40'),('zar3maa2x5ooy4jhhmfrh4t875gebsav','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-03 22:11:03'),('zb2bq5t8buumx0f7w35ikehwhny7wflp','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-08 15:37:29'),('zbep0f5p500unromggbwr5vn2jchy4k9','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-06-30 17:48:57'),('zol8oakdfgjsizn0papacoyklykv6qc6','ODdiMGM3ODE4NWYzZmQ0Y2FlNzE1Zjc4ODUxNWU0Mzk5NTA5ZjJkMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmZTUxMjUzZjk0YzU4NzJmMGM3MTEzZGM0YTZhMGE1N2UxOGEyZDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-08 12:14:21');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-07 18:37:58
