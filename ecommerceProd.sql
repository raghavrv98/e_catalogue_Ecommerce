-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_prod
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `baby_care`
--

DROP TABLE IF EXISTS `baby_care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baby_care` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baby_care`
--

LOCK TABLES `baby_care` WRITE;
/*!40000 ALTER TABLE `baby_care` DISABLE KEYS */;
/*!40000 ALTER TABLE `baby_care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bakery_cakes`
--

DROP TABLE IF EXISTS `bakery_cakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bakery_cakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bakery_cakes`
--

LOCK TABLES `bakery_cakes` WRITE;
/*!40000 ALTER TABLE `bakery_cakes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bakery_cakes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beauty_cosmetics`
--

DROP TABLE IF EXISTS `beauty_cosmetics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beauty_cosmetics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beauty_cosmetics`
--

LOCK TABLES `beauty_cosmetics` WRITE;
/*!40000 ALTER TABLE `beauty_cosmetics` DISABLE KEYS */;
/*!40000 ALTER TABLE `beauty_cosmetics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beverages`
--

DROP TABLE IF EXISTS `beverages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beverages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beverages`
--

LOCK TABLES `beverages` WRITE;
/*!40000 ALTER TABLE `beverages` DISABLE KEYS */;
/*!40000 ALTER TABLE `beverages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birthday_items`
--

DROP TABLE IF EXISTS `birthday_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birthday_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birthday_items`
--

LOCK TABLES `birthday_items` WRITE;
/*!40000 ALTER TABLE `birthday_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `birthday_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branded_foods`
--

DROP TABLE IF EXISTS `branded_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branded_foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branded_foods`
--

