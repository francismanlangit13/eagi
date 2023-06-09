-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: fdb32.awardspace.net    Database: 4050821_eagri
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `privilage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin@gmail.com','$2y$10$rmBnmFdpbtw4DatgAogaf.uAJp.EYQs8koJ.I7ThwspQw7SVYo3ce',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigned_orders`
--

DROP TABLE IF EXISTS `assigned_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigned_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_orders`
--

LOCK TABLES `assigned_orders` WRITE;
/*!40000 ALTER TABLE `assigned_orders` DISABLE KEYS */;
INSERT INTO `assigned_orders` VALUES (1,3,0),(2,5,0),(3,15,0),(4,0,0),(5,0,0),(6,0,0),(7,0,0),(8,0,0),(9,0,0),(10,0,0),(11,0,0),(12,0,0),(13,16,0),(17,13,1),(18,12,1),(19,17,1),(20,21,1),(21,19,1),(22,20,1),(23,22,1),(24,23,1),(25,27,1),(26,24,1),(27,25,1),(28,26,1),(29,28,1),(30,30,1),(31,31,1),(32,33,1),(33,32,1),(34,34,1),(35,41,1),(36,42,1),(37,35,1),(38,43,1),(39,44,1),(40,45,1),(41,56,1),(42,58,1);
/*!40000 ALTER TABLE `assigned_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_type`
--

DROP TABLE IF EXISTS `business_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_type`
--

LOCK TABLES `business_type` WRITE;
/*!40000 ALTER TABLE `business_type` DISABLE KEYS */;
INSERT INTO `business_type` VALUES (6,'Store'),(7,'Retailer');
/*!40000 ALTER TABLE `business_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `is_applied` tinyint(1) NOT NULL,
  `promo` float NOT NULL,
  `is_add_w` tinyint(1) NOT NULL,
  `wl_amt` float NOT NULL,
  `final_amt` float NOT NULL,
  `ship_fee` tinyint(1) NOT NULL,
  `belonging_city` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (8,1,0,0,0,0,0,30,30,3),(13,2,120,0,0,0,0,120,0,23),(14,3,120,0,0,0,0,120,0,23),(19,13,52.5,0,0,0,0,52.5,0,23),(20,0,250,0,0,0,0,250,0,29),(21,16,0,0,0,0,0,0,0,23),(22,1,0,1,15,0,0,-15,0,23),(31,18,530,0,0,0,0,530,0,23),(32,0,200,0,0,0,0,200,0,23);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
INSERT INTO `cart_detail` VALUES (5,13,21,1),(6,14,21,1),(11,19,15,1),(12,20,3,1),(49,20,2,1),(70,31,5,1),(71,31,6,1),(72,32,8,1);
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (6,'Fertilizer',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (14,8,3,'Tudela'),(15,8,3,'Tangub'),(16,8,3,'Sinacaban'),(17,8,3,'Sapang Dalaga'),(18,8,3,'Plaridel'),(19,8,3,'Panaon'),(20,8,3,'Ozamis'),(21,8,3,'Oroquieta'),(22,8,3,'Lopez Jaena'),(23,8,3,'Jimenez'),(24,8,3,'Concepcion'),(25,8,3,'Clarin'),(26,8,3,'Calamba'),(27,8,3,'Bonifacio'),(28,8,3,'Baliangao'),(29,8,3,'Aloran');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnfrm_delivery`
--

DROP TABLE IF EXISTS `cnfrm_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cnfrm_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnfrm_delivery`
--

LOCK TABLES `cnfrm_delivery` WRITE;
/*!40000 ALTER TABLE `cnfrm_delivery` DISABLE KEYS */;
INSERT INTO `cnfrm_delivery` VALUES (1,14,1),(2,3,1),(3,15,1),(4,16,1),(5,10,1),(8,33,6),(11,35,6);
/*!40000 ALTER TABLE `cnfrm_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnfrm_undelivery`
--

DROP TABLE IF EXISTS `cnfrm_undelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cnfrm_undelivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnfrm_undelivery`
--

LOCK TABLES `cnfrm_undelivery` WRITE;
/*!40000 ALTER TABLE `cnfrm_undelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `cnfrm_undelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scat_id` int(11) NOT NULL,
  `com` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES (1,1,5),(2,2,5),(3,3,5),(4,4,5),(5,5,5);
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cntry_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (3,'Philippines');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc`
--

DROP TABLE IF EXISTS `dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dc` float NOT NULL,
  `pc` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc`
--

LOCK TABLES `dc` WRITE;
/*!40000 ALTER TABLE `dc` DISABLE KEYS */;
INSERT INTO `dc` VALUES (1,150,60),(6,200,20),(22,400,60),(29,10,0),(31,1000,20),(38,100,50),(39,200,50);
/*!40000 ALTER TABLE `dc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_boy`
--

DROP TABLE IF EXISTS `delivery_boy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dv_name` varchar(255) NOT NULL,
  `dv_username` varchar(255) NOT NULL,
  `dv_password` text NOT NULL,
  `dv_email` varchar(255) NOT NULL,
  `dv_mobile` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_boy`
--

LOCK TABLES `delivery_boy` WRITE;
/*!40000 ALTER TABLE `delivery_boy` DISABLE KEYS */;
INSERT INTO `delivery_boy` VALUES (1,'Franz','franz12','$2y$10$veJy5qYcHEPoF54YxIINaOx1YI1Bao3kg23MaYN6jyWC79ly0NqkO','franz@yahoo.com','0123456789');
/*!40000 ALTER TABLE `delivery_boy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dv_time`
--

DROP TABLE IF EXISTS `dv_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dv_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(100) NOT NULL,
  `tto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dv_time`
--

LOCK TABLES `dv_time` WRITE;
/*!40000 ALTER TABLE `dv_time` DISABLE KEYS */;
INSERT INTO `dv_time` VALUES (5,'07:30','08:30'),(6,'08:30','09:30'),(7,'09:30','10:30'),(8,'10:30','11:30'),(9,'13:00','14:00'),(10,'14:00','15:00'),(11,'15:00','16:00');
/*!40000 ALTER TABLE `dv_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_id` int(11) NOT NULL,
  `filter` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
INSERT INTO `filter` VALUES (6,8,'dfg');
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isue`
--

DROP TABLE IF EXISTS `isue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isue`
--

LOCK TABLES `isue` WRITE;
/*!40000 ALTER TABLE `isue` DISABLE KEYS */;
INSERT INTO `isue` VALUES (1,4),(2,18);
/*!40000 ALTER TABLE `isue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofd`
--

DROP TABLE IF EXISTS `ofd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ofd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od_id` int(11) NOT NULL,
  `dv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofd`
--

LOCK TABLES `ofd` WRITE;
/*!40000 ALTER TABLE `ofd` DISABLE KEYS */;
INSERT INTO `ofd` VALUES (8,11,1),(10,31,0),(11,33,0),(12,32,0),(13,34,0),(14,35,0),(15,41,0),(16,44,0),(17,45,0),(18,56,0),(19,58,0);
/*!40000 ALTER TABLE `ofd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `hover` int(11) NOT NULL,
  `rcvd` int(11) NOT NULL,
  `delivered_qty` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (16,2,1,1,0,0,0),(17,3,2,1,0,0,0),(18,4,21,1,1,0,0),(19,5,15,1,0,0,0),(20,6,21,1,0,0,1),(21,7,15,2,0,0,0),(22,8,1,1,0,0,0),(23,9,1,1,0,0,0),(24,10,1,1,0,0,0),(25,11,2,1,0,0,0),(26,12,1,1,0,0,0),(27,13,2,1,0,0,0),(28,14,2,1,0,0,0),(29,15,2,1,0,0,0),(30,16,2,1,0,0,0),(31,17,2,1,0,0,0),(32,18,2,1,0,0,0),(33,19,3,1,0,0,0),(34,20,3,1,0,0,0),(35,21,1,1,0,0,0),(36,22,2,1,0,0,0),(37,23,2,1,0,0,0),(38,24,2,1,0,0,0),(39,25,3,1,0,0,0),(40,26,3,1,0,0,0),(41,27,3,1,0,0,0),(42,28,2,2,0,0,0),(43,29,2,1,0,0,0),(44,30,3,1,0,0,0),(45,31,1,1,0,0,0),(46,32,3,1,0,0,0),(47,33,1,1,0,0,0),(48,34,3,1,0,0,0),(49,35,2,1,0,0,0),(50,36,2,1,0,0,0),(51,37,2,1,0,0,0),(52,38,2,1,0,0,0),(53,39,2,1,0,0,0),(54,0,2,1,0,0,0),(55,0,2,1,0,0,0),(56,0,2,1,0,0,0),(57,0,2,1,0,0,0),(58,40,2,1,0,0,0),(59,41,3,1,0,0,0),(60,42,3,1,0,0,0),(61,43,3,2,0,0,0),(62,44,15,1,0,0,0),(63,44,9,3,0,0,0),(64,45,10,2,0,0,0),(65,47,6,1,0,0,0),(66,50,5,1,0,0,0),(67,51,5,1,0,0,0),(68,52,1,2,0,0,0),(69,52,2,1,0,0,0),(70,52,3,1,0,0,0),(71,53,2,1,0,0,0),(72,54,2,1,0,0,0),(73,55,6,1,0,0,0),(74,56,2,1,0,0,0),(75,57,5,1,0,0,0),(76,57,6,1,0,0,0),(77,57,11,1,0,0,0),(78,58,12,1,0,0,0),(79,59,12,1,0,0,0);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Placing'),(2,'Placed'),(3,'Assigned'),(4,'Out for delivery'),(5,'Delivered'),(6,'Undelivered'),(7,'Issue');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_stlmnt`
--

DROP TABLE IF EXISTS `order_stlmnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_stlmnt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `val` float NOT NULL,
  `sc` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_stlmnt`
--

LOCK TABLES `order_stlmnt` WRITE;
/*!40000 ALTER TABLE `order_stlmnt` DISABLE KEYS */;
INSERT INTO `order_stlmnt` VALUES (1,1,2,18.36,0),(2,1,1,13,0),(3,8,1,14.9184,0),(4,9,1,5.5,0);
/*!40000 ALTER TABLE `order_stlmnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_time`
--

DROP TABLE IF EXISTS `order_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `o_status` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_time`
--

LOCK TABLES `order_time` WRITE;
/*!40000 ALTER TABLE `order_time` DISABLE KEYS */;
INSERT INTO `order_time` VALUES (1,1,2,'2021-09-24 13:46:08'),(2,1,3,'2021-09-24 13:49:21'),(3,1,4,'2021-09-24 13:50:00'),(5,1,5,'2021-09-24 13:51:08'),(6,2,2,'2021-09-24 14:37:41'),(7,4,2,'2021-09-24 14:40:44'),(8,4,3,'2021-09-24 14:42:33'),(9,4,4,'2021-09-24 14:43:05'),(10,4,5,'2021-09-24 14:43:40'),(11,4,7,'2021-09-24 14:43:40'),(12,5,2,'2021-09-24 17:14:36'),(20,5,3,'2021-09-24 18:00:10'),(21,5,4,'2021-09-24 18:00:15'),(22,5,6,'2021-09-24 18:00:29'),(23,6,2,'2021-09-25 11:15:22'),(24,7,2,'2021-09-25 11:15:22'),(25,8,2,'2021-09-25 11:19:18'),(26,8,3,'2021-09-25 11:21:50'),(27,8,4,'2021-09-25 11:22:28'),(29,8,5,'2021-09-25 11:23:35'),(30,9,2,'2021-09-27 10:30:31'),(31,9,3,'2021-09-27 10:32:32'),(32,9,4,'2021-09-27 10:33:39'),(33,9,5,'2021-09-27 10:34:35'),(34,1,2,'2022-02-07 14:27:03'),(35,2,2,'2022-02-07 14:29:51'),(36,3,2,'2022-02-07 14:32:44'),(37,3,3,'2022-02-07 14:33:05'),(38,4,2,'2022-02-08 05:26:32'),(39,5,2,'2022-02-08 05:38:33'),(40,5,3,'2022-02-08 06:04:32'),(41,6,2,'2022-02-08 06:08:43'),(42,6,3,'2022-02-08 06:13:10'),(43,6,4,'2022-02-08 07:06:49'),(44,6,5,'2022-02-08 07:19:45'),(45,7,2,'2022-02-08 07:22:35'),(46,10,2,'2022-02-09 03:54:26'),(47,11,2,'2022-02-09 03:55:14'),(48,12,2,'2022-02-09 04:40:33'),(49,13,2,'2022-02-09 04:46:51'),(50,14,2,'2022-02-09 04:48:41'),(51,15,2,'2022-02-09 05:01:31'),(52,16,2,'2022-02-09 05:19:01'),(53,15,3,'2022-02-09 06:16:14'),(54,0,3,'2022-02-09 07:22:21'),(55,0,3,'2022-02-09 07:22:22'),(56,0,3,'2022-02-09 07:22:23'),(57,0,3,'2022-02-09 07:22:24'),(58,0,3,'2022-02-09 07:22:32'),(59,0,3,'2022-02-09 07:28:33'),(60,0,3,'2022-02-09 07:33:33'),(61,0,3,'2022-02-09 07:33:42'),(62,0,3,'2022-02-09 07:34:56'),(63,16,3,'2022-02-09 07:48:22'),(64,14,3,'2022-02-09 07:49:01'),(65,10,3,'2022-02-09 07:58:06'),(66,11,3,'2022-02-09 08:00:19'),(67,13,3,'2022-02-09 08:05:14'),(68,14,4,'2022-02-09 08:11:53'),(69,12,3,'2022-02-09 08:30:16'),(70,17,2,'2022-02-09 08:45:45'),(71,17,3,'2022-02-09 08:46:04'),(72,3,4,'2022-02-09 09:14:19'),(73,3,4,'2022-02-09 09:14:23'),(74,18,2,'2022-02-09 09:23:28'),(75,14,5,'2022-02-09 09:41:35'),(76,3,5,'2022-02-09 09:43:03'),(77,15,4,'2022-02-09 09:45:15'),(78,15,5,'2022-02-09 09:45:38'),(79,16,4,'2022-02-09 09:46:42'),(80,16,5,'2022-02-09 09:46:51'),(81,10,4,'2022-02-09 09:47:20'),(82,10,5,'2022-02-09 09:50:59'),(83,18,3,'2022-02-09 09:59:13'),(84,18,4,'2022-02-09 09:59:46'),(85,11,4,'2022-02-09 10:01:12'),(86,18,5,'2022-02-09 11:57:05'),(87,18,7,'2022-02-09 11:58:00'),(88,19,2,'2022-02-10 14:37:18'),(89,20,2,'2022-02-10 14:55:36'),(90,21,2,'2022-02-10 15:14:18'),(91,21,3,'2022-02-10 15:45:30'),(92,19,3,'2022-02-10 15:45:44'),(93,20,3,'2022-02-10 15:46:07'),(94,22,2,'2022-02-10 15:46:53'),(95,23,2,'2022-02-10 15:47:58'),(96,24,2,'2022-02-10 15:50:08'),(97,22,3,'2022-02-10 16:32:49'),(98,25,2,'2022-02-10 17:45:50'),(99,26,2,'2022-02-13 06:26:51'),(100,23,3,'2022-02-13 07:04:40'),(101,27,2,'2022-02-13 07:13:06'),(102,27,3,'2022-02-13 07:15:36'),(103,24,3,'2022-02-13 07:15:48'),(104,28,2,'2022-02-13 07:16:46'),(105,25,3,'2022-02-13 07:24:21'),(106,26,3,'2022-02-13 07:24:30'),(107,28,3,'2022-02-13 07:24:44'),(108,29,2,'2022-02-13 07:27:09'),(109,30,2,'2022-02-13 08:00:47'),(110,31,2,'2022-02-13 08:01:30'),(111,32,2,'2022-02-13 08:12:48'),(112,33,2,'2022-02-13 08:23:16'),(113,34,2,'2022-02-13 08:29:09'),(114,35,2,'2022-02-13 09:05:37'),(115,36,2,'2022-02-13 09:12:38'),(116,37,2,'2022-02-13 09:23:10'),(117,38,2,'2022-02-13 09:25:02'),(118,39,2,'2022-02-13 09:35:17'),(119,40,2,'2022-02-13 09:54:23'),(120,30,3,'2022-02-13 11:35:25'),(121,30,4,'2022-02-13 11:35:40'),(122,30,5,'2022-02-13 11:37:32'),(123,31,3,'2022-02-13 11:59:07'),(124,31,4,'2022-02-13 11:59:16'),(125,31,5,'2022-02-13 11:59:32'),(126,33,3,'2022-02-13 12:12:07'),(127,33,4,'2022-02-13 12:12:18'),(128,33,5,'2022-02-13 12:12:30'),(129,32,3,'2022-02-13 16:24:41'),(130,34,3,'2022-02-13 16:24:52'),(131,41,2,'2022-02-13 16:30:24'),(132,41,3,'2022-02-13 16:55:26'),(133,42,2,'2022-02-13 16:58:25'),(134,42,3,'2022-02-13 17:04:15'),(135,32,4,'2022-02-13 17:19:23'),(136,32,5,'2022-02-13 17:19:30'),(137,34,4,'2022-02-13 17:30:11'),(138,34,5,'2022-02-13 17:33:34'),(139,35,3,'2022-02-14 13:50:01'),(140,35,4,'2022-02-14 13:50:14'),(141,35,5,'2022-02-14 13:50:23'),(142,43,2,'2022-02-16 04:54:33'),(143,43,3,'2022-02-16 04:54:56'),(144,41,4,'2022-02-16 04:55:15'),(145,41,5,'2022-02-16 04:55:40'),(146,44,2,'2022-02-23 04:13:44'),(147,44,3,'2022-02-23 04:17:16'),(148,44,4,'2022-02-23 04:18:26'),(149,44,5,'2022-02-23 04:21:50'),(150,45,2,'2022-02-24 02:48:25'),(151,45,3,'2022-02-24 02:50:42'),(152,45,4,'2022-02-24 02:51:24'),(153,45,5,'2022-02-24 02:52:22'),(154,47,2,'2022-03-04 05:03:26'),(155,48,2,'2022-03-04 05:05:19'),(156,49,2,'2022-03-04 05:05:27'),(157,50,2,'2022-03-04 05:07:29'),(158,51,2,'2022-03-04 05:21:38'),(159,52,2,'2022-03-04 06:18:31'),(160,53,2,'2022-03-06 08:15:13'),(161,54,2,'2022-03-06 08:28:20'),(162,55,2,'2022-03-29 05:00:48'),(163,56,2,'2022-03-29 05:09:37'),(164,56,3,'2022-03-29 05:12:56'),(165,56,4,'2022-03-29 05:14:27'),(166,56,5,'2022-03-29 05:16:44'),(167,57,2,'2022-04-08 02:29:08'),(168,58,2,'2022-07-04 20:27:45'),(169,58,3,'2022-07-04 20:28:17'),(170,58,4,'2022-07-04 20:28:44'),(171,58,5,'2022-07-04 20:29:19'),(172,59,2,'2022-07-04 20:33:21');
/*!40000 ALTER TABLE `order_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_id` text NOT NULL,
  `u_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `dv_date` varchar(255) NOT NULL,
  `dv_time` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `mihpayid` varchar(255) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `payu_status` varchar(255) NOT NULL,
  `total_amt` float NOT NULL,
  `ship_fee_order` float NOT NULL,
  `final_val` float NOT NULL,
  `isnew` int(11) NOT NULL,
  `delivered_by` int(11) NOT NULL,
  `u_cnfrm` int(11) NOT NULL,
  `ptu` int(11) NOT NULL,
  `udvc` int(11) NOT NULL,
  `is_p_app` int(11) NOT NULL,
  `is_w_ap` int(11) NOT NULL,
  `prmo` float NOT NULL,
  `wlmt` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (35,'ODR901644743137',1,5,'8','Today',1,0,5,'','fd4ee3def3fee62166fa','',100,0,100,1,6,0,0,0,0,0,0,0),(36,'ODR351644743558',1,5,'11','Today',1,0,2,'','cbcec0f76c6579308758','',100,0,100,1,0,0,0,0,0,0,0,0),(37,'ODH591644744190',1,5,'11','Today',1,0,2,'','f8d9dffe018fcd1c3e5e','',100,0,100,1,0,0,0,0,0,0,0,0),(38,'ODS121644744301',1,5,'10','Today',1,0,2,'','2550651d5b54e8397005','',100,0,100,1,0,0,0,0,0,0,0,0),(39,'ODZ911644744916',1,5,'11','Today',1,0,2,'','adf554642e761f87bb30','',100,0,100,1,0,0,0,0,0,0,0,0),(40,'ODS731644746063',1,5,'11','Today',1,0,2,'','b2a67adca742554cfb8b','',100,0,100,1,0,0,0,0,0,0,0,0),(42,'ODR141644771504',1,5,'9','Today',1,0,3,'','9ffc1748d59b86efd1f3','',150,0,150,1,0,0,0,0,0,0,0,0),(43,'ODW791644987273',1,5,'5','Today',1,0,3,'','0f3d542cc0810c1077ff','',300,60,360,1,0,0,0,0,0,0,0,0),(46,'ODT791645670905',17,8,'9','Today',1,0,1,'','6f232e59d174288b3c97','',0,0,0,1,0,0,0,0,0,0,0,0),(47,'ODU481646370204',19,10,'9','Today',1,0,2,'','d7624d291cb555c9735a','',290,0,290,1,0,0,0,0,0,0,0,0),(48,'ODX261646370318',19,10,'9','Today',1,0,2,'','7dd5cca9e12cb3c6226d','',0,0,0,1,0,0,0,0,0,0,0,0),(49,'ODB41646370327',19,10,'9','Today',1,0,2,'','95ac942e4c208c5aee26','',0,0,0,1,0,0,0,0,0,0,0,0),(50,'ODH511646370448',19,10,'8','Today',1,0,2,'','ab19b93e10dd599a2721','',240,0,240,1,0,0,0,0,0,0,0,0),(51,'ODC431646371298',19,10,'8','Today',1,0,2,'','634b9300b94354f23cbe','',240,0,240,1,0,0,0,0,0,0,0,0),(52,'ODB851646374710',19,12,'8','Today',1,0,2,'','4a547fff39dd41dcdeed','',950,0,950,1,0,0,0,0,0,0,0,0),(53,'ODL631646554512',18,13,'7','Today',1,0,2,'','f4a73fdf0e5e0208d457','',100,0,100,1,0,0,0,0,0,0,0,0),(54,'ODX671646555299',18,13,'9','Today',1,0,2,'','aa1c69cf35a1d7945af3','',100,0,100,1,0,0,0,0,0,0,0,0),(55,'ODU841648530048',21,14,'7','Today',1,0,2,'','0758e3739b26d7a141a4','',290,0,290,1,0,0,0,0,0,0,0,0),(57,'ODV871649384947',19,10,'8','Today',1,0,2,'','87a1b4c0447b6c908ecb','',780,0,780,1,0,0,0,0,0,0,0,0),(59,'ODI991656966801',23,17,'8','Today',1,0,2,'','0531953b5a890081bf61','',150,50,162.5,1,0,0,0,0,1,0,37.5,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_filter`
--

DROP TABLE IF EXISTS `p_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_filter`
--

LOCK TABLES `p_filter` WRITE;
/*!40000 ALTER TABLE `p_filter` DISABLE KEYS */;
INSERT INTO `p_filter` VALUES (5,4,5),(7,1,5),(8,5,6),(9,6,5),(10,7,5),(11,8,5);
/*!40000 ALTER TABLE `p_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_reject`
--

DROP TABLE IF EXISTS `p_reject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_reject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cause` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_reject`
--

LOCK TABLES `p_reject` WRITE;
/*!40000 ALTER TABLE `p_reject` DISABLE KEYS */;
/*!40000 ALTER TABLE `p_reject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_sfilter`
--

DROP TABLE IF EXISTS `p_sfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_sfilter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `sfid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_sfilter`
--

LOCK TABLES `p_sfilter` WRITE;
/*!40000 ALTER TABLE `p_sfilter` DISABLE KEYS */;
INSERT INTO `p_sfilter` VALUES (6,4,5),(8,1,5),(9,5,9),(10,6,5),(11,6,8),(12,7,5),(13,7,8),(14,8,5);
/*!40000 ALTER TABLE `p_sfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin`
--

DROP TABLE IF EXISTS `pin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `cn_id` int(11) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin`
--

LOCK TABLES `pin` WRITE;
/*!40000 ALTER TABLE `pin` DISABLE KEYS */;
INSERT INTO `pin` VALUES (1,2,1,1,'145879'),(2,3,1,1,'147858'),(3,4,2,1,'5787568'),(4,5,2,1,'567863'),(5,6,3,1,'452577'),(6,7,3,1,'564678'),(7,9,4,1,'478587'),(8,8,4,1,'75678678'),(9,14,8,3,'7202'),(10,15,8,3,'7214'),(11,16,8,3,'7203'),(12,17,8,3,'7212'),(13,18,8,3,'7209'),(14,19,8,3,'7205'),(15,20,8,3,'7200'),(16,21,8,3,'7207'),(17,22,8,3,'7208'),(18,23,8,3,'7204'),(19,24,8,3,'7213'),(20,25,8,3,'7201'),(21,26,8,3,'7210'),(22,27,8,3,'7215'),(23,28,8,3,'7211'),(24,29,8,3,'7206');
/*!40000 ALTER TABLE `pin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `sell_price` float NOT NULL,
  `fa` float NOT NULL,
  `description` text NOT NULL,
  `qty` int(11) NOT NULL,
  `isappp` int(11) NOT NULL,
  `isnew` tinyint(1) NOT NULL,
  `bs` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `added_by` int(11) NOT NULL,
  `belonging_city` int(11) NOT NULL,
  `tax` float NOT NULL,
  `sku` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,6,1,'GO KKK','8531901041644321221.jpg','4992675781644321221.jpg','5744900171644321221.jpg','5931803381644321221.jpg',400,350,350,'asdsaddsadasldjsifhly e',3,1,1,0,1,6,29,0,'V29EN40E'),(2,6,2,'5656','2582194001644321596.jpg','1613498261644321596.jpg','1997884111644321596.jpg','3757052951644321596.jpg',122,100,100,'sfsdfsdf',37,1,1,0,1,6,29,0,'S30HB92C'),(3,6,1,'My Organic Grower','5670030381644503699.jpg','4993218311644503699.jpg','7748480901644503699.jpg','9599880641644503699.jpg',175,150,150,'This is for the Plant Fertilizer.',97,1,1,0,1,22,29,0,'V79OF83X'),(4,6,1,'Grower','2727593311644920614.jpg','5239800341644920614.jpg','7264811191644920614.jpg','5629882811644920614.jpg',150,120,120,'This is my product',10,1,1,0,1,25,29,0,'R65KT80I'),(5,6,1,'Plant Fertilizer','8436686191644988391.jpg','4475368921644988391.jpg','1997341571644988391.jpg','1753472221644988391.jpg',260,240,240,'This is for small plant only.',17,1,1,0,1,27,23,0,'O16MC17N'),(6,6,1,'Grower Plant','8372395831644988475.jpg','2606608071644988475.jpg','2885742181644988475.jpg','7061360671644988475.jpg',310,290,290,'For Trees only.',17,1,1,0,1,27,23,0,'O99VF36T'),(7,6,1,'Plant Grower','9736328121644988545.jpg','8497450081644988545.jpg','6654188361644988545.jpg','3933105461644988545.jpg',470,420,420,'For plants only.',100,1,1,0,1,27,23,0,'V64OO24O'),(8,6,1,'Plant Booster','3788791231644988646.jpg','4243706591644988646.jpg','8690592441644988646.jpg','8817816841644988646.jpg',1120,200,200,'This is for Plant Booster.',100,1,1,0,1,27,23,0,'B15BO22V'),(9,6,1,'EXAMPLE PRODUCT','5900607631645589181.jpg','3181694871645589181.jpg','2236870651645589181.jpg','1889919701645589181.jpg',500,250,250,'jkjhaduskhflaskjf;isygoejnfasfno',7,1,1,0,1,29,29,0,'W91WM82A'),(10,6,4,'EXAMPLE PRODUCT 123','1634630871645670276.jpg','1262924981645670277.jpg','7526646111645670278.jpg','8630128241645670279.jpg',1000,800,800,'asdhaislufwskjfhworifjg',0,1,1,0,1,31,29,0,'O31NE76G'),(11,6,1,'Booster Plant X','8982250991646507901.JPG','7458985971646507903.JPG','4311549661646507904.JPG','1681751981646507905.JPG',500,250,250,'This is for plant booster.',49,1,1,0,1,36,29,0,'R27MT57N'),(12,6,1,'HSHSHS','8361725491656966024.jpg','6344896241656966024.jpg','3712348831656966025.jpg','8694712451656966025.jpg',200,150,150,'Good for the Health',98,1,1,0,1,39,29,0,'Y33LQ78T');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_ad_on`
--

DROP TABLE IF EXISTS `product_ad_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_ad_on` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_ad_on`
--

LOCK TABLES `product_ad_on` WRITE;
/*!40000 ALTER TABLE `product_ad_on` DISABLE KEYS */;
INSERT INTO `product_ad_on` VALUES (1,1,'2021-09-15 12:09:35'),(2,2,'2021-09-15 12:12:04'),(3,3,'2021-09-15 12:57:36'),(4,4,'2021-09-15 12:58:41'),(5,5,'2021-09-15 13:05:41'),(6,6,'2021-09-15 13:07:31'),(7,7,'2021-09-15 13:10:54'),(8,8,'2021-09-15 13:11:56'),(9,1,'2022-02-01 03:54:16'),(10,2,'2022-02-01 04:21:29'),(11,3,'2022-02-07 14:58:21'),(12,4,'2022-02-07 15:22:35'),(13,5,'2022-02-07 15:29:33'),(14,6,'2022-02-07 15:44:12'),(15,7,'2022-02-07 15:46:05'),(16,8,'2022-02-07 16:10:39'),(17,9,'2022-02-07 18:12:54'),(18,10,'2022-02-07 18:14:13'),(19,11,'2022-02-07 18:16:38'),(20,12,'2022-02-07 18:18:25'),(21,13,'2022-02-07 18:20:09'),(22,14,'2022-02-08 02:45:35'),(23,15,'2022-02-08 02:58:52'),(24,16,'2022-02-08 03:42:54'),(25,17,'2022-02-08 03:45:26'),(26,18,'2022-02-08 03:46:27'),(27,19,'2022-02-08 03:58:46'),(28,20,'2022-02-08 04:07:33'),(29,21,'2022-02-08 04:10:48'),(30,1,'2022-02-08 11:53:41'),(31,2,'2022-02-08 11:59:56'),(32,3,'2022-02-10 14:34:59'),(33,4,'2022-02-15 10:23:34'),(34,5,'2022-02-16 05:13:11'),(35,6,'2022-02-16 05:14:35'),(36,7,'2022-02-16 05:15:45'),(37,8,'2022-02-16 05:17:26'),(38,9,'2022-02-23 04:06:21'),(39,10,'2022-02-24 02:37:58'),(40,11,'2022-03-05 19:18:26'),(41,12,'2022-07-04 20:20:25');
/*!40000 ALTER TABLE `product_ad_on` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `dis` float NOT NULL,
  `minbal` float NOT NULL,
  `scat` int(11) NOT NULL,
  `adb` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (4,'123',10,10,1,22),(5,'NEWSHOP2022',25,100,1,39);
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rejection`
--

DROP TABLE IF EXISTS `rejection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rejection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rejection`
--

LOCK TABLES `rejection` WRITE;
/*!40000 ALTER TABLE `rejection` DISABLE KEYS */;
INSERT INTO `rejection` VALUES (4,5,'e'),(5,23,'rfdsas');
/*!40000 ALTER TABLE `rejection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_w_msg`
--

DROP TABLE IF EXISTS `seller_w_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_w_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `cod` tinyint(1) NOT NULL,
  `msg` text NOT NULL,
  `balance` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_w_msg`
--

LOCK TABLES `seller_w_msg` WRITE;
/*!40000 ALTER TABLE `seller_w_msg` DISABLE KEYS */;
INSERT INTO `seller_w_msg` VALUES (1,2,1,'Wallet created',0,'2021-09-15 11:52:01'),(2,4,1,'Wallet created',0,'2021-09-15 11:52:16'),(3,1,1,'Wallet created',0,'2021-09-15 11:59:54'),(4,3,1,'Wallet created',0,'2021-09-15 12:00:58'),(9,4,1,'bonus',1,'2021-09-20 13:53:15'),(11,4,0,'Charge',0,'2021-09-20 13:56:03'),(13,2,1,' For ODU131632157314',18.36,'2021-09-24 12:00:31'),(14,1,1,' For ODU131632157314',20.51,'2021-09-24 12:03:05'),(15,2,1,' For ODP741632491075',18.36,'2021-09-24 14:14:59'),(16,1,1,' For ODP741632491075',13,'2021-09-24 14:15:08'),(17,1,0,'Charge',32.51,'2021-09-24 16:55:52'),(18,1,0,'Charge',1,'2021-09-24 16:57:20'),(19,1,0,'Witdraw Requested',0,'2021-09-25 06:42:19'),(20,1,0,'Witdraw approved <br>Txn 23erds3462dser',20,'2021-09-25 06:39:48'),(21,1,0,'Witdraw Requested',0,'2021-09-25 06:47:27'),(22,1,0,'Witdraw Rejected',0,'2021-09-25 06:47:41'),(23,1,1,'Bonus',0.49,'2021-09-25 06:50:20'),(24,1,1,' For ODN321632738577',5.5,'2021-09-27 10:40:45');
/*!40000 ALTER TABLE `seller_w_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_wallet`
--

DROP TABLE IF EXISTS `seller_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) NOT NULL,
  `ballance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_wallet`
--

LOCK TABLES `seller_wallet` WRITE;
/*!40000 ALTER TABLE `seller_wallet` DISABLE KEYS */;
INSERT INTO `seller_wallet` VALUES (1,2,36.72),(2,4,0),(3,1,32.4184),(4,3,0),(5,6,0),(6,22,0),(7,25,0),(8,25,0),(9,27,0),(10,29,0),(11,31,0),(12,31,0),(13,36,0),(14,38,0),(15,39,0);
/*!40000 ALTER TABLE `seller_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tob` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `b_name` varchar(255) NOT NULL,
  `b_crft` varchar(255) NOT NULL,
  `is_gst` tinyint(1) NOT NULL,
  `gst_id` varchar(255) NOT NULL,
  `gst_crft` varchar(255) NOT NULL,
  `plan` tinyint(1) NOT NULL,
  `acc_num` varchar(255) NOT NULL,
  `acc_holder` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `isapp` int(11) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_cp` tinyint(1) NOT NULL,
  `adhar` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (6,'franzcarl13@yahoo.com','$2y$10$mnBSzL.y3NOOfaoXWWtI1uxKPQtcuARwtATiwe4dZtctt7bUnqrHi','0912356666','Francis Carlo A. Manlangit','Santa Cruz',6,3,8,29,24,'Inday Store','4493272561643213424.jpg',2,'No GST','0',2,'342342','rsere','54654654','sdfdsf','sdfsdf',1,0,1,'5893283411643213424.jpg','7244466141643213425.jpg','2022-03-07 07:29:20',1),(22,'admin@gmail.com','$2y$10$IHz1JuyGX7ZG6D4emkkXuezmT3V1y6LI1bog.KwOo5sZ2StumH/R.','09123464673','John Fernandez','Aloran IFI',6,3,8,29,24,'ALO\'s STORE','7849392361644486562.jpg',0,'','',3,'516215645555555','Google','','Jimenez','Nacional',1,0,1,'8932562931644486562.jpg','4637044271644486562.jpg','2022-03-07 07:05:22',1),(23,'test1@yahoo.com','$2y$10$nGEPvaBrDE1Qrpvy5MxwTOA.gJHiGgX1SS5hsrBlj0yUEOHfgkXKm','09135464646','TEST','TEST Address',7,3,8,29,24,'TEST Business','5572916661644814340.jpg',0,'','',1,'','','','','',2,0,2,'1907823341644814340.jpg','8940429681644814340.jpg','2022-02-15 14:01:45',1),(24,'test2@yahoo.com','$2y$10$l2wwnMYNXC5BUzGD0UPxsOzRWaXaQrdFkqoofCreAKfvx.PvAJ00G','09432163243','','',0,0,0,0,0,'','',0,'','',0,'','','','','',0,1,0,'','','2022-02-14 11:54:04',1),(26,'test4@yahoo.com','$2y$10$GCPD1rpvXDC.sEhSAVCbBeR6wHXDgRqEwMrn5CABg7SKozDGzGSKe','09254584421','Franz43','Gata',6,3,8,29,24,'eerr','9144965271644927514.jpg',0,'','',1,'No Account Number','No Account Holder','','NULL','NULL',0,0,1,'2372233071644927514.jpg','8449978291644927514.jpg','2022-03-03 04:32:06',1),(27,'test6@yahoo.com','$2y$10$8mDuHa6jDVltzZxn9IFIgeC38jPDF/z5S/CXopvh7VBRoagclysUS','09145623246','Francis Manlangit','NAcional Jimenez',6,3,8,29,24,'KY Store','7792697481644988273.jpg',0,'','',1,'','No Account Holder','','NULL','NULL',1,0,1,'8447265621644988273.jpg','3545193141644988273.jpg','2022-02-16 17:06:09',1),(28,'test7@yahoo.com','$2y$10$Wyoo8AK4fqfA238MuUgizOBDk3MyWMUswEHe6JmXFK5C2tqazZZsC','09123548625','','',0,0,0,0,0,'','',0,'','',0,'','','','','',0,1,0,'','','2022-03-03 04:31:24',1),(29,'franzcarl13@yahoo.com','$2y$10$PoNC4tuFYSVN0n21wjoHz.zZYKBh3FUROTHdwPUFDBtrXHokgARVq','0912356666','Franz Manlangit','Nacional',6,3,8,29,18,'KK Store','6712510851645588597.jpg',0,'','',1,'','','','','',1,0,1,'1540256071645588597.jpg','7070041231645588597.jpg','2022-03-06 11:53:14',1),(30,'test5@yahoo.com','$2y$10$ik3KJoEKguIc3.bR9WCHn...JwadAsa0fWjbExFlzh3/3Zz9bXpvG','09135346345','Mary Grace','Taraka',6,3,8,23,18,'JK STORE','4936496891645616326.jpg',0,'','',1,'','','','','',0,0,1,'5841689051645616327.jpg','3354878541645616328.jpg','2022-02-23 15:17:46',1),(31,'franz13@yahoo.com','$2y$10$de90FVXO16mpEcYTlweejOOIZcebQHBtksl0bYsHu5pByYcToevca','09229898568','Francis Carlo A Manlangit','Nacional',6,3,8,29,18,'KR Market Store','5472965451645669316.jpg',0,'','',1,'','','','','',1,0,1,'3827317861645669774.jpg','1778250961645669318.jpg','2022-03-03 04:31:08',1),(32,'franzcarl130@yahoo.com','$2y$10$LnSB3iDBmn6go3qvpvLyy.UvEamti9sdOndfzSY70LyFAxGQbUmG2','09123566661','','',0,0,0,0,0,'','',0,'','',0,'','','','','',0,1,0,'','','2022-03-02 16:05:01',1),(33,'franzcarl1300@yahoo.com','$2y$10$3O0rVbK8FvZpk4ppR32nTuS2kHzk4s2vjMJ3z4vlsYo.4hsaszJ4G','09123566661','','',0,0,0,0,0,'','',0,'','',0,'','','','','',0,1,0,'','','2022-03-02 16:08:18',1),(34,'admin@admin.com','$2y$10$q0P4NhnshEoWeftLsr0NgeP7VcLEfU1YGDVP8ELnNkkH04MPIO3Mq','09457664949','','',0,0,0,0,0,'','',0,'','',0,'','','','','',0,1,0,'','','2022-03-02 17:26:21',1),(35,'test10@yahoo.com','$2y$10$GPpsp/u.Vet9YJfwA9hkvu/BOkMap2ACSRAM2DZKzGtE7UJcOD/Ju','09457694948','','',0,0,0,0,0,'','',0,'','',0,'','','','','',0,1,0,'','','2022-03-04 05:36:25',1),(36,'francismanlangit13@yahoo.com','$2y$10$DeOGAFUhPnSo8IbhUseRN.ijG91WJfVGxj9t9xGfyM9i4pitudm0q','09196374602','Francis Carlo A. Manlangit','Villamor, Gata',6,3,8,29,18,'Fran\'z SHOP','8867352331646507638.JPG',0,'','',1,'','','','','',1,0,1,'5130448561646507639.JPG','7016574991646507641.JPG','2022-03-07 06:32:58',1),(37,'franzcarl131@yahoo.com','$2y$10$mvi5JPOswfqggSaTtqdFyeTMSG7l1.jolWAUE.YJ9OdHfZocnPFoi','09457664940','','',0,0,0,0,0,'','',0,'','',0,'','','','','',0,1,0,'','','2022-03-08 13:31:21',1),(38,'franzcarl013@yahoo.com','$2y$10$paUEIwZUi.DDJqrQPLYO9eYBc5WB0Z3Of9PXX6IYDKRl74xBaNGn6','09123456789','sdads','asdasd',6,3,8,29,18,'sdasda store','6033161151648529351.jpg',0,'','',1,'','','','','',1,0,1,'1147554451648529353.jpg','6122804961648529355.jpg','2022-07-04 20:01:30',1),(39,'franzcarl2000@yahoo.com','$2y$10$uvErZjvd9exhnnL59z9U7OIFMLTfxtwMU2eKEsedSXmR7qdC3crNe','09546215646','sdadd','adadsd',7,3,8,29,18,'dsfsdf','3165066531656965802.png',0,'','',1,'','','','','',1,0,1,'1914166661656965890.jpg','3080160941656965803.png','2022-07-04 20:18:31',1);
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (8,3,'Misamis Occidental');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_filter`
--

DROP TABLE IF EXISTS `sub_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `subfilter` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_filter`
--

LOCK TABLES `sub_filter` WRITE;
/*!40000 ALTER TABLE `sub_filter` DISABLE KEYS */;
INSERT INTO `sub_filter` VALUES (3,3,'sf1'),(4,4,'sf2'),(6,3,'sf4'),(7,4,'sf5');
/*!40000 ALTER TABLE `sub_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `subcat` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,6,'Organic Fertilizer',1),(2,6,'Nitrogen Fertilizer',1),(3,6,'Phosphate Fertilizer',1),(4,6,'Potassium Fertilizer',1),(5,6,'Fertilizer Forms',1);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type_ad` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_add` varchar(255) NOT NULL,
  `user_pin` varchar(255) NOT NULL,
  `user_local` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (4,1,'Home','Ayondip Jana','4178589658',3,'wert frt fy5 tyty 6fgty','721122','India'),(5,1,'Home','Franz','546333',29,'asdasds','4353','Philippines'),(6,1,'Home','Franz','0912345678',23,'Nacional P4','7204','Misamis Occidental'),(7,13,'Home','Franz','546333',23,'ggg','7204','Misamis Occidental'),(8,17,'Home','Francis Carlo A Manlangit','0912356666',23,'Nacional','7204','Yunkoi Street'),(9,17,'Home','Franz Manlangit','0912356666',20,'PLDT','7200','Belarus'),(10,19,'Home','Francis','09457664949',23,'Nacional','7204','Yunkoi Street'),(11,19,'Home','Francis','9457664949',23,'sjdjs','48483','3dsjssk'),(12,19,'Home','francis','09457664949',29,'Naga','7206','Church side'),(13,18,'Home','Francis Carlo A Manlangit','09457664949',29,'Rizal Avenue','7206','IFI Church'),(14,21,'Home','franz','09123456789',23,'Villamor street','7204','Villamor'),(15,21,'Home','sdasdj','09123456789',29,'villamor street','7204','gata'),(16,21,'Home','sdasdj','09123456789',29,'villamor street','7204','gata'),(17,23,'Home','Francis Carlo','09457664949',23,'dada','7204','Yunkoi');
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_w_msg`
--

DROP TABLE IF EXISTS `user_w_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_w_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `cod` tinyint(1) NOT NULL,
  `msg` text NOT NULL,
  `balance` float NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_new` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_w_msg`
--

LOCK TABLES `user_w_msg` WRITE;
/*!40000 ALTER TABLE `user_w_msg` DISABLE KEYS */;
INSERT INTO `user_w_msg` VALUES (1,1,1,'Wallet created',0,'2021-09-16 11:52:04',1),(3,1,1,'Refund for ODT981632503623',36.66,'2021-09-25 05:33:12',1),(7,1,0,'Used in purchase',36.66,'2021-09-26 18:20:39',1),(8,1,1,'get form purchase',36.66,'2021-09-26 18:24:01',1),(9,1,0,'Used in purchase',36.66,'2021-09-26 18:24:25',1),(10,1,1,'get form purchase',36.66,'2021-09-26 18:24:31',1),(11,1,0,'Used in purchase',37.88,'2021-09-26 18:24:57',1),(12,1,1,'get form purchase',37.88,'2021-09-26 18:25:37',1),(13,1,0,'Used in purchase',37.88,'2021-09-26 18:33:01',1),(14,1,1,'get form purchase',37.88,'2021-09-26 18:33:12',1),(15,3,1,'Wallet created',0,'2021-09-26 19:19:04',1),(16,1,1,'Wallet created',0,'2022-02-02 03:17:31',1),(17,2,1,'Wallet created',0,'2022-02-08 04:30:00',1),(18,3,1,'Wallet created',0,'2022-02-08 04:40:59',1),(19,4,1,'Wallet created',0,'2022-02-08 04:50:30',1),(20,0,1,'Wallet created',0,'2022-02-08 04:57:07',1),(21,0,1,'Wallet created',0,'2022-02-08 04:58:37',1),(22,0,1,'Wallet created',0,'2022-02-08 04:59:42',1),(23,0,1,'Wallet created',0,'2022-02-08 05:07:41',1),(24,0,1,'Wallet created',0,'2022-02-08 05:08:29',1),(25,0,1,'Wallet created',0,'2022-02-08 05:10:11',1),(26,0,1,'Wallet created',0,'2022-02-08 05:11:48',1),(27,0,1,'Wallet created',0,'2022-02-08 05:12:59',1),(28,13,1,'Wallet created',0,'2022-02-08 05:19:26',1),(29,14,1,'Wallet created',0,'2022-02-08 16:21:38',1),(30,15,1,'Wallet created',0,'2022-02-16 05:10:07',1),(31,16,1,'Wallet created',0,'2022-02-23 15:05:59',1),(32,17,1,'Wallet created',0,'2022-02-24 02:42:18',1),(33,18,1,'Wallet created',0,'2022-03-03 16:47:17',1),(34,19,1,'Wallet created',0,'2022-03-04 04:36:39',1),(35,20,1,'Wallet created',0,'2022-03-05 19:10:56',1),(36,21,1,'Wallet created',0,'2022-03-29 04:58:13',1),(37,22,1,'Wallet created',0,'2022-07-01 17:10:48',1),(38,23,1,'Wallet created',0,'2022-07-04 20:25:28',1);
/*!40000 ALTER TABLE `user_w_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_wallet`
--

DROP TABLE IF EXISTS `user_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ballance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_wallet`
--

LOCK TABLES `user_wallet` WRITE;
/*!40000 ALTER TABLE `user_wallet` DISABLE KEYS */;
INSERT INTO `user_wallet` VALUES (1,1,39.66),(2,3,0),(3,1,0),(4,2,0),(5,3,0),(6,4,0),(7,0,0),(8,0,0),(9,0,0),(10,0,0),(11,0,0),(12,0,0),(13,0,0),(14,0,0),(15,13,0),(16,14,0),(17,15,0),(18,16,0),(19,17,0),(20,18,0),(21,19,0),(22,20,0),(23,21,0),(24,22,0),(25,23,0);
/*!40000 ALTER TABLE `user_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `m_vfd` tinyint(1) NOT NULL,
  `e_vfd` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'franz@yahoo.com','$2y$10$yvo2/bX/ZHZivLBR9XfX3.dZWV3NVa5hs8QKYGfWPtdWkGbYJcBeu','0912356666','Francis',1,1,1),(13,'admin@gmail.com','$2y$10$zc2R5.sOMlWrPlSLXvBkS.RIoRwldGaAApPRlzJLrSWUBhcfncFW.','546333','Franz',1,1,1),(14,'fanz@yahoo.com','$2y$10$xvdyq03WmVvTkx5hq2FDoOJpY7sO1eA24ygwTRV7NpxibCaX83H2e','546333','Franz',1,1,1),(15,'franz1@yahoo.com','$2y$10$0axo8e778akbGUAr8qh8S.WCaDyjUDk4Oh0GAW9TpM4wA5BsD/IRS','09156465441','Francis Carlo Manlangit',1,1,1),(16,'andrewbigcas@yahoo.com','$2y$10$SADDaXDpNBhqxsWh805A2uZa1Ncn/WFDqv.DI8sM2WhpSAzFasOLS','09457624343','Andrew Bigcas',1,1,1),(17,'franz130@yahoo.com','$2y$10$32HsbNqQ5drJHBEtkCopZ.TdrN2C2JIu/5K7jAIqYFl6ZxZ7jEKka','09949465886','Francis Carlo A Manlangit',1,1,1),(18,'franzcarl13@yahoo.com','$2y$10$bowo9pcU1MUOWriRglzaX.iUUvdBfXEmnPPf55A46Yjp6.m6DL9Z2','09123566661','Franz Manlangit',1,1,1),(19,'franzcarl1313@yahoo.com','$2y$10$QBNx3JjenJG5/UBLUA0hyep/e2bUnlG1uPycfxJk1eWo8ResdG2jq','09457664949','Franz Manlangit',1,1,1),(20,'francismanlangit13@yahoo.com','$2y$10$r9Z4t5iaozMHamgkaGiEBOOYS354ZVgtXQ6o7CaCwBCaqRdulUDZK','09196374602','Francis Carlo A. Manlangit',1,1,1),(21,'franz013@yahoo.com','$2y$10$Xt25GmNrHcUUKiQrEPDVP.r5gQntoEksTvvLHH0Jyclsh3vIwTrUa','09123456789','Love Event Organizer',1,1,1),(22,'franzcarl1300@yahoo.com','$2y$10$nGZOrEUX2TxRtjkvT9PhO.7lW7/lF8CdiYEu46e99cdzGy8SFPv9S','09457664941','Francis Carlo A. Manlangit',1,1,1),(23,'franz2000@yahoo.com','$2y$10$2wB6FjJeBDaJ4VpxiLl3T.KLVqh/Z7SndZjztoZTmvaldZ0dcI8Fi','09196374601','Franz',1,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,16,1),(2,16,5),(4,19,1),(5,18,5),(6,18,5);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `witdraw_req`
--

DROP TABLE IF EXISTS `witdraw_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `witdraw_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `amount_w` float NOT NULL,
  `amount_r` float NOT NULL,
  `isnew` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `witdraw_req_ibfk_1` FOREIGN KEY (`id`) REFERENCES `seller_wallet` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `witdraw_req`
--

LOCK TABLES `witdraw_req` WRITE;
/*!40000 ALTER TABLE `witdraw_req` DISABLE KEYS */;
/*!40000 ALTER TABLE `witdraw_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database '4050821_eagri'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-05  5:06:56
