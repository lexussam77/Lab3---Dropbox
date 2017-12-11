-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availability` (
  `carID` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  KEY `carID_idx` (`carID`),
  CONSTRAINT `carID` FOREIGN KEY (`carID`) REFERENCES `cardemo` (`carID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
INSERT INTO `availability` VALUES (13,'2017-11-01','2017-11-02'),(9,'2017-11-06','2017-11-07'),(23,'2017-11-08','2017-11-09'),(5,'2017-11-13','2017-11-15'),(4,'2017-11-14','2017-11-16'),(6,'2017-11-17','2017-11-21'),(24,'2017-11-20','2017-11-22'),(20,'2017-11-23','2017-11-24'),(8,'2017-11-27','2017-11-29'),(15,'2017-11-28','2017-11-30'),(14,'2017-11-29','2017-12-04'),(16,'2017-12-01','2017-12-06'),(12,'2017-12-02','2017-12-03'),(18,'2017-12-05','2017-12-07'),(7,'2017-12-08','2017-12-11'),(21,'2017-12-12','2017-12-13'),(22,'2017-12-14','2017-12-18'),(19,'2017-12-19','2017-12-20'),(10,'2017-12-21','2017-12-25'),(17,'2017-12-26','2017-12-27'),(11,'2017-12-28','2017-12-29');
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardemo`
--

DROP TABLE IF EXISTS `cardemo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardemo` (
  `carID` int(11) NOT NULL AUTO_INCREMENT,
  `carType` varchar(45) NOT NULL,
  `carName` varchar(45) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `seatCount` int(11) NOT NULL,
  `operator` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `ratings` int(11) DEFAULT NULL,
  PRIMARY KEY (`carID`),
  UNIQUE KEY `carID_UNIQUE` (`carID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardemo`
--

LOCK TABLES `cardemo` WRITE;
/*!40000 ALTER TABLE `cardemo` DISABLE KEYS */;
INSERT INTO `cardemo` VALUES (4,'Economy','MITSUBISHI MIRAGE',24.00,5,'Alamo','San Jose',4),(5,'Economy','FORD FIESTA',47.00,5,'Avis','Mountain View',3),(6,'Economy','FORD FIESTA',41.00,5,'Budget','San Francisco',3),(7,'Economy','MITSUBISHI MIRAGE',39.00,5,'Enterprise','San Francisco',5),(8,'Economy','MITSUBISHI MIRAGE',30.00,5,'Alamo','New York',5),(9,'Standard','BUICK VERANO',27.00,5,'Enterprise','New Jersey',1),(10,'Standard','VOLKSWAGEN JETTA',22.00,5,'Budget','San Jose',1),(11,'Standard','VOLKSWAGEN JETTA',19.00,5,'Budget','Chicago',5),(12,'Standard','BUICK VERANO',24.00,5,'Avis','San Francisco',2),(13,'Full Size','NISSAN ALTIMA',27.00,5,'Alamo','Mountain View',5),(14,'Full Size','CHEVROLET MALIBU',24.00,5,'Enterprise','New York',3),(15,'Full Size','CHEVROLET MALIBU',28.00,5,'Avis','New Jersey',5),(16,'Full Size','NISSAN ALTIMA',29.00,5,'Alamo','San Francisco',1),(17,'Standard SUV','HYUNDAI SANTA FE',43.00,5,'Budget','San Jose',2),(18,'Standard SUV','FORD EDGE',40.00,5,'Enterprise','New York',5),(19,'Standard SUV','FORD EDGE',45.00,5,'Avis','San Francisco',3),(20,'Standard SUV','HYUNDAI SANTA FE',44.00,5,'Alamo','Mountain View',2),(21,'Fullsize SUV','CHEVY TAHOE',59.00,7,'Enterprise','New Jersey',3),(22,'Fullsize SUV','CHEVY TAHOE',65.00,7,'Avis','Mountain View',2),(23,'Fullsize SUV','CHEVY TAHOE',49.00,7,'Avis','New York',2),(24,'Fullsize SUV','CHEVY TAHOE',73.00,7,'Enterprise','San Jose',3);
/*!40000 ALTER TABLE `cardemo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardetails`
--

DROP TABLE IF EXISTS `cardetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardetails` (
  `CarId` varchar(20) NOT NULL,
  `CarName` varchar(30) NOT NULL,
  `Operator` varchar(20) NOT NULL,
  `FromLocation` varchar(30) NOT NULL,
  `ToLocation` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(45) NOT NULL,
  `SeatsCount` int(11) NOT NULL,
  PRIMARY KEY (`CarId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardetails`
--

LOCK TABLES `cardetails` WRITE;
/*!40000 ALTER TABLE `cardetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightdetails`
--

DROP TABLE IF EXISTS `flightdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flightdetails` (
  `flightID` varchar(20) NOT NULL,
  `flightName` varchar(20) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `fromCity` varchar(20) NOT NULL,
  `toCity` varchar(20) NOT NULL,
  `departureTime` datetime NOT NULL,
  `arrivalTime` datetime NOT NULL,
  PRIMARY KEY (`flightID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightdetails`
--

LOCK TABLES `flightdetails` WRITE;
/*!40000 ALTER TABLE `flightdetails` DISABLE KEYS */;
INSERT INTO `flightdetails` VALUES ('1122','A340','Virgin America','New York','Denver','2017-11-24 12:00:00','2017-11-24 16:00:00'),('1133','A320','Virgin America','New York','Austin','2017-11-25 10:30:00','2017-11-25 14:00:00'),('1234','A320','United Airlines','New York','Chicago','2017-11-24 11:30:00','2017-11-24 15:00:00'),('1905','A320','American Airlines','San Francisco','New Jersey','2017-11-24 10:00:00','2017-11-24 14:00:00'),('2199','Boeing 777','Delta Airlines','New Jersey','San Jose','2017-11-24 11:30:00','2017-11-24 15:00:00'),('2696','A320','American Airlines','San Jose','New Jersey','2017-11-23 10:30:00','2017-11-23 14:00:00'),('2774','A340','United Airlines','San Francisco','New Jersey','2017-11-22 12:00:00','2017-11-22 16:00:00'),('3003','Boeing 777','Delta Airlines','New York','San Jose','2017-11-24 09:30:00','2017-11-24 13:00:00'),('3089','Boeing 777','Delta Airlines','San Francisco','New York','2017-11-22 11:30:00','2017-11-22 15:00:00'),('3597','Boeing 777','Delta Airlines','New Jersey','San Jose','2017-11-23 11:00:00','2017-11-23 15:00:00'),('3775','Boeing 777','United Airlines','San Francisco','New York','2017-11-23 11:00:00','2017-11-23 15:00:00'),('4102','A340','United Airlines','San Francisco','New Jersey','2017-11-23 12:30:00','2017-11-23 16:00:00'),('4538','A320','American Airlines','New York','San Francisco','2017-11-24 10:00:00','2017-11-24 14:00:00'),('4567','A320','Delta Airlines','New York','Boston','2017-11-23 11:00:00','2017-11-23 15:00:00'),('4847','A340','United Airlines','New York','San Jose','2017-11-23 09:30:00','2017-11-23 13:00:00'),('5238','Boeing 777','Delta Airlines','New York','San Jose','2017-11-25 09:00:00','2017-11-25 13:00:00'),('6076','Boeing 777','Delta Airlines','San Jose','New York','2017-11-24 09:30:00','2017-11-24 13:00:00'),('7228','A320','American Airlines','San Jose','New York','2017-11-23 09:00:00','2017-11-23 13:00:00'),('7627','Boeing 777','Delta Airlines','New York','San Francisco','2017-11-23 10:00:00','2017-11-23 14:00:00'),('7890','a340','American Airlines','New York','New Jersey','2017-11-23 12:30:00','2017-11-23 16:00:00'),('7965','A320','American Airlines','San Jose','New Jersey','2017-11-22 10:30:00','2017-11-22 14:00:00'),('8275','A340','United Airlines','New Jersey','San Francisco','2017-11-23 12:30:00','2017-11-23 16:00:00'),('8863','A340','United Airlines','New Jersey','San Francisco','2017-11-24 12:00:00','2017-11-24 16:00:00'),('8985','Boeing 777','Delta Airlines','New Jersey','San Francisco','2017-11-25 10:30:00','2017-11-25 14:00:00'),('9427','A340','United Airlines','San Jose','New York','2017-11-22 09:00:00','2017-11-22 13:00:00');
/*!40000 ALTER TABLE `flightdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightseatdetails`
--

DROP TABLE IF EXISTS `flightseatdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flightseatdetails` (
  `flightID` varchar(20) NOT NULL,
  `seatType` varchar(20) NOT NULL,
  `maxSeats` int(11) NOT NULL,
  `availableSeats` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  UNIQUE KEY `‘flightSeats‘` (`flightID`,`seatType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightseatdetails`
--

LOCK TABLES `flightseatdetails` WRITE;
/*!40000 ALTER TABLE `flightseatdetails` DISABLE KEYS */;
INSERT INTO `flightseatdetails` VALUES ('1234','Economy',30,26,100),('1234','Premium',30,30,200),('1905','Economy',30,30,247),('1905','Premium',20,20,594),('2199','Economy',30,30,247),('2199','Premium',20,20,570),('2696','Economy',30,30,160),('2696','Premium',20,20,391),('2774','Economy',30,30,145),('2774','Premium',20,20,351),('3003','Economy',30,30,151),('3003','Premium',20,20,402),('3089','Economy',30,30,169),('3089','Premium',20,20,391),('3597','Economy',30,30,152),('3597','Premium',20,20,361),('3775','Economy',30,30,216),('3775','Premium',20,20,493),('4102','Economy',30,30,241),('4102','Premium',20,20,547),('4538','Economy',30,30,136),('4538','Premium',20,20,355),('4847','Economy',30,30,116),('4847','Premium',20,20,302),('5238','Economy',30,30,178),('5238','Premium',20,20,407),('5678','Economy',30,27,150),('5678','Premium',30,30,250),('6076','Economy',30,30,113),('6076','Premium',20,20,324),('7228','Economy',30,30,126),('7228','Premium',20,20,313),('7627','Economy',30,30,170),('7627','Premium',20,20,428),('7965','Economy',30,30,108),('7965','Premium',20,20,301),('8275','Economy',30,30,127),('8275','Premium',20,20,327),('8863','Economy',30,30,191),('8863','Premium',20,20,434),('8985','Economy',30,30,189),('8985','Premium',20,20,454),('9427','Economy',30,30,183),('9427','Premium',20,20,418);
/*!40000 ALTER TABLE `flightseatdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteldetails`
--

DROP TABLE IF EXISTS `hoteldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoteldetails` (
  `hotelID` int(11) NOT NULL AUTO_INCREMENT,
  `hotelName` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `availableRooms` int(11) NOT NULL,
  `guestCount` int(11) NOT NULL,
  `starHotel` int(11) NOT NULL,
  `ratings` int(11) DEFAULT NULL,
  `amount` decimal(5,2) NOT NULL,
  `bookedRooms` int(11) DEFAULT NULL,
  PRIMARY KEY (`hotelID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteldetails`
--

LOCK TABLES `hoteldetails` WRITE;
/*!40000 ALTER TABLE `hoteldetails` DISABLE KEYS */;
INSERT INTO `hoteldetails` VALUES (60,'Oriental Cave','New Jersey','2017-11-17','2017-12-24','2017-11-29 10:59:08',4,1,3,4,200.00,2),(61,'Olive Sanctum','New York','2017-11-18','2017-12-25','2017-11-29 10:59:08',2,2,5,4,300.00,1),(62,'Royal Monarch','Boston','2017-11-21','2017-12-29','2017-11-29 10:59:08',6,3,3,2,500.00,3),(63,'Rose Cloud','San Jose','2017-11-22','2017-12-30','2017-11-29 10:59:08',6,4,4,3,100.00,3),(64,'Atlantic Galaxy','San Francisco','2017-11-23','2017-11-30','2017-11-29 10:59:08',4,2,5,4,300.00,2),(65,'Lord Mansion','Denver','2017-11-30','2017-12-10','2017-11-29 10:59:08',7,2,3,1,400.00,4),(66,'Sightsee','Denver','2017-12-10','2017-12-13','2017-11-29 10:59:08',8,4,4,3,600.00,4),(68,'Radiance','San Francisco','2017-12-16','2017-12-24','2017-11-29 10:59:08',11,1,5,2,250.00,4),(69,'Felicity','Los Angeles','2017-12-20','2017-12-25','2017-11-29 10:59:08',13,1,4,3,150.00,6),(70,'Remote Coast','Boston','2017-12-25','2017-12-30','2017-11-29 10:59:08',4,3,4,4,200.00,3),(71,'Golden Pool','San Jose','2017-11-30','2017-12-10','2017-11-29 10:59:08',2,4,5,3,150.00,1),(72,'Repose','San Francisco','2017-12-10','2017-12-14','2017-11-29 10:59:08',7,1,5,3,250.00,2),(73,'Marriott','Boulder','2017-12-13','2017-12-17','2017-11-29 10:59:08',6,3,4,2,350.00,3),(74,'Triumph','Denver','2017-12-16','2017-12-24','2017-11-29 10:59:09',4,2,3,5,450.00,1),(75,'Marriott','New Jersey','2017-12-14','2017-12-18','2017-11-29 10:59:09',15,4,4,5,200.00,2),(76,'Elite Loch Hotel','New Jersey','2017-12-25','2017-12-30','2017-11-29 10:59:09',16,3,4,3,200.00,5),(77,'Pleasant Hotel','New Jersey','2017-11-30','2017-12-10','2017-11-29 10:59:09',17,4,5,4,250.00,2),(78,'Royal Veil Hotel','New Jersey','2017-12-10','2017-12-14','2017-11-29 10:59:09',14,4,3,3,350.00,5),(79,'Seaside Hotel','New Jersey','2017-12-13','2017-12-17','2017-11-29 10:59:09',17,2,5,5,400.00,1),(80,'Pacific Manor Hotel','New Jersey','2017-12-16','2017-12-24','2017-11-29 10:59:09',20,4,3,4,150.00,6),(81,'undefined','c','2017-11-17','2017-12-24','2017-11-30 04:30:16',10,90,5,5,900.00,0),(82,'h','c','2017-11-17','2017-12-24','2017-11-30 04:52:45',10,90,5,5,900.00,0);
/*!40000 ALTER TABLE `hoteldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicescount`
--

DROP TABLE IF EXISTS `servicescount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicescount` (
  `serviceID` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(45) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicescount`
