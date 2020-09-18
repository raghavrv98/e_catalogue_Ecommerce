-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce_prod
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beauty_cosmetics`
--

LOCK TABLES `beauty_cosmetics` WRITE;
/*!40000 ALTER TABLE `beauty_cosmetics` DISABLE KEYS */;
INSERT INTO `beauty_cosmetics` VALUES (1,'beauty_cosmetics','','','Dabur Gulabari Premium Rose Water - 40ML','Dabur Gulabari Premium Rose Water-15 rs.jpg',15,15,'2020-09-17 15:41:46'),(2,'beauty_cosmetics','','','Dabur Gulabari Premium Rose Water - 120ML','Dabur Gulabari Premium Rose Water-100 ml.jpg',42,42,'2020-09-17 15:42:28'),(3,'beauty_cosmetics','','','Everyuth  Naturals Radiant Glow Haldi  Chandan Face Pace,Home Facila Powder ,25g','Everyuth naturals Radiant Glow Haldi Chandan Face Pace, Home facila powder, 25g.jpg',20,20,'2020-09-17 15:44:25'),(4,'beauty_cosmetics','','','Everyuth  Naturals Radiant Glow Rose  Face Pace,Home Facila Powder ,25g','Everyuth naturals Radiant Glow Rose Face Pace, Home facila powder, 25g.jpg',20,20,'2020-09-17 15:45:28'),(5,'beauty_cosmetics','','','Fair & Lovely Advanced Multi Vitamin Face Cream,50gm','Fair & Lovely Advanced Multi Vitamin Face Cream, 50gm.jpg',102,104,'2020-09-17 15:48:00'),(6,'beauty_cosmetics','','','Fair & Lovely Advanced Multi Vitamin Face Cream,25gm','Fair & Lovely Advanced Multi Vitamin Face Cream, 25gm.jpg',53,54,'2020-09-17 15:47:43'),(7,'beauty_cosmetics','','','Fair & Lovely BB Face Cream,9gm','Fair & Lovely BB Face Cream, 9gm.jpg',49,50,'2020-09-17 15:49:06'),(8,'beauty_cosmetics','','','Fair & Lovely BB Face Cream,18gm','Fair & Lovely BB Face Cream, 18gm.jpg',85,85,'2020-09-17 15:49:40'),(9,'beauty_cosmetics','','','Fair & Lovely BB Face Cream,40gm','Fair & Lovely BB Face Cream, 40g.jpg',196,200,'2020-09-17 15:50:13'),(10,'beauty_cosmetics','','','Fair & Lovely Winter Fairness Cream- 50gm','Fair & Lovely Winter Faireness Cream-50gm.jpg',99,110,'2020-09-17 15:51:20'),(11,'beauty_cosmetics','','','Fair & Lovely Ayurvedic Care  Face Cream- 50gm','Fair & Lovely Ayurvedic Care Face Cream, 50g.jpg',124,125,'2020-09-17 15:53:05'),(12,'beauty_cosmetics','','','Fair & Lovely Instant Fairness Rapid Action  Cream,25gm','Fair & Lovely Instant Fairness Rapid Action Cream, 25 g.jpg',74,75,'2020-09-17 15:54:46'),(13,'beauty_cosmetics','','','Fair & Lovely Instant Fairness Rapid Action  Cream,50gm','Fair and Lovely Men Anti Marks Fairness Cream, 50g.jpg',129,130,'2020-09-17 15:56:06'),(14,'beauty_cosmetics','','','fair & Handsome Fairness Cream For Men - 60gm','Fair & Handsome Fairness Cream for Men-60gm.jpg',130,130,'2020-09-17 15:57:46'),(15,'beauty_cosmetics','','','OLay Natural White Light Instant Glowing Fairness Cream,40g','Olay Natural White Light Instant Glowing Fairness Cream, 40g.jpg',178,180,'2020-09-17 16:00:27'),(16,'beauty_cosmetics','','','Godrej Nupur Henna,120 g','Godrej Nupur Henna, 120 g.jpg',72,75,'2020-09-18 06:28:49'),(17,'beauty_cosmetics','','','Joy Skin Fruits Action Moisture Cream,200ml Box','Joy Skin Fruits Active Moisture Cream 200ml Box.jpg',148,158,'2020-09-18 06:30:22'),(18,'beauty_cosmetics','','','Joy Skin Fruits Action Moisture Cream,500ml Box','Joy Skin Fruits Active Moisture Cream 500ml Box.jpg',310,315,'2020-09-18 06:31:32'),(19,'beauty_cosmetics','','','Joy Skin Fruits Action Moisture Cream,100ml Box','Joy Skin Fruits Active Moisture Cream 100ml Box.jpg',88,90,'2020-09-18 06:32:13'),(20,'beauty_cosmetics','','','Joy Skin Fruits Action Moisture Cream,50ml Box','Joy Skin Fruits Active Moisture Cream 50ml Box.jpg',53,55,'2020-09-18 06:32:49'),(21,'beauty_cosmetics','','','Lakme Eyeconic Kajal,Classic brown,0.35g','Lakme Eyeconic Kajal, Classic Brown, 0.35g.jpg',140,180,'2020-09-18 06:34:24'),(22,'beauty_cosmetics','','','Satrang Mehandi Cone - Rs 5 Per Piece','Satrang Mehandi Cone-Rs 5 per piece.jpg',5,5,'2020-09-18 06:35:38'),(23,'beauty_cosmetics','','','OLay Natural White Light Instant Glowing Fairness Cream,40g','Olay Natural White Light Instant Glowing Fairness Cream, 40g.jpg',169,169,'2020-09-18 06:36:45'),(24,'beauty_cosmetics','','','POND\'S White Beauty Spot-Less Fairness Day Cream,23g','POND\'S White Beauty Spot-less Fairness Day Cream, 23g.jpg',70,70,'2020-09-18 06:38:41'),(25,'beauty_cosmetics','','','POND\'S Moisturing Cold Cream 30ml ','POND\'S Moisturing Cold Cream 30ml.jpg',50,50,'2020-09-18 06:39:49'),(26,'beauty_cosmetics','','','Smile N Style Essential - Safety Pins For Saree-Small','Smile N Style Essentials -Safety Pins for Saree-Small.jpg',5,10,'2020-09-18 06:41:22'),(27,'beauty_cosmetics','','','Smile N Style Essential - Safety Pins For Saree-Large','Smile N Style Essentials -Safety Pins for Saree-Large.jpg',10,15,'2020-09-18 06:42:02'),(28,'beauty_cosmetics','','','Vaseline Intensive Care Deep Restore Body Lotion,400 ml','Vaseline Intensive Care Deep Restore Body Lotion, 400 ml.jpg',280,285,'2020-09-18 06:43:35'),(29,'beauty_cosmetics','','','Vaseline Pure Skin Jelly - 100g','Vaseline Pure Skin Jelly - 100g.jpg',120,125,'2020-09-18 06:44:30'),(30,'beauty_cosmetics','','','Veet-Hair Removal Cream - 100g','Veet-Hair removal cream-100g.jpg',210,220,'2020-09-18 06:45:37'),(31,'beauty_cosmetics','','','Veet-Hair Removal Cream - 25g','Veet-Hair removal cream-25g.jpg',60,63,'2020-09-18 06:46:11'),(32,'beauty_cosmetics','','','Veet-Hair Removal Cream - 50g','Veet-Hair removal cream-50g.jpg',120,125,'2020-09-18 06:47:09'),(33,'beauty_cosmetics','','','Vaseline Lip Care Total Moisture 10 g','Vaseline Lip Care Total Moisture 10g.jpg',45,45,'2020-09-18 06:48:19');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breakfast_dairy`
--

