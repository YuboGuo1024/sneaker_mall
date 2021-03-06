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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$jrA1ZOcXHjPmrTv6qXllS5$VQqfhNMUjK3vRA2t2QbROjutv4ekP5+SwAcegQwdg/A=','2022-04-13 11:25:18.803022',1,'admin','','','admin@sneaker.com',1,1,'2022-03-29 10:47:36.983720'),(2,'pbkdf2_sha256$320000$NSa76eE16UhmZcIVMMon8H$9SB8VgzX1KJHl+rtyLCdRKn2VMI94v4KCGNxsmDxbiw=','2022-04-13 11:14:43.591045',0,'test01','12345','','1@test.com',0,1,'2022-03-31 04:32:10.857058'),(3,'pbkdf2_sha256$320000$B0RPYmYqLDNJIXx1cbURMO$1u9q750tXO7n6Un5H+WCglSqSOTxYICxyle4MWLNatY=','2022-04-06 02:39:29.543778',0,'test02','','','2@test.com',0,0,'2022-03-31 04:35:58.690748');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-03-29 10:49:21.408500','1','Nike',1,'[{\"added\": {}}]',7,1),(2,'2022-03-29 10:56:10.427035','1','Nike Sportswear Air Force 1 \'07 LX',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (1)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (1)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (2)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (3)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (4)\"}}]',8,1),(3,'2022-03-29 10:57:13.115362','1','Air Force 1 \'07 LX',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(4,'2022-03-29 10:58:56.143895','2','Wmns Air Force 1 Shadow',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (2)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (5)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (6)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (7)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (8)\"}}]',8,1),(5,'2022-03-29 11:01:08.880567','3','Air Max BW',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (3)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (9)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (10)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (11)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (12)\"}}]',8,1),(6,'2022-03-29 11:03:05.989858','4','Air Tuned Max',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (4)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (13)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (14)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (15)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (16)\"}}]',8,1),(7,'2022-03-29 11:04:04.162549','5','Air Huarache LE',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (5)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (17)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (18)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (19)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (20)\"}}]',8,1),(8,'2022-03-29 11:05:03.725077','6','Free Run 2',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (6)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (21)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (22)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (23)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (24)\"}}]',8,1),(9,'2022-03-29 11:06:05.119248','7','SB Heritage Vulc',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (7)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (25)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (26)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (27)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (28)\"}}]',8,1),(10,'2022-03-29 11:06:56.897692','8','Zoom Freak 3',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (8)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (29)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (30)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (31)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (32)\"}}]',8,1),(11,'2022-03-29 11:09:36.762754','2','Adidas',1,'[{\"added\": {}}]',7,1),(12,'2022-03-29 11:11:58.366501','9','Y-3 Qisan Cozy',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (9)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (33)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (34)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (35)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (36)\"}}]',8,1),(13,'2022-03-29 11:12:50.716101','10','Y-3 Runner 4D Halo',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (10)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (37)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (38)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (39)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (40)\"}}]',8,1),(14,'2022-03-29 11:13:44.633705','11','Supernova Cushion 7',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (11)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (41)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (42)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (43)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (44)\"}}]',8,1),(15,'2022-03-29 11:14:40.425233','12','Scuba Phormar x Craig Green',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (12)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (45)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (46)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (47)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (48)\"}}]',8,1),(16,'2022-03-29 11:15:43.299865','13','Ultraboost 1.0 DNA',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (13)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (49)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (50)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (51)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (52)\"}}]',8,1),(17,'2022-03-29 11:16:41.636426','14','Dame 7 Extply',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (14)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (53)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (54)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (55)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (56)\"}}]',8,1),(18,'2022-03-29 11:17:30.275148','15','Zx 8000',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (15)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (57)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (58)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (59)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (60)\"}}]',8,1),(19,'2022-04-06 12:06:53.762267','1','Standard Delivery',1,'[{\"added\": {}}]',12,1),(20,'2022-04-06 12:08:21.033927','2','Next day delivery',1,'[{\"added\": {}}]',12,1),(21,'2022-04-12 01:20:45.570405','15','Zx 8000',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(22,'2022-04-12 01:22:45.871518','15','Zx 8000',2,'[{\"changed\": {\"fields\": [\"Description\", \"Click Number\"]}}]',8,1),(23,'2022-04-12 01:33:07.587073','14','Dame 7 Extply',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(24,'2022-04-12 01:33:31.361934','14','Dame 7 Extply',2,'[{\"changed\": {\"fields\": [\"Click Number\"]}}]',8,1),(25,'2022-04-12 01:33:52.769732','13','Ultraboost 1.0 DNA',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(26,'2022-04-12 01:34:13.040992','12','Scuba Phormar x Craig Green',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(27,'2022-04-12 01:34:42.177206','11','Supernova Cushion 7',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(28,'2022-04-12 01:35:07.524398','10','Y-3 Runner 4D Halo',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(29,'2022-04-12 01:35:32.071894','9','Y-3 Qisan Cozy',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(30,'2022-04-12 01:35:55.030440','8','Zoom Freak 3',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(31,'2022-04-12 01:36:07.999113','7','SB Heritage Vulc',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(32,'2022-04-12 01:36:21.025410','6','Free Run 2',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(33,'2022-04-12 01:36:42.426296','5','Air Huarache LE',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(34,'2022-04-12 01:37:03.333105','4','Air Tuned Max',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(35,'2022-04-12 01:37:24.256362','3','Air Max BW',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(36,'2022-04-12 01:37:46.199024','2','Wmns Air Force 1 Shadow',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(37,'2022-04-12 01:38:15.012496','1','Air Force 1 \'07 LX',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(38,'2022-04-12 07:02:45.378846','2','Adidas',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,1),(39,'2022-04-12 07:08:42.473218','1','Nike',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,1),(40,'2022-04-13 10:06:18.592266','3','Reebok',1,'[{\"added\": {}}]',7,1),(41,'2022-04-13 10:11:33.492108','16','Victory G',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (16)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (17)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (18)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (61)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (62)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (63)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (64)\"}}]',8,1),(42,'2022-04-13 10:16:57.266719','17','Workout Plus',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (19)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (20)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (21)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (65)\"}}]',8,1),(43,'2022-04-13 10:17:17.853542','17','Workout Plus',2,'[{\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (66)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (67)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (68)\"}}]',8,1),(44,'2022-04-13 10:18:58.980028','18','Pump Omni Zone II x JUUN.J',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (22)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (23)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (24)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (69)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (70)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (71)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (72)\"}}]',8,1),(45,'2022-04-13 10:20:45.852543','19','Kamikaze II Low',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (25)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (26)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (27)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (73)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (74)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (75)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (76)\"}}]',8,1),(46,'2022-04-13 10:26:25.314247','20','Club C 1985 TV',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (28)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (29)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (30)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (77)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (78)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (79)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (80)\"}}]',8,1),(47,'2022-04-13 10:28:50.959391','21','Aztec II',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (31)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (32)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (33)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (81)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (82)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (83)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (84)\"}}]',8,1),(48,'2022-04-13 10:31:19.178173','4','PUMA',1,'[{\"added\": {}}]',7,1),(49,'2022-04-13 10:32:42.664816','22','Mirage Mox Vision',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (34)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (35)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (36)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (85)\"}}]',8,1),(50,'2022-04-13 10:32:58.265956','22','Mirage Mox Vision',2,'[{\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (86)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (87)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (88)\"}}]',8,1),(51,'2022-04-13 10:34:13.180783','23','Slipstream Lo x Butter Goods',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (37)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (38)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (39)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (89)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (90)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (91)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (92)\"}}]',8,1),(52,'2022-04-13 10:36:37.415237','24','Suede VTG',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (40)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (41)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (42)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (93)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (94)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (95)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (96)\"}}]',8,1),(53,'2022-04-13 10:38:02.162002','25','Basket Vintage Cream x Butter Goods',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (43)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (44)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (45)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (97)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (98)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (99)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (100)\"}}]',8,1),(54,'2022-04-13 10:39:56.114268','26','Army Trainer OG',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (46)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (47)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (48)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (101)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (102)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (103)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (104)\"}}]',8,1),(55,'2022-04-13 10:41:38.961651','5','ASICS',1,'[{\"added\": {}}]',7,1),(56,'2022-04-13 10:43:12.642023','27','Gel-Lyte III OG',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (49)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (50)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (51)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (105)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (106)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (107)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (108)\"}}]',8,1),(57,'2022-04-13 10:44:59.763582','28','Gel-Kayano 14 x Angelo Baque',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (52)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (53)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (54)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (109)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (110)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (111)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (112)\"}}]',8,1),(58,'2022-04-13 10:47:07.220144','29','Novablast 2 SPS',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (55)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (56)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (57)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (113)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (114)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (115)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (116)\"}}]',8,1),(59,'2022-04-13 10:54:04.667545','30','Gel-Lyte III OG x SVD',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (58)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (59)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (60)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (117)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (118)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (119)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (120)\"}}]',8,1),(60,'2022-04-13 10:58:21.301968','31','Gel-Quantum 360 6',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (61)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (62)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (63)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (121)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (122)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (123)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (124)\"}}]',8,1),(61,'2022-04-13 11:00:20.554506','6','New Balance',1,'[{\"added\": {}}]',7,1),(62,'2022-04-13 11:02:15.795452','32','MS237',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (64)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (65)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (66)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (125)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (126)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (127)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (128)\"}}]',8,1),(63,'2022-04-13 11:03:47.349790','33','574',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (67)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (68)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (69)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (129)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (130)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (131)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (132)\"}}]',8,1),(64,'2022-04-13 11:05:01.093997','34','1500',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (70)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (71)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (72)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (133)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (134)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (135)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (136)\"}}]',8,1),(65,'2022-04-13 11:06:17.403138','35','574 x Tokyo Design Studios',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (73)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (74)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (75)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (137)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (138)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (139)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (140)\"}}]',8,1),(66,'2022-04-13 11:07:28.879914','36','991',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (76)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (77)\"}}, {\"added\": {\"name\": \"Sneaker Image\", \"object\": \"SneakerImage object (78)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (141)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (142)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (143)\"}}, {\"added\": {\"name\": \"Sneaker Size\", \"object\": \"SneakerSize object (144)\"}}]',8,1),(67,'2022-04-13 11:08:00.526863','6','New Balance',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-29 10:45:08.701589'),(2,'auth','0001_initial','2022-03-29 10:45:15.484641'),(3,'admin','0001_initial','2022-03-29 10:45:17.474063'),(4,'admin','0002_logentry_remove_auto_add','2022-03-29 10:45:17.508491'),(5,'admin','0003_logentry_add_action_flag_choices','2022-03-29 10:45:17.549763'),(6,'contenttypes','0002_remove_content_type_name','2022-03-29 10:45:18.662674'),(7,'auth','0002_alter_permission_name_max_length','2022-03-29 10:45:19.367985'),(8,'auth','0003_alter_user_email_max_length','2022-03-29 10:45:20.233050'),(9,'auth','0004_alter_user_username_opts','2022-03-29 10:45:20.265039'),(10,'auth','0005_alter_user_last_login_null','2022-03-29 10:45:20.822464'),(11,'auth','0006_require_contenttypes_0002','2022-03-29 10:45:20.858043'),(12,'auth','0007_alter_validators_add_error_messages','2022-03-29 10:45:20.952325'),(13,'auth','0008_alter_user_username_max_length','2022-03-29 10:45:21.740907'),(14,'auth','0009_alter_user_last_name_max_length','2022-03-29 10:45:22.401112'),(15,'auth','0010_alter_group_name_max_length','2022-03-29 10:45:23.340796'),(16,'auth','0011_update_proxy_permissions','2022-03-29 10:45:23.374528'),(17,'auth','0012_alter_user_first_name_max_length','2022-03-29 10:45:24.143798'),(18,'sessions','0001_initial','2022-03-29 10:45:24.662726'),(19,'sneaker','0001_initial','2022-03-29 10:45:27.075896'),(20,'sneaker','0002_alter_brand_table_alter_sneaker_table_and_more','2022-03-29 10:45:27.484649'),(21,'sneaker','0003_sneakersize','2022-03-29 10:45:28.460747'),(22,'sneaker','0004_alter_sneakersize_options_alter_sneakersize_table','2022-03-29 10:45:28.644810'),(23,'sneaker','0005_sneakersize_created_at_sneakersize_updated_at','2022-03-29 10:45:30.240701'),(24,'sneaker','0006_remove_sneaker_detail_brand_description_and_more','2022-03-29 10:45:31.729667'),(25,'account','0001_initial','2022-04-05 13:45:34.191518'),(26,'account','0002_alter_address_table','2022-04-06 01:56:04.357089'),(27,'checkout','0001_initial','2022-04-06 11:24:57.173554'),(28,'checkout','0002_alter_deliveryoptions_table_and_more','2022-04-06 11:24:57.482798'),(29,'checkout','0003_delete_paymentselections','2022-04-10 08:26:38.933157'),(30,'ipn','0001_initial','2022-04-10 08:26:39.566338'),(31,'ipn','0002_paypalipn_mp_id','2022-04-10 08:26:40.152854'),(32,'ipn','0003_auto_20141117_1647','2022-04-10 08:26:41.397268'),(33,'ipn','0004_auto_20150612_1826','2022-04-10 08:26:56.333535'),(34,'ipn','0005_auto_20151217_0948','2022-04-10 08:26:56.573324'),(35,'ipn','0006_auto_20160108_1112','2022-04-10 08:26:57.732663'),(36,'ipn','0007_auto_20160219_1135','2022-04-10 08:26:57.770056'),(37,'ipn','0008_auto_20181128_1032','2022-04-10 08:26:57.805977'),(38,'ipn','0009_alter_paypalipn_id','2022-04-10 08:26:58.452029'),(39,'order','0001_initial','2022-04-10 08:27:02.681956'),(40,'order','0002_alter_orderitem_size','2022-04-10 08:54:45.686901'),(41,'order','0003_alter_orderitem_order','2022-04-10 11:28:30.427971'),(42,'order','0004_order_is_delete','2022-04-11 10:37:40.338165'),(43,'sneaker','0007_sneaker_click_num','2022-04-11 12:33:23.352273'),(44,'sneaker','0008_alter_sneaker_description','2022-04-12 01:19:45.193348'),(45,'order','0002_alter_order_total_paid','2022-04-13 11:47:40.078011');
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
INSERT INTO `django_session` VALUES ('2yt1vqrobymhm12uwzs9tqiqdtr7niy2','eyJjYXJ0Ijp7fX0:1ndTsU:WCyhkmx3M-lFGbCCarOY7jHJ-ec2j3Hg-842rnwOXN4','2022-04-24 09:29:02.315596'),('3f7grkk1hz3iebjz6f2uuyt0toe25oi5','.eJxVjEEOwiAQRe_C2pAyUAa7dO8ZCAyjrRpIaLtqendp0oVu33v_b8KHdRn9OnP1UxKDAHH5ZTHQm_Mh0ivkZ5FU8lKnKI9EnnaW95L4czvbv4MxzGNbk7FKo-4sdjoRKBU7wASgwEDsnY5g6UF9Q0gKUTtMaKC_WsvsGHQ7pVAXMWz7_gXQJzmY:1nebTw:nYdHU7HnBpORiQCF9r9rjhyIeVh1nKuL7HqOe9gKzno','2022-04-27 11:48:20.607378'),('5atva9nyi5wdfq0ng3sqpb2gchbvbmy8','.eJxVjEEOwiAQRe_C2pAyUAa7dO8ZCAyjrRpIaLtqendp0oVu33v_b8KHdRn9OnP1UxKDAHH5ZTHQm_Mh0ivkZ5FU8lKnKI9EnnaW95L4czvbv4MxzGNbk7FKo-4sdjoRKBU7wASgwEDsnY5g6UF9Q0gKUTtMaKC_WsvsGHQ7pVAXMWz7_gXQJzmY:1ndsnn:035TUcsECY8vO3JhqOq2tqUV6uKqcTykKgSU9juHABk','2022-04-25 12:05:51.499716'),('7fpdcnigy1wn3jocog7agmpixe0rso7v','.eJxVj8GOgzAMRP_FZxQlDsSU02rv-w0ocdxCuwI2wErdin_fpOqlN-vNeDx-APu0QfcAU3-Q0mVa0sgCHRAqraGCn-0Onalg_Sswe46jgt7v29Dvq6R-jJkjvLHg-SZTEeLVT5dZ8TxtaQyqWNRLXdXXHOX78-V9Cxj8OuRtrp2xZLUjbSOjMUEjRUSDNYamtQEdn7nJiNgQ2ZYi1dicnBNpBW0OXfbEOU3Ka_na-Cvp_uxsjuMfUDdO-Q:1ndjVL:RFl3LDV08Nvh2GOPWekFAAXoFsQCQohV5j64K8VOytM','2022-04-25 02:10:11.107677'),('87af0a2uczopwfnplds3js9d54jdei2r','.eJxVjEEOgyAQRe8y64bAgAx12X3PQGCgxbbBRHRlvHs1ceP2vff_ChymGfp1u4EPy1z80vLkhwQ9IFxYDPzN9RDpE-p7FDzWeRqiOBJx2iaeY8q_x9leDkpoZV-zsUqTlpakToxKRYmUEBUajJ3TES2_uNsRsSLSjhIZ7O7W5uwyatj-6ak5mA:1ndU42:iRdr-RL-KTk2tMvs_Dae9F_jUAa0Ub8Moqujr3rBM-c','2022-04-24 09:40:58.482416'),('8y8cdqvlnz22365d1xjvjs4mojzl6svm','eyJjYXJ0Ijp7fX0:1ndU0Z:NS_roOuEqxKFfY8Dj51R2VKsAaP32SHxvNDJrwJuS2U','2022-04-24 09:37:23.749156'),('aicjwfiijv925wmxd36wx6qlu2xvj68j','.eJx1j81OxDAMhN_F5yqKnTYuPSHuPEOVH0MLqF2SFml3te9OAr0sEjdr5vPYc4Xg0gbDFbB9ZNXV6ZTmIDAAk9IaGvjczjBgA_lSxcLcGkD6SyPb__DCj27fpnHPksY5Fp3gTvMuvMtSjfjmltdVhXXZ0uxVRdThZvW8Rvl4Oti7gMnlqWyH1qJhoy1rEwMhek0ciZBa8l1vPNnwEroicUBm03PklroHa0V6IVNCT3sKJU1qt3Jt_pJ0_vkZSw0XY5Kcq3eMv3WwlPwG7n9kHg:1ndkAx:zQPZYWBG9FMJsC8-hxkOob2jgMwa7_HoDxMqbuMRmvs','2022-04-25 02:53:11.262543'),('c67kztnt4w548tnayaf4gip1m1bzjlk9','eyJjYXJ0Ijp7fX0:1ndTgr:psAwSYfrBwAK6n8C32jAyaG9svw4xZ5eABmdMk7EQiE','2022-04-24 09:17:01.129233'),('enst3bkk9k6ovabrnuko5d0isotf5aa4','.eJxVUMtOwzAQ_BefI8teJ96QE-qdb4js9UICKCl2Uqmt-u-sIQe4jeal2b2rMezbNO6F8zgnNShQzV8uBvrgpQrpPSxvq6Z12fIcdbXoQy36ZU38eTq8_wqmUCZJU-utQ2c8GpcIrI0GMAFYaCF2vYvg6ZU6oZAsousxYQvdk_fMPYOTUgp5U8Nd2fYZtanonGdiKUfQxojja7uqwTaq3CopnsejUec9k4zgGpCR84Xz9edUEDGklLmUqh3w9wtWot-4H1iH:1ndish:lPqFe5hXhF7uFfDFGAsdD9q8zJk3UGuinVQplyaSvpM','2022-04-25 01:30:15.810810'),('fk5a3tlbgoih8bcrd78ojpsgqi49851u','eyJjYXJ0Ijp7IjE0QDcuMCI6eyJwcmljZSI6IjcyLjAwIiwicXR5IjoxLCJzeiI6IjcuMCJ9fX0:1naViJ:BeiiVC-bIxN8VdF84PDVCb-A2wysp-TbkDU8Q3ReS5U','2022-04-16 04:50:15.187929'),('j2q7msl71u9813te6cp1vlj0zr2u97uh','eyJjYXJ0Ijp7fX0:1ndTmD:NkmrAY8-4MHUyv9b9odfiwvYMxsfqZAjyPbTv23Zq8A','2022-04-24 09:22:33.732937'),('jdrh9ir1v7nxsujtzgee8yov1tnp0j4a','.eJxVjjsOgzAQRO_iGll4_VmHMj1nQPauE0giLBmoEHePkSiS9s3M0-xiCNs6DtuSyjCx6ASI5pfFQO80nwG_wvzMkvK8linKsyKvdJF95vS5X90_wRiWsa7JOKVRtw5bzQRKxRaQARQYiNbrCI4eZCtCUojaI6MBe3MuJZ9AV2kufJ30jaBQVtHtx_EF12U9wg:1ndTmk:wht06KTh1NVLXx79FXHOv9sSplx9IXYBURJlK3W9Muo','2022-04-24 09:23:06.487041'),('pdgyurupxd23o9vnsk3k8c810r4p7jnj','.eJxVjkEOwiAQRe_CuiEwFKZ2Zdx7hgYGtFXTKtCFNr27NOlCd5P33_yZhXV2zn03pxC7wbOWAat-mbN0D-MW-JsdrxOnacxxcHxT-J4mfp58eJx296-gt6kv21QbqVAJg0J5AimdAPQAEmpwulEODF1IF4QkEVWDHmvQB2NCaAKoUjpFvz8pRcXIxszahUl9RK636RkHCuWUrrkQxX_ld1Erlj4Fbs66rl_f_kkb:1ndU8O:MIBPInj4Po1Yw6WQn9JSzvp4skDcz2aD-6pdd-Yx_F0','2022-04-24 09:45:28.680669'),('q5njwcnrvu4qpnqtjrr00ke3g7aubd1k','.eJyrVkpOLCpRsqpWMjR1MNczALEKijKTU5WslExN9AwMlHSUCksqlawsdZSKq5SsjGt1ICpNcao0AikxRDfM0hJJiWFtbS0AyEogcA:1nZqmy:sVbdzuxwQga6aSqZ5Hm7NeiADm8bN_iAYinkie2vNfs','2022-04-14 09:08:20.856904'),('vkoq4afa0ljjz0xi2c8sq8bqsluuryxf','eyJjYXJ0Ijp7fX0:1ndU0Q:evfhsXYC612udlmTdUb31qABfMeGzJ3BbZc7xWcUQaU','2022-04-24 09:37:14.840413'),('xil3ct6m8rg36o9u1y52uevje19rd6jh','.eJxVjEEOgyAQRe8y64bAgAx12X3PQGCgxbbBRHRlvHs1ceP2vff_ChymGfp1u4EPy1z80vLkhwQ9IFxYDPzN9RDpE-p7FDzWeRqiOBJx2iaeY8q_x9leDkpoZV-zsUqTlpakToxKRYmUEBUajJ3TES2_uNsRsSLSjhIZ7O7W5uwyatj-6ak5mA:1ndU4U:q94zMRSDh3-sObijy_riqunoBRv3iipn5oiERhB70No','2022-04-24 09:41:26.367088'),('yozg589wiuvkwfy64uen0r81ekdwow3h','.eJxVjDEOgzAQBP9ydWSZMzaYMn3egO7OOCaJQLKhQvw9INHQzszuBkJ5gW7bH9DTuqR-LUPuxwAdVHBjTPIdplOED03vWck8LXlkdSbqskW95jD8nld7O0hU0rFu0ImuG5YYhCyKsyZw6zjq2hCKeBPFti1bLQcw1mtER95HdBVjjLD_ATaVO0Y:1neb7e:wgv5vPmah4qI_-2WtafAoplPu24T984J6VRgRIvQJO8','2022-04-27 11:25:18.829671');
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
INSERT INTO `tb_address` VALUES (1,'Mike','785-239-7271','66442','Fort Riley','2180 Nicholas Street','Kansas','',1,'2022-04-05 13:57:55.916537','2022-04-13 11:20:50.333078',2),(3,'Bradley K Johnson','330-305-9139','63146','Ohio','3736 Briarhill Lane','North Canton','',0,'2022-04-06 10:43:17.216312','2022-04-13 11:22:39.350396',2),(4,'Harry L Taylor','919-473-8503','27603','3054 Jennifer Lane','Raleigh','North Carolina','',0,'2022-04-11 06:46:44.163821','2022-04-13 11:23:12.880090',2);
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
  `total_paid` decimal(8,2) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` VALUES (1,299.99,'20220410162813','','PayPal',0,'2022-04-10 08:28:13.728438','2022-04-11 11:50:57.666852',1,2,1),(2,108.99,'20220410163349','','PayPal',0,'2022-04-10 08:33:49.873901','2022-04-11 11:52:34.829611',1,2,1),(3,261.99,'20220410165650','','PayPal',0,'2022-04-10 08:56:50.191285','2022-04-11 11:52:37.390536',1,2,1),(4,261.99,'20220410165713','','PayPal',0,'2022-04-10 08:57:13.110240','2022-04-11 11:59:32.725652',1,2,1),(5,298.99,'20220410165816','','PayPal',0,'2022-04-10 08:58:16.403051','2022-04-11 12:05:19.670503',1,2,1),(6,358.99,'20220410171025','20220410171025','PayPal',0,'2022-04-10 09:10:25.881471','2022-04-11 12:05:16.919888',1,2,1),(7,108.99,'20220410171939','20220410171939','PayPal',0,'2022-04-10 09:19:39.884750','2022-04-11 12:05:12.378320',1,2,1),(9,63.99,'20220410172926','20220410172926','PayPal',0,'2022-04-10 09:29:26.651688','2022-04-11 11:59:28.229445',1,2,1),(10,108.99,'20220410174217','20220410174217','PayPal',0,'2022-04-10 09:42:17.884899','2022-04-11 10:56:36.601824',1,2,1),(11,63.99,'20220410184218','20220410184218','PayPal',0,'2022-04-10 10:42:18.049647','2022-04-11 10:56:26.474516',1,2,1),(12,81.99,'20220410185837','20220410185837','PayPal',0,'2022-04-10 10:58:37.923045','2022-04-11 10:55:21.096020',1,2,1),(13,108.99,'20220410190007','20220410190007','PayPal',0,'2022-04-10 11:00:07.627907','2022-04-11 10:52:08.656432',1,2,1),(14,81.99,'20220410190536','20220410190536','PayPal',0,'2022-04-10 11:05:36.861077','2022-04-11 10:51:51.992936',1,2,1),(15,81.99,'20220410191235','20220410191235','PayPal',1,'2022-04-10 11:12:35.743910','2022-04-10 11:13:03.337213',1,2,0),(16,108.99,'20220410191454','20220410191454','PayPal',1,'2022-04-10 11:14:54.370285','2022-04-10 11:15:38.805962',1,2,0),(17,81.99,'20220411154613','20220411154613','PayPal',1,'2022-04-11 07:46:13.143415','2022-04-11 08:47:36.368007',1,2,0),(18,418.99,'20220411170617','20220411170617','PayPal',0,'2022-04-11 09:06:17.446311','2022-04-11 10:51:44.425574',3,2,1),(19,418.99,'20220411170653','20220411170653','PayPal',0,'2022-04-11 09:06:53.971210','2022-04-11 10:51:41.008454',3,2,1),(20,108.99,'20220411171027','20220411171027','PayPal',0,'2022-04-11 09:10:27.770535','2022-04-11 10:51:37.425056',3,2,1),(21,0.00,'20220411171123','20220411171123','PayPal',0,'2022-04-11 09:11:23.548364','2022-04-11 10:51:30.471488',3,2,1),(22,81.99,'20220411171219','20220411171219','PayPal',0,'2022-04-11 09:12:19.809125','2022-04-11 10:51:28.133652',3,2,1),(23,0.00,'20220411171359','20220411171359','PayPal',0,'2022-04-11 09:13:59.315769','2022-04-11 10:51:25.651823',3,2,1),(24,108.99,'20220411171409','20220411171409','PayPal',0,'2022-04-11 09:14:09.865336','2022-04-11 10:50:29.743391',3,2,1),(25,94.99,'20220411171707','20220411171707','PayPal',0,'2022-04-11 09:17:07.896190','2022-04-11 10:50:25.224875',3,2,1),(26,94.99,'20220411171747','20220411171747','PayPal',0,'2022-04-11 09:17:47.413127','2022-04-11 10:50:16.049950',3,2,1),(27,94.99,'20220411171834','20220411171834','PayPal',0,'2022-04-11 09:18:34.736040','2022-04-11 10:50:10.989044',3,2,1),(28,94.99,'20220411172127','20220411172127','PayPal',0,'2022-04-11 09:21:27.405920','2022-04-11 10:50:06.013971',3,2,1),(29,63.99,'20220411182700','20220411182700','PayPal',0,'2022-04-11 10:27:00.229549','2022-04-11 10:49:17.227546',3,2,1),(30,116.99,'20220411200551','20220411200551','PayPal',1,'2022-04-11 12:05:51.321963','2022-04-11 12:06:13.785814',3,2,0),(32,343.99,'20220413192352','20220413192352','PayPal',1,'2022-04-13 11:23:52.817257','2022-04-13 11:24:53.054158',1,2,0),(33,559.99,'20220413192748','20220413192748','PayPal',1,'2022-04-13 11:27:48.734441','2022-04-13 11:46:57.217416',1,2,0),(34,171.99,'20220413194820','20220413194820','PayPal',1,'2022-04-13 11:48:20.400428','2022-04-13 11:48:36.123263',1,2,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order_item`
--

LOCK TABLES `tb_order_item` WRITE;
/*!40000 ALTER TABLE `tb_order_item` DISABLE KEYS */;
INSERT INTO `tb_order_item` VALUES (1,72.00,1,'2022-04-10 08:57:13.183271',4,'7.0',14),(2,90.00,1,'2022-04-10 08:57:13.273239',4,'7.5',8),(3,90.00,1,'2022-04-10 08:57:13.305240',4,'8.0',8),(4,90.00,1,'2022-04-10 08:58:16.492417',5,'8.5',8),(5,90.00,1,'2022-04-10 08:58:16.524423',5,'8.0',8),(6,109.00,1,'2022-04-10 08:58:16.621982',5,'7.5',2),(7,349.00,1,'2022-04-10 09:10:25.945663',6,'7.0',10),(8,99.00,1,'2022-04-10 09:19:39.924347',7,'7.5',11),(10,54.00,1,'2022-04-10 09:29:26.714217',9,'7.5',15),(11,99.00,1,'2022-04-10 09:42:17.951788',10,'7.0',11),(12,54.00,1,'2022-04-10 10:42:18.083186',11,'7.5',15),(13,72.00,1,'2022-04-10 10:58:37.989467',12,'7.5',14),(14,99.00,1,'2022-04-10 11:00:07.682843',13,'7.5',11),(15,72.00,1,'2022-04-10 11:05:36.893346',14,'8.5',14),(16,72.00,1,'2022-04-10 11:12:35.822483',15,'7.5',14),(17,99.00,1,'2022-04-10 11:14:54.439606',16,'7.0',11),(18,72.00,1,'2022-04-11 07:46:13.459538',17,'7.0',14),(19,90.00,1,'2022-04-11 09:06:17.529002',18,'7.5',8),(20,81.00,1,'2022-04-11 09:06:17.547001',18,'8.0',5),(21,81.00,3,'2022-04-11 09:06:17.580000',18,'8.5',5),(22,90.00,1,'2022-04-11 09:06:54.034372',19,'7.5',8),(23,81.00,1,'2022-04-11 09:06:54.073963',19,'8.0',5),(24,81.00,3,'2022-04-11 09:06:54.104958',19,'8.5',5),(25,99.00,1,'2022-04-11 09:10:27.810789',20,'7.5',11),(26,72.00,1,'2022-04-11 09:12:19.851062',22,'7.5',14),(27,99.00,1,'2022-04-11 09:14:09.943583',24,'7.0',11),(28,90.00,1,'2022-04-11 09:17:07.952696',25,'7.5',8),(29,90.00,1,'2022-04-11 09:17:47.478344',26,'7.5',8),(30,90.00,1,'2022-04-11 09:18:34.812043',27,'7.5',8),(31,90.00,1,'2022-04-11 09:21:27.487311',28,'7.5',8),(32,54.00,1,'2022-04-11 10:27:00.265556',29,'7.0',15),(33,112.00,1,'2022-04-11 12:05:51.362877',30,'7.5',13),(35,60.00,3,'2022-04-13 11:23:52.888593',32,'7.5',19),(36,77.00,2,'2022-04-13 11:23:52.911042',32,'7.0',16),(37,25.00,2,'2022-04-13 11:27:48.810439',33,'7.5',22),(38,80.00,1,'2022-04-13 11:27:48.838435',33,'7.5',23),(39,56.00,2,'2022-04-13 11:27:48.870435',33,'8.0',26),(40,77.00,4,'2022-04-13 11:27:48.897437',33,'7.5',27),(41,56.00,2,'2022-04-13 11:48:20.458091',34,'8.0',32),(42,25.00,2,'2022-04-13 11:48:20.486800',34,'8.0',33);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker`
--

LOCK TABLES `tb_sneaker` WRITE;
/*!40000 ALTER TABLE `tb_sneaker` DISABLE KEYS */;
INSERT INTO `tb_sneaker` VALUES (1,'Air Force 1 \'07 LX','<p>This premium Nike Air Force 1 &rsquo;07 LX &ldquo;Athletic Club&rdquo; nods to classic Varsity jackets with a nubuck leather construction and bold embroidered heel branding in contrasting red.</p>\r\n\r\n<p>- Nike Air Force 1 &#39;07 LX PRO GREEN/WHITE-SAIL-GYM RED</p>\r\n\r\n<p>- Leather Upper</p>\r\n\r\n<p>- Nike Air Cushioning</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- Perforations On Toe</p>\r\n\r\n<p>- Padded Collar</p>',109.00,109.00,1,'2022-03-29 10:56:09.812061','2022-04-12 02:58:17.892797',1,5),(2,'Wmns Air Force 1 Shadow','<p>This women&rsquo;s Nike Air Force 1 Shadow offers 2 eyestays, 2 mudguards, 2 back tabs and 2 Swoosh designs and a Jordan-esque strap construction. Crafted with a series of materials, the bulky sneaker sports hits of mint and pink across the upper.</p>\r\n\r\n<p>- Nike Wmns Air Force 1 Shadow WHITE/ATMOSPHERE-MINT FOAM-FOO</p>\r\n\r\n<p>- Mix of leather and synthetic materials on the upper</p>\r\n\r\n<p>- Layered &amp; double fabrics</p>\r\n\r\n<p>- Slightly exaggerated Foam midsole</p>\r\n\r\n<p>- Rubber outsole</p>',109.00,109.00,1,'2022-03-29 10:58:55.659284','2022-04-12 01:38:50.670714',1,1),(3,'Air Max BW','<p>The Nike Air Max BW with its rubberized Swoosh and layered perforated detailing makes a return. The Tinker Hatfield design is dressed in White and Red, with mesh and synthetic leather on the upper and Air cushioning in the midsole for a signature Big Window finish.</p>\r\n\r\n<p>- Nike Air Max BW WHITE/SPORT RED-BLACK</p>\r\n\r\n<p>- Mesh and synthetic leather upper</p>\r\n\r\n<p>- Rubberized Swoosh</p>\r\n\r\n<p>- Perforations on heel</p>\r\n\r\n<p>- Air cushioning</p>\r\n\r\n<p>- Foam midsole</p>\r\n\r\n<p>- Rubber outsole</p>',129.00,129.00,1,'2022-03-29 11:01:08.481641','2022-04-12 01:38:42.358058',1,3),(4,'Air Tuned Max','<p>Just like the original design, the Nike Air Tuned Max brings you cutting-edge innovation and fine-tuned comfort. Born from Nike&#39;s clandestine and bygone Alpha Project, the sleek, track-inspired design nods to the fast-paced division that brought you the Presto and so much more. Iridescent finishes and full-length, visible Air cushioning underfoot make a seismic statement.</p>\r\n\r\n<p>- Nike Air Tuned Max</p>\r\n\r\n<p>- Iridescent Synthetic Upper</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- TPU Fingers on The Sides</p>\r\n\r\n<p>- Foam Insole</p>\r\n\r\n<p>- Rubber Outsole</p>',155.00,109.00,1,'2022-03-29 11:03:05.454914','2022-04-12 01:38:57.069715',1,1),(5,'Air Huarache LE','<p>Built to fit your foot and designed for comfort, the Nike Air Huarache LE brings back a street-level favorite. Crisp leather on the upper mix with super-breathable, perfectly shined neoprene-like fabric for easy styling. The iconic heel clip and stripped away branding keep the early &#39;90s look you love.</p>\r\n\r\n<p>- Nike Air Huarache LE Praline/Umber-Vine-Black</p>\r\n\r\n<p>- Leather Upper</p>\r\n\r\n<p>- Rubber sole</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- Variable width lacing</p>\r\n\r\n<p>- Huarache emblem on tongue</p>',115.00,81.00,1,'2022-03-29 11:04:03.813957','2022-04-12 01:39:00.420933',1,1),(6,'Free Run 2','<p>Nike bring us the Free Run 2, this one&#39;s got running roots. Easygoing and flexible, it uses deep grooves in the sole for a &ldquo;barefoot-like&rdquo; feel. Plush details around the collar and soft foam underfoot deliver comfort you have to try.</p>\r\n\r\n<p>- Nike Free Run 2</p>\r\n\r\n<p>- Synthetic Leather &amp; Mesh Upper</p>\r\n\r\n<p>- Foam Midsole</p>\r\n\r\n<p>- Waffle Sole</p>',99.00,77.00,1,'2022-03-29 11:05:03.536900','2022-04-12 01:39:03.120510',1,1),(7,'SB Heritage Vulc','<p>Built from suede and canvas, the Nike SB Heritage Vulc pays homage to classic skate shoes. The modern design combines foam cushioning and flexible rubber for performance you can count on. Suede and canvas add classic style and durable performance. Exposed foam on the tongue creates a vintage skate vibe.</p>\r\n\r\n<p>- Nike SB Hertitage Vulc</p>\r\n\r\n<p>- Suede &amp; Canvas Upper</p>\r\n\r\n<p>- Rubber Outsole</p>\r\n\r\n<p>- Foam Midsole</p>',65.00,46.00,1,'2022-03-29 11:06:04.767281','2022-04-13 11:16:21.078300',1,32),(8,'Zoom Freak 3','<p>Giannis Antetokounmpo&rsquo;s third signature shoe, the Nike Zoom Freak 3 has been made with energy-returning cushioning and multidirectional traction. The lightweight basketball Nike sneaker features a lightweight, molded midsole, 2 Zoom Air, and a molded hook-and-loop strap made from flexible TPU to help reduce internal foot movement.</p>\r\n\r\n<p>- Nike Zoom Freak 3</p>\r\n\r\n<p>- Synthetic upper</p>\r\n\r\n<p>- TPU overlays</p>\r\n\r\n<p>- Tongue pull tab</p>\r\n\r\n<p>- Reverse Swoosh design</p>\r\n\r\n<p>- Reinforced toe</p>\r\n\r\n<p>- Zoom Air cushioning</p>\r\n\r\n<p>- Computer-generated rubber outsole</p>',112.00,90.00,1,'2022-03-29 11:06:56.708763','2022-04-12 01:39:05.621217',1,1),(9,'Y-3 Qisan Cozy','<p>adidas and Y3 introduce the Qisan. The slip-on sneaker has a premium constructing with neoprene and leather featuring cross-food three-striped branding and luxe suede lining.</p>\r\n\r\n<p>- adidas Y-3 Qisan Cozy BLACK/ COREWHITE/ CHALKPEAR</p>\r\n\r\n<p>- Slip-on construction</p>\r\n\r\n<p>- Neoprene upper with leather and rubber detailing</p>\r\n\r\n<p>- Suede lining</p>\r\n\r\n<p>- Lightstrike cushioning</p>\r\n\r\n<p>- Rubber outsole</p>',329.00,329.00,1,'2022-03-29 11:11:58.261380','2022-04-12 03:13:05.402928',2,2),(10,'Y-3 Runner 4D Halo','<p>adidas and Y3 introduce the Runner 4D Halo. The ultra-functional sneaker features high-tech craftsmanship with see-through mesh construction, exposed tooling, and the unique 4D midsole.</p>\r\n\r\n<p>- adidas Y-3 Runner 4D Halo BLACK/ COREWHITE/ RED</p>\r\n\r\n<p>- Mesh upper</p>\r\n\r\n<p>- adidas Primeknit mesh collar and lining</p>\r\n\r\n<p>- adidas 4D midsole</p>\r\n\r\n<p>- Continental&trade; Rubber outsole</p>',349.00,349.00,1,'2022-03-29 11:12:50.389078','2022-04-12 03:13:06.393465',2,4),(11,'Supernova Cushion 7','<p>The adidas Supernova Cushion 7 updates a retro archival classic with modern features. The triple black thee stripes silhouette features a breathable mesh upper with EVA cushioning for a comfortable fit. Originally from the 2000s and with the revival of lightweight running sneakers, this adidas Supernova Cushion 7 adds recycled materials to its construction for a sustainable touch.</p>\r\n\r\n<p>- adidas Supernova Cushion 7 Core Black/Core Black/Carbon</p>\r\n\r\n<p>- Mesh upper</p>\r\n\r\n<p>- EVA midsole</p>\r\n\r\n<p>- adiPrene cushioning</p>\r\n\r\n<p>- Rubber outsole</p>',99.00,99.00,1,'2022-03-29 11:13:44.184567','2022-04-12 01:39:10.421736',2,1),(12,'Scuba Phormar x Craig Green','<p>Imagination merges with function in Craig Green&#39;s latest collection with adidas. Introducing a new breed of adventure sneaker, these Scuba Phormar Shoes have an amphibious-looking silhouette inspired by scuba diving booties. Tension cords and a textured rubber outsole give them a delicate yet utilitarian look.</p>\r\n\r\n<p>- adidas Scuba Phormar x Craig Green Wild Pine</p>\r\n\r\n<p>- Nylon Upper</p>\r\n\r\n<p>- Lace Closure</p>\r\n\r\n<p>- Tension Cords</p>\r\n\r\n<p>- Rubber Outsole</p>\r\n\r\n<p>- Stretchy Neoprene Lining</p>',219.00,176.00,1,'2022-03-29 11:14:40.084661','2022-04-12 01:39:14.439437',2,1),(13,'Ultraboost 1.0 DNA','<p>The 3-Stripes continue with the return of the &ldquo;1.0&rdquo; the adidas UltraBoost, and this time they dress the supreme running shoe in white with blue hints. A match made in performance heaven, built with a Primeknit upper and a BOOST midsole that as per usual provides the most responsive walking experience on the planet.</p>\r\n\r\n<p>- adidas Ultraboost 1.0 DNA</p>\r\n\r\n<p>- adidas Primeknit upper</p>\r\n\r\n<p>- Boost&trade; cushioning technology</p>\r\n\r\n<p>- Rubber outsole</p>',159.00,112.00,1,'2022-03-29 11:15:43.291898','2022-04-12 01:39:16.535376',2,1),(14,'Dame 7 Extply','<p>The adidas Dame 7 pays homage to the great &quot;Shaq Diesel&quot; and the iconic Reebok Shaqnosis. The black and white upper mimics the legendary silhouette from the mid 90&#39;s and features an ultralight Lightstrike midsole. This collaboration with Reebok features both Dame&#39;s and Shaq&#39;s logo and aims to highlight their accomplished careers on and off the court.</p>\r\n\r\n<p>- adidas Dame 7 Extply</p>\r\n\r\n<p>- Lace closure</p>\r\n\r\n<p>- Knit upper with synthetic support overlays</p>\r\n\r\n<p>- Cushioned feel</p>\r\n\r\n<p>- Textile lining</p>\r\n\r\n<p>- Lightstrike cushioning</p>\r\n\r\n<p>- Rubber outsole</p>',89.00,72.00,1,'2022-03-29 11:16:41.248764','2022-04-12 01:39:19.246561',2,1),(15,'Zx 8000','<p>The classic&nbsp;adias&nbsp;ZX 8000&nbsp;are here.&nbsp;They build on one of the most iconic colorways of the model&#39;s history, but with a twist, of course. The signature Torsion bar is still there, and the iconic heel TPU counter too. They wouldn&#39;t be part of the ZX thousand series without them.</p>\r\n\r\n<p>- adidas ZX 8000&nbsp;</p>\r\n\r\n<p>-&nbsp;Lace closure</p>\r\n\r\n<p>- Leather upper</p>\r\n\r\n<p>- Boost midsole</p>\r\n\r\n<p>- Rubber outsole</p>',89.00,54.00,1,'2022-03-29 11:17:29.946313','2022-04-12 01:38:35.279441',2,11),(16,'Victory G','<p>The next best thing to finding a deadstock box at the thrift store. These&nbsp;Reebok Victory G&nbsp;shoes do not sacrifice a single thing. Pay homage to the original with authentic design elements pulled right from the archives. Like that heel cradle in thick suede. Or the die-cut midsole. Throwback for the win.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Reebok&nbsp;Victory G</p>\r\n\r\n<p>- Heavyweight nylon upper</p>\r\n\r\n<p>- Three-layer gusseted upper</p>\r\n\r\n<p>- Lace closure</p>\r\n\r\n<p>- GORE-TEX waterproof technology sewn into lining</p>\r\n\r\n<p>- Rubber outsole</p>',109.00,77.00,1,'2022-04-13 10:11:33.124744','2022-04-13 11:16:32.714704',3,3),(17,'Workout Plus','<p>The&nbsp;Reebok&nbsp;Workout Plus, an updated version of the &acute;80s Reebok Workout is a classic &acute;90s sneaker. With this Workout Plus, Reebok brings back the vintage silhouette with its sleek design. This low-cut model comes with a soft full grain leather upper with&nbsp;Reebok branding for your everyday style. The EVA midsole with a rubber outsole keeps the silhouette sleek and subtle, perfect as an everyday sneaker.&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&nbsp;</span></span></p>\r\n\r\n<p>- Reebok Workout Plus&nbsp;</p>\r\n\r\n<p>- Leather upper</p>\r\n\r\n<p>- EVA midsole</p>\r\n\r\n<p>- Gum rubber outsole</p>',85.00,51.00,1,'2022-04-13 10:16:56.966461','2022-04-13 10:17:17.849542',3,0),(18,'Pump Omni Zone II x JUUN.J','<p>Based out of Seoul, Juun.J is a designer who deconstructs traditional concepts in fashion. For this collaboration with&nbsp;Reebok, he explores the space between exaggerated &#39;90s sport silhouettes and aggressive minimalism. These men&#39;s shoes retrace the pattern of the original&nbsp;Pump Omni Zone II&nbsp;from &#39;91, bringing them into the realm of high fashion with the use of luxe leather.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;Pump Omni Zone II x JUUN.J Black</p>\r\n\r\n<p>- Leather Upper</p>\r\n\r\n<p>-&nbsp;Hexalite hexagonal cushioning</p>\r\n\r\n<p>-&nbsp;EVA midsole and rubber outsole</p>\r\n\r\n<p>-&nbsp;The Pump customisable fit</p>',219.00,154.00,1,'2022-04-13 10:18:58.444603','2022-04-13 10:18:58.444603',3,0),(19,'Kamikaze II Low','<p>The Miami-ready low-top&nbsp;Reebok&nbsp;Kamikaze II is the legit throwback-styled sneaker that many were looking for when it comes to classic&nbsp;Reebok&nbsp;basketball shoes. The heritage sneaker sports a leather and suede upper with an EVA midsole for soft cushioning.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Reebok Kamikaze II Low</p>\r\n\r\n<p>- Leather and suede upper</p>\r\n\r\n<p>- EVA midsole for lightweight cushion</p>\r\n\r\n<p>- Rubber outsole provides durability</p>\r\n\r\n<p>- Hexalite technology uses air cushioning to soften impacts</p>',85.00,60.00,1,'2022-04-13 10:20:45.511573','2022-04-13 11:16:27.997070',3,10),(20,'Club C 1985 TV','<p>The&nbsp;Reebok Club C&nbsp;has been a legend for over 35 years, given many opportunities, this next one sees a summery update with mesh elements and textile accents. While keeping it classic with its original look, the soft-leather-boasting&nbsp;Reebok&nbsp;Club C 1985 TV brings retro tennis vibes for off-the-court activities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Reebok Club C 1985 TV ftwr white/ftwr white/pure grey 4</p>\r\n\r\n<p>- Leather and textile mesh upper</p>\r\n\r\n<p>- Textile lining</p>\r\n\r\n<p>- Full rubber cupsole</p>\r\n\r\n<p>- Rubber outsole</p>',75.00,45.00,1,'2022-04-13 10:26:24.909275','2022-04-13 10:26:38.365837',3,1),(21,'Aztec II','<p>This&nbsp;Reebok&nbsp;Aztec II comes straight from the&nbsp;Reebok&nbsp;archives with a vintage-inspired look. The pre-washed suede and nylon upper are accompanied by an EVA midsole and retro gum rubber outsole for an old-school feel.</p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&nbsp;</span></span></p>\r\n\r\n<p>- Reebok Aztec II&nbsp;</p>\r\n\r\n<p>- Suede upper with nylon underlay</p>\r\n\r\n<p>- Dual EVA midsole</p>\r\n\r\n<p>- Embossed lightweight lining</p>\r\n\r\n<p>- Rubber outsole</p>',75.00,53.00,1,'2022-04-13 10:28:50.547374','2022-04-13 10:28:50.547374',3,0),(22,'Mirage Mox Vision','<p>Puma&nbsp;introduces the updated Mirage Mox Vision, which takes inspiration from the &lsquo;70s running shoe and contemporary electronic music. Equipped with textural contrasts, pops of color, and futuristic elements, the&nbsp;low-top Puma sneaker&nbsp;comes with premium materials for a sophisticated look.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Puma Mirage Mox Vision</p>\r\n\r\n<p>- Mesh upper with suede and leather overlays</p>\r\n\r\n<p>- Lace closure for secure fit</p>\r\n\r\n<p>- Terry interior lining</p>\r\n\r\n<p>- Synthetic leather PUMA Formstrip at sides</p>\r\n\r\n<p>- TPU pieces at midsole and heel</p>\r\n\r\n<p>- PUMA Wordmark</p>\r\n\r\n<p>- EVA midsole</p>\r\n\r\n<p>- Rubber outsole</p>',109.00,25.00,1,'2022-04-13 10:32:42.305583','2022-04-13 11:25:45.703395',4,2),(23,'Slipstream Lo x Butter Goods','<p>Puma&nbsp;collaborate with Australian brand Butter Goods to bring us the Slipstream Lo.&nbsp;The vintage Slipstream Lo is an OG basketball model with a premium leather fabrication, an OG colour palette and metallic detailing giving it a skateboarding spin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Puma&nbsp;Slipstream Lo x Butter Goods</p>\r\n\r\n<p>- Leather upper with perforation details on the vamp and quarter</p>\r\n\r\n<p>- Suede detail on the vamp</p>\r\n\r\n<p>- Lace closure</p>\r\n\r\n<p>- PUMA Formstrip with nylon piping at lateral side</p>\r\n\r\n<p>- Label with &quot;Butter&quot; branding and PUMA Cat Logo at tongue</p>\r\n\r\n<p>- Metallic gold &quot;Butter&quot; logo at lateral heel</p>',99.00,80.00,1,'2022-04-13 10:34:13.053313','2022-04-13 11:25:50.411405',4,1),(24,'Suede VTG','<p>You might have seen the Puma Suede a bunch of times, but did it get as close as possible to the original version like this Puma Suede VTG? Introduced in 1968, this rendition comes with a lower panel, like the OG silhouette back in the days. Equipped with a black upper and white overlays, the Puma Suede is finished off by metallic gold branding.&nbsp;</p>\r\n\r\n<p>- Puma Suede VTG Bombay Brown</p>\r\n\r\n<p>- Premium suede upper</p>\r\n\r\n<p>- Leather lining</p>\r\n\r\n<p>- Rubber outsole&nbsp;</p>',79.00,64.00,1,'2022-04-13 10:36:37.401161','2022-04-13 10:36:37.401161',4,0),(25,'Basket Vintage Cream x Butter Goods','<p>Puma&nbsp;and Australian brand Butter Goods bring us a new collection featuring a tee, track pant &amp; hoodie and a Basket VTG. The Basket&nbsp;includes the classic touches from Puma including the suede upper and&nbsp;brandinng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Puma Basket Cream&nbsp;x Butter Goods</p>\r\n\r\n<p>- Premium suede upper</p>\r\n\r\n<p>- Leather lining</p>\r\n\r\n<p>- Rubber outsole&nbsp;</p>',109.00,55.00,1,'2022-04-13 10:38:01.686307','2022-04-13 10:40:11.221654',4,1),(26,'Army Trainer OG','<p>Originally designed for the German Armed Forces when they undertook indoor training in the 1970s, these&nbsp;Puma Army Trainer OG&nbsp;include a luxurious leather body and rubber sole structure for superior traction. It&#39;s agile for indoor exercise yet attractive enough for everyday use, vintage and versatile, with an urban edge and sleek silhouette, you&#39;ll make military style look modern.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Puma Army Trainer OG Black</p>\r\n\r\n<p>- Premium leather upper with suede overlays</p>\r\n\r\n<p>- Rubber mid and outsole</p>\r\n\r\n<p>- Synthetic tongue with debossed edge and stitching detail</p>\r\n\r\n<p>- PUMA Archive No.1 Label at tongue</p>\r\n\r\n<p>- Gold foil printed PUMA No.2 Logo at quarter</p>\r\n\r\n<p>- PUMA Formstrip at lateral sides</p>\r\n\r\n<p>- PUMA Cat Logo at heel</p>',79.00,56.00,1,'2022-04-13 10:39:55.739495','2022-04-13 11:25:53.792615',4,1),(27,'Gel-Lyte III OG','<p>The&nbsp;ASICS&nbsp;GEL-LYTE&trade; III OG trainer creates the cushioning you need to keep your mind and body engaged. Designed by Shigeyuki Mitsui in 1990, the GEL-LYTE&trade; III silhouette retains its iconic split-tongue formation. It was a feature that initially debuted on the GEL-LD RACER&trade; shoe. Meanwhile, key components, like its signature GEL&trade; technology unit in the midsole, provide everyday comfort.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- ASICS&nbsp;Gel-Lyte III OG&nbsp;</p>\r\n\r\n<p>- Suede, Canvas &amp; Quilt Upper</p>\r\n\r\n<p>- Split Tongue Design</p>\r\n\r\n<p>-&nbsp;GEL&trade; technology&nbsp;</p>',109.00,77.00,1,'2022-04-13 10:43:12.287135','2022-04-13 11:26:01.278833',5,1),(28,'Gel-Kayano 14 x Angelo Baque','<p>The late 2000s aesthetic of the ASICS SportStyle GEL-KAYANO&reg; 14 sneaker explores the concept of &quot;Retro Futurism&quot; and its duality between archived fashion silhouettes and Japanese workwear. This version became the first iteration in the sneaker&#39;s lineage to be designed by someone other than Toshikazu Kayano. Crafted with a leather upper, the sneaker comes with GEL&reg; technology cushioning and a TRUSSTIC&trade; support unit for a soft experience.&nbsp;</p>\r\n\r\n<p>&nbsp;<br />\r\n- ASICS SportStyle Gel-Kayano 14&nbsp;</p>\r\n\r\n<p>- Leather upper</p>\r\n\r\n<p>- GEL cushioning</p>\r\n\r\n<p>- TRUSSTIC&trade; support</p>\r\n\r\n<p>- Rubber outsole</p>',145.00,102.00,1,'2022-04-13 10:44:59.396825','2022-04-13 11:26:08.041612',5,1),(29,'Novablast 2 SPS','<p>The&nbsp;ASICS&nbsp;NOVABLAST&trade; 2 has been reworked with modern street style aesthetics. It&#39;s designed to keep your step soft and your mind ready for the next move. This lightweight design also includes FF BLAST&trade; cushioning. It&#39;s been re-tuned with lifestyle functionality and comfort. Formed with a no-sew upper, this shoe also features a redesigned heel that offers a more accommodating fit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- ASICS&nbsp;Novablast 2 SPS Thunder Blue/Pearl Pink</p>\r\n\r\n<p>- Jacquard mesh upper</p>\r\n\r\n<p>- FLYTEFOAM BLAST&trade; technology</p>\r\n\r\n<p>- Forefoot Twist GEL&trade; technology</p>\r\n\r\n<p>- Rearfoot GEL&trade; technology</p>\r\n\r\n<p>- ORTHOLITE&trade; insole</p>\r\n\r\n<p>- AHARPLUS&trade; Rubber outsole</p>',119.00,96.00,1,'2022-04-13 10:47:06.853424','2022-04-13 11:11:25.631782',5,1),(30,'Gel-Lyte III OG x SVD','<p>SVD and Japanese sportswear brand&nbsp;ASICS SportStyle&nbsp;team up for the first time to give the Gel-Lyte III OG a matte-colored update. Inspired by the natural elements of planet Earth, the retro running sneaker features eco-friendly material like organic cotton textile on the upper, eco-leather on the ASICS Tiger Stripe logo and heel, plus recycled foam in the split tongue as well as recycled plastic bottle insoles and jute fiber laces.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- ASICS SportStyle Gel-Lyte III OG x SVD</p>\r\n\r\n<p>- Leather and textile upper</p>\r\n\r\n<p>- Fabric lining</p>\r\n\r\n<p>- Split tongue</p>\r\n\r\n<p>- Padded ankle</p>\r\n\r\n<p>- Rubber sole</p>',155.00,93.00,1,'2022-04-13 10:54:04.358529','2022-04-13 10:54:04.358529',5,0),(31,'Gel-Quantum 360 6','<p>The&nbsp;ASICS GEL-QUANTUM 360&trade; 6&nbsp;trainer is made to keep your mind and body in motion. Evolving the meaning of continuous cushioning, this shoe unites performance elements with modern, street-style details. Its utility-inspired design features a no-sew construction, a durable upper and technical nuances that are functional for everyday excursions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- ASICS&nbsp;Gel-Quantum 360 6&nbsp;</p>\r\n\r\n<p>- Durable mesh&nbsp;</p>\r\n\r\n<p>- GEL&trade; technology&nbsp;</p>\r\n\r\n<p>- TRUSSTIC SYSTEM&trade;&nbsp;</p>',139.00,112.00,1,'2022-04-13 10:58:20.948421','2022-04-13 11:26:12.715333',5,1),(32,'MS237','<p>Taking cues from heritage designs, these&nbsp;New balance&nbsp;MS237&nbsp;blend a retro look with modern styling for a versatile and stylish silhouette that keeps your streetwear looking sharp. The suede and mesh upper with lace-up construction provides a secure, comfortable all-day fit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- New Balance MS237</p>\r\n\r\n<p>- Suede, Mesh &amp; Nylon Upper</p>\r\n\r\n<p>- Rubber Outsole</p>\r\n\r\n<p>- Adjustable Lace Closure</p>\r\n\r\n<p>- Exposed Foam Tongue</p>\r\n\r\n<p>-&nbsp;Asymmetric Rubber Tip Wrap</p>',79.00,56.00,1,'2022-04-13 11:02:15.269479','2022-04-13 11:48:03.571846',6,5),(33,'574','<p>A shoe made for a walk in the park and off-duty calls. The New Balance 574 brings back the iconic silhouette in a grey colorway. &nbsp;The model, which was inspired by the New Balance silhouettes 1300 JP and 1400 JP, comes in a grey colorway featuring soft suede and mesh with a contrasting metallic big &ldquo;N&rdquo; branding.</p>\r\n\r\n<p>&nbsp;<br />\r\n- New Balance 574</p>\r\n\r\n<p>- Suede &amp; mesh upper</p>\r\n\r\n<p>- ENCAP &amp; EVA midsole</p>\r\n\r\n<p>- Rubber outsole</p>',69.00,25.00,1,'2022-04-13 11:03:46.980757','2022-04-13 11:48:08.367678',6,1),(34,'1500','<p>The&nbsp;New Balance 1500&nbsp;is back in a new &quot;Slate Blue&quot; colourway. This&nbsp;classic&nbsp;silouhette comes with&nbsp;nubuck uppers, hints of mesh and durable rubber outsoles, finished off with premium pigskin suede leather and performance running mesh.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- New Balance&nbsp;1500bsg</p>\r\n\r\n<p>- Suede and Mesh Uppers</p>\r\n\r\n<p>- Encap Sole Unit</p>\r\n\r\n<p>- Rubber Outsole</p>\r\n\r\n<p>- Embroidered Tongue Detail</p>\r\n\r\n<p>- Made in England</p>',159.00,128.00,1,'2022-04-13 11:05:00.819722','2022-04-13 11:05:00.819722',6,0),(35,'574 x Tokyo Design Studios','<p>New Balance and its in-house design thinktank Tokyo Design Studio take on the classic 574 with a unique ripple Vibram&#39;s sole. Flipping the midsole and outsole for a new look, the upper with its mesh and suede construction stays pretty original with just a few edits to match the rugged charm of the sole.&nbsp;</p>\r\n\r\n<p>&nbsp;<br />\r\n- New Balance MS574 x Tokyo Design Studio Navy</p>\r\n\r\n<p>- Mesh and suede upper</p>\r\n\r\n<p>- Foam midsole</p>\r\n\r\n<p>- Rubber outsole</p>',135.00,95.00,1,'2022-04-13 11:06:16.947874','2022-04-13 11:26:23.344888',6,1),(36,'991','<p>First released in 2001, the&nbsp;New Balance&nbsp;991 is a modern-day updated version of the classic 990. Made in England, the low-top running shoe is a subtle blue original color, featuring mesh and premium pigskin suede overlays. The metallic silver &ldquo;N&rdquo; logo adds&nbsp;classic New Balance&nbsp;feel to it, atop of an ABZORB Midsole.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- New Balance M991 &#39;Metallic Sport&#39;</p>\r\n\r\n<p>- Made in England</p>\r\n\r\n<p>- Mesh and pigskin suede upper</p>\r\n\r\n<p>- ABZORB foam midsole</p>\r\n\r\n<p>- Rubber outsole</p>',180.00,126.00,1,'2022-04-13 11:07:28.317997','2022-04-13 11:10:23.303832',6,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker_brand`
--

LOCK TABLES `tb_sneaker_brand` WRITE;
/*!40000 ALTER TABLE `tb_sneaker_brand` DISABLE KEYS */;
INSERT INTO `tb_sneaker_brand` VALUES (1,'Nike','brand/images/Nike.png','2022-03-29 10:49:21.405500','<p>What started out as Blue Ribbon Sports is now one of the biggest brands in the world, Nike.</p>\r\n\r\n<p>Their Nike Sportswear line takes all the heritage from Oregon, and moves it off the court, focusing on high quality products and materials that have a fashion and streetwear approach, where iconic models are turned into fashion stables like the Air Force 1, Air Max 1, Air Max 90, Cortez or new silhouettes and hybrids like the Nike VaporMax and Vapor Street Flyknit.</p>','2022-04-12 07:08:42.471218'),(2,'Adidas','brand/images/Adidas.png','2022-03-29 11:09:36.761754','<p>On August 18, 1949, Adi Dassler at the age of 49, registered the &ldquo;Adi Dassler adidas Sportschuhfabrik&rdquo; and set to work with 47 employees in the small town of Herzogenaurach in the south of Germany.</p>\r\n\r\n<p>With the 1954 World Cup and Germany winning it, with adidas boots on their feet, the shoe brand with the three stripes became one of the biggest sportswear names in the industry.</p>\r\n\r\n<p>Over the next 60 years adidas maintained the status, raising to become a multi-sport specialist, from technological revolutions like the Micropacer to today&rsquo;s Boost&trade; technology, football and skateboarding to yoga, adidas merges arts and sports with ease.</p>','2022-04-12 07:02:45.377847'),(3,'Reebok','brand/images/Reebok.png','2022-04-13 10:06:18.590254','<p>Founded in Bolton, England by Joseph William Foster and named after himself, &lsquo;J.W Foster&rsquo; started to make running shoes in 1895. He was one of the first shoe manufacturers that put spikes on running shoes and after his sons became involved with the company, they changed the name to &lsquo;J.W. Foster and Sons&rsquo;.</p>\r\n\r\n<p>Many years later, in 1958, two of his grandsons started a company called Reebok, named after the African gazelle with the same name.</p>','2022-04-13 10:06:18.590254'),(4,'PUMA','brand/images/PUMA.png','2022-04-13 10:31:19.176177','<p>Rudolf &quot;Rudi&quot; Dassler aka the other brother of the two world-famous Dassler brothers and quality shoemaker since 1924. After Rudi and his younger brother Adolf &quot;Adi&quot; Dassler got on the wrong foot and went separate ways, Rudi started Ruda that later became PUMA in 1948.</p>\r\n\r\n<p>With a focus on football boots in the &acute;50s like the &ldquo;SUPER ATOM&rdquo; Puma began to make a name for themselves. In 1967 PUMA found its matching logo, created by Lutz Backes, a cartoonist from Nuremberg. With spiked shoes, like football cleats and track &amp; field runners in their pockets, PUMA looked right and left for new inspiration and expansion-ideas and they found it in the name of Walt &ldquo;Clyde&rdquo; Frazier, a basketball star, in-need of a special shoe he could use on court. The Puma Clyde was born.</p>','2022-04-13 10:31:19.176177'),(5,'ASICS','brand/images/ASICS.png','2022-04-13 10:41:38.960650','<p>ASICS SportStyle has its roots reaching all the way back to the 1940s. Now, the brand is creating &ldquo;Quality Lifestyles through Intelligent Sports Technology&rdquo; with a mix of futuristic silhouettes and iconic retro sneakers such as&nbsp;Gel-1130,&nbsp;Gel-Kayano,&nbsp;Gel-Quantum, or&nbsp;GEL-Lyte III. &nbsp;</p>\r\n\r\n<p>The founding philosophy &ldquo;Sound Mind, Sound Body&rdquo; is still at the core of the brand, and ASICS SportStyle has continued to provide environmentally friendly and sustainable goods for a wide selection of sports lovers and casual sneaker fans.</p>','2022-04-13 10:41:38.960650'),(6,'New Balance','brand/images/New_Balance.png','2022-04-13 11:00:20.554506','<p>New Balance was established in 1906 and some of their most iconic trainers from the late 80&#39;s and early 90&#39;s are handmade in Flimby, UK. SNS works very close with New Balance and their factory in Flimby England. Over the years we&#39;ve been fortunate to design several limited-edition sneakers, some exclusive to us and sometimes also available at a few selected stores around the globe. Amongst many others we stock classic models such as the&nbsp;1500,&nbsp;990,&nbsp;991, 994 and the new&nbsp;247.</p>','2022-04-13 11:08:00.525848');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker_image`
--

LOCK TABLES `tb_sneaker_image` WRITE;
/*!40000 ALTER TABLE `tb_sneaker_image` DISABLE KEYS */;
INSERT INTO `tb_sneaker_image` VALUES (1,'sneaker/images/None.png',0,'2022-03-29 10:56:09.841122','2022-03-29 10:56:09.841122',1),(2,'sneaker/images/None_b2bOv2R.png',0,'2022-03-29 10:58:55.666286','2022-03-29 10:58:55.666286',2),(3,'sneaker/images/None_IRLQIoZ.png',1,'2022-03-29 11:01:08.484639','2022-03-29 11:01:08.484639',3),(4,'sneaker/images/None_fj0woX3.png',1,'2022-03-29 11:03:05.753841','2022-03-29 11:03:05.753841',4),(5,'sneaker/images/None_LoWri8Z.png',0,'2022-03-29 11:04:03.818931','2022-03-29 11:04:03.818931',5),(6,'sneaker/images/None_ZROSfsz.png',1,'2022-03-29 11:05:03.542900','2022-03-29 11:05:03.542900',6),(7,'sneaker/images/None_8GPS0dN.png',0,'2022-03-29 11:06:04.771250','2022-03-29 11:06:04.771250',7),(8,'sneaker/images/None_hCC9d9n.png',0,'2022-03-29 11:06:56.713760','2022-03-29 11:06:56.713760',8),(9,'sneaker/images/None_sEBn9j1.png',0,'2022-03-29 11:11:58.265378','2022-03-29 11:11:58.265378',9),(10,'sneaker/images/None_qHQu6Nb.png',0,'2022-03-29 11:12:50.393046','2022-03-29 11:12:50.393046',10),(11,'sneaker/images/None_9eGnPtT.png',0,'2022-03-29 11:13:44.187536','2022-03-29 11:13:44.187536',11),(12,'sneaker/images/None_02lvBiy.png',0,'2022-03-29 11:14:40.087629','2022-03-29 11:14:40.087629',12),(13,'sneaker/images/None_cqPW8ow.png',0,'2022-03-29 11:15:43.294865','2022-03-29 11:15:43.294865',13),(14,'sneaker/images/None_V4i629t.png',0,'2022-03-29 11:16:41.252764','2022-03-29 11:16:41.252764',14),(15,'sneaker/images/None_appnMNA.png',0,'2022-03-29 11:17:29.950316','2022-03-29 11:17:29.950316',15),(16,'sneaker/images/None_RSh0leu.png',0,'2022-04-13 10:11:33.127743','2022-04-13 10:11:33.127743',16),(17,'sneaker/images/None_6e3UK3M.png',0,'2022-04-13 10:11:33.131745','2022-04-13 10:11:33.131745',16),(18,'sneaker/images/None_6gTYqUM.png',0,'2022-04-13 10:11:33.134744','2022-04-13 10:11:33.134744',16),(19,'sneaker/images/None_ROAF3Of.png',0,'2022-04-13 10:16:56.969410','2022-04-13 10:16:56.969410',17),(20,'sneaker/images/None_ZcJgcCB.png',0,'2022-04-13 10:16:57.254728','2022-04-13 10:16:57.255726',17),(21,'sneaker/images/None_nzSENty.png',0,'2022-04-13 10:16:57.261722','2022-04-13 10:16:57.261722',17),(22,'sneaker/images/None_FQvmTkg.png',0,'2022-04-13 10:18:58.447603','2022-04-13 10:18:58.447603',18),(23,'sneaker/images/None_7haXx2P.png',0,'2022-04-13 10:18:58.805192','2022-04-13 10:18:58.805192',18),(24,'sneaker/images/None_izt2SXp.png',0,'2022-04-13 10:18:58.945730','2022-04-13 10:18:58.945730',18),(25,'sneaker/images/None_sBe88qs.png',0,'2022-04-13 10:20:45.513575','2022-04-13 10:20:45.513575',19),(26,'sneaker/images/None_X3SvQPU.png',0,'2022-04-13 10:20:45.516576','2022-04-13 10:20:45.516576',19),(27,'sneaker/images/None_Cp3XB4C.png',0,'2022-04-13 10:20:45.519577','2022-04-13 10:20:45.519577',19),(28,'sneaker/images/None_SK1nMlI.png',0,'2022-04-13 10:26:24.912350','2022-04-13 10:26:24.912350',20),(29,'sneaker/images/None_DLDuMyI.png',0,'2022-04-13 10:26:24.925416','2022-04-13 10:26:24.925416',20),(30,'sneaker/images/None_b0K38sZ.png',0,'2022-04-13 10:26:24.928587','2022-04-13 10:26:24.928587',20),(31,'sneaker/images/None_lDHOWcS.png',0,'2022-04-13 10:28:50.550376','2022-04-13 10:28:50.550376',21),(32,'sneaker/images/None_8YDY16C.png',0,'2022-04-13 10:28:50.841822','2022-04-13 10:28:50.841822',21),(33,'sneaker/images/None_YeTODsm.png',0,'2022-04-13 10:28:50.881823','2022-04-13 10:28:50.881823',21),(34,'sneaker/images/None_F6QZsM6.png',0,'2022-04-13 10:32:42.307584','2022-04-13 10:32:42.307584',22),(35,'sneaker/images/None_xw9buTq.png',0,'2022-04-13 10:32:42.659782','2022-04-13 10:32:42.659782',22),(36,'sneaker/images/None_fuNXbhg.png',0,'2022-04-13 10:32:42.662815','2022-04-13 10:32:42.662815',22),(37,'sneaker/images/None_RBuOxP4.png',0,'2022-04-13 10:34:13.056326','2022-04-13 10:34:13.056326',23),(38,'sneaker/images/None_p9wjRwX.png',0,'2022-04-13 10:34:13.060314','2022-04-13 10:34:13.060314',23),(39,'sneaker/images/None_CycHBhU.png',0,'2022-04-13 10:34:13.177773','2022-04-13 10:34:13.177773',23),(40,'sneaker/images/None_vMuS61v.png',0,'2022-04-13 10:36:37.404124','2022-04-13 10:36:37.404124',24),(41,'sneaker/images/None_1C0dnjV.png',0,'2022-04-13 10:36:37.408124','2022-04-13 10:36:37.408124',24),(42,'sneaker/images/None_FUiYpXk.png',0,'2022-04-13 10:36:37.411556','2022-04-13 10:36:37.411556',24),(43,'sneaker/images/None_9Ol8Adl.png',0,'2022-04-13 10:38:01.970589','2022-04-13 10:38:01.970589',25),(44,'sneaker/images/None_dMSWhOZ.png',0,'2022-04-13 10:38:01.975584','2022-04-13 10:38:01.975584',25),(45,'sneaker/images/None_ukk7tqZ.png',0,'2022-04-13 10:38:02.105131','2022-04-13 10:38:02.105131',25),(46,'sneaker/images/None_Jl1Xu3i.png',0,'2022-04-13 10:39:55.744461','2022-04-13 10:39:55.744461',26),(47,'sneaker/images/None_YaLUzNH.png',0,'2022-04-13 10:39:56.096231','2022-04-13 10:39:56.096231',26),(48,'sneaker/images/None_XvpPv6K.png',0,'2022-04-13 10:39:56.099232','2022-04-13 10:39:56.099232',26),(49,'sneaker/images/None_1HPQaMA.png',0,'2022-04-13 10:43:12.290138','2022-04-13 10:43:12.290138',27),(50,'sneaker/images/None_KRqn3xW.png',0,'2022-04-13 10:43:12.598229','2022-04-13 10:43:12.598229',27),(51,'sneaker/images/None_6pMm34F.png',0,'2022-04-13 10:43:12.638023','2022-04-13 10:43:12.638023',27),(52,'sneaker/images/None_pUiLnbF.png',0,'2022-04-13 10:44:59.399825','2022-04-13 10:44:59.399825',28),(53,'sneaker/images/None_mgXjV76.png',0,'2022-04-13 10:44:59.402853','2022-04-13 10:44:59.402853',28),(54,'sneaker/images/None_8wGaG7I.png',0,'2022-04-13 10:44:59.694837','2022-04-13 10:44:59.694837',28),(55,'sneaker/images/None_Da5cxCT.png',0,'2022-04-13 10:47:06.856425','2022-04-13 10:47:06.856425',29),(56,'sneaker/images/None_AqxuoEI.png',0,'2022-04-13 10:47:06.859426','2022-04-13 10:47:06.859426',29),(57,'sneaker/images/None_6B154HP.png',0,'2022-04-13 10:47:06.862426','2022-04-13 10:47:06.862426',29),(58,'sneaker/images/None_KVQ7U2L.png',0,'2022-04-13 10:54:04.656542','2022-04-13 10:54:04.656542',30),(59,'sneaker/images/None_MyZ40DI.png',0,'2022-04-13 10:54:04.659544','2022-04-13 10:54:04.659544',30),(60,'sneaker/images/None_FVk47nN.png',0,'2022-04-13 10:54:04.662548','2022-04-13 10:54:04.662548',30),(61,'sneaker/images/None_kabWEfK.png',0,'2022-04-13 10:58:21.242968','2022-04-13 10:58:21.242968',31),(62,'sneaker/images/None_uylJNkZ.png',0,'2022-04-13 10:58:21.294965','2022-04-13 10:58:21.294965',31),(63,'sneaker/images/None_Plqb0cS.png',0,'2022-04-13 10:58:21.297967','2022-04-13 10:58:21.297967',31),(64,'sneaker/images/None_Aa6hwnz.png',0,'2022-04-13 11:02:15.272477','2022-04-13 11:02:15.272477',32),(65,'sneaker/images/None_DAWMYJp.png',0,'2022-04-13 11:02:15.580395','2022-04-13 11:02:15.580395',32),(66,'sneaker/images/None_TzidJPz.png',0,'2022-04-13 11:02:15.652450','2022-04-13 11:02:15.652450',32),(67,'sneaker/images/None_HDpQKy8.png',0,'2022-04-13 11:03:46.984725','2022-04-13 11:03:46.984725',33),(68,'sneaker/images/None_iOOLQ36.png',0,'2022-04-13 11:03:46.987724','2022-04-13 11:03:46.987724',33),(69,'sneaker/images/None_YqQsC7O.png',0,'2022-04-13 11:03:47.273183','2022-04-13 11:03:47.273183',33),(70,'sneaker/images/None_YoKdwzg.png',0,'2022-04-13 11:05:01.085998','2022-04-13 11:05:01.085998',34),(71,'sneaker/images/None_puhOx6a.png',0,'2022-04-13 11:05:01.087996','2022-04-13 11:05:01.087996',34),(72,'sneaker/images/None_XU3pEKn.png',0,'2022-04-13 11:05:01.090995','2022-04-13 11:05:01.090995',34),(73,'sneaker/images/None_5b7hNhh.png',0,'2022-04-13 11:06:17.231491','2022-04-13 11:06:17.231491',35),(74,'sneaker/images/None_cjqnzQE.png',0,'2022-04-13 11:06:17.308269','2022-04-13 11:06:17.308269',35),(75,'sneaker/images/None_5kNk7xE.png',0,'2022-04-13 11:06:17.400137','2022-04-13 11:06:17.400137',35),(76,'sneaker/images/None_50K0q2O.png',0,'2022-04-13 11:07:28.656915','2022-04-13 11:07:28.656915',36),(77,'sneaker/images/None_10FlQRr.png',0,'2022-04-13 11:07:28.790914','2022-04-13 11:07:28.790914',36),(78,'sneaker/images/None_7X480bI.png',0,'2022-04-13 11:07:28.792914','2022-04-13 11:07:28.792914',36);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sneaker_size`
--

LOCK TABLES `tb_sneaker_size` WRITE;
/*!40000 ALTER TABLE `tb_sneaker_size` DISABLE KEYS */;
INSERT INTO `tb_sneaker_size` VALUES (1,7,10,1,'2022-03-29 10:56:09.847120','2022-03-29 10:56:09.847120'),(2,7.5,10,1,'2022-03-29 10:56:10.217290','2022-03-29 10:56:10.218289'),(3,8,10,1,'2022-03-29 10:56:10.218289','2022-03-29 10:56:10.218289'),(4,8.5,10,1,'2022-03-29 10:56:10.426031','2022-03-29 10:56:10.426031'),(5,7,10,2,'2022-03-29 10:58:55.989262','2022-03-29 10:58:55.989262'),(6,7.5,10,2,'2022-03-29 10:58:56.079898','2022-03-29 10:58:56.079898'),(7,8,10,2,'2022-03-29 10:58:56.080895','2022-03-29 10:58:56.080895'),(8,8.5,10,2,'2022-03-29 10:58:56.143895','2022-03-29 10:58:56.143895'),(9,7.5,10,3,'2022-03-29 11:01:08.487640','2022-03-29 11:01:08.487640'),(10,8,10,3,'2022-03-29 11:01:08.493642','2022-03-29 11:01:08.493642'),(11,8.5,10,3,'2022-03-29 11:01:08.494642','2022-03-29 11:01:08.494642'),(12,7,10,3,'2022-03-29 11:01:08.495641','2022-03-29 11:01:08.495641'),(13,7,19,4,'2022-03-29 11:03:05.827855','2022-03-29 11:03:05.827855'),(14,7.5,13,4,'2022-03-29 11:03:05.924857','2022-03-29 11:03:05.924857'),(15,8,14,4,'2022-03-29 11:03:05.925857','2022-03-29 11:03:05.925857'),(16,8.5,15,4,'2022-03-29 11:03:05.988858','2022-03-29 11:03:05.988858'),(17,7,16,5,'2022-03-29 11:04:03.822930','2022-03-29 11:04:03.822930'),(18,7.5,18,5,'2022-03-29 11:04:03.826928','2022-03-29 11:04:03.826928'),(19,8,10,5,'2022-03-29 11:04:04.161547','2022-03-29 11:04:04.161547'),(20,8.5,15,5,'2022-03-29 11:04:04.162549','2022-03-29 11:04:04.162549'),(21,7,13,6,'2022-03-29 11:05:03.600076','2022-03-29 11:05:03.600076'),(22,7.5,18,6,'2022-03-29 11:05:03.660078','2022-03-29 11:05:03.660078'),(23,8,10,6,'2022-03-29 11:05:03.722075','2022-03-29 11:05:03.722075'),(24,8.5,9,6,'2022-03-29 11:05:03.724078','2022-03-29 11:05:03.725077'),(25,7,13,7,'2022-03-29 11:06:04.772249','2022-03-29 11:06:04.772249'),(26,7.5,8,7,'2022-03-29 11:06:04.773253','2022-03-29 11:06:04.773253'),(27,8,9,7,'2022-03-29 11:06:05.117247','2022-03-29 11:06:05.117247'),(28,8.5,14,7,'2022-03-29 11:06:05.118249','2022-03-29 11:06:05.118249'),(29,7,19,8,'2022-03-29 11:06:56.774705','2022-03-29 11:06:56.774705'),(30,7.5,16,8,'2022-03-29 11:06:56.841695','2022-03-29 11:06:56.841695'),(31,8,10,8,'2022-03-29 11:06:56.895692','2022-03-29 11:06:56.895692'),(32,8.5,13,8,'2022-03-29 11:06:56.896691','2022-03-29 11:06:56.896691'),(33,7,13,9,'2022-03-29 11:11:58.266379','2022-03-29 11:11:58.266379'),(34,7.5,14,9,'2022-03-29 11:11:58.267379','2022-03-29 11:11:58.267379'),(35,8,18,9,'2022-03-29 11:11:58.268379','2022-03-29 11:11:58.268379'),(36,8.5,19,9,'2022-03-29 11:11:58.365501','2022-03-29 11:11:58.365501'),(37,7,13,10,'2022-03-29 11:12:50.394044','2022-03-29 11:12:50.394044'),(38,7.5,18,10,'2022-03-29 11:12:50.395052','2022-03-29 11:12:50.395052'),(39,8,19,10,'2022-03-29 11:12:50.396046','2022-03-29 11:12:50.396046'),(40,8.5,20,10,'2022-03-29 11:12:50.397045','2022-03-29 11:12:50.397045'),(41,7,18,11,'2022-03-29 11:13:44.514701','2022-03-29 11:13:44.514701'),(42,7.5,20,11,'2022-03-29 11:13:44.627709','2022-03-29 11:13:44.627709'),(43,8,8,11,'2022-03-29 11:13:44.629704','2022-03-29 11:13:44.629704'),(44,8.5,9,11,'2022-03-29 11:13:44.631704','2022-03-29 11:13:44.631704'),(45,7,20,12,'2022-03-29 11:14:40.088635','2022-03-29 11:14:40.088635'),(46,7.5,20,12,'2022-03-29 11:14:40.089630','2022-03-29 11:14:40.089630'),(47,8,32,12,'2022-03-29 11:14:40.424232','2022-03-29 11:14:40.424232'),(48,8.5,10,12,'2022-03-29 11:14:40.424232','2022-03-29 11:14:40.424232'),(49,7,13,13,'2022-03-29 11:15:43.295865','2022-03-29 11:15:43.295865'),(50,7.5,20,13,'2022-03-29 11:15:43.296868','2022-03-29 11:15:43.296868'),(51,8,13,13,'2022-03-29 11:15:43.297864','2022-03-29 11:15:43.297864'),(52,8.5,20,13,'2022-03-29 11:15:43.298864','2022-03-29 11:15:43.298864'),(53,7,8,14,'2022-03-29 11:16:41.585427','2022-03-29 11:16:41.585427'),(54,7.5,10,14,'2022-03-29 11:16:41.634427','2022-03-29 11:16:41.634427'),(55,8,20,14,'2022-03-29 11:16:41.635428','2022-03-29 11:16:41.635428'),(56,8.5,10,14,'2022-03-29 11:16:41.635428','2022-03-29 11:16:41.635428'),(57,7,13,15,'2022-03-29 11:17:29.951308','2022-03-29 11:17:29.951308'),(58,7.5,17,15,'2022-03-29 11:17:29.951308','2022-03-29 11:17:29.951308'),(59,8,11,15,'2022-03-29 11:17:29.952308','2022-03-29 11:17:29.952308'),(60,8.5,13,15,'2022-03-29 11:17:29.952308','2022-03-29 11:17:29.952308'),(61,7,99,16,'2022-04-13 10:11:33.135745','2022-04-13 10:11:33.135745'),(62,7.5,20,16,'2022-04-13 10:11:33.490107','2022-04-13 10:11:33.490107'),(63,8,33,16,'2022-04-13 10:11:33.491109','2022-04-13 10:11:33.491109'),(64,8.5,44,16,'2022-04-13 10:11:33.491109','2022-04-13 10:11:33.491109'),(65,7,33,17,'2022-04-13 10:16:57.263725','2022-04-13 10:16:57.263725'),(66,7.5,44,17,'2022-04-13 10:17:17.850540','2022-04-13 10:17:17.850540'),(67,8,11,17,'2022-04-13 10:17:17.851544','2022-04-13 10:17:17.851544'),(68,8.5,22,17,'2022-04-13 10:17:17.852570','2022-04-13 10:17:17.852570'),(69,7,11,18,'2022-04-13 10:18:58.977013','2022-04-13 10:18:58.977013'),(70,7.5,22,18,'2022-04-13 10:18:58.978014','2022-04-13 10:18:58.978014'),(71,8,30,18,'2022-04-13 10:18:58.978014','2022-04-13 10:18:58.978014'),(72,8.5,14,18,'2022-04-13 10:18:58.979014','2022-04-13 10:18:58.979014'),(73,7,22,19,'2022-04-13 10:20:45.520576','2022-04-13 10:20:45.520576'),(74,7.5,22,19,'2022-04-13 10:20:45.846538','2022-04-13 10:20:45.846538'),(75,8,22,19,'2022-04-13 10:20:45.847539','2022-04-13 10:20:45.847539'),(76,8.5,22,19,'2022-04-13 10:20:45.850542','2022-04-13 10:20:45.850542'),(77,7,22,20,'2022-04-13 10:26:24.929095','2022-04-13 10:26:24.929095'),(78,7.5,22,20,'2022-04-13 10:26:24.930105','2022-04-13 10:26:24.930105'),(79,8,22,20,'2022-04-13 10:26:25.299229','2022-04-13 10:26:25.299229'),(80,8.5,22,20,'2022-04-13 10:26:25.300249','2022-04-13 10:26:25.300249'),(81,7,22,21,'2022-04-13 10:28:50.957390','2022-04-13 10:28:50.957390'),(82,7.5,22,21,'2022-04-13 10:28:50.958392','2022-04-13 10:28:50.958392'),(83,8,22,21,'2022-04-13 10:28:50.958392','2022-04-13 10:28:50.958392'),(84,8.5,22,21,'2022-04-13 10:28:50.958392','2022-04-13 10:28:50.958392'),(85,7,22,22,'2022-04-13 10:32:42.663825','2022-04-13 10:32:42.663825'),(86,7.5,22,22,'2022-04-13 10:32:58.199391','2022-04-13 10:32:58.199391'),(87,8,22,22,'2022-04-13 10:32:58.200356','2022-04-13 10:32:58.200356'),(88,8.5,22,22,'2022-04-13 10:32:58.200356','2022-04-13 10:32:58.200356'),(89,7,22,23,'2022-04-13 10:34:13.178774','2022-04-13 10:34:13.178774'),(90,7.5,22,23,'2022-04-13 10:34:13.178774','2022-04-13 10:34:13.178774'),(91,8,11,23,'2022-04-13 10:34:13.179772','2022-04-13 10:34:13.179772'),(92,8.5,12,23,'2022-04-13 10:34:13.179772','2022-04-13 10:34:13.179772'),(93,7,12,24,'2022-04-13 10:36:37.412556','2022-04-13 10:36:37.412716'),(94,7.5,22,24,'2022-04-13 10:36:37.413234','2022-04-13 10:36:37.413234'),(95,8,22,24,'2022-04-13 10:36:37.414231','2022-04-13 10:36:37.414231'),(96,8.5,22,24,'2022-04-13 10:36:37.414231','2022-04-13 10:36:37.414231'),(97,7,22,25,'2022-04-13 10:38:02.107134','2022-04-13 10:38:02.107134'),(98,7.5,22,25,'2022-04-13 10:38:02.108133','2022-04-13 10:38:02.108133'),(99,8,22,25,'2022-04-13 10:38:02.108133','2022-04-13 10:38:02.108133'),(100,8.5,22,25,'2022-04-13 10:38:02.160989','2022-04-13 10:38:02.160989'),(101,7,22,26,'2022-04-13 10:39:56.099232','2022-04-13 10:39:56.099232'),(102,7.5,22,26,'2022-04-13 10:39:56.111258','2022-04-13 10:39:56.111258'),(103,8,22,26,'2022-04-13 10:39:56.112258','2022-04-13 10:39:56.112258'),(104,8.5,22,26,'2022-04-13 10:39:56.113258','2022-04-13 10:39:56.113258'),(105,7,22,27,'2022-04-13 10:43:12.639021','2022-04-13 10:43:12.639021'),(106,7.5,22,27,'2022-04-13 10:43:12.640021','2022-04-13 10:43:12.640021'),(107,8,22,27,'2022-04-13 10:43:12.640021','2022-04-13 10:43:12.640021'),(108,8.5,22,27,'2022-04-13 10:43:12.641020','2022-04-13 10:43:12.641020'),(109,7,22,28,'2022-04-13 10:44:59.701591','2022-04-13 10:44:59.701591'),(110,7.5,22,28,'2022-04-13 10:44:59.703637','2022-04-13 10:44:59.703637'),(111,8,22,28,'2022-04-13 10:44:59.704638','2022-04-13 10:44:59.704638'),(112,8.5,22,28,'2022-04-13 10:44:59.706591','2022-04-13 10:44:59.706591'),(113,7,22,29,'2022-04-13 10:47:07.206584','2022-04-13 10:47:07.206584'),(114,7.5,22,29,'2022-04-13 10:47:07.206584','2022-04-13 10:47:07.206584'),(115,8,22,29,'2022-04-13 10:47:07.218137','2022-04-13 10:47:07.218137'),(116,8.5,22,29,'2022-04-13 10:47:07.219115','2022-04-13 10:47:07.219115'),(117,7,22,30,'2022-04-13 10:54:04.663545','2022-04-13 10:54:04.663545'),(118,7.5,22,30,'2022-04-13 10:54:04.664546','2022-04-13 10:54:04.664546'),(119,8,22,30,'2022-04-13 10:54:04.664546','2022-04-13 10:54:04.664546'),(120,8.5,22,30,'2022-04-13 10:54:04.665545','2022-04-13 10:54:04.665545'),(121,7,22,31,'2022-04-13 10:58:21.298967','2022-04-13 10:58:21.298967'),(122,7.5,22,31,'2022-04-13 10:58:21.299967','2022-04-13 10:58:21.299967'),(123,8,22,31,'2022-04-13 10:58:21.299967','2022-04-13 10:58:21.299967'),(124,8.5,22,31,'2022-04-13 10:58:21.300967','2022-04-13 10:58:21.300967'),(125,7,22,32,'2022-04-13 11:02:15.653451','2022-04-13 11:02:15.653451'),(126,7.5,22,32,'2022-04-13 11:02:15.654452','2022-04-13 11:02:15.654452'),(127,8,22,32,'2022-04-13 11:02:15.793450','2022-04-13 11:02:15.793450'),(128,8.5,22,32,'2022-04-13 11:02:15.794451','2022-04-13 11:02:15.794451'),(129,7,22,33,'2022-04-13 11:03:47.346801','2022-04-13 11:03:47.346801'),(130,7.5,22,33,'2022-04-13 11:03:47.346801','2022-04-13 11:03:47.347789'),(131,8,22,33,'2022-04-13 11:03:47.347789','2022-04-13 11:03:47.347789'),(132,8.5,22,33,'2022-04-13 11:03:47.348792','2022-04-13 11:03:47.348792'),(133,7,22,34,'2022-04-13 11:05:01.090995','2022-04-13 11:05:01.090995'),(134,7.5,22,34,'2022-04-13 11:05:01.092009','2022-04-13 11:05:01.092009'),(135,8,22,34,'2022-04-13 11:05:01.092009','2022-04-13 11:05:01.092009'),(136,8.5,22,34,'2022-04-13 11:05:01.093028','2022-04-13 11:05:01.093028'),(137,7,22,35,'2022-04-13 11:06:17.401140','2022-04-13 11:06:17.401140'),(138,7.5,22,35,'2022-04-13 11:06:17.401140','2022-04-13 11:06:17.401140'),(139,8,22,35,'2022-04-13 11:06:17.402172','2022-04-13 11:06:17.402172'),(140,8.5,22,35,'2022-04-13 11:06:17.402172','2022-04-13 11:06:17.403138'),(141,7,12,36,'2022-04-13 11:07:28.793938','2022-04-13 11:07:28.793938'),(142,7.5,14,36,'2022-04-13 11:07:28.794914','2022-04-13 11:07:28.794914'),(143,8,22,36,'2022-04-13 11:07:28.878913','2022-04-13 11:07:28.878913'),(144,8.5,22,36,'2022-04-13 11:07:28.879914','2022-04-13 11:07:28.879914');
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

-- Dump completed on 2022-04-13 19:56:30