--

LOCK TABLES `servicescount` WRITE;
/*!40000 ALTER TABLE `servicescount` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicescount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shareuser`
--

DROP TABLE IF EXISTS `shareuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shareuser` (
  `username` varchar(100) DEFAULT NULL,
  `foldername` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shareuser`
--

LOCK TABLES `shareuser` WRITE;
/*!40000 ALTER TABLE `shareuser` DISABLE KEYS */;
INSERT INTO `shareuser` VALUES ('th','picture.jpeg'),('ht','picture.jpeg'),('undefined','undefined'),('undefined','undefined'),('undefined','undefined'),('undefined','undefined'),('undefined','undefined'),('undefined','undefined'),('undefined','undefined'),('hanisha','03.Node.js ver2.pdf'),('hanishathirtham@gmail.com','03.Node.js ver2.pdf'),('hani','03.Node.js ver2.pdf'),('yah','03.Node.js ver2.pdf'),('do','03.Node.js ver2.pdf'),('mohan','03.Node.js ver2.pdf'),('krishna','03.Node.js ver2.pdf'),('','03.Node.js ver2.pdf'),('','03.Node.js ver2.pdf'),('','03.Node.js ver2.pdf'),('thirthamhanisha@gmail.com, hanisha@gmail.com','03.Node.js ver2.pdf'),('thirthamhanisha@gmail.com, hanisha@gmail.com','03.Node.js ver2.pdf'),('thirthamhanisha@gmail.com','03.Node.js ver2.pdf'),(' hanisha@yahoo.com','03.Node.js ver2.pdf'),('hani','first@last.com'),(' thir','first@last.com'),(' kj','first@last.com'),('gng','03.Node.js ver2.pdf'),('t@h.com','dropbox-logo1.jpeg'),('a@b.com','dropbox-logo1.jpeg'),('mt@gmail.com','dropbox-logo1.jpeg'),('mt@gmail.com','dropbox-logo1.jpeg'),('saru.t@gmail.com','dropbox-logo1.jpeg'),('mt@gmail.com','dropbox-logo1.jpeg'),('saru.t@gmail.com','dropbox-logo1.jpeg'),('mt@gmail.com','dropbox-logo1.jpeg'),('saru.t@gmail.com','dropbox-logo1.jpeg'),('mt@gmail.com','dropbox-logo1.jpeg'),('saru.t@gmail.com','dropbox-logo1.jpeg'),('mt@gmail.com','undefined'),('mt@gmail.com','dropbox-logo1'),('mt@gmail.com','dropbox-logo1'),('mt@gmail.com','dropbox-logo1'),('mt@gmail.com','dropbox-logo1'),('mt@gmail.com','dropbox-logo1'),('ume@gmail.com','03.Node.js ver2 (2).pdf'),(' ume1@gmail.com','03.Node.js ver2 (2).pdf'),('sarut@gmail.com','03.Node.js ver2 (1).pdf'),('ume@gmail.com','03.Node.js ver2 (1).pdf'),('mt@gmail.com','dropbox-logo1'),('mt@gmail.com','dropbox-logo1'),('thirthamhanisha@gmail.com','Readme.txt');
/*!40000 ALTER TABLE `shareuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2017-09-19 02:25:28',NULL),('diagnostics.include_raw','OFF','2017-09-19 02:25:28',NULL),('ps_thread_trx_info.max_length','65535','2017-09-19 02:25:28',NULL),('statement_performance_analyzer.limit','100','2017-09-19 02:25:28',NULL),('statement_performance_analyzer.view',NULL,'2017-09-19 02:25:28',NULL),('statement_truncate_len','64','2017-09-19 02:25:28',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactioncars`
--

DROP TABLE IF EXISTS `transactioncars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactioncars` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `carID` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `cardNo` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(45) NOT NULL,
  `carType` varchar(45) NOT NULL,
  PRIMARY KEY (`bookID`),
  KEY `username_idx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactioncars`
--

LOCK TABLES `transactioncars` WRITE;
/*!40000 ALTER TABLE `transactioncars` DISABLE KEYS */;
INSERT INTO `transactioncars` VALUES (1,16,27.00,'4648774960998720','first1@last1.com','2017-01-26 12:14:16','San Francisco','Full Size'),(2,16,24.00,'1627386753790360','first2@last2.com','2017-02-28 10:15:17','San Francisco','Full Size'),(3,16,28.00,'8882299433088350','first3@last3.com','2017-03-09 12:16:19','San Francisco','Full Size'),(4,16,29.00,'7224462776251650','first4@last4.com','2017-03-30 10:15:19','San Francisco','Full Size'),(5,16,27.00,'1637391950301340','first5@last5.com','2017-04-01 18:19:20','San Francisco','Full Size'),(6,16,24.00,'8139279238113870','first6@last6.com','2017-04-10 20:14:23','San Francisco','Full Size'),(7,16,28.00,'9916755067236940','first7@last7.com','2017-05-11 13:15:17','San Francisco','Full Size'),(8,12,27.00,'636840047971151','first8@last8.com','2017-05-15 19:25:14','San Francisco','Standard'),(9,12,22.00,'1366625214428530','first9@last9.com','2017-05-24 11:14:18','San Francisco','Standard'),(10,12,19.00,'6855247015157210','first10@last10.com','2017-05-26 18:19:20','San Francisco','Standard'),(11,12,24.00,'8389083692248100','first11@last11.com','2017-06-01 10:11:28','San Francisco','Standard'),(12,12,19.00,'5042474453355130','first12@last12.com','2017-06-08 10:14:18','San Francisco','Standard'),(13,12,24.00,'6183015611915100','first13@last13.com','2017-06-19 11:12:13','San Francisco','Standard'),(14,6,24.00,'2901420036697850','first14@last14.com','2017-11-14 12:48:49','San Francisco','Economy'),(15,6,47.00,'7188388205744260','first15@last15.com','2017-07-09 10:15:20','San Francisco','Economy'),(16,6,41.00,'1677367658916850','first16@last16.com','2017-07-16 12:14:16','San Francisco','Economy'),(17,7,39.00,'8483716307251820','first17@last17.com','2017-07-21 19:45:55','San Francisco','Economy'),(18,7,30.00,'4448251441054250','first18@last18.com','2017-08-02 14:49:53','San Francisco','Economy'),(19,19,40.00,'7294139078266580','first19@last19.com','2017-10-01 10:15:20','San Francisco','Standard SUV'),(20,19,45.00,'2313121154447600','first20@last20.com','2017-10-05 16:17:18','San Francisco','Standard SUV'),(21,19,44.00,'4969281080343430','first8@last8.com','2017-10-11 11:22:33','San Francisco','Standard SUV'),(22,19,44.00,'4173361917463200','first4@last4.com','2017-10-15 13:15:17','San Francisco','Standard SUV'),(23,19,45.00,'6084366071459350','first8@last8.com','2017-10-22 23:49:53','San Francisco','Standard SUV'),(24,21,59.00,'8265382030745470','first3@last3.com','2017-11-08 11:12:13','San Francisco','Fullsize SUV'),(25,22,65.00,'8891279642375510','first17@last17.com','2017-11-12 19:28:37','San Francisco','Fullsize SUV'),(26,23,49.00,'5240383582853520','first13@last13.com','2017-11-25 10:20:30','San Francisco','Fullsize SUV'),(27,24,73.00,'9964928647124920','first10@last10.com','2017-11-14 14:28:43','San Francisco','Fullsize SUV');
/*!40000 ALTER TABLE `transactioncars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionflights`
--

DROP TABLE IF EXISTS `transactionflights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionflights` (
  `bookID` varchar(45) NOT NULL,
  `flightID` varchar(45) NOT NULL,
  `fromCity` varchar(20) NOT NULL,
  `toCity` varchar(20) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `noOfSeats` int(11) NOT NULL,
  `seatType` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cardNo` varchar(20) NOT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionflights`
--

LOCK TABLES `transactionflights` WRITE;
/*!40000 ALTER TABLE `transactionflights` DISABLE KEYS */;
INSERT INTO `transactionflights` VALUES ('1','1905','San Francisco','New Jersey',594.00,2,'Economy','2017-11-29 14:35:05','5485134426102710','first1@last1.com'),('2','2199','New Jersey','San Jose',570.00,1,'Premium','2017-11-29 14:35:05','9126516673321900','first3@last3.com'),('3','2696','San Jose','New Jersey',480.00,3,'Economy','2017-11-29 14:35:05','8861372456322350','first14@last14.com'),('4','2774','San Francisco','New Jersey',580.00,4,'Economy','2017-11-29 14:35:05','2821284585802600','first11@last11.com'),('5','3003','New York','San Jose',804.00,2,'Premium','2017-11-29 14:35:05','2863426361536710','first15@last15.com'),('6','3089','San Francisco','New York',781.00,2,'Premium','2017-11-29 14:35:05','8417899918193620','first6@last6.com'),('7','3597','New Jersey','San Jose',304.00,2,'Economy','2017-11-29 14:35:05','7248529020616150','first7@last5.com'),('8','3775','San Francisco','New York',493.00,1,'Premium','2017-11-29 14:35:05','4716933368144490','first13@last13.com'),('9','4102','San Francisco','New Jersey',723.00,3,'Economy','2017-11-29 14:35:05','4109633252220140','first12@last1.com'),('10','4538','New York','San Francisco',810.00,2,'Premium','2017-11-29 14:35:05','2835726713265850','first9@last9.com'),('11','234','sf','NY',200.00,2,'Economy','2017-11-29 14:35:05','5485134426102710','first1@last1.com'),('12','3003','New York','San Jose',300.00,2,'Economy','2015-11-29 14:35:05','3926672727491346','first1@last1.com'),('13','3089','San Francisco','New York',350.00,1,'Premium','2015-01-29 14:35:05','2061266143065078','first2@last2.com'),('14','3597','New Jersey','San Jose',400.00,2,'Economy','2015-04-29 13:35:05','3655013956818000','first@last3.com'),('15','3775','San Francisco','New York',200.00,1,'Premium','2015-04-29 13:35:05','9988399368924591','first4@last4.com'),('15','3775','San Francisco','New York',200.00,1,'Premium','2015-04-29 13:35:05','9988399368924591','first3@last3.com'),('16','4102','San Francisco','New Jersey',500.00,2,'Economy','2015-01-12 14:35:05','5452457737446840','first4@last4.com'),('16','4102','San Francisco','New Jersey',600.00,1,'Premium','2016-01-20 14:35:05','5425678242165261','first4@last4.com'),('17','4538','New York','San Francisco',300.00,1,'Premium','2016-02-10 14:35:05','3471034929130195','first5@last5.com'),('18','4847','New York','San Jose',500.00,1,'Premium','2016-02-10 14:35:05','4303540813875845','first6@last6.com'),('19','4538','New York','San Francisco',350.00,1,'Economy','2016-11-14 14:35:05','8562337026442441','first14@last14.com'),('20','5238','New York','San Jose',150.00,1,'Economy','2016-01-14 14:35:05','8605534467422843','first9@last9.com'),('21','3003','New York','San Jose',200.00,1,'Economy','2017-01-14 14:35:05','8605534467422843','first9@last9.com'),('22','3003','New York','San Jose',400.00,2,'Economy','2017-02-14 14:35:05','8605534467422843','first8@last8.com'),('23','3003','New York','San Jose',400.00,1,'Premium','2017-03-14 13:35:05','8605534467422843','first7@last7.com'),('24','3003','New York','San Jose',450.00,3,'Economy','2017-04-20 13:35:05','8605534467422843','first6@last6.com'),('25','4538','New York','San Jose',250.00,2,'Premium','2017-05-20 13:35:05','4303540813875845','first5@last5.com'),('26','4538','New York','San Francisco',250.00,2,'Premium','2017-05-20 13:35:05','4303540813875845','first5@last5.com'),('27','4538','New York','San Francisco',350.00,4,'Economy','2017-05-20 13:35:05','4303540813875845','first14@last14.com'),('28','4538','New York','San Francisco',250.00,2,'Economy','2017-05-31 13:35:05','6759047133566448','first13@last13.com'),('29','4538','New York','San Francisco',600.00,4,'Economy','2017-06-10 13:35:05','6759047133566448','first13@last13.com'),('30','1122','New York','Denver',150.00,1,'Economy','2017-01-11 14:35:05','7860342229651476','first10@last10.com'),('31','1122','New York','Denver',350.00,2,'Economy','2017-01-25 14:35:05','1244096204833037','first11@last11.com'),('32','1122','New York','Denver',500.00,2,'Premium','2017-02-25 14:35:05','1244096204833037','first12@last12.com'),('33','1122','New York','Denver',400.00,2,'Premium','2017-02-25 14:35:05','8562337026442441','first12@last12.com'),('34','1122','New York','Denver',450.00,2,'Economy','2017-03-25 13:35:05','8562337026442441','first14@last14.com'),('35','1122','New York','Denver',550.00,3,'Economy','2017-04-25 13:35:05','9988399368924591','first14@last14.com'),('36','7890','New York','New Jersey',550.00,3,'Premium','2017-04-10 13:35:05','8562337026442441','first13@last13.com'),('37','7890','New York','New Jersey',250.00,1,'Premium','2017-05-10 13:35:05','5425678242165261','first6@last6.com'),('38','7890','New York','New Jersey',400.00,2,'Economy','2017-05-30 13:35:05','7860342229651476','first9@last9.com'),('39','7890','New York','New Jersey',150.00,1,'Economy','2017-08-30 13:35:05','7860342229651476','first10@last10.com'),('40','7890','New York','New Jersey',250.00,2,'Economy','2017-08-30 13:35:05','7860342229651476','first13@last13.com'),('40','7890','New York','Austin',600.00,3,'Economy','2017-08-15 13:35:05','3471034929130195','first17@last17.com'),('41','7890','New York','Austin',600.00,3,'Economy','2017-08-15 13:35:05','3471034929130195','first17@last17.com'),('42','7890','New York','Austin',250.00,1,'Premium','2017-08-25 13:35:05','2246756990620376','first18@last18.com'),('43','7890','New York','Austin',500.00,2,'Premium','2017-08-25 13:35:05','2246756990620376','first19@last19.com'),('44','7890','New York','Austin',400.00,2,'Economy','2017-08-10 13:35:05','3655013956818000','first15@last15.com'),('45','4567','New York','Boston',600.00,3,'Premium','2017-09-20 13:35:05','5452457737446840','first11@last11.com'),('46','4567','New York','Boston',150.00,1,'Economy','2017-11-20 14:35:05','9642593499332853','first4@last4.com'),('47','4567','New York','Boston',700.00,4,'Economy','2017-01-20 14:35:05','9642593499332853','first18@last18.com');
/*!40000 ALTER TABLE `transactionflights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionhotels`
--

DROP TABLE IF EXISTS `transactionhotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionhotels` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `hotelID` int(11) NOT NULL,
  `billAmount` decimal(5,2) NOT NULL,
  `noOfRooms` int(11) NOT NULL,
  `cardNo` varchar(20) NOT NULL,
  `noOfGuests` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `hotelName` varchar(45) NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionhotels`
--

LOCK TABLES `transactionhotels` WRITE;
/*!40000 ALTER TABLE `transactionhotels` DISABLE KEYS */;
INSERT INTO `transactionhotels` VALUES (1,60,600.00,3,'2094481183390950',3,'first9@last9.com','New Jersey','2015-01-20 12:13:14','Oriental Cave'),(2,64,600.00,2,'8593030600886520',4,'first2@last2.com','San Francisco','2016-03-14 14:15:16','Atlantic Galaxy'),(3,69,150.00,1,'1997492851543290',2,'first11@last11.com','Los Angeles','2017-04-15 15:16:17','Felicity'),(4,62,500.00,1,'4854419217327830',3,'first6@last6.com','Boston','2015-04-20 12:13:14','Royal Monarch'),(5,62,500.00,1,'9713832194988480',2,'first5@last5.com','Boston','2016-03-14 14:15:16','Royal Monarch'),(6,66,600.00,1,'7431601290091210',4,'first8@last8.com','Denver','2015-03-20 12:13:14','Sightsee'),(7,69,150.00,1,'6565744302917420',3,'first12@last12.com','Los Angeles','2017-05-17 15:16:17','Felicity'),(8,72,750.00,3,'6756046118208670',4,'first4@last4.com','San Francisco','2017-04-15 15:16:17','Repose'),(9,71,900.00,2,'7969402941743540',4,'first15@last15.com','San Jose','2017-05-17 15:16:17','Golden Pool'),(10,73,700.00,2,'6582130024514370',4,'first1@last1.com','Colorado','2015-03-20 12:13:14','Marriott'),(11,72,750.00,3,'8112802001615540',3,'first7@last7.com','San Francisco','2016-02-14 14:15:16','Repose'),(12,70,800.00,2,'5525827670265720',5,'first17@last17.com','Boston','2017-05-17 15:16:17','Remote Coast'),(13,65,800.00,2,'2438579756596400',5,'first20@last20.com','Colorado','2015-01-20 12:13:14','Lord Mansion'),(14,66,600.00,1,'7986058429023470',3,'first16@last16.com','Denver','2016-05-17 15:16:17','Sightsee'),(15,68,500.00,2,'4877836365758290',2,'first19@last19.com','San Francisco','2016-03-14 14:15:16','Radiance'),(16,70,600.00,3,'3605281758600970',3,'first18@last18.com','Boston','2015-04-20 12:13:14','Remote Coast'),(17,71,600.00,4,'2781561195673720',4,'first10@last10.com','San Jose','2015-05-17 15:16:17','Golden Pool'),(18,72,250.00,1,'1469481527610370',3,'first14@last14.com','San Francisco','2017-06-17 15:16:17','Repose'),(19,73,350.00,1,'4024075259625450',2,'first3@last3.com','Boulder','2016-02-14 14:15:16','Marriott'),(20,66,600.00,1,'4498744046994390',3,'first13@last13.com','Denver','2017-06-17 15:16:17','Sightsee'),(24,63,650.00,2,'5085476347022512',4,'first18@last18.com','San Jose','2017-05-17 15:16:17','Rose Cloud'),(25,63,400.00,3,'7232930799467961',5,'first3@last3.com','San Jose','2016-02-14 14:15:16','Rose Cloud'),(26,71,350.00,4,'9034251291145176',9,'first6@last6.com','San Jose','2015-03-20 12:13:14','Golden Pool'),(27,64,700.00,2,'1479662279964433',3,'first7@last7.com','San Francisco','2017-05-17 15:16:17','Atlantic Galaxy'),(28,72,800.00,1,'7732923656418959',2,'first13@last13.com','San Francisco','2016-02-14 14:15:16','Repose'),(29,66,600.00,5,'7505205894286945',5,'first2@last2.com','San Francisco','2015-03-20 12:13:14','Sightsee'),(30,74,400.00,2,'2976389651438562',4,'first19@last19.com','Denver','2017-05-17 15:16:17','Triumph'),(31,74,350.00,3,'2252644879312088',5,'first2@last2.com','Denver','2016-02-14 14:15:16','Triumph'),(32,65,900.00,1,'8853376694534150',3,'first6@last6.com','Denver','2015-03-20 12:13:14','Lord Mansion'),(33,60,400.00,6,'2565360365905496',10,'first13@last13.com','New Jersey','2017-05-17 15:16:17','Oriental Cave'),(34,60,500.00,4,'5433184487664780',6,'first17@last17.com','New Jersey','2016-02-14 14:15:16','Oriental Cave'),(35,60,500.00,2,'3055273599174879',2,'first7@last7.com','New Jersey','2015-04-20 12:13:14','Oriental Cave'),(36,75,300.00,4,'9004934573151197',4,'first19@last19.com','New Jersey','2017-05-17 15:16:17','Marriott'),(37,75,700.00,2,'2620826777691818',6,'first13@last13.com','New Jersey','2016-02-14 14:15:16','Marriott'),(38,75,650.00,3,'4802370348872234',8,'first17@last17.com','New Jersey','2015-04-20 12:13:14','Marriott'),(39,62,450.00,3,'5762380658751736',3,'first3@last3.com','Boston','2016-02-14 14:15:16','Royal Monarch'),(40,76,600.00,3,'4272430060347006',4,'first2@last2.com','New Jersey','2017-05-17 15:16:17','Elite Loch Hotel'),(41,77,350.00,2,'9583961145681844',3,'first6@last6.com','New Jersey','2017-03-17 15:16:17','Pleasant Hotel'),(42,78,250.00,1,'5496962614764571',2,'first13@last13.com','New Jersey','2017-01-17 15:16:17','Royal Veil Hotel'),(43,79,400.00,3,'7912472707194227',6,'first17@last17.com','New Jersey','2017-04-17 15:16:14','Seaside Hotel'),(44,80,250.00,2,'3471034929130195',4,'first19@last19.com','New Jersey','2017-06-17 15:16:17','Pacific Manor Hotel'),(45,60,800.00,4,'8112802001615540',3,'first14@last14.com','New Jersey','2017-04-15 15:16:17','Oriental Cave'),(46,60,250.00,4,'1469481527610370',5,'first3@last3.com','New Jersey','2017-05-17 15:16:17','Oriental Cave'),(47,60,150.00,1,'8593030600886520',2,'first17@last17.com','New Jersey','2017-02-14 14:15:16','Oriental Cave'),(48,60,500.00,3,'7505205894286940',6,'first13@last13.com','New Jersey','2017-04-20 12:13:14','Oriental Cave'),(49,75,450.00,4,'2094481183390950',8,'first2@last2.com','New Jersey','2017-04-20 12:13:14','Marriott'),(50,75,800.00,2,'2565360365905490',3,'first7@last7.com','New Jersey','2017-03-20 12:13:14','Marriott'),(51,75,600.00,1,'5433184487664780',1,'first2@last2.com','New Jersey','2017-03-14 14:15:16','Marriott'),(52,75,350.00,3,'3055273599174870',3,'first9@last9.com','New Jersey','2017-11-14 14:15:16','Marriott'),(53,76,400.00,4,'8562337026442440',4,'first13@last13.com','New Jersey','2017-04-15 15:16:17','Elite Loch Hotel'),(54,76,500.00,3,'5496962614764570',3,'first17@last17.com','New Jersey','2017-05-17 15:16:17','Elite Loch Hotel'),(55,76,300.00,4,'5496962614764570',4,'first2@last2.com','New Jersey','2017-02-14 14:15:16','Elite Loch Hotel'),(56,76,250.00,3,'9642593499332850',3,'first6@last6.com','New Jersey','2017-04-20 12:13:14','Elite Loch Hotel'),(57,76,350.00,2,'7912472707194220',2,'first1@last1.com','New Jersey','2017-04-20 12:13:14','Elite Loch Hotel'),(58,77,700.00,2,'7860342229651470',4,'first2@last2.com','New Jersey','2017-03-14 14:15:16','Pleasant Hotel'),(59,77,900.00,3,'2246756990620370',4,'first6@last6.com','New Jersey','2017-05-17 15:16:17','Pleasant Hotel'),(60,77,600.00,5,'2989425514616710',6,'first13@last13.com','New Jersey','2017-03-20 12:13:14','Pleasant Hotel'),(61,77,600.00,1,'2114189281050030',2,'first17@last17.com','New Jersey','2017-03-14 14:15:16','Pleasant Hotel'),(62,78,250.00,4,'2246756990620370',6,'first2@last2.com','New Jersey','2017-05-17 15:16:17','Royal Veil Hotel '),(63,78,350.00,2,'2989425514616710',2,'first7@last7.com','New Jersey','2017-05-17 15:16:17','Royal Veil Hotel '),(64,78,150.00,1,'2114189281050030',1,'first2@last2.com','New Jersey','2017-03-20 12:13:14','Royal Veil Hotel '),(65,79,450.00,2,'1219045021874610',4,'first9@last9.com','New Jersey','2017-05-17 15:16:17','Seaside Hotel'),(66,79,250.00,1,'6759047133566440',2,'first13@last13.com','New Jersey','2017-05-17 15:16:17','Seaside Hotel'),(67,80,300.00,1,'9964737700936940',2,'first1@last1.com','New Jersey','2017-04-20 12:13:14','Pacific Manor Hotel');
/*!40000 ALTER TABLE `transactionhotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'a','Test','a');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin','admin@admin.com','admin','admin','admin','admin','12345','admin@admin.com',1),('h','h','e','1','100','y','CA','94087','h@h.com',0),('first10','last10','first10@last10.com','password','Street 10','Denver','CO','87653-2354','first10@last10.com',0),('first11','last11','first11@last11.com','password','Street 11','Mangattan','NY','95812','first11@last11.com',0),('first12','last12','first12@last12.com','password','Street 12','Albany','NY','95814-6120','first12@last12.com',0),('first13','last13','first13@last13.com','password','Street 13','Binghamton','NY','12349-1232','first13@last13.com',0),('first14','last14','first14@last14.com','password','Street 14','Santa Clara','CA','14349-4953','first14@last14.com',0),('first15','last15','first15@last15.com','password','Street 15','Columbus','OH','12340-2455','first15@last15.com',0),('first16','last16','first16@last16.com','password','Street 16','Tampa','FL','74638-1244','first16@last16.com',0),('first17','last17','first17@last17.com','password','Street 17','Dallas','TX','87246','first17@last17.com',0),('first18','last18','first18@last18.com','password','Street 18','Chicago','IL','97348-1643','first18@last18.com',0),('first19','last19','first19@last19.com','password','Street 19','Cincinatti','OH','82467','first19@last19.com',0),('first1','last1','first1@last1.com','password','Street 1','San Francisco','CA','54321','first1@last1.com',0),('first20','last20','first20@last20.com','password','Street 20','Denver','CO','32853-1325','first20@last20.com',0),('first2','last2','first2@last2.com','password','Street 2','Los Angeles','CA','65432','first2@last2.com',0),('first3','last3','first3@last3.com','password','Street 3','Las Vegas','NV','76543','first3@last3.com',0),('first4','last4','first4@last4.com','password','Street 4','San Jose','CA','87654-3210','first4@last4.com',0),('first5','last5','first5@last5.com','password','Street 5','Gainesville','FL','98765','first5@last5.com',0),('first6','last6','first6@last6.com','password','Street 6','Milpitas','CA','10234-1234','first6@last6.com',0),('first7','last7','first7@last7.com','password','Street 7','New York','NY','12034-2345','first7@last7.com',0),('first8','last8','first8@last8.com','password','Street 8','Austin','TX','54342-6789','first8@last8.com',0),('first9','last9','first9@last9.com','password','Street 9','Seattle','WA','43524-9876','first9@last9.com',0),('g','g','h','1','100','y','CA','94087','h@h.com',0),('h','h','i','f7ffb05543d54ca4fa101d7a4d8d113df17430ef92e1424d330086eba0b05ae7a189b5ce99d40f55901fdd907a269894bd701f2a1568b8276e1a0ed66b668eca','100','y','CA','94087','h@h.com',0),('g','g','j','8c76fe6f965ba01de4cb4cb62f399634340472dc6cc65da278bccbf29e0689a3b166aa4c4d3ecf4bf4e40437a154e313128ae288b655659551611310654cf12d','100','y','CA','94086','k@k.com',0),('h','h','o','1','100','y','CA','94087','h@h.com',0),('h','h','p','1','100','y','CA','94087','h@h.com',0),('h','h','u','1','100','y','CA','94087','h@h.com',0),('h','h','v','f7ffb05543d54ca4fa101d7a4d8d113df17430ef92e1424d330086eba0b05ae7a189b5ce99d40f55901fdd907a269894bd701f2a1568b8276e1a0ed66b668eca','100','y','CA','94087','h@h.com',0),('h','h','w','f7ffb05543d54ca4fa101d7a4d8d113df17430ef92e1424d330086eba0b05ae7a189b5ce99d40f55901fdd907a269894bd701f2a1568b8276e1a0ed66b668eca','100','y','CA','94087','h@h.com',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 21:17:37