LOCK TABLES `branded_foods` WRITE;
/*!40000 ALTER TABLE `branded_foods` DISABLE KEYS */;
/*!40000 ALTER TABLE `branded_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breakfast_dairy`
--

DROP TABLE IF EXISTS `breakfast_dairy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breakfast_dairy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breakfast_dairy`
--

LOCK TABLES `breakfast_dairy` WRITE;
/*!40000 ALTER TABLE `breakfast_dairy` DISABLE KEYS */;
/*!40000 ALTER TABLE `breakfast_dairy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaning_household`
--

DROP TABLE IF EXISTS `cleaning_household`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleaning_household` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaning_household`
--

LOCK TABLES `cleaning_household` WRITE;
/*!40000 ALTER TABLE `cleaning_household` DISABLE KEYS */;
/*!40000 ALTER TABLE `cleaning_household` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disposable_items`
--

DROP TABLE IF EXISTS `disposable_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disposable_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disposable_items`
--

LOCK TABLES `disposable_items` WRITE;
/*!40000 ALTER TABLE `disposable_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `disposable_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery`
--

DROP TABLE IF EXISTS `grocery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grocery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery`
--

LOCK TABLES `grocery` WRITE;
/*!40000 ALTER TABLE `grocery` DISABLE KEYS */;
/*!40000 ALTER TABLE `grocery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_wellness`
--

DROP TABLE IF EXISTS `health_wellness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_wellness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_wellness`
--

LOCK TABLES `health_wellness` WRITE;
/*!40000 ALTER TABLE `health_wellness` DISABLE KEYS */;
/*!40000 ALTER TABLE `health_wellness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_cred`
--

DROP TABLE IF EXISTS `login_cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_cred` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_cred`
--

LOCK TABLES `login_cred` WRITE;
/*!40000 ALTER TABLE `login_cred` DISABLE KEYS */;
INSERT INTO `login_cred` VALUES (1,'admin','admin@gmail.com','1234','2020-09-07 17:12:45');
/*!40000 ALTER TABLE `login_cred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mask_sanitizer`
--

DROP TABLE IF EXISTS `mask_sanitizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mask_sanitizer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mask_sanitizer`
--

LOCK TABLES `mask_sanitizer` WRITE;
/*!40000 ALTER TABLE `mask_sanitizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mask_sanitizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_arrivals`
--

DROP TABLE IF EXISTS `new_arrivals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_arrivals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_arrivals`
--

LOCK TABLES `new_arrivals` WRITE;
/*!40000 ALTER TABLE `new_arrivals` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_arrivals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oral_care`
--

DROP TABLE IF EXISTS `oral_care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oral_care` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oral_care`
--

LOCK TABLES `oral_care` WRITE;
/*!40000 ALTER TABLE `oral_care` DISABLE KEYS */;
/*!40000 ALTER TABLE `oral_care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_care`
--

DROP TABLE IF EXISTS `personal_care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_care` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_care`
--

LOCK TABLES `personal_care` WRITE;
/*!40000 ALTER TABLE `personal_care` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pooja_needs`
--

DROP TABLE IF EXISTS `pooja_needs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pooja_needs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pooja_needs`
--

LOCK TABLES `pooja_needs` WRITE;
/*!40000 ALTER TABLE `pooja_needs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pooja_needs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `displayCategory` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'new_arrivals','New Arrivals','','','2020-09-12 14:44:05'),(2,'breakfast_dairy','Breakfast & Dairy','','','2020-09-12 14:44:05'),(3,'oral_care','Oral Care','','','2020-09-12 14:44:05'),(4,'grocery','Grocery','dal','Dal','2020-09-12 14:44:05'),(5,'grocery','Grocery','sugar_salt','Salt/Sugar','2020-09-12 14:44:05'),(6,'grocery','Grocery','rice_rice_products','Rice & Rice Products','2020-09-12 14:44:05'),(7,'grocery','Grocery','dry_fruits','Dry Fruits','2020-09-12 14:44:06'),(8,'grocery','Grocery','flours_grains','Flours & Grains','2020-09-12 14:44:06'),(9,'grocery','Grocery','cookingoil_ghee','Cooking Oil & Ghee','2020-09-12 14:44:06'),(10,'beverages','Beverages','','','2020-09-12 14:44:06'),(11,'personal_care','Personal Care','deo_perfumes','Deo & Perfumes','2020-09-12 14:44:06'),(12,'personal_care','Personal Care','shampoo_Conditioner','Shampoo & Conditioner','2020-09-12 14:44:06'),(13,'personal_care','Personal Care','hair_care','Hair & Care','2020-09-12 14:44:06'),(14,'beauty_cosmetics','Beauty & Cosmetics','','','2020-09-12 14:44:06'),(15,'cleaning_household','Cleaning & Household','','','2020-09-12 14:44:06'),(16,'branded_foods','Branded Foods','pickles','Pickles','2020-09-12 14:44:06'),(17,'baby_care','Baby Care','','','2020-09-12 14:44:06'),(18,'pooja_needs','Pooja Needs','','','2020-09-12 14:44:06'),(19,'mask_sanitizer','Mask & Sanitizer','','','2020-09-12 14:44:06'),(20,'health_wellness','Health & Wellness','','','2020-09-12 14:44:06'),(21,'bakery_cakes','Bakery & Cakes','','','2020-09-12 14:44:06'),(22,'birthday_items','Birthday Items','','','2020-09-12 14:44:06'),(23,'disposable_items','Disposable Items','','','2020-09-12 14:44:06'),(24,'stationary','Stationary','','','2020-09-12 14:44:06'),(25,'upvaas_fast_special','Upvaas/Fast Special','','','2020-09-12 14:44:06'),(26,'sunglasses_watches','Sunglasses & Watches','','','2020-09-12 14:44:06');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stationary`
--

DROP TABLE IF EXISTS `stationary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stationary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stationary`
--

LOCK TABLES `stationary` WRITE;
/*!40000 ALTER TABLE `stationary` DISABLE KEYS */;
/*!40000 ALTER TABLE `stationary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sunglasses_watches`
--

DROP TABLE IF EXISTS `sunglasses_watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sunglasses_watches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sunglasses_watches`
--

LOCK TABLES `sunglasses_watches` WRITE;
/*!40000 ALTER TABLE `sunglasses_watches` DISABLE KEYS */;
/*!40000 ALTER TABLE `sunglasses_watches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upvaas_fast_special`
--

DROP TABLE IF EXISTS `upvaas_fast_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upvaas_fast_special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subCategory` varchar(255) NOT NULL,
  `displaySubCategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `actualPrice` float NOT NULL,
  `cuttingPrice` float NOT NULL,
  `creationTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upvaas_fast_special`
--

LOCK TABLES `upvaas_fast_special` WRITE;
/*!40000 ALTER TABLE `upvaas_fast_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `upvaas_fast_special` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-12 20:32:09