LOCK TABLES `breakfast_dairy` WRITE;
/*!40000 ALTER TABLE `breakfast_dairy` DISABLE KEYS */;
INSERT INTO `breakfast_dairy` VALUES (1,'breakfast_dairy','','','Amul Butter-100gm','Amul Butter-100gm.jpg',47,48,'2020-09-17 05:38:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery`
--

LOCK TABLES `grocery` WRITE;
/*!40000 ALTER TABLE `grocery` DISABLE KEYS */;
INSERT INTO `grocery` VALUES (7,'grocery','dal','Dal','Tur daal','Toor-Dal.jpg',100,110,'2020-09-15 13:52:04'),(8,'grocery','dal','Dal','Moong Dal','Moong Dal.jpg',115,120,'2020-09-15 14:01:24'),(10,'grocery','dal','Dal','Urad Dal','Urad Dal.jpg',120,130,'2020-09-15 16:11:12'),(11,'grocery','dal','Dal','Chaan Dal','Chana Dal.png',68,70,'2020-09-15 16:11:59'),(12,'grocery','dal','Dal','Masoor Dal-Red','Masoor Dal.jpg',90,100,'2020-09-15 16:13:07'),(13,'grocery','dal','Dal','Black Masoor Dal','Black Maoor.jpg',90,100,'2020-09-15 16:14:29'),(14,'grocery','dal','Dal','Moong Dal Chhikla','Moong Dal Chhilka.jpg',110,120,'2020-09-15 16:15:57'),(15,'grocery','dal','Dal','Chana Black','Black Chana.jpg',65,70,'2020-09-15 16:16:58'),(16,'grocery','dal','Dal','Rajam Chitra','Rajma.jpg',150,160,'2020-09-15 16:18:54'),(17,'grocery','dal','Dal','Rajam Red','Rajma Red.jpg',1101,120,'2020-09-15 16:19:40'),(18,'grocery','dal','Dal','Urad Dal Chhilka','urad dal chilka.jpg',110,120,'2020-09-15 16:20:47'),(19,'grocery','dal','Dal','Matar Seed-Matra','Matar Seed.jpg',75,80,'2020-09-15 16:22:17'),(20,'grocery','dal','Dal','Kabuli Chana (Dollar)','Kabuli Chana.jpg',100,110,'2020-09-15 16:23:37'),(21,'grocery','dal','Dal','Kabuli Chana (Mini)','Kabuli Chana Mini.jpg',90,95,'2020-09-15 16:25:13'),(22,'grocery','dal','Dal','Moong Saabut','Moong Sabut.jpg',110,120,'2020-09-15 16:26:49'),(23,'grocery','dal','Dal','Urad Saabut','Urad Sabut.jpg',110,120,'2020-09-15 16:27:59'),(24,'grocery','dal','Dal','Moth Dal','Moth Dal.jpg',110,120,'2020-09-15 16:28:52'),(25,'grocery','dal','Dal','Bhuna Chana','Roasted Chana.jpg',100,120,'2020-09-15 16:30:19'),(26,'grocery','dal','Dal','Elaichi Dana','Elaichi Dana.jpg',60,60,'2020-09-15 16:31:35'),(27,'grocery','dal','Dal','Batasha','Batasha.jpg',60,60,'2020-09-15 16:32:13'),(28,'grocery','dal','Dal','Peanuts','Peranut.jpg',120,140,'2020-09-15 16:32:56'),(29,'grocery','dal','Dal','Soyabean Bari-1kg','Soybean Badi.jpg',80,100,'2020-09-15 16:33:58'),(30,'grocery','sugar_salt','Salt/Sugar','Sugar','Sugar.jpg',39,40,'2020-09-15 16:43:03'),(31,'grocery','sugar_salt','Salt/Sugar','Jaggery(Gud)','Jaggery(Gud).jpg',65,70,'2020-09-15 16:44:15'),(32,'grocery','sugar_salt','Salt/Sugar','Plain Salt-Tata','Tata Salt.jpg',20,20,'2020-09-15 16:47:29'),(33,'grocery','sugar_salt','Salt/Sugar','Lite Salt-Tata','Tata salt-Lite.jpg',35,35,'2020-09-15 16:46:21'),(34,'grocery','sugar_salt','Salt/Sugar','Plain Salt-Patanjali','Patanjali Salt.jpg',15,15,'2020-09-15 16:47:06'),(35,'grocery','sugar_salt','Salt/Sugar','Sainda Salt-Munshi Panna-1kg','Munshi Panna-Rock Salt.jpg',50,60,'2020-09-15 16:49:51'),(36,'grocery','sugar_salt','Salt/Sugar','Black Salt-Munshi Panna-1kg','Munshi Panna-Black Salt.jpg',50,60,'2020-09-15 16:51:17'),(37,'grocery','sugar_salt','Salt/Sugar','Sugar Candy(Mishri)','Sugar Candy (Mishri).jpg',60,65,'2020-09-15 16:52:15'),(38,'grocery','sugar_salt','Salt/Sugar','Boora','Boora.jpg',50,50,'2020-09-15 16:52:51'),(39,'grocery','sugar_salt','Salt/Sugar','Rava','Rawa (Khand).jpeg',50,50,'2020-09-15 16:53:15'),(40,'grocery','rice_rice_products','Rice & Rice Products','Rice Parmal-1KG','Parmal.jpg',40,50,'2020-09-15 16:57:54'),(41,'grocery','rice_rice_products','Rice & Rice Products','Rice Parmal Sela-1KG','Parmal Sela.jpg',45,50,'2020-09-15 16:58:37'),(42,'grocery','rice_rice_products','Rice & Rice Products','Basmati Rice-1KG','Basmarti.png',80,90,'2020-09-15 16:59:13'),(43,'grocery','rice_rice_products','Rice & Rice Products','Basmati XXX-1KG','Basmati Rice XXX.jpg',100,120,'2020-09-15 16:59:46'),(44,'grocery','rice_rice_products','Rice & Rice Products','Basmati Tukda-1KG','Basmati Tukda.jpg',55,60,'2020-09-15 17:00:26'),(45,'grocery','rice_rice_products','Rice & Rice Products','Double Chabi (Golden)-1KG','Double Chabi Golden Rice.jpg',80,90,'2020-09-15 17:00:58'),(46,'grocery','rice_rice_products','Rice & Rice Products','India Gate (super) 1.25 kg','India Gate Super Basmati Rice  kg.png',150,160,'2020-09-15 17:01:32'),(47,'grocery','rice_rice_products','Rice & Rice Products','Bhagar(Sama)-1KG','Sama Chawal.jpg',120,120,'2020-09-15 17:02:16'),(48,'grocery','rice_rice_products','Rice & Rice Products','Poha Maharani (KTA)-1KG','Maharani Poha 1KG.jpg',60,75,'2020-09-15 17:02:55'),(49,'grocery','rice_rice_products','Rice & Rice Products','Murmura (Chilua) PKT','Murmura (Chilua).jpg',40,50,'2020-09-15 17:03:28'),(50,'grocery','rice_rice_products','Rice & Rice Products','Daliya (MP-Rasoi Ratan)-500g','Daliya Rasoi Ratan.jpg',32,35,'2020-09-15 17:04:06'),(51,'grocery','rice_rice_products','Rice & Rice Products','Daliya (Shakti Bhog)-500g','Shakti Bhog Daliya-500 gram.jpg',25,25,'2020-09-15 17:04:43'),(52,'grocery','rice_rice_products','Rice & Rice Products','Daliya (Double Trishool)-500g','Daliya Double Trishul.jpg',20,25,'2020-09-15 17:05:19'),(53,'grocery','rice_rice_products','Rice & Rice Products','Patanjali Daliya-500gm','Daliya Patanjali-500 gram.jpg',25,25,'2020-09-15 17:05:53'),(55,'grocery','dry_fruits','Dry Fruits','Almond-250gm','Almonds.jpg',190,200,'2020-09-16 01:23:08'),(56,'grocery','dry_fruits','Dry Fruits','Cashew-250gm','Cashew One piece.jpg',237,250,'2020-09-16 01:24:20'),(57,'grocery','dry_fruits','Dry Fruits','Kaju Tukda-250gm','2-piece-cashew.jpg',170,175,'2020-09-16 01:24:51'),(58,'grocery','dry_fruits','Dry Fruits','Makhana-Special-250gm','Makhana.jpg',230,240,'2020-09-16 01:26:11'),(59,'grocery','dry_fruits','Dry Fruits','Makhana-Rajabhog-250gm','Rajbhog Makhane.jpg',170,180,'2020-09-16 01:26:35'),(60,'grocery','dry_fruits','Dry Fruits','Kismis-250gm','kismis.jpg',80,85,'2020-09-16 01:27:23'),(61,'grocery','dry_fruits','Dry Fruits','Pista Salted-250gm','Pista Salrted.jpg',275,300,'2020-09-16 01:28:09'),(62,'grocery','dry_fruits','Dry Fruits','Akhrot (Sabut)-250gm','Akhrot Saabut.jpg',210,220,'2020-09-16 01:28:44'),(63,'grocery','dry_fruits','Dry Fruits','Munakka-250gm','munakka.jpg',180,190,'2020-09-16 01:29:36'),(64,'grocery','dry_fruits','Dry Fruits','Chironji-250gm','chironji.jpg',300,310,'2020-09-16 01:30:09'),(65,'grocery','flours_grains','Flours & Grains','Wheat Flour-Loose (10kg)-MP','Atta Losse-MP.png',350,360,'2020-09-16 01:32:57'),(66,'grocery','flours_grains','Flours & Grains','Besan (1kg)','Besan Loose.jpg',68,70,'2020-09-16 01:33:41'),(67,'grocery','flours_grains','Flours & Grains','Suji (1kg) Double Talvar-Special','Suji Premuim.jpg',35,36,'2020-09-16 01:35:16'),(68,'grocery','flours_grains','Flours & Grains','Suji (1kg)','Suji.jpg',32,34,'2020-09-16 01:36:02'),(69,'grocery','flours_grains','Flours & Grains','Sabudana-1 KG','Saabudana.jpg',100,110,'2020-09-16 01:36:35'),(70,'grocery','flours_grains','Flours & Grains','Maida (1Kg) Double Talvar-Special','Maida Flour.jpg',32,35,'2020-09-16 01:37:32'),(71,'grocery','flours_grains','Flours & Grains','Ararot Powder (1kg)','arrowroot powder.jpg',58,60,'2020-09-16 01:38:06'),(72,'grocery','flours_grains','Flours & Grains','Wheat Flour-Aashirwad-10KG','Aashirwad Atta-10 kg.jpg',350,375,'2020-09-16 01:38:41'),(73,'grocery','flours_grains','Flours & Grains','Wheat Flour-Aashirwad-5KG','Aashirwad Atta-5 kg.jpg',180,190,'2020-09-16 01:39:10'),(74,'grocery','flours_grains','Flours & Grains','Wheat Flour-Shakti bhog','Shakti Bhog Atta.jpg',185,190,'2020-09-16 01:39:51'),(75,'grocery','flours_grains','Flours & Grains','Wheat Flour-Double trishool','Double Trishul Atta.jpeg',285,350,'2020-09-16 01:40:23'),(76,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Mustered Oil-Bullet Fortune','Mustered Oil-Bullet Fortune.jpg',125,130,'2020-09-16 01:42:17'),(77,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Mustered Oil-Fortune-1L','Fortune mustered oil-1L.jpg',130,135,'2020-09-16 01:43:03'),(78,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Refined Oil-Gagan Sunflower-1L','Gagan Sunflower Refined Oil-1L Pouch.jpg',118,125,'2020-09-16 01:43:52'),(79,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Refined Oil-Suffola Gold-1L','Suffola Gold refind Oil-1L.jpeg',165,170,'2020-09-16 01:44:38'),(80,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Refined Oil-Suffola Gold-2L','Suffola Gold refind Oil-2L.jpeg',320,325,'2020-09-16 01:45:19'),(81,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Refined Oil-Suffola Gold-5L','Suffola Gold refind Oil-5L.jpeg',810,825,'2020-09-16 01:45:42'),(82,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Refined Oil-Fortune Soyabean-1L','Fortune Refind Soyabean Oil-1L.jpg',105,110,'2020-09-16 01:46:19'),(83,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Refined Oil-Fortune Soyabean-5L','Fortune Refind Soyabean Oil-5L.jpg',560,580,'2020-09-16 01:46:55'),(84,'grocery','cookingoil_ghee','Cooking Oil & Ghee',' Refined Oil-Dhara-1L','Dhara Soyabean Oil- 1L.jpg',120,125,'2020-09-16 01:52:14'),(85,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Refined Oil-Chambal-1L','Chambal Soyabean refined Oil-1L.jpg',90,100,'2020-09-16 01:52:48'),(86,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Amul pure Ghee-1L-Tin','Amul Pure Ghee 1L Tin.jpeg',495,505,'2020-09-16 01:53:37'),(87,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Amul pure Ghee-1L-Carton','Amul Pure Desi-Dhee-1L-Carton.jpeg',495,505,'2020-09-16 01:54:05'),(88,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Krishna Pure Ghee-1L','Krishna Pure Ghee-1L.jpg',390,410,'2020-09-16 01:54:48'),(89,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Krishna Pure Ghee-500ML','Krishna Pure Ghee-500ML.jpg',200,210,'2020-09-16 01:55:28'),(90,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Krishna Pure Ghee-5L','KrishnaPure Ghee-5L.jpg',1950,2050,'2020-09-16 01:56:08'),(91,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Pure Ghee-Patanjali-1L','Patanjali Pure Cow Ghee -1L.jpg',565,580,'2020-09-16 01:56:36'),(92,'grocery','cookingoil_ghee','Cooking Oil & Ghee','Pure Ghee-Patanjali-500ML','Patanjali Pure Cow Ghee-500ML.jpg',295,300,'2020-09-16 01:57:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_wellness`
--

LOCK TABLES `health_wellness` WRITE;
/*!40000 ALTER TABLE `health_wellness` DISABLE KEYS */;
INSERT INTO `health_wellness` VALUES (1,'health_wellness','','','Iodex Multi Purpose Pain Balm-8g','Iodex Multi Purpose Pain Balm- 8 g.jpg',35,35,'2020-09-17 01:46:01'),(2,'health_wellness','','','Iodex Multi Purpose Pain Balm-16g','Iodex Multi Purpose Pain Balm- 16g.jpg',70,70,'2020-09-17 01:46:51'),(3,'health_wellness','','','Amrutanajan -8 ml','Amrutanajan- 8 ml.jpg',32,32,'2020-09-17 01:48:31'),(4,'health_wellness','','','Amrutanajan Strong Pain Balm Double Power 50ml','Amrutanjan Strong Pain Balm Double Power 50 ml.jpg',125,125,'2020-09-17 01:50:08'),(5,'health_wellness','','','Betadine -15gm','Betadine-15gm.jpg',85,90,'2020-09-17 01:51:01'),(6,'health_wellness','','','Cipladine Ointment Cream-10gm','Cipladine Ointment Cream-10gm.jpg',24,30,'2020-09-17 01:52:05'),(7,'health_wellness','','','Dabur Chyawanprash 2X Immunity-500gm','Dabur Chyawanprash 2X Immunity - 500g.jpg',170,170,'2020-09-17 01:53:55'),(8,'health_wellness','','','Dabur Immunity kit- 1.14kg','Dabur Immunity Kit - 1.14 kg.jpg',520,550,'2020-09-17 01:55:20'),(9,'health_wellness','','','Dabur Immunity kit- 443gm','Dabur Immunity Kit - 1.14 kg.jpg',215,215,'2020-09-17 01:57:30'),(11,'health_wellness','','','Dabur Pudin Hara -30ml','Dabur Pudin Hara - 30 ml.jpg',47,50,'2020-09-17 01:59:30'),(12,'health_wellness','','','Dettol Antiseptic Liquid -250ml','Dettol Antiseptic liquid-250 ml.jpg',100,100,'2020-09-17 02:00:41'),(13,'health_wellness','','','Pudin Hara Digestive Pearls- 10 Capsules','Pudin Hara Digestive Pearls Capsules.jpg',25,25,'2020-09-17 02:02:10'),(14,'health_wellness','','','Digital Thermometer','Digital Thermometer.jpg',150,270,'2020-09-17 02:03:27'),(15,'health_wellness','','','Himami Fast Relief-15ml','Himani Fast Relief-15ml.jpg',52,55,'2020-09-17 02:09:18'),(16,'health_wellness','','','Himami Fast Relief-23ml','Himani Fast Relief-23ml.jpg',77,80,'2020-09-17 02:10:07'),(17,'health_wellness','','','Moov Cream Regular -10g','Moov Cream Regular - 10 g - Copy.jpg',40,40,'2020-09-17 02:11:11'),(18,'health_wellness','','','Moov Fast PainRelief Cream -50g','Moov Fast Pain Relief Cream-50gm.jpg',160,165,'2020-09-17 02:12:38'),(19,'health_wellness','','','Moov Fast Pain Relief Spray - 35gm','Moov Fast Pain Relief Spray-35gm.jpg',130,130,'2020-09-17 02:14:07'),(20,'health_wellness','','','Savlon Antiseptic -50ml','Savlon Antiseptic-50ml.jpg',20,20,'2020-09-17 02:15:06'),(21,'health_wellness','','','Savlon Antiseptic -100ml','Savlon Antiseptic-100ml.jpg',39,40,'2020-09-17 02:15:45'),(22,'health_wellness','','','Sugarfree Natura Low Calori  Sweenter-300 pellets','Sugarfree Natura Low Calorie Sweenter-300 Pellets.jpg',190,190,'2020-09-17 02:18:45'),(23,'health_wellness','','','Sugarfree Natura Low Calori  Sweentner-100gm Jar','Sugarfree Natura Low Calorie Sweetner - 100gm Jar.jpg',140,150,'2020-09-17 02:20:23'),(24,'health_wellness','','','Vicks Inhaler KeyChain - 0.5 ml','Vicks Inhaler Keychain - 0.5 ml.jpg',49,50,'2020-09-17 02:21:42'),(25,'health_wellness','','','Vicks Vaporub Pocket Pack -10ml','Vicks Vaporub Pocket Pack - 10 ML.jpg',35,35,'2020-09-17 02:23:04'),(26,'health_wellness','','','Zandu Balm -8 ml','Zandu Balm - 8 ml.jpg',40,42,'2020-09-17 02:23:49'),(27,'health_wellness','','','Dabur India Ayurvedic Hajmola Regular 120 Tablets','Dabur India Ayurvedic Hajmola Regular 120 Tablets.jpg',35,35,'2020-09-17 02:25:50'),(28,'health_wellness','','','Dabur Hajmola Tablets, Anardana ,120 Tablets','Dabur Hajmola Tablet, Anardana, 120 Tablets.jpg',34,35,'2020-09-17 02:29:33'),(29,'health_wellness','','','Dabur Hajmola Tablets - Imli','Dabur Hajmola Tablet-Imli.jpg',38,40,'2020-09-17 02:29:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_care`
--

LOCK TABLES `personal_care` WRITE;
/*!40000 ALTER TABLE `personal_care` DISABLE KEYS */;
INSERT INTO `personal_care` VALUES (1,'personal_care','deo_perfumes','Deo & Perfumes','Denver Deodrant - 140 ML','Denver Deodorant For Men.jpg',189,210,'2020-09-16 08:19:33'),(2,'personal_care','deo_perfumes','Deo & Perfumes','Set Wet Perfume 150 ML','Set Wet Perfume, 120ml (Spunky and Funky Avatar,.jpg',199,250,'2020-09-16 08:21:07'),(3,'personal_care','deo_perfumes','Deo & Perfumes','KS Spark Deodrant - 150 ml','Set Wet Deodrant Spray Perfume 150 Ml.jpg',190,210,'2020-09-16 08:22:02'),(4,'personal_care','deo_perfumes','Deo & Perfumes','KS Spark Pocket Perfume - 18 ml','Kama Sutra Spark Pocket Perfume, 18 ml.jpg',60,60,'2020-09-16 08:22:58'),(5,'personal_care','deo_perfumes','Deo & Perfumes','Nivea Men Deodrant - 100 ML','NIVEA Men Deodorant, Duo Deodorizer Active Fresh, 100ml.jpg',250,279,'2020-09-16 08:24:37'),(6,'personal_care','deo_perfumes','Deo & Perfumes','Puma One8 by Virat Kohli- 120 ML','One 8 by Virat Kohli INTENSE Perfume Body Spray For Men, 200 ml.jpg',199,225,'2020-09-16 08:25:47'),(8,'personal_care','deo_perfumes','Deo & Perfumes','Axe Ticket Poket Perfume -17 ML','AXE Ticket Perfume, Champion, 17 ml.jpg',65,65,'2020-09-16 08:26:28'),(9,'personal_care','deo_perfumes','Deo & Perfumes','Engage Pocket Perfume - 28 ML Work-Party','Engage On 2-In-1 Pocket Perfume Man Work & Party, 28 ml.jpg',90,90,'2020-09-16 08:27:33'),(10,'personal_care','deo_perfumes','Deo & Perfumes','Engage Pocket Perfume - 28 ML Day-Night','Engage On 2-In-1 Pocket Perfume Man Day & Night, 28 ml.jpg',90,90,'2020-09-16 08:28:00'),(11,'personal_care','deo_perfumes','Deo & Perfumes','Engage On Pocket Perfume - 18 ML','Engage ON Citrus Fresh Pocket Perfume, 18.4 ml.jpg',60,60,'2020-09-16 08:28:35'),(12,'personal_care','deo_perfumes','Deo & Perfumes','Fogg Fragnant Body Spray - 120 ML','Fogg Fragrant Body Spray - Victor 120ml.jpg',170,185,'2020-09-16 08:29:07'),(13,'personal_care','deo_perfumes','Deo & Perfumes','Fogg Master Body Spray - 120 ML','Fogg Master Body Spray For Men, 120ml (Marco).jpg',225,225,'2020-09-16 08:30:26'),(14,'personal_care','deo_perfumes','Deo & Perfumes','Fogg Rush Body Spray - 120 ML','Fogg Rush Body Spray, 120ml.jpg',199,199,'2020-09-16 08:31:54'),(15,'personal_care','deo_perfumes','Deo & Perfumes','Fogg Scent-30ML','Fogg Scent Intensio For Men.jpg',130,140,'2020-09-16 08:32:53'),(16,'personal_care','deo_perfumes','Deo & Perfumes','Park avenue-Pocket Perfume-18ML','Park Avenue Pocket Perfume.jpg',65,65,'2020-09-16 08:33:33'),(17,'personal_care','deo_perfumes','Deo & Perfumes','Park Avenue Good Morning - 150 ML','Park Avenue Good Morning Body Deodorant For Men, 100g.jpg',160,199,'2020-09-16 08:34:12'),(18,'personal_care','deo_perfumes','Deo & Perfumes','Park Avenue Voyage - 150 ML','Park Avenue Voyage Premium Body Spray, 150 ml.jpg',160,240,'2020-09-16 08:34:45'),(19,'personal_care','deo_perfumes','Deo & Perfumes','Risa Blue Pearl Perfume - 30 ML','Risa Blue Pearl Spray Perfume for Men.jpg',99,135,'2020-09-16 08:35:20'),(20,'personal_care','deo_perfumes','Deo & Perfumes','Risa BawrI Perfume - 30 ML','Riya Bawri Perfume.jpg',99,135,'2020-09-16 08:36:06'),(21,'personal_care','deo_perfumes','Deo & Perfumes','Riya Melody Perfume - 30 ML','Riya Melody Apparel Perfume.jpg',99,135,'2020-09-16 08:36:42'),(22,'personal_care','deo_perfumes','Deo & Perfumes','Riya Bindas Perfume - 30 ML','Riya Perfume Bindaas Men\'s Apparel Perfume.jpg',99,135,'2020-09-16 08:37:26'),(23,'personal_care','deo_perfumes','Deo & Perfumes','Riya Born Ruich Perfume - 30 ML','Riya Perfume Born Rich Men\'s Perfume (100ml).jpg',99,135,'2020-09-16 08:37:58'),(24,'personal_care','deo_perfumes','Deo & Perfumes','Riya Poizo Perfume - 30ML','Riya Perfume Poizo Perfume for Men, 100 ml.jpg',99,135,'2020-09-16 08:38:51'),(25,'personal_care','deo_perfumes','Deo & Perfumes','Risa Hum Tum Perfume - 30 ML','Riya Unisex Hum Tum Perfume (30 ml).jpg',99,135,'2020-09-16 08:39:39'),(26,'personal_care','deo_perfumes','Deo & Perfumes','Sweet HearT Blue Perfume -100 ML','Sweetheart Blue Perfume (100 ml).jpg',275,299,'2020-09-16 08:40:24'),(27,'personal_care','deo_perfumes','Deo & Perfumes','Wild Stone Code Perfume- 120 ML','Wild Stone Code Chrome Body Perfume, 120ml.jpg',179,250,'2020-09-16 08:41:32'),(28,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Clinic Plus Strong & Long Health Shampoo, 340 ml','Clinic Plus Strong & Long Health Shampoo, 340 ml.jpg',155,153,'2020-09-16 10:38:24'),(29,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Clinic Plus Strong and Long Health Shampoo, 175ml','Clinic Plus Strong and Long Health Shampoo, 175ml.jpg',82,84,'2020-09-16 10:42:09'),(30,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Clinic Plus Strong and Extra Thick Shampoo, 80ml','Clinic Plus Strong and Extra Thick Shampoo, 80ml.jpg',39,45,'2020-09-16 10:42:56'),(31,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dabur Vatika Health Shampoo - Power of 7 Natural Ingredients-440 ml','Dabur Vatika Health Shampoo - Power of 7 Natural Ingredients-440 ml.jpg',165,170,'2020-09-16 10:43:50'),(32,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dabur Vatika Health Shampoo, 80 ml','Dabur Vatika Health Shampoo, 80 ml.jpg',47,50,'2020-09-16 10:49:53'),(33,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Hair Fall Rescue Shampoo, 180ml','Dove Hair Fall Rescue Shampoo, 180ml.jpg',145,155,'2020-09-16 10:51:03'),(34,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Hairy Therapy Dandruff Care Shampoo, 180ml','Dove Hairy Therapy Dandruff Care Shampoo, 180ml.jpg',145,155,'2020-09-16 10:52:45'),(35,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Intense Repair Shampoo, 180ml','Dove Intense Repair Shampoo, 340ml.jpg',145,155,'2020-09-16 10:54:05'),(36,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Intense Repair Shampoo, 180ml','Dove Intense Repair Shampoo, 340ml.jpg',145,155,'2020-09-16 10:54:07'),(37,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Hair fall Rescue Shampoo, 340ml','Dove Hair fall Rescue Shampoo, 340ml.jpg',225,230,'2020-09-16 10:59:03'),(38,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Hair fall Rescue Shampoo, 340ml','Dove Hair fall Rescue Shampoo, 340ml.jpg',225,230,'2020-09-16 10:59:03'),(39,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Intense Repair Shampoo, 340ml','Dove Intense Repair Shampoo, 340ml.jpg',215,230,'2020-09-16 11:03:11'),(40,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Daily Shine Shampoo 80ml','Dove Daily Shine Shampoo 80ml.jpg',88,95,'2020-09-16 11:03:43'),(41,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Garnier Fructis Long and Strong Strengthening Shampoo, 340ml','Garnier Fructis Long and Strong Strengthening Shampoo, 340ml.jpg',235,240,'2020-09-16 11:04:18'),(42,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Head & Shoulders , Anti Dandruff Shampoo + Conditioner,180 ML','Head & Shoulders , Anti Dandruff Shampoo + Conditioner,180 ML.jpg',185,185,'2020-09-16 11:05:00'),(43,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Head & Shoulders , Anti Dandruff Shampoo +Anti hairfall ,340 ML.jpg','Head & Shoulders , Anti Dandruff Shampoo +Anti hairfall ,340 ML.jpg',275,275,'2020-09-16 11:05:45'),(44,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Indulekha Bringha Shampoo, Proprietary Ayurvedic Medicine for Hair Fall, 100ml','Indulekha Bringha Shampoo, Proprietary Ayurvedic Medicine for Hair Fall, 100ml.jpg',130,135,'2020-09-16 11:06:38'),(45,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Indulekha Bringha Anti Hair Fall Hair Cleanser Shampoo, 340ml','Indulekha Bringha Anti Hair Fall Hair Cleanser Shampoo, 340ml.jpg',379,405,'2020-09-16 11:08:51'),(46,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Indulekha Bringha Anti Hair Fall Hair Cleanser Shampoo, 200ml','Indulekha Bringha Anti Hair Fall Hair Cleanser Shampoo, 200ml.jpg',225,235,'2020-09-16 11:09:28'),(47,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Head & Shoulders , Anti Dandruff Shampoo 180 ML.jpg','Head & Shoulders , Anti Dandruff Shampoo 180 ML.jpg',140,145,'2020-09-16 11:10:14'),(48,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','L\'Oreal Paris Extraordinary Clay Shampoo, 175ml','L\'Oreal Paris Extraordinary Clay Shampoo, 175ml.jpg',150,160,'2020-09-16 11:11:25'),(49,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','L\'Oreal Paris Hair Expertise Total Repair 5 Serum, 80ml','L\'Oreal Paris Hair Expertise Total Repair 5 Serum, 80ml.jpg',224,230,'2020-09-16 11:12:34'),(50,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','L\'Oreal Paris Total Repair 5 Shampoo 704ml Combo with Conditioner, 192.5ml + Serum, 40ml FREE','L\'Oreal Paris Total Repair 5 Shampoo 704ml Combo with Conditioner, 192.5ml + Serum, 40ml FREE.jpg',540,540,'2020-09-16 11:13:40'),(51,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','L\'Oreal Paris Total Repair 5 Shampoo, 360ml','L\'Oreal Paris Total Repair 5 Shampoo, 360ml.jpg',258,265,'2020-09-16 11:14:24'),(52,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','L\'Oreal Paris Total Repair 5 Shampoo, 175ml','L\'Oreal Paris Total Repair 5 Shampoo, 175ml.jpg',179,185,'2020-09-16 11:14:54'),(53,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','L\'Oreal Paris Hair Expertise Total Repair 5 Serum, 40ml','L\'Oreal Paris Hair Expertise Total Repair 5 Serum, 40ml.jpg',145,150,'2020-09-16 11:15:29'),(54,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Pantene Advanced Hair Fall Solution Anti Hair Fall Shampoo, 340 ml','Pantene Advanced Hair Fall Solution Anti Hair Fall Shampoo, 340 ml.jpg',219,225,'2020-09-16 11:16:30'),(55,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Pantene Advanced Hair Fall Solution Anti Dendruff Shampoo, 180 ml.jpg','Pantene Advanced Hair Fall Solution Anti Dendruff Shampoo, 180 ml.jpg',115,120,'2020-09-16 11:20:02'),(56,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Pantene Advanced Hair Fall Solution Long Black Shampoo, 75 ml','Pantene Advanced Hair Fall Solution Long Black Shampoo, 75 ml.jpg',75,80,'2020-09-16 11:20:41'),(57,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Pantene Advanced Hair Fall Solution Long Black Shampoo, 180 ml','Pantene Advanced Hair Fall Solution Long Black Shampoo, 180 ml.jpg',115,120,'2020-09-16 11:21:18'),(58,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Park Avenue Shiny And Bouncy Beer Shampoo, 180ml','Park Avenue Shiny And Bouncy Beer Shampoo, 180ml.jpg',154,155,'2020-09-16 11:22:01'),(59,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Park Avenue Damage free Beer shampoo 180ml.jpg','Park Avenue Damage free Beer shampoo 180ml.jpg',154,155,'2020-09-16 11:22:28'),(60,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Patanjali Kesh Kanti Aloe vera Shampoo-200ML','Patanjali Kesh Kanti Aloe vera Shampoo-200ML.jpg',85,85,'2020-09-16 11:23:01'),(61,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Patanjali Kesh Kanti Anti-Dandruff Hair Cleanser Shampoo, 200ml','Patanjali Kesh Kanti Anti-Dandruff Hair Cleanser Shampoo, 200ml.jpg',107,110,'2020-09-16 11:23:40'),(62,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Patanjali Kesh Kanti Milk Protein Hair Cleanser Shampoo, 200ml','Patanjali Kesh Kanti Milk Protein Hair Cleanser Shampoo, 200ml.jpg',85,95,'2020-09-16 11:25:33'),(63,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Patanjali Kesh Kanti Natural Hair Cleanser Shampoo, 200ml','Patanjali Kesh Kanti Natural Hair Cleanser Shampoo, 200ml.jpg',75,90,'2020-09-16 11:26:10'),(64,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Patanjali Kesh Kanti Reetha Hair Cleanser Shampoo, 200ml','Patanjali Kesh Kanti Reetha Hair Cleanser Shampoo, 200ml.jpg',85,95,'2020-09-16 11:26:49'),(65,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Patanjali Kesh Kanti Shikakai Hair Cleanser, 200ml','Patanjali Kesh Kanti Shikakai Hair Cleanser, 200ml.jpg',85,95,'2020-09-16 11:27:29'),(66,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Green Tea & White Lily Shampoo, 370 ml','Sunsilk Green Tea & White Lily Shampoo, 370 ml.jpg',185,189,'2020-09-16 11:28:13'),(67,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Green Tea & White Lily Shampoo, 195 ml.jpg','Sunsilk Green Tea & White Lily Shampoo, 195 ml.jpg',95,95,'2020-09-16 11:28:45'),(68,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Thick & Long shampoo-340ML','Sunsilk Thick & Long shampoo-340ML.jpg',175,180,'2020-09-16 11:29:42'),(69,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Thick & Long shampoo-180ML','Sunsilk Thick & Long shampoo-180ML.jpg',89,89,'2020-09-16 11:30:21'),(70,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Stunning Black Shine Shampoo, 80 ml','Sunsilk Stunning Black Shine Shampoo, 80 ml.jpg',49,50,'2020-09-16 11:31:22'),(71,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Stunning Black Shine Shampoo, 80 ml','Sunsilk Stunning Black Shine Shampoo, 80 ml.jpg',49,50,'2020-09-16 11:31:22'),(72,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Stunning Black Shine Shampoo, 340 ml','Sunsilk Stunning Black Shine Shampoo, 340 ml.jpg',174,180,'2020-09-16 11:32:23'),(73,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Stunning Black Shine Shampoo, 180 ml.jpg','Sunsilk Stunning Black Shine Shampoo, 180 ml.jpg',93,95,'2020-09-16 11:33:08'),(74,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Sunsilk Nourishing Soft & Smooth shampoo-180ML','Sunsilk Nourishing Soft & Smooth shampoo-180ML.jpg',110,110,'2020-09-16 11:33:58'),(75,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Dryness Care Conditioner, 180ml','Dove Dryness Care Conditioner, 180ml.jpg',185,190,'2020-09-16 11:36:02'),(76,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Hair Fall Rescue Conditioner, 180ml','Dove Hair Fall Rescue Conditioner, 180ml.jpg',185,190,'2020-09-16 11:36:33'),(77,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Hair Therapy Intense Repair Conditioner, 175ml','Dove Hair Therapy Intense Repair Conditioner, 175ml.jpg',185,190,'2020-09-16 11:37:01'),(78,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Head & Shoulders , Anti Dandruff Conditioner, Smooth & Silky, 170 ML','Head & Shoulders , Anti Dandruff Conditioner, Smooth & Silky, 170 ML.jpg',148,150,'2020-09-16 11:37:24'),(79,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Pantene Advanced Hair Fall Solution Long Black conditioner, 180 ml','Pantene Advanced Hair Fall Solution Long Black conditioner, 180 ml.jpg',175,180,'2020-09-16 11:37:49'),(80,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Deeply Nourishing Body Wash 190 ml with free loofah','Dove Deeply Nourishing Body Wash 190 ml with free loofah.jpg',111,115,'2020-09-16 11:38:31'),(81,'personal_care','shampoo_Conditioner','Shampoo & Conditioner','Dove Go Fresh Nourishing Body Wash 190 ml with Free Loofah','Dove Go Fresh Nourishing Body Wash 190 ml with Free Loofah.jpg',111,115,'2020-09-16 11:38:55'),(82,'personal_care','hair_care','Hair & Care','Bajaj Almond 50 Ml','Bajaj Almond Drops Hair Oil, 50ml.jpg',35,35,'2020-09-16 11:47:49'),(83,'personal_care','hair_care','Hair & Care','Bajaj Almond 100 Ml','Bajaj Almond Drops Hair Oil, 100ml.jpg',64,65,'2020-09-16 11:48:30'),(84,'personal_care','hair_care','Hair & Care','Bajaj Almond 200 Ml','Bajaj Almond Drops Hair Oil, 200ml.jpg',123,125,'2020-09-16 11:49:17'),(85,'personal_care','hair_care','Hair & Care','Bajaj Almond 300 Ml','Bajaj Almond Drops Hair Oil, 300ml.jpg',172,175,'2020-09-16 11:49:43'),(86,'personal_care','hair_care','Hair & Care','Clear Oil - 75 ML','Clear Active Care Anti-Dandruff Hair Oil 75 ml.jpg',50,52,'2020-09-16 11:50:15'),(87,'personal_care','hair_care','Hair & Care','Clear Oil - 150 ML','Clear Active Care Anti-Dandruff Hair Oil 150 ml - Copy.jpg',110,110,'2020-09-16 11:51:04'),(88,'personal_care','hair_care','Hair & Care','Clinic + Oil - 100 ML','Clinic Plus Oil-100ML.jpg',44,45,'2020-09-16 11:51:32'),(89,'personal_care','hair_care','Hair & Care','Clinic + Oil - 200 ML','Clinic Plus Oil-200ML.jpg',93,95,'2020-09-16 11:52:21'),(90,'personal_care','hair_care','Hair & Care','Dabur Amla Oil - 90 ML','Dabur Amla Hair Oil - For Strong , Long and Thick Hair - 100ml.jpg',44,44,'2020-09-16 11:53:46'),(91,'personal_care','hair_care','Hair & Care','Dabur Amla Oil - 180 ML','Dabur Amla Hair Oil - For Strong , Long and Thick Hair - 180ml.jpg',87,88,'2020-09-16 11:55:05'),(92,'personal_care','hair_care','Hair & Care','Dabur Amla Oil - 450 ML','Dabur Amla Hair Oil - For Strong , Long and Thick Hair - 450ml.jpg',195,199,'2020-09-16 11:55:53'),(93,'personal_care','hair_care','Hair & Care','Navratna Oil - 50 ML','Navratna Ayurvedic Oil Extra Thanda, 50 ml.jpg',40,40,'2020-09-16 12:05:17'),(94,'personal_care','hair_care','Hair & Care','Navratna Oil - 100 ML','Navratna Ayurvedic Oil Extra Thanda, 100 ml.jpg',77,80,'2020-09-16 12:06:03'),(95,'personal_care','hair_care','Hair & Care','Navratna Oil - 300 ML','Navratna Ayurvedic Oil Extra Thanda, 300 ml.jpg',180,182,'2020-09-16 12:06:35'),(96,'personal_care','hair_care','Hair & Care','Navratna Oil Extra Thanda- 50 ML','Navratna Ayurvedic Oil, 50ml.jpg',40,40,'2020-09-16 12:07:49'),(97,'personal_care','hair_care','Hair & Care','Navratna Oil Extra Thanda- 100 ML','Navratna Ayurvedic Oil, 100ml.jpg',77,80,'2020-09-16 12:08:30'),(98,'personal_care','hair_care','Hair & Care','Navratna Oil Extra Thanda- 300 ML','Navratna Ayurvedic Oil, 300ml.jpg',180,182,'2020-09-16 12:09:10'),(99,'personal_care','hair_care','Hair & Care','Garnier Black Naturals Hair Color, Shade 3, 40g','Garnier Black Naturals Hair Color, Shade 3, 40g.jpg',37,37,'2020-09-16 12:10:28'),(100,'personal_care','hair_care','Hair & Care','Garnier Black Naturals Shade 4 (Natural Brown)','Garnier Black Naturals Shade 4 (Natural Brown).jpg',37,37,'2020-09-16 12:12:08'),(101,'personal_care','hair_care','Hair & Care','Garnier Color Naturals Creme Hair Color,Shade 1 Natural Black,70ml +60 g','Garnier Color Naturals Crème hair color, Shade 1 Natural Black, 70ml + 60g.jpg',170,175,'2020-09-17 13:04:13'),(102,'personal_care','hair_care','Hair & Care','Godrej Expert Rich Creme Hair color (Single Use) - Shade 1 Natural Black','Godrej Expert Rich Crème Hair Colour (Single Use) – Shade 1 NATURAL BLACK.jpg',29,30,'2020-09-17 13:06:35'),(103,'personal_care','hair_care','Hair & Care','Godrej Rich Creme Hair Colour - Natural Brown No. 4,20g+20ml','Godrej Rich Creme Hair Colour - Natural Brown No. 4, 20g+20ml.jpg',29,30,'2020-09-17 13:10:01'),(104,'personal_care','hair_care','Hair & Care','Godrej Rich Creme Hair Colour (Dark Brown)','Godrej Rich Creme Hair Colour (Dark Brown).jpg',29,30,'2020-09-17 13:11:35'),(105,'personal_care','hair_care','Hair & Care','Indulekha Oil -50ml','Indulekha Bhringa Hair Oil, 50ml.jpg',225,234,'2020-09-17 13:12:35'),(106,'personal_care','hair_care','Hair & Care','Indulekha Oil -100ml','Indulekha Bhringa Hair Oil, 100ml.jpg',435,432,'2020-09-17 13:13:11'),(107,'personal_care','hair_care','Hair & Care','Keo Karpin Oil - 200ml ','Keo Karpin Hair Oil-200Ml.jpg',88,90,'2020-09-17 13:14:09'),(108,'personal_care','hair_care','Hair & Care','Keo Karpin Oil - 500ml ','Keo Karpin Hair Oil-500ML.jpg',175,190,'2020-09-17 13:14:38'),(109,'personal_care','hair_care','Hair & Care','Kesh King Oil - 60ml','Kesh King Ayurvedic Scalp and Hair Oil, 60ml.jpg',80,85,'2020-09-17 13:15:24'),(110,'personal_care','hair_care','Hair & Care','Kesh King Oil - 100ml','Kesh King Ayurvedic Scalp and Hair Oil, 100ml.jpg',160,170,'2020-09-17 13:16:01'),(111,'personal_care','hair_care','Hair & Care','Nihar Shanti Amla Oil - 500ML','Nihar Shanti Amla Hair Oil-500ML.jpg',151,155,'2020-09-17 13:19:36'),(112,'personal_care','hair_care','Hair & Care','Parachute Advansed Jasmine Coconut Hair Oil,100ML','Parachute Advansed Jasmine Coconut Hair Oil, 100ml.jpg',38,38,'2020-09-17 13:21:25'),(113,'personal_care','hair_care','Hair & Care','Parachute Coconut  Oil - 100ML','Parachute Coconut Oil, 100ml.jpg',39,39,'2020-09-17 13:22:25'),(114,'personal_care','hair_care','Hair & Care','Perachute Coconut Oil - 200ML','Parachute Coconut Oil - 200 ml.jpg',85,86,'2020-09-17 13:24:05'),(115,'personal_care','hair_care','Hair & Care','Patanjali Amla Oil - 100ML','Patanjali Amla Hair Oil, 100ml.jpg',40,40,'2020-09-17 13:24:50'),(116,'personal_care','hair_care','Hair & Care','Patanjali Coconut Oil - 200ML','Patanjali Coconut Oil, 200ml.jpg',74,75,'2020-09-17 13:26:10'),(117,'personal_care','hair_care','Hair & Care','Patanjali Coconut Oil - 200ML','Patanjali Coconut Oil, 200ml.jpg',74,75,'2020-09-17 13:26:10'),(118,'personal_care','hair_care','Hair & Care','Patanjali Kesh Kanti Oil -120ML','Patanjali kesh kanti hair oil 100ml.jpg',128,130,'2020-09-17 13:27:11'),(119,'personal_care','hair_care','Hair & Care','Streax Insta Shampoo Hair Color - Natural Black - 25 ML','Streax Insta Shampoo Hair Colour-Natural Black-25 ml.jpg',39,39,'2020-09-17 13:28:49'),(120,'personal_care','hair_care','Hair & Care','Sesa Ayurvedic Hair Oil - 200ML','Sesa Ayurvedic Hair oil-200ml.jpg',261,265,'2020-09-17 13:30:08'),(121,'personal_care','hair_care','Hair & Care','Brylcreem Dendruff Cream -75g','Brylcreem Dandruff Protect Hair Styling Cream, 75g.jpg',78,80,'2020-09-17 13:31:53'),(122,'personal_care','hair_care','Hair & Care','Himalaya gel -100ML','Himalaya Men Daily Nourish Styling Gel, Strong Hold, 100ml.jpg',88,90,'2020-09-17 13:32:52'),(123,'personal_care','hair_care','Hair & Care','Set wet Gel Cool Hold - 250ML','Set Wet Cool Hold Strength Hair Gel, 250 ml.jpg',124,130,'2020-09-17 13:33:42'),(124,'personal_care','hair_care','Hair & Care','Set wet Gel Ultimate Hold - 250ML','Set Wet Hair Gel Ultimate Hold, 250ml.jpg',124,130,'2020-09-17 13:34:44'),(125,'personal_care','hair_care','Hair & Care','Set wet Gel Cool Hold - 100ML','Set Wet Cool Hold Hair Styling Gel For Men, 100ml.jpg',75,80,'2020-09-17 13:35:22'),(126,'personal_care','hair_care','Hair & Care','Set wet Gel Ultimate Hold - 100ML','Set Wet Daily Hair Styling Gel for Men Ultimate Hold-100ML.jpg',75,80,'2020-09-17 13:35:52'),(127,'personal_care','hair_care','Hair & Care','Set wet Hair Gel Vertical Hold(100ml Tube)','Set Wet Hair Gel Vertical Hold (100ml Tube).jpg',99,100,'2020-09-17 13:37:02'),(128,'personal_care','hair_care','Hair & Care','Set wet Hair Gel wet Look(100ml Tube)','Set Wet Hair Gel Wet Look (100ml Tube).jpg',75,80,'2020-09-17 13:37:50'),(129,'personal_care','hair_care','Hair & Care','Set Wet Hair Spray -200 ML','Set wet hair spray-200ML.jpg',195,200,'2020-09-17 13:38:27'),(130,'personal_care','hair_care','Hair & Care','Set Wet Gel Cool Hold - Pouch','Set Wet Style Hair Gel Cool Hold (10 ml)-10rs.jpg',10,10,'2020-09-17 13:39:07');
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

-- Dump completed on 2020-09-18 16:44:15
