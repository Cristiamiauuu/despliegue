-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fosdb
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_admin` (
  `ID` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (0,'admin','1234abcd..'),(1,'admin1','$2y$10$.8dKdxlVSSfV1CsiPj2Xqe6Wifbre0xzIDHPoYw.n/DlI5yQm3xRu');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menu` (
  `menuID` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(25) NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (9,'Cocidos o al Vapor',1),(10,'Bebidas',1),(11,'Sopas',1);
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menuitem`
--

DROP TABLE IF EXISTS `tbl_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menuitem` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `menuID` int(11) NOT NULL,
  `menuItemName` text NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`itemID`),
  KEY `menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menuitem`
--

LOCK TABLES `tbl_menuitem` WRITE;
/*!40000 ALTER TABLE `tbl_menuitem` DISABLE KEYS */;
INSERT INTO `tbl_menuitem` VALUES (20,10,'Plato Actualizado',15000.00,1),(21,9,'Salm├│n al Vapor',16000.00,1),(22,9,'Cazuela de Mariscos',17000.00,1),(23,9,'Arroz con Camarones',14000.00,1),(24,9,'Pescado al Vapor con Hierbas',15000.00,1),(25,10,'Agua de Coco',3000.00,1),(26,10,'Limonada de Maracuy├í',3500.00,1),(27,11,'Sopa de Pescado con Verduras',12000.00,1);
/*!40000 ALTER TABLE `tbl_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mesa`
--

DROP TABLE IF EXISTS `tbl_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mesa` (
  `mesaID` int(11) NOT NULL AUTO_INCREMENT,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`mesaID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mesa`
--

LOCK TABLES `tbl_mesa` WRITE;
/*!40000 ALTER TABLE `tbl_mesa` DISABLE KEYS */;
INSERT INTO `tbl_mesa` VALUES (3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1);
/*!40000 ALTER TABLE `tbl_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `status` text NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `order_date` date NOT NULL,
  `mesaID` int(11) NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (5,'cancelado',10000.00,'2023-01-25',0),(6,'listo',15500.00,'2023-01-25',0),(7,'preparando',12000.00,'2023-12-17',1),(8,'preparando',13000.00,'2023-12-17',1),(9,'preparando',13000.00,'2023-12-17',1),(10,'preparando',48000.00,'2023-12-17',1),(11,'preparando',13000.00,'2023-12-17',1),(12,'preparando',16000.00,'2023-12-17',1),(13,'listo',60000.00,'2023-12-17',1),(14,'esperando',36000.00,'2023-12-17',1),(15,'esperando',45000.00,'2023-12-17',1),(16,'cancelado',12000.00,'2023-12-17',8),(17,'cancelado',12000.00,'2023-12-17',9),(18,'cancelado',12000.00,'2023-12-17',5),(19,'cancelado',12000.00,'2023-12-17',4),(20,'cancelado',12000.00,'2023-12-17',7),(21,'cancelado',12000.00,'2023-12-17',4),(22,'cancelado',24000.00,'2023-12-17',6),(23,'cancelado',12000.00,'2023-12-17',3),(24,'cancelado',12000.00,'2023-12-17',4),(25,'cancelado',13000.00,'2023-12-17',7),(29,'listo',12000.00,'2023-12-17',12),(30,'listo',12000.00,'2023-12-18',14),(1001,'esperando',0.00,'2024-03-31',3),(1002,'esperando',0.00,'2024-03-31',3),(1003,'esperando',0.00,'2024-04-01',3),(1004,'esperando',0.00,'2024-04-01',3),(1008,'esperando',30000.00,'2024-04-01',4),(1009,'esperando',12000.00,'2024-04-01',12),(1010,'listo',3000.00,'2024-04-01',13),(1012,'listo',15000.00,'2024-05-03',3),(1013,'esperando',30000.00,'2024-05-03',11),(1014,'esperando',12000.00,'2024-05-03',11);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orderdetail`
--

DROP TABLE IF EXISTS `tbl_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orderdetail` (
  `orderID` int(11) NOT NULL,
  `orderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `mesaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderDetailID`),
  KEY `itemID` (`itemID`),
  KEY `orderID` (`orderID`),
  KEY `mesaID` (`mesaID`),
  CONSTRAINT `fk_mesaID` FOREIGN KEY (`mesaID`) REFERENCES `tbl_mesa` (`mesaID`) ON DELETE CASCADE,
  CONSTRAINT `fk_orderID` FOREIGN KEY (`orderID`) REFERENCES `tbl_order` (`orderID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orderdetail`
--

LOCK TABLES `tbl_orderdetail` WRITE;
/*!40000 ALTER TABLE `tbl_orderdetail` DISABLE KEYS */;
INSERT INTO `tbl_orderdetail` VALUES (29,37,17,1,12),(30,38,17,1,14),(1008,43,17,2,NULL),(1009,44,27,1,NULL),(1010,45,25,1,NULL),(1012,48,17,1,NULL),(1013,49,17,2,NULL),(1014,50,27,1,NULL);
/*!40000 ALTER TABLE `tbl_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_role` (
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES ('Chef'),('Mesero');
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_staff`
--

DROP TABLE IF EXISTS `tbl_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_staff` (
  `staffID` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `role` text NOT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_staff`
--

LOCK TABLES `tbl_staff` WRITE;
/*!40000 ALTER TABLE `tbl_staff` DISABLE KEYS */;
INSERT INTO `tbl_staff` VALUES (1,'Juan','$2y$10$skZTaK.l3byhf5ksLAjVMOitNwe5tqQMPnx406VFuHRY4NUoBBLdu',0,'Mesero'),(4,'Pedro','1234abcd..',1,'Chef'),(5,'Emily','1234abcd..',1,'Chef'),(6,'Robert','1234abcd..',1,'Chef'),(7,'Sofia','abc123',1,'Mesero'),(9,'Marin','1234abcd..',1,'Chef');
/*!40000 ALTER TABLE `tbl_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-08 14:15:50
