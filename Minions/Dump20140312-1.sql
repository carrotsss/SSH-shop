CREATE DATABASE  IF NOT EXISTS `minions` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `minions`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: minions
-- ------------------------------------------------------
-- Server version	5.1.50-community

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_name` varchar(45) DEFAULT NULL,
  `Admin_pwd` varchar(45) DEFAULT NULL,
  `Admin_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin',2),(2,'zhuweiqiang2','admin',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlog`
--

DROP TABLE IF EXISTS `adminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlog` (
  `Adminlog_id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_id` int(11) DEFAULT NULL,
  `Action_method` varchar(45) DEFAULT NULL,
  `Action_name` varchar(45) DEFAULT NULL,
  `Adminlog_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Adminlog_id`),
  KEY `adminid_idx` (`Admin_id`),
  CONSTRAINT `adminid` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlog`
--

LOCK TABLES `adminlog` WRITE;
/*!40000 ALTER TABLE `adminlog` DISABLE KEYS */;
INSERT INTO `adminlog` VALUES (1,1,'showAdmin','admin_showAdmin','2014-03-10 09:34:26'),(2,1,'showAdminPower','admin_showAdminPower','2014-03-10 09:34:27'),(3,1,'changeAdminPower','admin_changeAdminPower','2014-03-10 09:34:31'),(4,1,'showAdminPower','admin_showAdminPower','2014-03-10 09:34:31'),(5,1,'changeAdminPower','admin_changeAdminPower','2014-03-10 09:45:57'),(6,1,'showAdminPower','admin_showAdminPower','2014-03-10 09:45:57'),(7,1,'getGonggao','editshouye_getGonggao','2014-03-10 11:24:16'),(8,1,'getBanners','editshouye_getBanners','2014-03-10 11:24:19'),(9,1,'getBanners','editshouye_getBanners','2014-03-10 11:26:13'),(10,1,'saveBanner','editbanner_saveBanner','2014-03-10 11:26:20'),(11,1,'getBanners','editshouye_getBanners','2014-03-10 11:26:20'),(12,1,'saveBanner','editbanner_saveBanner','2014-03-10 11:26:30'),(13,1,'getBanners','editshouye_getBanners','2014-03-10 11:26:30'),(14,1,'getBanners','editshouye_getBanners','2014-03-10 11:26:35'),(15,1,'getBanners','editshouye_getBanners','2014-03-10 11:26:37'),(16,1,'saveBanner','editbanner_saveBanner','2014-03-10 11:26:49'),(17,1,'getBanners','editshouye_getBanners','2014-03-10 11:26:49'),(18,1,'saveBanner','editbanner_saveBanner','2014-03-10 11:27:16'),(19,1,'getBanners','editshouye_getBanners','2014-03-10 11:27:16'),(20,1,'getBanners','editshouye_getBanners','2014-03-10 11:29:12'),(21,1,'saveBanner','editbanner_saveBanner','2014-03-10 11:29:19'),(22,1,'getBanners','editshouye_getBanners','2014-03-10 11:29:20'),(23,1,'getBanners','editshouye_getBanners','2014-03-10 11:30:52'),(24,1,'saveBanner','editbanner_saveBanner','2014-03-10 11:30:58'),(25,1,'getBanners','editshouye_getBanners','2014-03-10 11:30:59'),(26,1,'getGonggao','editshouye_getGonggao','2014-03-10 11:31:55'),(27,1,'getGonggao','editshouye_getGonggao','2014-03-10 11:32:57'),(28,1,'saveBanner1','editbanner_saveBanner1','2014-03-10 11:32:58'),(29,1,'getGonggao','editshouye_getGonggao','2014-03-11 15:55:01'),(30,1,'saveBanner1','editbanner_saveBanner1','2014-03-11 15:55:04'),(31,1,'getGonggao','editshouye_getGonggao','2014-03-11 15:55:05'),(32,1,'getBanners','editshouye_getBanners','2014-03-11 15:55:09'),(33,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:25'),(34,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:25'),(35,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:25'),(36,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:26'),(37,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:26'),(38,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:26'),(39,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:27'),(40,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:27'),(41,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:27'),(42,1,'getBanners','editshouye_getBanners','2014-03-11 15:55:28'),(43,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:55:43'),(44,1,'getBanners','editshouye_getBanners','2014-03-11 15:55:43'),(45,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:56:20'),(46,1,'getBanners','editshouye_getBanners','2014-03-11 15:56:21'),(47,1,'getBanners','editshouye_getBanners','2014-03-11 15:57:42'),(48,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:57:53'),(49,1,'getBanners','editshouye_getBanners','2014-03-11 15:57:54'),(50,1,'saveBanner','editbanner_saveBanner','2014-03-11 15:58:04'),(51,1,'getBanners','editshouye_getBanners','2014-03-11 15:58:04'),(52,1,'getAdminlog','admin_getAdminlog','2014-03-11 19:35:09'),(53,1,'getAdminlog','admin_getAdminlog','2014-03-11 19:37:18'),(54,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 20:33:49'),(55,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 20:34:53'),(56,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 20:35:50'),(57,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 21:59:11'),(58,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:00:26'),(59,1,'sendGoods','admin_sendGoods','2014-03-11 22:00:29'),(60,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:01:17'),(61,1,'sendGoods','admin_sendGoods','2014-03-11 22:01:20'),(62,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:03:30'),(63,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:04:35'),(64,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:04:35'),(65,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:04:36'),(66,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:04:36'),(67,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:04:37'),(68,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:04:37'),(69,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:04:38'),(70,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:05:02'),(71,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:05:20'),(72,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:05:58'),(73,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:07:59'),(74,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:14:33'),(75,1,'sendGoods','admin_sendGoods','2014-03-11 22:14:36'),(76,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:18:08'),(77,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:18:10'),(78,1,'sendGoods','admin_sendGoods','2014-03-11 22:18:12'),(79,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:19:36'),(80,1,'sendGoods','admin_sendGoods','2014-03-11 22:19:38'),(81,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:21:01'),(82,1,'sendGoods','admin_sendGoods','2014-03-11 22:21:09'),(83,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:22:20'),(84,1,'sendGoods','admin_sendGoods','2014-03-11 22:22:22'),(85,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:22:35'),(86,1,'getAdminlog','admin_getAdminlog','2014-03-11 22:58:28'),(87,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 22:59:47'),(88,1,'getGonggao','editshouye_getGonggao','2014-03-11 23:01:26'),(89,1,'getBanners','editshouye_getBanners','2014-03-11 23:01:28'),(90,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:01:33'),(91,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 23:07:02'),(92,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 23:07:03'),(93,1,'showAdmin','admin_showAdmin','2014-03-11 23:07:35'),(94,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:07:39'),(95,1,'showAdmin','admin_showAdmin','2014-03-11 23:10:02'),(96,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:10:04'),(97,1,'showAdmin','admin_showAdmin','2014-03-11 23:11:18'),(98,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:11:19'),(99,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:13:17'),(100,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:13:18'),(101,1,'showAdmin','admin_showAdmin','2014-03-11 23:13:19'),(102,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:13:20'),(103,1,'showAdmin','admin_showAdmin','2014-03-11 23:13:23'),(104,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:13:25'),(105,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:13:46'),(106,1,'showAdmin','admin_showAdmin','2014-03-11 23:13:47'),(107,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:13:48'),(108,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:13:50'),(109,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:14:31'),(110,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:14:32'),(111,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:14:32'),(112,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:14:36'),(113,1,'showAdmin','admin_showAdmin','2014-03-11 23:16:37'),(114,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:16:38'),(115,1,'showAdmin','admin_showAdmin','2014-03-11 23:16:41'),(116,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:16:42'),(117,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:16:44'),(118,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:16:58'),(119,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:16:59'),(120,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:17:00'),(121,1,'showAdmin','admin_showAdmin','2014-03-11 23:17:12'),(122,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:17:13'),(123,1,'getUsersGoods','admin_getUsersGoods','2014-03-11 23:18:45'),(124,1,'getGonggao','editshouye_getGonggao','2014-03-11 23:18:53'),(125,1,'showAdmin','admin_showAdmin','2014-03-11 23:18:56'),(126,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:18:57'),(127,1,'getAdminlog','admin_getAdminlog','2014-03-11 23:18:59'),(128,1,'showAdmin','admin_showAdmin','2014-03-11 23:19:14'),(129,1,'showAdminPower','admin_showAdminPower','2014-03-11 23:19:15'),(130,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 14:57:27'),(131,1,'getGonggao','editshouye_getGonggao','2014-03-12 14:57:32'),(132,1,'getBanners','editshouye_getBanners','2014-03-12 14:57:33'),(133,1,'showAdmin','admin_showAdmin','2014-03-12 14:57:35'),(134,1,'getAdminlog','admin_getAdminlog','2014-03-12 14:57:36'),(135,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 15:07:45'),(136,1,'getGonggao','editshouye_getGonggao','2014-03-12 15:07:49'),(137,1,'getBanners','editshouye_getBanners','2014-03-12 15:07:51'),(138,1,'showAdmin','admin_showAdmin','2014-03-12 15:07:54'),(139,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:07:55'),(140,1,'changeAdminPower','admin_changeAdminPower','2014-03-12 15:07:59'),(141,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:07:59'),(142,1,'showAdmin','admin_showAdmin','2014-03-12 15:14:36'),(143,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:14:36'),(144,1,'showAdmin','admin_showAdmin','2014-03-12 15:14:47'),(145,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:14:48'),(146,1,'showAdmin','admin_showAdmin','2014-03-12 15:14:52'),(147,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:14:53'),(148,1,'showAdmin','admin_showAdmin','2014-03-12 15:15:05'),(149,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:15:06'),(150,1,'showAdmin','admin_showAdmin','2014-03-12 15:15:38'),(151,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:15:38'),(152,1,'showAdmin','admin_showAdmin','2014-03-12 15:16:06'),(153,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:16:07'),(154,1,'changeAdminPower','admin_changeAdminPower','2014-03-12 15:16:11'),(155,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:16:11'),(156,1,'showAdmin','admin_showAdmin','2014-03-12 15:16:12'),(157,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:16:13'),(158,1,'changeAdminPower','admin_changeAdminPower','2014-03-12 15:16:19'),(159,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:16:19'),(160,1,'showAdmin','admin_showAdmin','2014-03-12 15:16:21'),(161,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:16:22'),(162,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 15:18:27'),(163,1,'getGonggao','editshouye_getGonggao','2014-03-12 15:18:31'),(164,1,'getGonggao','editshouye_getGonggao','2014-03-12 15:18:38'),(165,1,'getGonggao','editshouye_getGonggao','2014-03-12 15:19:17'),(166,1,'getGonggao','editshouye_getGonggao','2014-03-12 15:19:38'),(167,1,'saveBanner1','editbanner_saveBanner1','2014-03-12 15:19:41'),(168,1,'getAdminlog','admin_getAdminlog','2014-03-12 15:20:06'),(169,1,'showAdmin','admin_showAdmin','2014-03-12 15:20:08'),(170,1,'showAdminPower','admin_showAdminPower','2014-03-12 15:20:09'),(171,1,'showAdmin','admin_showAdmin','2014-03-12 15:22:24'),(172,1,'showAdmin','admin_showAdmin','2014-03-12 15:23:01'),(173,1,'getAdminlog','admin_getAdminlog','2014-03-12 15:23:30'),(174,1,'showAdmin','admin_showAdmin','2014-03-12 15:23:31'),(175,1,'showAdmin','admin_showAdmin','2014-03-12 15:23:50'),(176,1,'showAdmin','admin_showAdmin','2014-03-12 15:23:51'),(177,1,'showAdmin','admin_showAdmin','2014-03-12 15:23:52'),(178,1,'showAdmin','admin_showAdmin','2014-03-12 15:23:53'),(179,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 16:25:50'),(180,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 16:25:54'),(181,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 16:26:26'),(182,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 16:43:57'),(183,1,'sendGoods','admin_sendGoods','2014-03-12 16:44:03'),(184,1,'getUsersGoods','admin_getUsersGoods','2014-03-12 16:44:05'),(185,1,'getGonggao','editshouye_getGonggao','2014-03-12 16:44:15'),(186,1,'saveBanner1','editbanner_saveBanner1','2014-03-12 16:44:20'),(187,1,'getBanners','editshouye_getBanners','2014-03-12 16:44:21'),(188,1,'saveBanner','editbanner_saveBanner','2014-03-12 16:44:35'),(189,1,'getBanners','editshouye_getBanners','2014-03-12 16:44:35'),(190,1,'showAdmin','admin_showAdmin','2014-03-12 16:44:39'),(191,1,'showAdminPower','admin_showAdminPower','2014-03-12 16:44:41'),(192,1,'changeAdminPower','admin_changeAdminPower','2014-03-12 16:44:45'),(193,1,'showAdminPower','admin_showAdminPower','2014-03-12 16:44:45'),(194,1,'getAdminlog','admin_getAdminlog','2014-03-12 16:44:47'),(195,1,'showAdmin','admin_showAdmin','2014-03-12 16:44:49'),(196,1,'getAdminlog','admin_getAdminlog','2014-03-12 16:44:54'),(197,1,'showAdmin','admin_showAdmin','2014-03-12 16:45:00'),(198,1,'showAdminPower','admin_showAdminPower','2014-03-12 16:45:02');
/*!40000 ALTER TABLE `adminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminpower`
--

DROP TABLE IF EXISTS `adminpower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminpower` (
  `Adminpower_id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_id` int(11) DEFAULT NULL,
  `Power_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Adminpower_id`),
  KEY `power_id_idx` (`Power_id`),
  KEY `admin_id_idx` (`Admin_id`),
  CONSTRAINT `admin_id` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `power_id` FOREIGN KEY (`Power_id`) REFERENCES `power` (`Power_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminpower`
--

LOCK TABLES `adminpower` WRITE;
/*!40000 ALTER TABLE `adminpower` DISABLE KEYS */;
INSERT INTO `adminpower` VALUES (1,1,1),(2,1,2),(3,1,3),(11,1,4),(12,1,5),(13,1,6),(14,1,7),(15,2,1),(17,2,7),(20,2,6),(21,1,8),(22,1,9),(23,1,10),(24,1,11),(25,2,8),(27,2,9);
/*!40000 ALTER TABLE `adminpower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `Brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `Brand_name` varchar(45) NOT NULL,
  `Brand_img` varchar(45) NOT NULL,
  PRIMARY KEY (`Brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'卓尼尔','pinpai.gif');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `Color_id` int(11) NOT NULL AUTO_INCREMENT,
  `Color` varchar(45) NOT NULL,
  PRIMARY KEY (`Color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'红色'),(2,'橙色'),(3,'黄色'),(4,'绿色'),(5,'灰色'),(6,'粉色'),(7,'黑色'),(8,'白色'),(9,'紫色'),(1000,'小图');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `Good_id` int(11) NOT NULL AUTO_INCREMENT,
  `Good_name` varchar(45) DEFAULT NULL,
  `Good_price` float DEFAULT NULL,
  `Good_content` varchar(10000) DEFAULT NULL,
  `Good_allnumber` int(11) DEFAULT NULL,
  `Good_salenumber` int(11) DEFAULT NULL,
  `Good_time` datetime DEFAULT NULL,
  `Good_marketprice` float DEFAULT NULL,
  `Good_avgscore` int(11) DEFAULT NULL,
  `Good_scan` int(11) DEFAULT NULL,
  `Brand_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Good_id`),
  KEY `FK_goods_1` (`Brand_id`),
  CONSTRAINT `FK_goods_1` FOREIGN KEY (`Brand_id`) REFERENCES `brand` (`Brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'男包包',222,'1',1,1,NULL,120,1,1,NULL),(2,'女包包',123,'1',1,1,NULL,400,1,1,NULL),(3,'男斜跨包',12,'1',1,1,NULL,444,1,1,NULL),(4,'女斜挎包',14,'1',1,1,NULL,443,1,1,NULL),(5,'男背包',3232,'22',1,1,NULL,3333,1,1,NULL),(6,'女背包',222,'1',1,1,NULL,23232,1,1,NULL),(7,'灵动春夏系列珠片褶皱手提包',728,'&lt;div class=&quot;TabbedPanelsContent&quot;&gt;\r\n	&lt;div id=&quot;qita_right_down1&quot;&gt;\r\n		&lt;table width=&quot;750&quot; class=&quot;ke-zeroborder&quot; id=&quot;qita_right_down1_t1&quot; border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;5&quot;&gt;\r\n			&lt;tbody&gt;\r\n				&lt;tr&gt;\r\n					&lt;td&gt;\r\n						性别：女\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						材质：牛皮\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						颜色系：桔色\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td&gt;\r\n						使用方法：手提\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						款式：不定型\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						场合：宴会-聚会\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td&gt;\r\n						风格：时尚-欧美风-简约\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						图案：纯色\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						流行元素：亮片\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td&gt;\r\n						大小：中型包\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						尺寸：13寸\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						适合季节：四季\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td&gt;\r\n						打开方式：铁铰\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						内部结构：内测拉链袋-手机袋\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						成品产地：中国\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td&gt;\r\n						包体大小：31.0*23.0*9.0cm\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						重量：0.88kg\r\n					&lt;/td&gt;\r\n					&lt;td&gt;\r\n						&amp;nbsp;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n			&lt;/tbody&gt;\r\n		&lt;/table&gt;\r\n		&lt;table width=&quot;600&quot; class=&quot;ke-zeroborder&quot; id=&quot;qita_right_down1_t2&quot; border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot;&gt;\r\n			&lt;tbody&gt;\r\n				&lt;tr&gt;\r\n					&lt;td&gt;\r\n						&lt;b&gt;请注意：&lt;/b&gt;包的颜色请选择确认后下单，系统按订单颜色发货，不接收留言选色！\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n			&lt;/tbody&gt;\r\n		&lt;/table&gt;\r\n		&lt;table width=&quot;750&quot; class=&quot;ke-zeroborder&quot; id=&quot;qita_right_down1_t3&quot; border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot;&gt;\r\n			&lt;tbody&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n						&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154712_625.jpg&quot; /&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n						&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154804_786.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154804_143.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154804_333.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_531.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_147.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_685.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_912.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_290.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_890.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_431.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_99.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154805_449.jpg&quot; /&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n						&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154826_782.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_165.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_476.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_951.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_613.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_988.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_605.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_657.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_318.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_946.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_996.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_15.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_277.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_628.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154827_446.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/Minions/attached/image/20140312/20140312154828_252.jpg&quot; /&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n				&lt;tr&gt;\r\n					&lt;td align=&quot;center&quot;&gt;\r\n					&lt;/td&gt;\r\n				&lt;/tr&gt;\r\n			&lt;/tbody&gt;\r\n		&lt;/table&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;',87,13,NULL,1828,5,0,1),(8,'[卓妮尔]青花瓷系列牛皮两用包',458,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'[哈森]极简复古系列箱型手提斜跨包 芥末黄',398,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'[卓妮尔]巴黎风尚系列两用包',388,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'[阿尔法·阿蒂斯特]橘涩流年系列手提包',226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'AMY TOSCANA GROUP系列牛皮手提/斜挎包',1480,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'[卓妮尔]芳华初梦系列手提斜挎包',298,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'[DUDU]简尚系列手提包',268,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'[DUDU]LE PAD 乐派系列牛皮手提/斜挎包',258,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'[阿尔法·阿蒂斯特]埃菲尔之恋系列手提/斜挎包',198,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'[DUDU]双链系列牛皮手提/斜挎包',238,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'[飞扬空间]环游系列地图两用包',107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'[梵贝斯]不莱梅音樂家系列-素雅大方气质单肩包',139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'[浪美]月光女神系列牛皮配料斜挎包',139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'[卡文]清新海军风系列单肩斜挎包',158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'[浪美]阳光假日系列单肩包',169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodscolor`
--

DROP TABLE IF EXISTS `goodscolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodscolor` (
  `Goodscolor_id` int(11) NOT NULL AUTO_INCREMENT,
  `Good_id` int(11) DEFAULT NULL,
  `Color_id` int(11) DEFAULT NULL,
  `Good_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Goodscolor_id`),
  KEY `FK_goodscolor_1` (`Color_id`),
  KEY `FK_goodscolor_2` (`Good_id`),
  CONSTRAINT `FK_goodscolor_1` FOREIGN KEY (`Color_id`) REFERENCES `colors` (`Color_id`),
  CONSTRAINT `FK_goodscolor_2` FOREIGN KEY (`Good_id`) REFERENCES `goods` (`Good_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodscolor`
--

LOCK TABLES `goodscolor` WRITE;
/*!40000 ALTER TABLE `goodscolor` DISABLE KEYS */;
INSERT INTO `goodscolor` VALUES (1,7,2,'1304027902');
/*!40000 ALTER TABLE `goodscolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodsimg`
--

DROP TABLE IF EXISTS `goodsimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodsimg` (
  `Goodsimg_id` int(11) NOT NULL AUTO_INCREMENT,
  `Good_id` int(11) DEFAULT NULL,
  `Goodsimg_img` varchar(45) DEFAULT NULL,
  `Color_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Goodsimg_id`),
  KEY `FK_goodsimg_1` (`Good_id`),
  KEY `FK_goodsimg_2` (`Color_id`),
  CONSTRAINT `FK_goodsimg_1` FOREIGN KEY (`Good_id`) REFERENCES `goods` (`Good_id`),
  CONSTRAINT `FK_goodsimg_2` FOREIGN KEY (`Color_id`) REFERENCES `colors` (`Color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodsimg`
--

LOCK TABLES `goodsimg` WRITE;
/*!40000 ALTER TABLE `goodsimg` DISABLE KEYS */;
INSERT INTO `goodsimg` VALUES (1,1,'01_006.jpg',1),(3,2,'01(7).jpg',1),(5,7,'03da.jpg',NULL),(6,3,'01_007.jpg',1),(7,7,'yanse1.gif',1),(8,7,'yanse2.gif',2),(9,7,'yanse3.gif',7),(10,7,'01.jpg',1000),(11,7,'02da.jpg',NULL),(12,7,'03da.jpg',NULL),(13,7,'04da.jpg',NULL),(14,7,'05da.jpg',NULL),(15,7,'06da.jpg',NULL),(16,8,'floor3_goods12.jpg',NULL),(17,9,'floor3_goods13.jpg',NULL),(18,10,'floor3_goods14.jpg',NULL),(19,11,'floor3_goods15.jpg',NULL),(20,12,'floor3_goods11.jpg',NULL),(21,13,'floor3_goods21.jpg',NULL),(22,14,'floor3_goods22.jpg',NULL),(23,15,'floor3_goods23.jpg',NULL),(24,16,'floor3_goods24.jpg',NULL),(25,17,'floor3_goods25.jpg',NULL),(26,18,'floor3_goods31.jpg',NULL),(27,19,'floor3_goods32.jpg',NULL),(28,20,'floor3_goods33.jpg',NULL),(29,21,'floor3_goods34.jpg',NULL),(30,22,'floor3_goods35.jpg',NULL),(31,4,'01(5).jpg',NULL),(32,6,'01(6).jpg',NULL),(33,5,'01_010.jpg',NULL);
/*!40000 ALTER TABLE `goodsimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodsscore`
--

DROP TABLE IF EXISTS `goodsscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodsscore` (
  `Goodsscore_id` int(11) NOT NULL AUTO_INCREMENT,
  `Good_id` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Goodsscore_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`Goodsscore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodsscore`
--

LOCK TABLES `goodsscore` WRITE;
/*!40000 ALTER TABLE `goodsscore` DISABLE KEYS */;
/*!40000 ALTER TABLE `goodsscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodstag`
--

DROP TABLE IF EXISTS `goodstag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodstag` (
  `Goodstag_id` int(11) NOT NULL AUTO_INCREMENT,
  `Good_id` int(11) DEFAULT NULL,
  `Tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Goodstag_id`),
  KEY `FK_goodstag_1` (`Good_id`),
  KEY `FK_goodstag_2` (`Tag_id`),
  CONSTRAINT `FK_goodstag_1` FOREIGN KEY (`Good_id`) REFERENCES `goods` (`Good_id`),
  CONSTRAINT `FK_goodstag_2` FOREIGN KEY (`Tag_id`) REFERENCES `tag` (`Tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodstag`
--

LOCK TABLES `goodstag` WRITE;
/*!40000 ALTER TABLE `goodstag` DISABLE KEYS */;
INSERT INTO `goodstag` VALUES (1,7,1),(2,7,2),(3,7,3),(4,7,4),(5,7,5);
/*!40000 ALTER TABLE `goodstag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodstype`
--

DROP TABLE IF EXISTS `goodstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goodstype` (
  `Goodstype_id` int(11) NOT NULL AUTO_INCREMENT,
  `Good_id` int(11) DEFAULT NULL,
  `Type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Goodstype_id`),
  KEY `forgoodid_idx` (`Good_id`),
  KEY `fortypeid_idx` (`Type_id`),
  CONSTRAINT `forgoodid` FOREIGN KEY (`Good_id`) REFERENCES `goods` (`Good_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fortypeid` FOREIGN KEY (`Type_id`) REFERENCES `type` (`Type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodstype`
--

LOCK TABLES `goodstype` WRITE;
/*!40000 ALTER TABLE `goodstype` DISABLE KEYS */;
INSERT INTO `goodstype` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,5),(5,1,1),(6,2,1),(7,3,1),(8,4,1),(9,3,2),(10,4,3),(11,5,1),(12,5,2),(13,6,1),(14,6,3),(15,7,1),(16,7,3),(28,13,3),(34,16,3),(45,8,8),(46,8,3),(47,9,7),(48,9,3),(49,10,8),(50,10,3),(51,11,6),(52,11,3),(53,12,6),(54,12,3),(55,13,6),(56,14,6),(57,14,3),(58,15,6),(59,15,3),(60,16,6),(61,17,6),(62,17,3),(63,18,8),(64,18,3),(65,19,7),(66,19,3),(67,20,7),(68,20,3),(69,21,7),(70,21,3),(71,22,5),(72,22,3);
/*!40000 ALTER TABLE `goodstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `History_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Good_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`History_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `power`
--

DROP TABLE IF EXISTS `power`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power` (
  `Power_id` int(11) NOT NULL AUTO_INCREMENT,
  `Power_name` varchar(45) DEFAULT NULL,
  `Power_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Power_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `power`
--

LOCK TABLES `power` WRITE;
/*!40000 ALTER TABLE `power` DISABLE KEYS */;
INSERT INTO `power` VALUES (1,'查看订单','商品'),(2,'修改订单','商品'),(3,'增加商品','商品'),(4,'查看用户','用户'),(5,'删除用户','用户'),(6,'首页广告','广告'),(7,'首页热门','广告'),(8,'查看管理员','用户'),(9,'首页动态编辑','广告'),(10,'查看日志','用户'),(11,'发货处理','用户');
/*!40000 ALTER TABLE `power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouyebanner`
--

DROP TABLE IF EXISTS `shouyebanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouyebanner` (
  `Shouyebanner_id` int(11) NOT NULL AUTO_INCREMENT,
  `Shouyebaner_img` varchar(45) DEFAULT NULL,
  `Shouyebanner_content` varchar(45) DEFAULT NULL,
  `Shouyebanner_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Shouyebanner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouyebanner`
--

LOCK TABLES `shouyebanner` WRITE;
/*!40000 ALTER TABLE `shouyebanner` DISABLE KEYS */;
INSERT INTO `shouyebanner` VALUES (1,'全场满99元免运费（支持货到付款，10天无条件退货款）!','全场满99元免运费（支持货到付款，10天无条件退货款）','gonggao'),(2,NULL,'banner1.JPG','banner1'),(3,NULL,'banner2_1.jpg','banner21'),(4,NULL,'banner2_2.jpg','banner22'),(5,NULL,'banner2_3.jpg','banner23'),(6,NULL,'banner2_4.jpg','banner24'),(7,NULL,'banner2_5.jpg','banner25'),(8,NULL,'热卖休闲包 77元起！','hotact1'),(9,NULL,'签到送集分宝，天天来天天送！','hotact2'),(10,NULL,'2012DUDU品牌入夏经典包款','hotact3'),(11,NULL,'2012LO必败包款','hotact4'),(12,NULL,'麦包包招行联名卡，绑定送好礼！！','situation1'),(13,NULL,'购物车有新功能啦！','situation2'),(14,NULL,' 麦包包客服重要提示，谨防诈骗！','situation3'),(15,NULL,'加急配送服务上线了！','situation4'),(16,NULL,'floor1_left.jpg','of1'),(17,NULL,'floor1_main_1.jpg','of2'),(18,NULL,'floor1_main_2.jpg','of3'),(19,NULL,'floor1_main_3.jpg','of4'),(20,NULL,'floor1_main_4.jpg','of5'),(21,NULL,'floor1_main_5.jpg','of6'),(22,NULL,'floor1_main_6.jpg','of7'),(23,NULL,'floor1_main_7.jpg','of8'),(24,NULL,'floor1_right_1.jpg','of9'),(25,NULL,'floor1_right_2.jpg','of10');
/*!40000 ALTER TABLE `shouyebanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `Tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `Tag_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'女包'),(2,'牛皮包'),(3,'提包'),(4,'亮片'),(5,'桔色');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `Type_id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_name` varchar(45) DEFAULT NULL,
  `Type_parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'包',1),(2,'男包',1),(3,'女包',1),(4,'男斜跨包',2),(5,'女斜挎包',3),(6,'女手提包',3),(7,'女斜跨包',3),(8,'女两用包',3),(9,'',NULL);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_pwd` varchar(45) DEFAULT NULL,
  `User_name` varchar(45) DEFAULT NULL,
  `User_gender` varchar(45) DEFAULT NULL,
  `User_address` varchar(45) DEFAULT NULL,
  `User_email` varchar(45) DEFAULT NULL,
  `User_tel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'123','admin','男',NULL,NULL,NULL),(2,'111111',NULL,NULL,NULL,NULL,'13821836666'),(3,'123','zhuweiqiang','男',NULL,NULL,'zhuweiqiang');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersaddress`
--

DROP TABLE IF EXISTS `usersaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersaddress` (
  `Ua_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Ua_tel` varchar(45) DEFAULT NULL,
  `Ua_address` varchar(100) DEFAULT NULL,
  `Ua_email` varchar(45) DEFAULT NULL,
  `Ua_code` int(11) DEFAULT NULL,
  `Ua_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Ua_id`),
  KEY `user_id_idx` (`User_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`User_id`) REFERENCES `users` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersaddress`
--

LOCK TABLES `usersaddress` WRITE;
/*!40000 ALTER TABLE `usersaddress` DISABLE KEYS */;
INSERT INTO `usersaddress` VALUES (1,2,'13','陕西铜川王益区123','41331308@qq.com',123,'123'),(2,3,'123','广东广州越秀区132','413331308@qq.com',213,'123'),(3,2,'123','陕西宝鸡陈仓区123123','413331308@qq.com',123,'住 '),(4,2,'123','陕西铜川王益区123','413331308@qq.com',123,'zhuweiqin'),(5,2,'123','陕西铜川印台区123','413331308@qq.com',123,'zhuweiqiang'),(6,2,'123','四川攀枝花米易县123','413331308@qq.com',123,'zhuweiqiang'),(7,2,'123','重庆双桥区123','413331308@qq.com',123,'123'),(8,2,'123','四川攀枝花其他123','413331308@qq.com',123,'zhuweiqiang'),(9,2,'213','四川攀枝花其他123','413331308@qq.com',123,'zhuweiqiang');
/*!40000 ALTER TABLE `usersaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersgoods`
--

DROP TABLE IF EXISTS `usersgoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersgoods` (
  `Usersgoods_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Good_id` int(11) DEFAULT NULL,
  `Color_id` int(11) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Ua_id` int(11) DEFAULT NULL,
  `Time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Usersgoods_id`),
  KEY `FK_usersgoods_1` (`Good_id`),
  KEY `FK_usersgoods_2` (`User_id`),
  KEY `colorid_idx` (`Color_id`),
  KEY `uaid_idx` (`Ua_id`),
  CONSTRAINT `colorid` FOREIGN KEY (`Color_id`) REFERENCES `colors` (`Color_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_usersgoods_1` FOREIGN KEY (`Good_id`) REFERENCES `goods` (`Good_id`),
  CONSTRAINT `FK_usersgoods_2` FOREIGN KEY (`User_id`) REFERENCES `users` (`User_id`),
  CONSTRAINT `uaid` FOREIGN KEY (`Ua_id`) REFERENCES `usersaddress` (`Ua_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersgoods`
--

LOCK TABLES `usersgoods` WRITE;
/*!40000 ALTER TABLE `usersgoods` DISABLE KEYS */;
INSERT INTO `usersgoods` VALUES (1,1,7,1,1,1,'2014-03-11 11:47:14',1),(2,2,7,1,5,1,'2014-03-11 11:47:14',0),(3,3,7,1,1,2,'2014-03-11 11:47:14',1);
/*!40000 ALTER TABLE `usersgoods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-12 16:47:40
