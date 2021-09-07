CREATE DATABASE  IF NOT EXISTS `electronicproduct` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `electronicproduct`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: electronicproduct
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adminlogin` (
  `adminid` int(11) NOT NULL,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES (100,'Pushpendra Gupta','12345','p.jpg'),(200,'Shivanshu Sharma','123456','j.jfif');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(45) DEFAULT NULL,
  `productrate` int(11) DEFAULT NULL,
  `productstock` int(11) DEFAULT NULL,
  `offerprice` int(11) DEFAULT NULL,
  `offertype` varchar(45) DEFAULT NULL,
  `description` text,
  `status` varchar(45) DEFAULT NULL,
  `picture` text,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (34,' Pocket-lint Apple MacBook Pro',100000,5,1000,'New','         (Pocket-lint) - Apple has revamped its MacBook Pro Touch Bar range, delivering a laptop that\'s more powerful than the 2017 version, albeit with the same external design. Not changing the design this time out isn\'t significant as competitors – like Dell with its competing and excellent XPS 13 – are also choosing to stick with trusted designs. ','Continue','image.jpg'),(35,'Samsung Galaxy m31',15000,15,200,'New',' New ','Continue','samsung-galaxy-m31-sm-m315f-1.jpg'),(36,'Redmi Note 9 pro max',180000,20,1500,'New','new phone','Continue','redmi.jpg'),(37,'LG 11 Washing Machine',35000,10,1500,'New',' LG P1145SRAZ Semiautomatic washing m Washes out every stain from the clothes for best wash performance. Now choose between 4 wash programs –Gentle, Normal, strong & soak depending on you fabric type. Faster Drying of clothes with LG air dry helps you save time & effort.','Coming Soon','61sDbnKoTXL._SL1500_.jpg'),(38,' Whirlpool India 360° Bloomwash Ultimate',32500,10,500,'New',' 360° Bloomwash Ultimate Care 12.0 Kg Fully Automatic Top Load Washing Machine (In Built Heater,Graphite,10 Yrs Warranty)Descripation','Continue','download.jfif'),(39,' B&H Sony Alpha a7 Digital Camera',107000,5,2500,'New','       Distinguished by its updated sensor design, the Alpha a7 III Mirrorless Digital Camera from Sony is a well-rounded camera suitable for both photo and video applications in a variety of working situations.','Coming Soon','sony.jpg'),(40,'LG Washing Machine',50000,10,3000,'New','      front fully automatic washing machine','Continue','LGwashingmachine.jpg'),(41,'Hp Laptop',40000,5,2000,'Exchange Offer','    Brand	HP\r\nScreen Size	15.6 Inch\r\nProcessor	i5\r\nWarranty	1 Year\r\nOperating System	Windows\r\nAudio Type	Dual speakers','Continue','hp-laptop.jpg'),(42,'LG Washing Machine',35000,5,300,'Exchange Offer','  new washing machine','Coming Soon','download.jfif'),(43,'hp laptop',500000,20,2000,'Exchange Offer','New Laptop in market and high demand of this laptop','Continue','hp-laptop.jpg'),(45,'Samsung Galaxy m31',16500,19,50,'Exchange Offer','New Phone','Coming Soon','samsung-galaxy-m31-sm-m315f-1.jpg'),(47,'IFL Washing Machine',180000,2,1000,'Discounted','  new','Continue','download.jfif');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppdata`
--

DROP TABLE IF EXISTS `suppdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `suppdata` (
  `serial_number` int(11) NOT NULL AUTO_INCREMENT,
  `supplierid` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `address` text,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `mobilenumber` varchar(45) DEFAULT NULL,
  `phonenumber` varchar(45) DEFAULT NULL,
  `firmname` varchar(45) DEFAULT NULL,
  `logo` text,
  `picture` text,
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppdata`
--

LOCK TABLES `suppdata` WRITE;
/*!40000 ALTER TABLE `suppdata` DISABLE KEYS */;
INSERT INTO `suppdata` VALUES (1,101,'Pushpendra','Gupta','D D Nagar Gwalior','Gwalior','Madhya Pradesh',474020,'7974652146','','gupta developer pvt ltd','',''),(2,102,'shivanshu','sharma','near gole ka mandir bhind road','gwalior','MP',474020,'7974652147','07521273386','gupta developer pvt ltd','samsung-galaxy-m31-sm-m315f-1.jpg','samsung-galaxy-m31-sm-m315f-1.jpg'),(3,103,'vishal','sharma','55','MUSAFIRKHANA','near bank of baroda',227812,'8349525019','07521273356','vishal group of institute','mmmmm.png','mmmmm.png'),(4,104,'sachin','gangil','mh-502 morar','Gwalior','MADHYA PRADESH',474020,'7898475569','07521273356','gangil group of foundation','Screenshot (4).png','Screenshot (6).png'),(5,105,'sikhar','boss','near it park','indore','MP',474005,'8965328965','89786554','boss pvt ltd','samsung-galaxy-m31-sm-m315f-1.jpg','samsung-galaxy-m31-sm-m315f-1.jpg'),(6,105,'sikhar','boss','near it park','indore','MP',474005,'8965328965','89786554','boss pvt ltd','samsung-galaxy-m31-sm-m315f-1.jpg','samsung-galaxy-m31-sm-m315f-1.jpg'),(7,200,'kamal','Patel','indore','indore','MP',474020,'8965896589','78542132','kamel patel pvt ltd','samsung-galaxy-m31-sm-m315f-1.jpg','samsung-galaxy-m31-sm-m315f-1.jpg'),(8,101,'pushpendra','gupta','d d nagar','gwalior','MP',474020,'8349525018','07521273385','kamel patel pvt ltd','image.jpg','hp-laptop.jpg');
/*!40000 ALTER TABLE `suppdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'electronicproduct'
--

--
-- Dumping routines for database 'electronicproduct'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-07 13:18:45
