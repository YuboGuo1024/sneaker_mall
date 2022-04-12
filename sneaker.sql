-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sneaker
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Current Database: `sneaker`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sneaker` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sneaker`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Brand',7,'add_brand'),(26,'Can change Brand',7,'change_brand'),(27,'Can delete Brand',7,'delete_brand'),(28,'Can view Brand',7,'view_brand'),(29,'Can add Sneaker',8,'add_sneaker'),(30,'Can change Sneaker',8,'change_sneaker'),(31,'Can delete Sneaker',8,'delete_sneaker'),(32,'Can view Sneaker',8,'view_sneaker'),(33,'Can add Sneaker Image',9,'add_sneakerimage'),(34,'Can change Sneaker Image',9,'change_sneakerimage'),(35,'Can delete Sneaker Image',9,'delete_sneakerimage'),(36,'Can view Sneaker Image',9,'view_sneakerimage'),(37,'Can add Sneaker Size',10,'add_sneakersize'),(38,'Can change Sneaker Size',10,'change_sneakersize'),(39,'Can delete Sneaker Size',10,'delete_sneakersize'),(40,'Can view Sneaker Size',10,'view_sneakersize'),(41,'Can add Address',11,'add_address'),(42,'Can change Address',11,'change_address'),(43,'Can delete Address',11,'delete_address'),(44,'Can view Address',11,'view_address'),(45,'Can add Delivery Option',12,'add_deliveryoptions'),(46,'Can change Delivery Option',12,'change_deliveryoptions'),(47,'Can delete Delivery Option',12,'delete_deliveryoptions'),(48,'Can view Delivery Option',12,'view_deliveryoptions'),(49,'Can add Payment Selection',13,'add_paymentselections'),(50,'Can change Payment Selection',13,'change_paymentselections'),(51,'Can delete Payment Selection',13,'delete_paymentselections'),(52,'Can view Payment Selection',13,'view_paymentselections'),(53,'Can add Order',14,'add_order'),(54,'Can change Order',14,'change_order'),(55,'Can delete Order',14,'delete_order'),(56,'Can view Order',14,'view_order'),(57,'Can add OrderItem',15,'add_orderitem'),(58,'Can change OrderItem',15,'change_orderitem'),(59,'Can delete OrderItem',15,'delete_orderitem'),(60,'Can view OrderItem',15,'view_orderitem'),(61,'Can add PayPal IPN',16,'add_paypalipn'),(62,'Can change PayPal IPN',16,'change_paypalipn'),(63,'Can delete PayPal IPN',16,'delete_paypalipn'),(64,'Can view PayPal IPN',16,'view_paypalipn');
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
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$jrA1ZOcXHjPmrTv6qXllS5$VQqfhNMUjK3vRA2t2QbROjutv4ekP5+SwAcegQwdg/A=','2022-04-12 01:20:06.410805',1,'admin','','','admin@sneaker.com',1,1,'2022-03-29 10:47:36.983720'),(2,'pbkdf2_sha256$320000$NSa76eE16UhmZcIVMMon8H$9SB8VgzX1KJHl+rtyLCdRKn2VMI94v4KCGNxsmDxbiw=','2022-04-12 03:13:18.510058',0,'test01','12345','','1@test.com',0,1,'2022-03-31 04:32:10.857058'),(3,'pbkdf2_sha256$320000$B0RPYmYqLDNJIXx1cbURMO$1u9q750tXO7n6Un5H+WCglSqSOTxYICxyle4MWLNatY=','2022-04-06 02:39:29.543778',0,'test02','','','2@test.com',0,0,'2022-03-31 04:35:58.690748');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-03-29 10:49:21.408500','1','Nike',1,'[{\"added\": {}}]',7,1),(2,'2022-03-29 10:56:10.427035','1','Nike Sportswear Air Force 1 \'07 LX',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (1)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (1)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (2)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (3)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (4)\"}}]',8,1),(3,'2022-03-29 10:57:13.115362','1','Air Force 1 \'07 LX',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(4,'2022-03-29 10:58:56.143895','2','Wmns Air Force 1 Shadow',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (2)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (5)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (6)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (7)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (8)\"}}]',8,1),(5,'2022-03-29 11:01:08.880567','3','Air Max BW',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (3)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (9)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (10)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (11)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (12)\"}}]',8,1),(6,'2022-03-29 11:03:05.989858','4','Air Tuned Max',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (4)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (13)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (14)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (15)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (16)\"}}]',8,1),(7,'2022-03-29 11:04:04.162549','5','Air Huarache LE',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (5)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (17)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (18)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (19)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (20)\"}}]',8,1),(8,'2022-03-29 11:05:03.725077','6','Free Run 2',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (6)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (21)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (22)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (23)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (24)\"}}]',8,1),(9,'2022-03-29 11:06:05.119248','7','SB Heritage Vulc',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (7)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (25)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (26)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (27)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (28)\"}}]',8,1),(10,'2022-03-29 11:06:56.897692','8','Zoom Freak 3',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (8)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (29)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (30)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (31)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (32)\"}}]',8,1),(11,'2022-03-29 11:09:36.762754','2','Adidas',1,'[{\"added\": {}}]',7,1),(12,'2022-03-29 11:11:58.366501','9','Y-3 Qisan Cozy',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (9)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (33)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (34)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (35)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (36)\"}}]',8,1),(13,'2022-03-29 11:12:50.716101','10','Y-3 Runner 4D Halo',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (10)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (37)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (38)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (39)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (40)\"}}]',8,1),(14,'2022-03-29 11:13:44.633705','11','Supernova Cushion 7',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (11)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (41)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (42)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (43)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (44)\"}}]',8,1),(15,'2022-03-29 11:14:40.425233','12','Scuba Phormar x Craig Green',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (12)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (45)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (46)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (47)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (48)\"}}]',8,1),(16,'2022-03-29 11:15:43.299865','13','Ultraboost 1.0 DNA',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (13)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (49)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (50)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (51)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (52)\"}}]',8,1),(17,'2022-03-29 11:16:41.636426','14','Dame 7 Extply',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (14)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (53)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (54)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (55)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (56)\"}}]',8,1),(18,'2022-03-29 11:17:30.275148','15','Zx 8000',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (15)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (57)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (58)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (59)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (60)\"}}]',8,1),(19,'2022-04-06 12:06:53.762267','1','Standard Delivery',1,'[{\"added\": {}}]',12,1),(20,'2022-04-06 12:08:21.033927','2','Next day delivery',1,'[{\"added\": {}}]',12,1),(21,'2022-04-12 01:20:45.570405','15','Zx 8000',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(22,'2022-04-12 01:22:45.871518','15','Zx 8000',2,'[{\"changed\": {\"fields\": [\"Description\", \"Click Number\"]}}]',8,1),(23,'2022-04-12 01:33:07.587073','14','Dame 7 Extply',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(24,'2022-04-12 01:33:31.361934','14','Dame 7 Extply',2,'[{\"changed\": {\"fields\": [\"Click Number\"]}}]',8,1),(25,'2022-04-12 01:33:52.769732','13','Ultraboost 1.0 DNA',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(26,'2022-04-12 01:34:13.040992','12','Scuba Phormar x Craig Green',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(27,'2022-04-12 01:34:42.177206','11','Supernova Cushion 7',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(28,'2022-04-12 01:35:07.524398','10','Y-3 Runner 4D Halo',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(29,'2022-04-12 01:35:32.071894','9','Y-3 Qisan Cozy',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(30,'2022-04-12 01:35:55.030440','8','Zoom Freak 3',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(31,'2022-04-12 01:36:07.999113','7','SB Heritage Vulc',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(32,'2022-04-12 01:36:21.025410','6','Free Run 2',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(33,'2022-04-12 01:36:42.426296','5','Air Huarache LE',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(34,'2022-04-12 01:37:03.333105','4','Air Tuned Max',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(35,'2022-04-12 01:37:24.256362','3','Air Max BW',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(36,'2022-04-12 01:37:46.199024','2','Wmns Air Force 1 Shadow',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(37,'2022-04-12 01:38:15.012496','1','Air Force 1 \'07 LX',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (11,'account','address'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'checkout','deliveryoptions'),(13,'checkout','paymentselections'),(5,'contenttypes','contenttype'),(16,'ipn','paypalipn'),(14,'order','order'),(15,'order','orderitem'),(6,'sessions','session'),(7,'sneaker','brand'),(8,'sneaker','sneaker'),(9,'sneaker','sneakerimage'),(10,'sneaker','sneakersize');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-29 10:45:08.701589'),(2,'auth','0001_initial','2022-03-29 10:45:15.484641'),(3,'admin','0001_initial','2022-03-29 10:45:17.474063'),(4,'admin','0002_logentry_remove_auto_add','2022-03-29 10:45:17.508491'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-29 10:45:17.549763'),(6,'contenttypes','0002_remove_content_type_name','2022-03-29 10:45:18.662674'),(7,'auth','0002_alter_permission_name_max_length','2022-03-29 10:45:19.367985'),(8,'auth','0003_alter_user_email_max_length','2022-03-29 10:45:20.233050'),(9,'auth','0004_alter_user_username_opts','2022-03-29 10:45:20.265039'),(10,'auth','0005_alter_user_last_login_null','2022-03-29 10:45:20.822464'),(11,'auth','0006_require_contenttypes_0002','2022-03-29 10:45:20.858043'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-29 10:45:20.952325'),(13,'auth','0008_alter_user_username_max_length','2022-03-29 10:45:21.740907'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-29 10:45:22.401112'),(15,'auth','0010_alter_group_name_max_length','2022-03-29 10:45:23.340796'),(16,'auth','0011_update_proxy_permissions','2022-03-29 10:45:23.374528'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-29 10:45:24.143798'),(18,'sessions','0001_initial','2022-03-29 10:45:24.662726'),(19,'sneaker','0001_initial','2022-03-29 10:45:27.075896'),(20,'sneaker','0002_alter_brand_table_alter_sneaker_table_and_more','2022-03-29 10:45:27.484649'),(21,'sneaker','0003_sneakersize','2022-03-29 10:45:28.460747'),(22,'sneaker','0004_alter_sneakersize_options_alter_sneakersize_table','2022-03-29 10:45:28.644810'),(23,'sneaker','0005_sneakersize_created_at_sneakersize_updated_at','2022-03-29 10:45:30.240701'),(24,'sneaker','0006_remove_sneaker_detail_brand_description_and_more','2022-03-29 10:45:31.729667'),(25,'account','0001_initial','2022-04-05 13:45:34.191518'),(26,'account','0002_alter_address_table','2022-04-06 01:56:04.357089'),(27,'checkout','0001_initial','2022-04-06 11:24:57.173554'),(28,'checkout','0002_alter_deliveryoptions_table_and_more','2022-04-06 11:24:57.482798'),(29,'checkout','0003_delete_paymentselections','2022-04-10 08:26:38.933157'),(30,'ipn','0001_initial','2022-04-10 08:26:39.566338'),(31,'ipn','0002_paypalipn_mp_id','2022-04-10 08:26:40.152854'),(32,'ipn','0003_auto_20141117_1647','2022-04-10 08:26:41.397268'),(33,'ipn','0004_auto_20150612_1826','2022-04-10 08:26:56.333535'),(34,'ipn','0005_auto_20151217_0948','2022-04-10 08:26:56.573324'),(35,'ipn','0006_auto_20160108_1112','2022-04-10 08:26:57.732663'),(36,'ipn','0007_auto_20160219_1135','2022-04-10 08:26:57.770056'),(37,'ipn','0008_auto_20181128_1032','2022-04-10 08:26:57.805977'),(38,'ipn','0009_alter_paypalipn_id','2022-04-10 08:26:58.452029'),(39,'order','0001_initial','2022-04-10 08:27:02.681956'),(40,'order','0002_alter_orderitem_size','2022-04-10 08:54:45.686901'),(41,'order','0003_alter_orderitem_order','2022-04-10 11:28:30.427971'),(42,'order','0004_order_is_delete','2022-04-11 10:37:40.338165'),(43,'sneaker','0007_sneaker_click_num','2022-04-11 12:33:23.352273'),(44,'sneaker','0008_alter_sneaker_description','2022-04-12 01:19:45.193348');
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2yt1vqrobymhm12uwzs9tqiqdtr7niy2','eyJjYXJ0Ijp7fX0:1ndTsU:WCyhkmx3M-lFGbCCarOY7jHJ-ec2j3Hg-842rnwOXN4','2022-04-24 09:29:02.315596'),('5atva9nyi5wdfq0ng3sqpb2gchbvbmy8','.eJxVjEEOwiAQRe_C2pAyUAa7dO8ZCAyjrRpIaLtqendp0oVu33v_b8KHdRn9OnP1UxKDAHH5ZTHQm_Mh0ivkZ5FU8lKnKI9EnnaW95L4czvbv4MxzGNbk7FKo-4sdjoRKBU7wASgwEDsnY5g6UF9Q0gKUTtMaKC_WsvsGHQ7pVAXMWz7_gXQJzmY:1ndsnn:035TUcsECY8vO3JhqOq2tqUV6uKqcTykKgSU9juHABk','2022-04-25 12:05:51.499716'),('7fpdcnigy1wn3jocog7agmpixe0rso7v','.eJxVj8GOgzAMRP_FZxQlDsSU02rv-w0ocdxCuwI2wErdin_fpOqlN-vNeDx-APu0QfcAU3-Q0mVa0sgCHRAqraGCn-0Onalg_Sswe46jgt7v29Dvq6R-jJkjvLHg-SZTEeLVT5dZ8TxtaQyqWNRLXdXXHOX78-V9Cxj8OuRtrp2xZLUjbSOjMUEjRUSDNYamtQEdn7nJiNgQ2ZYi1dicnBNpBW0OXfbEOU3Ka_na-Cvp_uxsjuMfUDdO-Q:1ndjVL:RFl3LDV08Nvh2GOPWekFAAXoFsQCQohV5j64K8VOytM','2022-04-25 02:10:11.107677'),('87af0a2uczopwfnplds3js9d54jdei2r','.eJxVjEEOgyAQRe8y64bAgAx12X3PQGCgxbbBRHRlvHs1ceP2vff_ChymGfp1u4EPy1z80vLkhwQ9IFxYDPzN9RDpE-p7FDzWeRqiOBJx2iaeY8q_x9leDkpoZV-zsUqTlpakToxKRYmUEBUajJ3TES2_uNsRsSLSjhIZ7O7W5uwyatj-6ak5mA:1ndU42:iRdr-RL-KTk2tMvs_Dae9F_jUAa0Ub8Moqujr3rBM-c','2022-04-24 09:40:58.482416'),('8y8cdqvlnz22365d1xjvjs4mojzl6svm','eyJjYXJ0Ijp7fX0:1ndU0Z:NS_roOuEqxKFfY8Dj51R2VKsAaP32SHxvNDJrwJuS2U','2022-04-24 09:37:23.749156'),('aicjwfiijv925wmxd36wx6qlu2xvj68j','.eJx1j81OxDAMhN_F5yqKnTYuPSHuPEOVH0MLqF2SFml3te9OAr0sEjdr5vPYc4Xg0gbDFbB9ZNXV6ZTmIDAAk9IaGvjczjBgA_lSxcLcGkD6SyPb__DCj27fpnHPksY5Fp3gTvMuvMtSjfjmltdVhXXZ0uxVRdThZvW8Rvl4Oti7gMnlqWyH1qJhoy1rEwMhek0ciZBa8l1vPNnwEroicUBm03PklroHa0V6IVNCT3sKJU1qt3Jt_pJ0_vkZSw0XY5Kcq3eMv3WwlPwG7n9kHg:1ndkAx:zQPZYWBG9FMJsC8-hxkOob2jgMwa7_HoDxMqbuMRmvs','2022-04-25 02:53:11.262543'),('c67kztnt4w548tnayaf4gip1m1bzjlk9','eyJjYXJ0Ijp7fX0:1ndTgr:psAwSYfrBwAK6n8C32jAyaG9svw4xZ5eABmdMk7EQiE','2022-04-24 09:17:01.129233'),('enst3bkk9k6ovabrnuko5d0isotf5aa4','.eJxVUMtOwzAQ_BefI8teJ96QE-qdb4js9UICKCl2Uqmt-u-sIQe4jeal2b2rMezbNO6F8zgnNShQzV8uBvrgpQrpPSxvq6Z12fIcdbXoQy36ZU38eTq8_wqmUCZJU-utQ2c8GpcIrI0GMAFYaCF2vYvg6ZU6oZAsousxYQvdk_fMPYOTUgp5U8Nd2fYZtanonGdiKUfQxojja7uqwTaq3CopnsejUec9k4zgGpCR84Xz9edUEDGklLmUqh3w9wtWot-4H1iH:1ndish:lPqFe5hXhF7uFfDFGAsdD9q8zJk3UGuinVQplyaSvpM','2022-04-25 01:30:15.810810'),('fk5a3tlbgoih8bcrd78ojpsgqi49851u','eyJjYXJ0Ijp7IjE0QDcuMCI6eyJwcmljZSI6IjcyLjAwIiwicXR5IjoxLCJzeiI6IjcuMCJ9fX0:1naViJ:BeiiVC-bIxN8VdF84PDVCb-A2wysp-TbkDU8Q3ReS5U','2022-04-16 04:50:15.187929'),('j2q7msl71u9813te6cp1vlj0zr2u97uh','eyJjYXJ0Ijp7fX0:1ndTmD:NkmrAY8-4MHUyv9b9odfiwvYMxsfqZAjyPbTv23Zq8A','2022-04-24 09:22:33.732937'),('jdrh9ir1v7nxsujtzgee8yov1tnp0j4a','.eJxVjjsOgzAQRO_iGll4_VmHMj1nQPauE0giLBmoEHePkSiS9s3M0-xiCNs6DtuSyjCx6ASI5pfFQO80nwG_wvzMkvK8linKsyKvdJF95vS5X90_wRiWsa7JOKVRtw5bzQRKxRaQARQYiNbrCI4eZCtCUojaI6MBe3MuJZ9AV2kufJ30jaBQVtHtx_EF12U9wg:1ndTmk:wht06KTh1NVLXx79FXHOv9sSplx9IXYBURJlK3W9Muo','2022-04-24 09:23:06.487041'),('mlb2jedpyi7ycnbrw3xxbvv896w8vaq6','.eJxVjEEOwiAQRe_C2pAyUAa7dO8ZCAyjrRpIaLtqendp0oVu33v_b8KHdRn9OnP1UxKDAHH5ZTHQm_Mh0ivkZ5FU8lKnKI9EnnaW95L4czvbv4MxzGNbk7FKo-4sdjoRKBU7wASgwEDsnY5g6UF9Q0gKUTtMaKC_WsvsGHQ7pVAXMWz7_gXQJzmY:1ne78A:2mGKxKuFQwzJ2lI9sO-hyHs4gM0jCBdFpiSZpeSMUDE','2022-04-26 03:23:50.034771'),('pdgyurupxd23o9vnsk3k8c810r4p7jnj','.eJxVjkEOwiAQRe_CuiEwFKZ2Zdx7hgYGtFXTKtCFNr27NOlCd5P33_yZhXV2zn03pxC7wbOWAat-mbN0D-MW-JsdrxOnacxxcHxT-J4mfp58eJx296-gt6kv21QbqVAJg0J5AimdAPQAEmpwulEODF1IF4QkEVWDHmvQB2NCaAKoUjpFvz8pRcXIxszahUl9RK636RkHCuWUrrkQxX_ld1Erlj4Fbs66rl_f_kkb:1ndU8O:MIBPInj4Po1Yw6WQn9JSzvp4skDcz2aD-6pdd-Yx_F0','2022-04-24 09:45:28.680669'),('q5njwcnrvu4qpnqtjrr00ke3g7aubd1k','.eJyrVkpOLCpRsqpWMjR1MNczALEKijKTU5WslExN9AwMlHSUCksqlawsdZSKq5SsjGt1ICpNcao0AikxRDfM0hJJiWFtbS0AyEogcA:1nZqmy:sVbdzuxwQga6aSqZ5Hm7NeiADm8bN_iAYinkie2vNfs','2022-04-14 09:08:20.856904'),('vkoq4afa0ljjz0xi2c8sq8bqsluuryxf','eyJjYXJ0Ijp7fX0:1ndU0Q:evfhsXYC612udlmTdUb31qABfMeGzJ3BbZc7xWcUQaU','2022-04-24 09:37:14.840413'),('xil3ct6m8rg36o9u1y52uevje19rd6jh','.eJxVjEEOgyAQRe8y64bAgAx12X3PQGCgxbbBRHRlvHs1ceP2vff_ChymGfp1u4EPy1z80vLkhwQ9IFxYDPzN9RDpE-p7FDzWeRqiOBJx2iaeY8q_x9leDkpoZV-zsUqTlpakToxKRYmUEBUajJ3TES2_uNsRsSLSjhIZ7O7W5uwyatj-6ak5mA:1ndU4U:q94zMRSDh3-sObijy_riqunoBRv3iipn5oiERhB70No','2022-04-24 09:41:26.367088');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_ipn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn`
--

LOCK TABLES `paypal_ipn` WRITE;
/*!40000 ALTER TABLE `paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_address`
--

DROP TABLE IF EXISTS `tb_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `address_line` varchar(255) NOT NULL,
  `address_line2` varchar(255) NOT NULL,
  `town_city` varchar(255) NOT NULL,
  `delivery_instructions` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_address_user_id_a1553eba_fk_auth_user_id` (`user_id`),
  CONSTRAINT `account_address_user_id_a1553eba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_address`
--

LOCK TABLES `tb_address` WRITE;
/*!40000 ALTER TABLE `tb_address` DISABLE KEYS */;
INSERT INTO `tb_address` VALUES (1,'Mike','201-892-0231','07608','490 Red Bud Lane','490 Red Bud Lane','New Jersey','',0,'2022-04-05 13:57:55.916537','2022-04-11 06:49:34.992999',2),(3,'Tom','13456789','1234569','America','China','Beijing','',0,'2022-04-06 10:43:17.216312','2022-04-11 06:49:00.991132',2),(4,'Scott','123456','1234567','address1','address2','town','',0,'2022-04-11 06:46:44.163821','2022-04-11 06:48:10.280755',2),(5,'123','123','213','123','123','123','',1,'2022-04-11 07:08:14.276242','2022-04-11 07:08:14.276242',2),(6,'222','222','222','222','222','222','',0,'2022-04-11 07:09:33.287059','2022-04-11 07:09:33.287059',2);
/*!40000 ALTER TABLE `tb_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_delivery_options`
--

DROP TABLE IF EXISTS `tb_delivery_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_delivery_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_price` decimal(5,2) NOT NULL,
  `delivery_method` varchar(255) NOT NULL,
  `delivery_timeframe` varchar(255) NOT NULL,
  `delivery_window` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_delivery_options`
--

LOCK TABLES `tb_delivery_options` WRITE;
/*!40000 ALTER TABLE `tb_delivery_options` DISABLE KEYS */;
INSERT INTO `tb_delivery_options` VALUES (1,'Standard Delivery',4.99,'HD','3-4 days','9:00am - 9:00pm',1,1),(2,'Next day delivery',9.99,'HD','24 hours','9:00am to 9:00pm',2,1);
/*!40000 ALTER TABLE `tb_delivery_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_paid` decimal(5,2) NOT NULL,
  `order_key` varchar(200) NOT NULL,
  `trade_key` varchar(200) NOT NULL,
  `payment_option` varchar(200) NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_order_address_id_d89f1888_fk_tb_address_id` (`address_id`),
  KEY `tb_order_user_id_f82184d0_fk_auth_user_id` (`user_id`),
  CONSTRAINT `tb_order_address_id_d89f1888_fk_tb_address_id` FOREIGN KEY (`address_id`) REFERENCES `tb_address` (`id`),
  CONSTRAINT `tb_order_user_id_f82184d0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` VALUES (1,299.99,'20220410162813','','PayPal',0,'2022-04-10 08:28:13.728438','2022-04-11 11:50:57.666852',1,2,1),(2,108.99,'20220410163349','','PayPal',0,'2022-04-10 08:33:49.873901','2022-04-11 11:52:34.829611',1,2,1),(3,261.99,'20220410165650','','PayPal',0,'2022-04-10 08:56:50.191285','2022-04-11 11:52:37.390536',1,2,1),(4,261.99,'20220410165713','','PayPal',0,'2022-04-10 08:57:13.110240','2022-04-11 11:59:32.725652',1,2,1),(5,298.99,'20220410165816','','PayPal',0,'2022-04-10 08:58:16.403051','2022-04-11 12:05:19.670503',1,2,1),(6,358.99,'20220410171025','20220410171025','PayPal',0,'2022-04-10 09:10:25.881471','2022-04-11 12:05:16.919888',1,2,1),(7,108.99,'20220410171939','20220410171939','PayPal',0,'2022-04-10 09:19:39.884750','2022-04-11 12:05:12.378320',1,2,1),(9,63.99,'20220410172926','20220410172926','PayPal',0,'2022-04-10 09:29:26.651688','2022-04-11 11:59:28.229445',1,2,1),(10,108.99,'20220410174217','20220410174217','PayPal',0,'2022-04-10 09:42:17.884899','2022-04-11 10:56:36.601824',1,2,1),(11,63.99,'20220410184218','20220410184218','PayPal',0,'2022-04-10 10:42:18.049647','2022-04-11 10:56:26.474516',1,2,1),(12,81.99,'20220410185837','20220410185837','PayPal',0,'2022-04-10 10:58:37.923045','2022-04-11 10:55:21.096020',1,2,1),(13,108.99,'20220410190007','20220410190007','PayPal',0,'2022-04-10 11:00:07.627907','2022-04-11 10:52:08.656432',1,2,1),(14,81.99,'20220410190536','20220410190536','PayPal',0,'2022-04-10 11:05:36.861077','2022-04-11 10:51:51.992936',1,2,1),(15,81.99,'20220410191235','20220410191235','PayPal',1,'2022-04-10 11:12:35.743910','2022-04-10 11:13:03.337213',1,2,0),(16,108.99,'20220410191454','20220410191454','PayPal',1,'2022-04-10 11:14:54.370285','2022-04-10 11:15:38.805962',1,2,0),(17,81.99,'20220411154613','20220411154613','PayPal',1,'2022-04-11 07:46:13.143415','2022-04-11 08:47:36.368007',1,2,0),(18,418.99,'20220411170617','20220411170617','PayPal',0,'2022-04-11 09:06:17.446311','2022-04-11 10:51:44.425574',3,2,1),(19,418.99,'20220411170653','20220411170653','PayPal',0,'2022-04-11 09:06:53.971210','2022-04-11 10:51:41.008454',3,2,1),(20,108.99,'20220411171027','20220411171027','PayPal',0,'2022-04-11 09:10:27.770535','2022-04-11 10:51:37.425056',3,2,1),(21,0.00,'20220411171123','20220411171123','PayPal',0,'2022-04-11 09:11:23.548364','2022-04-11 10:51:30.471488',3,2,1),(22,81.99,'20220411171219','20220411171219','PayPal',0,'2022-04-11 09:12:19.809125','2022-04-11 10:51:28.133652',3,2,1),(23,0.00,'20220411171359','20220411171359','PayPal',0,'2022-04-11 09:13:59.315769','2022-04-11 10:51:25.651823',3,2,1),(24,108.99,'20220411171409','20220411171409','PayPal',0,'2022-04-11 09:14:09.865336','2022-04-11 10:50:29.743391',3,2,1),(25,94.99,'20220411171707','20220411171707','PayPal',0,'2022-04-11 09:17:07.896190','2022-04-11 10:50:25.224875',3,2,1),(26,94.99,'20220411171747','20220411171747','PayPal',0,'2022-04-11 09:17:47.413127','2022-04-11 10:50:16.049950',3,2,1),(27,94.99,'20220411171834','20220411171834','PayPal',0,'2022-04-11 09:18:34.736040','2022-04-11 10:50:10.989044',3,2,1),(28,94.99,'20220411172127','20220411172127','PayPal',0,'2022-04-11 09:21:27.405920','2022-04-11 10:50:06.013971',3,2,1),(29,63.99,'20220411182700','20220411182700','PayPal',0,'2022-04-11 10:27:00.229549','2022-04-11 10:49:17.227546',3,2,1),(30,116.99,'20220411200551','20220411200551','PayPal',1,'2022-04-11 12:05:51.321963','2022-04-11 12:06:13.785814',3,2,0),(31,358.99,'20220412112209','20220412112209','PayPal',1,'2022-04-12 03:22:09.126357','2022-04-12 03:24:35.758500',5,2,0);
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order_item`
--

DROP TABLE IF EXISTS `tb_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` decimal(5,2) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `size` varchar(50) NOT NULL,
  `sneaker_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_order_item_order_id_dbf90bbb_fk_tb_order_id` (`order_id`),
  KEY `tb_order_item_sneaker_id_878fdb11_fk_tb_sneaker_id` (`sneaker_id`),
  CONSTRAINT `tb_order_item_order_id_dbf90bbb_fk_tb_order_id` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_order_item_sneaker_id_878fdb11_fk_tb_sneaker_id` FOREIGN KEY (`sneaker_id`) REFERENCES `tb_sneaker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order_item`
--

LOCK TABLES `tb_order_item` WRITE;
/*!40000 ALTER TABLE `tb_order_item` DISABLE KEYS */;
INSERT INTO `tb_order_item` VALUES (1,72.00,1,'2022-04-10 08:57:13.183271',4,'7.0',14),(2,90.00,1,'2022-04-10 08:57:13.273239',4,'7.5',8),(3,90.00,1,'2022-04-10 08:57:13.305240',4,'8.0',8),(4,90.00,1,'2022-04-10 08:58:16.492417',5,'8.5',8),(5,90.00,1,'2022-04-10 08:58:16.524423',5,'8.0',8),(6,109.00,1,'2022-04-10 08:58:16.621982',5,'7.5',2),(7,349.00,1,'2022-04-10 09:10:25.945663',6,'7.0',10),(8,99.00,1,'2022-04-10 09:19:39.924347',7,'7.5',11),(10,54.00,1,'2022-04-10 09:29:26.714217',9,'7.5',15),(11,99.00,1,'2022-04-10 09:42:17.951788',10,'7.0',11),(12,54.00,1,'2022-04-10 10:42:18.083186',11,'7.5',15),(13,72.00,1,'2022-04-10 10:58:37.989467',12,'7.5',14),(14,99.00,1,'2022-04-10 11:00:07.682843',13,'7.5',11),(15,72.00,1,'2022-04-10 11:05:36.893346',14,'8.5',14),(16,72.00,1,'2022-04-10 11:12:35.822483',15,'7.5',14),(17,99.00,1,'2022-04-10 11:14:54.439606',16,'7.0',11),(18,72.00,1,'2022-04-11 07:46:13.459538',17,'7.0',14),(19,90.00,1,'2022-04-11 09:06:17.529002',18,'7.5',8),(20,81.00,1,'2022-04-11 09:06:17.547001',18,'8.0',5),(21,81.00,3,'2022-04-11 09:06:17.580000',18,'8.5',5),(22,90.00,1,'2022-04-11 09:06:54.034372',19,'7.5',8),(23,81.00,1,'2022-04-11 09:06:54.073963',19,'8.0',5),(24,81.00,3,'2022-04-11 09:06:54.104958',19,'8.5',5),(25,99.00,1,'2022-04-11 09:10:27.810789',20,'7.5',11),(26,72.00,1,'2022-04-11 09:12:19.851062',22,'7.5',14),(27,99.00,1,'2022-04-11 09:14:09.943583',24,'7.0',11),(28,90.00,1,'2022-04-11 09:17:07.952696',25,'7.5',8),(29,90.00,1,'2022-04-11 09:17:47.478344',26,'7.5',8),(30,90.00,1,'2022-04-11 09:18:34.812043',27,'7.5',8),(31,90.00,1,'2022-04-11 09:21:27.487311',28,'7.5',8),(32,54.00,1,'2022-04-11 10:27:00.265556',29,'7.0',15),(33,112.00,1,'2022-04-11 12:05:51.362877',30,'7.5',13),(34,349.00,1,'2022-04-12 03:22:09.196856',31,'8.0',10);
/*!40000 ALTER TABLE `tb_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sneaker`
--

DROP TABLE IF EXISTS `tb_sneaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sneaker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `market_price` decimal(5,2) NOT NULL,
  `discount_price` decimal(5,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `click_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sneaker_sneaker_brand_id_a0c41045_fk_sneaker_brand_id` (`brand_id`),
  CONSTRAINT `sneaker_sneaker_brand_id_a0c41045_fk_sneaker_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `tb_sneaker_brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker`
--

LOCK TABLES `tb_sneaker` WRITE;
/*!40000 ALTER TABLE `tb_sneaker` DISABLE KEYS */;
INSERT INTO `tb_sneaker` VALUES (1,'Air Force 1 \'07 LX','<p>This premium Nike Air Force 1 &rsquo;07 LX &ldquo;Athletic Club&rdquo; nods to classic Varsity jackets with a nubuck leather construction and bold embroidered heel branding in contrasting red.</p>\r\n\r\n<p>- Nike Air Force 1 &#39;07 LX PRO GREEN/WHITE-SAIL-GYM RED</p>\r\n\r\n<p>- Leather Upper</p>\r\n\r\n<p>- Nike Air Cushioning</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- Perforations On Toe</p>\r\n\r\n<p>- Padded Collar</p>',109.00,109.00,1,'2022-03-29 10:56:09.812061','2022-04-12 02:58:17.892797',1,5),(2,'Wmns Air Force 1 Shadow','<p>This women&rsquo;s Nike Air Force 1 Shadow offers 2 eyestays, 2 mudguards, 2 back tabs and 2 Swoosh designs and a Jordan-esque strap construction. Crafted with a series of materials, the bulky sneaker sports hits of mint and pink across the upper.</p>\r\n\r\n<p>- Nike Wmns Air Force 1 Shadow WHITE/ATMOSPHERE-MINT FOAM-FOO</p>\r\n\r\n<p>- Mix of leather and synthetic materials on the upper</p>\r\n\r\n<p>- Layered &amp; double fabrics</p>\r\n\r\n<p>- Slightly exaggerated Foam midsole</p>\r\n\r\n<p>- Rubber outsole</p>',109.00,109.00,1,'2022-03-29 10:58:55.659284','2022-04-12 01:38:50.670714',1,1),(3,'Air Max BW','<p>The Nike Air Max BW with its rubberized Swoosh and layered perforated detailing makes a return. The Tinker Hatfield design is dressed in White and Red, with mesh and synthetic leather on the upper and Air cushioning in the midsole for a signature Big Window finish.</p>\r\n\r\n<p>- Nike Air Max BW WHITE/SPORT RED-BLACK</p>\r\n\r\n<p>- Mesh and synthetic leather upper</p>\r\n\r\n<p>- Rubberized Swoosh</p>\r\n\r\n<p>- Perforations on heel</p>\r\n\r\n<p>- Air cushioning</p>\r\n\r\n<p>- Foam midsole</p>\r\n\r\n<p>- Rubber outsole</p>',129.00,129.00,1,'2022-03-29 11:01:08.481641','2022-04-12 01:38:42.358058',1,3),(4,'Air Tuned Max','<p>Just like the original design, the Nike Air Tuned Max brings you cutting-edge innovation and fine-tuned comfort. Born from Nike&#39;s clandestine and bygone Alpha Project, the sleek, track-inspired design nods to the fast-paced division that brought you the Presto and so much more. Iridescent finishes and full-length, visible Air cushioning underfoot make a seismic statement.</p>\r\n\r\n<p>- Nike Air Tuned Max</p>\r\n\r\n<p>- Iridescent Synthetic Upper</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- TPU Fingers on The Sides</p>\r\n\r\n<p>- Foam Insole</p>\r\n\r\n<p>- Rubber Outsole</p>',155.00,109.00,1,'2022-03-29 11:03:05.454914','2022-04-12 01:38:57.069715',1,1),(5,'Air Huarache LE','<p>Built to fit your foot and designed for comfort, the Nike Air Huarache LE brings back a street-level favorite. Crisp leather on the upper mix with super-breathable, perfectly shined neoprene-like fabric for easy styling. The iconic heel clip and stripped away branding keep the early &#39;90s look you love.</p>\r\n\r\n<p>- Nike Air Huarache LE Praline/Umber-Vine-Black</p>\r\n\r\n<p>- Leather Upper</p>\r\n\r\n<p>- Rubber sole</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- Variable width lacing</p>\r\n\r\n<p>- Huarache emblem on tongue</p>',115.00,81.00,1,'2022-03-29 11:04:03.813957','2022-04-12 01:39:00.420933',1,1),(6,'Free Run 2','<p>Nike bring us the Free Run 2, this one&#39;s got running roots. Easygoing and flexible, it uses deep grooves in the sole for a &ldquo;barefoot-like&rdquo; feel. Plush details around the collar and soft foam underfoot deliver comfort you have to try.</p>\r\n\r\n<p>- Nike Free Run 2</p>\r\n\r\n<p>- Synthetic Leather &amp; Mesh Upper</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- Waffle Sole</p>',99.00,77.00,1,'2022-03-29 11:05:03.536900','2022-04-12 01:39:03.120510',1,1),(7,'SB Heritage Vulc','<p>Built from suede and canvas, the Nike SB Heritage Vulc pays homage to classic skate shoes. The modern design combines foam cushioning and flexible rubber for performance you can count on. Suede and canvas add classic style and durable performance. Exposed foam on the tongue creates a vintage skate vibe.</p>\r\n\r\n<p>- Nike SB Hertitage Vulc</p>\r\n\r\n<p>- Suede &amp; Canvas Upper</p>\r\n\r\n<p>- Rubber Outsole</p>\r\n\r\n<p>- Foam Midsole</p>',65.00,46.00,1,'2022-03-29 11:06:04.767281','2022-04-12 03:12:50.474601',1,30),(8,'Zoom Freak 3','<p>Giannis Antetokounmpo&rsquo;s third signature shoe, the Nike Zoom Freak 3 has been made with energy-returning cushioning and multidirectional traction. The lightweight basketball Nike sneaker features a lightweight, molded midsole, 2 Zoom Air, and a molded hook-and-loop strap made from flexible TPU to help reduce internal foot movement.</p>\r\n\r\n<p>- Nike Zoom Freak 3</p>\r\n\r\n<p>- Synthetic upper</p>\r\n\r\n<p>- TPU overlays</p>\r\n\r\n<p>- Tongue pull tab</p>\r\n\r\n<p>- Reverse Swoosh design</p>\r\n\r\n<p>- Reinforced toe</p>\r\n\r\n<p>- Zoom Air cushioning</p>\r\n\r\n<p>- Computer-generated rubber outsole</p>',112.00,90.00,1,'2022-03-29 11:06:56.708763','2022-04-12 01:39:05.621217',1,1),(9,'Y-3 Qisan Cozy','<p>adidas and Y3 introduce the Qisan. The slip-on sneaker has a premium constructing with neoprene and leather featuring cross-food three-striped branding and luxe suede lining.</p>\r\n\r\n<p>- adidas Y-3 Qisan Cozy BLACK/ COREWHITE/ CHALKPEAR</p>\r\n\r\n<p>- Slip-on construction</p>\r\n\r\n<p>- Neoprene upper with leather and rubber detailing</p>\r\n\r\n<p>- Suede lining</p>\r\n\r\n<p>- Lightstrike cushioning</p>\r\n\r\n<p>- Rubber outsole</p>',329.00,329.00,1,'2022-03-29 11:11:58.261380','2022-04-12 03:13:05.402928',2,2),(10,'Y-3 Runner 4D Halo','<p>adidas and Y3 introduce the Runner 4D Halo. The ultra-functional sneaker features high-tech craftsmanship with see-through mesh construction, exposed tooling, and the unique 4D midsole.</p>\r\n\r\n<p>- adidas Y-3 Runner 4D Halo BLACK/ COREWHITE/ RED</p>\r\n\r\n<p>- Mesh upper</p>\r\n\r\n<p>- adidas Primeknit mesh collar and lining</p>\r\n\r\n<p>- adidas 4D midsole</p>\r\n\r\n<p>- Continental&trade; Rubber outsole</p>',349.00,349.00,1,'2022-03-29 11:12:50.389078','2022-04-12 03:13:06.393465',2,4),(11,'Supernova Cushion 7','<p>The adidas Supernova Cushion 7 updates a retro archival classic with modern features. The triple black thee stripes silhouette features a breathable mesh upper with EVA cushioning for a comfortable fit. Originally from the 2000s and with the revival of lightweight running sneakers, this adidas Supernova Cushion 7 adds recycled materials to its construction for a sustainable touch.</p>\r\n\r\n<p>- adidas Supernova Cushion 7 Core Black/Core Black/Carbon</p>\r\n\r\n<p>- Mesh upper</p>\r\n\r\n<p>- EVA midsole</p>\r\n\r\n<p>- adiPrene cushioning</p>\r\n\r\n<p>- Rubber outsole</p>',99.00,99.00,1,'2022-03-29 11:13:44.184567','2022-04-12 01:39:10.421736',2,1),(12,'Scuba Phormar x Craig Green','<p>Imagination merges with function in Craig Green&#39;s latest collection with adidas. Introducing a new breed of adventure sneaker, these Scuba Phormar Shoes have an amphibious-looking silhouette inspired by scuba diving booties. Tension cords and a textured rubber outsole give them a delicate yet utilitarian look.</p>\r\n\r\n<p>- adidas Scuba Phormar x Craig Green Wild Pine</p>\r\n\r\n<p>- Nylon Upper</p>\r\n\r\n<p>- Lace Closure</p>\r\n\r\n<p>- Tension Cords</p>\r\n\r\n<p>- Rubber Outsole</p>\r\n\r\n<p>- Stretchy Neoprene Lining</p>',219.00,176.00,1,'2022-03-29 11:14:40.084661','2022-04-12 01:39:14.439437',2,1),(13,'Ultraboost 1.0 DNA','<p>The 3-Stripes continue with the return of the &ldquo;1.0&rdquo; the adidas UltraBoost, and this time they dress the supreme running shoe in white with blue hints. A match made in performance heaven, built with a Primeknit upper and a BOOST midsole that as per usual provides the most responsive walking experience on the planet.</p>\r\n\r\n<p>- adidas Ultraboost 1.0 DNA</p>\r\n\r\n<p>- adidas Primeknit upper</p>\r\n\r\n<p>- Boost&trade; cushioning technology</p>\r\n\r\n<p>- Rubber outsole</p>',159.00,112.00,1,'2022-03-29 11:15:43.291898','2022-04-12 01:39:16.535376',2,1),(14,'Dame 7 Extply','<p>The adidas Dame 7 pays homage to the great &quot;Shaq Diesel&quot; and the iconic Reebok Shaqnosis. The black and white upper mimics the legendary silhouette from the mid 90&#39;s and features an ultralight Lightstrike midsole. This collaboration with Reebok features both Dame&#39;s and Shaq&#39;s logo and aims to highlight their accomplished careers on and off the court.</p>\r\n\r\n<p>- adidas Dame 7 Extply</p>\r\n\r\n<p>- Lace closure</p>\r\n\r\n<p>- Knit upper with synthetic support overlays</p>\r\n\r\n<p>- Cushioned feel</p>\r\n\r\n<p>- Textile lining</p>\r\n\r\n<p>- Lightstrike cushioning</p>\r\n\r\n<p>- Rubber outsole</p>',89.00,72.00,1,'2022-03-29 11:16:41.248764','2022-04-12 01:39:19.246561',2,1),(15,'Zx 8000','<p>The classic&nbsp;adias&nbsp;ZX 8000&nbsp;are here.&nbsp;They build on one of the most iconic colorways of the model&#39;s history, but with a twist, of course. The signature Torsion bar is still there, and the iconic heel TPU counter too. They wouldn&#39;t be part of the ZX thousand series without them.</p>\r\n\r\n<p>- adidas ZX 8000&nbsp;</p>\r\n\r\n<p>-&nbsp;Lace closure</p>\r\n\r\n<p>- Leather upper</p>\r\n\r\n<p>- Boost midsole</p>\r\n\r\n<p>- Rubber outsole</p>',89.00,54.00,1,'2022-03-29 11:17:29.946313','2022-04-12 01:38:35.279441',2,11);
/*!40000 ALTER TABLE `tb_sneaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sneaker_brand`
--

DROP TABLE IF EXISTS `tb_sneaker_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sneaker_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker_brand`
--

LOCK TABLES `tb_sneaker_brand` WRITE;
/*!40000 ALTER TABLE `tb_sneaker_brand` DISABLE KEYS */;
INSERT INTO `tb_sneaker_brand` VALUES (1,'Nike','brand/images/Nike.png','2022-03-29 10:49:21.405500','What started out as Blue Ribbon Sports is now one of the biggest brands in the world, Nike. Their Nike Sportswear line takes all the heritage from Oregon, and moves it off the court, focusing on high quality products and materials that have a fashion and streetwear approach, where iconic models are turned into fashion stables like the Air Force 1, Air Max 1, Air Max 90, Cortez or new silhouettes and hybrids like the Nike VaporMax and Vapor Street Flyknit.','2022-03-29 10:49:21.405500'),(2,'Adidas','brand/images/Adidas.png','2022-03-29 11:09:36.761754','On August 18, 1949, Adi Dassler at the age of 49, registered the 鈥淎di Dassler adidas Sportschuhfabrik鈥?and set to work with 47 employees in the small town of Herzogenaurach in the south of Germany. With the 1954 World Cup and Germany winning it, with adidas boots on their feet, the shoe brand with the three stripes became one of the biggest sportswear names in the industry.\r\n\r\nOver the next 60 years adidas maintained the status, raising to become a multi-sport specialist, from technological revolutions like the Micropacer to today鈥檚 Boost鈩?technology, football and skateboarding to yoga, adidas merges arts and sports with ease.','2022-03-29 11:09:36.761754');
/*!40000 ALTER TABLE `tb_sneaker_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sneaker_image`
--

DROP TABLE IF EXISTS `tb_sneaker_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sneaker_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `is_cover` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `sneaker_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sneaker_sneakerimage_sneaker_id_c2e370cf_fk_sneaker_sneaker_id` (`sneaker_id`),
  CONSTRAINT `sneaker_sneakerimage_sneaker_id_c2e370cf_fk_sneaker_sneaker_id` FOREIGN KEY (`sneaker_id`) REFERENCES `tb_sneaker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker_image`
--

LOCK TABLES `tb_sneaker_image` WRITE;
/*!40000 ALTER TABLE `tb_sneaker_image` DISABLE KEYS */;
INSERT INTO `tb_sneaker_image` VALUES (1,'sneaker/images/None.png',0,'2022-03-29 10:56:09.841122','2022-03-29 10:56:09.841122',1),(2,'sneaker/images/None_b2bOv2R.png',0,'2022-03-29 10:58:55.666286','2022-03-29 10:58:55.666286',2),(3,'sneaker/images/None_IRLQIoZ.png',1,'2022-03-29 11:01:08.484639','2022-03-29 11:01:08.484639',3),(4,'sneaker/images/None_fj0woX3.png',1,'2022-03-29 11:03:05.753841','2022-03-29 11:03:05.753841',4),(5,'sneaker/images/None_LoWri8Z.png',0,'2022-03-29 11:04:03.818931','2022-03-29 11:04:03.818931',5),(6,'sneaker/images/None_ZROSfsz.png',1,'2022-03-29 11:05:03.542900','2022-03-29 11:05:03.542900',6),(7,'sneaker/images/None_8GPS0dN.png',0,'2022-03-29 11:06:04.771250','2022-03-29 11:06:04.771250',7),(8,'sneaker/images/None_hCC9d9n.png',0,'2022-03-29 11:06:56.713760','2022-03-29 11:06:56.713760',8),(9,'sneaker/images/None_sEBn9j1.png',0,'2022-03-29 11:11:58.265378','2022-03-29 11:11:58.265378',9),(10,'sneaker/images/None_qHQu6Nb.png',0,'2022-03-29 11:12:50.393046','2022-03-29 11:12:50.393046',10),(11,'sneaker/images/None_9eGnPtT.png',0,'2022-03-29 11:13:44.187536','2022-03-29 11:13:44.187536',11),(12,'sneaker/images/None_02lvBiy.png',0,'2022-03-29 11:14:40.087629','2022-03-29 11:14:40.087629',12),(13,'sneaker/images/None_cqPW8ow.png',0,'2022-03-29 11:15:43.294865','2022-03-29 11:15:43.294865',13),(14,'sneaker/images/None_V4i629t.png',0,'2022-03-29 11:16:41.252764','2022-03-29 11:16:41.252764',14),(15,'sneaker/images/None_appnMNA.png',0,'2022-03-29 11:17:29.950316','2022-03-29 11:17:29.950316',15);
/*!40000 ALTER TABLE `tb_sneaker_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sneaker_size`
--

DROP TABLE IF EXISTS `tb_sneaker_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sneaker_size` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `size` double NOT NULL,
  `stock_num` int(11) NOT NULL,
  `sneaker_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sneaker_sneakersize_sneaker_id_82ae2031_fk_tb_sneaker_id` (`sneaker_id`),
  CONSTRAINT `sneaker_sneakersize_sneaker_id_82ae2031_fk_tb_sneaker_id` FOREIGN KEY (`sneaker_id`) REFERENCES `tb_sneaker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker_size`
--

LOCK TABLES `tb_sneaker_size` WRITE;
/*!40000 ALTER TABLE `tb_sneaker_size` DISABLE KEYS */;
INSERT INTO `tb_sneaker_size` VALUES (1,7,10,1,'2022-03-29 10:56:09.847120','2022-03-29 10:56:09.847120'),(2,7.5,10,1,'2022-03-29 10:56:10.217290','2022-03-29 10:56:10.218289'),(3,8,10,1,'2022-03-29 10:56:10.218289','2022-03-29 10:56:10.218289'),(4,8.5,10,1,'2022-03-29 10:56:10.426031','2022-03-29 10:56:10.426031'),(5,7,10,2,'2022-03-29 10:58:55.989262','2022-03-29 10:58:55.989262'),(6,7.5,10,2,'2022-03-29 10:58:56.079898','2022-03-29 10:58:56.079898'),(7,8,10,2,'2022-03-29 10:58:56.080895','2022-03-29 10:58:56.080895'),(8,8.5,10,2,'2022-03-29 10:58:56.143895','2022-03-29 10:58:56.143895'),(9,7.5,10,3,'2022-03-29 11:01:08.487640','2022-03-29 11:01:08.487640'),(10,8,10,3,'2022-03-29 11:01:08.493642','2022-03-29 11:01:08.493642'),(11,8.5,10,3,'2022-03-29 11:01:08.494642','2022-03-29 11:01:08.494642'),(12,7,10,3,'2022-03-29 11:01:08.495641','2022-03-29 11:01:08.495641'),(13,7,19,4,'2022-03-29 11:03:05.827855','2022-03-29 11:03:05.827855'),(14,7.5,13,4,'2022-03-29 11:03:05.924857','2022-03-29 11:03:05.924857'),(15,8,14,4,'2022-03-29 11:03:05.925857','2022-03-29 11:03:05.925857'),(16,8.5,15,4,'2022-03-29 11:03:05.988858','2022-03-29 11:03:05.988858'),(17,7,16,5,'2022-03-29 11:04:03.822930','2022-03-29 11:04:03.822930'),(18,7.5,18,5,'2022-03-29 11:04:03.826928','2022-03-29 11:04:03.826928'),(19,8,10,5,'2022-03-29 11:04:04.161547','2022-03-29 11:04:04.161547'),(20,8.5,15,5,'2022-03-29 11:04:04.162549','2022-03-29 11:04:04.162549'),(21,7,13,6,'2022-03-29 11:05:03.600076','2022-03-29 11:05:03.600076'),(22,7.5,18,6,'2022-03-29 11:05:03.660078','2022-03-29 11:05:03.660078'),(23,8,10,6,'2022-03-29 11:05:03.722075','2022-03-29 11:05:03.722075'),(24,8.5,9,6,'2022-03-29 11:05:03.724078','2022-03-29 11:05:03.725077'),(25,7,13,7,'2022-03-29 11:06:04.772249','2022-03-29 11:06:04.772249'),(26,7.5,8,7,'2022-03-29 11:06:04.773253','2022-03-29 11:06:04.773253'),(27,8,9,7,'2022-03-29 11:06:05.117247','2022-03-29 11:06:05.117247'),(28,8.5,14,7,'2022-03-29 11:06:05.118249','2022-03-29 11:06:05.118249'),(29,7,19,8,'2022-03-29 11:06:56.774705','2022-03-29 11:06:56.774705'),(30,7.5,16,8,'2022-03-29 11:06:56.841695','2022-03-29 11:06:56.841695'),(31,8,10,8,'2022-03-29 11:06:56.895692','2022-03-29 11:06:56.895692'),(32,8.5,13,8,'2022-03-29 11:06:56.896691','2022-03-29 11:06:56.896691'),(33,7,13,9,'2022-03-29 11:11:58.266379','2022-03-29 11:11:58.266379'),(34,7.5,14,9,'2022-03-29 11:11:58.267379','2022-03-29 11:11:58.267379'),(35,8,18,9,'2022-03-29 11:11:58.268379','2022-03-29 11:11:58.268379'),(36,8.5,19,9,'2022-03-29 11:11:58.365501','2022-03-29 11:11:58.365501'),(37,7,13,10,'2022-03-29 11:12:50.394044','2022-03-29 11:12:50.394044'),(38,7.5,18,10,'2022-03-29 11:12:50.395052','2022-03-29 11:12:50.395052'),(39,8,19,10,'2022-03-29 11:12:50.396046','2022-03-29 11:12:50.396046'),(40,8.5,20,10,'2022-03-29 11:12:50.397045','2022-03-29 11:12:50.397045'),(41,7,18,11,'2022-03-29 11:13:44.514701','2022-03-29 11:13:44.514701'),(42,7.5,20,11,'2022-03-29 11:13:44.627709','2022-03-29 11:13:44.627709'),(43,8,8,11,'2022-03-29 11:13:44.629704','2022-03-29 11:13:44.629704'),(44,8.5,9,11,'2022-03-29 11:13:44.631704','2022-03-29 11:13:44.631704'),(45,7,20,12,'2022-03-29 11:14:40.088635','2022-03-29 11:14:40.088635'),(46,7.5,20,12,'2022-03-29 11:14:40.089630','2022-03-29 11:14:40.089630'),(47,8,32,12,'2022-03-29 11:14:40.424232','2022-03-29 11:14:40.424232'),(48,8.5,10,12,'2022-03-29 11:14:40.424232','2022-03-29 11:14:40.424232'),(49,7,13,13,'2022-03-29 11:15:43.295865','2022-03-29 11:15:43.295865'),(50,7.5,20,13,'2022-03-29 11:15:43.296868','2022-03-29 11:15:43.296868'),(51,8,13,13,'2022-03-29 11:15:43.297864','2022-03-29 11:15:43.297864'),(52,8.5,20,13,'2022-03-29 11:15:43.298864','2022-03-29 11:15:43.298864'),(53,7,8,14,'2022-03-29 11:16:41.585427','2022-03-29 11:16:41.585427'),(54,7.5,10,14,'2022-03-29 11:16:41.634427','2022-03-29 11:16:41.634427'),(55,8,20,14,'2022-03-29 11:16:41.635428','2022-03-29 11:16:41.635428'),(56,8.5,10,14,'2022-03-29 11:16:41.635428','2022-03-29 11:16:41.635428'),(57,7,13,15,'2022-03-29 11:17:29.951308','2022-03-29 11:17:29.951308'),(58,7.5,17,15,'2022-03-29 11:17:29.951308','2022-03-29 11:17:29.951308'),(59,8,11,15,'2022-03-29 11:17:29.952308','2022-03-29 11:17:29.952308'),(60,8.5,13,15,'2022-03-29 11:17:29.952308','2022-03-29 11:17:29.952308');
/*!40000 ALTER TABLE `tb_sneaker_size` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 14:59:28
